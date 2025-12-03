@interface AKAnnotationEventHandler
+ (BOOL)allowsDraggingOfAnnotation:(id)annotation;
+ (CGRect)annotationRectangleForDraggingBounds:(CGRect)bounds forAnnotation:(id)annotation onPageController:(id)controller withOriginalCenter:(CGPoint)center;
+ (Class)_handlerClassForPlatformForAnnotation:(id)annotation;
+ (id)newAnnotationEventHandlerForCurrentPlatformForAnnotation:(id)annotation withPageController:(id)controller;
- (AKPageController)pageController;
- (BOOL)continueDraggableAreaEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)enterDraggableAreaEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer;
- (CGPoint)initialCenter;
- (CGPoint)initialDraggedPoint;
- (CGPoint)initialOtherPoint;
- (CGPoint)lastPositionInModel;
- (CGPoint)lastPositionInWindow;
- (CGPoint)modelPointFromPointInWindow:(CGPoint)window;
- (CGPoint)windowPointFromEvent:(id)event orRecognizer:(id)recognizer;
- (CGSize)naturalSizeForAnnotation;
- (double)naturalAspectRatioForAnnotation;
- (id)_initWithAnnotation:(id)annotation andPageController:(id)controller;
@end

@implementation AKAnnotationEventHandler

+ (id)newAnnotationEventHandlerForCurrentPlatformForAnnotation:(id)annotation withPageController:(id)controller
{
  controllerCopy = controller;
  annotationCopy = annotation;
  v8 = [objc_alloc(objc_msgSend(self _handlerClassForPlatformForAnnotation:{annotationCopy)), "_initWithAnnotation:andPageController:", annotationCopy, controllerCopy}];

  return v8;
}

- (id)_initWithAnnotation:(id)annotation andPageController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = AKAnnotationEventHandler;
  v8 = [(AKAnnotationEventHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AKAnnotationEventHandler *)v8 setPageController:controllerCopy];
    [(AKAnnotationEventHandler *)v9 setAnnotation:annotationCopy];
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
  annotation = [(AKAnnotationEventHandler *)self annotation];
  originalExifOrientation = [annotation originalExifOrientation];
  if (originalExifOrientation <= 4)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (originalExifOrientation <= 4)
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

- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  pageController = [(AKAnnotationEventHandler *)self pageController];
  controller = [pageController controller];
  [controller showSelectionMenu:recognizerCopy];

  return 1;
}

+ (BOOL)allowsDraggingOfAnnotation:(id)annotation
{
  v3 = [self _handlerClassForPlatformForAnnotation:annotation];

  return MEMORY[0x2821F9670](v3, sel_allowsDragging);
}

+ (CGRect)annotationRectangleForDraggingBounds:(CGRect)bounds forAnnotation:(id)annotation onPageController:(id)controller withOriginalCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  annotationCopy = annotation;
  controllerCopy = controller;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:annotationCopy];
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
  if ([annotationCopy conformsToAKTextAnnotationProtocol])
  {
    LOBYTE(v27) = 0;
    [AKTextAnnotationRenderHelper getAnnotationRectangle:&v28 textBounds:0 containerSize:0 exclusionPaths:0 isTextClipped:0 forAnnotation:annotationCopy onPageController:x orInContext:y shouldAlignToPixels:v19 optionalText:v20 optionalCenter:v21 optionalProposedRectangle:v22, controllerCopy, 0, v27, 0];
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

- (BOOL)enterDraggableAreaEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer
{
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  recognizerCopy = recognizer;
  eventCopy = event;
  [(AKAnnotationEventHandler *)self getInitialDraggedPoint:&v18 otherPoint:&v16 center:&v14 forEvent:eventCopy orRecognizer:recognizerCopy];
  [(AKAnnotationEventHandler *)self setInitialDraggedPoint:v18, v19];
  [(AKAnnotationEventHandler *)self setInitialOtherPoint:v16, v17];
  [(AKAnnotationEventHandler *)self setInitialCenter:v14, v15];
  [(AKAnnotationEventHandler *)self setupDraggingConstraints];
  [(AKAnnotationEventHandler *)self windowPointFromEvent:eventCopy orRecognizer:recognizerCopy];
  v9 = v8;
  v11 = v10;

  [(AKAnnotationEventHandler *)self setLastPositionInWindow:v9, v11];
  [(AKAnnotationEventHandler *)self lastPositionInWindow];
  [(AKAnnotationEventHandler *)self modelPointFromPointInWindow:?];
  [(AKAnnotationEventHandler *)self setLastPositionInModel:?];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[AKAnnotationEventHandler setTouchModifiersEnabled:](self, "setTouchModifiersEnabled:", [standardUserDefaults BOOLForKey:@"AKAnnotationEventTouchModifiersEnabled"]);

  return 1;
}

- (BOOL)continueDraggableAreaEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  if (recognizerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = ([recognizerCopy state] - 6) < 0xFFFFFFFFFFFFFFFDLL;
      modifierFlags = [recognizerCopy modifierFlags];
      v10 = (modifierFlags >> 16) & 2 | (modifierFlags >> 19) & 1;
      if (!v10)
      {
        if ([(AKAnnotationEventHandler *)self touchModifiersEnabled]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          additionalNumberOfTouches = [recognizerCopy additionalNumberOfTouches];
          v10 = ((additionalNumberOfTouches & 0xFFFFFFFFFFFFFFFELL) == 2) | (2 * ((additionalNumberOfTouches & 0xFFFFFFFFFFFFFFFDLL) == 1));
        }

        else
        {
          v10 = 0;
        }
      }

      [(AKAnnotationEventHandler *)self windowPointFromEvent:eventCopy orRecognizer:recognizerCopy];
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

- (CGPoint)windowPointFromEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v7 = recognizerCopy;
  if (eventCopy)
  {
    allTouches = [eventCopy allTouches];
    if ([allTouches count])
    {
      anyObject = [allTouches anyObject];
      [anyObject locationInView:0];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v11 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
    }
  }

  else if (recognizerCopy)
  {
    [recognizerCopy akLocationInWindow];
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

- (CGPoint)modelPointFromPointInWindow:(CGPoint)window
{
  y = window.y;
  x = window.x;
  pageController = [(AKAnnotationEventHandler *)self pageController];
  overlayView = [pageController overlayView];
  [overlayView convertPoint:0 fromView:{x, y}];
  [pageController convertPointFromOverlayToModel:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

+ (Class)_handlerClassForPlatformForAnnotation:(id)annotation
{
  annotationCopy = annotation;
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