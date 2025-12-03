@interface MKLinkPreviewFrameMetadata
- (CLLocationCoordinate2D)coordinate;
- (MKLinkPreviewFrameMetadata)initWithActionType:(int64_t)type mapType:(unint64_t)mapType;
@end

@implementation MKLinkPreviewFrameMetadata

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKLinkPreviewFrameMetadata)initWithActionType:(int64_t)type mapType:(unint64_t)mapType
{
  v5.receiver = self;
  v5.super_class = MKLinkPreviewFrameMetadata;
  result = [(MKLinkPreviewMetadata *)&v5 initWithActionType:type mapType:mapType];
  if (result)
  {
    result->_coordinate = MKCoordinateInvalid;
  }

  return result;
}

@end