@interface SearchDotPlacePersonalizedItem
- (CLLocationCoordinate2D)coordinate;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (SearchDotPlacePersonalizedItem)initWithSearchDotPlace:(id)a3;
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

  v5 = [(SearchDotPlacePersonalizedItem *)self style];
  v6 = [v3 copy];
  v7 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v5 additionalAttributes:v6];

  return v7;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  v2 = [(SearchDotPlacePersonalizedItem *)self name];
  v3 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v2 priority:0];

  return v3;
}

- (NSSet)keys
{
  v3 = [NSSet alloc];
  v4 = [(SearchDotPlacePersonalizedItem *)self key];
  v5 = [v3 initWithObjects:{v4, 0}];

  return v5;
}

- (SearchDotPlacePersonalizedItem)initWithSearchDotPlace:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SearchDotPlacePersonalizedItem;
  v6 = [(SearchDotPlacePersonalizedItem *)&v20 init];
  if (v6)
  {
    v7 = [[SearchDotPlaceItemKey alloc] initWithSearchDotPlace:v5];
    key = v6->_key;
    v6->_key = v7;

    [v5 coordinate];
    v6->_coordinate.latitude = v9;
    v6->_coordinate.longitude = v10;
    v11 = [v5 name];
    name = v6->_name;
    v6->_name = v11;

    v13 = [GEOFeatureStyleAttributes alloc];
    v14 = [v5 styleAttributes];
    v15 = [v13 initWithGEOStyleAttributes:v14];
    style = v6->_style;
    v6->_style = v15;

    v17 = [v5 mapItem];
    mapItem = v6->_mapItem;
    v6->_mapItem = v17;

    objc_storeStrong(&v6->_searchDotPlace, a3);
  }

  return v6;
}

@end