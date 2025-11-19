@interface AKLoupeAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKLoupeAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v30 = [(AKAnnotationEventHandler *)self pageController:a3];
  v11 = [(AKAnnotationEventHandler *)self annotation];
  if (([(AKAnnotationEventHandler *)self initiallyDraggedArea]& 0xFFFFFFFFFFFFFFFELL) == 0x12)
  {
    [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:v11 pageControllerForPixelAlignment:v30];
    v13 = v12;
    v29 = v14;
    [v11 rectangle];
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    MidX = CGRectGetMidX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MidY = CGRectGetMidY(v33);
    [AKGeometryHelper convertModelToScreenOrientationForRect:v30 withPageController:x, y, width, height];
    v21 = v34.origin.x;
    v22 = v34.origin.y;
    v23 = v34.size.width;
    v24 = v34.size.height;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = v21;
    v35.origin.y = v22;
    v35.size.width = v23;
    v35.size.height = v24;
    [AKGeometryHelper convertScreenToModelOrientationForPoint:v30 relativeToRect:MaxX withPageController:CGRectGetMinY(v35), v21, v22, v23, v24];
    v28 = v29;
  }

  else
  {
    MidX = *MEMORY[0x277CBF348];
    MidY = *(MEMORY[0x277CBF348] + 8);
    v27 = MidY;
    v26 = *MEMORY[0x277CBF348];
    v28 = MidY;
    v13 = *MEMORY[0x277CBF348];
  }

  a3->x = v13;
  a3->y = v28;
  a4->x = v26;
  a4->y = v27;
  a5->x = MidX;
  a5->y = MidY;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v48 = [(AKAnnotationEventHandler *)self pageController];
  v7 = [(AKAnnotationEventHandler *)self annotation];
  [(AKAnnotationEventHandler *)self initialCenter];
  v9 = v8;
  v11 = v10;
  [(AKAnnotationEventHandler *)self initialOtherPoint];
  v13 = v12;
  v15 = v14;
  [v7 originalModelBaseScaleFactor];
  v17 = v16;
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 18)
  {
    [AKGeometryHelper projectPoint:x ontoRayWithFirstPoint:y andSecondPoint:v9, v11, v13, v15];
    v19 = v18 - v9;
    v21 = v20 - v11;
    [AKGeometryHelper lengthOfVector:v18 - v9, v20 - v11];
    v23 = v22;
    [AKGeometryHelper convertModelToScreenOrientationForPoint:v48 relativeToRect:v19 withPageController:v21, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v26 = v25 > 0.0 || v24 < 0.0;
    if (v26)
    {
      v27 = v17 * 25.0;
    }

    else
    {
      v27 = v23;
    }

    v28 = v17 * 300.0;
    if (v27 <= v17 * 300.0)
    {
      v28 = v27;
    }

    if (v27 < v17 * 25.0)
    {
      v28 = v17 * 25.0;
    }

    [AKLoupeAnnotationImageUpdaterHelper magnifiedRectForUnmagnifiedRect:v7 ofLoupeAnnotation:v48 onPageController:v9 - v28, v11 - v28, v28 + v28, v28 + v28];
    [AKLoupeAnnotationImageUpdaterHelper unmagnifiedRectForMagnifiedRect:v7 ofLoupeAnnotation:?];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if (![AKGeometryHelper isUnpresentableRect:?])
    {
      [v7 rectangle];
      v51.origin.x = v30;
      v51.origin.y = v32;
      v51.size.width = v34;
      v51.size.height = v36;
      if (!CGRectEqualToRect(v50, v51))
      {
        [v7 setRectangle:{v30, v32, v34, v36}];
      }
    }
  }

  else if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 19)
  {
    [AKGeometryHelper normalizeVector:x - v9, y - v11];
    [AKGeometryHelper convertModelToScreenOrientationForPoint:"convertModelToScreenOrientationForPoint:relativeToRect:withPageController:" relativeToRect:v48 withPageController:?];
    [AKGeometryHelper angleOfVector:v38, v37];
    v40 = v39 / 1.57079633;
    v41 = 1.0;
    if (v40 <= 1.0)
    {
      v41 = v40;
    }

    v26 = v40 < 0.0;
    v42 = 0.0;
    if (!v26)
    {
      v42 = v41;
    }

    v43 = v42 * 3.5 + 1.5;
    [v7 magnification];
    if (v44 <= 4.125)
    {
      [v7 magnification];
      if (v45 < 2.375 && v43 > 3.25)
      {
        v43 = 1.5;
      }
    }

    else if (v43 < 3.25)
    {
      v43 = 5.0;
    }

    [v7 magnification];
    if (v47 != v43)
    {
      [v7 setMagnification:v43];
    }
  }
}

@end