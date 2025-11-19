@interface POIPlaceholderSearchResult
- (POIPlaceholderSearchResult)initWithLabelMarker:(id)a3;
@end

@implementation POIPlaceholderSearchResult

- (POIPlaceholderSearchResult)initWithLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [[MKMapItem alloc] _initWithLabelMarker:v4];

  v9.receiver = self;
  v9.super_class = POIPlaceholderSearchResult;
  v6 = [(SearchResult *)&v9 initWithMapItem:v5];

  if (v6)
  {
    [(SearchResult *)v6 setType:9];
    [(SearchResultRepr *)v6 setHasIncompleteMetadata:1];
    [(SearchResultRepr *)v6 setHasIncompleteNavData:1];
    v7 = v6;
  }

  return v6;
}

@end