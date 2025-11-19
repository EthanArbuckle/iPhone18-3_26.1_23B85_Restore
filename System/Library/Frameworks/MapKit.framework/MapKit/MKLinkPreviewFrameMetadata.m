@interface MKLinkPreviewFrameMetadata
- (CLLocationCoordinate2D)coordinate;
- (MKLinkPreviewFrameMetadata)initWithActionType:(int64_t)a3 mapType:(unint64_t)a4;
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

- (MKLinkPreviewFrameMetadata)initWithActionType:(int64_t)a3 mapType:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = MKLinkPreviewFrameMetadata;
  result = [(MKLinkPreviewMetadata *)&v5 initWithActionType:a3 mapType:a4];
  if (result)
  {
    result->_coordinate = MKCoordinateInvalid;
  }

  return result;
}

@end