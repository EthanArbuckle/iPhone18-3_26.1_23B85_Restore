@interface _EXQuery
+ (id)allExtensionsQuery;
+ (id)executeQueries:(id)a3;
+ (id)executeQuery:(id)a3;
+ (id)extensionPointIdentifierQuery:(id)a3;
+ (id)extensionPointIdentifierQuery:(id)a3 platform:(unsigned int)a4;
+ (void)executeQueries:(id)a3 completionHandler:(id)a4;
+ (void)executeQuery:(id)a3 completionHandler:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (BOOL)matchesRecord:(id)a3;
- (NSString)extensionPointIdentifier;
- (_EXQuery)initWithCoder:(id)a3;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (unsigned)platform;
- (void)encodeWithCoder:(id)a3;
- (void)setExtensionPointIdentifier:(id)a3;
- (void)setPredicate:(id)a3;
@end

@implementation _EXQuery

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  _EXQuery.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = _EXQuery.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _EXQuery.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

+ (id)extensionPointIdentifierQuery:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized static _EXQuery.makeQuery(extensionPointIdentifier:)(v3, v4);

  return v5;
}

+ (id)extensionPointIdentifierQuery:(id)a3 platform:(unsigned int)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = specialized static _EXQuery.query(extensionPointIdentifier:platform:)(v5, v6, a4);

  return v7;
}

+ (id)allExtensionsQuery
{
  v2 = [objc_allocWithZone(type metadata accessor for _EXQuery()) init];

  return v2;
}

- (void)setPredicate:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXQuery_predicate);
  *(&self->super.isa + OBJC_IVAR____EXQuery_predicate) = a3;
  v3 = a3;
}

- (NSString)extensionPointIdentifier
{
  v3 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(self + v3, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (v8)
  {
    v9 = MEMORY[0x1865F36D0](v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setExtensionPointIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self + OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(v9 + 16);
  v11 = self;
  v10(v4, v6, v8, v9);
  swift_endAccess();
}

- (unsigned)platform
{
  v3 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(self + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LODWORD(v4) = (*(v5 + 40))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _EXQuery.encode(with:)(v4);
}

- (_EXQuery)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized _EXQuery.init(coder:)(v3);

  return v4;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _EXQuery.matches(_:)(v4);

  return self & 1;
}

- (BOOL)matchesRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _EXQuery.matches(record:)(v4);

  return self & 1;
}

+ (id)executeQuery:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BBBA0;
  *(inited + 32) = a3;
  v5 = a3;
  v6 = specialized static QueryController.execute(queries:)(inited);
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  specialized _arrayForceCast<A, B>(_:)(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
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
  v8 = swift_allocObject();
  *(v8 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()partial apply;
  *(v8 + 24) = v6;
  v9 = a3;

  specialized static QueryController.execute(queries:completion:)(v7, partial apply for closure #1 in static _EXQuery.execute(query:completion:), v8);
}

+ (id)executeQueries:(id)a3
{
  type metadata accessor for _EXQuery();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized static QueryController.execute(queries:)(v3);

  specialized _arrayForceCast<A, B>(_:)(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (void)executeQueries:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  type metadata accessor for _EXQuery();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ();
  *(v7 + 24) = v6;

  specialized static QueryController.execute(queries:completion:)(v5, partial apply for closure #1 in static _EXQuery.execute(queries:completion:), v7);
}

@end