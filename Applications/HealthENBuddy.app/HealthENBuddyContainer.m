@interface HealthENBuddyContainer
- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithCoder:(id)a3;
- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HealthENBuddyContainer

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for HealthENBuddyContainer();
  v2 = v6.receiver;
  [(HealthENBuddyContainer *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100001A6C(a3);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_1000037EC(a3, v6, v7);
  sub_100005220(v6);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_100004D68(v6, v7);
  sub_100005220(v6);
}

- (void)handleButtonActions:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_100005534(0, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
    sub_1000051B0();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = self;
  sub_100004FB8(v3);
}

- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = 0;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = 0;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HealthENBuddyContainer();
  v9 = [(HealthENBuddyContainer *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC13HealthENBuddy22HealthENBuddyContainer)initWithCoder:(id)a3
{
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = 0;
  self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HealthENBuddyContainer();
  v4 = a3;
  v5 = [(HealthENBuddyContainer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end