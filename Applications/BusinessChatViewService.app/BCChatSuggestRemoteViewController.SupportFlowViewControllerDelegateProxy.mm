@interface BCChatSuggestRemoteViewController.SupportFlowViewControllerDelegateProxy
- (_TtCE23BusinessChatViewServiceCSo33BCChatSuggestRemoteViewControllerP33_D33DBE072432EE7147065A24717A63BF38SupportFlowViewControllerDelegateProxy)init;
- (void)supportFlowViewController:(id)a3 didFinishWithError:(id)a4;
- (void)supportFlowViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)supportFlowViewControllerDidCancel:(id)a3;
@end

@implementation BCChatSuggestRemoteViewController.SupportFlowViewControllerDelegateProxy

- (void)supportFlowViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  a3;
  self;
  sub_100002744(a3, a4);
  _objc_release(self);
  _objc_release(a3);
}

- (void)supportFlowViewController:(id)a3 didFinishWithError:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  a3;
  a4;
  self;
  sub_100002744(a3, a4);

  _objc_release(self);
  _objc_release(a3);
}

- (void)supportFlowViewControllerDidCancel:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  a3;
  self;
  sub_1000029F0(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (_TtCE23BusinessChatViewServiceCSo33BCChatSuggestRemoteViewControllerP33_D33DBE072432EE7147065A24717A63BF38SupportFlowViewControllerDelegateProxy)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  sub_100002B60(v2);
}

@end