@interface CRLAccessibilityReaderModeCopyOperator
+ (BOOL)performCopyOperationWithSelectionPath:(id)path interactiveCanvasController:(id)controller sender:(id)sender;
@end

@implementation CRLAccessibilityReaderModeCopyOperator

+ (BOOL)performCopyOperationWithSelectionPath:(id)path interactiveCanvasController:(id)controller sender:(id)sender
{
  pathCopy = path;
  senderCopy = sender;
  editorController = [controller editorController];
  v10 = editorController;
  if (editorController)
  {
    selectionPath = [editorController selectionPath];
    [v10 setSelectionPath:pathCopy];
    v12 = [v10 editorForEditAction:"copy:" withSender:senderCopy];
  }

  else
  {
    v12 = 0;
    selectionPath = 0;
  }

  v13 = [v12 canPerformEditorAction:"copy:" withSender:senderCopy];
  if (v13)
  {
    ([v12 methodForSelector:"copy:"])(v12, "copy:", senderCopy);
  }

  if (selectionPath)
  {
    [v10 setSelectionPath:selectionPath];
  }

  return v13 != 0;
}

@end