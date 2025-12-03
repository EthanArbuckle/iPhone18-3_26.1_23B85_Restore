@interface TransitVehiclePositionAnnotation
- (CLLocationCoordinate2D)coordinate;
- (TransitVehiclePositionAnnotation)initWithVehiclePosition:(id)position;
- (UIColor)color;
- (id)imageWithScale:(double)scale nightMode:(BOOL)mode;
- (void)updateVehiclePosition:(id)position;
@end

@implementation TransitVehiclePositionAnnotation

- (id)imageWithScale:(double)scale nightMode:(BOOL)mode
{
  modeCopy = mode;
  vehiclePosition = [(TransitVehiclePositionAnnotation *)self vehiclePosition];
  artworkDataSource = [vehiclePosition artworkDataSource];
  v8 = +[MKTransitArtworkManager sharedInstance];
  v9 = [v8 transitArtworkImageWithDataSource:artworkDataSource size:6 featureType:2 scale:modeCopy nightMode:scale];

  return v9;
}

- (UIColor)color
{
  vehiclePosition = [(TransitVehiclePositionAnnotation *)self vehiclePosition];
  colorHexString = [vehiclePosition colorHexString];

  v4 = [UIColor _maps_colorFromHexString:colorHexString];

  return v4;
}

- (CLLocationCoordinate2D)coordinate
{
  [(GEOTransitVehiclePosition *)self->_vehiclePosition coordinate];
  v4 = v3;
  [(GEOTransitVehiclePosition *)self->_vehiclePosition coordinate];

  v8 = CLLocationCoordinate2DMake(v4, v5);
  longitude = v8.longitude;
  latitude = v8.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)updateVehiclePosition:(id)position
{
  positionCopy = position;
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"vehiclePosition"];
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"coordinate"];
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"heading"];
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"title"];
  vehiclePosition = self->_vehiclePosition;
  self->_vehiclePosition = positionCopy;

  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"vehiclePosition"];
  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"coordinate"];
  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"heading"];

  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"title"];
}

- (TransitVehiclePositionAnnotation)initWithVehiclePosition:(id)position
{
  positionCopy = position;
  v9.receiver = self;
  v9.super_class = TransitVehiclePositionAnnotation;
  v6 = [(TransitVehiclePositionAnnotation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehiclePosition, position);
  }

  return v7;
}

@end