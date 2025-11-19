@interface AKAnnotationEventHandler
+ (BOOL)allowsDraggingOfAnnotation:(id)a3;
+ (CGRect)annotationRectangleForDraggingBounds:(CGRect)a3 forAnnotation:(id)a4 onPageController:(id)a5 withOriginalCenter:(CGPoint)a6;
+ (Class)_handlerClassForPlatformForAnnotation:(id)a3;
+ (id)newAnnotationEventHandlerForCurrentPlatformForAnnotation:(id)a3 withPageController:(id)a4;
- (AKPageController)pageController;
- (BOOL)continueDraggableAreaEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)enterDraggableAreaEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4;
- (CGPoint)initialCenter;
- (CGPoint)initialDraggedPoint;
- (CGPoint)initialOtherPoint;
- (CGPoint)lastPositionInModel;
- (CGPoint)lastPositionInWindow;
- (CGPoint)modelPointFromPointInWindow:(CGPoint)a3;
- (CGPoint)windowPointFromEvent:(id)a3 orRecognizer:(id)a4;
- (CGSize)naturalSizeForAnnotation;
- (double)naturalAspectRatioForAnnotation;
- (id)_initWithAnnotation:(id)a3 andPageController:(id)a4;
@end

@implementation AKAnnotationEventHandler

+ (id)newAnnotationEventHandlerForCurrentPlatformForAnnotation:(id)a3 withPageController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_msgSend(a1 _handlerClassForPlatformForAnnotation:{v7)), "_initWithAnnotation:andPageController:", v7, v6}];

  return v8;
}

- (id)_initWithAnnotation:(id)a3 andPageController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AKAnnotationEventHandler;
  v8 = [(AKAnnotationEventHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AKAnnotationEventHandler *)v8 setPageController:v7];
    [(AKAnnotationEventHandler *)v9 setAnnotation:v6];
  }

  return v9;
}

- (CGSize)naturalSizeForAnnotation
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)naturalAspectRatioForAnnotation
{
  [(AKAnnotationEventHandler *)self naturalSizeForAnnotation];
  v4 = v3;
  v6 = v5;
  v7 = [(AKAnnotationEventHandler *)self annotation];
  v8 = [v7 originalExifOrientation];
  if (v8 <= 4)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8 <= 4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 / v9;

  return v11;
}

- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(AKAnnotationEventHandler *)self pageController];
  v7 = [v6 controller];
  [v7 showSelectionMenu:v5];

  return 1;
}

+ (BOOL)allowsDraggingOfAnnotation:(id)a3
{
  v3 = [a1 _handlerClassForPlatformForAnnotation:a3];

  return MEMORY[0x2821F9670](v3, sel_allowsDragging);
}

+ (CGRect)annotationRectangleForDraggingBounds:(CGRect)a3 forAnnotation:(id)a4 onPageController:(id)a5 withOriginalCenter:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  height = a3.size.height;
  width = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v13 = a4;
  v14 = a5;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:v13];
  v16 = -v15;
  v18 = -v17;
  v29.origin.x = v12;
  v29.origin.y = v11;
  v29.size.width = width;
  v29.size.height = height;
  v30 = CGRectInset(v29, v16, v18);
  v19 = v30.origin.x;
  v20 = v30.origin.y;
  v21 = v30.size.width;
  v22 = v30.size.height;
  v28 = v30;
  if ([v13 conformsToAKTextAnnotationProtocol])
  {
    LOBYTE(v27) = 0;
    [AKTextAnnotationRenderHelper getAnnotationRectangle:&v28 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:0 forAnnotation:v13 onPageController:x orInContext:y shouldAlignToPixels:v19 optionalText:v20 optionalCenter:v21 optionalProposedRectangle:v22, v14, 0, v27, 0];
  }

  v23 = v28.origin.x;
  v24 = v28.origin.y;
  v25 = v28.size.width;
  v26 = v28.size.height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (BOOL)enterDraggableAreaEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4
{
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v6 = a4;
  v7 = a3;
  [(AKAnnotationEventHandler *)self getInitialDraggedPoint:&v18 otherPoint:&v16 center:&v14 forEvent:v7 orRecognizer:v6];
  [(AKAnnotationEventHandler *)self setInitialDraggedPoint:v18, v19];
  [(AKAnnotationEventHandler *)self setInitialOtherPoint:v16, v17];
  [(AKAnnotationEventHandler *)self setInitialCenter:v14, v15];
  [(AKAnnotationEventHandler *)self setupDraggingConstraints];
  [(AKAnnotationEventHandler *)self windowPointFromEvent:v7 orRecognizer:v6];
  v9 = v8;
  v11 = v10;

  [(AKAnnotationEventHandler *)self setLastPositionInWindow:v9, v11];
  [(AKAnnotationEventHandler *)self lastPositionInWindow];
  [(AKAnnotationEventHandler *)self modelPointFromPointInWindow:?];
  [(AKAnnotationEventHandler *)self setLastPositionInModel:?];
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[AKAnnotationEventHandler setTouchModifiersEnabled:](self, "setTouchModifiersEnabled:", [v12 BOOLForKey:@"AKAnnotationEventTouchModifiersEnabled"]);

  return 1;
}

- (BOOL)continueDraggableAreaEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = ([v7 state] - 6) < 0xFFFFFFFFFFFFFFFDLL;
      v9 = [v7 modifierFlags];
      v10 = (v9 >> 16) & 2 | (v9 >> 19) & 1;
      if (!v10)
      {
        if ([(AKAnnotationEventHandler *)self touchModifiersEnabled]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v11 = [v7 additionalNumberOfTouches];
          v10 = ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2) | (2 * ((v11 & 0xFFFFFFFFFFFFFFFDLL) == 1));
        }

        else
        {
          v10 = 0;
        }
      }

      [(AKAnnotationEventHandler *)self windowPointFromEvent:v6 orRecognizer:v7];
      v13 = v12;
      v15 = v14;
      [(AKAnnotationEventHandler *)self setLastPositionInWindow:?];
      [(AKAnnotationEventHandler *)self modelPointFromPointInWindow:v13, v15];
      v17 = v16;
      v19 = v18;
      [(AKAnnotationEventHandler *)self updateModelWithCurrentPoint:v10 options:?];
      [(AKAnnotationEventHandler *)self setLastPositionInModel:v17, v19];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (CGPoint)windowPointFromEvent:(id)a3 orRecognizer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 allTouches];
    if ([v8 count])
    {
      v9 = [v8 anyObject];
      [v9 locationInView:0];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v11 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
    }
  }

  else if (v6)
  {
    [v6 akLocationInWindow];
    v11 = v14;
    v13 = v15;
  }

  else
  {
    v11 = *MEMORY[0x277CBF348];
    v13 = *(MEMORY[0x277CBF348] + 8);
    AKLog(@"%s: Expected event or recognizer.");
  }

  v16 = v11;
  v17 = v13;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)modelPointFromPointInWindow:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(AKAnnotationEventHandler *)self pageController];
  v6 = [v5 overlayView];
  [v6 convertPoint:0 fromView:{x, y}];
  [v5 convertPointFromOverlayToModel:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

+ (Class)_handlerClassForPlatformForAnnotation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

- (CGPoint)initialDraggedPoint
{
  objc_copyStruct(v4, &self->_initialDraggedPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)initialOtherPoint
{
  objc_copyStruct(v4, &self->_initialOtherPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)initialCenter
{
  objc_copyStruct(v4, &self->_initialCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lastPositionInModel
{
  objc_copyStruct(v4, &self->_lastPositionInModel, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lastPositionInWindow
{
  objc_copyStruct(v4, &self->_lastPositionInWindow, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end