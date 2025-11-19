@interface TUIDragController
+ (BOOL)viewSupportsDrag:(id)a3;
+ (id)sharedInstance;
- (BOOL)_dragInteraction:(id)a3 sessionSupportsSystemDrag:(id)a4;
- (BOOL)_dragSession:(id)a3 containsView:(id)a4;
- (TUIDragController)init;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragInteractionWithActionHandlerDelegate:(id)a3 dragDelegate:(id)a4;
- (void)_notifyDelegateOfViewDraggingStateForSession:(id)a3 interaction:(id)a4 dropOperation:(unint64_t)a5;
- (void)_notifyObserversWithSession:(id)a3;
- (void)_setAlpha:(double)a3 forSessionDragItems:(id)a4;
- (void)addObserver:(id)a3;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)removeObserver:(id)a3;
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_setAlpha:(double)a3 forSessionDragItems:(id)a4
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a4 items];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = [v10 _privateLocalContext];
        v13 = TUIDynamicCast(v11, v12);

        v14 = [v13 view];
        [v14 setAlpha:a3];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)dragInteractionWithActionHandlerDelegate:(id)a3 dragDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_TUIDragInteraction alloc] initWithDelegate:self];
  [(_TUIDragInteraction *)v8 setActionHandlerDelegate:v7];

  [(_TUIDragInteraction *)v8 setDragDelegate:v6];

  return v8;
}

- (void)_notifyObserversWithSession:(id)a3
{
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v10) dragController:self dragSessionDidEnd:{v4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_notifyDelegateOfViewDraggingStateForSession:(id)a3 interaction:(id)a4 dropOperation:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v22 = v8;
  v21 = TUIDynamicCast(v9, v8);
  v10 = [v21 actionHandlerDelegate];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v7;
  v11 = [v7 items];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_opt_class();
        v18 = [v16 _privateLocalContext];
        v19 = TUIDynamicCast(v17, v18);

        LODWORD(v18) = self->_isDragging;
        v20 = [v19 view];
        if (v18 == 1)
        {
          [v10 didBeginDraggingView:v20];
        }

        else
        {
          [v10 didEndDraggingView:v20];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  [v10 didEndDragSession:v24 dropOperation:a5];
}

- (BOOL)_dragSession:(id)a3 containsView:(id)a4
{
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 items];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = [v10 _privateLocalContext];
        v13 = TUIDynamicCast(v11, v12);

        v14 = [v13 view];

        if (v14 == v5)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 view];
  [v6 locationInView:v8];
  v9 = [(TUIDragController *)self dragInteraction:v7 itemsForAddingToSession:v6 withTouchAtPoint:?];

  return v9;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [v7 _privateLocalContext];
  v11 = TUIDynamicCast(v9, v10);

  v12 = [v11 view];
  objc_opt_class();
  v13 = TUIPlatformAncestorOfClass(v12);
  v14 = [v13 feedControllerHost];
  v15 = [v14 hostingContainerView];

  v16 = [v12 superview];
  [v12 center];
  [v16 convertPoint:v15 toView:?];
  v18 = v17;
  v20 = v19;

  dragBackgroundColor = self->_dragBackgroundColor;
  v22 = [v8 view];

  v23 = [v22 traitCollection];
  v24 = [(UIColor *)dragBackgroundColor resolvedColorWithTraitCollection:v23];

  v25 = sub_13248C(v7, v15, v24, v18, v20);

  return v25;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  [(TUIDragController *)self _notifyObserversWithSession:v8];
  [(TUIDragController *)self _updateDraggingState:0];
  [(TUIDragController *)self _setAlpha:v8 forSessionDragItems:1.0];
  [(TUIDragController *)self _notifyDelegateOfViewDraggingStateForSession:v8 interaction:v9 dropOperation:a5];
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [v9 view];
  v12 = [v11 hitTest:0 withEvent:{x, y}];

  v13 = objc_opt_class();
  v14 = TUIPlatformAncestorOfClassAndProtocol(v12, v13, &OBJC_PROTOCOL___TUIReusableRenderView);
  if (v14)
  {
    v15 = v14;
    v45 = self;
    v46 = v12;
    v47 = v10;
    v48 = v9;
    while (1)
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = [v16 layoutAttributes];

      v19 = TUIDynamicCast(v17, v18);

      v20 = objc_opt_class();
      v21 = [v19 renderModel];
      v22 = TUIDynamicCast(v20, v21);

      v23 = v22;
      v24 = sub_133198(v23);
      if (v24)
      {
        v25 = [_TUIDragTriggerInfo alloc];
        v26 = [v23 actionHandler];
        v27 = [v26 actionObject];
        v28 = [v24 behavior];
        v29 = [v24 arguments];
        v30 = [(_TUIDragTriggerInfo *)v25 initWithActionObject:v27 behavior:v28 arguments:v29];
      }

      else
      {
        v30 = 0;
      }

      v31 = [(_TUIDragTriggerInfo *)v30 behavior];
      if (v31)
      {
        break;
      }

      v32 = [v16 superview];
      v33 = objc_opt_class();
      v15 = TUIPlatformAncestorOfClassAndProtocol(v32, v33, &OBJC_PROTOCOL___TUIReusableRenderView);

      if (!v15)
      {
        v16 = 0;
        v34 = 0;
        v35 = 0;
        goto LABEL_15;
      }
    }

    v36 = v31;
    v10 = v47;
    if ([(TUIDragController *)v45 _dragSession:v47 containsView:v16])
    {

      v34 = 0;
      v35 = 0;
      v9 = v48;
      goto LABEL_16;
    }

    v37 = objc_opt_class();
    v38 = TUIDynamicCast(v37, v48);
    v39 = [v38 actionHandlerDelegate];

    [v39 didBeginDraggingView:v16];
    v35 = [[_TUIDragPreviewInfo alloc] initWithDragInfo:v30 view:v16];
    v40 = [(_TUIDragTriggerInfo *)v30 actionObject];
    v41 = [(_TUIDragTriggerInfo *)v30 behavior];
    v42 = [(_TUIDragTriggerInfo *)v30 arguments];
    v43 = [v39 dragItemForObject:v40 withName:v41 arguments:v42];

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
    v10 = v47;
    v9 = v48;
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

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = TUIDynamicCast(v9, v7);
  v11 = [v10 dragDelegate];
  v12 = [v11 layoutDirection];

  if (v12 == &dword_0 + 2)
  {
    v13 = objc_opt_class();
    v14 = [v8 _privateLocalContext];
    v15 = TUIDynamicCast(v13, v14);

    v16 = [v15 view];
    v17 = [v16 window];
    v18 = [v16 superview];
    [v16 center];
    [v18 convertPoint:v17 toView:?];
    x = v19;
    y = v21;
  }

  else
  {
    v17 = 0;
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  dragBackgroundColor = self->_dragBackgroundColor;
  v24 = [v7 view];
  v25 = [v24 traitCollection];
  v26 = [(UIColor *)dragBackgroundColor resolvedColorWithTraitCollection:v25];

  v27 = sub_13248C(v8, v17, v26, x, y);

  return v27;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(TUIDragController *)self _updateDraggingState:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_132DC4;
  v13[3] = &unk_262538;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  [v10 addCompletion:v13];
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [v8 _privateLocalContext];

  v12 = TUIDynamicCast(v10, v11);

  v13 = [v12 view];
  v14 = objc_opt_class();
  v15 = TUIDynamicCast(v14, v9);

  v16 = [v15 dragDelegate];
  if ([v16 layoutDirection] == &dword_0 + 2)
  {
    v17 = [v13 window];
  }

  else
  {
    v17 = 0;
  }

  [v17 setUserInteractionEnabled:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_132FD8;
  v20[3] = &unk_2614B8;
  v21 = v13;
  v22 = v17;
  v18 = v17;
  v19 = v13;
  [v7 addCompletion:v20];
}

- (BOOL)_dragInteraction:(id)a3 sessionSupportsSystemDrag:(id)a4
{
  v8 = kUINSUserActivityInternalType;
  v4 = a4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 hasItemsConformingToTypeIdentifiers:{v5, v8}];

  return v6;
}

+ (BOOL)viewSupportsDrag:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 layoutAttributes];

  v6 = TUIDynamicCast(v4, v5);

  v7 = objc_opt_class();
  v8 = [v6 renderModel];
  v9 = TUIDynamicCast(v7, v8);

  v10 = sub_133198(v9);
  LOBYTE(v8) = v10 != 0;

  return v8;
}

@end