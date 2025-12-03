@interface WKEditorUndoTarget
- (void)redoEditing:(id)editing;
- (void)undoEditing:(id)editing;
@end

@implementation WKEditorUndoTarget

- (void)undoEditing:(id)editing
{
  command = [editing command];
  CFRetain(command[1]);
  WebKit::WebEditCommandProxy::unapply(command);
  v4 = command[1];

  CFRelease(v4);
}

- (void)redoEditing:(id)editing
{
  command = [editing command];
  CFRetain(command[1]);
  WebKit::WebEditCommandProxy::reapply(command);
  v4 = command[1];

  CFRelease(v4);
}

@end