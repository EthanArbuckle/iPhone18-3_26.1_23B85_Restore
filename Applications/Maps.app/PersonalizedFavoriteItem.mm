@interface PersonalizedFavoriteItem
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NSArray)autocompletionStrings;
- (NSArray)searchableStrings;
- (NSSet)keys;
- (NSString)description;
- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (_TtC4Maps24PersonalizedFavoriteItem)init;
- (id)leafPersonalizedAutocompleteItems;
- (void)setAddress:(id)a3;
- (void)setAutocompletionStrings:(id)a3;
- (void)setKeys:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setPrefix:(id)a3;
- (void)setSearchableStrings:(id)a3;
- (void)setSource:(id)a3;
- (void)setSourceLabelMarker:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PersonalizedFavoriteItem

- (NSSet)keys
{

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setKeys:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_keys) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)setMapItem:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_mapItem);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_mapItem) = a3;
  v3 = a3;
}

- (void)setSource:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_source);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_source) = a3;
  v3 = a3;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_coordinate);
  v3 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_coordinate + 8);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  v2 = [*(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem) _enhancedPlacement];

  return v2;
}

- (GEOLabelGeometry)labelGeometry
{
  v2 = [*(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem) _labelGeometry];

  return v2;
}

- (void)setPrefix:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_prefix);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_prefix) = a3;
  v3 = a3;
}

- (void)setTitle:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_title);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_title) = a3;
  v3 = a3;
}

- (void)setSubtitle:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_subtitle);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_subtitle) = a3;
  v3 = a3;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  v2 = self;
  v3 = sub_1002A33EC();

  return v3;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = sub_1002A33EC();
  v6 = [v3 clientFeatureIDFromAdornment:v5 mapItem:*(v4 + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem)];

  if (v6)
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setSourceLabelMarker:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sourceLabelMarker);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sourceLabelMarker) = a3;
  v3 = a3;
}

- (void)setAddress:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_address);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_address) = a3;
  v3 = a3;
}

- (NSArray)searchableStrings
{
  if (*(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_searchableStrings))
  {

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setSearchableStrings:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_searchableStrings) = v4;
}

- (NSArray)autocompletionStrings
{
  v2 = self;
  v3 = sub_1002A39F4();

  if (v3)
  {
    sub_1000CE6B8(&qword_101917C60);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAutocompletionStrings:(id)a3
{
  if (a3)
  {
    sub_1000CE6B8(&qword_101917C60);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem____lazy_storage___autocompletionStrings);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem____lazy_storage___autocompletionStrings) = v4;
  v6 = self;
  sub_1002A4AB4(v5);
}

- (id)leafPersonalizedAutocompleteItems
{
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  *(v3 + 32) = self;
  v4 = self;
  sub_1000CE6B8(&qword_101917C58);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (NSString)description
{
  v2 = self;
  sub_1002A3CFC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC4Maps24PersonalizedFavoriteItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end