@interface MFDropTarget
- (BOOL)_delegateCanDropItemsWithDropSession:(id)a3;
- (BOOL)_sessionContainsOnlyAcceptableTypeIdentifiers:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (MFDropTarget)initWithView:(id)a3 delegate:(id)a4;
- (MFDropTargetDelegate)delegate;
- (UIView)targetView;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)_delegateDidDropItemsWithDropSession:(id)a3;
- (void)_updateDelegateFlags;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
@end

@implementation MFDropTarget

- (MFDropTarget)initWithView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MFDropTarget;
  v8 = [(MFDropTarget *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(MFDropTarget *)v8 setTargetView:v6];
    v10 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v9];
    dropInteraction = v9->_dropInteraction;
    v9->_dropInteraction = v10;

    [v6 addInteraction:v9->_dropInteraction];
    [(MFDropTarget *)v9 setDelegate:v7];
    [(MFDropTarget *)v9 _updateDelegateFlags];
  }

  return v9;
}

- (void)_updateDelegateFlags
{
  v3 = [(MFDropTarget *)self delegate];
  self->_delegateFlags.respondsToCanDropDraggedItemsAtPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragEntered = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragExited = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragDidMoveToPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDidDropItemsAtPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDataOwner = objc_opt_respondsToSelector() & 1;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = a4;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#DragAndDrop Dragging entered", v13, 2u);
  }

  if (self->_delegateFlags.respondsToDragEntered)
  {
    v7 = [(MFDropTarget *)self delegate];
    v8 = [(MFDropTarget *)self targetView];
    [v5 locationInView:v8];
    v10 = v9;
    v12 = v11;

    [v7 dropTarget:self dragEnteredAtPoint:{v10, v12}];
  }
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#DragAndDrop Dragging exited", v7, 2u);
  }

  if (self->_delegateFlags.respondsToDragExited)
  {
    v6 = [(MFDropTarget *)self delegate];
    [v6 dropTargetDragExited:self];
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  if ([(MFDropTarget *)self _delegateHandlesDrops])
  {
    v6 = [(MFDropTarget *)self _sessionContainsOnlyAcceptableTypeIdentifiers:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_delegateFlags.respondsToDragDidMoveToPoint)
  {
    v8 = [(MFDropTarget *)self targetView];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(MFDropTarget *)self delegate];
    [v13 dropTarget:self dragDidMoveToPoint:{v10, v12}];
  }

  if ([v7 allowsMoveOperation])
  {
    v14 = [v7 localDragSession];
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 2;
  }

  v16 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v15];

  return v16;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#DragAndDrop Items dropped", v7, 2u);
  }

  [(MFDropTarget *)self _delegateDidDropItemsWithDropSession:v5];
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = a4;
  if (self->_delegateFlags.respondsToDataOwner)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained dropTarget:self dataOwnerForSession:v5];
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (BOOL)_sessionContainsOnlyAcceptableTypeIdentifiers:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4 = [a3 items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MFDropTarget__sessionContainsOnlyAcceptableTypeIdentifiers___block_invoke;
  v6[3] = &unk_1E806E108;
  v6[4] = self;
  v6[5] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];

  LOBYTE(v4) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __62__MFDropTarget__sessionContainsOnlyAcceptableTypeIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = [a2 itemProvider];
  v8 = [v7 registeredTypeIdentifiers];
  v10 = [v6 setWithArray:v8];

  v9 = [*(a1 + 32) acceptableUTIs];
  LOBYTE(v8) = [v9 intersectsSet:v10];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_delegateDidDropItemsWithDropSession:(id)a3
{
  v11 = a3;
  v4 = [(MFDropTarget *)self targetView];
  [v11 locationInView:v4];
  v6 = v5;
  v8 = v7;

  v9 = [(MFDropTarget *)self delegate];
  v10 = [v11 items];
  [v9 dropTarget:self didDropDragItems:v10 atPoint:{v6, v8}];
}

- (BOOL)_delegateCanDropItemsWithDropSession:(id)a3
{
  v4 = a3;
  if (self->_delegateFlags.respondsToCanDropDraggedItemsAtPoint)
  {
    v5 = [(MFDropTarget *)self delegate];
    v6 = [(MFDropTarget *)self targetView];
    [v4 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [v5 dropTarget:self canDropDraggedItemsAtPoint:{v8, v10}];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

- (MFDropTargetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end