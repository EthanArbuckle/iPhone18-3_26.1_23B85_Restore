@interface AKImageAnnotationEventHandler
- (CGSize)naturalSizeForAnnotation;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKImageAnnotationEventHandler

- (CGSize)naturalSizeForAnnotation
{
  annotation = [(AKAnnotationEventHandler *)self annotation];
  image = [annotation image];
  [image size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  v4.receiver = self;
  v4.super_class = AKImageAnnotationEventHandler;
  [(AKRectangularAnnotationEventHandler *)&v4 updateModelWithCurrentPoint:options options:point.x, point.y];
}

@end