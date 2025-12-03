@interface AKPolygonAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKPolygonAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v27 = *MEMORY[0x277CBF348];
  v28 = v27;
  v26 = v27;
  pageController = [(AKAnnotationEventHandler *)self pageController];
  annotation = [(AKAnnotationEventHandler *)self annotation];
  initiallyDraggedArea = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (initiallyDraggedArea - 1 >= 8)
  {
    if (initiallyDraggedArea == 17)
    {
      [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:annotation pageControllerForPixelAlignment:pageController];
      v28.x = v18;
      v28.y = v19;
      [annotation rectangle];
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      MidX = CGRectGetMidX(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v26.x = MidX;
      v26.y = CGRectGetMidY(v30);
      v27 = __PAIR128__(*&v26.y, *&MidX);
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = AKPolygonAnnotationEventHandler;
    [(AKRectangularAnnotationEventHandler *)&v25 getInitialDraggedPoint:&v28 otherPoint:&v27 center:&v26 forEvent:eventCopy orRecognizer:recognizerCopy];
  }

  v17 = v27;
  *point = v28;
  *otherPoint = v17;
  *center = v26;
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  y = point.y;
  x = point.x;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  pageController = [(AKAnnotationEventHandler *)self pageController];
  memset(&v19[1], 0, 48);
  [annotation rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [annotation rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v11 withAngle:v13, v15, v17, -v18];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 17)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:annotation forAnnotation:pageController onPageController:y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0];
    [annotation setPointCount:{+[AKPolygonPointOfInterestHelper numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:](AKPolygonPointOfInterestHelper, "numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:", annotation, pageController)}];
  }

  else
  {
    v19[0].receiver = self;
    v19[0].super_class = AKPolygonAnnotationEventHandler;
    [(objc_super *)v19 updateModelWithCurrentPoint:options options:x, y];
  }
}

@end