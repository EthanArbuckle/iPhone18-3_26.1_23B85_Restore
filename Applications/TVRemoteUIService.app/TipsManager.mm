@interface TipsManager
+ (_TtC17TVRemoteUIService11TipsManager)shared;
- (_TtC17TVRemoteUIService11TipsManager)init;
- (void)dealloc;
- (void)hideTipWithAnimated:(BOOL)animated completion:(id)completion;
- (void)invalidate;
- (void)presentTip;
- (void)setTipsViewController:(id)controller;
- (void)showTip;
- (void)updatePresentingViewController:(void *)controller;
@end

@implementation TipsManager

- (void)updatePresentingViewController:(void *)controller
{
  v4 = *(self + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_presentingViewController);
  *(self + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_presentingViewController) = controller;
  controllerCopy = controller;
}

- (void)setTipsViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipsViewController);
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipsViewController) = controller;
  controllerCopy = controller;
}

+ (_TtC17TVRemoteUIService11TipsManager)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static TipsManager.shared;

  return v3;
}

- (void)invalidate
{
  selfCopy = self;
  TipsManager.invalidate()();
}

- (void)presentTip
{
  selfCopy = self;
  TipsManager.presentTip()();
}

- (void)showTip
{
  selfCopy = self;
  TipsManager.showTip()();
}

- (void)hideTipWithAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  TipsManager.hideTip(animated:completion:)(animated, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipObservation;
  if (*(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipObservation))
  {
    selfCopy = self;

    Task.cancel()();

    v5 = *(&self->super.isa + v3);
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.isa + v3) = 0;

  v7.receiver = self;
  v7.super_class = type metadata accessor for TipsManager();
  [(TipsManager *)&v7 dealloc];
}

- (_TtC17TVRemoteUIService11TipsManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_presentingViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipsViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipObservation) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tip) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager____lazy_storage___popoverPresentationConductor) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipsManager();
  return [(TipsManager *)&v3 init];
}

@end