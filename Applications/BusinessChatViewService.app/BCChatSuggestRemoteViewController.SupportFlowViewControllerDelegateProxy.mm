@interface BCChatSuggestRemoteViewController.SupportFlowViewControllerDelegateProxy
- (_TtCE23BusinessChatViewServiceCSo33BCChatSuggestRemoteViewControllerP33_D33DBE072432EE7147065A24717A63BF38SupportFlowViewControllerDelegateProxy)init;
- (void)supportFlowViewController:(id)controller didFinishWithError:(id)error;
- (void)supportFlowViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)supportFlowViewControllerDidCancel:(id)cancel;
@end

@implementation BCChatSuggestRemoteViewController.SupportFlowViewControllerDelegateProxy

- (void)supportFlowViewController:(id)controller didFinishWithResult:(int64_t)result
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  controller;
  self;
  sub_100002744(controller, result);
  _objc_release(self);
  _objc_release(controller);
}

- (void)supportFlowViewController:(id)controller didFinishWithError:(id)error
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  controller;
  error;
  self;
  sub_100002744(controller, error);

  _objc_release(self);
  _objc_release(controller);
}

- (void)supportFlowViewControllerDidCancel:(id)cancel
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  cancel;
  self;
  sub_1000029F0(cancel);
  _objc_release(self);
  _objc_release(cancel);
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