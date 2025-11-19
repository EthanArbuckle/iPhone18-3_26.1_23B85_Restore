@interface PlaceSummaryTextHighlightConfiguration
- (NSString)typedAutocompleteQuery;
- (_TtC4Maps38PlaceSummaryTextHighlightConfiguration)init;
- (_TtC4Maps38PlaceSummaryTextHighlightConfiguration)initWithTypedAutocompleteQuery:(id)a3 type:(id)a4;
@end

@implementation PlaceSummaryTextHighlightConfiguration

- (NSString)typedAutocompleteQuery
{
  if (*(self + OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_typedAutocompleteQuery + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC4Maps38PlaceSummaryTextHighlightConfiguration)initWithTypedAutocompleteQuery:(id)a3 type:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (self + OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_typedAutocompleteQuery);
  *v8 = v6;
  v8[1] = v7;
  *(self + OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_type) = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for PlaceSummaryTextHighlightConfiguration();
  v9 = a4;
  return [(PlaceSummaryTextHighlightConfiguration *)&v11 init];
}

- (_TtC4Maps38PlaceSummaryTextHighlightConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end