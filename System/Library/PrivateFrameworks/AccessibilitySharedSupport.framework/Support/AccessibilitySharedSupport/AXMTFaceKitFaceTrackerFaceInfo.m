@interface AXMTFaceKitFaceTrackerFaceInfo
- (AXMTFaceKitFaceTrackerFaceInfo)initWithFaceMetadata:(id)a3;
- (CGRect)boundingBoxInNormalizedCoordinates;
@end

@implementation AXMTFaceKitFaceTrackerFaceInfo

- (AXMTFaceKitFaceTrackerFaceInfo)initWithFaceMetadata:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = AXMTFaceKitFaceTrackerFaceInfo;
    v5 = [(AXMTFaceKitFaceTrackerFaceInfo *)&v8 init];
    if (v5)
    {
      -[AXMTFaceKitFaceTrackerFaceInfo setIdentifier:](v5, "setIdentifier:", [v4 faceID]);
      [v4 bounds];
      [(AXMTFaceKitFaceTrackerFaceInfo *)v5 setBoundingBoxInNormalizedCoordinates:?];
      [v4 rollAngle];
      [(AXMTFaceKitFaceTrackerFaceInfo *)v5 setRoll:?];
    }

    self = v5;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)boundingBoxInNormalizedCoordinates
{
  x = self->_boundingBoxInNormalizedCoordinates.origin.x;
  y = self->_boundingBoxInNormalizedCoordinates.origin.y;
  width = self->_boundingBoxInNormalizedCoordinates.size.width;
  height = self->_boundingBoxInNormalizedCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end