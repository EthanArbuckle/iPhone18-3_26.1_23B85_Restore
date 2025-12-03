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
- (void)setAddress:(id)address;
- (void)setAutocompletionStrings:(id)strings;
- (void)setKeys:(id)keys;
- (void)setMapItem:(id)item;
- (void)setPrefix:(id)prefix;
- (void)setSearchableStrings:(id)strings;
- (void)setSource:(id)source;
- (void)setSourceLabelMarker:(id)marker;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PersonalizedFavoriteItem

- (NSSet)keys
{

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setKeys:(id)keys
{
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_keys) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)setMapItem:(id)item
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_mapItem);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_mapItem) = item;
  itemCopy = item;
}

- (void)setSource:(id)source
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_source);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_source) = source;
  sourceCopy = source;
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
  _enhancedPlacement = [*(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem) _enhancedPlacement];

  return _enhancedPlacement;
}

- (GEOLabelGeometry)labelGeometry
{
  _labelGeometry = [*(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem) _labelGeometry];

  return _labelGeometry;
}

- (void)setPrefix:(id)prefix
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_prefix);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_prefix) = prefix;
  prefixCopy = prefix;
}

- (void)setTitle:(id)title
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_title);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_title) = title;
  titleCopy = title;
}

- (void)setSubtitle:(id)subtitle
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_subtitle);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_subtitle) = subtitle;
  subtitleCopy = subtitle;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  selfCopy = self;
  v3 = sub_1002A33EC();

  return v3;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  v3 = objc_opt_self();
  selfCopy = self;
  v5 = sub_1002A33EC();
  v6 = [v3 clientFeatureIDFromAdornment:v5 mapItem:*(selfCopy + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem)];

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

- (void)setSourceLabelMarker:(id)marker
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sourceLabelMarker);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sourceLabelMarker) = marker;
  markerCopy = marker;
}

- (void)setAddress:(id)address
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_address);
  *(self + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_address) = address;
  addressCopy = address;
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

- (void)setSearchableStrings:(id)strings
{
  if (strings)
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
  selfCopy = self;
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

- (void)setAutocompletionStrings:(id)strings
{
  if (strings)
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
  selfCopy = self;
  sub_1002A4AB4(v5);
}

- (id)leafPersonalizedAutocompleteItems
{
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  *(v3 + 32) = self;
  selfCopy = self;
  sub_1000CE6B8(&qword_101917C58);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (NSString)description
{
  selfCopy = self;
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