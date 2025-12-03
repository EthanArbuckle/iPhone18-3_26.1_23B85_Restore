@interface AppleIDPasskeyRequestProvider
- (_TtC3akd29AppleIDPasskeyRequestProvider)init;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context url:(id)url;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithUrlBagKey:(id)key;
@end

@implementation AppleIDPasskeyRequestProvider

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithUrlBagKey:(id)key
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AKURLRequestProviderImpl *)&v5 initWithUrlBagKey:key];
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AKURLRequestProviderImpl *)&v7 initWithContext:context urlBagKey:key];
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context url:(id)url
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = type metadata accessor for AppleIDPasskeyRequestProvider();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(AKURLRequestProviderImpl *)&v17 initWithContext:context url:v13];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v10, v6);
  return v15;
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AppleIDPasskeyRequestProvider *)&v3 init];
}

@end