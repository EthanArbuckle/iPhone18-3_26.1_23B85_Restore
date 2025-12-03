@interface _EXExtensionInstanceIdentifier
- (BOOL)isDefault;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)identifier;
- (_EXExtensionInstanceIdentifier)init;
- (_EXExtensionInstanceIdentifier)initWithCoder:(id)coder;
- (_EXExtensionInstanceIdentifier)initWithIdentifier:(id)identifier;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXExtensionInstanceIdentifier

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

  v6 = _EXExtensionInstanceIdentifier.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (_EXExtensionInstanceIdentifier)initWithIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  return _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(v7);
}

- (NSString)description
{
  selfCopy = self;
  _StringGuts.grow(_:)(36);

  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v3);

  MEMORY[0x1865F37A0](93, 0xE100000000000000);

  v4 = MEMORY[0x1865F36D0](0xD000000000000021, 0x80000001848C4AD0);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x1865F36D0](0x696669746E656469, 0xEA00000000007265);
  [coderCopy encodeObject:isa forKey:v6];
}

- (_EXExtensionInstanceIdentifier)initWithCoder:(id)coder
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  coderCopy = coder;
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v12 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(self + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v9, v5);
    v13 = type metadata accessor for _EXExtensionInstanceIdentifier();
    v15.receiver = self;
    v15.super_class = v13;
    v14 = [(_EXExtensionInstanceIdentifier *)&v15 init];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_EXExtensionInstanceIdentifier)init
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);
  v9 = [(_EXExtensionInstanceIdentifier *)self initWithIdentifier:isa];

  return v9;
}

- (NSUUID)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (BOOL)isDefault
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v3 = one-time initialization token for _defaultInstanceIdentifier;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = UUID.hashValue.getter();

  return v3;
}

@end