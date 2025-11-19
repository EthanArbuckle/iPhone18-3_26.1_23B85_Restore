@interface TipsManager
+ (_TtC17TVRemoteUIService11TipsManager)shared;
- (_TtC17TVRemoteUIService11TipsManager)init;
- (void)dealloc;
- (void)hideTipWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)invalidate;
- (void)presentTip;
- (void)setTipsViewController:(id)a3;
- (void)showTip;
- (void)updatePresentingViewController:(void *)a3;
@end

@implementation TipsManager

- (void)updatePresentingViewController:(void *)a3
{
  v4 = *(a1 + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_presentingViewController);
  *(a1 + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_presentingViewController) = a3;
  v3 = a3;
}

- (void)setTipsViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipsViewController);
  *(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipsViewController) = a3;
  v3 = a3;
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
  v2 = self;
  TipsManager.invalidate()();
}

- (void)presentTip
{
  v2 = self;
  TipsManager.presentTip()();
}

- (void)showTip
{
  v2 = self;
  TipsManager.showTip()();
}

- (void)hideTipWithAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  TipsManager.hideTip(animated:completion:)(a3, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipObservation;
  if (*(&self->super.isa + OBJC_IVAR____TtC17TVRemoteUIService11TipsManager_tipObservation))
  {
    v4 = self;

    Task.cancel()();

    v5 = *(&self->super.isa + v3);
  }

  else
  {
    v6 = self;
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