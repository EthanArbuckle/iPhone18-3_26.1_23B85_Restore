@interface LogKey
+ (NSArray)appInstallProperties;
- (BOOL)isEqual:(id)equal;
- (_TtC9appstored6LogKey)init;
- (_TtC9appstored6LogKey)initWithBaseUUID:(id)d;
- (_TtC9appstored6LogKey)initWithBatchLogKey:(id)key logCode:(id)code externalID:(id)d bundleID:(id)iD itemID:(id)itemID;
- (_TtC9appstored6LogKey)initWithCategory:(id)category;
- (_TtC9appstored6LogKey)initWithCategory:(id)category baseUUID:(id)d;
- (_TtC9appstored6LogKey)initWithCode:(id)code;
- (_TtC9appstored6LogKey)initWithCode:(id)code base:(id)base ID:(id)d;
- (id)makeActivity;
- (id)prependingCategory:(id)category;
- (int64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LogKey

- (_TtC9appstored6LogKey)initWithBaseUUID:(id)d
{
  v4 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (d)
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
    selfCopy = self;
    os_activity_scope_leave((self + v4));
    swift_endAccess();
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(LogKey *)&v7 dealloc];
}

- (id)prependingCategory:(id)category
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

- (_TtC9appstored6LogKey)initWithBatchLogKey:(id)key logCode:(id)code externalID:(id)d bundleID:(id)iD itemID:(id)itemID
{
  v12 = sub_100085D40(&unk_10059EED0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  if (d)
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

  if (iD)
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
  if (itemID)
  {
    v32 = 0;
    v33 = 1;
    keyCopy = key;
    codeCopy = code;
    itemIDCopy = itemID;
    static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
    v26 = v32;
    v27 = v33;
  }

  else
  {
    keyCopy2 = key;
    codeCopy2 = code;
    v26 = 0;
    v27 = 1;
  }

  v30 = sub_100118A70(key, code, v15, v20, v22, v26, v27);

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
  selfCopy = self;
  sub_1000052DC();

  return selfCopy;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = String.hashValue.getter();

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

  v6 = sub_1001BE7A4(v8);

  sub_100005518(v8, &unk_10059CC50);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1001BEA60(coderCopy);
}

- (_TtC9appstored6LogKey)initWithCode:(id)code base:(id)base ID:(id)d
{
  baseCopy = base;
  if (code)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (baseCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (d)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v9 = 0;
  if (!base)
  {
    goto LABEL_6;
  }

LABEL_3:
  baseCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (d)
  {
LABEL_4:
    d = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v17 = baseCopy;
  }

  else
  {
    v17 = 0;
  }

  if (v11)
  {
    v15 = v11;
  }

  v18 = sub_100006078(0, 0xE000000000000000, "/", 1, 2, v14, v16, v17, v15, d, v13, 0);
  swift_deallocPartialClassInstance();
  return v18;
}

- (_TtC9appstored6LogKey)initWithCategory:(id)category
{
  if (category)
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

- (_TtC9appstored6LogKey)initWithCode:(id)code
{
  if (code)
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

- (_TtC9appstored6LogKey)initWithCategory:(id)category baseUUID:(id)d
{
  v6 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (!category)
  {
    v10 = 0;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    return sub_1001BFEF8(category, v10, v8);
  }

  category = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (!d)
  {
    goto LABEL_5;
  }

LABEL_3:
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  return sub_1001BFEF8(category, v10, v8);
}

@end