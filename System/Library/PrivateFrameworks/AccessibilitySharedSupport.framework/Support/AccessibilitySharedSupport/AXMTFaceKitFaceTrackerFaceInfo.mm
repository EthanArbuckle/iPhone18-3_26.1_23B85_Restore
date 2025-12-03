@interface AXMTFaceKitFaceTrackerFaceInfo
- (AXMTFaceKitFaceTrackerFaceInfo)initWithFaceMetadata:(id)metadata;
- (CGRect)boundingBoxInNormalizedCoordinates;
@end

@implementation AXMTFaceKitFaceTrackerFaceInfo

- (AXMTFaceKitFaceTrackerFaceInfo)initWithFaceMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v8.receiver = self;
    v8.super_class = AXMTFaceKitFaceTrackerFaceInfo;
    v5 = [(AXMTFaceKitFaceTrackerFaceInfo *)&v8 init];
    if (v5)
    {
      -[AXMTFaceKitFaceTrackerFaceInfo setIdentifier:](v5, "setIdentifier:", [metadataCopy faceID]);
      [metadataCopy bounds];
      [(AXMTFaceKitFaceTrackerFaceInfo *)v5 setBoundingBoxInNormalizedCoordinates:?];
      [metadataCopy rollAngle];
      [(AXMTFaceKitFaceTrackerFaceInfo *)v5 setRoll:?];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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