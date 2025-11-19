@interface CRLWPiOSTextDraggingContext
- (CRLWPiOSTextDraggingContext)initWithEditorController:(id)a3 sourceSelectionPath:(id)a4 changeCount:(unint64_t)a5 reverseSelectionPath:(id)a6;
@end

@implementation CRLWPiOSTextDraggingContext

- (CRLWPiOSTextDraggingContext)initWithEditorController:(id)a3 sourceSelectionPath:(id)a4 changeCount:(unint64_t)a5 reverseSelectionPath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CRLWPiOSTextDraggingContext;
  v14 = [(CRLWPiOSTextDraggingContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_editorController, a3);
    objc_storeStrong(&v15->_sourceSelectionPath, a4);
    v15->_changeCount = a5;
    objc_storeStrong(&v15->_reverseSelectionPath, a6);
  }

  return v15;
}

@end