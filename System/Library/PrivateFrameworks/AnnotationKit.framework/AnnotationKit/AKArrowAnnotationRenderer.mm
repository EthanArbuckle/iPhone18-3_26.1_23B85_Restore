@interface AKArrowAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newLinePathForArrow:(id)arrow withHeads:(BOOL)heads fromBezierParameter:(double)parameter toBezierParameter:(double)bezierParameter optionalPageController:(id)controller optionalContext:(CGContext *)context;
+ (CGPoint)_cubicBezierPointForParameter:(double)parameter start:(CGPoint)start controlPt1:(CGPoint)pt1 controlPt2:(CGPoint)pt2 end:(CGPoint)end;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (unint64_t)_drawableArrowHeads:(id)heads;
+ (void)_arrowHeadLineIntersection:(id)intersection outStartIntersection:(CGPoint *)startIntersection outBezierStartParameter:(double *)parameter outEndIntersection:(CGPoint *)endIntersection outBezierEndParameter:(double *)endParameter;
+ (void)_arrowHeadPathsForArrow:(id)arrow inOutStartArrowHead:(CGPath *)head outBezierStartParameter:(double *)parameter inOutEndArrowHead:(CGPath *)arrowHead outBezierEndParameter:(double *)endParameter;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
+ (void)_controlPointsForArrow:(id)arrow outControlPoint1:(CGPoint *)point1 outControlPoint2:(CGPoint *)point2;
+ (void)_drawPathForArrow:(id)arrow inContext:(CGContext *)context options:(id)options inPath:(CGPath *)path pageControllerForPixelAlignmentOrNil:(id)nil minimumGrabbableBorderThickness:(double)thickness;
@end

@implementation AKArrowAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v6 = +[AKAnnotationRendererOptions defaultOptions];
  [self _drawPathForArrow:annotationCopy inContext:0 options:v6 inPath:Mutable pageControllerForPixelAlignmentOrNil:0 minimumGrabbableBorderThickness:1.0];

  BoundingBox = CGPathGetBoundingBox(Mutable);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGPathRelease(Mutable);
  [annotationCopy strokeWidth];
  v12 = -v11;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43 = CGRectInset(v42, v12, v12);
  v13 = v43.origin.x;
  v14 = v43.origin.y;
  v15 = v43.size.width;
  v16 = v43.size.height;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v13, v14, v15, v16];
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
  }

  v21 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:annotationCopy];
  if ([v21 length] || (objc_msgSend(annotationCopy, "fillColor"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    [self _concreteTextBoundsOfAnnotation:annotationCopy withOptionalAnnotationRect:0 optionalText:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    if (+[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [annotationCopy originalExifOrientation]))
    {
      v31 = -1.0;
      v32 = -5.0;
    }

    else
    {
      v31 = -5.0;
      v32 = -1.0;
    }

    v44.origin.x = v24;
    v44.origin.y = v26;
    v44.size.width = v28;
    v44.size.height = v30;
    v50 = CGRectInset(v44, v31, v32);
    v45.origin.x = v13;
    v45.origin.y = v14;
    v45.size.width = v15;
    v45.size.height = v16;
    v46 = CGRectUnion(v45, v50);
    v13 = v46.origin.x;
    v14 = v46.origin.y;
    v15 = v46.size.width;
    v16 = v46.size.height;
  }

  v47.origin.x = v13;
  v47.origin.y = v14;
  v47.size.width = v15;
  v47.size.height = v16;
  v48 = CGRectInset(v47, -1.0, -1.0);
  v33 = v48.origin.x;
  v34 = v48.origin.y;
  v35 = v48.size.width;
  v36 = v48.size.height;

  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
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

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  annotationCopy = annotation;
  textCopy = text;
  v9 = textCopy;
  if (textCopy)
  {
    v10 = textCopy;
  }

  else
  {
    v10 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:annotationCopy];
    if (!v10)
    {
LABEL_8:
      typingAttributes = [annotationCopy typingAttributes];
      v18 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"fg" attributes:typingAttributes];

      v14 = v18;
      v10 = v14;
      goto LABEL_9;
    }
  }

  if (![v10 length])
  {
    goto LABEL_8;
  }

  string = [v10 string];
  stringByTrimmingTrailingWhitespaceFromEachLine = [string stringByTrimmingTrailingWhitespaceFromEachLine];

  typingAttributes2 = [annotationCopy typingAttributes];
  v14 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:stringByTrimmingTrailingWhitespaceFromEachLine attributes:typingAttributes2];

  if (![v14 length])
  {
    typingAttributes3 = [annotationCopy typingAttributes];
    v16 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"fg" attributes:typingAttributes3];

    v14 = v16;
  }

LABEL_9:
  [annotationCopy originalModelBaseScaleFactor];
  v19 = [AKTextAnnotationAttributeHelper newTextStorage:v10 byApplyingScaleFactor:?];

  [annotationCopy originalModelBaseScaleFactor];
  v20 = [AKTextAnnotationAttributeHelper newTextStorage:v14 byApplyingScaleFactor:?];

  [AKTextAnnotationRenderHelper unconstrainedSizeForText:v19];
  v22 = v21;
  [AKTextAnnotationRenderHelper unconstrainedSizeForText:v20];
  v24 = v23;
  v26 = v25;
  v115 = v22 - v23;
  [annotationCopy strokeWidth];
  v28 = v27 * -1.5 * 0.5;
  v118 = v28 + -1.0;
  v119 = v28 + -5.0;
  v29 = v26 + (v28 + -1.0) * -2.0;
  if (v29 <= v24 + (v28 + -5.0) * -2.0)
  {
    v30 = v24 + (v28 + -5.0) * -2.0;
  }

  else
  {
    v30 = v26 + (v28 + -1.0) * -2.0;
  }

  originalExifOrientation = [annotationCopy originalExifOrientation];
  v32 = [AKGeometryHelper inverseExifOrientation:originalExifOrientation];
  v33 = [AKGeometryHelper exifOrientationHasReversedAxes:originalExifOrientation];
  [annotationCopy startPoint];
  v36 = v34;
  v37 = v35;
  if (v33)
  {
    v38 = v30;
  }

  else
  {
    v38 = v29;
  }

  if (v33)
  {
    v39 = v29;
  }

  else
  {
    v39 = v30;
  }

  v113 = v35 - v38 * 0.5;
  v114 = v34 - v39 * 0.5;
  v116 = v39;
  v117 = v38;
  [AKGeometryHelper adjustRect:"adjustRect:forExifOrientation:aboutCenter:" forExifOrientation:originalExifOrientation aboutCenter:?];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v121 = 0.0;
  v122 = 0.0;
  v120[0] = 0;
  v120[1] = 0;
  [self _controlPointsForArrow:annotationCopy outControlPoint1:&v121 outControlPoint2:v120];
  v107 = v36;
  [AKGeometryHelper normalizeVectorPoint:v36 - v121, v37 - v122];
  v111 = v49;
  v112 = v48;
  [AKGeometryHelper adjustPoint:"adjustPoint:forExifOrientation:aboutCenter:" forExifOrientation:originalExifOrientation aboutCenter:?];
  [AKGeometryHelper angleOfVector:?];
  if (v50 > 3.14159265)
  {
    v50 = 6.28318531 - v50;
  }

  v105 = v50;
  v123.origin.x = v41;
  v123.origin.y = v43;
  v123.size.width = v45;
  v123.size.height = v47;
  MinX = CGRectGetMinX(v123);
  v124.origin.x = v41;
  v124.origin.y = v43;
  v124.size.width = v45;
  v124.size.height = v47;
  v52 = MinX + CGRectGetHeight(v124) * 0.5;
  v125.origin.x = v41;
  v125.origin.y = v43;
  v125.size.width = v45;
  v125.size.height = v47;
  MidY = CGRectGetMidY(v125);
  v126.origin.x = v41;
  v126.origin.y = v43;
  v126.size.width = v45;
  v126.size.height = v47;
  MaxX = CGRectGetMaxX(v126);
  v127.origin.x = v41;
  v127.origin.y = v43;
  v127.size.width = v45;
  v127.size.height = v47;
  v55 = MaxX - CGRectGetHeight(v127) * 0.5;
  v128.origin.x = v41;
  v128.origin.y = v43;
  v128.size.width = v45;
  v128.size.height = v47;
  v56 = CGRectGetMidY(v128);
  v108 = MidY;
  v109 = v52;
  v106 = v55;
  v57 = v55 - v52;
  v58 = v56 - MidY;
  v59 = v56;
  v60 = pow((v105 + -0.785398163) / 1.57079633 * 2.0 + -1.0, 7.0);
  v61 = 1.0;
  if (v60 <= 1.0)
  {
    v62 = v60;
  }

  else
  {
    v62 = 1.0;
  }

  if (v60 >= -1.0)
  {
    v63 = v62;
  }

  else
  {
    v63 = -1.0;
  }

  if (v63 + 1.0 <= 1.0)
  {
    v64 = v63 + 1.0;
  }

  else
  {
    v64 = 1.0;
  }

  if (v63 + 1.0 >= 0.0)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0.0;
  }

  if (1.0 - v63 <= 1.0)
  {
    v61 = 1.0 - v63;
  }

  if (1.0 - v63 >= 0.0)
  {
    v66 = v61;
  }

  else
  {
    v66 = 0.0;
  }

  defaultParagraphStyle = [v19 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
  if (!defaultParagraphStyle)
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  alignment = [defaultParagraphStyle alignment];
  if (v63 <= 0.0)
  {
    v69 = v63;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v59 + v69 * v58;
  v71 = v107 + v63 * 0.5 * v57;
  v72 = v37 + v63 * 0.5 * v58;
  if (v65 >= v66)
  {
    v73 = v66;
  }

  else
  {
    v73 = v65;
  }

  v74 = v115 * (v73 * 0.5);
  v75 = fmax(v63, 0.0);
  v76 = v109 + v75 * v57;
  v77 = v108 + v75 * v58;
  if (!alignment)
  {
    v74 = 0.0;
    v71 = v76;
    v72 = v77;
  }

  if (alignment == 2)
  {
    v74 = v115 * v65;
    v78 = v106 + v69 * v57;
  }

  else
  {
    v78 = v71;
  }

  if (alignment == 2)
  {
    v79 = v70;
  }

  else
  {
    v79 = v72;
  }

  v110 = fmax(v74, 0.0);
  [AKGeometryHelper adjustPoint:v32 forExifOrientation:v78 aboutCenter:v79, v107, v37, v71];
  v81 = v114 + v107 - v80;
  v83 = v113 + v37 - v82;
  [AKGeometryHelper intersectLineSegmentStartingAt:v107 ending:v37 withRect:v107 - v112 * 1000000.0 andRoundedCornerRadius:v37 - v111 * 1000000.0, v81, v83, v116, v117, 0];
  v86 = hypot(v84 - v107, v85 - v37);
  v87 = v81 + v86 * v112;
  v88 = v83 + v86 * v111;
  v129.origin.x = v87;
  v129.origin.y = v88;
  v129.size.width = v116;
  v129.size.height = v117;
  MidX = CGRectGetMidX(v129);
  v130.origin.x = v87;
  v130.origin.y = v88;
  v130.size.width = v116;
  v130.size.height = v117;
  [AKGeometryHelper adjustRect:originalExifOrientation forExifOrientation:v87 aboutCenter:v88, v116, v117, MidX, CGRectGetMidY(v130)];
  [AKGeometryHelper adjustRect:v32 forExifOrientation:v90 - v110 aboutCenter:?];
  v95 = v119;
  if (v33)
  {
    v96 = v118;
  }

  else
  {
    v96 = v119;
  }

  if (!v33)
  {
    v95 = v118;
  }

  v131 = CGRectInset(*&v91, -v96, -v95);
  x = v131.origin.x;
  y = v131.origin.y;
  width = v131.size.width;
  height = v131.size.height;

  v101 = x;
  v102 = y;
  v103 = width;
  v104 = height;
  result.size.height = v104;
  result.size.width = v103;
  result.origin.y = v102;
  result.origin.x = v101;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  [optionsCopy allowHDR];
  CGContextSaveGState(context);
  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
  hasShadow = [annotationCopy hasShadow];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  CGContextSaveGState(context);
  strokeColor = [annotationCopy strokeColor];

  if (strokeColor)
  {
    v14 = [annotationCopy strokeColorForOptions:optionsCopy];
    CGContextSetStrokeColorWithColor(context, [v14 CGColor]);

    v15 = [annotationCopy strokeColorForOptions:optionsCopy];
    CGContextSetFillColorWithColor(context, [v15 CGColor]);

    [annotationCopy strokeWidth];
    [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:?];
    if ([annotationCopy isDashed])
    {
      [annotationCopy strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:?];
    }

    [self _drawPathForArrow:annotationCopy inContext:context options:optionsCopy inPath:0 pageControllerForPixelAlignmentOrNil:nilCopy minimumGrabbableBorderThickness:1.0];
  }

  CGContextRestoreGState(context);
  fillColor = [annotationCopy fillColor];
  if (fillColor)
  {
    v17 = fillColor;
    fillColor2 = [annotationCopy fillColor];
    Alpha = CGColorGetAlpha([fillColor2 CGColor]);

    if (Alpha != 0.0)
    {
      [self _concreteTextBoundsOfAnnotation:annotationCopy withOptionalAnnotationRect:0 optionalText:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      if (+[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [annotationCopy originalExifOrientation]))
      {
        v28 = -1.0;
        v29 = -5.0;
      }

      else
      {
        v28 = -5.0;
        v29 = -1.0;
      }

      v41.origin.x = v21;
      v41.origin.y = v23;
      v41.size.width = v25;
      v41.size.height = v27;
      v42 = CGRectInset(v41, v28, v29);
      v43 = CGRectInset(v42, 1.0, 1.0);
      [AKGeometryHelper renderingStrokeAlignedRectForRect:nilCopy withStrokeWidth:context alignToScreenUsingPageController:annotationCopy orAlignToContext:v43.origin.x usingAnnotation:v43.origin.y, v43.size.width, v43.size.height, 0.0];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [annotationCopy fillColorForOptions:optionsCopy];
      CGContextSetFillColorWithColor(context, [v38 CGColor]);

      v44.origin.x = v31;
      v44.origin.y = v33;
      v44.size.width = v35;
      v44.size.height = v37;
      CGContextFillRect(context, v44);
    }
  }

  [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities endShadowInContext:context];
  }

  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v11 = +[AKAnnotationRendererOptions defaultOptions];
  [self _drawPathForArrow:annotationCopy inContext:0 options:v11 inPath:Mutable pageControllerForPixelAlignmentOrNil:0 minimumGrabbableBorderThickness:thickness];

  v13.x = x;
  v13.y = y;
  LOBYTE(self) = CGPathContainsPoint(Mutable, 0, v13, 0);
  CGPathRelease(Mutable);
  return self;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  [self _concreteTextBoundsOfAnnotation:annotation withOptionalAnnotationRect:0 optionalText:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

+ (void)_drawPathForArrow:(id)arrow inContext:(CGContext *)context options:(id)options inPath:(CGPath *)path pageControllerForPixelAlignmentOrNil:(id)nil minimumGrabbableBorderThickness:(double)thickness
{
  arrowCopy = arrow;
  optionsCopy = options;
  nilCopy = nil;
  [optionsCopy allowHDR];
  [arrowCopy strokeWidth];
  v18 = v17;
  v45 = 1.0;
  v46 = 0.0;
  Mutable = CGPathCreateMutable();
  v20 = CGPathCreateMutable();
  [self _arrowHeadPathsForArrow:arrowCopy inOutStartArrowHead:Mutable outBezierStartParameter:&v46 inOutEndArrowHead:v20 outBezierEndParameter:&v45];
  if (!context)
  {
    if (!path || (CGPathAddPath(path, 0, Mutable), CGPathAddPath(path, 0, v20), (v30 = [self _newLinePathForArrow:arrowCopy withHeads:1 fromBezierParameter:nilCopy toBezierParameter:0 optionalPageController:v46 optionalContext:v45]) == 0))
    {
LABEL_20:
      if (!Mutable)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v31 = v30;
    if (v18 >= thickness)
    {
      thicknessCopy = v18;
    }

    else
    {
      thicknessCopy = thickness;
    }

    v33 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v30 withStrokeWidth:thicknessCopy];
    if (v33)
    {
      v34 = v33;
      CGPathAddPath(path, 0, v33);
      CFRelease(v34);
    }

    v35 = v31;
LABEL_19:
    CFRelease(v35);
    goto LABEL_20;
  }

  if (![arrowCopy brushStyle])
  {
    CGContextBeginPath(context);
    CGContextAddPath(context, Mutable);
    CGContextAddPath(context, v20);
    CGContextFillPath(context);
    CGContextStrokePath(context);
  }

  if (![arrowCopy brushStyle])
  {
    v36 = [self _newLinePathForArrow:arrowCopy withHeads:1 fromBezierParameter:nilCopy toBezierParameter:context optionalPageController:v46 optionalContext:v45];
    if (!v36)
    {
      goto LABEL_20;
    }

    v37 = v36;
    CGContextBeginPath(context);
    CGContextAddPath(context, v37);
    CGContextStrokePath(context);
    v35 = v37;
    goto LABEL_19;
  }

  v21 = [self _newLinePathForArrow:arrowCopy withHeads:0 fromBezierParameter:0 toBezierParameter:0 optionalPageController:v46 optionalContext:v45];
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = v21;
  brushStyle = [arrowCopy brushStyle];
  v24 = [arrowCopy strokeColorForOptions:optionsCopy];
  [arrowCopy strokeWidth];
  v25 = [AKTSDBrushStroke strokeWithType:brushStyle color:v24 width:?];

  v26 = [AKTSDBezierPath bezierPathWithCGPath:v22];
  v27 = objc_alloc_init(AKTSDShape);
  [(AKTSDShape *)v27 setStroke:v25];
  [(AKTSDShape *)v27 setPath:v26];
  if ([arrowCopy arrowHeadStyle] == 1)
  {
    if (!CGPathIsEmpty(Mutable))
    {
      [(AKTSDShape *)v27 setHeadLineEnd:0];
      [AKTSDLineEnd lineEndWithType:0];
      v43 = v26;
      v29 = v28 = v25;
      [(AKTSDShape *)v27 setTailLineEnd:v29];

      v25 = v28;
      v26 = v43;
    }
  }

  else if ([arrowCopy arrowHeadStyle] == 2)
  {
    if (!CGPathIsEmpty(v20))
    {
      [AKTSDLineEnd lineEndWithType:0];
      v44 = v26;
      v39 = v38 = v25;
      [(AKTSDShape *)v27 setHeadLineEnd:v39];

      v25 = v38;
      v26 = v44;
      [(AKTSDShape *)v27 setTailLineEnd:0];
    }
  }

  else if ([arrowCopy arrowHeadStyle] == 3)
  {
    v42 = v25;
    if (CGPathIsEmpty(v20))
    {
      [(AKTSDShape *)v27 setHeadLineEnd:0];
    }

    else
    {
      v40 = [AKTSDLineEnd lineEndWithType:0];
      [(AKTSDShape *)v27 setHeadLineEnd:v40];
    }

    if (CGPathIsEmpty(Mutable))
    {
      [(AKTSDShape *)v27 setTailLineEnd:0];
    }

    else
    {
      v41 = [AKTSDLineEnd lineEndWithType:0];
      [(AKTSDShape *)v27 setTailLineEnd:v41];
    }

    v25 = v42;
  }

  [(AKTSDShape *)v27 drawInContext:context, v42];
  CGPathRelease(v22);

  if (Mutable)
  {
LABEL_21:
    CFRelease(Mutable);
  }

LABEL_22:
  if (v20)
  {
    CFRelease(v20);
  }
}

+ (unint64_t)_drawableArrowHeads:(id)heads
{
  headsCopy = heads;
  [headsCopy strokeWidth];
  v5 = v4 * 5.0;
  v6 = ~[headsCopy arrowHeadStyle] & 3;
  arrowHeadStyle = [headsCopy arrowHeadStyle];
  if (v6)
  {
    if (arrowHeadStyle)
    {
      [headsCopy startPoint];
      v24 = v23;
      [headsCopy endPoint];
      v26 = v24 - v25;
      [headsCopy startPoint];
      v28 = v27;
      [headsCopy endPoint];
      v8 = hypot(v26, v28 - v29) > v5;
    }

    else
    {
      v8 = 0;
    }

    if (([headsCopy arrowHeadStyle] & 2) != 0)
    {
      [headsCopy startPoint];
      v31 = v30;
      [headsCopy endPoint];
      v19 = v31 - v32;
      [headsCopy startPoint];
      v21 = v33;
      [headsCopy endPoint];
LABEL_12:
      if (hypot(v19, v21 - v22) > v5)
      {
        v8 |= 2uLL;
      }
    }
  }

  else
  {
    if (arrowHeadStyle)
    {
      [headsCopy startPoint];
      v10 = v9;
      [headsCopy midPoint];
      v12 = v10 - v11;
      [headsCopy startPoint];
      v14 = v13;
      [headsCopy midPoint];
      v8 = hypot(v12, v14 - v15) > v5;
    }

    else
    {
      v8 = 0;
    }

    if (([headsCopy arrowHeadStyle] & 2) != 0)
    {
      [headsCopy endPoint];
      v17 = v16;
      [headsCopy midPoint];
      v19 = v17 - v18;
      [headsCopy endPoint];
      v21 = v20;
      [headsCopy midPoint];
      goto LABEL_12;
    }
  }

  return v8;
}

+ (void)_arrowHeadPathsForArrow:(id)arrow inOutStartArrowHead:(CGPath *)head outBezierStartParameter:(double *)parameter inOutEndArrowHead:(CGPath *)arrowHead outBezierEndParameter:(double *)endParameter
{
  arrowCopy = arrow;
  [arrowCopy strokeWidth];
  v14 = v13;
  [arrowCopy endPoint];
  v16 = v15;
  v18 = v17;
  [arrowCopy startPoint];
  if (v19 != v16 || v20 != v18)
  {
    v22 = v19;
    v23 = v20;
    v42 = v14;
    v43 = vdupq_n_s64(0x43E0000000000000uLL);
    v44 = v43;
    [self _arrowHeadLineIntersection:arrowCopy outStartIntersection:&v44 outBezierStartParameter:parameter outEndIntersection:&v43 outBezierEndParameter:endParameter];
    v24 = [self _drawableArrowHeads:arrowCopy];
    v25 = v24;
    if (head)
    {
      if (v24)
      {
        v27 = *&v44.i64[1];
        v26 = *v44.i64;
        v28 = v22 - *v44.i64;
        v29 = v23 - *&v44.i64[1];
        v30 = hypot(v22 - *v44.i64, v23 - *&v44.i64[1]);
        if (fabs(v30) >= 0.0005)
        {
          v31 = v42 * v29 * 2.5 / v30;
          v32 = v26 - v31;
          v33 = v42 * v28 * 2.5 / v30;
          CGPathMoveToPoint(head, 0, v32, v27 + v33);
          CGPathAddLineToPoint(head, 0, v22, v23);
          CGPathAddLineToPoint(head, 0, v31 + *v44.i64, *&v44.i64[1] - v33);
          CGPathCloseSubpath(head);
        }
      }
    }

    if (arrowHead)
    {
      if ((v25 & 2) != 0)
      {
        v35 = *&v43.i64[1];
        v34 = *v43.i64;
        v36 = v16 - *v43.i64;
        v37 = v18 - *&v43.i64[1];
        v38 = hypot(v16 - *v43.i64, v18 - *&v43.i64[1]);
        if (fabs(v38) >= 0.0005)
        {
          v39 = v42 * v37 * 2.5 / v38;
          v40 = v34 - v39;
          v41 = v42 * v36 * 2.5 / v38;
          CGPathMoveToPoint(arrowHead, 0, v40, v35 + v41);
          CGPathAddLineToPoint(arrowHead, 0, v16, v18);
          CGPathAddLineToPoint(arrowHead, 0, v39 + *v43.i64, *&v43.i64[1] - v41);
          CGPathCloseSubpath(arrowHead);
        }
      }
    }
  }
}

+ (void)_controlPointsForArrow:(id)arrow outControlPoint1:(CGPoint *)point1 outControlPoint2:(CGPoint *)point2
{
  arrowCopy = arrow;
  [arrowCopy endPoint];
  v9 = v8;
  v11 = v10;
  [arrowCopy startPoint];
  v13 = v12;
  v15 = v14;
  [arrowCopy midPoint];
  v17 = v16;
  v19 = v18;

  v34 = hypot(v9 - v13, v11 - v15);
  [AKGeometryHelper normalizeVector:v9 - v13, v11 - v15];
  v21 = v20;
  v23 = v22;
  v24 = (v9 + v13) * 0.5;
  v25 = (v11 + v15) * 0.5;
  v26 = v19 - v25;
  v27 = hypot(v17 - v24, v19 - v25);
  v28 = v27 / 0.75;
  if (v27 == 0.0)
  {
    v29 = 0.0;
    v30 = 1.0;
  }

  else
  {
    [AKGeometryHelper normalizeVector:v17 - v24, v26];
  }

  v31 = v24 + v28 * v30;
  v32 = v25 + v28 * v29;
  v33 = v34 * 0.166666667;
  if (point1)
  {
    point1->x = v31 - v33 * v21;
    point1->y = v32 - v33 * v23;
  }

  if (point2)
  {
    point2->x = v31 + v33 * v21;
    point2->y = v32 + v33 * v23;
  }
}

+ (CGPoint)_cubicBezierPointForParameter:(double)parameter start:(CGPoint)start controlPt1:(CGPoint)pt1 controlPt2:(CGPoint)pt2 end:(CGPoint)end
{
  y = pt2.y;
  v8 = pt1.y;
  v9 = start.y;
  [self _oneDimensionalCubicBezierValueForParameter:parameter start:start.x controlPt1:pt1.x controlPt2:pt2.x end:end.x];
  v13 = v12;
  [self _oneDimensionalCubicBezierValueForParameter:parameter start:v9 controlPt1:v8 controlPt2:y end:end.y];
  v15 = v14;
  v16 = v13;
  result.y = v15;
  result.x = v16;
  return result;
}

+ (void)_arrowHeadLineIntersection:(id)intersection outStartIntersection:(CGPoint *)startIntersection outBezierStartParameter:(double *)parameter outEndIntersection:(CGPoint *)endIntersection outBezierEndParameter:(double *)endParameter
{
  intersectionCopy = intersection;
  v13 = [self _drawableArrowHeads:intersectionCopy];
  [intersectionCopy startPoint];
  v15 = v14;
  v17 = v16;
  [intersectionCopy endPoint];
  v19 = v18;
  v21 = v20;
  [intersectionCopy strokeWidth];
  [intersectionCopy brushStyle];
  v32 = 0.0;
  v33 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  [self _controlPointsForArrow:intersectionCopy outControlPoint1:&v32 outControlPoint2:&v30];
  if ((v13 & 2) != 0)
  {
    [intersectionCopy endPoint];
    v22 = 1.0;
    while (v22 > 0.0)
    {
      v22 = v22 + -0.025;
      [self _cubicBezierPointForParameter:v22 start:v15 controlPt1:v17 controlPt2:v32 end:{v33, v30, v31, v19, v21}];
      [AKGeometryHelper intersectLineSegmentStartingAt:"intersectLineSegmentStartingAt:ending:withCircleWithCenter:andRadius:farthestResult:" ending:0 withCircleWithCenter:? andRadius:? farthestResult:?];
      if (v23 != 9.22337204e18 && v24 != 9.22337204e18)
      {
        if (endIntersection)
        {
          endIntersection->x = v23;
          endIntersection->y = v24;
        }

        if (endParameter)
        {
          *endParameter = v22 + 0.025;
        }

        break;
      }
    }
  }

  if (v13)
  {
    [intersectionCopy startPoint];
    v26 = 0.0;
    while (v26 < 1.0)
    {
      v26 = v26 + 0.025;
      [self _cubicBezierPointForParameter:v26 start:v15 controlPt1:v17 controlPt2:v32 end:{v33, v30, v31, v19, v21}];
      [AKGeometryHelper intersectLineSegmentStartingAt:"intersectLineSegmentStartingAt:ending:withCircleWithCenter:andRadius:farthestResult:" ending:0 withCircleWithCenter:? andRadius:? farthestResult:?];
      if (v27 != 9.22337204e18 && v28 != 9.22337204e18)
      {
        if (startIntersection)
        {
          startIntersection->x = v27;
          startIntersection->y = v28;
        }

        if (parameter)
        {
          *parameter = v26 + -0.025;
        }

        break;
      }
    }
  }
}

+ (CGPath)_newLinePathForArrow:(id)arrow withHeads:(BOOL)heads fromBezierParameter:(double)parameter toBezierParameter:(double)bezierParameter optionalPageController:(id)controller optionalContext:(CGContext *)context
{
  headsCopy = heads;
  arrowCopy = arrow;
  controllerCopy = controller;
  v70 = 0.0;
  v71 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  [arrowCopy endPoint];
  v17 = v16;
  v19 = v18;
  [arrowCopy startPoint];
  MinX = v21;
  MinY = v20;
  if (v21 != v17 || v20 != v19)
  {
    [self _controlPointsForArrow:arrowCopy outControlPoint1:&v70 outControlPoint2:&v68];
    v25 = !headsCopy || ([self _drawableArrowHeads:arrowCopy] & 3) == 0;
    if (controllerCopy | context)
    {
      if (vabdd_f64(MinX, v17) >= 0.0005 || vabdd_f64(v17, v70) >= 0.0005 || vabdd_f64(v70, v68) >= 0.0005)
      {
        if (vabdd_f64(MinY, v19) < 0.0005 && vabdd_f64(v19, v71) < 0.0005 && vabdd_f64(v71, v69) < 0.0005)
        {
          v77.size.width = v17 - MinX;
          v77.size.height = v19 - MinY;
          v77.origin.x = MinX;
          v77.origin.y = MinY;
          v78 = CGRectStandardize(v77);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;
          [arrowCopy strokeWidth];
          [AKGeometryHelper renderingStrokeAlignedRectForRect:controllerCopy withStrokeWidth:context alignToScreenUsingPageController:arrowCopy orAlignToContext:x usingAnnotation:y, width, height, v48];
          v53 = v49;
          v54 = v50;
          v55 = v51;
          recta = v52;
          if (MinX <= v17)
          {
            MinX = CGRectGetMinX(*&v49);
            v83.origin.x = v53;
            v83.origin.y = v54;
            v83.size.width = v55;
            v83.size.height = recta;
            MinY = CGRectGetMinY(v83);
            v84.origin.x = v53;
            v84.origin.y = v54;
            v84.size.width = v55;
            v84.size.height = recta;
            MaxX = CGRectGetMaxX(v84);
          }

          else
          {
            MinX = CGRectGetMaxX(*&v49);
            v79.origin.x = v53;
            v79.origin.y = v54;
            v79.size.width = v55;
            v79.size.height = recta;
            MinY = CGRectGetMinY(v79);
            v80.origin.x = v53;
            v80.origin.y = v54;
            v80.size.width = v55;
            v80.size.height = recta;
            MaxX = CGRectGetMinX(v80);
          }

          v17 = MaxX;
          v85.origin.x = v53;
          v85.origin.y = v54;
          v85.size.width = v55;
          v85.size.height = recta;
          v19 = CGRectGetMinY(v85);
          v71 = MinY;
          v69 = MinY;
          if (v25)
          {
            goto LABEL_24;
          }

LABEL_27:
          [self _cubicBezierPointForParameter:parameter start:MinX controlPt1:MinY controlPt2:v70 end:{v71, v68, v69, *&v17, *&v19}];
          v59 = v58;
          v61 = v60;
          Mutable = CGPathCreateMutable();
          CGPathMoveToPoint(Mutable, 0, v59, v61);
          v62 = bezierParameter + 0.025;
          if (v62 < parameter)
          {
            goto LABEL_30;
          }

          while (parameter < 1.0)
          {
            [self _cubicBezierPointForParameter:parameter start:MinX controlPt1:MinY controlPt2:v70 end:{v71, v68, v69, *&v17, *&v19}];
            CGPathAddLineToPoint(Mutable, 0, v63, v64);
            parameter = parameter + 0.025;
            if (parameter > v62)
            {
              goto LABEL_30;
            }
          }

          [self _cubicBezierPointForParameter:0.99 start:MinX controlPt1:MinY controlPt2:v70 end:{v71, v68, v69, *&v17, *&v19}];
          v27 = Mutable;
          goto LABEL_8;
        }
      }

      else
      {
        v72.size.width = v17 - MinX;
        v72.size.height = v19 - MinY;
        v72.origin.x = MinX;
        v72.origin.y = MinY;
        v73 = CGRectStandardize(v72);
        v30 = v73.origin.x;
        v31 = v73.origin.y;
        v32 = v73.size.width;
        v33 = v73.size.height;
        [arrowCopy strokeWidth];
        [AKGeometryHelper renderingStrokeAlignedRectForRect:controllerCopy withStrokeWidth:context alignToScreenUsingPageController:arrowCopy orAlignToContext:v30 usingAnnotation:v31, v32, v33, v34];
        v35 = v74.origin.x;
        v36 = v74.origin.y;
        v37 = v74.size.height;
        rect = v74.size.width;
        MinX = CGRectGetMinX(v74);
        v38 = v35;
        v39 = v36;
        v40 = rect;
        v41 = v37;
        if (MinY <= v19)
        {
          MinY = CGRectGetMinY(*&v38);
          v81.origin.x = v35;
          v81.origin.y = v36;
          v81.size.width = rect;
          v81.size.height = v37;
          v57 = CGRectGetMinX(v81);
          v82.size.height = v37;
          v17 = v57;
          v82.origin.x = v35;
          v82.origin.y = v36;
          v82.size.width = rect;
          MaxY = CGRectGetMaxY(v82);
        }

        else
        {
          MinY = CGRectGetMaxY(*&v38);
          v75.origin.x = v35;
          v75.origin.y = v36;
          v75.size.width = rect;
          v75.size.height = v37;
          v42 = CGRectGetMinX(v75);
          v76.size.height = v37;
          v17 = v42;
          v76.origin.x = v35;
          v76.origin.y = v36;
          v76.size.width = rect;
          MaxY = CGRectGetMinY(v76);
        }

        v19 = MaxY;
        v70 = MinX;
        v68 = MinX;
      }
    }

    if (v25)
    {
LABEL_24:
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, MinX, MinY);
      CGPathAddCurveToPoint(Mutable, 0, v70, v71, v68, v69, v17, v19);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, MinX, MinY);
  v27 = Mutable;
  v28 = MinX;
  v29 = MinY;
LABEL_8:
  CGPathAddLineToPoint(v27, 0, v28, v29);
LABEL_30:

  return Mutable;
}

@end