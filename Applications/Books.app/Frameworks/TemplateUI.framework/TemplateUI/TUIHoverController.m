@interface TUIHoverController
- (BOOL)hoverStateForIdentifier:(id)a3;
- (void)_axChanged:(id)a3;
- (void)hoverInteraction:(id)a3 didChangeStateForRegionWithKeys:(id)a4;
- (void)notifyHoverChangesAffectingView:(id)a3 changed:(id)a4;
- (void)registerHoverObserver:(id)a3;
- (void)reset;
- (void)updateHoverInteractionWithView:(id)a3;
@end

@implementation TUIHoverController

- (void)updateHoverInteractionWithView:(id)a3
{
  v11 = a3;
  hoverInteraction = self->_hoverInteraction;
  if (hoverInteraction || (+[NSNotificationCenter defaultCenter](NSNotificationCenter, "defaultCenter"), v5 = objc_claimAutoreleasedReturnValue(), [v5 addObserver:self selector:"_axChanged:" name:kAXSApplicationAccessibilityEnabledNotification object:0], v5, (hoverInteraction = self->_hoverInteraction) != 0))
  {
    v6 = [(TUIHoverInteraction *)hoverInteraction view];

    v7 = v11;
    if (v6 == v11)
    {
      goto LABEL_6;
    }

    hoverInteraction = self->_hoverInteraction;
  }

  v8 = [(TUIHoverInteraction *)hoverInteraction view];
  [v8 removeInteraction:self->_hoverInteraction];

  v9 = [[TUIHoverInteraction alloc] initWithDelegate:self view:v11];
  v10 = self->_hoverInteraction;
  self->_hoverInteraction = v9;

  [v11 addInteraction:self->_hoverInteraction];
  v7 = v11;
LABEL_6:
}

- (void)reset
{
  if (self->_hoverInteraction)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:kAXSApplicationAccessibilityEnabledNotification object:0];

    v4 = [(TUIHoverInteraction *)self->_hoverInteraction view];
    [v4 removeInteraction:self->_hoverInteraction];

    hoverInteraction = self->_hoverInteraction;
    self->_hoverInteraction = 0;
  }
}

- (void)_axChanged:(id)a3
{
  v4 = [(TUIHoverInteraction *)self->_hoverInteraction view];

  if (v4)
  {
    v5 = [(TUIHoverInteraction *)self->_hoverInteraction view];
    [(TUIHoverController *)self notifyHoverChangesAffectingView:v5 changed:0];
  }
}

- (void)hoverInteraction:(id)a3 didChangeStateForRegionWithKeys:(id)a4
{
  hoverInteraction = self->_hoverInteraction;
  v6 = a4;
  v7 = [(TUIHoverInteraction *)hoverInteraction view];
  [(TUIHoverController *)self notifyHoverChangesAffectingView:v7 changed:v6];
}

- (BOOL)hoverStateForIdentifier:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    v5 = 1;
  }

  else
  {
    v5 = [(TUIHoverInteraction *)self->_hoverInteraction stateForRegionWithKey:v4];
  }

  return v5;
}

- (void)registerHoverObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [NSHashTable hashTableWithOptions:512];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)notifyHoverChangesAffectingView:(id)a3 changed:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        if ([v13 isDescendantOfView:{v6, v14}])
        {
          [v13 hoverStateChanged:v7];
        }
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end