@interface ClassKitContextBuilder
- (_TtC8Podcasts22ClassKitContextBuilder)init;
- (id)createContextForIdentifier:(id)identifier parentContext:(id)context parentIdentifierPath:(id)path;
@end

@implementation ClassKitContextBuilder

- (_TtC8Podcasts22ClassKitContextBuilder)init
{
  v2 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3 = objc_allocWithZone(type metadata accessor for ClassKitContextBuilder());
  v4 = sub_10035A9EC(v2);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (id)createContextForIdentifier:(id)identifier parentContext:(id)context parentIdentifierPath:(id)path
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  contextCopy = context;
  selfCopy = self;
  v13 = sub_10035AC04(v7, v9, v10);

  return v13;
}

@end