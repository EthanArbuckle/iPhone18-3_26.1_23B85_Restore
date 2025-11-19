@interface MSHistoryCuratedCollection
- (GEOMapItemIdentifier)mapItemIdentifier;
@end

@implementation MSHistoryCuratedCollection

- (GEOMapItemIdentifier)mapItemIdentifier
{
  v2 = [[GEOMapItemIdentifier alloc] initWithMUID:-[MSHistoryCuratedCollection curatedCollectionIdentifier](self resultProviderID:"curatedCollectionIdentifier") coordinate:{-[MSHistoryCuratedCollection resultProviderIdentifier](self, "resultProviderIdentifier"), -180.0, -180.0}];

  return v2;
}

@end