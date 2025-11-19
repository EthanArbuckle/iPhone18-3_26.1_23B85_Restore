@interface CRLAccessibilityReaderModeCopyOperator
+ (BOOL)performCopyOperationWithSelectionPath:(id)a3 interactiveCanvasController:(id)a4 sender:(id)a5;
@end

@implementation CRLAccessibilityReaderModeCopyOperator

+ (BOOL)performCopyOperationWithSelectionPath:(id)a3 interactiveCanvasController:(id)a4 sender:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 editorController];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 selectionPath];
    [v10 setSelectionPath:v7];
    v12 = [v10 editorForEditAction:"copy:" withSender:v8];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = [v12 canPerformEditorAction:"copy:" withSender:v8];
  if (v13)
  {
    ([v12 methodForSelector:"copy:"])(v12, "copy:", v8);
  }

  if (v11)
  {
    [v10 setSelectionPath:v11];
  }

  return v13 != 0;
}

@end