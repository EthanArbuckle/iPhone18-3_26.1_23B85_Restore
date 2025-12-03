@interface LiveVoicemailWelcomeViewController
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithDelegate:(id)delegate;
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton;
- (void)didTapLinkButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation LiveVoicemailWelcomeViewController

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithDelegate:(id)delegate
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = type metadata accessor for LiveVoicemailWelcomeViewController();
  v11.receiver = self;
  v11.super_class = v9;
  selfCopy = self;
  [(LiveVoicemailWelcomeViewController *)&v11 viewDidAppear:appearCopy];
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
  selfCopy = self;
  LiveVoicemailWelcomeViewController.didTapLinkButton()();
}

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return LiveVoicemailWelcomeViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return LiveVoicemailWelcomeViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return LiveVoicemailWelcomeViewController.init(title:detailText:icon:contentLayout:)(v9, v11, text, v13, icon, layout);
}

@end