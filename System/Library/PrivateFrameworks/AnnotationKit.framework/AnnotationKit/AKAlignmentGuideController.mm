@interface AKAlignmentGuideController
- (AKAlignmentGuideController)initWithPageController:(id)controller;
- (AKPageController)pageController;
- (CGPoint)guideAlignedPointForPoint:(CGPoint)point withEvent:(id)event orRecognizer:(id)recognizer;
- (void)dealloc;
@end

@implementation AKAlignmentGuideController

- (AKAlignmentGuideController)initWithPageController:(id)controller
{
  v67 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v64.receiver = self;
  v64.super_class = AKAlignmentGuideController;
  v5 = [(AKAlignmentGuideController *)&v64 init];
  v6 = v5;
  if (v5)
  {
    [(AKAlignmentGuideController *)v5 setPageController:controllerCopy];
    -[AKAlignmentGuideController setExifHasFlippedAxes:](v6, "setExifHasFlippedAxes:", +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [controllerCopy currentModelToScreenExifOrientation]));
    [controllerCopy currentModelToScreenScaleFactor];
    [(AKAlignmentGuideController *)v6 setScreenToModelScaleFactor:1.0 / v7];
    pageModelController = [controllerCopy pageModelController];
    selectedAnnotations = [pageModelController selectedAnnotations];

    v10 = MEMORY[0x277CBEB58];
    pageModelController2 = [controllerCopy pageModelController];
    annotations = [pageModelController2 annotations];
    v13 = [v10 setWithArray:annotations];

    [v13 minusSet:selectedAnnotations];
    v14 = [v13 count];
    v6->_otherAnnotationCentersCount = 0;
    if (v14 >> 60)
    {
      if (!v6->_otherAnnotationCenters)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = malloc_type_malloc(16 * v14, 0x8963B2DCuLL);
      v6->_otherAnnotationCenters = v15;
      if (!v15)
      {
LABEL_35:

        goto LABEL_36;
      }
    }

    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v20 = selectedAnnotations;
    v21 = [v20 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v61;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v60 + 1) + 8 * i);
          if ([v25 conformsToAKRectangularAnnotationProtocol])
          {
            [v25 rectangle];
          }

          else
          {
            [v25 drawingBounds];
          }

          v30 = v26;
          v31 = v27;
          v32 = v28;
          v33 = v29;
          if (![AKGeometryHelper isUnpresentableRect:?])
          {
            v68.origin.x = x;
            v68.origin.y = y;
            v68.size.width = width;
            v68.size.height = height;
            v75.origin.x = v30;
            v75.origin.y = v31;
            v75.size.width = v32;
            v75.size.height = v33;
            v69 = CGRectUnion(v68, v75);
            x = v69.origin.x;
            y = v69.origin.y;
            width = v69.size.width;
            height = v69.size.height;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v22);
    }

    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    if (CGRectIsNull(v70))
    {
      v6->_initialDraggedAnnotationsCombinedCenter = *MEMORY[0x277CBF348];
    }

    else
    {
      v54 = selectedAnnotations;
      v55 = controllerCopy;
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      MidX = CGRectGetMidX(v71);
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      MidY = CGRectGetMidY(v72);
      v6->_initialDraggedAnnotationsCombinedCenter.x = MidX;
      v6->_initialDraggedAnnotationsCombinedCenter.y = MidY;
      p_x = &v6->_otherAnnotationCenters->x;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v37 = v13;
      v38 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v57;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v57 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v56 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if ([v42 conformsToAKRectangularAnnotationProtocol])
                {
                  [v42 rectangle];
                }

                else
                {
                  [v42 drawingBounds];
                }

                v47 = v43;
                v48 = v44;
                v49 = v45;
                v50 = v46;
                if (![AKGeometryHelper isUnpresentableRect:?])
                {
                  v73.origin.x = v47;
                  v73.origin.y = v48;
                  v73.size.width = v49;
                  v73.size.height = v50;
                  v51 = CGRectGetMidX(v73);
                  v74.origin.x = v47;
                  v74.origin.y = v48;
                  v74.size.width = v49;
                  v74.size.height = v50;
                  v52 = CGRectGetMidY(v74);
                  *p_x = v51;
                  p_x[1] = v52;
                  p_x += 2;
                  ++v6->_otherAnnotationCentersCount;
                }
              }
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v56 objects:v65 count:16];
        }

        while (v39);
      }

      selectedAnnotations = v54;
      controllerCopy = v55;
    }

    goto LABEL_35;
  }

LABEL_36:

  return v6;
}

- (void)dealloc
{
  pageController = [(AKAlignmentGuideController *)self pageController];
  layerPresentationManager = [pageController layerPresentationManager];
  [layerPresentationManager setAlignmentGuidePositionX:1.79769313e308];
  [layerPresentationManager setAlignmentGuidePositionY:1.79769313e308];
  free(self->_otherAnnotationCenters);

  v5.receiver = self;
  v5.super_class = AKAlignmentGuideController;
  [(AKAlignmentGuideController *)&v5 dealloc];
}

- (CGPoint)guideAlignedPointForPoint:(CGPoint)point withEvent:(id)event orRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  v7 = [(AKAlignmentGuideController *)self pageController:event];
  controller = [v7 controller];
  mainEventHandler = [controller mainEventHandler];
  layerPresentationManager = [v7 layerPresentationManager];
  [mainEventHandler firstDragPoint];
  [layerPresentationManager setAlignmentGuidePositionX:1.79769313e308];
  [layerPresentationManager setAlignmentGuidePositionY:1.79769313e308];

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end