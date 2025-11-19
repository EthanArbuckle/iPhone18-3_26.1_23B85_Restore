@interface BoopToMeetFlowViewController
- (BoopToMeetFlowViewController)initWithCoder:(id)a3;
- (BoopToMeetFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BoopToMeetFlowViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006709C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_1000A042C(a3, v6);
  sub_100025EF4(v6, v7);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1000A07D4(v3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000A1074(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000A12BC();
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000A1F20(&qword_1001BBC40, &qword_1001BC220);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1000A1420(v4);
}

- (BoopToMeetFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = 0;
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(BoopToMeetFlowViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (BoopToMeetFlowViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(BoopToMeetFlowViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end