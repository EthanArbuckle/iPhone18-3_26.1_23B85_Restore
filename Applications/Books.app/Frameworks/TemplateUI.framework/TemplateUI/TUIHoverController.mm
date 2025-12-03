@interface TUIHoverController
- (BOOL)hoverStateForIdentifier:(id)identifier;
- (void)_axChanged:(id)changed;
- (void)hoverInteraction:(id)interaction didChangeStateForRegionWithKeys:(id)keys;
- (void)notifyHoverChangesAffectingView:(id)view changed:(id)changed;
- (void)registerHoverObserver:(id)observer;
- (void)reset;
- (void)updateHoverInteractionWithView:(id)view;
@end

@implementation TUIHoverController

- (void)updateHoverInteractionWithView:(id)view
{
  viewCopy = view;
  hoverInteraction = self->_hoverInteraction;
  if (hoverInteraction || (+[NSNotificationCenter defaultCenter](NSNotificationCenter, "defaultCenter"), v5 = objc_claimAutoreleasedReturnValue(), [v5 addObserver:self selector:"_axChanged:" name:kAXSApplicationAccessibilityEnabledNotification object:0], v5, (hoverInteraction = self->_hoverInteraction) != 0))
  {
    view = [(TUIHoverInteraction *)hoverInteraction view];

    v7 = viewCopy;
    if (view == viewCopy)
    {
      goto LABEL_6;
    }

    hoverInteraction = self->_hoverInteraction;
  }

  view2 = [(TUIHoverInteraction *)hoverInteraction view];
  [view2 removeInteraction:self->_hoverInteraction];

  v9 = [[TUIHoverInteraction alloc] initWithDelegate:self view:viewCopy];
  v10 = self->_hoverInteraction;
  self->_hoverInteraction = v9;

  [viewCopy addInteraction:self->_hoverInteraction];
  v7 = viewCopy;
LABEL_6:
}

- (void)reset
{
  if (self->_hoverInteraction)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:kAXSApplicationAccessibilityEnabledNotification object:0];

    view = [(TUIHoverInteraction *)self->_hoverInteraction view];
    [view removeInteraction:self->_hoverInteraction];

    hoverInteraction = self->_hoverInteraction;
    self->_hoverInteraction = 0;
  }
}

- (void)_axChanged:(id)changed
{
  view = [(TUIHoverInteraction *)self->_hoverInteraction view];

  if (view)
  {
    view2 = [(TUIHoverInteraction *)self->_hoverInteraction view];
    [(TUIHoverController *)self notifyHoverChangesAffectingView:view2 changed:0];
  }
}

- (void)hoverInteraction:(id)interaction didChangeStateForRegionWithKeys:(id)keys
{
  hoverInteraction = self->_hoverInteraction;
  keysCopy = keys;
  view = [(TUIHoverInteraction *)hoverInteraction view];
  [(TUIHoverController *)self notifyHoverChangesAffectingView:view changed:keysCopy];
}

- (BOOL)hoverStateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    v5 = 1;
  }

  else
  {
    v5 = [(TUIHoverInteraction *)self->_hoverInteraction stateForRegionWithKey:identifierCopy];
  }

  return v5;
}

- (void)registerHoverObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [NSHashTable hashTableWithOptions:512];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)notifyHoverChangesAffectingView:(id)view changed:(id)changed
{
  viewCopy = view;
  changedCopy = changed;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 isDescendantOfView:{viewCopy, v14}])
        {
          [v13 hoverStateChanged:changedCopy];
        }
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end