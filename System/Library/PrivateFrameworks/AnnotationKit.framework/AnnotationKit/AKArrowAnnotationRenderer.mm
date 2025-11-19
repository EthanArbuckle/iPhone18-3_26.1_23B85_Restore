@interface AKArrowAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newLinePathForArrow:(id)a3 withHeads:(BOOL)a4 fromBezierParameter:(double)a5 toBezierParameter:(double)a6 optionalPageController:(id)a7 optionalContext:(CGContext *)a8;
+ (CGPoint)_cubicBezierPointForParameter:(double)a3 start:(CGPoint)a4 controlPt1:(CGPoint)a5 controlPt2:(CGPoint)a6 end:(CGPoint)a7;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (unint64_t)_drawableArrowHeads:(id)a3;
+ (void)_arrowHeadLineIntersection:(id)a3 outStartIntersection:(CGPoint *)a4 outBezierStartParameter:(double *)a5 outEndIntersection:(CGPoint *)a6 outBezierEndParameter:(double *)a7;
+ (void)_arrowHeadPathsForArrow:(id)a3 inOutStartArrowHead:(CGPath *)a4 outBezierStartParameter:(double *)a5 inOutEndArrowHead:(CGPath *)a6 outBezierEndParameter:(double *)a7;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
+ (void)_controlPointsForArrow:(id)a3 outControlPoint1:(CGPoint *)a4 outControlPoint2:(CGPoint *)a5;
+ (void)_drawPathForArrow:(id)a3 inContext:(CGContext *)a4 options:(id)a5 inPath:(CGPath *)a6 pageControllerForPixelAlignmentOrNil:(id)a7 minimumGrabbableBorderThickness:(double)a8;
@end

@implementation AKArrowAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v4 = a3;
  Mutable = CGPathCreateMutable();
  v6 = +[AKAnnotationRendererOptions defaultOptions];
  [a1 _drawPathForArrow:v4 inContext:0 options:v6 inPath:Mutable pageControllerForPixelAlignmentOrNil:0 minimumGrabbableBorderThickness:1.0];

  BoundingBox = CGPathGetBoundingBox(Mutable);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGPathRelease(Mutable);
  [v4 strokeWidth];
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
  if ([v4 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v4 onAnnotation:v13, v14, v15, v16];
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
  }

  v21 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:v4];
  if ([v21 length] || (objc_msgSend(v4, "fillColor"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    [a1 _concreteTextBoundsOfAnnotation:v4 withOptionalAnnotationRect:0 optionalText:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    if (+[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v4 originalExifOrientation]))
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:v7];
    if (!v10)
    {
LABEL_8:
      v17 = [v7 typingAttributes];
      v18 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"fg" attributes:v17];

      v14 = v18;
      v10 = v14;
      goto LABEL_9;
    }
  }

  if (![v10 length])
  {
    goto LABEL_8;
  }

  v11 = [v10 string];
  v12 = [v11 stringByTrimmingTrailingWhitespaceFromEachLine];

  v13 = [v7 typingAttributes];
  v14 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:v12 attributes:v13];

  if (![v14 length])
  {
    v15 = [v7 typingAttributes];
    v16 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"fg" attributes:v15];

    v14 = v16;
  }

LABEL_9:
  [v7 originalModelBaseScaleFactor];
  v19 = [AKTextAnnotationAttributeHelper newTextStorage:v10 byApplyingScaleFactor:?];

  [v7 originalModelBaseScaleFactor];
  v20 = [AKTextAnnotationAttributeHelper newTextStorage:v14 byApplyingScaleFactor:?];

  [AKTextAnnotationRenderHelper unconstrainedSizeForText:v19];
  v22 = v21;
  [AKTextAnnotationRenderHelper unconstrainedSizeForText:v20];
  v24 = v23;
  v26 = v25;
  v115 = v22 - v23;
  [v7 strokeWidth];
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

  v31 = [v7 originalExifOrientation];
  v32 = [AKGeometryHelper inverseExifOrientation:v31];
  v33 = [AKGeometryHelper exifOrientationHasReversedAxes:v31];
  [v7 startPoint];
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
  [AKGeometryHelper adjustRect:"adjustRect:forExifOrientation:aboutCenter:" forExifOrientation:v31 aboutCenter:?];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v121 = 0.0;
  v122 = 0.0;
  v120[0] = 0;
  v120[1] = 0;
  [a1 _controlPointsForArrow:v7 outControlPoint1:&v121 outControlPoint2:v120];
  v107 = v36;
  [AKGeometryHelper normalizeVectorPoint:v36 - v121, v37 - v122];
  v111 = v49;
  v112 = v48;
  [AKGeometryHelper adjustPoint:"adjustPoint:forExifOrientation:aboutCenter:" forExifOrientation:v31 aboutCenter:?];
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

  v67 = [v19 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
  if (!v67)
  {
    v67 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v68 = [v67 alignment];
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
  if (!v68)
  {
    v74 = 0.0;
    v71 = v76;
    v72 = v77;
  }

  if (v68 == 2)
  {
    v74 = v115 * v65;
    v78 = v106 + v69 * v57;
  }

  else
  {
    v78 = v71;
  }

  if (v68 == 2)
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
  [AKGeometryHelper adjustRect:v31 forExifOrientation:v87 aboutCenter:v88, v116, v117, MidX, CGRectGetMidY(v130)];
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

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v39 = a3;
  v10 = a5;
  v11 = a6;
  [v10 allowHDR];
  CGContextSaveGState(a4);
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v39 forDisplay:objc_msgSend(v10 pageControllerOrNil:{"forDisplay"), v11}];
  v12 = [v39 hasShadow];
  if (v12)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v39];
  }

  CGContextSaveGState(a4);
  v13 = [v39 strokeColor];

  if (v13)
  {
    v14 = [v39 strokeColorForOptions:v10];
    CGContextSetStrokeColorWithColor(a4, [v14 CGColor]);

    v15 = [v39 strokeColorForOptions:v10];
    CGContextSetFillColorWithColor(a4, [v15 CGColor]);

    [v39 strokeWidth];
    [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:?];
    if ([v39 isDashed])
    {
      [v39 strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:?];
    }

    [a1 _drawPathForArrow:v39 inContext:a4 options:v10 inPath:0 pageControllerForPixelAlignmentOrNil:v11 minimumGrabbableBorderThickness:1.0];
  }

  CGContextRestoreGState(a4);
  v16 = [v39 fillColor];
  if (v16)
  {
    v17 = v16;
    v18 = [v39 fillColor];
    Alpha = CGColorGetAlpha([v18 CGColor]);

    if (Alpha != 0.0)
    {
      [a1 _concreteTextBoundsOfAnnotation:v39 withOptionalAnnotationRect:0 optionalText:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      if (+[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v39 originalExifOrientation]))
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
      [AKGeometryHelper renderingStrokeAlignedRectForRect:v11 withStrokeWidth:a4 alignToScreenUsingPageController:v39 orAlignToContext:v43.origin.x usingAnnotation:v43.origin.y, v43.size.width, v43.size.height, 0.0];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [v39 fillColorForOptions:v10];
      CGContextSetFillColorWithColor(a4, [v38 CGColor]);

      v44.origin.x = v31;
      v44.origin.y = v33;
      v44.size.width = v35;
      v44.size.height = v37;
      CGContextFillRect(a4, v44);
    }
  }

  [AKTextAnnotationRenderHelper renderAnnotationText:v39 intoContext:a4 options:v10 pageControllerOrNil:v11];
  if (v12)
  {
    [AKAnnotationRendererUtilities endShadowInContext:a4];
  }

  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  Mutable = CGPathCreateMutable();
  v11 = +[AKAnnotationRendererOptions defaultOptions];
  [a1 _drawPathForArrow:v9 inContext:0 options:v11 inPath:Mutable pageControllerForPixelAlignmentOrNil:0 minimumGrabbableBorderThickness:a5];

  v13.x = x;
  v13.y = y;
  LOBYTE(a1) = CGPathContainsPoint(Mutable, 0, v13, 0);
  CGPathRelease(Mutable);
  return a1;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a1 _concreteTextBoundsOfAnnotation:a4 withOptionalAnnotationRect:0 optionalText:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

+ (void)_drawPathForArrow:(id)a3 inContext:(CGContext *)a4 options:(id)a5 inPath:(CGPath *)a6 pageControllerForPixelAlignmentOrNil:(id)a7 minimumGrabbableBorderThickness:(double)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  [v15 allowHDR];
  [v14 strokeWidth];
  v18 = v17;
  v45 = 1.0;
  v46 = 0.0;
  Mutable = CGPathCreateMutable();
  v20 = CGPathCreateMutable();
  [a1 _arrowHeadPathsForArrow:v14 inOutStartArrowHead:Mutable outBezierStartParameter:&v46 inOutEndArrowHead:v20 outBezierEndParameter:&v45];
  if (!a4)
  {
    if (!a6 || (CGPathAddPath(a6, 0, Mutable), CGPathAddPath(a6, 0, v20), (v30 = [a1 _newLinePathForArrow:v14 withHeads:1 fromBezierParameter:v16 toBezierParameter:0 optionalPageController:v46 optionalContext:v45]) == 0))
    {
LABEL_20:
      if (!Mutable)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v31 = v30;
    if (v18 >= a8)
    {
      v32 = v18;
    }

    else
    {
      v32 = a8;
    }

    v33 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v30 withStrokeWidth:v32];
    if (v33)
    {
      v34 = v33;
      CGPathAddPath(a6, 0, v33);
      CFRelease(v34);
    }

    v35 = v31;
LABEL_19:
    CFRelease(v35);
    goto LABEL_20;
  }

  if (![v14 brushStyle])
  {
    CGContextBeginPath(a4);
    CGContextAddPath(a4, Mutable);
    CGContextAddPath(a4, v20);
    CGContextFillPath(a4);
    CGContextStrokePath(a4);
  }

  if (![v14 brushStyle])
  {
    v36 = [a1 _newLinePathForArrow:v14 withHeads:1 fromBezierParameter:v16 toBezierParameter:a4 optionalPageController:v46 optionalContext:v45];
    if (!v36)
    {
      goto LABEL_20;
    }

    v37 = v36;
    CGContextBeginPath(a4);
    CGContextAddPath(a4, v37);
    CGContextStrokePath(a4);
    v35 = v37;
    goto LABEL_19;
  }

  v21 = [a1 _newLinePathForArrow:v14 withHeads:0 fromBezierParameter:0 toBezierParameter:0 optionalPageController:v46 optionalContext:v45];
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v14 brushStyle];
  v24 = [v14 strokeColorForOptions:v15];
  [v14 strokeWidth];
  v25 = [AKTSDBrushStroke strokeWithType:v23 color:v24 width:?];

  v26 = [AKTSDBezierPath bezierPathWithCGPath:v22];
  v27 = objc_alloc_init(AKTSDShape);
  [(AKTSDShape *)v27 setStroke:v25];
  [(AKTSDShape *)v27 setPath:v26];
  if ([v14 arrowHeadStyle] == 1)
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

  else if ([v14 arrowHeadStyle] == 2)
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

  else if ([v14 arrowHeadStyle] == 3)
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

  [(AKTSDShape *)v27 drawInContext:a4, v42];
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

+ (unint64_t)_drawableArrowHeads:(id)a3
{
  v3 = a3;
  [v3 strokeWidth];
  v5 = v4 * 5.0;
  v6 = ~[v3 arrowHeadStyle] & 3;
  v7 = [v3 arrowHeadStyle];
  if (v6)
  {
    if (v7)
    {
      [v3 startPoint];
      v24 = v23;
      [v3 endPoint];
      v26 = v24 - v25;
      [v3 startPoint];
      v28 = v27;
      [v3 endPoint];
      v8 = hypot(v26, v28 - v29) > v5;
    }

    else
    {
      v8 = 0;
    }

    if (([v3 arrowHeadStyle] & 2) != 0)
    {
      [v3 startPoint];
      v31 = v30;
      [v3 endPoint];
      v19 = v31 - v32;
      [v3 startPoint];
      v21 = v33;
      [v3 endPoint];
LABEL_12:
      if (hypot(v19, v21 - v22) > v5)
      {
        v8 |= 2uLL;
      }
    }
  }

  else
  {
    if (v7)
    {
      [v3 startPoint];
      v10 = v9;
      [v3 midPoint];
      v12 = v10 - v11;
      [v3 startPoint];
      v14 = v13;
      [v3 midPoint];
      v8 = hypot(v12, v14 - v15) > v5;
    }

    else
    {
      v8 = 0;
    }

    if (([v3 arrowHeadStyle] & 2) != 0)
    {
      [v3 endPoint];
      v17 = v16;
      [v3 midPoint];
      v19 = v17 - v18;
      [v3 endPoint];
      v21 = v20;
      [v3 midPoint];
      goto LABEL_12;
    }
  }

  return v8;
}

+ (void)_arrowHeadPathsForArrow:(id)a3 inOutStartArrowHead:(CGPath *)a4 outBezierStartParameter:(double *)a5 inOutEndArrowHead:(CGPath *)a6 outBezierEndParameter:(double *)a7
{
  v12 = a3;
  [v12 strokeWidth];
  v14 = v13;
  [v12 endPoint];
  v16 = v15;
  v18 = v17;
  [v12 startPoint];
  if (v19 != v16 || v20 != v18)
  {
    v22 = v19;
    v23 = v20;
    v42 = v14;
    v43 = vdupq_n_s64(0x43E0000000000000uLL);
    v44 = v43;
    [a1 _arrowHeadLineIntersection:v12 outStartIntersection:&v44 outBezierStartParameter:a5 outEndIntersection:&v43 outBezierEndParameter:a7];
    v24 = [a1 _drawableArrowHeads:v12];
    v25 = v24;
    if (a4)
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
          CGPathMoveToPoint(a4, 0, v32, v27 + v33);
          CGPathAddLineToPoint(a4, 0, v22, v23);
          CGPathAddLineToPoint(a4, 0, v31 + *v44.i64, *&v44.i64[1] - v33);
          CGPathCloseSubpath(a4);
        }
      }
    }

    if (a6)
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
          CGPathMoveToPoint(a6, 0, v40, v35 + v41);
          CGPathAddLineToPoint(a6, 0, v16, v18);
          CGPathAddLineToPoint(a6, 0, v39 + *v43.i64, *&v43.i64[1] - v41);
          CGPathCloseSubpath(a6);
        }
      }
    }
  }
}

+ (void)_controlPointsForArrow:(id)a3 outControlPoint1:(CGPoint *)a4 outControlPoint2:(CGPoint *)a5
{
  v7 = a3;
  [v7 endPoint];
  v9 = v8;
  v11 = v10;
  [v7 startPoint];
  v13 = v12;
  v15 = v14;
  [v7 midPoint];
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
  if (a4)
  {
    a4->x = v31 - v33 * v21;
    a4->y = v32 - v33 * v23;
  }

  if (a5)
  {
    a5->x = v31 + v33 * v21;
    a5->y = v32 + v33 * v23;
  }
}

+ (CGPoint)_cubicBezierPointForParameter:(double)a3 start:(CGPoint)a4 controlPt1:(CGPoint)a5 controlPt2:(CGPoint)a6 end:(CGPoint)a7
{
  y = a6.y;
  v8 = a5.y;
  v9 = a4.y;
  [a1 _oneDimensionalCubicBezierValueForParameter:a3 start:a4.x controlPt1:a5.x controlPt2:a6.x end:a7.x];
  v13 = v12;
  [a1 _oneDimensionalCubicBezierValueForParameter:a3 start:v9 controlPt1:v8 controlPt2:y end:a7.y];
  v15 = v14;
  v16 = v13;
  result.y = v15;
  result.x = v16;
  return result;
}

+ (void)_arrowHeadLineIntersection:(id)a3 outStartIntersection:(CGPoint *)a4 outBezierStartParameter:(double *)a5 outEndIntersection:(CGPoint *)a6 outBezierEndParameter:(double *)a7
{
  v12 = a3;
  v13 = [a1 _drawableArrowHeads:v12];
  [v12 startPoint];
  v15 = v14;
  v17 = v16;
  [v12 endPoint];
  v19 = v18;
  v21 = v20;
  [v12 strokeWidth];
  [v12 brushStyle];
  v32 = 0.0;
  v33 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  [a1 _controlPointsForArrow:v12 outControlPoint1:&v32 outControlPoint2:&v30];
  if ((v13 & 2) != 0)
  {
    [v12 endPoint];
    v22 = 1.0;
    while (v22 > 0.0)
    {
      v22 = v22 + -0.025;
      [a1 _cubicBezierPointForParameter:v22 start:v15 controlPt1:v17 controlPt2:v32 end:{v33, v30, v31, v19, v21}];
      [AKGeometryHelper intersectLineSegmentStartingAt:"intersectLineSegmentStartingAt:ending:withCircleWithCenter:andRadius:farthestResult:" ending:0 withCircleWithCenter:? andRadius:? farthestResult:?];
      if (v23 != 9.22337204e18 && v24 != 9.22337204e18)
      {
        if (a6)
        {
          a6->x = v23;
          a6->y = v24;
        }

        if (a7)
        {
          *a7 = v22 + 0.025;
        }

        break;
      }
    }
  }

  if (v13)
  {
    [v12 startPoint];
    v26 = 0.0;
    while (v26 < 1.0)
    {
      v26 = v26 + 0.025;
      [a1 _cubicBezierPointForParameter:v26 start:v15 controlPt1:v17 controlPt2:v32 end:{v33, v30, v31, v19, v21}];
      [AKGeometryHelper intersectLineSegmentStartingAt:"intersectLineSegmentStartingAt:ending:withCircleWithCenter:andRadius:farthestResult:" ending:0 withCircleWithCenter:? andRadius:? farthestResult:?];
      if (v27 != 9.22337204e18 && v28 != 9.22337204e18)
      {
        if (a4)
        {
          a4->x = v27;
          a4->y = v28;
        }

        if (a5)
        {
          *a5 = v26 + -0.025;
        }

        break;
      }
    }
  }
}

+ (CGPath)_newLinePathForArrow:(id)a3 withHeads:(BOOL)a4 fromBezierParameter:(double)a5 toBezierParameter:(double)a6 optionalPageController:(id)a7 optionalContext:(CGContext *)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a7;
  v70 = 0.0;
  v71 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  [v14 endPoint];
  v17 = v16;
  v19 = v18;
  [v14 startPoint];
  MinX = v21;
  MinY = v20;
  if (v21 != v17 || v20 != v19)
  {
    [a1 _controlPointsForArrow:v14 outControlPoint1:&v70 outControlPoint2:&v68];
    v25 = !v12 || ([a1 _drawableArrowHeads:v14] & 3) == 0;
    if (v15 | a8)
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
          [v14 strokeWidth];
          [AKGeometryHelper renderingStrokeAlignedRectForRect:v15 withStrokeWidth:a8 alignToScreenUsingPageController:v14 orAlignToContext:x usingAnnotation:y, width, height, v48];
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
          [a1 _cubicBezierPointForParameter:a5 start:MinX controlPt1:MinY controlPt2:v70 end:{v71, v68, v69, *&v17, *&v19}];
          v59 = v58;
          v61 = v60;
          Mutable = CGPathCreateMutable();
          CGPathMoveToPoint(Mutable, 0, v59, v61);
          v62 = a6 + 0.025;
          if (v62 < a5)
          {
            goto LABEL_30;
          }

          while (a5 < 1.0)
          {
            [a1 _cubicBezierPointForParameter:a5 start:MinX controlPt1:MinY controlPt2:v70 end:{v71, v68, v69, *&v17, *&v19}];
            CGPathAddLineToPoint(Mutable, 0, v63, v64);
            a5 = a5 + 0.025;
            if (a5 > v62)
            {
              goto LABEL_30;
            }
          }

          [a1 _cubicBezierPointForParameter:0.99 start:MinX controlPt1:MinY controlPt2:v70 end:{v71, v68, v69, *&v17, *&v19}];
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
        [v14 strokeWidth];
        [AKGeometryHelper renderingStrokeAlignedRectForRect:v15 withStrokeWidth:a8 alignToScreenUsingPageController:v14 orAlignToContext:v30 usingAnnotation:v31, v32, v33, v34];
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