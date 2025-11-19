@interface AKRectangularAnnotationEventHandler
- (CGRect)_rectForModifiedRotatedRect:(CGRect)a3 withOriginal:(CGRect)a4 andRotation:(double)a5;
- (void)_updateModelFlippednessWithCurrentPoint:(CGPoint)a3;
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)setupDraggingConstraints;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKRectangularAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v54 = *(MEMORY[0x277CBF348] + 8);
  v55 = *MEMORY[0x277CBF348];
  v63 = [(AKAnnotationEventHandler *)self annotation:a3];
  v11 = [(AKAnnotationEventHandler *)self pageController];
  [v63 rectangle];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:v63];
  v21 = v20;
  v23 = v22;
  v65.origin.x = v13;
  v65.origin.y = v15;
  v65.size.width = v17;
  v65.size.height = v19;
  v66 = CGRectInset(v65, v21, v23);
  height = v66.size.height;
  y = v66.origin.y;
  x = v66.origin.x;
  width = v66.size.width;
  [AKGeometryHelper convertModelToScreenOrientationForRect:v11 withPageController:?];
  v25 = v67.origin.x;
  v26 = v67.origin.y;
  v27 = v67.size.width;
  v28 = v67.size.height;
  MinX = CGRectGetMinX(v67);
  v68.origin.x = v25;
  v68.origin.y = v26;
  v68.size.width = v27;
  v68.size.height = v28;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v11 relativeToRect:MinX withPageController:CGRectGetMinY(v68), v25, v26, v27, v28];
  v56 = v31;
  v57 = v30;
  v69.origin.x = v25;
  v69.origin.y = v26;
  v69.size.width = v27;
  v69.size.height = v28;
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = v25;
  v70.origin.y = v26;
  v70.size.width = v27;
  v70.size.height = v28;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v11 relativeToRect:MaxX withPageController:CGRectGetMinY(v70), v25, v26, v27, v28];
  v62 = v33;
  v58 = v34;
  v71.origin.x = v25;
  v71.origin.y = v26;
  v71.size.width = v27;
  v71.size.height = v28;
  v35 = CGRectGetMinX(v71);
  v72.origin.x = v25;
  v72.origin.y = v26;
  v72.size.width = v27;
  v72.size.height = v28;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v11 relativeToRect:v35 withPageController:CGRectGetMaxY(v72), v25, v26, v27, v28];
  v37 = v36;
  v39 = v38;
  v73.origin.x = v25;
  v73.origin.y = v26;
  v73.size.width = v27;
  v73.size.height = v28;
  v40 = CGRectGetMaxX(v73);
  v74.origin.x = v25;
  v74.origin.y = v26;
  v74.size.width = v27;
  v74.size.height = v28;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v11 relativeToRect:v40 withPageController:CGRectGetMaxY(v74), v25, v26, v27, v28];
  v42 = v41;
  v44 = v43;
  v45 = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (v45 > 4)
  {
    if ((v45 - 5) < 2)
    {
      v46 = v56;
      v47 = v57;
      v48 = v44;
      v62 = v42;
      goto LABEL_11;
    }

    if (v45 == 7)
    {
      v46 = v58;
      v47 = v62;
      v48 = v39;
      v62 = v37;
      goto LABEL_11;
    }

    v46 = v54;
    v47 = v55;
    v48 = v54;
    v62 = v55;
    if (v45 != 8)
    {
      goto LABEL_11;
    }

LABEL_8:
    v46 = v44;
    v47 = v42;
    v48 = v56;
    v62 = v57;
    goto LABEL_11;
  }

  v46 = v39;
  v47 = v37;
  v48 = v58;
  if ((v45 - 2) >= 3)
  {
    v46 = v54;
    v47 = v55;
    v48 = v54;
    v62 = v55;
    if (v45 == 1)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  MidX = CGRectGetMidX(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  MidY = CGRectGetMidY(v76);
  if ([v63 conformsToAKFlippableAnnotationProtocol])
  {
    v51 = v63;
    if (objc_opt_respondsToSelector())
    {
      v52 = [v51 horizontallyFlipped];
    }

    else
    {
      v52 = 0;
    }

    [(AKRectangularAnnotationEventHandler *)self setInitialHorizontalFlip:v52];
    if (objc_opt_respondsToSelector())
    {
      v53 = [v51 verticallyFlipped];
    }

    else
    {
      v53 = 0;
    }

    [(AKRectangularAnnotationEventHandler *)self setInitialVerticalFlip:v53];
  }

  a3->x = v62;
  a3->y = v48;
  a4->x = v47;
  a4->y = v46;
  a5->x = MidX;
  a5->y = MidY;
}

- (void)setupDraggingConstraints
{
  v5 = [(AKAnnotationEventHandler *)self pageController];
  v3 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v5 currentModelToScreenExifOrientation]);
  v4 = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (v4 > 5)
  {
    if (v4 == 8)
    {
LABEL_9:
      if (!v3)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (v4 != 6)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (v3)
    {
LABEL_10:
      [(AKAnnotationEventHandler *)self setDraggingHorizontalOnly:1];
      goto LABEL_11;
    }

LABEL_8:
    [(AKAnnotationEventHandler *)self setDraggingVerticalOnly:1];
    goto LABEL_11;
  }

  if (v4 == 2)
  {
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    goto LABEL_9;
  }

LABEL_11:
}

- (CGRect)_rectForModifiedRotatedRect:(CGRect)a3 withOriginal:(CGRect)a4 andRotation:(double)a5
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v6 = a3.size.height;
  v7 = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  v23.origin.x = v9;
  v23.origin.y = v8;
  v23.size.width = v7;
  v23.size.height = v6;
  MidY = CGRectGetMidY(v23);
  [AKGeometryHelper rotationTransformForRect:x withAngle:y, width, height, a5];
  v12 = MidY * 0.0 + 0.0 * MidX + 0.0;
  v24.origin.x = v9;
  v24.origin.y = v8;
  v24.size.width = v7;
  v24.size.height = v6;
  v13 = v12 + CGRectGetWidth(v24) * -0.5;
  v25.origin.x = v9;
  v25.origin.y = v8;
  v25.size.width = v7;
  v25.size.height = v6;
  v14 = v12 + CGRectGetHeight(v25) * -0.5;
  v26.origin.x = v9;
  v26.origin.y = v8;
  v26.size.width = v7;
  v26.size.height = v6;
  v15 = CGRectGetWidth(v26);
  v27.origin.x = v9;
  v27.origin.y = v8;
  v27.size.width = v7;
  v27.size.height = v6;
  v16 = CGRectGetHeight(v27);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(AKAnnotationEventHandler *)self pageController];
  v9 = [(AKAnnotationEventHandler *)self annotation];
  [v9 rectangle];
  v99 = v11;
  v100 = v10;
  v97 = v13;
  v98 = v12;
  v14 = 0.0;
  if ([v9 conformsToAKRotatableAnnotationProtocol])
  {
    [v9 rotationAngle];
    v14 = v15;
  }

  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  [v9 rectangle];
  [AKGeometryHelper rotationTransformForRect:"rotationTransformForRect:withAngle:" withAngle:?];
  v16 = y * 0.0 + 0.0 * x + 0.0;
  if ([(AKAnnotationEventHandler *)self draggingHorizontalOnly])
  {
    [(AKAnnotationEventHandler *)self initialDraggedPoint];
    v18 = v17;
  }

  else
  {
    v18 = y * 0.0 + 0.0 * x + 0.0;
    if ([(AKAnnotationEventHandler *)self draggingVerticalOnly])
    {
      [(AKAnnotationEventHandler *)self initialDraggedPoint];
      v16 = v19;
    }
  }

  if (v4)
  {
    [(AKAnnotationEventHandler *)self initialCenter];
    v41 = v40;
    v43 = v42;
    v44 = v16 - v40;
    v45 = v18 - v42;
    if ([(AKAnnotationEventHandler *)self canLockAspectRatio]&& ([(AKAnnotationEventHandler *)self alwaysLockAspectRatio]|| ((((v4 & 2) == 0) ^ [(AKAnnotationEventHandler *)self lockAspectRatioByDefault]) & 1) == 0))
    {
      [(AKAnnotationEventHandler *)self naturalAspectRatioForAnnotation];
      [AKGeometryHelper snapVector:[(AKAnnotationEventHandler *)self draggingVerticalOnly] toDiagonalForAspectRatio:[(AKAnnotationEventHandler *)self draggingHorizontalOnly] ignoreWidth:v44 ignoreHeight:v45, v46];
      v44 = v47;
      v45 = v48;
      v16 = v41 + v47;
      v18 = v43 + v48;
    }

    v21 = v41 - v44;
    v23 = v43 - v45;
  }

  else
  {
    [(AKAnnotationEventHandler *)self initialOtherPoint];
    v21 = v20;
    v23 = v22;
    if ([(AKAnnotationEventHandler *)self canLockAspectRatio])
    {
      if ([(AKAnnotationEventHandler *)self alwaysLockAspectRatio])
      {
        [(AKAnnotationEventHandler *)self naturalSizeForAnnotation];
        v25 = v24;
        v27 = v26;
        v28 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v9 originalExifOrientation]);
        [AKGeometryHelper adjustPoint:v28 forExifOrientation:v25 aboutCenter:v27, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
        v30 = v29;
        v32 = v31;
        v33 = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
        if (v33 == 3)
        {
          v34 = -v32;
        }

        else
        {
          v34 = v32;
        }

        if (v33 == 7)
        {
          v34 = v32;
          v35 = -v30;
        }

        else
        {
          v35 = v30;
        }

        if (v33 == 1)
        {
          v36 = -v32;
        }

        else
        {
          v36 = v34;
        }

        if (v33 == 1)
        {
          v37 = -v30;
        }

        else
        {
          v37 = v35;
        }

        [AKGeometryHelper projectVector:v16 - v21 ontoAspectVector:v18 - v23, v37, v36, v35];
        v16 = v21 + v38;
        v18 = v23 + v39;
      }

      else if (((((v4 & 2) == 0) ^ [(AKAnnotationEventHandler *)self lockAspectRatioByDefault]) & 1) == 0)
      {
        [(AKAnnotationEventHandler *)self naturalAspectRatioForAnnotation];
        [AKGeometryHelper snapVector:[(AKAnnotationEventHandler *)self draggingVerticalOnly] toDiagonalForAspectRatio:[(AKAnnotationEventHandler *)self draggingHorizontalOnly] ignoreWidth:v16 - v21 ignoreHeight:v18 - v23, v82];
        v84 = v83;
        v16 = v21 + v85;
        if ([(AKAnnotationEventHandler *)self draggingHorizontalOnly])
        {
          [(AKAnnotationEventHandler *)self naturalAspectRatioForAnnotation];
          v87 = (v16 - v21) / v86;
          [(AKAnnotationEventHandler *)self initialCenter];
          v88 = v87 * 0.5;
          v23 = v89 - v87 * 0.5;
          [(AKAnnotationEventHandler *)self initialCenter];
          v18 = v88 + v90;
        }

        else
        {
          v18 = v23 + v84;
          if ([(AKAnnotationEventHandler *)self draggingVerticalOnly])
          {
            [(AKAnnotationEventHandler *)self naturalAspectRatioForAnnotation];
            v92 = (v18 - v23) * v91;
            [(AKAnnotationEventHandler *)self initialCenter];
            v93 = v92 * 0.5;
            v21 = v94 - v93;
            [(AKAnnotationEventHandler *)self initialCenter];
            v16 = v93 + v95;
          }
        }
      }
    }
  }

  if (v16 != v21 || v18 != v23)
  {
    [(AKRectangularAnnotationEventHandler *)self _updateModelFlippednessWithCurrentPoint:v16, v18];
    v105.size.width = v16 - v21;
    v105.size.height = v18 - v23;
    v105.origin.x = v21;
    v105.origin.y = v23;
    v106 = CGRectStandardize(v105);
    v50 = v106.origin.x;
    v51 = v106.origin.y;
    width = v106.size.width;
    height = v106.size.height;
    MidX = CGRectGetMidX(v106);
    v107.origin.x = v50;
    v107.origin.y = v51;
    v107.size.width = width;
    v107.size.height = height;
    MidY = CGRectGetMidY(v107);
    v56 = objc_opt_class();
    [(AKAnnotationEventHandler *)self initialCenter];
    [v56 annotationRectangleForDraggingBounds:v9 forAnnotation:v8 onPageController:v50 withOriginalCenter:{v51, width, height, v57, v58}];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    if (vabdd_f64(round(v14 / 1.57079633), v14 / 1.57079633) < 0.0005)
    {
      v67 = [v8 geometryHelper];
      [v67 contentAlignedRectForRect:{v60, v62, v64, v66}];
      v60 = v68;
      v62 = v69;
      v64 = v70;
      v66 = v71;
    }

    if (fabs(v14) >= 0.0005)
    {
      [(AKRectangularAnnotationEventHandler *)self _rectForModifiedRotatedRect:v60 withOriginal:v62 andRotation:v64, v66, v100, v99, v98, v97, *&v14];
      v60 = v108.origin.x;
      v62 = v108.origin.y;
      v64 = v108.size.width;
      v66 = v108.size.height;
      v72 = CGRectGetMidX(v108) - MidX;
      v109.origin.x = v60;
      v109.origin.y = v62;
      v109.size.width = v64;
      v109.size.height = v66;
      v73 = CGRectGetMidY(v109) - MidY;
      [(AKAnnotationEventHandler *)self initialDraggedPoint];
      [(AKAnnotationEventHandler *)self setInitialDraggedPoint:v72 + v74, v73 + v75];
      [(AKAnnotationEventHandler *)self initialOtherPoint];
      [(AKAnnotationEventHandler *)self setInitialOtherPoint:v72 + v76, v73 + v77];
      [(AKAnnotationEventHandler *)self initialCenter];
      [(AKAnnotationEventHandler *)self setInitialCenter:v72 + v78, v73 + v79];
    }

    if (![AKGeometryHelper isUnpresentableRect:v60, v62, v64, v66])
    {
      [v9 rectangle];
      v111.origin.x = v60;
      v111.origin.y = v62;
      v111.size.width = v64;
      v111.size.height = v66;
      if (!CGRectEqualToRect(v110, v111))
      {
        [v9 setRectangle:{v60, v62, v64, v66}];
        if ([v9 conformsToAKTextAnnotationProtocol])
        {
          v80 = v9;
          v101 = 0;
          LOBYTE(v96) = 0;
          [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v101 forAnnotation:v80 onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), v8, 0, v96, 0];
          v81 = [v80 textIsClipped];
          if (v101 != v81)
          {
            [v80 setTextIsClipped:?];
          }
        }
      }
    }
  }
}

- (void)_updateModelFlippednessWithCurrentPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AKAnnotationEventHandler *)self annotation];
  v7 = [v6 conformsToAKFlippableAnnotationProtocol];

  if (v7)
  {
    v8 = [(AKAnnotationEventHandler *)self annotation];
    if ([v8 conformsToAKRotatableAnnotationProtocol])
    {
      [v8 rotationAngle];
    }

    [v8 rectangle];
    [AKGeometryHelper rotationTransformForRect:"rotationTransformForRect:withAngle:" withAngle:?];
    [(AKAnnotationEventHandler *)self initialOtherPoint];
    v15 = v10;
    v16 = v9;
    [(AKAnnotationEventHandler *)self initialDraggedPoint];
    v14 = v11;
    v13 = v12;
    if (![(AKAnnotationEventHandler *)self draggingVerticalOnly]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 setHorizontallyFlipped:{-[AKRectangularAnnotationEventHandler initialHorizontalFlip](self, "initialHorizontalFlip") ^ (((COERCE_UNSIGNED_INT64(y * 0.0 + 0.0 * x + 0.0 - (v15 * 0.0 + 0.0 * v16 + 0.0)) ^ COERCE_UNSIGNED_INT64(v13 * 0.0 + 0.0 * v14 + 0.0 - (v15 * 0.0 + 0.0 * v16 + 0.0))) & 0x8000000000000000) != 0)}];
    }

    if (![(AKAnnotationEventHandler *)self draggingHorizontalOnly]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 setVerticallyFlipped:{-[AKRectangularAnnotationEventHandler initialVerticalFlip](self, "initialVerticalFlip") ^ (((COERCE_UNSIGNED_INT64(y * 0.0 + 0.0 * x + 0.0 - (v15 * 0.0 + 0.0 * v16 + 0.0)) ^ COERCE_UNSIGNED_INT64(v13 * 0.0 + 0.0 * v14 + 0.0 - (v15 * 0.0 + 0.0 * v16 + 0.0))) & 0x8000000000000000) != 0)}];
    }
  }
}

@end