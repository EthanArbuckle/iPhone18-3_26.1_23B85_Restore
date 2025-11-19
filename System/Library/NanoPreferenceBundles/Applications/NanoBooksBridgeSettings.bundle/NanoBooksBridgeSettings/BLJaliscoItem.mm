@interface BLJaliscoItem
- (id)artworkCatalog;
@end

@implementation BLJaliscoItem

- (id)artworkCatalog
{
  v3 = [MPArtworkCatalog alloc];
  v4 = [(BLJaliscoItem *)self artworkURLString];
  v5 = +[NBJaliscoArtworkCatalogDataSource instance];
  v6 = [v3 initWithToken:v4 dataSource:v5];

  return v6;
}

@end