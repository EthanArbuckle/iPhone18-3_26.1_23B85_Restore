@interface AKDoodleAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
@end

@implementation AKDoodleAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  annotation = [(AKAnnotationEventHandler *)self annotation];
  path = [annotation path];

  if (path)
  {
    path2 = [annotation path];
    newCGPathForPlatformBezierPath = [path2 newCGPathForPlatformBezierPath];

    height = 1.0;
    if (newCGPathForPlatformBezierPath)
    {
      width = 1.0;
      if (!CGPathIsEmpty(newCGPathForPlatformBezierPath))
      {
        BoundingBox = CGPathGetBoundingBox(newCGPathForPlatformBezierPath);
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
      }
    }

    else
    {
      width = 1.0;
    }

    CGPathRelease(newCGPathForPlatformBezierPath);
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