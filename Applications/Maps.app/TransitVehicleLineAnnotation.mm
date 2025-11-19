@interface TransitVehicleLineAnnotation
- (CLLocationCoordinate2D)coordinate;
- (TransitVehicleLineAnnotation)initWithTransitLine:(id)a3;
- (UIColor)color;
- (id)imageWithScale:(double)a3 nightMode:(BOOL)a4;
@end

@implementation TransitVehicleLineAnnotation

- (id)imageWithScale:(double)a3 nightMode:(BOOL)a4
{
  v4 = a4;
  v6 = [(TransitVehicleLineAnnotation *)self transitLine];
  v7 = [v6 modeArtwork];

  v8 = +[MKTransitArtworkManager sharedInstance];
  v9 = [v8 transitArtworkImageWithDataSource:v7 size:6 featureType:2 scale:v4 nightMode:a3];

  return v9;
}

- (UIColor)color
{
  v2 = [(TransitVehicleLineAnnotation *)self transitLine];
  v3 = [v2 lineColorString];

  v4 = [UIColor _maps_colorFromHexString:v3];

  return v4;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = MKCoordinateInvalid[0];
  v3 = MKCoordinateInvalid[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (TransitVehicleLineAnnotation)initWithTransitLine:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransitVehicleLineAnnotation;
  v6 = [(TransitVehicleLineAnnotation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitLine, a3);
  }

  return v7;
}

@end