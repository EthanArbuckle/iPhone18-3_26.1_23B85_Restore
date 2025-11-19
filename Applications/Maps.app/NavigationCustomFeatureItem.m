@interface NavigationCustomFeatureItem
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NavigationCustomFeatureItem)initWithMapItem:(id)a3;
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
  v2 = [(NavigationCustomFeatureItem *)self mapItem];
  v3 = [v2 _maps_detourTextForIdiom:0];

  v4 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v3 priority:1];

  return v4;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  v2 = [(NavigationCustomFeatureItem *)self mapItem];
  v3 = [v2 name];
  v4 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v3 priority:1];

  return v4;
}

- (GEOLabelGeometry)labelGeometry
{
  v2 = [(NavigationCustomFeatureItem *)self mapItem];
  v3 = [v2 _labelGeometry];

  return v3;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  v2 = [(NavigationCustomFeatureItem *)self mapItem];
  v3 = [v2 _enhancedPlacement];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = [(NavigationCustomFeatureItem *)self mapItem];
  [v2 _coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (NavigationCustomFeatureItem)initWithMapItem:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = NavigationCustomFeatureItem;
  v6 = [(NavigationCustomFeatureItem *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    v8 = [[SearchResult alloc] initWithMapItem:v5];
    searchResult = v7->_searchResult;
    v7->_searchResult = v8;

    v10 = [PersonalizedMapItemKey alloc];
    v11 = [(NavigationCustomFeatureItem *)v7 mapItem];
    v12 = [(PersonalizedMapItemKey *)v10 initWithMapItem:v11];
    v13 = [NSSet setWithObject:v12];
    keys = v7->_keys;
    v7->_keys = v13;

    v15 = [(NavigationCustomFeatureItem *)v7 mapItem];
    v16 = [v15 _styleAttributes];
    v17 = [v16 copy];
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