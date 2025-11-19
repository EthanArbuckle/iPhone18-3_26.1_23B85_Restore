@interface TransitVehiclePositionAnnotation
- (CLLocationCoordinate2D)coordinate;
- (TransitVehiclePositionAnnotation)initWithVehiclePosition:(id)a3;
- (UIColor)color;
- (id)imageWithScale:(double)a3 nightMode:(BOOL)a4;
- (void)updateVehiclePosition:(id)a3;
@end

@implementation TransitVehiclePositionAnnotation

- (id)imageWithScale:(double)a3 nightMode:(BOOL)a4
{
  v4 = a4;
  v6 = [(TransitVehiclePositionAnnotation *)self vehiclePosition];
  v7 = [v6 artworkDataSource];
  v8 = +[MKTransitArtworkManager sharedInstance];
  v9 = [v8 transitArtworkImageWithDataSource:v7 size:6 featureType:2 scale:v4 nightMode:a3];

  return v9;
}

- (UIColor)color
{
  v2 = [(TransitVehiclePositionAnnotation *)self vehiclePosition];
  v3 = [v2 colorHexString];

  v4 = [UIColor _maps_colorFromHexString:v3];

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

- (void)updateVehiclePosition:(id)a3
{
  v4 = a3;
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"vehiclePosition"];
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"coordinate"];
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"heading"];
  [(TransitVehiclePositionAnnotation *)self willChangeValueForKey:@"title"];
  vehiclePosition = self->_vehiclePosition;
  self->_vehiclePosition = v4;

  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"vehiclePosition"];
  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"coordinate"];
  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"heading"];

  [(TransitVehiclePositionAnnotation *)self didChangeValueForKey:@"title"];
}

- (TransitVehiclePositionAnnotation)initWithVehiclePosition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransitVehiclePositionAnnotation;
  v6 = [(TransitVehiclePositionAnnotation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehiclePosition, a3);
  }

  return v7;
}

@end