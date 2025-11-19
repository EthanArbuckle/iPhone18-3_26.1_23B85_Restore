@interface AKBorderMaskAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newClipMaskEOPathForAnnotation:(id)a3;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKBorderMaskAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v48 = a3;
  v10 = a6;
  v11 = a5;
  CGContextSaveGState(a4);
  v12 = [v11 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v48 forDisplay:v12 pageControllerOrNil:v10];
  [v48 rectangle];
  if (v10 && CGRectIsInfinite(*&v13))
  {
    v17 = [v10 controller];
    v18 = [v17 undoController];
    v19 = [v18 undoManager];

    v20 = [v19 isUndoRegistrationEnabled];
    if (v20)
    {
      [v19 disableUndoRegistration];
    }

    [v10 maxPageRect];
    x = v21;
    y = v23;
    width = v25;
    height = v27;
    v29 = [v10 pageModelController];
    v30 = [v29 cropAnnotation];

    if (v30)
    {
      [v30 rectangle];
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

    [v48 originalModelBaseScaleFactor];
    v36 = v35 * 50.0;
    [v48 originalModelBaseScaleFactor];
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
    [v48 setRectangle:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
    if (v20)
    {
      [v19 enableUndoRegistration];
    }
  }

  v43 = [a1 _newClipMaskEOPathForAnnotation:v48];
  v44 = [v48 fillColor];
  v45 = v44;
  if (!v44 || ([v44 akAlphaComponent], v46 < 0.01))
  {
    v47 = [MEMORY[0x277D75348] akColorWithWhite:0.0 alpha:0.33];

    v45 = v47;
  }

  CGContextSetFillColorWithColor(a4, [v45 CGColor]);
  CGContextAddPath(a4, v43);
  CGContextEOFillPath(a4);
  CGPathRelease(v43);
  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 rectangle];
  v7.x = x;
  v7.y = y;
  return !CGRectContainsPoint(v8, v7);
}

+ (CGPath)_newClipMaskEOPathForAnnotation:(id)a3
{
  [a3 rectangle];
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