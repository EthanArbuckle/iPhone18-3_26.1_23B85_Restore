@interface SearchDotPlacePersonalizedItem
- (CLLocationCoordinate2D)coordinate;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (SearchDotPlacePersonalizedItem)initWithSearchDotPlace:(id)place;
@end

@implementation SearchDotPlacePersonalizedItem

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v9[0] = &off_1016E9938;
  v9[1] = &off_1016E9968;
  v10[0] = &off_1016E9950;
  v10[1] = &off_1016E9980;
  v9[2] = &off_1016E9998;
  v9[3] = &off_1016E99B0;
  v10[2] = &off_1016E9980;
  v10[3] = &off_1016E9980;
  v9[4] = &off_1016E99C8;
  v10[4] = &off_1016E99E0;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  [v3 addEntriesFromDictionary:v4];

  style = [(SearchDotPlacePersonalizedItem *)self style];
  v6 = [v3 copy];
  v7 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:style additionalAttributes:v6];

  return v7;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  name = [(SearchDotPlacePersonalizedItem *)self name];
  v3 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:name priority:0];

  return v3;
}

- (NSSet)keys
{
  v3 = [NSSet alloc];
  v4 = [(SearchDotPlacePersonalizedItem *)self key];
  v5 = [v3 initWithObjects:{v4, 0}];

  return v5;
}

- (SearchDotPlacePersonalizedItem)initWithSearchDotPlace:(id)place
{
  placeCopy = place;
  v20.receiver = self;
  v20.super_class = SearchDotPlacePersonalizedItem;
  v6 = [(SearchDotPlacePersonalizedItem *)&v20 init];
  if (v6)
  {
    v7 = [[SearchDotPlaceItemKey alloc] initWithSearchDotPlace:placeCopy];
    key = v6->_key;
    v6->_key = v7;

    [placeCopy coordinate];
    v6->_coordinate.latitude = v9;
    v6->_coordinate.longitude = v10;
    name = [placeCopy name];
    name = v6->_name;
    v6->_name = name;

    v13 = [GEOFeatureStyleAttributes alloc];
    styleAttributes = [placeCopy styleAttributes];
    v15 = [v13 initWithGEOStyleAttributes:styleAttributes];
    style = v6->_style;
    v6->_style = v15;

    mapItem = [placeCopy mapItem];
    mapItem = v6->_mapItem;
    v6->_mapItem = mapItem;

    objc_storeStrong(&v6->_searchDotPlace, place);
  }

  return v6;
}

@end