@interface MapsSuggestionsCurrentLocationSource
+ (BOOL)isEnabled;
- (_TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource)init;
- (_TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource)initWithDelegate:(id)delegate name:(id)name;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsCurrentLocationSource

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v6 = sub_10007E158();
  v8 = v7;
  oneSourceDelegate = [swift_unknownObjectRetain() oneSourceDelegate];
  result = [depot oneNetworkRequester];
  if (result)
  {
    v11 = result;
    v12 = objc_allocWithZone(type metadata accessor for MapsSuggestionsCurrentLocationSource());
    v13 = sub_10004B5C4(oneSourceDelegate, v11, v6, v8);
    swift_unknownObjectRelease();
    swift_getObjectType();
    v14 = *((swift_isaMask & *self->MapsSuggestionsBaseSource_opaque) + 0x30);
    v15 = *((swift_isaMask & *self->MapsSuggestionsBaseSource_opaque) + 0x34);
    swift_deallocPartialClassInstance();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)initFromResourceDepot:(id)depot
{
  swift_unknownObjectRetain();
  v5 = sub_10007E138();
  v6 = [(MapsSuggestionsCurrentLocationSource *)self initFromResourceDepot:depot name:v5];

  swift_unknownObjectRelease();
  return v6;
}

- (void)start
{
  selfCopy = self;
  MapsSuggestionsCurrentLocationSource.start()();
}

- (void)stop
{
  selfCopy = self;
  MapsSuggestionsCurrentLocationSource.stop()();
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_100052660;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  MapsSuggestionsCurrentLocationSource.updateSuggestionEntries(handler:)(v7, v6);
  sub_100052650(v7);

  return 0.0;
}

+ (BOOL)isEnabled
{
  v2 = GEOConfigMapsSuggestionsVisitedPlacesEnabled[1];
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {

    LOBYTE(BOOL) = MapsSuggestionsIsLocationAllowedForBundleID();
  }

  return BOOL;
}

- (_TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17GeneralMapsWidget36MapsSuggestionsCurrentLocationSource)initWithDelegate:(id)delegate name:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end