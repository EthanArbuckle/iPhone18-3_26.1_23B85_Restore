@interface MKLinkPreviewMetadata
+ (double)displayScale;
- (MKLinkPreviewMetadata)initWithActionType:(int64_t)a3 mapType:(unint64_t)a4;
- (void)setCoordinateRegion:(id *)a3;
@end

@implementation MKLinkPreviewMetadata

- (void)setCoordinateRegion:(id *)a3
{
  self->_coordinateRegion.center.latitude = v3;
  self->_coordinateRegion.center.longitude = v4;
  self->_coordinateRegion.span.latitudeDelta = v5;
  self->_coordinateRegion.span.longitudeDelta = v6;
}

- (MKLinkPreviewMetadata)initWithActionType:(int64_t)a3 mapType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MKLinkPreviewMetadata;
  result = [(MKLinkPreviewMetadata *)&v7 init];
  if (result)
  {
    result->_actionType = a3;
    result->_mapType = a4;
    result->_coordinateRegion.center = MKCoordinateRegionInvalid;
    result->_coordinateRegion.span = unk_1A30F7F60;
  }

  return result;
}

+ (double)displayScale
{
  if (displayScale_onceToken != -1)
  {
    dispatch_once(&displayScale_onceToken, &__block_literal_global_35169);
  }

  return *&displayScale_displayScale;
}

@end