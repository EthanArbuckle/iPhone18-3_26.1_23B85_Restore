@interface CRLCanvasRepDragTrackerDelegateWrapper
- (BOOL)dragTracker:(id)a3 willBeginDraggingReps:(id)a4 atPoint:(CGPoint)a5;
- (BOOL)dragTrackerContinuedDragging:(id)a3 atPoint:(CGPoint)a4 delegateOffset:(CGPoint *)a5;
- (CRLCanvasRepDragTrackerDelegateWrapper)initWithInteractiveCanvasController:(id)a3;
- (id)dragTracker:(id)a3 drawablesToDrag:(id)a4 hitRep:(id)a5;
- (void)dragTrackerDidFinishDragging:(id)a3 atPoint:(CGPoint)a4;
@end

@implementation CRLCanvasRepDragTrackerDelegateWrapper

- (CRLCanvasRepDragTrackerDelegateWrapper)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLCanvasRepDragTrackerDelegateWrapper;
  v5 = [(CRLCanvasRepDragTrackerDelegateWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
    v7 = +[NSMutableSet set];
    itemsToDragInDelegateWrapper = v6->_itemsToDragInDelegateWrapper;
    v6->_itemsToDragInDelegateWrapper = v7;
  }

  return v6;
}

- (id)dragTracker:(id)a3 drawablesToDrag:(id)a4 hitRep:(id)a5
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = [v6 rep];
        v15 = [v14 info];
        v16 = sub_100014370(v13, v15);

        v17 = [v16 parentItem];
        if (v17)
        {
          if ([v16 isDirectlyAnchoredToTable])
          {
            v18 = [v16 anchoringTableItemIfAny];

            if (v18 == v17)
            {
              [(NSMutableSet *)self->_itemsToDragInDelegateWrapper addObject:v12];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = [(NSMutableSet *)self->_itemsToDragInDelegateWrapper copy];

  return v19;
}

- (BOOL)dragTracker:(id)a3 willBeginDraggingReps:(id)a4 atPoint:(CGPoint)a5
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 rep];
  v9 = [v8 info];
  v10 = sub_100014370(v7, v9);

  v11 = [(NSMutableSet *)self->_itemsToDragInDelegateWrapper containsObject:v10];
  if (v11)
  {
    if (!self->_openedCommandGroup && ([v6 alreadyInCommandGroup] & 1) == 0)
    {
      self->_openedCommandGroup = 1;
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v13 = [WeakRetained commandController];
      [v13 openGroup];
    }

    v14 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v15 = [v14 commandController];
    [v15 enableProgressiveEnqueuingInCurrentGroup];

    v16 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v17 = [v16 layoutForInfo:v10];

    v18 = [v17 geometry];
    v19 = [v18 infoGeometry];
    v20 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v10 geometry:v19];
    v21 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v22 = [v21 commandController];
    [v22 enqueueCommand:v20];
  }

  return v11;
}

- (BOOL)dragTrackerContinuedDragging:(id)a3 atPoint:(CGPoint)a4 delegateOffset:(CGPoint *)a5
{
  v6 = [a3 rep];
  v7 = [v6 info];

  LOBYTE(self) = [(NSMutableSet *)self->_itemsToDragInDelegateWrapper containsObject:v7];
  return self;
}

- (void)dragTrackerDidFinishDragging:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  itemsToDragInDelegateWrapper = self->_itemsToDragInDelegateWrapper;
  v14 = v5;
  v7 = [v5 rep];
  v8 = [v7 info];
  LODWORD(itemsToDragInDelegateWrapper) = [(NSMutableSet *)itemsToDragInDelegateWrapper containsObject:v8];

  if (itemsToDragInDelegateWrapper)
  {
    v9 = self->_itemsToDragInDelegateWrapper;
    v10 = [v14 rep];
    v11 = [v10 info];
    [(NSMutableSet *)v9 removeObject:v11];

    if (![(NSMutableSet *)self->_itemsToDragInDelegateWrapper count]&& self->_openedCommandGroup)
    {
      self->_openedCommandGroup = 0;
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v13 = [WeakRetained commandController];

      [v13 closeGroup];
    }
  }
}

@end