@interface MPMessageID
- (BOOL)isEqual:(id)a3;
- (MPMessageID)init;
- (MPMessageID)initWithUuid:(id)a3;
- (MPMessageID)initWithValue:(unint64_t)a3;
- (NSUUID)messageUUID;
- (int64_t)hash;
@end

@implementation MPMessageID

- (NSUUID)messageUUID
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030744(&qword_1000C4F48);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  sub_100042D2C(self + OBJC_IVAR___MPMessageID_value, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = sub_10007AE28();
  v13 = *(v12 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v12 - 8) + 32))(v10, v6, v12);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v13 + 56))(v10, v14, 1, v12);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    v15 = 0;
  }

  else
  {
    isa = sub_10007ADD8().super.isa;
    (*(v13 + 8))(v10, v12);
    v15 = isa;
  }

  return v15;
}

- (MPMessageID)initWithValue:(unint64_t)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MPMessageID_value) = a3;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MPMessageID *)&v7 init];
}

- (MPMessageID)initWithUuid:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = sub_10007AE28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  (*(v6 + 16))(self + OBJC_IVAR___MPMessageID_value, v9, v5);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MPMessageID *)&v12 init];
  (*(v6 + 8))(v9, v5);
  return v10;
}

- (MPMessageID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_10005AD84();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_10007B798();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10005BA4C(v8);

  sub_1000316B8(v8, &qword_1000C5B58);
  return v6 & 1;
}

@end