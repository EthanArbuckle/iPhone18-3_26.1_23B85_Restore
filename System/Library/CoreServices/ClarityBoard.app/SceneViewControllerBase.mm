@interface SceneViewControllerBase
- (_TtC12ClarityBoard23SceneViewControllerBase)initWithCoder:(id)a3;
- (_TtC12ClarityBoard23SceneViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)sceneContentStateDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SceneViewControllerBase

- (_TtC12ClarityBoard23SceneViewControllerBase)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_listLayoutObserver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1000A609C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared) = 1;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneViewControllerBase();
  v4 = v6.receiver;
  v5 = [(SceneViewControllerBase *)&v6 viewWillAppear:v3];
  (*((swift_isaMask & *v4) + 0xC0))(v5);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneViewControllerBase();
  v4 = v6.receiver;
  v5 = [(SceneViewControllerBase *)&v6 viewDidDisappear:v3];
  (*((swift_isaMask & *v4) + 0xC8))(v5);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000A6350(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = objc_opt_self();
  v8[4] = sub_1000A6E14;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000357AC;
  v8[3] = &unk_100301CB0;
  v6 = _Block_copy(v8);
  v7 = self;

  [v5 animateWithDuration:v6 animations:0.25];

  _Block_release(v6);
}

- (_TtC12ClarityBoard23SceneViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end