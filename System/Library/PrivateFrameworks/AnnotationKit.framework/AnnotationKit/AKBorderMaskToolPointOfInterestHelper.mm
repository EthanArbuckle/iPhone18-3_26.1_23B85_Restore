@interface AKBorderMaskToolPointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)point onAnnotation:(id)annotation withScale:(double)scale pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKBorderMaskToolPointOfInterestHelper

+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)point onAnnotation:(id)annotation withScale:(double)scale pageControllerForPixelAlignment:(id)alignment
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___AKBorderMaskToolPointOfInterestHelper;
  v12 = objc_msgSendSuper2(&v14, sel__concreteDraggableAreaForPoint_onAnnotation_withScale_pageControllerForPixelAlignment_, annotationCopy, alignment, x, y, scale);
  if (!v12)
  {
    if ([AKAnnotationRenderer pointIsOnInside:annotationCopy ofAnnotation:x, y])
    {
      v12 = 20;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end