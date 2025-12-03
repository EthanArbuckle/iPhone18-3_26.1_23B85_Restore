@interface OwnsCheckTaskRequestEncoder
- (_TtC9appstoredP33_C1A1EAB8D4C3C08BC779EC4E688AD58A27OwnsCheckTaskRequestEncoder)initWithBag:(id)bag;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation OwnsCheckTaskRequestEncoder

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  if (parameters)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
  }

  v12 = sub_1001541D0(v9, v14);

  sub_100005518(v14, &unk_10059CC50);
  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC9appstoredP33_C1A1EAB8D4C3C08BC779EC4E688AD58A27OwnsCheckTaskRequestEncoder)initWithBag:(id)bag
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(OwnsCheckTaskRequestEncoder *)&v5 initWithBag:bag];
}

@end