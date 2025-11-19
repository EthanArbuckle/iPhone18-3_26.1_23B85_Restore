@interface AKNoteAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKNoteAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  [a3 rectangle];

  return CGRectInset(*&v3, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = -1.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v27 = a3;
  v10 = a6;
  v11 = a5;
  CGContextSaveGState(a4);
  v12 = [v11 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v27 forDisplay:v12 pageControllerOrNil:v10];
  [v27 rectangle];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v17 = CGPathCreateWithRoundedRect(v29, 1.5, 1.5, 0);
  if (v17)
  {
    v18 = v17;
    v19 = [v27 fillColor];
    CGContextSetFillColorWithColor(a4, [v19 CGColor]);
    CGContextSetBlendMode(a4, kCGBlendModeNormal);
    CGContextAddPath(a4, v18);
    CGContextFillPath(a4);
    v20 = [v27 fillColor];
    v21 = [AKHighlightAppearanceHelper attributeTagForNoteOfColor:v20];

    if (v21 == 763000 || ([AKHighlightAppearanceHelper borderColorForNoteOfHighlightAttributeTag:v21], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
      CGContextSetFillColorWithColor(a4, [v24 CGColor]);

      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31 = CGRectInset(v30, 1.0, 1.0);
      v25 = CGPathCreateWithRoundedRect(v31, 0.5, 0.5, 0);
      if (v25)
      {
        v26 = v25;
        CGContextAddPath(a4, v25);
        CGContextFillPath(a4);
        CGPathRelease(v26);
      }
    }

    else
    {
      v23 = v22;
      CGContextSetStrokeColorWithColor(a4, [v22 CGColor]);
      CGContextSetLineWidth(a4, 1.0);
      CGContextAddPath(a4, v18);
      CGContextStrokePath(a4);
    }

    CGPathRelease(v18);
  }

  CGContextRestoreGState(a4);
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