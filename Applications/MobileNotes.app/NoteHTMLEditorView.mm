@interface NoteHTMLEditorView
- (BOOL)performActionForDataDetectedInURL:(id)l;
@end

@implementation NoteHTMLEditorView

- (BOOL)performActionForDataDetectedInURL:(id)l
{
  lCopy = l;
  v5 = +[DDDetectionController sharedController];
  webView = [(NoteHTMLEditorView *)self webView];
  _dataDetectionResults = [webView _dataDetectionResults];
  v8 = [v5 defaultActionForURL:lCopy results:_dataDetectionResults context:0];

  if (v8)
  {
    webView2 = [(NoteHTMLEditorView *)self webView];
    [v5 performAction:v8 inView:webView2 interactionDelegate:0];
  }

  return v8 != 0;
}

@end