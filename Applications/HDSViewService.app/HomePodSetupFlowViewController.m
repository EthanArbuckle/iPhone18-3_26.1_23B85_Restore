@interface HomePodSetupFlowViewController
- (_TtC14HDSViewService30HomePodSetupFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)consumeSinglePressUpForButtonKind:(int64_t)a3;
- (void)handleButtonActions:(id)a3;
- (void)presentationControllerTransitionDidEnd:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HomePodSetupFlowViewController

- (_TtC14HDSViewService30HomePodSetupFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000759D8(v5, v7, a4);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100077B74;
  }

  v7 = a3;
  v8 = self;
  sub_100075B48(v7, v6);
  sub_1000616F4(v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000761C8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000762F4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100076554(a3);
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BaseProxFlowViewController *)&v4 _willAppearInRemoteViewController];
  v3 = sub_10009CC3C();
  if (v3)
  {
    [v3 setAllowsAlertItems:{1, v4.receiver, v4.super_class}];
    swift_unknownObjectRelease();
  }
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
    sub_100077AEC(&qword_100103DB8, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_100076818(v4);
}

- (void)presentationControllerTransitionDidEnd:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000754B8();

  (*(v5 + 8))(v8, v4);
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100077524(v8);
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)a3
{
  v3 = self;
  sub_1000777D8();
}

@end