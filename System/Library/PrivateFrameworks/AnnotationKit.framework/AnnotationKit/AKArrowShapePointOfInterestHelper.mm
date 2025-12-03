@interface AKArrowShapePointOfInterestHelper
+ (CGPoint)_arrowHeadInnerControlPoint:(id)point;
+ (CGPoint)_arrowHeadOuterControlPoint:(id)point;
+ (CGPoint)_centeredBaseControlPoint:(id)point;
+ (CGPoint)_concreteValidatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller;
+ (CGPoint)_normalizedDirectionVector:(id)vector;
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKArrowShapePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  annotationCopy = annotation;
  v48 = 0;
  v49 = 0;
  v47.receiver = self;
  v47.super_class = &OBJC_METACLASS___AKArrowShapePointOfInterestHelper;
  alignmentCopy = alignment;
  objc_msgSendSuper2(&v47, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, &v49, &v48, annotationCopy, alignmentCopy);
  v10 = v49;
  v11 = v48;
  if ([annotationCopy conformsToAKTextAnnotationProtocol])
  {
    textIsClipped = [annotationCopy textIsClipped];
    if (textIsClipped)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    textIsClipped = 0;
    v13 = 2;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count", interest) + v13}];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count") + v13}];
  if (textIsClipped)
  {
    v16 = MEMORY[0x277CCAE60];
    v17 = [v10 objectAtIndex:0];
    [v17 akPointValue];
    v18 = [v16 akValueWithPoint:?];
    [v14 addObject:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:2];
    [v15 addObject:v19];
  }

  [v14 addObjectsFromArray:v10];
  [v15 addObjectsFromArray:v11];
  [self _arrowHeadOuterControlPoint:annotationCopy];
  v21 = v20;
  v23 = v22;
  [self _arrowHeadInnerControlPoint:annotationCopy];
  v25 = v24;
  v27 = v26;
  geometryHelper = [alignmentCopy geometryHelper];
  [geometryHelper screenPixelAlignedPointForPoint:{v21, v23}];
  v30 = v29;
  v32 = v31;

  geometryHelper2 = [alignmentCopy geometryHelper];

  [geometryHelper2 screenPixelAlignedPointForPoint:{v25, v27}];
  v35 = v34;
  v37 = v36;

  v38 = [MEMORY[0x277CCAE60] akValueWithPoint:{v30, v32}];
  [v14 addObject:v38];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v15 addObject:v39];

  v40 = [MEMORY[0x277CCAE60] akValueWithPoint:{v35, v37}];
  [v14 addObject:v40];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v15 addObject:v41];

  v42 = v14;
  *v45 = v14;
  v43 = v15;
  *style = v15;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  if ([annotationCopy conformsToAKTextAnnotationProtocol] && objc_msgSend(annotationCopy, "textIsClipped"))
  {
    if (!index)
    {
      goto LABEL_12;
    }

    --index;
  }

  if (index < 2)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___AKArrowShapePointOfInterestHelper;
    index = objc_msgSendSuper2(&v12, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, index, annotationCopy, controllerCopy);
  }

  else
  {
    v10 = 12;
    if (index != 3)
    {
      v10 = 0;
    }

    if (index == 2)
    {
      index = 13;
    }

    else
    {
      index = v10;
    }
  }

LABEL_12:

  return index;
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  controllerCopy = controller;
  v12 = annotationCopy;
  v13 = v12;
  if ((area & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    [v12 startPoint];
    v15 = v14;
    v17 = v16;
    [v13 endPoint];
    [AKGeometryHelper projectPoint:x ontoRayWithFirstPoint:y andSecondPoint:v15, v17, v18, v19];
    v21 = v20;
    v23 = v22;
    v24 = x - v20;
    v25 = y - v22;
    v26 = hypot(x - v20, y - v22);
    [AKGeometryHelper normalizeVectorPoint:v24, v25];
    v106 = v28;
    v107 = v27;
    [v13 startPoint];
    v30 = v29;
    v32 = v31;
    [v13 endPoint];
    v35 = [AKGeometryHelper isPointOnLeft:x ofRayWithFirstPoint:y andSecondPoint:v30, v32, v33, v34];
    v36 = v35 ^ +[AKGeometryHelper exifOrientationHasFlip:](AKGeometryHelper, "exifOrientationHasFlip:", [v13 originalExifOrientation]);
    if (area == 12)
    {
      v37 = 0.0;
      if (v36)
      {
        [v13 arrowHeadWidth];
        v37 = v26;
        if (v26 + v26 > v38)
        {
          [v13 arrowHeadWidth];
LABEL_13:
          v37 = v39 * 0.5;
        }
      }
    }

    else if (!v36 || ([v13 arrowLineWidth], v37 = v26, v26 + v26 < v58))
    {
      [v13 arrowLineWidth];
      goto LABEL_13;
    }

    [v13 endPoint];
    v105 = v59;
    [v13 startPoint];
    v104 = v60;
    [v13 endPoint];
    v103 = v61;
    [v13 startPoint];
    v102 = v62;
    [v13 startPoint];
    v101 = v63;
    [v13 startPoint];
    v65 = v64;
    [v13 startPoint];
    v67 = v21 - v66;
    [v13 startPoint];
    [AKGeometryHelper normalizeVectorPoint:v67, v23 - v68];
    [v13 endPoint];
    v70 = v69;
    [v13 startPoint];
    v72 = v70 - v71;
    [v13 endPoint];
    v74 = v73;
    [v13 startPoint];
    [AKGeometryHelper normalizeVectorPoint:v72, v74 - v75];
    [AKGeometryHelper compareVectorDirectionsFirstVector:"compareVectorDirectionsFirstVector:secondVector:" secondVector:?];
    if (v77 < 0.0 || v76 < 0.0)
    {
      [v13 startPoint];
    }

    else
    {
      v78 = hypot(v21 - v101, v23 - v65);
      if (v78 <= hypot(v105 - v104, v103 - v102))
      {
LABEL_20:
        x = v21 + v37 * v107;
        y = v23 + v37 * v106;
        goto LABEL_21;
      }

      [v13 endPoint];
    }

    v21 = v79;
    v23 = v80;
    goto LABEL_20;
  }

  if (area == 10)
  {
    [v12 startPoint];
    v84 = x - v83;
    [v13 startPoint];
    v86 = hypot(v84, y - v85);
    [v13 startPoint];
    v88 = x - v87;
    [v13 startPoint];
    [AKGeometryHelper normalizeVectorPoint:v88, y - v89];
    v91 = v90;
    v93 = v92;
    [v13 arrowHeadLength];
    if (v86 < v94)
    {
      [v13 startPoint];
      v96 = v95;
      [v13 arrowHeadLength];
      x = v96 + v97 * v91;
      [v13 startPoint];
      v99 = v98;
      [v13 arrowHeadLength];
      y = v99 + v100 * v93;
    }
  }

  else if (area == 9)
  {
    [v12 endPoint];
    v41 = v40 - x;
    [v13 endPoint];
    v43 = hypot(v41, v42 - y);
    [v13 endPoint];
    v45 = v44 - x;
    [v13 endPoint];
    [AKGeometryHelper normalizeVectorPoint:v45, v46 - y];
    v48 = v47;
    v50 = v49;
    [v13 arrowHeadLength];
    if (v43 < v51)
    {
      [v13 endPoint];
      v53 = v52;
      [v13 arrowHeadLength];
      x = v53 - v54 * v48;
      [v13 endPoint];
      v56 = v55;
      [v13 arrowHeadLength];
      y = v56 - v57 * v50;
    }
  }

LABEL_21:

  v81 = x;
  v82 = y;
  result.y = v82;
  result.x = v81;
  return result;
}

+ (CGPoint)_normalizedDirectionVector:(id)vector
{
  vectorCopy = vector;
  [vectorCopy endPoint];
  v5 = v4;
  [vectorCopy startPoint];
  v7 = v5 - v6;
  [vectorCopy endPoint];
  v9 = v8;
  [vectorCopy startPoint];
  v11 = v10;

  [AKGeometryHelper normalizeVectorPoint:v7, v9 - v11];
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGPoint)_centeredBaseControlPoint:(id)point
{
  pointCopy = point;
  [pointCopy arrowHeadLength];
  v5 = v4;
  [pointCopy endPoint];
  v7 = v6;
  v9 = v8;
  [pointCopy startPoint];
  v11 = v10 - v7;
  [pointCopy startPoint];
  v13 = v12;

  [AKGeometryHelper normalizeVectorPoint:v11, v13 - v9];
  v15 = v7 + v5 * v14;
  v17 = v9 + v5 * v16;
  result.y = v17;
  result.x = v15;
  return result;
}

+ (CGPoint)_arrowHeadInnerControlPoint:(id)point
{
  pointCopy = point;
  [self _centeredBaseControlPoint:pointCopy];
  v6 = v5;
  v8 = v7;
  [self _normalizedDirectionVector:pointCopy];
  v10 = v9;
  v12 = v11;
  if (+[AKGeometryHelper exifOrientationHasFlip:](AKGeometryHelper, "exifOrientationHasFlip:", [pointCopy originalExifOrientation]))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = -1.0;
  }

  [pointCopy arrowLineWidth];
  v15 = v6 + v12 * v13 * (v14 * 0.5);
  [pointCopy arrowLineWidth];
  v17 = v16;

  v18 = v8 + -(v13 * v10) * (v17 * 0.5);
  v19 = v15;
  result.y = v18;
  result.x = v19;
  return result;
}

+ (CGPoint)_arrowHeadOuterControlPoint:(id)point
{
  pointCopy = point;
  [self _centeredBaseControlPoint:pointCopy];
  v6 = v5;
  v8 = v7;
  [self _normalizedDirectionVector:pointCopy];
  v10 = v9;
  v12 = v11;
  if (+[AKGeometryHelper exifOrientationHasFlip:](AKGeometryHelper, "exifOrientationHasFlip:", [pointCopy originalExifOrientation]))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = -1.0;
  }

  [pointCopy arrowHeadWidth];
  v15 = v6 + v12 * v13 * (v14 * 0.5);
  [pointCopy arrowHeadWidth];
  v17 = v16;

  v18 = v8 + -(v13 * v10) * (v17 * 0.5);
  v19 = v15;
  result.y = v18;
  result.x = v19;
  return result;
}

@end