@interface AKArrowShapeAnnotationEventHandler
- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7;
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKArrowShapeAnnotationEventHandler

- (void)getInitialDraggedPoint:(CGPoint *)a3 otherPoint:(CGPoint *)a4 center:(CGPoint *)a5 forEvent:(id)a6 orRecognizer:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [(AKAnnotationEventHandler *)self annotation];
  v22.receiver = self;
  v22.super_class = AKArrowShapeAnnotationEventHandler;
  [(AKArrowAnnotationEventHandler *)&v22 getInitialDraggedPoint:a3 otherPoint:a4 center:a5 forEvent:v13 orRecognizer:v12];

  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 12 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 13)
  {
    v15 = [(AKAnnotationEventHandler *)self pageController];
    [AKAnnotationPointOfInterestHelper pointForDraggableArea:[(AKAnnotationEventHandler *)self initiallyDraggedArea] onAnnotation:v14 pageControllerForPixelAlignment:v15];
    v17 = v16;
    v19 = v18;
    [v14 endPoint];
    a3->x = v17;
    a3->y = v19;
    a4->x = v20;
    a4->y = v21;
  }
}

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(AKAnnotationEventHandler *)self annotation];
  v9 = [(AKAnnotationEventHandler *)self pageController];
  [AKAnnotationPointOfInterestHelper validatePoint:[(AKAnnotationEventHandler *)self initiallyDraggedArea] ofDraggableArea:v8 forAnnotation:v9 onPageController:x, y];
  v11 = v10;
  v13 = v12;
  v33.receiver = self;
  v33.super_class = AKArrowShapeAnnotationEventHandler;
  [(AKArrowAnnotationEventHandler *)&v33 updateModelWithCurrentPoint:a4 options:?];
  if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 12 || [(AKAnnotationEventHandler *)self initiallyDraggedArea]== 13)
  {
    [v8 startPoint];
    v15 = v14;
    v17 = v16;
    [v8 endPoint];
    [AKGeometryHelper projectPoint:v11 ontoRayWithFirstPoint:v13 andSecondPoint:v15, v17, v18, v19];
    v21 = v20;
    v23 = v22;
    v24 = hypot(v11 - v20, v13 - v22);
    v25 = v24 + v24;
    [v8 endPoint];
    v27 = v26 - v21;
    [v8 endPoint];
    [v8 setArrowHeadLength:{hypot(v27, v28 - v23)}];
    if ([(AKAnnotationEventHandler *)self initiallyDraggedArea]== 12)
    {
      [v8 setArrowLineWidth:v25];
    }

    else
    {
      [v8 setArrowHeadWidth:v25];
    }
  }

  if ([v8 conformsToAKTextAnnotationProtocol])
  {
    v29 = v8;
    v32 = 0;
    LOBYTE(v31) = 0;
    [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:&v32 forAnnotation:v29 onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), v9, 0, v31, 0];
    v30 = [v29 textIsClipped];
    if (v32 != v30)
    {
      [v29 setTextIsClipped:?];
    }
  }
}

@end