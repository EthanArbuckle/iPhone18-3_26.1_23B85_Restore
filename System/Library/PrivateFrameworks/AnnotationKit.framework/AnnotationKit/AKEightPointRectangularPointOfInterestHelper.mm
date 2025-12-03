@interface AKEightPointRectangularPointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKEightPointRectangularPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  annotationCopy = annotation;
  alignmentCopy = alignment;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  [annotationCopy rectangle];
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  if (CGRectIsInfinite(v71))
  {
    [alignmentCopy maxPageRect];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  v70 = 0.0;
  v21 = [AKGeometryHelper annotationHasRotation:annotationCopy outAngle:&v70];
  v22 = *(MEMORY[0x277CBF2C0] + 16);
  v69[0] = *MEMORY[0x277CBF2C0];
  v69[1] = v22;
  v69[2] = *(MEMORY[0x277CBF2C0] + 32);
  if (v21)
  {
    [AKGeometryHelper rotationTransformForRect:x withAngle:y, width, height, v70];
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  MidX = CGRectGetMidX(v72);
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  MidY = CGRectGetMidY(v73);
  v25 = MidY;
  if (v21)
  {
    v67 = MidX;
    [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:annotationCopy, *&MidY];
  }

  else
  {
    geometryHelper = [alignmentCopy geometryHelper];
    [geometryHelper screenPixelAlignedPointForPoint:{MidX, v25}];
    v30 = v29;
    v32 = v31;

    objc_opt_class();
    v67 = v30;
    if (objc_opt_isKindOfClass())
    {
      [annotationCopy strokeWidth];
      [AKGeometryHelper renderingStrokeAlignedRectForRect:alignmentCopy withStrokeWidth:0 alignToScreenUsingPageController:0 orAlignToContext:x usingAnnotation:y, width, height, v33];
      x = v34;
      y = v35;
      width = v36;
      height = v37;
    }

    [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:annotationCopy, v32];
  }

  v38 = v26;
  v39 = v27;
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  v75 = CGRectInset(v74, v38, v39);
  v40 = v75.origin.x;
  v41 = v75.origin.y;
  v42 = v75.size.width;
  v43 = v75.size.height;
  if ((v21 & 1) == 0)
  {
    geometryHelper2 = [alignmentCopy geometryHelper];
    [geometryHelper2 screenPixelAlignedRectForRect:{v40, v41, v42, v43}];
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v43 = v48;
  }

  [AKGeometryHelper convertModelToScreenOrientationForRect:alignmentCopy withPageController:v40, v41, v42, v43];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  [AKGeometryHelper convertModelToScreenOrientationForPoint:alignmentCopy relativeToRect:v67 withPageController:v65, v40, v41, v42, v43];
  v66 = v58;
  v68 = v57;
  v76.origin.x = v50;
  v76.origin.y = v52;
  v76.size.width = v54;
  v76.size.height = v56;
  MinX = CGRectGetMinX(v76);
  v77.origin.x = v50;
  v77.origin.y = v52;
  v77.size.width = v54;
  v77.size.height = v56;
  MaxX = CGRectGetMaxX(v77);
  v78.origin.x = v50;
  v78.origin.y = v52;
  v78.size.width = v54;
  v78.size.height = v56;
  MinY = CGRectGetMinY(v78);
  v79.origin.x = v50;
  v79.origin.y = v52;
  v79.size.width = v54;
  v79.size.height = v56;
  MaxY = CGRectGetMaxY(v79);
  if ([annotationCopy conformsToAKTextAnnotationProtocol] && objc_msgSend(annotationCopy, "textIsClipped"))
  {
    sub_23F42A9AC(2, alignmentCopy, v21, v69, v11, v12, v68, MinY, v50, v52, v54, v56);
  }

  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, MaxX, MinY, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, MaxX, MaxY, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, MinX, MinY, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, MinX, MaxY, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, MinX, v66, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, v68, MinY, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, v68, MaxY, v50, v52, v54, v56);
  sub_23F42A9AC(0, alignmentCopy, v21, v69, v11, v12, MaxX, v66, v50, v52, v54, v56);
  v63 = v11;
  *interest = v11;
  v64 = v12;
  *style = v12;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  annotationCopy = annotation;
  if ([annotationCopy conformsToAKTextAnnotationProtocol])
  {
    textIsClipped = [annotationCopy textIsClipped];
    indexCopy2 = index - 1;
    if (!index)
    {
      indexCopy2 = 0;
    }

    if (!textIsClipped)
    {
      indexCopy2 = index;
    }

    if (!index && (textIsClipped & 1) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    indexCopy2 = index;
  }

  if (indexCopy2 > 7)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = qword_23F4D8F30[indexCopy2];
LABEL_13:

  return v9;
}

@end