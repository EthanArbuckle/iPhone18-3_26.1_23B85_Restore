@interface SceneViewControllerBase
- (_TtC12ClarityBoard23SceneViewControllerBase)initWithCoder:(id)coder;
- (_TtC12ClarityBoard23SceneViewControllerBase)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)sceneContentStateDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SceneViewControllerBase

- (_TtC12ClarityBoard23SceneViewControllerBase)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1000A609C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared) = 1;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneViewControllerBase();
  v4 = v6.receiver;
  v5 = [(SceneViewControllerBase *)&v6 viewWillAppear:appearCopy];
  (*((swift_isaMask & *v4) + 0xC0))(v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneViewControllerBase();
  v4 = v6.receiver;
  v5 = [(SceneViewControllerBase *)&v6 viewDidDisappear:disappearCopy];
  (*((swift_isaMask & *v4) + 0xC8))(v5);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000A6350(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)sceneContentStateDidChange:(id)change
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
  selfCopy = self;

  [v5 animateWithDuration:v6 animations:0.25];

  _Block_release(v6);
}

- (_TtC12ClarityBoard23SceneViewControllerBase)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end