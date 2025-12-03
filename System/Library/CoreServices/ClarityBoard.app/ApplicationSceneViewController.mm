@interface ApplicationSceneViewController
- (_TtC12ClarityBoard30ApplicationSceneViewController)initWithCoder:(id)coder;
- (void)dealloc;
- (void)loadView;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ApplicationSceneViewController

- (_TtC12ClarityBoard30ApplicationSceneViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_100056890();
  v3.receiver = selfCopy;
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
  view = [(ApplicationSceneViewController *)&v5 view];
  if (view)
  {
    v4 = view;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setRealSafeAreaInsets:{*&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets], *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 8], *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 16], *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 24]}];

    sub_100055994();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100055C60(appear);
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_100057EFC(settingsCopy);
}

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  selfCopy = self;
  sub_100055DF8(deactivateCopy, context);
}

@end