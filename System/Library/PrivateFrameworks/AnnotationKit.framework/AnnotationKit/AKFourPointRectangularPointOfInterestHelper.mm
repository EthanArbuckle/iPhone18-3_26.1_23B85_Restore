@interface AKFourPointRectangularPointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKFourPointRectangularPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  alignmentCopy = alignment;
  v10 = MEMORY[0x277CBEB18];
  annotationCopy = annotation;
  v12 = [v10 arrayWithCapacity:4];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [annotationCopy rectangle];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v47 = 0.0;
  v22 = [AKGeometryHelper annotationHasRotation:annotationCopy outAngle:&v47];
  [AKGeometryHelper rotationTransformForRect:v15 withAngle:v17, v19, v21, v47, 0, 0, 0, 0, 0, 0];
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:annotationCopy];
  v24 = v23;
  v26 = v25;

  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v49 = CGRectInset(v48, v24, v26);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  if ((v22 & 1) == 0)
  {
    geometryHelper = [alignmentCopy geometryHelper];
    [geometryHelper screenPixelAlignedRectForRect:{x, y, width, height}];
    x = v32;
    y = v33;
    width = v34;
    height = v35;
  }

  [AKGeometryHelper convertModelToScreenOrientationForRect:alignmentCopy withPageController:x, y, width, height];
  v36 = v50.origin.x;
  v37 = v50.origin.y;
  v38 = v50.size.width;
  v39 = v50.size.height;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v36;
  v51.origin.y = v37;
  v51.size.width = v38;
  v51.size.height = v39;
  MaxX = CGRectGetMaxX(v51);
  v52.origin.x = v36;
  v52.origin.y = v37;
  v52.size.width = v38;
  v52.size.height = v39;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = v36;
  v53.origin.y = v37;
  v53.size.width = v38;
  v53.size.height = v39;
  MaxY = CGRectGetMaxY(v53);
  sub_23F4AE7B8(alignmentCopy, v22, &v46, v12, v13, MaxX, MinY, v36, v37, v38, v39);
  sub_23F4AE7B8(alignmentCopy, v22, &v46, v12, v13, MinX, MinY, v36, v37, v38, v39);
  sub_23F4AE7B8(alignmentCopy, v22, &v46, v12, v13, MaxX, MaxY, v36, v37, v38, v39);
  sub_23F4AE7B8(alignmentCopy, v22, &v46, v12, v13, MinX, MaxY, v36, v37, v38, v39);
  v44 = v12;
  *interest = v12;
  v45 = v13;
  *style = v13;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  if (index > 3)
  {
    return 0;
  }

  else
  {
    return qword_23F4D9468[index];
  }
}

@end