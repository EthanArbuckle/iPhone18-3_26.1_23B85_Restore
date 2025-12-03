@interface SearchHomeUserGuidesDataProvider
- (NSArray)objects;
- (_TtC4Maps32SearchHomeUserGuidesDataProvider)init;
- (_TtC4Maps32SearchHomeUserGuidesDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
- (id)headerAccessibilityIdentifier;
- (void)deleteEntryAtIndex:(unint64_t)index;
- (void)setObjects:(id)objects;
@end

@implementation SearchHomeUserGuidesDataProvider

- (NSArray)objects
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setObjects:(id)objects
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_objects;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC4Maps32SearchHomeUserGuidesDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_objects) = v8;
  *(self + OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_type) = type;
  v13 = (self + OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_identifier);
  *v13 = v9;
  v13[1] = v11;
  v14 = (self + OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_title);
  *v14 = v12;
  v14[1] = v15;
  v17.receiver = self;
  v17.super_class = type metadata accessor for SearchHomeUserGuidesDataProvider();
  return [(SearchHomeUserGuidesDataProvider *)&v17 init];
}

- (id)headerAccessibilityIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC4Maps32SearchHomeUserGuidesDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deleteEntryAtIndex:(unint64_t)index
{
  selfCopy = self;
  sub_100134304(index);
}

@end