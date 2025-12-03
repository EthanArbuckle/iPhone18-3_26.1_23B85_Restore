@interface BLJaliscoItem
- (id)artworkCatalog;
@end

@implementation BLJaliscoItem

- (id)artworkCatalog
{
  v3 = [MPArtworkCatalog alloc];
  artworkURLString = [(BLJaliscoItem *)self artworkURLString];
  v5 = +[NBJaliscoArtworkCatalogDataSource instance];
  v6 = [v3 initWithToken:artworkURLString dataSource:v5];

  return v6;
}

@end