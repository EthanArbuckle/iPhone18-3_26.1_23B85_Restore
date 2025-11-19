@interface _EXQueryController
+ (id)executeQueries:(id)a3;
+ (id)executeQuery:(id)a3;
+ (void)executeQueries:(id)a3 completionHandler:(id)a4;
+ (void)executeQuery:(id)a3 completionHandler:(id)a4;
- (NSArray)extensionIdentities;
- (NSArray)extensions;
- (NSArray)queries;
- (NSString)description;
- (_EXQueryController)init;
- (_EXQueryController)initWithQueries:(id)a3;
- (_EXQueryController)initWithQueries:(id)a3 delegate:(id)a4;
- (_EXQueryControllerDelegate)delegate;
- (void)resume;
- (void)suspend;
@end

@implementation _EXQueryController

- (void)resume
{
  v2 = *(self + OBJC_IVAR____EXQueryController_innerController);
  v3 = self;
  QueryController.resume()();
}

- (_EXQueryController)initWithQueries:(id)a3 delegate:(id)a4
{
  type metadata accessor for _EXQuery();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  return _EXQueryController.init(queries:delegate:)(v4);
}

+ (id)executeQuery:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BBBA0;
  *(inited + 32) = a3;
  v5 = a3;
  specialized static QueryController.execute(queries:)(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for _EXExtensionIdentity();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (_EXQueryController)initWithQueries:(id)a3
{
  type metadata accessor for _EXQuery();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return _EXQueryController.init(queries:)(v3);
}

- (NSArray)extensionIdentities
{
  v2 = self;
  _EXQueryController.extensionIdentities.getter();

  type metadata accessor for _EXExtensionIdentity();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (void)executeQuery:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1848BBBA0;
  *(v7 + 32) = a3;
  v8 = a3;
  specialized static QueryController.execute(queries:completion:)(v7, thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()partial apply, v6);
}

+ (id)executeQueries:(id)a3
{
  type metadata accessor for _EXQuery();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static QueryController.execute(queries:)(v3);

  type metadata accessor for _EXExtensionIdentity();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (void)executeQueries:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  type metadata accessor for _EXQuery();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  specialized static QueryController.execute(queries:completion:)(v5, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v6);
}

- (_EXQueryControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)queries
{
  v2 = *(*(self + OBJC_IVAR____EXQueryController_innerController) + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries);
  type metadata accessor for _EXQuery();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)suspend
{
  v2 = *(self + OBJC_IVAR____EXQueryController_innerController);
  v3 = self;
  QueryController.suspend()();
}

- (NSString)description
{
  v2 = [*(self + OBJC_IVAR____EXQueryController_innerController) description];

  return v2;
}

- (NSArray)extensions
{
  v2 = self;
  _EXQueryController.extensions.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_EXQueryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end