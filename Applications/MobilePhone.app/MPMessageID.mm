@interface MPMessageID
- (BOOL)isEqual:(id)equal;
- (MPMessageID)init;
- (MPMessageID)initWithUuid:(id)uuid;
- (MPMessageID)initWithValue:(unint64_t)value;
- (NSUUID)messageUUID;
- (int64_t)hash;
@end

@implementation MPMessageID

- (NSUUID)messageUUID
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  outlined init with copy of MessageID.Value(self + OBJC_IVAR___MPMessageID_value, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v10 - 8) + 32))(v8, v5, v10);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  (*(v11 + 56))(v8, v12, 1, v10);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    v13 = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

- (MPMessageID)initWithValue:(unint64_t)value
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MPMessageID_value) = value;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MPMessageID *)&v7 init];
}

- (MPMessageID)initWithUuid:(id)uuid
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(self + OBJC_IVAR___MPMessageID_value, v8, v5);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(MPMessageID *)&v11 init];
  (*(v6 + 8))(v8, v5);
  return v9;
}

- (MPMessageID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = MessageID.Value.hashValue.getter();

  return v3;
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

  v6 = MessageID.isEqual(_:)(v8);

  outlined destroy of (NSAttributedStringKey, Any)(v8, &_sypSgMd);
  return v6 & 1;
}

@end