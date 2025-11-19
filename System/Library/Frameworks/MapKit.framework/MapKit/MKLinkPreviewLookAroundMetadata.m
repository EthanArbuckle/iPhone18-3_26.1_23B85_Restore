@interface MKLinkPreviewLookAroundMetadata
- (CLLocationCoordinate2D)coordinate;
- (MKLinkPreviewLookAroundMetadata)initWithActionType:(int64_t)a3 mapType:(unint64_t)a4;
@end

@implementation MKLinkPreviewLookAroundMetadata

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKLinkPreviewLookAroundMetadata)initWithActionType:(int64_t)a3 mapType:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = MKLinkPreviewLookAroundMetadata;
  result = [(MKLinkPreviewMetadata *)&v5 initWithActionType:a3 mapType:a4];
  if (result)
  {
    result->_coordinate = MKCoordinateInvalid;
  }

  return result;
}

@end