@interface AKInkAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
@end

@implementation AKInkAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  v2 = [(AKAnnotationEventHandler *)self annotation];
  v3 = [v2 drawing];

  if (v3)
  {
    v4 = [v2 drawing];
    v5 = v4;
    if (v4)
    {
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      if ([AKGeometryHelper isUnpresentableRect:?])
      {
        v9 = 1.0;
        v7 = 1.0;
      }
    }

    else
    {
      v9 = 1.0;
      v7 = 1.0;
    }
  }

  else
  {
    v9 = 1.0;
    v7 = 1.0;
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end