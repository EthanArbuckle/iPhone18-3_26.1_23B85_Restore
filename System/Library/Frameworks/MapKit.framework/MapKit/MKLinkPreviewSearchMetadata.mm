@interface MKLinkPreviewSearchMetadata
- (CLLocationCoordinate2D)coordinate;
- (MKLinkPreviewSearchMetadata)initWithActionType:(int64_t)type mapType:(unint64_t)mapType;
@end

@implementation MKLinkPreviewSearchMetadata

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKLinkPreviewSearchMetadata)initWithActionType:(int64_t)type mapType:(unint64_t)mapType
{
  v5.receiver = self;
  v5.super_class = MKLinkPreviewSearchMetadata;
  result = [(MKLinkPreviewMetadata *)&v5 initWithActionType:type mapType:mapType];
  if (result)
  {
    result->_coordinate = MKCoordinateInvalid;
  }

  return result;
}

@end