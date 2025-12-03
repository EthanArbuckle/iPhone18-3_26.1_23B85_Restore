@interface SiriUISuggestion
- (NSString)spokenText;
- (NSUUID)suggestionId;
- (_TtC4Siri16SiriUISuggestion)init;
- (void)setAddViews:(id)views;
- (void)setSpokenText:(id)text;
- (void)setSuggestionId:(id)id;
- (void)siriDidSpeakHint;
@end

@implementation SiriUISuggestion

- (NSString)spokenText
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSpokenText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC4Siri16SiriUISuggestion_spokenText);
  *v5 = v4;
  v5[1] = v6;
}

- (NSUUID)suggestionId
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC4Siri16SiriUISuggestion_suggestionId;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setSuggestionId:(id)id
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC4Siri16SiriUISuggestion_suggestionId;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (void)setAddViews:(id)views
{
  v4 = *(self + OBJC_IVAR____TtC4Siri16SiriUISuggestion_addViews);
  *(self + OBJC_IVAR____TtC4Siri16SiriUISuggestion_addViews) = views;
  viewsCopy = views;
}

- (void)siriDidSpeakHint
{
  v2 = *(self + OBJC_IVAR____TtC4Siri16SiriUISuggestion_exposureCallback);
  selfCopy = self;

  v2(v3);
}

- (_TtC4Siri16SiriUISuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end