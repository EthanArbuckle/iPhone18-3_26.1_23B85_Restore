@interface CRLFreehandDrawingMixedTypeEditor
- (BOOL)canCopySubselection;
- (BOOL)currentSelectionContainsInfo:(id)info;
- (CRLEditorController)editorController;
- (CRLFreehandDrawingMixedTypeEditor)initWithInteractiveCanvasController:(id)controller currentSelectionPath:(id)path;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (NSSet)boardItemsForDragAndDropTracing;
- (NSSet)drawingItemsFromCurrentSelectionPath;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)drawingRepresetativeItemsFromBoardItems:(id)items;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (id)parentItemsForSelectedStrokes;
- (id)selectedItems;
- (void)setEditorController:(id)controller;
@end

@implementation CRLFreehandDrawingMixedTypeEditor

- (CRLFreehandDrawingMixedTypeEditor)initWithInteractiveCanvasController:(id)controller currentSelectionPath:(id)path
{
  controllerCopy = controller;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = CRLFreehandDrawingMixedTypeEditor;
  v8 = [(CRLFreehandDrawingMixedTypeEditor *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->mInteractiveCanvasController, controllerCopy);
    objc_storeStrong(&v9->mSelectionPath, path);
    selectionModelTranslator = [controllerCopy selectionModelTranslator];
    v11 = [selectionModelTranslator infosForSelectionPath:pathCopy];

    v12 = +[NSMutableSet set];
    v13 = +[NSMutableSet set];
    v14 = +[NSMutableSet set];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100338E50;
    v22[3] = &unk_101856F50;
    v22[4] = v12;
    v22[5] = v13;
    v22[6] = v14;
    [v11 enumerateObjectsUsingBlock:v22];
    v15 = [v12 copy];
    mSelectedItems = v9->mSelectedItems;
    v9->mSelectedItems = v15;

    v17 = [v13 copy];
    mSelectedDrawingShapeItems = v9->mSelectedDrawingShapeItems;
    v9->mSelectedDrawingShapeItems = v17;

    v19 = [v14 copy];
    mSelectedNonDrawingItems = v9->mSelectedNonDrawingItems;
    v9->mSelectedNonDrawingItems = v19;
  }

  return v9;
}

- (id)selectedItems
{
  v2 = [(NSSet *)self->mSelectedItems copy];

  return v2;
}

- (id)parentItemsForSelectedStrokes
{
  v3 = +[NSMutableSet set];
  mSelectedDrawingShapeItems = self->mSelectedDrawingShapeItems;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100338FF0;
  v8[3] = &unk_101856F78;
  v9 = v3;
  v5 = v3;
  [(NSSet *)mSelectedDrawingShapeItems enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
  editingCoordinator = [WeakRetained editingCoordinator];

  return editingCoordinator;
}

- (CRLEditorController)editorController
{
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
  editorController = [WeakRetained editorController];

  return editorController;
}

- (void)setEditorController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
    editorController = [WeakRetained editorController];

    if (editorController != controllerCopy)
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013564B8();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013564CC(v7, v8);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101356578();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v9, v7);
      }

      v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingMixedTypeEditor setEditorController:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingMixedTypeEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:76 isFatal:0 description:"Unexpected editor controller!"];
    }
  }
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  v6 = [CRLFreehandDrawingMixedTypeEditor alloc];
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
  v8 = [(CRLFreehandDrawingMixedTypeEditor *)v6 initWithInteractiveCanvasController:WeakRetained currentSelectionPath:self->mSelectionPath];

  return v8;
}

- (BOOL)currentSelectionContainsInfo:(id)info
{
  infoCopy = info;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, infoCopy);

  if (v6)
  {
    v7 = [(NSSet *)self->mSelectedItems containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);

  return WeakRetained;
}

- (NSSet)drawingItemsFromCurrentSelectionPath
{
  v3 = +[NSMutableSet set];
  mSelectedDrawingShapeItems = self->mSelectedDrawingShapeItems;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100339510;
  v8[3] = &unk_101856F78;
  v9 = v3;
  v5 = v3;
  [(NSSet *)mSelectedDrawingShapeItems enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)drawingRepresetativeItemsFromBoardItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(NSSet *)self->mSelectedDrawingShapeItems containsObject:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (NSSet)boardItemsForDragAndDropTracing
{
  v2 = [(NSSet *)self->mSelectedDrawingShapeItems copy];

  return v2;
}

- (BOOL)canCopySubselection
{
  editorController = [(CRLFreehandDrawingMixedTypeEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  orderedSelections = [selectionPath orderedSelections];
  lastObject = [orderedSelections lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end