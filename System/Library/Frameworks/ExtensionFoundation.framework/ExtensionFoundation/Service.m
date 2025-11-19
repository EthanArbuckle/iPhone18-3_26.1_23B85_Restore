@interface Service
- (_TtC19ExtensionFoundation7Service)init;
- (void)beginExtensionsQuery:(id)a3 listenerEndpoint:(id)a4 reply:(id)a5;
- (void)beginObservingWithConfiguration:(id)a3 reply:(id)a4;
- (void)extensionsWith:(id)a3 reply:(id)a4;
- (void)invalidateLaunchAssertionsForExtensionAuditToken:(id *)a3 reply:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)photoServiceAuthorizationStatusForExtensionUUID:(id)a3 completion:(id)a4;
- (void)prepareWithLaunchConfiguration:(id)a3 reply:(id)a4;
@end

@implementation Service

- (void)prepareWithLaunchConfiguration:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized Service.prepare(withLaunchConfiguration:reply:)(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)invalidateLaunchAssertionsForExtensionAuditToken:(id *)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  specialized Service.invalidateLaunchAssertions(forExtensionAuditToken:reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v6);
}

- (_TtC19ExtensionFoundation7Service)init
{
  v3 = OBJC_IVAR____TtC19ExtensionFoundation7Service_discoveryController;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for _EXDiscoveryController()) init];
  *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation7Service_activeObservers) = MEMORY[0x1E69E7CC8];
  v4 = OBJC_IVAR____TtC19ExtensionFoundation7Service_sigtermSource;
  *(&self->super.isa + v4) = closure #1 in variable initialization expression of Service.sigtermSource();
  v6.receiver = self;
  v6.super_class = type metadata accessor for Service();
  return [(Service *)&v6 init];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized Service.listener(_:didReceive:withContext:)(v8);

  swift_unknownObjectRelease();
}

- (void)extensionsWith:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized Service.extensions(with:reply:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)beginExtensionsQuery:(id)a3 listenerEndpoint:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  specialized Service.beginExtensionsQuery(_:listenerEndpoint:reply:)(v9, v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)beginObservingWithConfiguration:(id)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = objc_opt_self();
  v14 = a3;
  v15 = self;
  v16 = [v13 currentConnection];
  if (v16)
  {
    v17 = v16;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v14;
    v19[5] = v15;
    v19[6] = v17;
    v19[7] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Service.ObserverUpdate?, @unowned NSError?) -> ();
    v19[8] = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in Service.beginObserving(configuration:reply:), v19);
  }

  else
  {
    __break(1u);
  }
}

- (void)photoServiceAuthorizationStatusForExtensionUUID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  specialized Service.photoServiceAuthorizationStatus(forExtensionUUID:completion:)(v10, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end