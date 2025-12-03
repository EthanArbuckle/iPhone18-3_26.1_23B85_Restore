@interface AKNoteAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKNoteAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  [annotation rectangle];

  return CGRectInset(*&v3, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = -1.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  nilCopy = nil;
  optionsCopy = options;
  CGContextSaveGState(context);
  forDisplay = [optionsCopy forDisplay];

  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:forDisplay pageControllerOrNil:nilCopy];
  [annotationCopy rectangle];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v17 = CGPathCreateWithRoundedRect(v29, 1.5, 1.5, 0);
  if (v17)
  {
    v18 = v17;
    fillColor = [annotationCopy fillColor];
    CGContextSetFillColorWithColor(context, [fillColor CGColor]);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextAddPath(context, v18);
    CGContextFillPath(context);
    fillColor2 = [annotationCopy fillColor];
    v21 = [AKHighlightAppearanceHelper attributeTagForNoteOfColor:fillColor2];

    if (v21 == 763000 || ([AKHighlightAppearanceHelper borderColorForNoteOfHighlightAttributeTag:v21], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
      CGContextSetFillColorWithColor(context, [v24 CGColor]);

      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31 = CGRectInset(v30, 1.0, 1.0);
      v25 = CGPathCreateWithRoundedRect(v31, 0.5, 0.5, 0);
      if (v25)
      {
        v26 = v25;
        CGContextAddPath(context, v25);
        CGContextFillPath(context);
        CGPathRelease(v26);
      }
    }

    else
    {
      v23 = v22;
      CGContextSetStrokeColorWithColor(context, [v22 CGColor]);
      CGContextSetLineWidth(context, 1.0);
      CGContextAddPath(context, v18);
      CGContextStrokePath(context);
    }

    CGPathRelease(v18);
  }

  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  [annotation rectangle];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end