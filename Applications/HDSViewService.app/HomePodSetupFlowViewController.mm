@interface HomePodSetupFlowViewController
- (_TtC14HDSViewService30HomePodSetupFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)consumeSinglePressUpForButtonKind:(int64_t)kind;
- (void)handleButtonActions:(id)actions;
- (void)presentationControllerTransitionDidEnd:(id)end;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupFlowViewController

- (_TtC14HDSViewService30HomePodSetupFlowViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1000759D8(v5, v7, bundle);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100077B74;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100075B48(contextCopy, v6);
  sub_1000616F4(v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000761C8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000762F4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100076554(disappear);
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

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
    sub_100077AEC(&qword_100103DB8, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_100076818(v4);
}

- (void)presentationControllerTransitionDidEnd:(id)end
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000754B8();

  (*(v5 + 8))(v8, v4);
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  interactionCopy = interaction;
  actionCopy = action;
  selfCopy = self;
  sub_100077524(actionCopy);
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)kind
{
  selfCopy = self;
  sub_1000777D8();
}

@end