@interface AuthorizationRemoteViewController
- (AuthorizationRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)stopWithReply:(id)a3;
- (void)viewModel:(id)a3 didReceiveCustomPassword:(id)a4 handler:(id)a5;
@end

@implementation AuthorizationRemoteViewController

- (AuthorizationRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100043530(v5, v7, a4);
}

- (void)stopWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100044B60(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)viewModel:(id)a3 didReceiveCustomPassword:(id)a4 handler:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(&self->super.super.super.isa + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  v11 = self;
  if (v10)
  {
    v12 = v10;
    sub_100045B50(v6, v8, v12);
  }

  sub_1000442F0(sub_10003072C, v9);
}

@end