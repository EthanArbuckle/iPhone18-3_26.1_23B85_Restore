@interface RemoteViewController
- (RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_passwordAccepted;
- (void)_passwordPresented:(id)a3;
- (void)_passwordRequested:(id)a3;
- (void)_setupCancelled:(id)a3;
- (void)_setupComplete;
- (void)_setupFailed;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didInvalidateForRemoteAlert;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation RemoteViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000055E8;
  }

  v7 = a3;
  v8 = self;
  sub_100002D60(a3, v6);
  sub_1000055A0(v6);
}

- (void)didInvalidateForRemoteAlert
{
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100003614(a3);
}

- (void)proxCardFlowWillPresent
{
  v3 = self;
  v2 = sub_100002CA0();
  if (v2)
  {
    [v2 setStatusBarHidden:1 withDuration:0.0];
    swift_unknownObjectRelease();
  }
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_100003B94();
}

- (void)_setupComplete
{
  v2 = self;
  sub_100003F7C();
}

- (void)_setupCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000404C(v4);
}

- (void)_setupFailed
{
  v2 = self;
  sub_100004384();
}

- (void)_passwordRequested:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000043E4(v4);
}

- (void)_passwordPresented:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100004780(v4);
}

- (void)_passwordAccepted
{
  v2 = self;
  sub_100004D2C();
}

- (RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100004E1C(v5, v7, a4);
}

@end