@interface AKDoodleAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
@end

@implementation AKDoodleAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  v2 = [(AKAnnotationEventHandler *)self annotation];
  v3 = [v2 path];

  if (v3)
  {
    v4 = [v2 path];
    v5 = [v4 newCGPathForPlatformBezierPath];

    height = 1.0;
    if (v5)
    {
      width = 1.0;
      if (!CGPathIsEmpty(v5))
      {
        BoundingBox = CGPathGetBoundingBox(v5);
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
      }
    }

    else
    {
      width = 1.0;
    }

    CGPathRelease(v5);
  }

  else
  {
    height = 1.0;
    width = 1.0;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

@end