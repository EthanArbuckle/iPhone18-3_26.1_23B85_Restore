@interface TVSetupAlertViewController
- (_TtC16TVSetupUIService26TVSetupAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)consumeSinglePressUpForButtonKind:(int64_t)a3;
- (void)handleButtonActions:(id)a3;
- (void)presentationControllerTransitionDidEnd:(id)a3;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation TVSetupAlertViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100010704;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_100007FCC(a3, v6, v7);
  sub_1000106BC(v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100008758(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100008C70(a3);
}

- (void)presentationControllerTransitionDidEnd:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_10000BBF0();

  (*(v5 + 8))(v9, v4);
}

- (void)handleButtonActions:(id)a3
{
  sub_100002E88(0, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
  sub_1000100C4(&qword_1000260A8, &qword_1000260A0, SBUIRemoteAlertButtonAction_ptr);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10000C23C(v4);
}

- (_TtC16TVSetupUIService26TVSetupAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10000CA14(v5, v7, a4);
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_10000CF28();
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)a3
{
  v3 = self;
  sub_10000F860();
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10000FACC(v8);
}

@end