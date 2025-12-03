@interface AKInkAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
@end

@implementation AKInkAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  annotation = [(AKAnnotationEventHandler *)self annotation];
  drawing = [annotation drawing];

  if (drawing)
  {
    drawing2 = [annotation drawing];
    v5 = drawing2;
    if (drawing2)
    {
      [drawing2 bounds];
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