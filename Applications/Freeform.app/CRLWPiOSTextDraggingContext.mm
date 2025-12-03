@interface CRLWPiOSTextDraggingContext
- (CRLWPiOSTextDraggingContext)initWithEditorController:(id)controller sourceSelectionPath:(id)path changeCount:(unint64_t)count reverseSelectionPath:(id)selectionPath;
@end

@implementation CRLWPiOSTextDraggingContext

- (CRLWPiOSTextDraggingContext)initWithEditorController:(id)controller sourceSelectionPath:(id)path changeCount:(unint64_t)count reverseSelectionPath:(id)selectionPath
{
  controllerCopy = controller;
  pathCopy = path;
  selectionPathCopy = selectionPath;
  v17.receiver = self;
  v17.super_class = CRLWPiOSTextDraggingContext;
  v14 = [(CRLWPiOSTextDraggingContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_editorController, controller);
    objc_storeStrong(&v15->_sourceSelectionPath, path);
    v15->_changeCount = count;
    objc_storeStrong(&v15->_reverseSelectionPath, selectionPath);
  }

  return v15;
}

@end