@interface LiveVoicemailWelcomeViewController
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithDelegate:(id)a3;
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)didTapLinkButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation LiveVoicemailWelcomeViewController

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithDelegate:(id)a3
{
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();

  return specialized LiveVoicemailWelcomeViewController.init(delegate:)(v4, self);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LiveVoicemailWelcomeViewController();
  v2 = v3.receiver;
  [(LiveVoicemailWelcomeViewController *)&v3 viewDidLoad];
  LiveVoicemailWelcomeViewController.configureViewHierarchy()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = type metadata accessor for LiveVoicemailWelcomeViewController();
  v11.receiver = self;
  v11.super_class = v9;
  v10 = self;
  [(LiveVoicemailWelcomeViewController *)&v11 viewDidAppear:v3];
  static LiveVoicemailTip.onboardingViewedEvent.getter();
  Tips.Event.sendDonation<>(_:)();
  (*(v6 + 8))(v8, v5);
  specialized Defaults.showLiveVoicemailOnboarding.setter(0);
}

- (void)didTapContinueButton
{
  v3 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_delegate];
  if (v3)
  {
    [v3 didTapContinueWithViewController:self];
  }
}

- (void)didTapLinkButton
{
  v2 = self;
  LiveVoicemailWelcomeViewController.didTapLinkButton()();
}

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return LiveVoicemailWelcomeViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return LiveVoicemailWelcomeViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return LiveVoicemailWelcomeViewController.init(title:detailText:icon:contentLayout:)(v9, v11, a4, v13, a5, a6);
}

@end