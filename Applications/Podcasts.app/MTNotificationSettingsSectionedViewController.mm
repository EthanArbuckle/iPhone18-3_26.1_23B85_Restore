@interface MTNotificationSettingsSectionedViewController
- (double)heightForRowWithDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MTNotificationSettingsSectionedViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v2 = v3.receiver;
  [(MTGenericSettingsViewController *)&v3 viewDidLoad];
  sub_1001CF2A0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v4 = v7.receiver;
  [(MTGenericSettingsViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid + 8];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];

    sub_1001CFF48(v6, v5, 0);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001D17DC(appear);
}

- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  v11 = sub_100168088(&qword_100576038);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for IndexPath();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (identifier)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = v17;
  }

  else
  {
    v16 = 0;
  }

  cellCopy = cell;
  descriptionCopy = description;
  selfCopy = self;
  sub_1001D1C5C(cell, v13, description, v16, identifier);

  sub_100009104(v13, &qword_100576038);
}

- (double)heightForRowWithDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  descriptionCopy = description;
  selfCopy = self;
  v11 = sub_1001D2040(description, v6, v8);

  return v11;
}

@end