@interface MFDragSource
- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation;
- (BOOL)dragInteraction:(id)interaction sessionIsRestrictedToDraggingApplication:(id)application;
- (MFDragSource)initWithView:(id)view delegate:(id)delegate;
- (MFDragSourceDelegate)delegate;
- (UIView)sourceView;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
@end

@implementation MFDragSource

- (MFDragSource)initWithView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = MFDragSource;
  v8 = [(MFDragSource *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sourceView, viewCopy);
    [(MFDragSource *)v9 setDelegate:delegateCopy];
    v9->_delegateFlags.respondsToTeamDataForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToLocalObjectForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToTargetedPreviewForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToPreviewForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToSuggestedNameForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToDragWillEnd = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToAllowsMoveOperation = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToIsRestrictedToMail = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToDataOwner = objc_opt_respondsToSelector() & 1;
    v10 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v9];
    [(MFDragSource *)v9 setDragInteraction:v10];

    sourceView = [(MFDragSource *)v9 sourceView];
    dragInteraction = [(MFDragSource *)v9 dragInteraction];
    [sourceView addInteraction:dragInteraction];

    [(MFDragSource *)v9 setAllowsDragOverridingMasterSwitch:0];
  }

  return v9;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  view = [interaction view];
  [sessionCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  delegate = [(MFDragSource *)self delegate];
  v13 = [delegate dragSource:self draggableItemsAtPoint:{v9, v11}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__MFDragSource_dragInteraction_itemsForBeginningSession___block_invoke;
  v17[3] = &unk_1E806E0E0;
  v17[4] = self;
  v14 = delegate;
  v18 = v14;
  v15 = [v13 ef_map:v17];

  return v15;
}

id __57__MFDragSource_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v3];
  v5 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v4];
  v6 = *(a1 + 32);
  if (v6[12] == 1)
  {
    v7 = [*(a1 + 40) dragSource:? localObjectForDraggableItem:?];
    [v5 setLocalObject:v7];

    v6 = *(a1 + 32);
  }

  if (v6[8] == 1)
  {
    v8 = [*(a1 + 40) dragSource:? teamDataForDraggableItem:?];
    v9 = [v5 itemProvider];
    [v9 setTeamData:v8];

    v6 = *(a1 + 32);
  }

  if (v6[11] == 1)
  {
    v10 = [*(a1 + 40) dragSource:? suggestedNameForDraggableItem:?];
    v11 = [v5 itemProvider];
    [v11 setSuggestedName:v10];
  }

  return v5;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  sessionCopy = session;
  if (self->_delegateFlags.respondsToTargetedPreviewForItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    localObject = [itemCopy localObject];
    v13 = [WeakRetained dragSource:self targetedPreviewForDraggableItem:localObject];
  }

  else if (self->_delegateFlags.respondsToPreviewForItem)
  {
    delegate = [(MFDragSource *)self delegate];
    localObject2 = [itemCopy localObject];
    v16 = [delegate dragSource:self previewForDraggableItem:localObject2];

    window = [v16 window];

    if (window)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v16];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E69DC9A8]);
      view = [interactionCopy view];
      [v16 center];
      v21 = v20;
      v23 = v22;
      if (v16)
      {
        [v16 transform];
      }

      else
      {
        memset(v28, 0, sizeof(v28));
      }

      v24 = [v18 initWithContainer:view center:v28 transform:{v21, v23}];

      v25 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v25 setBackgroundColor:clearColor];

      v13 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v16 parameters:v25 target:v24];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  if (self->_delegateFlags.respondsToDragWillEnd)
  {
    v10 = sessionCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    items = [v10 items];
    [WeakRetained dragSource:self willEndInteractionWithItems:items dropOperation:operation];

    sessionCopy = v10;
  }
}

- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation
{
  operationCopy = operation;
  if (self->_delegateFlags.respondsToAllowsMoveOperation)
  {
    delegate = [(MFDragSource *)self delegate];
    v7 = [delegate dragSource:self sessionAllowsMoveOperation:operationCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)dragInteraction:(id)interaction sessionIsRestrictedToDraggingApplication:(id)application
{
  applicationCopy = application;
  if (self->_delegateFlags.respondsToIsRestrictedToMail)
  {
    delegate = [(MFDragSource *)self delegate];
    v7 = [delegate dragSource:self sessionIsRestrictedToMail:applicationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  if (self->_delegateFlags.respondsToDataOwner)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained dragSource:self dataOwnerForSession:sessionCopy];
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (MFDragSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end