@interface AKLoupeAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)innerClipRect:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKLoupeAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 strokeWidth];
  v13 = v12 * -0.5;
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  v31 = CGRectInset(v30, v13, v13);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if ([v3 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v3 onAnnotation:x, y, width, height];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectInset(v32, -1.0, -1.0);
  v22 = v33.origin.x;
  v23 = v33.origin.y;
  v24 = v33.size.width;
  v25 = v33.size.height;

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
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
  v68[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  CGContextSaveGState(a4);
  v13 = [v12 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:v13 pageControllerOrNil:v11];
  v14 = [v10 hasShadow];
  if (v14)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
  }

  [v10 rectangle];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_getAssociatedObject(v10, off_27E398E98);
  if (v23)
  {
    objc_setAssociatedObject(v10, @"AKLoupeAnnotationRendererPDFDocumentWrapperDict", 0, 0x301);
    Page = 0;
LABEL_5:
    CGContextSaveGState(a4);
    [objc_opt_class() innerClipRect:v10];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [MEMORY[0x277D75348] clearColor];
    CGContextSetFillColorWithColor(a4, [v33 CGColor]);

    v69.origin.x = v16;
    v69.origin.y = v18;
    v69.size.width = v20;
    v69.size.height = v22;
    CGContextFillRect(a4, v69);
    v70.origin.x = v26;
    v70.origin.y = v28;
    v70.size.width = v30;
    v70.size.height = v32;
    CGContextAddEllipseInRect(a4, v70);
    CGContextClip(a4);
    v34 = [v10 strokeColor];
    v35 = [v34 CGColor];

    if (!v35 || vabdd_f64(0.0, CGColorGetAlpha(v35)) < 0.0005)
    {
      v36 = [MEMORY[0x277D75348] grayColor];
      v35 = [v36 CGColor];
    }

    CGContextSetStrokeColorWithColor(a4, v35);
    v71.origin.x = v16;
    v71.origin.y = v18;
    v71.size.width = v20;
    v71.size.height = v22;
    CGContextStrokeEllipseInRect(a4, v71);
    if (v23)
    {
      CGContextSetInterpolationQuality(a4, kCGInterpolationNone);
      v37 = [v23 akCGImage];
      v72.origin.x = v16;
      v72.origin.y = v18;
      v72.size.width = v20;
      v72.size.height = v22;
      CGContextDrawImage(a4, v72, v37);
    }

    else
    {
      CGContextSaveGState(a4);
      v73.origin.x = v26;
      v73.origin.y = v28;
      v73.size.width = v30;
      v73.size.height = v32;
      v74 = CGRectInset(v73, 0.1, 0.1);
      CGContextAddEllipseInRect(a4, v74);
      CGContextClip(a4);
      v49 = [MEMORY[0x277D75348] whiteColor];
      CGContextSetFillColorWithColor(a4, [v49 CGColor]);

      v75.origin.x = v16;
      v75.origin.y = v18;
      v75.size.width = v20;
      v75.size.height = v22;
      CGContextFillRect(a4, v75);
      CGContextRestoreGState(a4);
      v76.origin.x = v16;
      v76.origin.y = v18;
      v76.size.width = v20;
      v76.size.height = v22;
      MinX = CGRectGetMinX(v76);
      v77.origin.x = v16;
      v77.origin.y = v18;
      v77.size.width = v20;
      v77.size.height = v22;
      MinY = CGRectGetMinY(v77);
      CGContextTranslateCTM(a4, MinX, MinY);
      v52 = kCGInterpolationNone;
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      CGContextScaleCTM(a4, v20 / BoxRect.size.width, v22 / BoxRect.size.height);
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      CGContextClipToRect(a4, v79);
      [v10 magnification];
      if (v57 < 3.0)
      {
        [v10 magnification];
        if (v58 != 2.0)
        {
          v52 = kCGInterpolationHigh;
        }
      }

      CGContextSetInterpolationQuality(a4, v52);
      CGContextSetShouldSmoothFonts(a4, 0);
      CGContextSetShouldSubpixelPositionFonts(a4, 1);
      CGContextSetShouldSubpixelQuantizeFonts(a4, 1);
      CGContextDrawPDFPage(a4, Page);
    }

    CGContextRestoreGState(a4);
    goto LABEL_27;
  }

  v38 = [v10 imageData];
  v39 = objc_getAssociatedObject(v10, @"AKLoupeAnnotationRendererPDFDocumentWrapperDict");
  v40 = v39;
  if (!v39 || ([v39 objectForKey:@"imageData"], v41 = objc_claimAutoreleasedReturnValue(), v41, v41 != v38))
  {
    if (v38)
    {
      v42 = CGDataProviderCreateWithCFData(v38);
      if (v42)
      {
        v43 = v42;
        v44 = CGPDFDocumentCreateWithProvider(v42);
        CGDataProviderRelease(v43);
        if (v44)
        {
          v45 = [[AKPDFDocumentWrapper alloc] initWithPDF:v44];
          CGPDFDocumentRelease(v44);
          v67[0] = @"imageData";
          v67[1] = @"pdfDocumentWrapper";
          v68[0] = v38;
          v68[1] = v45;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];

          objc_setAssociatedObject(v10, @"AKLoupeAnnotationRendererPDFDocumentWrapperDict", v46, 0x301);
          v40 = v46;
        }
      }
    }

    if (!v40)
    {
      goto LABEL_21;
    }
  }

  v47 = [v40 objectForKey:@"pdfDocumentWrapper"];
  v48 = [v47 pdfDocument];

  if (!v48 || !CGPDFDocumentGetNumberOfPages(v48))
  {
LABEL_21:

    goto LABEL_27;
  }

  Page = CGPDFDocumentGetPage(v48, 1uLL);

  if (Page)
  {
    goto LABEL_5;
  }

LABEL_27:
  v59 = [v10 strokeColor];

  if (v59)
  {
    if (![v10 brushStyle])
    {
      v66 = [v10 strokeColor];
      CGContextSetStrokeColorWithColor(a4, [v66 CGColor]);

      [v10 strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:?];
      if ([v10 isDashed])
      {
        [v10 strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:?];
      }

      v81.origin.x = v16;
      v81.origin.y = v18;
      v81.size.width = v20;
      v81.size.height = v22;
      CGContextStrokeEllipseInRect(a4, v81);
      if (v14)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v80.origin.x = v16;
    v80.origin.y = v18;
    v80.size.width = v20;
    v80.size.height = v22;
    v60 = CGPathCreateWithEllipseInRect(v80, 0);
    v61 = [v10 brushStyle];
    v62 = [v10 strokeColor];
    [v10 strokeWidth];
    v63 = [AKTSDBrushStroke strokeWithType:v61 color:v62 width:?];

    v64 = [AKTSDBezierPath bezierPathWithCGPath:v60];
    v65 = objc_alloc_init(AKTSDShape);
    [(AKTSDShape *)v65 setStroke:v63];
    [(AKTSDShape *)v65 setPath:v64];
    [(AKTSDShape *)v65 drawInContext:a4];
    CGPathRelease(v60);
  }

  if (v14)
  {
LABEL_31:
    [AKAnnotationRendererUtilities endShadowInContext:a4];
  }

LABEL_32:
  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [v7 strokeWidth];
  v9 = v8 * -0.5;
  [v7 rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  v23 = CGRectInset(v22, v9, v9);
  v18 = CGPathCreateWithEllipseInRect(v23, 0);
  v21.x = x;
  v21.y = y;
  v19 = CGPathContainsPoint(v18, 0, v21, 0);
  CGPathRelease(v18);
  return v19;
}

+ (CGRect)innerClipRect:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 strokeWidth];
  v13 = v12;

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;

  return CGRectInset(*&v14, v13 * 0.5, v13 * 0.5);
}

@end