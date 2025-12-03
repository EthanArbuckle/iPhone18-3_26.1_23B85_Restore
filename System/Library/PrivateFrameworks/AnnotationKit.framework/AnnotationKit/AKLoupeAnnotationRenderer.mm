@interface AKLoupeAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)innerClipRect:(id)rect;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKLoupeAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy strokeWidth];
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
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:x, y, width, height];
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
  v68[2] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  nilCopy = nil;
  optionsCopy = options;
  CGContextSaveGState(context);
  forDisplay = [optionsCopy forDisplay];

  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:forDisplay pageControllerOrNil:nilCopy];
  hasShadow = [annotationCopy hasShadow];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  [annotationCopy rectangle];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_getAssociatedObject(annotationCopy, off_27E398E98);
  if (v23)
  {
    objc_setAssociatedObject(annotationCopy, @"AKLoupeAnnotationRendererPDFDocumentWrapperDict", 0, 0x301);
    Page = 0;
LABEL_5:
    CGContextSaveGState(context);
    [objc_opt_class() innerClipRect:annotationCopy];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    clearColor = [MEMORY[0x277D75348] clearColor];
    CGContextSetFillColorWithColor(context, [clearColor CGColor]);

    v69.origin.x = v16;
    v69.origin.y = v18;
    v69.size.width = v20;
    v69.size.height = v22;
    CGContextFillRect(context, v69);
    v70.origin.x = v26;
    v70.origin.y = v28;
    v70.size.width = v30;
    v70.size.height = v32;
    CGContextAddEllipseInRect(context, v70);
    CGContextClip(context);
    strokeColor = [annotationCopy strokeColor];
    cGColor = [strokeColor CGColor];

    if (!cGColor || vabdd_f64(0.0, CGColorGetAlpha(cGColor)) < 0.0005)
    {
      grayColor = [MEMORY[0x277D75348] grayColor];
      cGColor = [grayColor CGColor];
    }

    CGContextSetStrokeColorWithColor(context, cGColor);
    v71.origin.x = v16;
    v71.origin.y = v18;
    v71.size.width = v20;
    v71.size.height = v22;
    CGContextStrokeEllipseInRect(context, v71);
    if (v23)
    {
      CGContextSetInterpolationQuality(context, kCGInterpolationNone);
      akCGImage = [v23 akCGImage];
      v72.origin.x = v16;
      v72.origin.y = v18;
      v72.size.width = v20;
      v72.size.height = v22;
      CGContextDrawImage(context, v72, akCGImage);
    }

    else
    {
      CGContextSaveGState(context);
      v73.origin.x = v26;
      v73.origin.y = v28;
      v73.size.width = v30;
      v73.size.height = v32;
      v74 = CGRectInset(v73, 0.1, 0.1);
      CGContextAddEllipseInRect(context, v74);
      CGContextClip(context);
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      CGContextSetFillColorWithColor(context, [whiteColor CGColor]);

      v75.origin.x = v16;
      v75.origin.y = v18;
      v75.size.width = v20;
      v75.size.height = v22;
      CGContextFillRect(context, v75);
      CGContextRestoreGState(context);
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
      CGContextTranslateCTM(context, MinX, MinY);
      v52 = kCGInterpolationNone;
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      CGContextScaleCTM(context, v20 / BoxRect.size.width, v22 / BoxRect.size.height);
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      CGContextClipToRect(context, v79);
      [annotationCopy magnification];
      if (v57 < 3.0)
      {
        [annotationCopy magnification];
        if (v58 != 2.0)
        {
          v52 = kCGInterpolationHigh;
        }
      }

      CGContextSetInterpolationQuality(context, v52);
      CGContextSetShouldSmoothFonts(context, 0);
      CGContextSetShouldSubpixelPositionFonts(context, 1);
      CGContextSetShouldSubpixelQuantizeFonts(context, 1);
      CGContextDrawPDFPage(context, Page);
    }

    CGContextRestoreGState(context);
    goto LABEL_27;
  }

  imageData = [annotationCopy imageData];
  v39 = objc_getAssociatedObject(annotationCopy, @"AKLoupeAnnotationRendererPDFDocumentWrapperDict");
  v40 = v39;
  if (!v39 || ([v39 objectForKey:@"imageData"], v41 = objc_claimAutoreleasedReturnValue(), v41, v41 != imageData))
  {
    if (imageData)
    {
      v42 = CGDataProviderCreateWithCFData(imageData);
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
          v68[0] = imageData;
          v68[1] = v45;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];

          objc_setAssociatedObject(annotationCopy, @"AKLoupeAnnotationRendererPDFDocumentWrapperDict", v46, 0x301);
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
  pdfDocument = [v47 pdfDocument];

  if (!pdfDocument || !CGPDFDocumentGetNumberOfPages(pdfDocument))
  {
LABEL_21:

    goto LABEL_27;
  }

  Page = CGPDFDocumentGetPage(pdfDocument, 1uLL);

  if (Page)
  {
    goto LABEL_5;
  }

LABEL_27:
  strokeColor2 = [annotationCopy strokeColor];

  if (strokeColor2)
  {
    if (![annotationCopy brushStyle])
    {
      strokeColor3 = [annotationCopy strokeColor];
      CGContextSetStrokeColorWithColor(context, [strokeColor3 CGColor]);

      [annotationCopy strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:?];
      if ([annotationCopy isDashed])
      {
        [annotationCopy strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:?];
      }

      v81.origin.x = v16;
      v81.origin.y = v18;
      v81.size.width = v20;
      v81.size.height = v22;
      CGContextStrokeEllipseInRect(context, v81);
      if (hasShadow)
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
    brushStyle = [annotationCopy brushStyle];
    strokeColor4 = [annotationCopy strokeColor];
    [annotationCopy strokeWidth];
    v63 = [AKTSDBrushStroke strokeWithType:brushStyle color:strokeColor4 width:?];

    v64 = [AKTSDBezierPath bezierPathWithCGPath:v60];
    v65 = objc_alloc_init(AKTSDShape);
    [(AKTSDShape *)v65 setStroke:v63];
    [(AKTSDShape *)v65 setPath:v64];
    [(AKTSDShape *)v65 drawInContext:context];
    CGPathRelease(v60);
  }

  if (hasShadow)
  {
LABEL_31:
    [AKAnnotationRendererUtilities endShadowInContext:context];
  }

LABEL_32:
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v9 = v8 * -0.5;
  [annotationCopy rectangle];
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

+ (CGRect)innerClipRect:(id)rect
{
  rectCopy = rect;
  [rectCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [rectCopy strokeWidth];
  v13 = v12;

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;

  return CGRectInset(*&v14, v13 * 0.5, v13 * 0.5);
}

@end