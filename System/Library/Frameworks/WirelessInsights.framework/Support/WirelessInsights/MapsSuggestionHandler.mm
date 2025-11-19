@interface MapsSuggestionHandler
- (NSString)uniqueName;
- (_TtC17wirelessinsightsd21MapsSuggestionHandler)init;
- (void)invalidateForMapsSuggestionsManager:(id)a3;
- (void)setUniqueName:(id)a3;
@end

@implementation MapsSuggestionHandler

- (NSString)uniqueName
{
  v2 = (self + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setUniqueName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (void)invalidateForMapsSuggestionsManager:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1000157F0(v3, &qword_1002D79A0, &qword_10024BA18);
}

- (_TtC17wirelessinsightsd21MapsSuggestionHandler)init
{
  v2 = (self + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  *v2 = 0xD000000000000018;
  v2[1] = 0x800000010024B060;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MapsSuggestionHandler();
  return [(MapsSuggestionHandler *)&v4 init];
}

@end