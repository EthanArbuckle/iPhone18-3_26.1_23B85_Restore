@interface CRLBoardEditor
- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5;
- (CRLBoardEditor)initWithInteractiveCanvasController:(id)a3;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
@end

@implementation CRLBoardEditor

- (CRLBoardEditor)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLBoardEditor;
  v5 = [(CRLBoardEditor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
  }

  return v6;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  v2 = [(CRLBoardEditor *)self interactiveCanvasController];
  v3 = [v2 editingCoordinator];

  return v3;
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v5 = [(CRLBoardEditor *)self interactiveCanvasController:a3];
  v6 = [v5 canvasEditor];

  return v6;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end