@interface TUIDragController
+ (BOOL)viewSupportsDrag:(id)drag;
+ (id)sharedInstance;
- (BOOL)_dragInteraction:(id)interaction sessionSupportsSystemDrag:(id)drag;
- (BOOL)_dragSession:(id)session containsView:(id)view;
- (TUIDragController)init;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragInteractionWithActionHandlerDelegate:(id)delegate dragDelegate:(id)dragDelegate;
- (void)_notifyDelegateOfViewDraggingStateForSession:(id)session interaction:(id)interaction dropOperation:(unint64_t)operation;
- (void)_notifyObserversWithSession:(id)session;
- (void)_setAlpha:(double)alpha forSessionDragItems:(id)items;
- (void)addObserver:(id)observer;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)removeObserver:(id)observer;
@end

@implementation TUIDragController

+ (id)sharedInstance
{
  if (qword_2E6578 != -1)
  {
    sub_19BB00();
  }

  v3 = qword_2E6570;

  return v3;
}

- (TUIDragController)init
{
  v7.receiver = self;
  v7.super_class = TUIDragController;
  v2 = [(TUIDragController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    observers = v3->_observers;
    v3->_observers = v4;
  }

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_setAlpha:(double)alpha forSessionDragItems:(id)items
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [items items];
  v6 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_opt_class();
        _privateLocalContext = [v10 _privateLocalContext];
        v13 = TUIDynamicCast(v11, _privateLocalContext);

        view = [v13 view];
        [view setAlpha:alpha];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)dragInteractionWithActionHandlerDelegate:(id)delegate dragDelegate:(id)dragDelegate
{
  dragDelegateCopy = dragDelegate;
  delegateCopy = delegate;
  v8 = [[_TUIDragInteraction alloc] initWithDelegate:self];
  [(_TUIDragInteraction *)v8 setActionHandlerDelegate:delegateCopy];

  [(_TUIDragInteraction *)v8 setDragDelegate:dragDelegateCopy];

  return v8;
}

- (void)_notifyObserversWithSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMutableArray *)self->_observers copy];
  os_unfair_lock_unlock(&self->_accessLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) dragController:self dragSessionDidEnd:{sessionCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_notifyDelegateOfViewDraggingStateForSession:(id)session interaction:(id)interaction dropOperation:(unint64_t)operation
{
  sessionCopy = session;
  interactionCopy = interaction;
  v9 = objc_opt_class();
  v22 = interactionCopy;
  v21 = TUIDynamicCast(v9, interactionCopy);
  actionHandlerDelegate = [v21 actionHandlerDelegate];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = sessionCopy;
  items = [sessionCopy items];
  v12 = [items countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(items);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_opt_class();
        _privateLocalContext = [v16 _privateLocalContext];
        v19 = TUIDynamicCast(v17, _privateLocalContext);

        LODWORD(_privateLocalContext) = self->_isDragging;
        view = [v19 view];
        if (_privateLocalContext == 1)
        {
          [actionHandlerDelegate didBeginDraggingView:view];
        }

        else
        {
          [actionHandlerDelegate didEndDraggingView:view];
        }
      }

      v13 = [items countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  [actionHandlerDelegate didEndDragSession:v24 dropOperation:operation];
}

- (BOOL)_dragSession:(id)session containsView:(id)view
{
  viewCopy = view;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  items = [session items];
  v7 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_opt_class();
        _privateLocalContext = [v10 _privateLocalContext];
        v13 = TUIDynamicCast(v11, _privateLocalContext);

        view = [v13 view];

        if (view == viewCopy)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  interactionCopy = interaction;
  view = [interactionCopy view];
  [sessionCopy locationInView:view];
  v9 = [(TUIDragController *)self dragInteraction:interactionCopy itemsForAddingToSession:sessionCopy withTouchAtPoint:?];

  return v9;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  interactionCopy = interaction;
  v9 = objc_opt_class();
  _privateLocalContext = [itemCopy _privateLocalContext];
  v11 = TUIDynamicCast(v9, _privateLocalContext);

  view = [v11 view];
  objc_opt_class();
  v13 = TUIPlatformAncestorOfClass(view);
  feedControllerHost = [v13 feedControllerHost];
  hostingContainerView = [feedControllerHost hostingContainerView];

  superview = [view superview];
  [view center];
  [superview convertPoint:hostingContainerView toView:?];
  v18 = v17;
  v20 = v19;

  dragBackgroundColor = self->_dragBackgroundColor;
  view2 = [interactionCopy view];

  traitCollection = [view2 traitCollection];
  v24 = [(UIColor *)dragBackgroundColor resolvedColorWithTraitCollection:traitCollection];

  v25 = sub_13248C(itemCopy, hostingContainerView, v24, v18, v20);

  return v25;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  interactionCopy = interaction;
  [(TUIDragController *)self _notifyObserversWithSession:sessionCopy];
  [(TUIDragController *)self _updateDraggingState:0];
  [(TUIDragController *)self _setAlpha:sessionCopy forSessionDragItems:1.0];
  [(TUIDragController *)self _notifyDelegateOfViewDraggingStateForSession:sessionCopy interaction:interactionCopy dropOperation:operation];
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  sessionCopy = session;
  view = [interactionCopy view];
  v12 = [view hitTest:0 withEvent:{x, y}];

  v13 = objc_opt_class();
  v14 = TUIPlatformAncestorOfClassAndProtocol(v12, v13, &OBJC_PROTOCOL___TUIReusableRenderView);
  if (v14)
  {
    v15 = v14;
    selfCopy = self;
    v46 = v12;
    v47 = sessionCopy;
    v48 = interactionCopy;
    while (1)
    {
      v16 = v15;
      v17 = objc_opt_class();
      layoutAttributes = [v16 layoutAttributes];

      v19 = TUIDynamicCast(v17, layoutAttributes);

      v20 = objc_opt_class();
      renderModel = [v19 renderModel];
      v22 = TUIDynamicCast(v20, renderModel);

      v23 = v22;
      v24 = sub_133198(v23);
      if (v24)
      {
        v25 = [_TUIDragTriggerInfo alloc];
        actionHandler = [v23 actionHandler];
        actionObject = [actionHandler actionObject];
        behavior = [v24 behavior];
        arguments = [v24 arguments];
        v30 = [(_TUIDragTriggerInfo *)v25 initWithActionObject:actionObject behavior:behavior arguments:arguments];
      }

      else
      {
        v30 = 0;
      }

      behavior2 = [(_TUIDragTriggerInfo *)v30 behavior];
      if (behavior2)
      {
        break;
      }

      superview = [v16 superview];
      v33 = objc_opt_class();
      v15 = TUIPlatformAncestorOfClassAndProtocol(superview, v33, &OBJC_PROTOCOL___TUIReusableRenderView);

      if (!v15)
      {
        v16 = 0;
        v34 = 0;
        v35 = 0;
        goto LABEL_15;
      }
    }

    v36 = behavior2;
    sessionCopy = v47;
    if ([(TUIDragController *)selfCopy _dragSession:v47 containsView:v16])
    {

      v34 = 0;
      v35 = 0;
      interactionCopy = v48;
      goto LABEL_16;
    }

    v37 = objc_opt_class();
    v38 = TUIDynamicCast(v37, v48);
    actionHandlerDelegate = [v38 actionHandlerDelegate];

    [actionHandlerDelegate didBeginDraggingView:v16];
    v35 = [[_TUIDragPreviewInfo alloc] initWithDragInfo:v30 view:v16];
    actionObject2 = [(_TUIDragTriggerInfo *)v30 actionObject];
    behavior3 = [(_TUIDragTriggerInfo *)v30 behavior];
    arguments2 = [(_TUIDragTriggerInfo *)v30 arguments];
    v43 = [actionHandlerDelegate dragItemForObject:actionObject2 withName:behavior3 arguments:arguments2];

    [v43 _setPrivateLocalContext:v35];
    if (v43)
    {
      v49 = v43;
      v34 = [NSArray arrayWithObjects:&v49 count:1];
    }

    else
    {
      v34 = 0;
    }

LABEL_15:
    sessionCopy = v47;
    interactionCopy = v48;
LABEL_16:
    v12 = v46;
  }

  else
  {
    v16 = 0;
    v34 = 0;
    v35 = 0;
  }

  return v34;
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  v9 = objc_opt_class();
  v10 = TUIDynamicCast(v9, interactionCopy);
  dragDelegate = [v10 dragDelegate];
  layoutDirection = [dragDelegate layoutDirection];

  if (layoutDirection == &dword_0 + 2)
  {
    v13 = objc_opt_class();
    _privateLocalContext = [itemCopy _privateLocalContext];
    v15 = TUIDynamicCast(v13, _privateLocalContext);

    view = [v15 view];
    window = [view window];
    superview = [view superview];
    [view center];
    [superview convertPoint:window toView:?];
    x = v19;
    y = v21;
  }

  else
  {
    window = 0;
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  dragBackgroundColor = self->_dragBackgroundColor;
  view2 = [interactionCopy view];
  traitCollection = [view2 traitCollection];
  v26 = [(UIColor *)dragBackgroundColor resolvedColorWithTraitCollection:traitCollection];

  v27 = sub_13248C(itemCopy, window, v26, x, y);

  return v27;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  animatorCopy = animator;
  [(TUIDragController *)self _updateDraggingState:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_132DC4;
  v13[3] = &unk_262538;
  v13[4] = self;
  v14 = sessionCopy;
  v15 = interactionCopy;
  v11 = interactionCopy;
  v12 = sessionCopy;
  [animatorCopy addCompletion:v13];
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  itemCopy = item;
  interactionCopy = interaction;
  v10 = objc_opt_class();
  _privateLocalContext = [itemCopy _privateLocalContext];

  v12 = TUIDynamicCast(v10, _privateLocalContext);

  view = [v12 view];
  v14 = objc_opt_class();
  v15 = TUIDynamicCast(v14, interactionCopy);

  dragDelegate = [v15 dragDelegate];
  if ([dragDelegate layoutDirection] == &dword_0 + 2)
  {
    window = [view window];
  }

  else
  {
    window = 0;
  }

  [window setUserInteractionEnabled:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_132FD8;
  v20[3] = &unk_2614B8;
  v21 = view;
  v22 = window;
  v18 = window;
  v19 = view;
  [animatorCopy addCompletion:v20];
}

- (BOOL)_dragInteraction:(id)interaction sessionSupportsSystemDrag:(id)drag
{
  v8 = kUINSUserActivityInternalType;
  dragCopy = drag;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [dragCopy hasItemsConformingToTypeIdentifiers:{v5, v8}];

  return v6;
}

+ (BOOL)viewSupportsDrag:(id)drag
{
  dragCopy = drag;
  v4 = objc_opt_class();
  layoutAttributes = [dragCopy layoutAttributes];

  v6 = TUIDynamicCast(v4, layoutAttributes);

  v7 = objc_opt_class();
  renderModel = [v6 renderModel];
  v9 = TUIDynamicCast(v7, renderModel);

  v10 = sub_133198(v9);
  LOBYTE(renderModel) = v10 != 0;

  return renderModel;
}

@end