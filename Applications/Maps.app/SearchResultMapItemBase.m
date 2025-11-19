@interface SearchResultMapItemBase
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (SearchResultMapItemBase)initWithSearchResult:(id)a3;
- (void)isVisitedMapItem:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchResultMapItemBase

- (void)isVisitedMapItem:(id)a3 completionHandler:(id)a4
{
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = sub_1000D2CB0;
  v12[6] = v10;
  v13 = a3;
  sub_10020AAE4(0, 0, v8, &unk_1011E47A0, v12);
}

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->source);

  return WeakRetained;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  v2 = [(SearchResult *)self->_searchResult title];
  v3 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v2 priority:1];

  return v3;
}

- (GEOLabelGeometry)labelGeometry
{
  v2 = [(SearchResultMapItemBase *)self mapItem];
  v3 = [v2 _labelGeometry];

  return v3;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  v2 = [(SearchResultMapItemBase *)self mapItem];
  v3 = [v2 _enhancedPlacement];

  return v3;
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

- (SearchResultMapItemBase)initWithSearchResult:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SearchResultMapItemBase;
  v6 = [(SearchResultMapItemBase *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResult, a3);
    v8 = [v5 personalizedItemKey];
    key = v7->_key;
    v7->_key = v8;

    v7->_shouldBeHiddenFromMap = 0;
  }

  return v7;
}

@end