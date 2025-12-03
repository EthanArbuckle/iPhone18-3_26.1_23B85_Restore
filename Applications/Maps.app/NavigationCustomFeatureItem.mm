@interface NavigationCustomFeatureItem
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NavigationCustomFeatureItem)initWithMapItem:(id)item;
- (PersonalizedItemPrioritizedStringAdornment)subtitle;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
@end

@implementation NavigationCustomFeatureItem

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (PersonalizedItemPrioritizedStringAdornment)subtitle
{
  mapItem = [(NavigationCustomFeatureItem *)self mapItem];
  v3 = [mapItem _maps_detourTextForIdiom:0];

  v4 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v3 priority:1];

  return v4;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  mapItem = [(NavigationCustomFeatureItem *)self mapItem];
  name = [mapItem name];
  v4 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:name priority:1];

  return v4;
}

- (GEOLabelGeometry)labelGeometry
{
  mapItem = [(NavigationCustomFeatureItem *)self mapItem];
  _labelGeometry = [mapItem _labelGeometry];

  return _labelGeometry;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  mapItem = [(NavigationCustomFeatureItem *)self mapItem];
  _enhancedPlacement = [mapItem _enhancedPlacement];

  return _enhancedPlacement;
}

- (CLLocationCoordinate2D)coordinate
{
  mapItem = [(NavigationCustomFeatureItem *)self mapItem];
  [mapItem _coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (NavigationCustomFeatureItem)initWithMapItem:(id)item
{
  itemCopy = item;
  v24.receiver = self;
  v24.super_class = NavigationCustomFeatureItem;
  v6 = [(NavigationCustomFeatureItem *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    v8 = [[SearchResult alloc] initWithMapItem:itemCopy];
    searchResult = v7->_searchResult;
    v7->_searchResult = v8;

    v10 = [PersonalizedMapItemKey alloc];
    mapItem = [(NavigationCustomFeatureItem *)v7 mapItem];
    v12 = [(PersonalizedMapItemKey *)v10 initWithMapItem:mapItem];
    v13 = [NSSet setWithObject:v12];
    keys = v7->_keys;
    v7->_keys = v13;

    mapItem2 = [(NavigationCustomFeatureItem *)v7 mapItem];
    _styleAttributes = [mapItem2 _styleAttributes];
    v17 = [_styleAttributes copy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    }

    v20 = v19;

    v25 = xmmword_101212C90;
    [v20 replaceAttributes:&v25 count:2];
    v21 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v20];
    styleAttributes = v7->_styleAttributes;
    v7->_styleAttributes = v21;
  }

  return v7;
}

@end