@interface StaticImageViewController
- (_TtC17SequoiaTranslator25StaticImageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)applicationWillSuspend;
- (void)handleKeyboardDidShowWithKeyboardShowNotification:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v2 selector:"handleKeyboardDidShowWithKeyboardShowNotification:" name:UIKeyboardDidShowNotification object:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StaticImageViewController();
  v2 = v3.receiver;
  [(StaticImageViewController *)&v3 viewDidLayoutSubviews];
  sub_10024D4C0();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_100256784(v5);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10024CEA0(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)applicationWillSuspend
{
  v2 = self;
  sub_10024D214();
}

- (void)handleKeyboardDidShowWithKeyboardShowNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100252714();

  (*(v5 + 8))(v7, v4);
}

- (_TtC17SequoiaTranslator25StaticImageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidZoom:(id)a3
{
  v3 = self;
  sub_10024D4C0();
}

@end