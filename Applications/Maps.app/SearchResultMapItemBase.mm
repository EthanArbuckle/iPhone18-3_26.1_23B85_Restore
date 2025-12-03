@interface SearchResultMapItemBase
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (SearchResultMapItemBase)initWithSearchResult:(id)result;
- (void)isVisitedMapItem:(id)item completionHandler:(id)handler;
@end

@implementation SearchResultMapItemBase

- (void)isVisitedMapItem:(id)item completionHandler:(id)handler
{
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = item;
  v12[5] = sub_1000D2CB0;
  v12[6] = v10;
  itemCopy = item;
  sub_10020AAE4(0, 0, v8, &unk_1011E47A0, v12);
}

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->source);

  return WeakRetained;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  title = [(SearchResult *)self->_searchResult title];
  v3 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:title priority:1];

  return v3;
}

- (GEOLabelGeometry)labelGeometry
{
  mapItem = [(SearchResultMapItemBase *)self mapItem];
  _labelGeometry = [mapItem _labelGeometry];

  return _labelGeometry;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  mapItem = [(SearchResultMapItemBase *)self mapItem];
  _enhancedPlacement = [mapItem _enhancedPlacement];

  return _enhancedPlacement;
}

- (CLLocationCoordinate2D)coordinate
{
  [(SearchResult *)self->_searchResult labelCoordinate];
  v3 = CLLocationCoordinate2DIsValid(v8);
  searchResult = self->_searchResult;
  if (v3)
  {

    [(SearchResult *)searchResult labelCoordinate];
  }

  else
  {

    [(SearchResult *)searchResult coordinate];
  }

  result.longitude = v6;
  result.latitude = v5;
  return result;
}

- (NSSet)keys
{
  if (self->_key)
  {
    [NSSet setWithObject:?];
  }

  else
  {
    +[NSSet set];
  }
  v2 = ;

  return v2;
}

- (SearchResultMapItemBase)initWithSearchResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = SearchResultMapItemBase;
  v6 = [(SearchResultMapItemBase *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResult, result);
    personalizedItemKey = [resultCopy personalizedItemKey];
    key = v7->_key;
    v7->_key = personalizedItemKey;

    v7->_shouldBeHiddenFromMap = 0;
  }

  return v7;
}

@end