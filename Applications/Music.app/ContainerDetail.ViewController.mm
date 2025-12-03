@interface ContainerDetail.ViewController
- (_TtCV5Music15ContainerDetail14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ContainerDetail.ViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10069D888();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10069E30C(appear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10069E54C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10069E8B4(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  v4 = v8.receiver;
  [(ContainerDetail.ViewController *)&v8 viewDidDisappear:disappearCopy];
  v5 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 200))(ObjectType, v6))
  {
    dispatch thunk of RelatedContentProvider.onDisappear()();
  }
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10069F2A8();

  (*(v5 + 8))(v7, v4);
}

- (_TtCV5Music15ContainerDetail14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end