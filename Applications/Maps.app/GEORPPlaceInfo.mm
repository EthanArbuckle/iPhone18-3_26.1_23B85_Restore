@interface GEORPPlaceInfo
- (GEORPPlaceInfo)initWithCorrectedSearch:(id)search;
@end

@implementation GEORPPlaceInfo

- (GEORPPlaceInfo)initWithCorrectedSearch:(id)search
{
  searchCopy = search;
  v9.receiver = self;
  v9.super_class = GEORPPlaceInfo;
  v5 = [(GEORPPlaceInfo *)&v9 init];
  if (v5)
  {
    placeResponse = [searchCopy placeResponse];
    [(GEORPPlaceInfo *)v5 setPlaceResponse:placeResponse];

    placeRequest = [searchCopy placeRequest];
    [(GEORPPlaceInfo *)v5 setPlaceRequest:placeRequest];
  }

  return v5;
}

@end