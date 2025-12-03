@interface AKBorderMaskAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newClipMaskEOPathForAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKBorderMaskAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF390];
  v4 = *(MEMORY[0x277CBF390] + 8);
  v5 = *(MEMORY[0x277CBF390] + 16);
  v6 = *(MEMORY[0x277CBF390] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
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
  if (nilCopy && CGRectIsInfinite(*&v13))
  {
    controller = [nilCopy controller];
    undoController = [controller undoController];
    undoManager = [undoController undoManager];

    isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];
    if (isUndoRegistrationEnabled)
    {
      [undoManager disableUndoRegistration];
    }

    [nilCopy maxPageRect];
    x = v21;
    y = v23;
    width = v25;
    height = v27;
    pageModelController = [nilCopy pageModelController];
    cropAnnotation = [pageModelController cropAnnotation];

    if (cropAnnotation)
    {
      [cropAnnotation rectangle];
      v57.origin.x = v31;
      v57.origin.y = v32;
      v57.size.width = v33;
      v57.size.height = v34;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectIntersection(v50, v57);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
    }

    [annotationCopy originalModelBaseScaleFactor];
    v36 = v35 * 50.0;
    [annotationCopy originalModelBaseScaleFactor];
    v38 = v37 * 10.0;
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v39 = CGRectGetWidth(v52) * 0.5 - v38;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v40 = CGRectGetHeight(v53) * 0.5 - v38;
    if (v36 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v36;
    }

    if (v36 >= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v36;
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v55 = CGRectInset(v54, v41, v42);
    v56 = CGRectStandardize(v55);
    [annotationCopy setRectangle:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
    if (isUndoRegistrationEnabled)
    {
      [undoManager enableUndoRegistration];
    }
  }

  v43 = [self _newClipMaskEOPathForAnnotation:annotationCopy];
  fillColor = [annotationCopy fillColor];
  v45 = fillColor;
  if (!fillColor || ([fillColor akAlphaComponent], v46 < 0.01))
  {
    v47 = [MEMORY[0x277D75348] akColorWithWhite:0.0 alpha:0.33];

    v45 = v47;
  }

  CGContextSetFillColorWithColor(context, [v45 CGColor]);
  CGContextAddPath(context, v43);
  CGContextEOFillPath(context);
  CGPathRelease(v43);
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  [annotation rectangle];
  v7.x = x;
  v7.y = y;
  return !CGRectContainsPoint(v8, v7);
}

+ (CGPath)_newClipMaskEOPathForAnnotation:(id)annotation
{
  [annotation rectangle];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v14 = CGRectInset(v13, -100000000.0, -100000000.0);
  v7 = v14.origin.x;
  v8 = v14.origin.y;
  v9 = v14.size.width;
  v10 = v14.size.height;
  Mutable = CGPathCreateMutable();
  v15.origin.x = v7;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  CGPathAddRect(Mutable, 0, v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGPathAddRect(Mutable, 0, v16);
  return Mutable;
}

@end