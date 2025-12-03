@interface AKStarAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKStarAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v23 = *MEMORY[0x277CBF348];
  v24 = v23;
  v22 = v23;
  pageController = [(AKAnnotationEventHandler *)self pageController];
  annotation = [(AKAnnotationEventHandler *)self annotation];
  initiallyDraggedArea = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (initiallyDraggedArea - 1 < 8 || initiallyDraggedArea == 17)
  {
    v21.receiver = self;
    v21.super_class = AKStarAnnotationEventHandler;
    [(AKPolygonAnnotationEventHandler *)&v21 getInitialDraggedPoint:&v24 otherPoint:&v23 center:&v22 forEvent:eventCopy orRecognizer:recognizerCopy];
  }

  else if (initiallyDraggedArea == 16)
  {
    [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:annotation pageControllerForPixelAlignment:pageController];
    v24.x = v18;
    v24.y = v19;
    [annotation rectangle];
    MidX = CGRectGetMidX(v25);
    [annotation rectangle];
    v22.x = MidX;
    v22.y = CGRectGetMidY(v26);
    v23 = v22;
  }

  v17 = v23;
  *point = v24;
  *otherPoint = v17;
  *center = v22;
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  x = point.x;
  y = point.y;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  pageController = [(AKAnnotationEventHandler *)self pageController];
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  [annotation rectangle];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [annotation rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v9 withAngle:v11, v13, v15, -v16];
  v17 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, y), 0, x));
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 16)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:annotation forAnnotation:pageController onPageController:*&v17];
    [AKStarAnnotationRenderer innerRadiusFactorForPoint:annotation inAnnotation:pageController onPageController:?];
    [annotation setInnerRadiusFactor:?];
  }

  else if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 17)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:annotation forAnnotation:pageController onPageController:*&v17];
    [annotation setPointCount:{+[AKPolygonPointOfInterestHelper numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:](AKStarShapePointOfInterestHelper, "numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:", annotation, pageController)}];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = AKStarAnnotationEventHandler;
    [(AKPolygonAnnotationEventHandler *)&v20 updateModelWithCurrentPoint:options options:x, y];
  }
}

@end