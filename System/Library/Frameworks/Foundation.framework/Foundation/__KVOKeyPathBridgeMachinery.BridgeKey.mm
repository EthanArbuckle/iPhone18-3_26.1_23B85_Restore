@interface __KVOKeyPathBridgeMachinery.BridgeKey
- (BOOL)isEqual:(id)equal;
- (_TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey)init;
- (int64_t)hash;
@end

@implementation __KVOKeyPathBridgeMachinery.BridgeKey

- (int64_t)hash
{
  Hasher.init()();
  v3 = type metadata accessor for __KVOKeyPathBridgeMachinery.BridgeKey();
  MEMORY[0x1865CD060](v3);
  selfCopy = self;
  String.hash(into:)();
  v5 = Hasher.finalize()();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = __KVOKeyPathBridgeMachinery.BridgeKey.isEqual(_:)(v8);

  outlined destroy of TermOfAddress?(v8, &_sypSgMd);
  return v6 & 1;
}

- (_TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end