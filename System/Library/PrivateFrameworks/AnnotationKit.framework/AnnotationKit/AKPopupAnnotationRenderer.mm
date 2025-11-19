@interface AKPopupAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
@end

@implementation AKPopupAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  [a3 rectangle];

  return CGRectInset(*&v3, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 rectangle];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end