@interface AKTwoPointRectangularTextPointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKTwoPointRectangularTextPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  annotationCopy = annotation;
  alignmentCopy = alignment;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [annotationCopy rectangle];
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  MidX = CGRectGetMidX(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  MidY = CGRectGetMidY(v66);
  originalExifOrientation = [annotationCopy originalExifOrientation];
  v19 = [AKGeometryHelper inverseExifOrientation:originalExifOrientation];
  v64[0] = 0.0;
  v20 = [AKGeometryHelper annotationHasRotation:annotationCopy outAngle:v64];
  v21 = *(MEMORY[0x277CBF2C0] + 16);
  v63[0] = *MEMORY[0x277CBF2C0];
  v63[1] = v21;
  v63[2] = *(MEMORY[0x277CBF2C0] + 32);
  if (v20)
  {
    [AKGeometryHelper rotationTransformForRect:x withAngle:y, width, height, v64[0]];
  }

  [AKGeometryHelper adjustRect:v19 forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  v22 = CGRectGetMidY(v67);
  if (v20)
  {
    v61 = v22;
  }

  else
  {
    [AKGeometryHelper adjustPoint:v19 forExifOrientation:0.0 aboutCenter:v22, MidX, MidY];
    v24 = v23;
    v26 = v25;
    geometryHelper = [alignmentCopy geometryHelper];
    [geometryHelper screenPixelAlignedPointForPoint:{v24, v26}];
    v29 = v28;
    v31 = v30;

    [AKGeometryHelper adjustPoint:originalExifOrientation forExifOrientation:v29 aboutCenter:v31, MidX, MidY];
    v61 = v32;
    [annotationCopy strokeWidth];
    [AKGeometryHelper renderingStrokeAlignedRectForRect:alignmentCopy withStrokeWidth:0 alignToScreenUsingPageController:0 orAlignToContext:x usingAnnotation:y, width, height, v33];
    x = v34;
    y = v35;
    width = v36;
    height = v37;
  }

  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:annotationCopy];
  v39 = v38;
  v41 = v40;
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v69 = CGRectInset(v68, v39, v41);
  v42 = v69.origin.x;
  v43 = v69.origin.y;
  v44 = v69.size.width;
  v45 = v69.size.height;
  if ((v20 & 1) == 0)
  {
    geometryHelper2 = [alignmentCopy geometryHelper];
    [geometryHelper2 screenPixelAlignedRectForRect:{v42, v43, v44, v45}];
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
  }

  [AKGeometryHelper adjustRect:v19 forExifOrientation:v42 aboutCenter:v43, v44, v45, MidX, MidY];
  v51 = v70.origin.x;
  v52 = v70.origin.y;
  v53 = v70.size.width;
  v54 = v70.size.height;
  MinX = CGRectGetMinX(v70);
  v71.origin.x = v51;
  v71.origin.y = v52;
  v71.size.width = v53;
  v71.size.height = v54;
  MaxX = CGRectGetMaxX(v71);
  if ([annotationCopy conformsToAKTextAnnotationProtocol] && objc_msgSend(annotationCopy, "textIsClipped"))
  {
    v72.origin.x = v51;
    v72.origin.y = v52;
    v72.size.width = v53;
    v72.size.height = v54;
    v60 = CGRectGetMidX(v72);
    v73.origin.x = v51;
    v73.origin.y = v52;
    v73.size.width = v53;
    v73.size.height = v54;
    MinY = CGRectGetMinY(v73);
    sub_23F41C094(2, originalExifOrientation, alignmentCopy, v20, v63, v10, v11, v60, MinY, MidX, MidY);
  }

  sub_23F41C094(0, originalExifOrientation, alignmentCopy, v20, v63, v10, v11, MaxX, v61, MidX, MidY);
  sub_23F41C094(0, originalExifOrientation, alignmentCopy, v20, v63, v10, v11, MinX, v61, MidX, MidY);
  v58 = v10;
  *interest = v10;
  v59 = v11;
  *style = v11;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  if (index)
  {
    v6 = 8 * (index == 1);
  }

  else
  {
    v6 = 4;
  }

  controllerCopy = controller;
  originalExifOrientation = [annotation originalExifOrientation];
  currentModelToScreenExifOrientation = [controllerCopy currentModelToScreenExifOrientation];

  v10 = [AKGeometryHelper draggableArea:v6 convertedForExif:originalExifOrientation];

  return [AKGeometryHelper draggableArea:v10 convertedForExif:currentModelToScreenExifOrientation];
}

@end