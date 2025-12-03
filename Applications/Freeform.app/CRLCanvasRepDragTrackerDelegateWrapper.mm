@interface CRLCanvasRepDragTrackerDelegateWrapper
- (BOOL)dragTracker:(id)tracker willBeginDraggingReps:(id)reps atPoint:(CGPoint)point;
- (BOOL)dragTrackerContinuedDragging:(id)dragging atPoint:(CGPoint)point delegateOffset:(CGPoint *)offset;
- (CRLCanvasRepDragTrackerDelegateWrapper)initWithInteractiveCanvasController:(id)controller;
- (id)dragTracker:(id)tracker drawablesToDrag:(id)drag hitRep:(id)rep;
- (void)dragTrackerDidFinishDragging:(id)dragging atPoint:(CGPoint)point;
@end

@implementation CRLCanvasRepDragTrackerDelegateWrapper

- (CRLCanvasRepDragTrackerDelegateWrapper)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CRLCanvasRepDragTrackerDelegateWrapper;
  v5 = [(CRLCanvasRepDragTrackerDelegateWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
    v7 = +[NSMutableSet set];
    itemsToDragInDelegateWrapper = v6->_itemsToDragInDelegateWrapper;
    v6->_itemsToDragInDelegateWrapper = v7;
  }

  return v6;
}

- (id)dragTracker:(id)tracker drawablesToDrag:(id)drag hitRep:(id)rep
{
  trackerCopy = tracker;
  dragCopy = drag;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [dragCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(dragCopy);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = [trackerCopy rep];
        info = [v14 info];
        v16 = sub_100014370(v13, info);

        parentItem = [v16 parentItem];
        if (parentItem)
        {
          if ([v16 isDirectlyAnchoredToTable])
          {
            anchoringTableItemIfAny = [v16 anchoringTableItemIfAny];

            if (anchoringTableItemIfAny == parentItem)
            {
              [(NSMutableSet *)self->_itemsToDragInDelegateWrapper addObject:v12];
            }
          }
        }
      }

      v9 = [dragCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = [(NSMutableSet *)self->_itemsToDragInDelegateWrapper copy];

  return v19;
}

- (BOOL)dragTracker:(id)tracker willBeginDraggingReps:(id)reps atPoint:(CGPoint)point
{
  trackerCopy = tracker;
  v7 = objc_opt_class();
  v8 = [trackerCopy rep];
  info = [v8 info];
  v10 = sub_100014370(v7, info);

  v11 = [(NSMutableSet *)self->_itemsToDragInDelegateWrapper containsObject:v10];
  if (v11)
  {
    if (!self->_openedCommandGroup && ([trackerCopy alreadyInCommandGroup] & 1) == 0)
    {
      self->_openedCommandGroup = 1;
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      commandController = [WeakRetained commandController];
      [commandController openGroup];
    }

    v14 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    commandController2 = [v14 commandController];
    [commandController2 enableProgressiveEnqueuingInCurrentGroup];

    v16 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v17 = [v16 layoutForInfo:v10];

    geometry = [v17 geometry];
    infoGeometry = [geometry infoGeometry];
    v20 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v10 geometry:infoGeometry];
    v21 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    commandController3 = [v21 commandController];
    [commandController3 enqueueCommand:v20];
  }

  return v11;
}

- (BOOL)dragTrackerContinuedDragging:(id)dragging atPoint:(CGPoint)point delegateOffset:(CGPoint *)offset
{
  v6 = [dragging rep];
  info = [v6 info];

  LOBYTE(self) = [(NSMutableSet *)self->_itemsToDragInDelegateWrapper containsObject:info];
  return self;
}

- (void)dragTrackerDidFinishDragging:(id)dragging atPoint:(CGPoint)point
{
  draggingCopy = dragging;
  itemsToDragInDelegateWrapper = self->_itemsToDragInDelegateWrapper;
  v14 = draggingCopy;
  v7 = [draggingCopy rep];
  info = [v7 info];
  LODWORD(itemsToDragInDelegateWrapper) = [(NSMutableSet *)itemsToDragInDelegateWrapper containsObject:info];

  if (itemsToDragInDelegateWrapper)
  {
    v9 = self->_itemsToDragInDelegateWrapper;
    v10 = [v14 rep];
    info2 = [v10 info];
    [(NSMutableSet *)v9 removeObject:info2];

    if (![(NSMutableSet *)self->_itemsToDragInDelegateWrapper count]&& self->_openedCommandGroup)
    {
      self->_openedCommandGroup = 0;
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      commandController = [WeakRetained commandController];

      [commandController closeGroup];
    }
  }
}

@end