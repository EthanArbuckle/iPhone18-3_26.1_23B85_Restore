@interface CRLBoardEditor
- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors;
- (CRLBoardEditor)initWithInteractiveCanvasController:(id)controller;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
@end

@implementation CRLBoardEditor

- (CRLBoardEditor)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLBoardEditor;
  v5 = [(CRLBoardEditor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
  }

  return v6;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  interactiveCanvasController = [(CRLBoardEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];

  return editingCoordinator;
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  v5 = [(CRLBoardEditor *)self interactiveCanvasController:selection];
  canvasEditor = [v5 canvasEditor];

  return canvasEditor;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
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