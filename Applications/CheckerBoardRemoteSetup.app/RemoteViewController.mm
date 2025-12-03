@interface RemoteViewController
- (RemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_passwordAccepted;
- (void)_passwordPresented:(id)presented;
- (void)_passwordRequested:(id)requested;
- (void)_setupCancelled:(id)cancelled;
- (void)_setupComplete;
- (void)_setupFailed;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RemoteViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000055E8;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100002D60(context, v6);
  sub_1000055A0(v6);
}

- (void)didInvalidateForRemoteAlert
{
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100003614(appear);
}

- (void)proxCardFlowWillPresent
{
  selfCopy = self;
  v2 = sub_100002CA0();
  if (v2)
  {
    [v2 setStatusBarHidden:1 withDuration:0.0];
    swift_unknownObjectRelease();
  }
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_100003B94();
}

- (void)_setupComplete
{
  selfCopy = self;
  sub_100003F7C();
}

- (void)_setupCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_10000404C(cancelledCopy);
}

- (void)_setupFailed
{
  selfCopy = self;
  sub_100004384();
}

- (void)_passwordRequested:(id)requested
{
  requestedCopy = requested;
  selfCopy = self;
  sub_1000043E4(requestedCopy);
}

- (void)_passwordPresented:(id)presented
{
  presentedCopy = presented;
  selfCopy = self;
  sub_100004780(presentedCopy);
}

- (void)_passwordAccepted
{
  selfCopy = self;
  sub_100004D2C();
}

- (RemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100004E1C(v5, v7, bundle);
}

@end