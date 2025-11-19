@interface AKBorderMaskToolPointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKBorderMaskToolPointOfInterestHelper

+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a4;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___AKBorderMaskToolPointOfInterestHelper;
  v12 = objc_msgSendSuper2(&v14, sel__concreteDraggableAreaForPoint_onAnnotation_withScale_pageControllerForPixelAlignment_, v11, a6, x, y, a5);
  if (!v12)
  {
    if ([AKAnnotationRenderer pointIsOnInside:v11 ofAnnotation:x, y])
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