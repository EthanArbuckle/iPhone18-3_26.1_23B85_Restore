@interface MapsFindMyHandle
- (BOOL)isEqual:(id)equal;
- (CNContact)contact;
- (NSSet)emailAddresses;
- (NSSet)phoneNumbers;
- (NSString)displayName;
- (NSString)identifier;
- (_TtC4Maps16MapsFindMyHandle)init;
- (_TtC4Maps16MapsFindMyHandle)initWithIdentifier:(id)identifier;
- (_TtC4Maps16MapsFindMyHandle)initWithSearchFindMyHandle:(id)handle;
- (id)thumbnailIconWithScale:(double)scale size:(CGSize)size;
@end

@implementation MapsFindMyHandle

- (_TtC4Maps16MapsFindMyHandle)initWithIdentifier:(id)identifier
{
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1004C0804(_swiftEmptyArrayStorage);
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  (*(v5 + 32))(self + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v7, v4);
  MyHandle = type metadata accessor for MapsFindMyHandle();
  v10.receiver = self;
  v10.super_class = MyHandle;
  return [(MapsFindMyHandle *)&v10 init];
}

- (_TtC4Maps16MapsFindMyHandle)initWithSearchFindMyHandle:(id)handle
{
  v5 = OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle;
  v6 = OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle;
  v7 = type metadata accessor for Handle();
  (*(*(v7 - 8) + 16))(self + v6, handle + v5, v7);
  v9.receiver = self;
  v9.super_class = type metadata accessor for MapsFindMyHandle();
  return [(MapsFindMyHandle *)&v9 init];
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

  v6 = sub_100326B08(v8);

  sub_1000DB2F4(v8);
  return v6 & 1;
}

- (NSString)identifier
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v3, v5);
  Handle.identifier.getter();
  (*(v4 + 8))(v7, v3);
  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (NSSet)phoneNumbers
{
  selfCopy = self;
  sub_100326ED4();

  sub_1003283AC();
  sub_1003283F8();
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSSet)emailAddresses
{
  selfCopy = self;
  sub_100327444();

  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)displayName
{
  selfCopy = self;
  sub_10032785C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CNContact)contact
{
  selfCopy = self;
  v3 = sub_100327DCC();

  return v3;
}

- (id)thumbnailIconWithScale:(double)scale size:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v8 = sub_100327FE8(scale, width, height);

  return v8;
}

- (_TtC4Maps16MapsFindMyHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end