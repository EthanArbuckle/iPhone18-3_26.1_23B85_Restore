@interface MTNotificationSettingsViewController
- (_TtC8Podcasts36MTNotificationSettingsViewController)initWithCoder:(id)coder;
- (_TtC8Podcasts36MTNotificationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissButtonTappedFrom:(id)from;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MTNotificationSettingsViewController

- (_TtC8Podcasts36MTNotificationSettingsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8Podcasts36MTNotificationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1003A63FC(v5, v7, bundle);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MTNotificationSettingsViewController();
  v2 = v6.receiver;
  [(MTNotificationSettingsViewController *)&v6 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_sectionedContentViewController];
  v4 = *&v2[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController];
  *&v2[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController] = v3;
  v5 = v3;
  sub_1003A6B64(v4);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MTNotificationSettingsViewController();
  v4 = v5.receiver;
  [(MTNotificationSettingsViewController *)&v5 viewWillAppear:appearCopy];
  sub_1001CF2A0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MTNotificationSettingsViewController();
  v4 = v5.receiver;
  [(MTNotificationSettingsViewController *)&v5 viewDidAppear:appearCopy];
  if (qword_1005727E8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MTNotificationSettingsViewController();
  v4 = v6.receiver;
  [(MTNotificationSettingsViewController *)&v6 viewDidDisappear:disappearCopy];
  if (qword_1005727E8 != -1)
  {
    swift_once();
  }

  v5 = qword_100593468;

  swift_unknownObjectWeakAssign();
}

- (void)dismissButtonTappedFrom:(id)from
{
  if (from)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(MTNotificationSettingsViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_10016B3CC(&v6);
}

@end