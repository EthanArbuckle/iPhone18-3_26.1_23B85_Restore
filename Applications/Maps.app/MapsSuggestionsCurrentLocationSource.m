@interface MapsSuggestionsCurrentLocationSource
+ (BOOL)isEnabled;
- (_TtC4Maps36MapsSuggestionsCurrentLocationSource)init;
- (_TtC4Maps36MapsSuggestionsCurrentLocationSource)initWithDelegate:(id)a3 name:(id)a4;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsCurrentLocationSource

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = [swift_unknownObjectRetain() oneSourceDelegate];
  result = [a3 oneNetworkRequester];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(type metadata accessor for MapsSuggestionsCurrentLocationSource());
    v12 = sub_10020B920(v8, v10, v5, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)initFromResourceDepot:(id)a3
{
  swift_unknownObjectRetain();
  v5 = String._bridgeToObjectiveC()();
  v6 = [(MapsSuggestionsCurrentLocationSource *)self initFromResourceDepot:a3 name:v5];

  swift_unknownObjectRelease();
  return v6;
}

- (void)start
{
  v2 = self;
  MapsSuggestionsCurrentLocationSource.start()();
}

- (void)stop
{
  v2 = self;
  MapsSuggestionsCurrentLocationSource.stop()();
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000FA694;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  MapsSuggestionsCurrentLocationSource.updateSuggestionEntries(handler:)(v7, v6);
  sub_1000D3B90(v7, v6);

  return 0.0;
}

+ (BOOL)isEnabled
{
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {

    LOBYTE(BOOL) = MapsSuggestionsIsLocationAllowedForBundleID();
  }

  return BOOL;
}

- (_TtC4Maps36MapsSuggestionsCurrentLocationSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps36MapsSuggestionsCurrentLocationSource)initWithDelegate:(id)a3 name:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end