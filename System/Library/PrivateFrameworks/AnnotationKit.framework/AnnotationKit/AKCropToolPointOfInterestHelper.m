@interface AKCropToolPointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKCropToolPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v6 = MEMORY[0x277CBEBF8];
  *a3 = MEMORY[0x277CBEBF8];
  *a4 = v6;
}

+ (unint64_t)_concreteDraggableAreaForPoint:(CGPoint)a3 onAnnotation:(id)a4 withScale:(double)a5 pageControllerForPixelAlignment:(id)a6
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a6;
  v11 = [v10 currentModelToScreenExifOrientation];
  v12 = [AKCropAnnotationRenderer cropHandle:7 forAnnotation:v9 withPageController:v10];
  PathBoundingBox = CGPathGetPathBoundingBox(v12);
  v13 = PathBoundingBox.origin.x;
  v14 = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  CGPathRelease(v12);
  v68.origin.x = v13;
  v68.origin.y = v14;
  v68.size.width = width;
  v68.size.height = height;
  v69 = CGRectInset(v68, -5.0, -5.0);
  v59.x = x;
  v59.y = y;
  if (CGRectContainsPoint(v69, v59) && (v17 = [AKGeometryHelper draggableArea:3 convertedForExif:v11]) != 0
    || (v18 = [AKCropAnnotationRenderer cropHandle:4 forAnnotation:v9 withPageController:v10], v70 = CGPathGetPathBoundingBox(v18), v19 = v70.origin.x, v20 = v70.origin.y, v21 = v70.size.width, v22 = v70.size.height, CGPathRelease(v18), v71.origin.x = v19, v71.origin.y = v20, v71.size.width = v21, v71.size.height = v22, v72 = CGRectInset(v71, -5.0, -5.0), v60.x = x, v60.y = y, CGRectContainsPoint(v72, v60)) && (v17 = [AKGeometryHelper draggableArea:7 convertedForExif:v11]) != 0
    || (v23 = [AKCropAnnotationRenderer cropHandle:5 forAnnotation:v9 withPageController:v10], v73 = CGPathGetPathBoundingBox(v23), v24 = v73.origin.x, v25 = v73.origin.y, v26 = v73.size.width, v27 = v73.size.height, CGPathRelease(v23), v74.origin.x = v24, v74.origin.y = v25, v74.size.width = v26, v74.size.height = v27, v75 = CGRectInset(v74, -5.0, -5.0), v61.x = x, v61.y = y, CGRectContainsPoint(v75, v61)) && (v17 = [AKGeometryHelper draggableArea:5 convertedForExif:v11]) != 0
    || (v28 = [AKCropAnnotationRenderer cropHandle:6 forAnnotation:v9 withPageController:v10], v76 = CGPathGetPathBoundingBox(v28), v29 = v76.origin.x, v30 = v76.origin.y, v31 = v76.size.width, v32 = v76.size.height, CGPathRelease(v28), v77.origin.x = v29, v77.origin.y = v30, v77.size.width = v31, v77.size.height = v32, v78 = CGRectInset(v77, -5.0, -5.0), v62.x = x, v62.y = y, CGRectContainsPoint(v78, v62)) && (v17 = [AKGeometryHelper draggableArea:1 convertedForExif:v11]) != 0
    || (v33 = [AKCropAnnotationRenderer cropHandle:1 forAnnotation:v9 withPageController:v10]) != 0 && (v34 = v33, v79 = CGPathGetPathBoundingBox(v33), v35 = v79.origin.x, v36 = v79.origin.y, v37 = v79.size.width, v38 = v79.size.height, CGPathRelease(v34), v80.origin.x = v35, v80.origin.y = v36, v80.size.width = v37, v80.size.height = v38, v81 = CGRectInset(v80, -5.0, -5.0), v63.x = x, v63.y = y, CGRectContainsPoint(v81, v63)) && (v17 = [AKGeometryHelper draggableArea:4 convertedForExif:v11]) != 0
    || (v39 = [AKCropAnnotationRenderer cropHandle:3 forAnnotation:v9 withPageController:v10]) != 0 && (v40 = v39, v82 = CGPathGetPathBoundingBox(v39), v41 = v82.origin.x, v42 = v82.origin.y, v43 = v82.size.width, v44 = v82.size.height, CGPathRelease(v40), v83.origin.x = v41, v83.origin.y = v42, v83.size.width = v43, v83.size.height = v44, v84 = CGRectInset(v83, -5.0, -5.0), v64.x = x, v64.y = y, CGRectContainsPoint(v84, v64)) && (v17 = [AKGeometryHelper draggableArea:2 convertedForExif:v11]) != 0
    || (v45 = [AKCropAnnotationRenderer cropHandle:0 forAnnotation:v9 withPageController:v10]) != 0 && (v46 = v45, v85 = CGPathGetPathBoundingBox(v45), v47 = v85.origin.x, v48 = v85.origin.y, v49 = v85.size.width, v50 = v85.size.height, CGPathRelease(v46), v86.origin.x = v47, v86.origin.y = v48, v86.size.width = v49, v86.size.height = v50, v87 = CGRectInset(v86, -5.0, -5.0), v65.x = x, v65.y = y, CGRectContainsPoint(v87, v65)) && (v17 = [AKGeometryHelper draggableArea:8 convertedForExif:v11]) != 0
    || (v51 = [AKCropAnnotationRenderer cropHandle:2 forAnnotation:v9 withPageController:v10]) != 0 && (v52 = v51, v88 = CGPathGetPathBoundingBox(v51), v53 = v88.origin.x, v54 = v88.origin.y, v55 = v88.size.width, v56 = v88.size.height, CGPathRelease(v52), v89.origin.x = v53, v89.origin.y = v54, v89.size.width = v55, v89.size.height = v56, v90 = CGRectInset(v89, -5.0, -5.0), v66.x = x, v66.y = y, CGRectContainsPoint(v90, v66)) && (v17 = [AKGeometryHelper draggableArea:6 convertedForExif:v11]) != 0)
  {
    v57 = v17;
  }

  else if ([AKAnnotationRenderer pointIsOnInside:v9 ofAnnotation:x, y])
  {
    v57 = 20;
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

@end