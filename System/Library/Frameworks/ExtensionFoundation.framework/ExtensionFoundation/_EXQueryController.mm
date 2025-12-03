@interface _EXQueryController
+ (id)executeQueries:(id)queries;
+ (id)executeQuery:(id)query;
+ (void)executeQueries:(id)queries completionHandler:(id)handler;
+ (void)executeQuery:(id)query completionHandler:(id)handler;
- (NSArray)extensionIdentities;
- (NSArray)extensions;
- (NSArray)queries;
- (NSString)description;
- (_EXQueryController)init;
- (_EXQueryController)initWithQueries:(id)queries;
- (_EXQueryController)initWithQueries:(id)queries delegate:(id)delegate;
- (_EXQueryControllerDelegate)delegate;
- (void)resume;
- (void)suspend;
@end

@implementation _EXQueryController

- (void)resume
{
  v2 = *(self + OBJC_IVAR____EXQueryController_innerController);
  selfCopy = self;
  QueryController.resume()();
}

- (_EXQueryController)initWithQueries:(id)queries delegate:(id)delegate
{
  type metadata accessor for _EXQuery();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  return _EXQueryController.init(queries:delegate:)(v4);
}

+ (id)executeQuery:(id)query
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BBBA0;
  *(inited + 32) = query;
  queryCopy = query;
  specialized static QueryController.execute(queries:)(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for _EXExtensionIdentity();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (_EXQueryController)initWithQueries:(id)queries
{
  type metadata accessor for _EXQuery();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return _EXQueryController.init(queries:)(v3);
}

- (NSArray)extensionIdentities
{
  selfCopy = self;
  _EXQueryController.extensionIdentities.getter();

  type metadata accessor for _EXExtensionIdentity();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (void)executeQuery:(id)query completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1848BBBA0;
  *(v7 + 32) = query;
  queryCopy = query;
  specialized static QueryController.execute(queries:completion:)(v7, thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()partial apply, v6);
}

+ (id)executeQueries:(id)queries
{
  type metadata accessor for _EXQuery();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static QueryController.execute(queries:)(v3);

  type metadata accessor for _EXExtensionIdentity();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (void)executeQueries:(id)queries completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  QueryController.suspend()();
}

- (NSString)description
{
  v2 = [*(self + OBJC_IVAR____EXQueryController_innerController) description];

  return v2;
}

- (NSArray)extensions
{
  selfCopy = self;
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