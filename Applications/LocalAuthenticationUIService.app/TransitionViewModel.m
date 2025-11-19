@interface TransitionViewModel
+ (_TtC28LocalAuthenticationUIService19TransitionViewModel)shared;
- (id)childControllerFor:(int64_t)a3 type:(int64_t)a4 allowsLandscape:(BOOL)a5;
- (id)delegates;
- (void)dismissRemoteUIWithIdleEndpoint:(id)a3 wasInvalidated:(BOOL)a4 completionHandler:(id)a5;
- (void)mechanismEvent:(int64_t)a3 reply:(id)a4;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)setDelegates:(id)a3;
- (void)setupConnection;
- (void)suspendConnection;
- (void)transitionToController:(int64_t)a3 internalInfo:(id)a4 completionHandler:(id)a5;
@end

@implementation TransitionViewModel

+ (_TtC28LocalAuthenticationUIService19TransitionViewModel)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static TransitionViewModel.shared;

  return v3;
}

- (id)delegates
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDelegates:(id)a3
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (id)childControllerFor:(int64_t)a3 type:(int64_t)a4 allowsLandscape:(BOOL)a5
{
  v8 = self;
  v9 = TransitionViewModel.childController(for:type:allowsLandscape:)(a3, a4, a5);

  return v9;
}

- (void)setupConnection
{
  v2 = self;
  TransitionViewModel.setupConnection()();
}

- (void)suspendConnection
{
  v2 = self;
  TransitionViewModel.suspendConnection()();
}

- (void)mechanismEvent:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  TransitionViewModel.mechanismEvent(_:reply:)(a3, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  if (!a4)
  {
    memset(v20, 0, sizeof(v20));
    v12 = self;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v9 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
LABEL_6:
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v15 = *(&self->super.isa + v14);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v11);
  v16 = [v15 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v18);
  v19[2] = a3;
  v19[3] = v20;
  v19[4] = v13;
  specialized Sequence.forEach(_:)(closure #1 in TransitionViewModel.mechanismEvent(_:value:reply:)partial apply, v19, v17);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  outlined destroy of LACUIAngelConnectionHandling?(v20, &_sypSgMd, &_sypSgMR);
}

- (void)dismissRemoteUIWithIdleEndpoint:(id)a3 wasInvalidated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  specialized TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:)(a4, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v9);
}

- (void)transitionToController:(int64_t)a3 internalInfo:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  TransitionViewModel.transition(to:internalInfo:completionHandler:)(a3, v8, v7, v9);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

@end