@interface AKSpeechBubblePointOfInterestHelper
+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6;
+ (CGPoint)_endPointOfBoundingLineSegmentFromPointyPointThroughtPoint:(CGPoint)a3 forAnnotation:(id)a4;
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKSpeechBubblePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v46 = 0;
  v47[0] = 0;
  v45.receiver = a1;
  v45.super_class = &OBJC_METACLASS___AKSpeechBubblePointOfInterestHelper;
  v7 = a6;
  v8 = a5;
  objc_msgSendSuper2(&v45, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, v47, &v46, v8, v7);
  v38 = v47[0];
  v37 = v46;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count") + 1}];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v37, "count") + 1}];
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  [AKSpeechBubbleAnnotationRenderer basePointsOfPointyBit:v8 withUpdatedProperties:0 firstPoint:&v43 secondPoint:&v41];
  v11 = +[AKGeometryHelper exifOrientationHasFlip:](AKGeometryHelper, "exifOrientationHasFlip:", [v7 currentModelToScreenExifOrientation]);
  if (v11)
  {
    v13 = &v42;
  }

  else
  {
    v13 = &v44;
  }

  v14 = *v13;
  if (v11)
  {
    v15 = &v41;
  }

  else
  {
    v15 = &v43;
  }

  v36 = *v15;
  [v8 rectangle];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v8 rotationAngle];
  v25 = v24;

  [AKGeometryHelper rotationTransformForRect:v17 withAngle:v19, v21, v23, v25];
  v26 = [v7 geometryHelper];

  [v26 screenPixelAlignedPointForPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v35), 0, v36))}];
  v28 = v27;
  v30 = v29;

  v31 = [MEMORY[0x277CCAE60] akValueWithPoint:{v28, v30}];
  [v9 addObject:v31];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v10 addObject:v32];

  [v9 addObjectsFromArray:v38];
  [v10 addObjectsFromArray:v37];
  v33 = v9;
  *a3 = v9;
  v34 = v10;
  *a4 = v10;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  if (!a3)
  {
    return 15;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKSpeechBubblePointOfInterestHelper;
  return objc_msgSendSuper2(&v6, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, a3 - 1, a4, a5);
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6
{
  y = a3.y;
  x = a3.x;
  v52[1] = *MEMORY[0x277D85DE8];
  v11 = a5;
  if (a4 == 15)
  {
    v49 = 0.0;
    v50 = 0.0;
    v12 = a6;
    [v11 rectangle];
    v13 = v54.origin.x;
    v14 = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    MidX = CGRectGetMidX(v54);
    v55.origin.x = v13;
    v55.origin.y = v14;
    v55.size.width = width;
    v55.size.height = height;
    MidY = CGRectGetMidY(v55);
    v45 = x;
    v46 = y;
    [AKGeometryHelper intersectRayStartingAt:0 ending:MidX withEllipseOfRect:MidY farthestResult:x, y, v13, v14, width, height];
    v20 = v19;
    v22 = v21;
    [AKSpeechBubbleAnnotationRenderer pointyBitPointWidthAngleGivenControlBasePoint:v11 forAnnotation:?];
    v47 = v23;
    [v11 pointyBitPoint];
    v26 = [AKGeometryHelper isPointOnLeft:v20 ofRayWithFirstPoint:v22 andSecondPoint:v24, v25, MidX, MidY];
    v27 = [v12 currentModelToScreenExifOrientation];

    v28 = [AKGeometryHelper exifOrientationHasFlip:v27];
    v29 = 0.0;
    if (v28)
    {
      if (!v26)
      {
        v47 = 720.0 - v47;
        goto LABEL_7;
      }
    }

    else if (v26)
    {
LABEL_7:
      v35 = v47;
      if (v47 > 90.0)
      {
        [v11 pointyBitPoint];
        [AKGeometryHelper intersectLineSegmentStartingAt:1 ending:v45 withEllipseOfRect:v46 farthestResult:v36, v37, v13, v14, width, height];
        if (v39 != 9.22337204e18 && v38 != 9.22337204e18)
        {
          [AKSpeechBubbleAnnotationRenderer pointyBitPointWidthAngleGivenControlBasePoint:v11 forAnnotation:?];
          v35 = v40;
        }
      }

      if (v35 <= 90.0)
      {
        v29 = v35;
      }

      else
      {
        v29 = 90.0;
      }
    }

    v51 = @"pointyBitBaseWidthAngle";
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
    v52[0] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];

    [AKSpeechBubbleAnnotationRenderer basePointsOfPointyBit:v11 withUpdatedProperties:v42 firstPoint:&v49 secondPoint:0];
    goto LABEL_15;
  }

  v48.receiver = a1;
  v48.super_class = &OBJC_METACLASS___AKSpeechBubblePointOfInterestHelper;
  v30 = a6;
  objc_msgSendSuper2(&v48, sel__concreteValidatePoint_ofDraggableArea_forAnnotation_onPageController_, a4, v11, v30, x, y);
  v32 = v31;
  v34 = v33;

  v49 = v32;
  v50 = v34;
LABEL_15:

  v43 = v49;
  v44 = v50;
  result.y = v44;
  result.x = v43;
  return result;
}

+ (CGPoint)_endPointOfBoundingLineSegmentFromPointyPointThroughtPoint:(CGPoint)a3 forAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 rectangle];
  MidX = CGRectGetMidX(v29);
  [v6 rectangle];
  MidY = CGRectGetMidY(v30);
  [v6 rectangle];
  Width = CGRectGetWidth(v31);
  [v6 rectangle];
  Height = CGRectGetHeight(v32);
  if (Width < Height)
  {
    Width = Height;
  }

  [v6 pointyBitPoint];
  v12 = v11 - MidX;
  [v6 pointyBitPoint];
  v14 = Width + hypot(v12, v13 - MidY);
  [v6 pointyBitPoint];
  v16 = x - v15;
  [v6 pointyBitPoint];
  [AKGeometryHelper normalizeVectorPoint:v16, y - v17];
  v19 = v18;
  v21 = v20;
  [v6 pointyBitPoint];
  v23 = v22 + v14 * v19;
  [v6 pointyBitPoint];
  v25 = v24;

  v26 = v25 + v14 * v21;
  v27 = v23;
  result.y = v26;
  result.x = v27;
  return result;
}

@end