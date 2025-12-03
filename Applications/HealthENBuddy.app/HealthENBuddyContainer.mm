@interface HealthENBuddyContainer
- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithCoder:(id)coder;
- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HealthENBuddyContainer

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for HealthENBuddyContainer();
  v2 = v6.receiver;
  [(HealthENBuddyContainer *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:clearColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100001A6C(appear);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100005750;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000037EC(context, v6, v7);
  sub_100005220(v6);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100005268;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100004D68(v6, v7);
  sub_100005220(v6);
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  if (actions)
  {
    sub_100005534(0, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
    sub_1000051B0();
    actionsCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_100004FB8(actionsCopy);
}

- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = 0;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = 0;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HealthENBuddyContainer();
  v9 = [(HealthENBuddyContainer *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithCoder:(id)coder
{
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = 0;
  self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HealthENBuddyContainer();
  coderCopy = coder;
  v5 = [(HealthENBuddyContainer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end