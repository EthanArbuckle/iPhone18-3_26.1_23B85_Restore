@interface AKPolygonAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKPolygonAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v12 = a6;
  v13 = a7;
  v27 = *MEMORY[0x277CBF348];
  v28 = v27;
  v26 = v27;
  v14 = [(AKAnnotationEventHandler *)self pageController];
  v15 = [(AKAnnotationEventHandler *)self annotation];
  v16 = [(AKAnnotationEventHandler *)self initiallyDraggedArea];
  if (v16 - 1 >= 8)
  {
    if (v16 == 17)
    {
      [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:v15 pageControllerForPixelAlignment:v14];
      v28.x = v18;
      v28.y = v19;
      [v15 rectangle];
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
    [(AKRectangularAnnotationEventHandler *)&v25 getInitialDraggedPoint:&v28 otherPoint:&v27 center:&v26 forEvent:v12 orRecognizer:v13];
  }

  v17 = v27;
  *a3 = v28;
  *a4 = v17;
  *a5 = v26;
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(AKAnnotationEventHandler *)self annotation];
  v9 = [(AKAnnotationEventHandler *)self pageController];
  memset(&v19[1], 0, 48);
  [v8 rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v8 rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v11 withAngle:v13, v15, v17, -v18];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 17)
  {
    [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:v8 forAnnotation:v9 onPageController:y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0];
    [v8 setPointCount:{+[AKPolygonPointOfInterestHelper numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:](AKPolygonPointOfInterestHelper, "numberOfPolygonPointsForControlPoint:inAnnotation:onPageController:", v8, v9)}];
  }

  else
  {
    v19[0].receiver = self;
    v19[0].super_class = AKPolygonAnnotationEventHandler;
    [(objc_super *)v19 updateModelWithCurrentPoint:a4 options:x, y];
  }
}

@end