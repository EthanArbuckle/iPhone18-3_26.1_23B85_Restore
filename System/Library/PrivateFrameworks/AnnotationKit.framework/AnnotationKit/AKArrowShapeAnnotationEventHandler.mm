@interface AKArrowShapeAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer;
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKArrowShapeAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)point otherPoint:(CGPoint *)otherPoint center:(CGPoint *)center forEvent:(id)event orRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  eventCopy = event;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  v22.receiver = self;
  v22.super_class = AKArrowShapeAnnotationEventHandler;
  [(AKArrowAnnotationEventHandler *)&v22 getInitialDraggedPoint:point otherPoint:otherPoint center:center forEvent:eventCopy orRecognizer:recognizerCopy];

  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 12 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 13)
  {
    pageController = [(AKAnnotationEventHandler *)self pageController];
    [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:annotation pageControllerForPixelAlignment:pageController];
    v17 = v16;
    v19 = v18;
    [annotation endPoint];
    point->x = v17;
    point->y = v19;
    otherPoint->x = v20;
    otherPoint->y = v21;
  }
}

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  y = point.y;
  x = point.x;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  pageController = [(AKAnnotationEventHandler *)self pageController];
  [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:annotation forAnnotation:pageController onPageController:x, y];
  v11 = v10;
  v13 = v12;
  v33.receiver = self;
  v33.super_class = AKArrowShapeAnnotationEventHandler;
  [(AKArrowAnnotationEventHandler *)&v33 updateModelWithCurrentPoint:options options:?];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 12 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 13)
  {
    [annotation startPoint];
    v15 = v14;
    v17 = v16;
    [annotation endPoint];
    [AKGeometryHelper projectPoint:v11 ontoRayWithFirstPoint:v13 andSecondPoint:v15, v17, v18, v19];
    v21 = v20;
    v23 = v22;
    v24 = hypot(v11 - v20, v13 - v22);
    v25 = v24 + v24;
    [annotation endPoint];
    v27 = v26 - v21;
    [annotation endPoint];
    [annotation setArrowHeadLength:{hypot(v27, v28 - v23)}];
    if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 12)
    {
      [annotation setArrowLineWidth:v25];
    }

    else
    {
      [annotation setArrowHeadWidth:v25];
    }
  }

  if ([annotation conformsToAKTextAnnotationProtocol])
  {
    v29 = annotation;
    v32 = 0;
    LOBYTE(v31) = 0;
    [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v32 forAnnotation:v29 onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), pageController, 0, v31, 0];
    textIsClipped = [v29 textIsClipped];
    if (v32 != textIsClipped)
    {
      [v29 setTextIsClipped:?];
    }
  }
}

@end