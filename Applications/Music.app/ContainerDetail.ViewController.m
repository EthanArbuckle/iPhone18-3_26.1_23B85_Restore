@interface ContainerDetail.ViewController
- (_TtCV5Music15ContainerDetail14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ContainerDetail.ViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10069D888();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10069E30C(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10069E54C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10069E8B4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  v4 = v8.receiver;
  [(ContainerDetail.ViewController *)&v8 viewDidDisappear:v3];
  v5 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 200))(ObjectType, v6))
  {
    dispatch thunk of RelatedContentProvider.onDisappear()();
  }
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10069F2A8();

  (*(v5 + 8))(v7, v4);
}

- (_TtCV5Music15ContainerDetail14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end