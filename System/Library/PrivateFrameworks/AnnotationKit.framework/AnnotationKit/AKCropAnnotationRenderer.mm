@interface AKCropAnnotationRenderer
+ (BOOL)_shouldUseRoundedCorner:(int64_t)a3 forAnnotation:(id)a4 withPageController:(id)a5;
+ (CGPath)_newClipMaskEOPathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)_newRectanglePathForAnnotation:(id)a3 withPageController:(id)a4 outLineWidth:(double *)a5;
+ (CGPath)cropHandle:(int64_t)a3 forAnnotation:(id)a4 withPageController:(id)a5;
+ (CGPath)newBottomEdgePathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newBottomLeftCornerPathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newBottomRightCornerPathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newLeftEdgePathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newRightEdgePathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newTopEdgePathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newTopLeftCornerPathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGPath)newTopRightCornerPathForAnnotation:(id)a3 withPageController:(id)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_addCurvedCornerToPath:(CGPath *)a3 cornerType:(int64_t)a4 cornerPoint:(CGPoint)a5 cornerRadius:(double)a6 handleInside:(double)a7 handleOutside:(double)a8 handleWidth:(double)a9;
+ (void)_addStraightCornerToPath:(CGPath *)a3 cornerType:(int64_t)a4 cornerPoint:(CGPoint)a5 handleInside:(double)a6 handleOutside:(double)a7 handleWidth:(double)a8;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
+ (void)_pixelAlignedBaseRect:(CGRect *)a3 interiorRect:(CGRect *)a4 scaleFactor:(double *)a5 forAnnotation:(id)a6 withPageController:(id)a7;
@end

@implementation AKCropAnnotationRenderer

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
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (([v10 hidden] & 1) == 0)
  {
    CGContextSaveGState(a4);
    [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];
    v24 = 1.0;
    [a1 _pixelAlignedBaseRect:0 interiorRect:0 scaleFactor:&v24 forAnnotation:v10 withPageController:v12];
    [v10 rectangle];
    if (CGRectIsInfinite(v41))
    {
      v13 = [v12 controller];
      v14 = [v13 undoController];
      v15 = [v14 undoManager];

      v16 = [v15 isUndoRegistrationEnabled];
      if (v16)
      {
        [v15 disableUndoRegistration];
      }

      [v12 maxPageRect];
      [v10 setRectangle:?];
      if (v16)
      {
        [v15 enableUndoRegistration];
      }
    }

    v17 = [a1 _newClipMaskEOPathForAnnotation:v10 withPageController:v12];
    v18 = [MEMORY[0x277D75348] akColorWithWhite:0.2 alpha:0.8];
    CGContextSetFillColorWithColor(a4, [v18 CGColor]);

    CGContextAddPath(a4, v17);
    CGContextEOFillPath(a4);
    CGPathRelease(v17);
    if ([v10 isDraggingHandle])
    {
      [v10 rectangle];
      points.x = v20;
      points.y = v21 + v19 / 3.0;
      v26 = v20 + v22;
      y = points.y;
      v28 = v20;
      v29 = v21 + (v19 + v19) / 3.0;
      v30 = v20 + v22;
      v31 = v29;
      v32 = v20 + v22 / 3.0;
      v33 = v21 + v19;
      v34 = v32;
      v35 = v21;
      v36 = v20 + (v22 + v22) / 3.0;
      v37 = v21 + v19;
      v38 = v36;
      v39 = v21;
      CGContextSetStrokeColorWithColor(a4, [v10 color]);
      CGContextSetLineWidth(a4, 1.0 / v24);
      CGContextStrokeLineSegments(a4, &points, 8uLL);
    }

    if ([v10 cropApplied] && (objc_msgSend(v10, "showHandles") & 1) == 0)
    {
      points.x = 1.0;
      v23 = [a1 _newRectanglePathForAnnotation:v10 withPageController:v12 outLineWidth:&points];
      CGContextSetStrokeColorWithColor(a4, [v10 color]);
      CGContextSetLineWidth(a4, points.x);
      CGContextSetLineJoin(a4, kCGLineJoinMiter);
      CGContextAddPath(a4, v23);
      CGContextStrokePath(a4);
      CGPathRelease(v23);
    }

    CGContextRestoreGState(a4);
  }
}

+ (CGPath)cropHandle:(int64_t)a3 forAnnotation:(id)a4 withPageController:(id)a5
{
  v8 = a4;
  v9 = a5;
  *&v85 = 1.0;
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v84.origin = *MEMORY[0x277CBF3A0];
  v84.size = v10;
  [a1 _pixelAlignedBaseRect:&v84 interiorRect:0 scaleFactor:&v85 forAnnotation:v8 withPageController:v9];
  origin = v84.origin;
  v12 = v84.origin.y + v84.size.height;
  v13 = v84.origin.x + v84.size.width;
  [v9 convertPointFromModelToOverlay:*&v84.origin];
  v15 = v14;
  y = v16;
  [v9 convertPointFromModelToOverlay:{origin.x, v12}];
  v18 = v17;
  v20 = v19;
  [v9 convertPointFromModelToOverlay:{v13, origin.y}];
  v22 = v21;
  v82 = v23;
  [v9 convertPointFromModelToOverlay:{v13, v12}];
  v25 = v24;
  v27 = v26;
  Mutable = CGPathCreateMutable();
  v29 = *&v85;
  [v9 maxPageRect];
  if (a3 > 3)
  {
    v76 = v31;
    v77 = v32;
    v78 = v33;
    v38 = 1.0 / v29;
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v65 = v30;
        v80 = 19.0 / v29;
        v81 = 24.0 / v29;
        v79 = 5.0 / v29;
        v40 = v15 - v38;
        v41 = y - v38;
        if ([a1 _shouldUseRoundedCorner:6 forAnnotation:v8 withPageController:v9])
        {
          MinX = CGRectGetMinX(v84);
          v92.origin.x = v65;
          v92.origin.y = v76;
          v92.size.width = v77;
          v92.size.height = v78;
          v67 = fmax(MinX - CGRectGetMinX(v92), 0.0);
          MinY = CGRectGetMinY(v84);
          v93.origin.x = v65;
          v93.origin.y = v76;
          v93.size.width = v77;
          v93.size.height = v78;
          v69 = fmax(MinY - CGRectGetMinY(v93), 0.0);
          if (v67 >= v69)
          {
            v69 = v67;
          }

          v70 = 16.0 / v29 - v69;
          if (v79 >= v70)
          {
            v47 = 5.0 / v29;
          }

          else
          {
            v47 = v70;
          }

          v48 = a1;
          v49 = Mutable;
          v50 = 6;
          goto LABEL_43;
        }

        v71 = a1;
        v72 = Mutable;
        v73 = 6;
        goto LABEL_48;
      }

      if (a3 != 7)
      {
        goto LABEL_51;
      }

      v51 = v30;
      v80 = 19.0 / v29;
      v81 = 24.0 / v29;
      v79 = 5.0 / v29;
      v52 = v22 + origin.x;
      v41 = v82 - origin.x;
      if ([a1 _shouldUseRoundedCorner:7 forAnnotation:v8 withPageController:v9])
      {
        v88.origin.x = v51;
        v88.origin.y = v76;
        v88.size.width = v77;
        v88.size.height = v78;
        MaxX = CGRectGetMaxX(v88);
        v54 = fmax(MaxX - CGRectGetMaxX(v84), 0.0);
        v55 = CGRectGetMinY(v84);
        v89.origin.x = v51;
        v89.origin.y = v76;
        v89.size.width = v77;
        v89.size.height = v78;
        v56 = fmax(v55 - CGRectGetMinY(v89), 0.0);
        if (v54 >= v56)
        {
          v56 = v54;
        }

        v57 = 16.0 / v29 - v56;
        if (v79 >= v57)
        {
          v47 = 5.0 / v29;
        }

        else
        {
          v47 = v57;
        }

        v48 = a1;
        v49 = Mutable;
        v50 = 7;
        v58 = v52;
        goto LABEL_44;
      }

      v71 = a1;
      v72 = Mutable;
      v73 = 7;
      v74 = v52;
    }

    else
    {
      if (a3 != 4)
      {
        v39 = v30;
        v80 = 19.0 / v29;
        v81 = 24.0 / v29;
        v79 = 5.0 / v29;
        v40 = v25 + v38;
        v41 = v27 + v38;
        if ([a1 _shouldUseRoundedCorner:5 forAnnotation:v8 withPageController:v9])
        {
          v86.origin.x = v39;
          v86.origin.y = v76;
          v86.size.width = v77;
          v86.size.height = v78;
          v42 = CGRectGetMaxX(v86);
          v43 = fmax(v42 - CGRectGetMaxX(v84), 0.0);
          v87.origin.x = v39;
          v87.origin.y = v76;
          v87.size.width = v77;
          v87.size.height = v78;
          MaxY = CGRectGetMaxY(v87);
          v45 = fmax(MaxY - CGRectGetMaxY(v84), 0.0);
          if (v43 >= v45)
          {
            v45 = v43;
          }

          v46 = 16.0 / v29 - v45;
          if (v79 >= v46)
          {
            v47 = 5.0 / v29;
          }

          else
          {
            v47 = v46;
          }

          v48 = a1;
          v49 = Mutable;
          v50 = 5;
LABEL_43:
          v58 = v40;
LABEL_44:
          [v48 _addCurvedCornerToPath:v49 cornerType:v50 cornerPoint:v58 cornerRadius:v41 handleInside:v47 handleOutside:v80 handleWidth:v81];
          goto LABEL_51;
        }

        v71 = a1;
        v72 = Mutable;
        v73 = 5;
LABEL_48:
        v74 = v40;
        goto LABEL_50;
      }

      v59 = v30;
      v80 = 19.0 / v29;
      v81 = 24.0 / v29;
      v79 = 5.0 / v29;
      v41 = v20 + v38;
      if ([a1 _shouldUseRoundedCorner:4 forAnnotation:v8 withPageController:v9])
      {
        v60 = CGRectGetMinX(v84);
        v90.origin.x = v59;
        v90.origin.y = v76;
        v90.size.width = v77;
        v90.size.height = v78;
        v61 = fmax(v60 - CGRectGetMinX(v90), 0.0);
        v91.origin.x = v59;
        v91.origin.y = v76;
        v91.size.width = v77;
        v91.size.height = v78;
        v62 = CGRectGetMaxY(v91);
        v63 = fmax(v62 - CGRectGetMaxY(v84), 0.0);
        if (v61 >= v63)
        {
          v63 = v61;
        }

        v64 = 16.0 / v29 - v63;
        if (v79 >= v64)
        {
          v47 = 5.0 / v29;
        }

        else
        {
          v47 = v64;
        }

        v48 = a1;
        v49 = Mutable;
        v50 = 4;
        v58 = v18 - v38;
        goto LABEL_44;
      }

      v71 = a1;
      v72 = Mutable;
      v73 = 4;
      v74 = v18 - v38;
    }

LABEL_50:
    [v71 _addStraightCornerToPath:v72 cornerType:v73 cornerPoint:v74 handleInside:v41 handleOutside:v80 handleWidth:{v81, v79}];
    goto LABEL_51;
  }

  v34 = 23.0 / v29;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      CGPathMoveToPoint(Mutable, 0, v18 + v34, v20);
      v37 = v25 - v34;
      v36 = Mutable;
      v35 = v27;
    }

    else
    {
      CGPathMoveToPoint(Mutable, 0, v15 + origin.x, y);
      v37 = v22 - origin.x;
      v36 = Mutable;
      v35 = v82;
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    CGPathMoveToPoint(Mutable, 0, v18, v20 - v34);
    v35 = y + v34;
    v36 = Mutable;
    v37 = v15;
    goto LABEL_35;
  }

  if (a3 == 1)
  {
    CGPathMoveToPoint(Mutable, 0, v25, v27 - origin.x);
    v35 = v82 + origin.x;
    v36 = Mutable;
    v37 = v22;
LABEL_35:
    CGPathAddLineToPoint(v36, 0, v37, v35);
  }

LABEL_51:

  return Mutable;
}

+ (CGPath)newLeftEdgePathForAnnotation:(id)a3 withPageController:(id)a4
{
  *&v14 = 1.0;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v13.origin = *MEMORY[0x277CBF3A0];
  v13.size = v4;
  v12.origin = v13.origin;
  v12.size = v4;
  [a1 _pixelAlignedBaseRect:&v13 interiorRect:&v12 scaleFactor:&v14 forAnnotation:a3 withPageController:a4];
  v5 = *&v14;
  v6 = 20.0 / v5 + 20.0 / v5;
  v7 = CGRectGetHeight(v12) + -20.0;
  if (v6 > v7)
  {
    v6 = v7;
  }

  if (v6 <= 0.0)
  {
    return 0;
  }

  v8 = 4.0 / v5;
  MinX = CGRectGetMinX(v13);
  v10 = CGRectGetMidY(v13) + v6 * -0.5;
  v13 = CGRectInset(v13, -v8, -v8);
  v16.origin.x = MinX;
  v16.origin.y = v10;
  v16.size.width = v8;
  v16.size.height = v6;
  v15 = CGRectIntersection(v13, v16);
  return CGPathCreateWithRect(v15, 0);
}

+ (CGPath)newRightEdgePathForAnnotation:(id)a3 withPageController:(id)a4
{
  v14 = 0x3FF0000000000000;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v13.origin = *MEMORY[0x277CBF3A0];
  v13.size = v4;
  v12.origin = v13.origin;
  v12.size = v4;
  [a1 _pixelAlignedBaseRect:&v13 interiorRect:&v12 scaleFactor:&v14 forAnnotation:a3 withPageController:a4];
  v5 = *&v14;
  v6 = 20.0 / v5 + 20.0 / v5;
  v7 = CGRectGetHeight(v12) + -20.0;
  if (v6 > v7)
  {
    v6 = v7;
  }

  if (v6 <= 0.0)
  {
    return 0;
  }

  v8 = 4.0 / v5;
  v9 = CGRectGetMaxX(v13) - v8;
  v10 = CGRectGetMidY(v13) + v6 * -0.5;
  v13 = CGRectInset(v13, -v8, -v8);
  v16.origin.x = v9;
  v16.origin.y = v10;
  v16.size.width = v8;
  v16.size.height = v6;
  v15 = CGRectIntersection(v13, v16);
  return CGPathCreateWithRect(v15, 0);
}

+ (CGPath)newBottomEdgePathForAnnotation:(id)a3 withPageController:(id)a4
{
  *&v14 = 1.0;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v13.origin = *MEMORY[0x277CBF3A0];
  v13.size = v4;
  v12.origin = v13.origin;
  v12.size = v4;
  [a1 _pixelAlignedBaseRect:&v13 interiorRect:&v12 scaleFactor:&v14 forAnnotation:a3 withPageController:a4];
  v5 = *&v14;
  v6 = 20.0 / v5 + 20.0 / v5;
  v7 = CGRectGetWidth(v12) + -20.0;
  if (v6 > v7)
  {
    v6 = v7;
  }

  if (v6 <= 0.0)
  {
    return 0;
  }

  v8 = 4.0 / v5;
  v9 = CGRectGetMidX(v13) + v6 * -0.5;
  MinY = CGRectGetMinY(v13);
  v13 = CGRectInset(v13, -v8, -v8);
  v16.origin.x = v9;
  v16.origin.y = MinY;
  v16.size.width = v6;
  v16.size.height = v8;
  v15 = CGRectIntersection(v13, v16);
  return CGPathCreateWithRect(v15, 0);
}

+ (CGPath)newTopEdgePathForAnnotation:(id)a3 withPageController:(id)a4
{
  v14 = 0x3FF0000000000000;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v13.origin = *MEMORY[0x277CBF3A0];
  v13.size = v4;
  v12.origin = v13.origin;
  v12.size = v4;
  [a1 _pixelAlignedBaseRect:&v13 interiorRect:&v12 scaleFactor:&v14 forAnnotation:a3 withPageController:a4];
  v5 = *&v14;
  v6 = 20.0 / v5 + 20.0 / v5;
  v7 = CGRectGetWidth(v12) + -20.0;
  if (v6 > v7)
  {
    v6 = v7;
  }

  if (v6 <= 0.0)
  {
    return 0;
  }

  v8 = 4.0 / v5;
  v9 = CGRectGetMidX(v13) + v6 * -0.5;
  v10 = CGRectGetMaxY(v13) - v8;
  v13 = CGRectInset(v13, -v8, -v8);
  v16.origin.x = v9;
  v16.origin.y = v10;
  v16.size.width = v6;
  v16.size.height = v8;
  v15 = CGRectIntersection(v13, v16);
  return CGPathCreateWithRect(v15, 0);
}

+ (CGPath)newTopLeftCornerPathForAnnotation:(id)a3 withPageController:(id)a4
{
  v26 = 1.0;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v25.origin = *MEMORY[0x277CBF3A0];
  v25.size = v4;
  v24.origin = v25.origin;
  v24.size = v4;
  [a1 _pixelAlignedBaseRect:&v25 interiorRect:&v24 scaleFactor:&v26 forAnnotation:a3 withPageController:a4];
  v5 = 4.0 / v26;
  MinX = CGRectGetMinX(v25);
  v7 = CGRectGetMaxY(v25) - v5;
  v8 = CGRectGetMinX(v24);
  v9 = v8 - CGRectGetMinX(v25);
  v10 = CGRectGetMinX(v25);
  MaxY = CGRectGetMaxY(v24);
  v12 = CGRectGetMaxY(v25);
  v13 = v12 - CGRectGetMaxY(v24);
  v31.origin.x = MinX;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v5;
  v27 = CGRectIntersection(v25, v31);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v32.origin.x = v10;
  v32.origin.y = MaxY;
  v32.size.width = v5;
  v32.size.height = v13;
  v28 = CGRectIntersection(v25, v32);
  v18 = v28.origin.x;
  v19 = v28.origin.y;
  v20 = v28.size.width;
  v21 = v28.size.height;
  Mutable = CGPathCreateMutable();
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGPathAddRect(Mutable, 0, v29);
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v20;
  v30.size.height = v21;
  CGPathAddRect(Mutable, 0, v30);
  return Mutable;
}

+ (CGPath)newTopRightCornerPathForAnnotation:(id)a3 withPageController:(id)a4
{
  v26 = 1.0;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v25.origin = *MEMORY[0x277CBF3A0];
  v25.size = v4;
  v24.origin = v25.origin;
  v24.size = v4;
  [a1 _pixelAlignedBaseRect:&v25 interiorRect:&v24 scaleFactor:&v26 forAnnotation:a3 withPageController:a4];
  v5 = 4.0 / v26;
  MaxX = CGRectGetMaxX(v24);
  v7 = CGRectGetMaxY(v25) - v5;
  v8 = CGRectGetMaxX(v25);
  v9 = v8 - CGRectGetMaxX(v24);
  v10 = CGRectGetMaxX(v25) - v5;
  MaxY = CGRectGetMaxY(v24);
  v12 = CGRectGetMaxY(v25);
  v13 = v12 - CGRectGetMaxY(v24);
  v31.origin.x = MaxX;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v5;
  v27 = CGRectIntersection(v25, v31);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v32.origin.x = v10;
  v32.origin.y = MaxY;
  v32.size.width = v5;
  v32.size.height = v13;
  v28 = CGRectIntersection(v25, v32);
  v18 = v28.origin.x;
  v19 = v28.origin.y;
  v20 = v28.size.width;
  v21 = v28.size.height;
  Mutable = CGPathCreateMutable();
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGPathAddRect(Mutable, 0, v29);
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v20;
  v30.size.height = v21;
  CGPathAddRect(Mutable, 0, v30);
  return Mutable;
}

+ (CGPath)newBottomLeftCornerPathForAnnotation:(id)a3 withPageController:(id)a4
{
  v24 = 1.0;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v23.origin = *MEMORY[0x277CBF3A0];
  v23.size = v4;
  v22.origin = v23.origin;
  v22.size = v4;
  [a1 _pixelAlignedBaseRect:&v23 interiorRect:&v22 scaleFactor:&v24 forAnnotation:a3 withPageController:a4];
  v5 = 4.0 / v24;
  MinX = CGRectGetMinX(v23);
  MinY = CGRectGetMinY(v23);
  v8 = CGRectGetMinX(v22) - MinX;
  v9 = CGRectGetMinX(v23);
  v10 = CGRectGetMinY(v23);
  v11 = CGRectGetMinY(v22) - v10;
  v29.origin.x = MinX;
  v29.origin.y = MinY;
  v29.size.width = v8;
  v29.size.height = v5;
  v25 = CGRectIntersection(v23, v29);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v30.origin.x = v9;
  v30.origin.y = v10;
  v30.size.width = v5;
  v30.size.height = v11;
  v26 = CGRectIntersection(v23, v30);
  v16 = v26.origin.x;
  v17 = v26.origin.y;
  v18 = v26.size.width;
  v19 = v26.size.height;
  Mutable = CGPathCreateMutable();
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGPathAddRect(Mutable, 0, v27);
  v28.origin.x = v16;
  v28.origin.y = v17;
  v28.size.width = v18;
  v28.size.height = v19;
  CGPathAddRect(Mutable, 0, v28);
  return Mutable;
}

+ (CGPath)newBottomRightCornerPathForAnnotation:(id)a3 withPageController:(id)a4
{
  v24 = 1.0;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v23.origin = *MEMORY[0x277CBF3A0];
  v23.size = v4;
  v22.origin = v23.origin;
  v22.size = v4;
  [a1 _pixelAlignedBaseRect:&v23 interiorRect:&v22 scaleFactor:&v24 forAnnotation:a3 withPageController:a4];
  v5 = 4.0 / v24;
  MaxX = CGRectGetMaxX(v22);
  MinY = CGRectGetMinY(v23);
  v8 = CGRectGetMaxX(v23) - MaxX;
  v9 = CGRectGetMaxX(v23) - v5;
  v10 = CGRectGetMinY(v23);
  v11 = CGRectGetMinY(v22) - v10;
  v29.origin.x = MaxX;
  v29.origin.y = MinY;
  v29.size.width = v8;
  v29.size.height = v5;
  v25 = CGRectIntersection(v23, v29);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v30.origin.x = v9;
  v30.origin.y = v10;
  v30.size.width = v5;
  v30.size.height = v11;
  v26 = CGRectIntersection(v23, v30);
  v16 = v26.origin.x;
  v17 = v26.origin.y;
  v18 = v26.size.width;
  v19 = v26.size.height;
  Mutable = CGPathCreateMutable();
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGPathAddRect(Mutable, 0, v27);
  v28.origin.x = v16;
  v28.origin.y = v17;
  v28.size.width = v18;
  v28.size.height = v19;
  CGPathAddRect(Mutable, 0, v28);
  return Mutable;
}

+ (BOOL)_shouldUseRoundedCorner:(int64_t)a3 forAnnotation:(id)a4 withPageController:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (([v8 isDraggingHandle] & 1) == 0)
  {
    v11 = [v9 overlayView];
    v12 = [v11 superview];
    v13 = [v12 superview];

    if (v13)
    {
      v14 = [v13 layer];
      if (v14)
      {
        v15 = v14;
        v16 = [v13 layer];
        [v16 cornerRadius];
        v18 = v17;

        if (v18 == 0.0)
        {
          v10 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }
    }

    [v8 rectangle];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v9 maxPageRect];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v51 = 1.0;
    v35 = *(MEMORY[0x277CBF3A0] + 16);
    v50[0] = *MEMORY[0x277CBF3A0];
    v50[1] = v35;
    [a1 _pixelAlignedBaseRect:v50 interiorRect:0 scaleFactor:&v51 forAnnotation:v8 withPageController:v9];
    v10 = 0;
    v48 = 16.0 / v51;
    v49 = 5.0 / v51;
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v60.origin.x = v20;
        v60.origin.y = v22;
        v60.size.width = v24;
        v60.size.height = v26;
        recta = CGRectGetMinX(v60);
        v61.origin.x = v28;
        v61.origin.y = v30;
        v61.size.width = v32;
        v61.size.height = v34;
        MinX = CGRectGetMinX(v61);
      }

      else
      {
        if (a3 != 7)
        {
          goto LABEL_21;
        }

        v54.origin.x = v28;
        v54.origin.y = v30;
        v54.size.width = v32;
        v54.size.height = v34;
        recta = CGRectGetMaxX(v54);
        v55.origin.x = v20;
        v55.origin.y = v22;
        v55.size.width = v24;
        v55.size.height = v26;
        MinX = CGRectGetMaxX(v55);
      }

      v62.size.height = v26;
      v39 = fmax(recta - MinX, 0.0);
      v62.origin.x = v20;
      v62.origin.y = v22;
      v62.size.width = v24;
      MinY = CGRectGetMinY(v62);
      v63.origin.x = v28;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v34;
      v41 = MinY - CGRectGetMinY(v63);
    }

    else
    {
      if (a3 == 4)
      {
        v56.origin.x = v20;
        v56.origin.y = v22;
        v56.size.width = v24;
        v56.size.height = v26;
        rect = CGRectGetMinX(v56);
        v57.origin.x = v28;
        v57.origin.y = v30;
        v57.size.width = v32;
        v57.size.height = v34;
        MaxX = CGRectGetMinX(v57);
      }

      else
      {
        if (a3 != 5)
        {
          goto LABEL_21;
        }

        v52.origin.x = v28;
        v52.origin.y = v30;
        v52.size.width = v32;
        v52.size.height = v34;
        rect = CGRectGetMaxX(v52);
        v53.origin.x = v20;
        v53.origin.y = v22;
        v53.size.width = v24;
        v53.size.height = v26;
        MaxX = CGRectGetMaxX(v53);
      }

      v38 = rect - MaxX;
      rectb = v26;
      v39 = fmax(v38, 0.0);
      v58.origin.x = v28;
      v58.origin.y = v30;
      v58.size.width = v32;
      v58.size.height = v34;
      MaxY = CGRectGetMaxY(v58);
      v59.origin.x = v20;
      v59.origin.y = v22;
      v59.size.width = v24;
      v59.size.height = rectb;
      v41 = MaxY - CGRectGetMaxY(v59);
    }

    v43 = fmax(v41, 0.0);
    if (v39 >= v43)
    {
      v43 = v39;
    }

    v10 = v48 - v43 > v49;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

+ (void)_addStraightCornerToPath:(CGPath *)a3 cornerType:(int64_t)a4 cornerPoint:(CGPoint)a5 handleInside:(double)a6 handleOutside:(double)a7 handleWidth:(double)a8
{
  if (a4 > 5)
  {
    if (a4 != 6)
    {
      if (a4 != 7)
      {
        return;
      }

      v19 = a5.x - a8;
      v20 = a5.y + a8;
      CGPathMoveToPoint(a3, 0, a5.x - a8, a5.y + a8);
      v21 = v20 + a6;
      CGPathAddLineToPoint(a3, 0, v19, v21);
      v22 = v19 + a8;
      CGPathAddLineToPoint(a3, 0, v22, v21);
      v23 = v21 - a7;
      CGPathAddLineToPoint(a3, 0, v22, v23);
      v17 = v22 - a7;
      CGPathAddLineToPoint(a3, 0, v17, v23);
      v18 = v23 + a8;
      goto LABEL_8;
    }

    v31 = a5.x + a8;
    v32 = a5.y + a8;
    CGPathMoveToPoint(a3, 0, a5.x + a8, a5.y + a8);
    v33 = v32 + a6;
    CGPathAddLineToPoint(a3, 0, v31, v33);
    v34 = v31 - a8;
    CGPathAddLineToPoint(a3, 0, v34, v33);
    v35 = v33 - a7;
    CGPathAddLineToPoint(a3, 0, v34, v35);
    v30 = v34 + a7;
    CGPathAddLineToPoint(a3, 0, v30, v35);
    v18 = v35 + a8;
LABEL_12:
    CGPathAddLineToPoint(a3, 0, v30, v18);
    v24 = v30 - a6;
    goto LABEL_13;
  }

  if (a4 == 4)
  {
    v25 = a5.x + a8;
    v26 = a5.y - a8;
    CGPathMoveToPoint(a3, 0, a5.x + a8, a5.y - a8);
    v27 = v26 - a6;
    CGPathAddLineToPoint(a3, 0, v25, v27);
    v28 = v25 - a8;
    CGPathAddLineToPoint(a3, 0, v28, v27);
    v29 = v27 + a7;
    CGPathAddLineToPoint(a3, 0, v28, v29);
    v30 = v28 + a7;
    CGPathAddLineToPoint(a3, 0, v30, v29);
    v18 = v29 - a8;
    goto LABEL_12;
  }

  if (a4 != 5)
  {
    return;
  }

  v12 = a5.x - a8;
  v13 = a5.y - a8;
  CGPathMoveToPoint(a3, 0, a5.x - a8, a5.y - a8);
  v14 = v13 - a6;
  CGPathAddLineToPoint(a3, 0, v12, v14);
  v15 = v12 + a8;
  CGPathAddLineToPoint(a3, 0, v15, v14);
  v16 = v14 + a7;
  CGPathAddLineToPoint(a3, 0, v15, v16);
  v17 = v15 - a7;
  CGPathAddLineToPoint(a3, 0, v17, v16);
  v18 = v16 - a8;
LABEL_8:
  CGPathAddLineToPoint(a3, 0, v17, v18);
  v24 = v17 + a6;
LABEL_13:

  CGPathAddLineToPoint(a3, 0, v24, v18);
}

+ (void)_addCurvedCornerToPath:(CGPath *)a3 cornerType:(int64_t)a4 cornerPoint:(CGPoint)a5 cornerRadius:(double)a6 handleInside:(double)a7 handleOutside:(double)a8 handleWidth:(double)a9
{
  v12 = a5.y;
  x = a5.x;
  if (a4 > 5)
  {
    if (a4 != 6)
    {
      if (a4 != 7)
      {
        return;
      }

      y = a5.y + a8;
      CGPathMoveToPoint(a3, 0, a5.x, a5.y + a8);
      v24 = v12 + a6;
      CGPathAddLineToPoint(a3, 0, x, v12 + a6);
      CGPathAddArc(a3, 0, x - a6, v12 + a6, a6, 0.0, -1.57079633, 1);
      v25 = x - a8;
      CGPathAddLineToPoint(a3, 0, v25, v12);
      v26 = v12 + a9;
      CGPathAddLineToPoint(a3, 0, v25, v26);
      CGPathAddLineToPoint(a3, 0, x - a7, v26);
      v18 = a6 - a9;
      v19 = a3;
      v20 = x - a6;
      v21 = v24;
      v22 = -1.57079633;
      v23 = 0;
      goto LABEL_8;
    }

    y = a5.y + a8;
    CGPathMoveToPoint(a3, 0, a5.x, a5.y + a8);
    v37 = v12 + a6;
    CGPathAddLineToPoint(a3, 0, x, v12 + a6);
    CGPathAddArc(a3, 0, x + a6, v12 + a6, a6, 3.14159265, -1.57079633, 0);
    v38 = x + a8;
    CGPathAddLineToPoint(a3, 0, v38, v12);
    v39 = v12 + a9;
    CGPathAddLineToPoint(a3, 0, v38, v39);
    CGPathAddLineToPoint(a3, 0, x + a7, v39);
    v31 = a6 - a9;
    v32 = a3;
    v33 = x + a6;
    v34 = v37;
    v35 = -1.57079633;
    v36 = 1;
LABEL_12:
    CGPathAddArc(v32, 0, v33, v34, v31, v35, 3.14159265, v36);
    v27 = x + a9;
    goto LABEL_13;
  }

  if (a4 == 4)
  {
    y = a5.y - a8;
    CGPathMoveToPoint(a3, 0, a5.x, a5.y - a8);
    v28 = v12 - a6;
    CGPathAddLineToPoint(a3, 0, x, v12 - a6);
    CGPathAddArc(a3, 0, x + a6, v12 - a6, a6, 3.14159265, 1.57079633, 1);
    v29 = x + a8;
    CGPathAddLineToPoint(a3, 0, v29, v12);
    v30 = v12 - a9;
    CGPathAddLineToPoint(a3, 0, v29, v30);
    CGPathAddLineToPoint(a3, 0, x + a7, v30);
    v31 = a6 - a9;
    v32 = a3;
    v33 = x + a6;
    v34 = v28;
    v35 = 1.57079633;
    v36 = 0;
    goto LABEL_12;
  }

  if (a4 != 5)
  {
    return;
  }

  y = a5.y - a8;
  CGPathMoveToPoint(a3, 0, a5.x, a5.y - a8);
  v15 = v12 - a6;
  CGPathAddLineToPoint(a3, 0, x, v12 - a6);
  CGPathAddArc(a3, 0, x - a6, v12 - a6, a6, 0.0, 1.57079633, 0);
  v16 = x - a8;
  CGPathAddLineToPoint(a3, 0, v16, v12);
  v17 = v12 - a9;
  CGPathAddLineToPoint(a3, 0, v16, v17);
  CGPathAddLineToPoint(a3, 0, x - a7, v17);
  v18 = a6 - a9;
  v19 = a3;
  v20 = x - a6;
  v21 = v15;
  v22 = 1.57079633;
  v23 = 1;
LABEL_8:
  CGPathAddArc(v19, 0, v20, v21, v18, v22, 0.0, v23);
  v27 = x - a9;
LABEL_13:
  CGPathAddLineToPoint(a3, 0, v27, y);

  CGPathCloseSubpath(a3);
}

+ (CGPath)_newClipMaskEOPathForAnnotation:(id)a3 withPageController:(id)a4
{
  *&v68 = 1.0;
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  rect_24.origin = *MEMORY[0x277CBF3A0];
  rect_24.size = v6;
  v7 = a4;
  v8 = a3;
  [a1 _pixelAlignedBaseRect:&rect_24 interiorRect:0 scaleFactor:&v68 forAnnotation:v8 withPageController:v7];
  [v7 maxPageRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  Mutable = CGPathCreateMutable();
  v69.origin.x = v10;
  v69.origin.y = v12;
  v69.size.width = v14;
  v69.size.height = v16;
  CGPathAddRect(Mutable, 0, v69);
  v18 = *&v68;
  [v7 maxPageRect];
  v20 = v19;
  v22 = v21;
  rect_8 = v24;
  rect_16 = v23;
  origin = rect_24.origin;
  size = rect_24.size;
  v27 = [a1 _shouldUseRoundedCorner:4 forAnnotation:v8 withPageController:v7];
  v28 = [a1 _shouldUseRoundedCorner:5 forAnnotation:v8 withPageController:v7];
  v29 = [a1 _shouldUseRoundedCorner:6 forAnnotation:v8 withPageController:v7];
  v30 = [a1 _shouldUseRoundedCorner:7 forAnnotation:v8 withPageController:v7];

  if ((v27 & 1) != 0 || (v28 & 1) != 0 || (v29 & 1) != 0 || v30)
  {
    v63 = 16.0 / v18;
    v70.size.width = size.width;
    v31 = 5.0 / v18;
    v70.origin = origin;
    v70.size.height = size.height;
    MinX = CGRectGetMinX(v70);
    v71.origin.x = v20;
    v71.origin.y = v22;
    v71.size.width = rect_16;
    v71.size.height = rect_8;
    v61 = fmax(MinX - CGRectGetMinX(v71), 0.0);
    v72.origin.x = v20;
    v58 = v22;
    v72.origin.y = v22;
    v72.size.width = rect_16;
    v72.size.height = rect_8;
    MaxX = CGRectGetMaxX(v72);
    v73.origin = origin;
    v73.size = size;
    v33 = CGRectGetMaxX(v73);
    v74.size.height = rect_8;
    v34 = fmax(MaxX - v33, 0.0);
    v74.origin.x = v20;
    v74.origin.y = v22;
    v74.size.width = rect_16;
    MaxY = CGRectGetMaxY(v74);
    v75.origin = origin;
    v75.size = size;
    v36 = fmax(MaxY - CGRectGetMaxY(v75), 0.0);
    v76.origin = origin;
    v76.size = size;
    MinY = CGRectGetMinY(v76);
    v77.origin.y = v58;
    v77.origin.x = v20;
    v77.size.height = rect_8;
    v77.size.width = rect_16;
    v38 = fmax(MinY - CGRectGetMinY(v77), 0.0);
    if (v61 >= v36)
    {
      v39 = v61;
    }

    else
    {
      v39 = v36;
    }

    v40 = v63 - v39;
    if (v31 >= v40)
    {
      v40 = v31;
    }

    if (!v27)
    {
      v40 = 0.0;
    }

    rect_16 = v40;
    if (v34 >= v36)
    {
      v41 = v34;
    }

    else
    {
      v41 = v36;
    }

    v42 = v63 - v41;
    if (v31 >= v42)
    {
      v42 = v31;
    }

    if (!v28)
    {
      v42 = 0.0;
    }

    rect = v42;
    if (v61 >= v38)
    {
      v43 = v61;
    }

    else
    {
      v43 = v38;
    }

    v44 = v63 - v43;
    if (v31 >= v44)
    {
      v44 = v31;
    }

    if (v29)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0.0;
    }

    if (v34 >= v38)
    {
      v38 = v34;
    }

    v46 = v63 - v38;
    if (v31 >= v46)
    {
      v46 = v31;
    }

    if (v30)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0.0;
    }

    v48 = CGPathCreateMutable();
    v49 = CGRectGetMinX(rect_24);
    v50 = CGRectGetMinY(rect_24);
    v51 = CGRectGetMaxX(rect_24);
    v52 = CGRectGetMinY(rect_24);
    v59 = CGRectGetMaxX(rect_24);
    v53 = CGRectGetMaxY(rect_24);
    v60 = CGRectGetMinX(rect_24);
    v54 = CGRectGetMaxY(rect_24);
    v62 = v45;
    v55 = v45 + v49;
    CGPathMoveToPoint(v48, 0, v55, v50);
    CGPathAddLineToPoint(v48, 0, v51 - v47, v52);
    if (v47 > 0.0)
    {
      CGPathAddArc(v48, 0, v51 - v47, v47 + v52, v47, -1.57079633, 0.0, 0);
    }

    CGPathAddLineToPoint(v48, 0, v51, v53 - rect);
    if (rect > 0.0)
    {
      CGPathAddArc(v48, 0, v59 - rect, v53 - rect, rect, 0.0, 1.57079633, 0);
    }

    CGPathAddLineToPoint(v48, 0, rect_16 + v60, v54);
    if (rect_16 > 0.0)
    {
      CGPathAddArc(v48, 0, rect_16 + v60, v54 - rect_16, rect_16, 1.57079633, 3.14159265, 0);
    }

    CGPathAddLineToPoint(v48, 0, v49, v62 + v50);
    if (v62 > 0.0)
    {
      CGPathAddArc(v48, 0, v55, v62 + v50, v62, 3.14159265, -1.57079633, 0);
    }

    CGPathCloseSubpath(v48);
    CGPathAddPath(Mutable, 0, v48);
    CGPathRelease(v48);
  }

  else
  {
    CGPathAddRect(Mutable, 0, rect_24);
  }

  return Mutable;
}

+ (CGPath)_newRectanglePathForAnnotation:(id)a3 withPageController:(id)a4 outLineWidth:(double *)a5
{
  v10 = 1.0;
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v9.origin = *MEMORY[0x277CBF3A0];
  v9.size = v6;
  [a1 _pixelAlignedBaseRect:&v9 interiorRect:0 scaleFactor:&v10 forAnnotation:a3 withPageController:a4];
  v7 = 1.0 / v10;
  v9 = CGRectInset(v9, 1.0 / v10 * -0.5, 1.0 / v10 * -0.5);
  result = CGPathCreateWithRect(v9, 0);
  *a5 = v7;
  return result;
}

+ (void)_pixelAlignedBaseRect:(CGRect *)a3 interiorRect:(CGRect *)a4 scaleFactor:(double *)a5 forAnnotation:(id)a6 withPageController:(id)a7
{
  v11 = a7;
  [a6 rectangle];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v11 geometryHelper];
  [v20 screenPixelAlignedRectForRect:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v11 currentModelToScreenScaleFactor];
  v30 = v29;

  if (a4)
  {
    v37.origin.x = v22;
    v37.origin.y = v24;
    v37.size.width = v26;
    v37.size.height = v28;
    v31 = v30 * CGRectGetWidth(v37);
    v38.origin.x = v22;
    v38.origin.y = v24;
    v38.size.width = v26;
    v38.size.height = v28;
    v32 = v30 * CGRectGetHeight(v38);
    v33 = fmax((v31 + -10.0) * 0.5, 4.0);
    if (v31 + -40.0 >= 10.0)
    {
      v33 = 20.0;
    }

    v34 = v32 + -40.0;
    v35 = fmax((v32 + -10.0) * 0.5, 4.0);
    if (v34 >= 10.0)
    {
      v35 = 20.0;
    }

    v36 = v35 / v30;
    v39.origin.x = v22;
    v39.origin.y = v24;
    v39.size.width = v26;
    v39.size.height = v28;
    v40 = CGRectInset(v39, v33 / v30, v36);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v40.size.height = 0.0;
    v40.size.width = 0.0;
    v40.origin.y = 0.0;
    v40.origin.x = 0.0;
    if (a3)
    {
LABEL_7:
      a3->origin.x = v22;
      a3->origin.y = v24;
      a3->size.width = v26;
      a3->size.height = v28;
    }
  }

  if (a4)
  {
    *a4 = v40;
  }

  if (a5)
  {
    *a5 = v30;
  }
}

@end