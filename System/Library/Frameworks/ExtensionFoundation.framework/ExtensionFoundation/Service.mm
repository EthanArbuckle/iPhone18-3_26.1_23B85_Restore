@interface Service
- (_TtC19ExtensionFoundation7Service)init;
- (void)beginExtensionsQuery:(id)query listenerEndpoint:(id)endpoint reply:(id)reply;
- (void)beginObservingWithConfiguration:(id)configuration reply:(id)reply;
- (void)extensionsWith:(id)with reply:(id)reply;
- (void)invalidateLaunchAssertionsForExtensionAuditToken:(id *)token reply:(id)reply;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)photoServiceAuthorizationStatusForExtensionUUID:(id)d completion:(id)completion;
- (void)prepareWithLaunchConfiguration:(id)configuration reply:(id)reply;
@end

@implementation Service

- (void)prepareWithLaunchConfiguration:(id)configuration reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  configurationCopy = configuration;
  selfCopy = self;
  specialized Service.prepare(withLaunchConfiguration:reply:)(configurationCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)invalidateLaunchAssertionsForExtensionAuditToken:(id *)token reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized Service.listener(_:didReceive:withContext:)(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)extensionsWith:(id)with reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  withCopy = with;
  selfCopy = self;
  specialized Service.extensions(with:reply:)(withCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)beginExtensionsQuery:(id)query listenerEndpoint:(id)endpoint reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  queryCopy = query;
  endpointCopy = endpoint;
  selfCopy = self;
  specialized Service.beginExtensionsQuery(_:listenerEndpoint:reply:)(queryCopy, endpointCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)beginObservingWithConfiguration:(id)configuration reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = objc_opt_self();
  configurationCopy = configuration;
  selfCopy = self;
  currentConnection = [v13 currentConnection];
  if (currentConnection)
  {
    v17 = currentConnection;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = configurationCopy;
    v19[5] = selfCopy;
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

- (void)photoServiceAuthorizationStatusForExtensionUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  specialized Service.photoServiceAuthorizationStatus(forExtensionUUID:completion:)(v10, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end