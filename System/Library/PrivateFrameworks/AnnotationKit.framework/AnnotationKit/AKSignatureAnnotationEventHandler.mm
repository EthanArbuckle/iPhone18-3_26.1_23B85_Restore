@interface AKSignatureAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
@end

@implementation AKSignatureAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  v3 = [(AKAnnotationEventHandler *)self annotation];
  v15.receiver = self;
  v15.super_class = AKSignatureAnnotationEventHandler;
  [(AKAnnotationEventHandler *)&v15 naturalSizeForAnnotation];
  v5 = v4;
  v7 = v6;
  v8 = [v3 signature];
  v9 = [v8 path];

  if (v9)
  {
    v10 = [v3 signature];
    [v10 pathBounds];
    v5 = v11;
    v7 = v12;
  }

  v13 = v5;
  v14 = v7;
  result.height = v14;
  result.width = v13;
  return result;
}

@end