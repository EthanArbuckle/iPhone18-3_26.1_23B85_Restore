@interface _EXNSExtensionContextShim
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (NSArray)inputItems;
- (NSExtensionRequestHandling)principalObject;
- (_EXNSExtensionContextShim)init;
- (_EXNSExtensionContextShim)initWithInputItems:(id)a3;
- (_EXNSExtensionContextShim)initWithInputItems:(id)a3 contextUUID:(id)a4;
- (_EXNSExtensionContextShim)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (void)cancelRequestWithError:(id)a3;
- (void)completeRequestReturningItems:(id)a3 completionHandler:(id)a4;
- (void)performRequestWithInputItems:(id)a3 response:(id)a4;
- (void)setPrincipalObject:(id)a3;
@end

@implementation _EXNSExtensionContextShim

- (NSExtensionRequestHandling)principalObject
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim_principalObject);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setPrincipalObject:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim_principalObject);
  *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim_principalObject) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSArray)inputItems
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim__inputItems);
  v3 = self;

  specialized _arrayForceCast<A, B>(_:)(v4);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_EXNSExtensionContextShim)init
{
  *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim__inputItems) = MEMORY[0x1E69E7CC0];
  v3 = (&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim_response);
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectUnownedInit();
  *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim_principalObject) = 0;
  v5.receiver = self;
  v5.super_class = _EXNSExtensionContextShim;
  return [(_EXNSExtensionContextShim *)&v5 init];
}

- (_EXNSExtensionContextShim)initWithInputItems:(id)a3
{
  if (a3)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return _EXNSExtensionContextShim.init(inputItems:)(v3);
}

- (_EXNSExtensionContextShim)initWithInputItems:(id)a3 contextUUID:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  return _EXNSExtensionContextShim.init(inputItems:contextUUID:)(a3, v9);
}

- (_EXNSExtensionContextShim)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a4;
  return _EXNSExtensionContextShim.init(inputItems:listenerEndpoint:contextUUID:)(a3, a4, v11);
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized static NSXPCInterface.defaultImplementationXPCInterface.getter();
  [v4 setExportedInterface_];

  [v4 setExportedObject_];
  swift_unknownObjectUnownedAssign();
  [v4 resume];

  return 1;
}

- (void)completeRequestReturningItems:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  _EXNSExtensionContextShim.completeRequest(returningItems:completionHandler:)(a3, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (void)cancelRequestWithError:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____EXNSExtensionContextShim_response);
  if (v3)
  {
    v5 = *(&self->super.__dummyExtension + OBJC_IVAR____EXNSExtensionContextShim_response);
    v6 = a3;
    v7 = self;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v3);
    v8 = _convertErrorToNSError(_:)();
    v3(0, v8);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }
}

- (void)performRequestWithInputItems:(id)a3 response:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  _EXNSExtensionContextShim.performRequest(with:response:)(v6, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> (), v7);
}

@end