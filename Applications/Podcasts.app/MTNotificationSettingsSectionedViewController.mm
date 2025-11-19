@interface MTNotificationSettingsSectionedViewController
- (double)heightForRowWithDescription:(id)a3 inGroupWithIdentifier:(id)a4;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v4 = v7.receiver;
  [(MTGenericSettingsViewController *)&v7 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid + 8];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];

    sub_1001CFF48(v6, v5, 0);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001D17DC(a3);
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6
{
  v11 = sub_100168088(&qword_100576038);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  if (a4)
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

  if (a6)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a3;
  v19 = a5;
  v20 = self;
  sub_1001D1C5C(a3, v13, a5, v16, a6);

  sub_100009104(v13, &qword_100576038);
}

- (double)heightForRowWithDescription:(id)a3 inGroupWithIdentifier:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11 = sub_1001D2040(a3, v6, v8);

  return v11;
}

@end