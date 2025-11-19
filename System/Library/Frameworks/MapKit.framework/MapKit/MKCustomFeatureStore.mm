@interface MKCustomFeatureStore
@end

@implementation MKCustomFeatureStore

void __46___MKCustomFeatureStore__clearTileAnnotations__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 feature];
  [v3 setDataSource:0];

  v4 = *(*(a1 + 32) + 8);
  [v7 coordinate];
  GEOMapPointForCoordinate();
  *&v8 = v5;
  *(&v8 + 1) = v6;
  std::vector<GEOPosition2d>::push_back[abi:ne200100](v4 + 48, &v8);
}

@end