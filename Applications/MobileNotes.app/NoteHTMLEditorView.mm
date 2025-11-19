@interface NoteHTMLEditorView
- (BOOL)performActionForDataDetectedInURL:(id)a3;
@end

@implementation NoteHTMLEditorView

- (BOOL)performActionForDataDetectedInURL:(id)a3
{
  v4 = a3;
  v5 = +[DDDetectionController sharedController];
  v6 = [(NoteHTMLEditorView *)self webView];
  v7 = [v6 _dataDetectionResults];
  v8 = [v5 defaultActionForURL:v4 results:v7 context:0];

  if (v8)
  {
    v9 = [(NoteHTMLEditorView *)self webView];
    [v5 performAction:v8 inView:v9 interactionDelegate:0];
  }

  return v8 != 0;
}

@end