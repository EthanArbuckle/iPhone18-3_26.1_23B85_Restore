@interface ApplicationSceneViewController
- (_TtC12ClarityBoard30ApplicationSceneViewController)initWithCoder:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ApplicationSceneViewController

- (_TtC12ClarityBoard30ApplicationSceneViewController)initWithCoder:(id)a3
{
  *&self->super.listLayoutObserver[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = self;
  sub_100056890();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ApplicationSceneViewController();
  [(ApplicationSceneViewController *)&v3 dealloc];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ApplicationSceneViewController();
  v2 = v6.receiver;
  [(SceneViewControllerBase *)&v6 loadView];
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SceneViewControllerBase();
  v3 = [(ApplicationSceneViewController *)&v5 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setRealSafeAreaInsets:{*&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets], *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 8], *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 16], *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 24]}];

    sub_100055994();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100055C60(a3);
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100057EFC(v7);
}

- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100055DF8(v6, a4);
}

@end