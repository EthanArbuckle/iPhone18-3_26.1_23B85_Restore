@interface AKStarAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKStarAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v12 = a6;
  v13 = a7;
  v23 = *MEMORY[0x277CBF348];
  v24 = v23;
  v22 = v23;
  v14 = [(AKAnnotationEventHandler *)self pageController];
  v15 = [(AKAnnotationEventHandler *)self annotation];
  v16 = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (v16 - 1 < 8 || v16 == 17)
  {
    v21.receiver = self;
    v21.super_class = AKStarAnnotationEventHandler;
    [(AKPolygonAnnotationEventHandler *)&v21 getInitialDraggedPoint:&v24 otherPoint:&v23 center:&v22 forEvent:v12 orRecognizer:v13];
  }

  else if (v16 == 16)
  {
    [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:v15 pageControllerForPixelAlignment:v14];
    v24.x = v18;
    v24.y = v19;
    [v15 rectangle];
    MidX = CGRectGetMidX(v25);
    [v15 rectangle];
    v22.x = MidX;
    v22.y = CGRectGetMidY(v26);
    v23 = v22;
  }

  v17 = v23;
  *a3 = v24;
  *a4 = v17;
  *a5 = v22;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  x = a3.x;
  y = a3.y;
  v6 = [(AKAnnotationEventHandler *)self annotation];
  v7 = [(AKAnnotationEventHandler *)self pageController];
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  [v6 rectangle];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v9 withAngle:v11, v13, v15, -v16];
  v17 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, y), 0, x));
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 16)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:v6 forAnnotation:v7 onPageController:*&v17];
    [AKStarAnnotationRenderer innerRadiusFactorForPoint:v6 inAnnotation:v7 onPageController:?];
    [v6 setInnerRadiusFactor:?];
  }

  else if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 17)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:v6 forAnnotation:v7 onPageController:*&v17];
    [v6 setPointCount:{+[AKPolygonPointOfInterestHelper numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:](AKStarShapePointOfInterestHelper, "numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:", v6, v7)}];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = AKStarAnnotationEventHandler;
    [(AKPolygonAnnotationEventHandler *)&v20 updateModelWithCurrentPoint:a4 options:x, y];
  }
}

@end