@interface BoopToMeetFlowViewController
- (BoopToMeetFlowViewController)initWithCoder:(id)coder;
- (BoopToMeetFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation BoopToMeetFlowViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_1000A042C(context, v6);
  sub_100025EF4(v6, v7);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1000A07D4(appearCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000A1074(disappear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000A12BC();
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000A1F20(&qword_1001BBC40, &qword_1001BC220);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1000A1420(v4);
}

- (BoopToMeetFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = 0;
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(BoopToMeetFlowViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (BoopToMeetFlowViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR___BoopToMeetFlowViewController_replyAction] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(BoopToMeetFlowViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end