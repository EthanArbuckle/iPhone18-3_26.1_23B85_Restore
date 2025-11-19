@interface LogKey
+ (NSArray)appInstallProperties;
- (BOOL)isEqual:(id)a3;
- (_TtC9appstored6LogKey)init;
- (_TtC9appstored6LogKey)initWithBaseUUID:(id)a3;
- (_TtC9appstored6LogKey)initWithBatchLogKey:(id)a3 logCode:(id)a4 externalID:(id)a5 bundleID:(id)a6 itemID:(id)a7;
- (_TtC9appstored6LogKey)initWithCategory:(id)a3;
- (_TtC9appstored6LogKey)initWithCategory:(id)a3 baseUUID:(id)a4;
- (_TtC9appstored6LogKey)initWithCode:(id)a3;
- (_TtC9appstored6LogKey)initWithCode:(id)a3 base:(id)a4 ID:(id)a5;
- (id)makeActivity;
- (id)prependingCategory:(id)a3;
- (int64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LogKey

- (_TtC9appstored6LogKey)initWithBaseUUID:(id)a3
{
  v4 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_100003E00(v6);
}

- (_TtC9appstored6LogKey)init
{
  swift_getObjectType();
  v2 = sub_100004BAC(0, 0xE000000000000000, "/", 1, 2, 0, 0xE000000000000000, 0, 0, 0);
  swift_deallocPartialClassInstance();
  return v2;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR____TtC9appstored6LogKey_activity))
  {
    v4 = OBJC_IVAR____TtC9appstored6LogKey_activityState;
    swift_beginAccess();
    v5 = self;
    os_activity_scope_leave((self + v4));
    swift_endAccess();
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(LogKey *)&v7 dealloc];
}

- (id)prependingCategory:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC9appstored6LogKey_value);
  v8 = *&self->value[OBJC_IVAR____TtC9appstored6LogKey_value];
  v9 = *(&self->super.isa + OBJC_IVAR____TtC9appstored6LogKey_activity);
  swift_unknownObjectRetain();

  v10 = sub_100006078(v4, v6, "/", 1, 2, 0, 0xE000000000000000, v7, v8, 0, 0, v9);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC9appstored6LogKey)initWithBatchLogKey:(id)a3 logCode:(id)a4 externalID:(id)a5 bundleID:(id)a6 itemID:(id)a7
{
  v12 = sub_100085D40(&unk_10059EED0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  if (a5)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  if (a6)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  swift_getObjectType();
  sub_1000044A4(v17, v15, &unk_10059EED0);
  if (a7)
  {
    v32 = 0;
    v33 = 1;
    v23 = a3;
    v24 = a4;
    v25 = a7;
    static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
    v26 = v32;
    v27 = v33;
  }

  else
  {
    v28 = a3;
    v29 = a4;
    v26 = 0;
    v27 = 1;
  }

  v30 = sub_100118A70(a3, a4, v15, v20, v22, v26, v27);

  sub_100005518(v17, &unk_10059EED0);
  swift_deallocPartialClassInstance();
  return v30;
}

+ (NSArray)appInstallProperties
{
  sub_1001197D8();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)makeActivity
{
  v2 = self;
  sub_1000052DC();

  return v2;
}

- (int64_t)hash
{
  v2 = self;
  v3 = String.hashValue.getter();

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

  v6 = sub_1001BE7A4(v8);

  sub_100005518(v8, &unk_10059CC50);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001BEA60(v4);
}

- (_TtC9appstored6LogKey)initWithCode:(id)a3 base:(id)a4 ID:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a5)
  {
LABEL_4:
    a5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  swift_getObjectType();
  if (v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (v11)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  if (v11)
  {
    v15 = v11;
  }

  v18 = sub_100006078(0, 0xE000000000000000, "/", 1, 2, v14, v16, v17, v15, a5, v13, 0);
  swift_deallocPartialClassInstance();
  return v18;
}

- (_TtC9appstored6LogKey)initWithCategory:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  swift_getObjectType();
  v6 = sub_100004BAC(v3, v5, "/", 1, 2, 0, 0xE000000000000000, 0, 0, 0);
  swift_deallocPartialClassInstance();
  return v6;
}

- (_TtC9appstored6LogKey)initWithCode:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  swift_getObjectType();
  v6 = sub_100004BAC(0, 0xE000000000000000, "/", 1, 2, v3, v5, 0, 0, 0);
  swift_deallocPartialClassInstance();
  return v6;
}

- (_TtC9appstored6LogKey)initWithCategory:(id)a3 baseUUID:(id)a4
{
  v6 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (!a3)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    return sub_1001BFEF8(a3, v10, v8);
  }

  a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  return sub_1001BFEF8(a3, v10, v8);
}

@end