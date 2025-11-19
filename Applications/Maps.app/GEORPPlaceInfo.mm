@interface GEORPPlaceInfo
- (GEORPPlaceInfo)initWithCorrectedSearch:(id)a3;
@end

@implementation GEORPPlaceInfo

- (GEORPPlaceInfo)initWithCorrectedSearch:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GEORPPlaceInfo;
  v5 = [(GEORPPlaceInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 placeResponse];
    [(GEORPPlaceInfo *)v5 setPlaceResponse:v6];

    v7 = [v4 placeRequest];
    [(GEORPPlaceInfo *)v5 setPlaceRequest:v7];
  }

  return v5;
}

@end