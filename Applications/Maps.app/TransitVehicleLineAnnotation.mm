@interface TransitVehicleLineAnnotation
- (CLLocationCoordinate2D)coordinate;
- (TransitVehicleLineAnnotation)initWithTransitLine:(id)line;
- (UIColor)color;
- (id)imageWithScale:(double)scale nightMode:(BOOL)mode;
@end

@implementation TransitVehicleLineAnnotation

- (id)imageWithScale:(double)scale nightMode:(BOOL)mode
{
  modeCopy = mode;
  transitLine = [(TransitVehicleLineAnnotation *)self transitLine];
  modeArtwork = [transitLine modeArtwork];

  v8 = +[MKTransitArtworkManager sharedInstance];
  v9 = [v8 transitArtworkImageWithDataSource:modeArtwork size:6 featureType:2 scale:modeCopy nightMode:scale];

  return v9;
}

- (UIColor)color
{
  transitLine = [(TransitVehicleLineAnnotation *)self transitLine];
  lineColorString = [transitLine lineColorString];

  v4 = [UIColor _maps_colorFromHexString:lineColorString];

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

- (TransitVehicleLineAnnotation)initWithTransitLine:(id)line
{
  lineCopy = line;
  v9.receiver = self;
  v9.super_class = TransitVehicleLineAnnotation;
  v6 = [(TransitVehicleLineAnnotation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitLine, line);
  }

  return v7;
}

@end