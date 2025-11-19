@interface AKImageAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKImageAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  v2 = [(AKAnnotationEventHandler *)self annotation];
  v3 = [v2 image];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = AKImageAnnotationEventHandler;
  [(AKRectangularAnnotationEventHandler *)&v4 updateModelWithCurrentPoint:a4 options:a3.x, a3.y];
}

@end