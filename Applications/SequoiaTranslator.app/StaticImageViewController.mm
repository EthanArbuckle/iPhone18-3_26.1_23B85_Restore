@interface StaticImageViewController
- (_TtC17SequoiaTranslator25StaticImageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)applicationWillSuspend;
- (void)handleKeyboardDidShowWithKeyboardShowNotification:(id)notification;
- (void)scrollViewDidZoom:(id)zoom;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation StaticImageViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StaticImageViewController();
  v2 = v4.receiver;
  [(StaticImageViewController *)&v4 viewDidLoad];
  sub_10024D64C();
  sub_10024DD94();
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter addObserver:v2 selector:"handleKeyboardDidShowWithKeyboardShowNotification:" name:UIKeyboardDidShowNotification object:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StaticImageViewController();
  v2 = v3.receiver;
  [(StaticImageViewController *)&v3 viewDidLayoutSubviews];
  sub_10024D4C0();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100256784(collectionCopy);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10024CEA0(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)applicationWillSuspend
{
  selfCopy = self;
  sub_10024D214();
}

- (void)handleKeyboardDidShowWithKeyboardShowNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100252714();

  (*(v5 + 8))(v7, v4);
}

- (_TtC17SequoiaTranslator25StaticImageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidZoom:(id)zoom
{
  selfCopy = self;
  sub_10024D4C0();
}

@end