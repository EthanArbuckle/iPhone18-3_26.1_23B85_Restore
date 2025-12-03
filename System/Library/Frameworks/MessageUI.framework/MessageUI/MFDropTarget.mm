@interface MFDropTarget
- (BOOL)_delegateCanDropItemsWithDropSession:(id)session;
- (BOOL)_sessionContainsOnlyAcceptableTypeIdentifiers:(id)identifiers;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (MFDropTarget)initWithView:(id)view delegate:(id)delegate;
- (MFDropTargetDelegate)delegate;
- (UIView)targetView;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)_delegateDidDropItemsWithDropSession:(id)session;
- (void)_updateDelegateFlags;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
@end

@implementation MFDropTarget

- (MFDropTarget)initWithView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = MFDropTarget;
  v8 = [(MFDropTarget *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(MFDropTarget *)v8 setTargetView:viewCopy];
    v10 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v9];
    dropInteraction = v9->_dropInteraction;
    v9->_dropInteraction = v10;

    [viewCopy addInteraction:v9->_dropInteraction];
    [(MFDropTarget *)v9 setDelegate:delegateCopy];
    [(MFDropTarget *)v9 _updateDelegateFlags];
  }

  return v9;
}

- (void)_updateDelegateFlags
{
  delegate = [(MFDropTarget *)self delegate];
  self->_delegateFlags.respondsToCanDropDraggedItemsAtPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragEntered = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragExited = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragDidMoveToPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDidDropItemsAtPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDataOwner = objc_opt_respondsToSelector() & 1;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#DragAndDrop Dragging entered", v13, 2u);
  }

  if (self->_delegateFlags.respondsToDragEntered)
  {
    delegate = [(MFDropTarget *)self delegate];
    targetView = [(MFDropTarget *)self targetView];
    [enterCopy locationInView:targetView];
    v10 = v9;
    v12 = v11;

    [delegate dropTarget:self dragEnteredAtPoint:{v10, v12}];
  }
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "#DragAndDrop Dragging exited", v7, 2u);
  }

  if (self->_delegateFlags.respondsToDragExited)
  {
    delegate = [(MFDropTarget *)self delegate];
    [delegate dropTargetDragExited:self];
  }
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  if ([(MFDropTarget *)self _delegateHandlesDrops])
  {
    v6 = [(MFDropTarget *)self _sessionContainsOnlyAcceptableTypeIdentifiers:sessionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  if (self->_delegateFlags.respondsToDragDidMoveToPoint)
  {
    targetView = [(MFDropTarget *)self targetView];
    [updateCopy locationInView:targetView];
    v10 = v9;
    v12 = v11;

    delegate = [(MFDropTarget *)self delegate];
    [delegate dropTarget:self dragDidMoveToPoint:{v10, v12}];
  }

  if ([updateCopy allowsMoveOperation])
  {
    localDragSession = [updateCopy localDragSession];
    if (localDragSession)
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

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#DragAndDrop Items dropped", v7, 2u);
  }

  [(MFDropTarget *)self _delegateDidDropItemsWithDropSession:dropCopy];
}

- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  if (self->_delegateFlags.respondsToDataOwner)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained dropTarget:self dataOwnerForSession:sessionCopy];
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (BOOL)_sessionContainsOnlyAcceptableTypeIdentifiers:(id)identifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  items = [identifiers items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MFDropTarget__sessionContainsOnlyAcceptableTypeIdentifiers___block_invoke;
  v6[3] = &unk_1E806E108;
  v6[4] = self;
  v6[5] = &v7;
  [items enumerateObjectsUsingBlock:v6];

  LOBYTE(items) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return items;
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

- (void)_delegateDidDropItemsWithDropSession:(id)session
{
  sessionCopy = session;
  targetView = [(MFDropTarget *)self targetView];
  [sessionCopy locationInView:targetView];
  v6 = v5;
  v8 = v7;

  delegate = [(MFDropTarget *)self delegate];
  items = [sessionCopy items];
  [delegate dropTarget:self didDropDragItems:items atPoint:{v6, v8}];
}

- (BOOL)_delegateCanDropItemsWithDropSession:(id)session
{
  sessionCopy = session;
  if (self->_delegateFlags.respondsToCanDropDraggedItemsAtPoint)
  {
    delegate = [(MFDropTarget *)self delegate];
    targetView = [(MFDropTarget *)self targetView];
    [sessionCopy locationInView:targetView];
    v8 = v7;
    v10 = v9;

    v11 = [delegate dropTarget:self canDropDraggedItemsAtPoint:{v8, v10}];
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