@interface PermissionViewController
- (_TtC7Journal24PermissionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PermissionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10069A2DC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PermissionViewController();
  v4 = v5.receiver;
  [(PermissionViewController *)&v5 viewWillAppear:appearCopy];
  sub_10069CE4C();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PermissionViewController();
  v2 = v3.receiver;
  [(PermissionViewController *)&v3 viewWillLayoutSubviews];
  sub_10069CE4C();
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10069A53C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7Journal24PermissionViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10069D120(v5, v7, bundle);
}

@end