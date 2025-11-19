@interface WKEditorUndoTarget
- (void)redoEditing:(id)a3;
- (void)undoEditing:(id)a3;
@end

@implementation WKEditorUndoTarget

- (void)undoEditing:(id)a3
{
  v3 = [a3 command];
  CFRetain(v3[1]);
  WebKit::WebEditCommandProxy::unapply(v3);
  v4 = v3[1];

  CFRelease(v4);
}

- (void)redoEditing:(id)a3
{
  v3 = [a3 command];
  CFRetain(v3[1]);
  WebKit::WebEditCommandProxy::reapply(v3);
  v4 = v3[1];

  CFRelease(v4);
}

@end