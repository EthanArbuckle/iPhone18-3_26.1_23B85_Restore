@interface AKMainEventHandler_iOS
- (AKMainEventHandler_iOS)initWithController:(id)controller;
- (BOOL)_doubleTapRecognizerCanBeginAtPoint:(CGPoint)point;
- (BOOL)_shouldAllowTapAtLocationInWindow:(CGPoint)window;
- (BOOL)_tapRecognizerCanBeginAtPoint:(CGPoint)point;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)selectionInteractionShouldBegin:(id)begin atPoint:(CGPoint)point forEvent:(id)event orGestureRecognizer:(id)recognizer;
- (void)applyToAllSelectedAnnotationsRotateEvent:(id)event orRecognizer:(id)recognizer;
- (void)forwardRecognizerToMainHandleEvent:(id)event;
- (void)teardown;
@end

@implementation AKMainEventHandler_iOS

- (AKMainEventHandler_iOS)initWithController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = AKMainEventHandler_iOS;
  v5 = [(AKMainEventHandler *)&v17 initWithController:controllerCopy];
  if (v5)
  {
    v6 = [[AKTapGestureRecognizer alloc] initWithTarget:v5 action:sel_forwardRecognizerToMainHandleEvent_];
    tapRecognizer = v5->_tapRecognizer;
    v5->_tapRecognizer = &v6->super;

    [(UITapGestureRecognizer *)v5->_tapRecognizer setDelegate:v5];
    v8 = [[AKTapGestureRecognizer alloc] initWithTarget:v5 action:sel_forwardRecognizerToMainHandleEvent_];
    doubleTapRecognizer = v5->_doubleTapRecognizer;
    v5->_doubleTapRecognizer = &v8->super;

    [(UITapGestureRecognizer *)v5->_doubleTapRecognizer setDelegate:v5];
    [(UITapGestureRecognizer *)v5->_doubleTapRecognizer setNumberOfTapsRequired:2];
    v10 = [[AKLongPressGestureRecognizer alloc] initWithTarget:v5 action:sel_forwardRecognizerToMainHandleEvent_];
    pressRecognizer = v5->_pressRecognizer;
    v5->_pressRecognizer = &v10->super;

    [(UILongPressGestureRecognizer *)v5->_pressRecognizer setDelegate:v5];
    [(UILongPressGestureRecognizer *)v5->_pressRecognizer setMinimumPressDuration:0.2];
    v12 = [[AKPanGestureRecognizer alloc] initWithTarget:v5 action:sel_forwardRecognizerToMainHandleEvent_];
    panRecognizer = v5->_panRecognizer;
    v5->_panRecognizer = v12;

    [(AKPanGestureRecognizer *)v5->_panRecognizer setDelegate:v5];
    [(AKPanGestureRecognizer *)v5->_panRecognizer setMaximumNumberOfTouches:1];
    [(AKPanGestureRecognizer *)v5->_panRecognizer setEnabled:1];
    [(AKPanGestureRecognizer *)v5->_panRecognizer _setHysteresis:5.0];
    v14 = [[AKRotationGestureRecognizer alloc] initWithTarget:v5 action:sel_forwardRecognizerToMainHandleEvent_];
    rotationRecognizer = v5->_rotationRecognizer;
    v5->_rotationRecognizer = v14;

    [(AKRotationGestureRecognizer *)v5->_rotationRecognizer setAnnotationController:controllerCopy];
    [(AKRotationGestureRecognizer *)v5->_rotationRecognizer setDelegate:v5];
    [(UITapGestureRecognizer *)v5->_tapRecognizer requireGestureRecognizerToFail:v5->_doubleTapRecognizer];
    [(UITapGestureRecognizer *)v5->_tapRecognizer requireGestureRecognizerToFail:v5->_panRecognizer];
    [(UITapGestureRecognizer *)v5->_tapRecognizer requireGestureRecognizerToFail:v5->_rotationRecognizer];
    [(UITapGestureRecognizer *)v5->_doubleTapRecognizer requireGestureRecognizerToFail:v5->_panRecognizer];
    [(UITapGestureRecognizer *)v5->_doubleTapRecognizer requireGestureRecognizerToFail:v5->_rotationRecognizer];
    [(UILongPressGestureRecognizer *)v5->_pressRecognizer requireGestureRecognizerToFail:v5->_panRecognizer];
    [(UILongPressGestureRecognizer *)v5->_pressRecognizer requireGestureRecognizerToFail:v5->_rotationRecognizer];
    [(UITapGestureRecognizer *)v5->_doubleTapRecognizer setAllowedTouchTypes:&unk_2851BB1D8];
    [(UILongPressGestureRecognizer *)v5->_pressRecognizer setAllowedTouchTypes:&unk_2851BB1D8];
    [(AKPanGestureRecognizer *)v5->_panRecognizer setAllowedTouchTypes:&unk_2851BB1F0];
  }

  return v5;
}

- (void)teardown
{
  tapRecognizer = [(AKMainEventHandler_iOS *)self tapRecognizer];
  view = [tapRecognizer view];
  tapRecognizer2 = [(AKMainEventHandler_iOS *)self tapRecognizer];
  [view removeGestureRecognizer:tapRecognizer2];

  tapRecognizer3 = [(AKMainEventHandler_iOS *)self tapRecognizer];
  [tapRecognizer3 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setTapRecognizer:0];
  doubleTapRecognizer = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  view2 = [doubleTapRecognizer view];
  doubleTapRecognizer2 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  [view2 removeGestureRecognizer:doubleTapRecognizer2];

  doubleTapRecognizer3 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  [doubleTapRecognizer3 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setDoubleTapRecognizer:0];
  pressRecognizer = [(AKMainEventHandler_iOS *)self pressRecognizer];
  view3 = [pressRecognizer view];
  pressRecognizer2 = [(AKMainEventHandler_iOS *)self pressRecognizer];
  [view3 removeGestureRecognizer:pressRecognizer2];

  pressRecognizer3 = [(AKMainEventHandler_iOS *)self pressRecognizer];
  [pressRecognizer3 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setPressRecognizer:0];
  rotationRecognizer = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  view4 = [rotationRecognizer view];
  rotationRecognizer2 = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  [view4 removeGestureRecognizer:rotationRecognizer2];

  rotationRecognizer3 = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  [rotationRecognizer3 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setRotationRecognizer:0];
  panRecognizer = [(AKMainEventHandler_iOS *)self panRecognizer];
  view5 = [panRecognizer view];
  panRecognizer2 = [(AKMainEventHandler_iOS *)self panRecognizer];
  [view5 removeGestureRecognizer:panRecognizer2];

  panRecognizer3 = [(AKMainEventHandler_iOS *)self panRecognizer];
  [panRecognizer3 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setPanRecognizer:0];
  v23.receiver = self;
  v23.super_class = AKMainEventHandler_iOS;
  [(AKMainEventHandler *)&v23 teardown];
}

- (void)forwardRecognizerToMainHandleEvent:(id)event
{
  eventCopy = event;
  panRecognizer = [(AKMainEventHandler_iOS *)self panRecognizer];
  if (panRecognizer != eventCopy)
  {
LABEL_2:

    goto LABEL_8;
  }

  panRecognizer2 = [(AKMainEventHandler_iOS *)self panRecognizer];
  penGestureDetected = [panRecognizer2 penGestureDetected];

  if (penGestureDetected && [eventCopy state] == 3)
  {
    panRecognizer = [(AKMainEventHandler *)self controller];
    delegate = [panRecognizer delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate penStrokeCompletedForAnnotationController:panRecognizer];
    }

    goto LABEL_2;
  }

LABEL_8:
  [(AKMainEventHandler *)self mainHandleEvent:0 orRecognizer:eventCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  controller = [(AKMainEventHandler *)self controller];
  [touchCopy locationInView:0];
  v10 = v9;
  v12 = v11;

  tapRecognizer = [(AKMainEventHandler_iOS *)self tapRecognizer];

  if (tapRecognizer == recognizerCopy)
  {
    v16 = [(AKMainEventHandler_iOS *)self _tapRecognizerCanBeginAtPoint:v10, v12];
LABEL_8:
    v15 = v16;
    goto LABEL_9;
  }

  doubleTapRecognizer = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];

  if (doubleTapRecognizer == recognizerCopy)
  {
    v16 = [(AKMainEventHandler_iOS *)self _doubleTapRecognizerCanBeginAtPoint:v10, v12];
    goto LABEL_8;
  }

  v15 = ([controller annotationEditingEnabled] & 1) != 0 || objc_msgSend(controller, "formFillingEnabled");
LABEL_9:

  return v15;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  controller = [(AKMainEventHandler *)self controller];
  toolController = [controller toolController];
  toolMode = [toolController toolMode];

  if ([controller annotationEditingEnabled])
  {
    LODWORD(pageModelController) = 1;
  }

  else
  {
    LODWORD(pageModelController) = [controller formFillingEnabled];
  }

  panRecognizer = [(AKMainEventHandler_iOS *)self panRecognizer];

  if (panRecognizer == beginCopy)
  {
    [beginCopy locationOfFirstTouchInView:0];
    v17 = v16;
    v19 = v18;
    annotationEditingEnabled = [controller annotationEditingEnabled];
    if (toolMode == 4)
    {
      if ((annotationEditingEnabled & 1) != 0 || [controller formFillingEnabled])
      {
        selfCopy2 = self;
        v22 = 1;
        goto LABEL_22;
      }

      if (!pageModelController)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((annotationEditingEnabled & 1) == 0 && ![controller formFillingEnabled])
      {
        goto LABEL_38;
      }

      if ((toolMode - 1) >= 2)
      {
        selfCopy2 = self;
        v22 = 0;
LABEL_22:
        if (![(AKMainEventHandler *)selfCopy2 hitTestAnnotationsIncludingPOI:1 ignoreIfDeselected:v22 atPointInWindow:0 outAnnotation:v17, v19])
        {
LABEL_38:
          LOBYTE(pageModelController) = 0;
          goto LABEL_39;
        }
      }
    }

    [(AKMainEventHandler *)self setPanGestureStartPointInWindow:v17, v19];
    LOBYTE(pageModelController) = 1;
    goto LABEL_39;
  }

  tapRecognizer = [(AKMainEventHandler_iOS *)self tapRecognizer];

  if (tapRecognizer == beginCopy)
  {
    [beginCopy akLocationInWindow];
    v23 = [(AKMainEventHandler_iOS *)self _tapRecognizerCanBeginAtPoint:?];
LABEL_33:
    LOBYTE(pageModelController) = v23;
    goto LABEL_39;
  }

  rotationRecognizer = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  v12 = rotationRecognizer;
  if (rotationRecognizer != beginCopy)
  {

    goto LABEL_8;
  }

  if ([controller annotationEditingEnabled])
  {

LABEL_29:
    currentPageController = [controller currentPageController];
    pageModelController = [currentPageController pageModelController];
    selectedAnnotations = [pageModelController selectedAnnotations];

    LOBYTE(pageModelController) = [selectedAnnotations count] != 0;
    goto LABEL_30;
  }

  formFillingEnabled = [controller formFillingEnabled];

  if (formFillingEnabled)
  {
    goto LABEL_29;
  }

LABEL_8:
  doubleTapRecognizer = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  v14 = doubleTapRecognizer;
  if (doubleTapRecognizer != beginCopy)
  {

    goto LABEL_10;
  }

  if ([controller annotationEditingEnabled])
  {

LABEL_32:
    [beginCopy akLocationInWindow];
    v23 = [(AKMainEventHandler_iOS *)self _doubleTapRecognizerCanBeginAtPoint:?];
    goto LABEL_33;
  }

  formFillingEnabled2 = [controller formFillingEnabled];

  if (formFillingEnabled2)
  {
    goto LABEL_32;
  }

LABEL_10:
  selectedAnnotations = [(AKMainEventHandler_iOS *)self pressRecognizer];
  if (selectedAnnotations != beginCopy)
  {
LABEL_30:

    goto LABEL_39;
  }

  if ([controller annotationEditingEnabled])
  {

    goto LABEL_37;
  }

  formFillingEnabled3 = [controller formFillingEnabled];

  if (formFillingEnabled3)
  {
LABEL_37:
    panRecognizer2 = [(AKMainEventHandler_iOS *)self panRecognizer];
    penGestureDetected = [panRecognizer2 penGestureDetected];

    if (penGestureDetected)
    {
      goto LABEL_38;
    }

    toolController2 = [controller toolController];
    if ([toolController2 toolMode] == 4)
    {
      attributeController = [controller attributeController];
      v33 = [attributeController ink];
      identifier = [v33 identifier];
      v35 = [identifier isEqual:*MEMORY[0x277CD96C8]];

      if (v35)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    [beginCopy akLocationInWindow];
    v42 = 0;
    v36 = [(AKMainEventHandler *)self hitTestAnnotationsIncludingPOI:0 ignoreIfDeselected:0 atPointInWindow:&v42 outAnnotation:?];
    v37 = v42;
    LOBYTE(pageModelController) = 0;
    if (!v36)
    {
LABEL_53:

      goto LABEL_39;
    }

    textEditorController = [controller textEditorController];
    annotation = [textEditorController annotation];

    modelController = [controller modelController];
    allSelectedAnnotations = [modelController allSelectedAnnotations];

    if (v37)
    {
      if ([allSelectedAnnotations count] && (objc_msgSend(allSelectedAnnotations, "containsObject:", v37) & 1) != 0)
      {
        LOBYTE(pageModelController) = 0;
LABEL_52:

        goto LABEL_53;
      }

      if (annotation)
      {
        LODWORD(pageModelController) = [annotation isEqual:v37] ^ 1;
        goto LABEL_52;
      }
    }

    LOBYTE(pageModelController) = 1;
    goto LABEL_52;
  }

LABEL_39:

  return pageModelController;
}

- (BOOL)_tapRecognizerCanBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controller = [(AKMainEventHandler *)self controller];
  if (([controller annotationEditingEnabled] & 1) != 0 || objc_msgSend(controller, "formFillingEnabled"))
  {
    isKindOfClass = [(AKMainEventHandler_iOS *)self _shouldAllowTapAtLocationInWindow:x, y];
  }

  else if ([controller allEditingDisabled])
  {
    isKindOfClass = 0;
  }

  else
  {
    v13 = 0;
    v9 = [(AKMainEventHandler *)self hitTestAnnotationsIncludingPOI:0 ignoreIfDeselected:0 atPointInWindow:&v13 outAnnotation:x, y];
    v10 = v13;
    isKindOfClass = 0;
    if (v9)
    {
      v11 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        v12 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)_doubleTapRecognizerCanBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controller = [(AKMainEventHandler *)self controller];
  if (([controller annotationEditingEnabled] & 1) != 0 || objc_msgSend(controller, "formFillingEnabled"))
  {
    v11 = 0;
    v7 = [(AKMainEventHandler *)self hitTestAnnotationsIncludingPOI:0 ignoreIfDeselected:0 atPointInWindow:&v11 outAnnotation:x, y];
    v8 = v11;
    v9 = 0;
    if (v7)
    {
      v9 = [controller canBeginEditingTextAnnotation:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldAllowTapAtLocationInWindow:(CGPoint)window
{
  y = window.y;
  x = window.x;
  controller = [(AKMainEventHandler *)self controller];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];
  selectedAnnotations = [pageModelController selectedAnnotations];

  if ([selectedAnnotations count])
  {
    v10 = 1;
  }

  else
  {
    v12 = 0;
    v10 = [(AKMainEventHandler *)self hitTestAnnotationsIncludingPOI:0 ignoreIfDeselected:0 atPointInWindow:&v12 outAnnotation:x, y];
  }

  return v10;
}

- (BOOL)selectionInteractionShouldBegin:(id)begin atPoint:(CGPoint)point forEvent:(id)event orGestureRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  beginCopy = begin;
  recognizerCopy = recognizer;
  view = [beginCopy view];
  [view convertPoint:0 toView:{x, y}];
  v14 = v13;
  v16 = v15;

  v17 = [(AKMainEventHandler_iOS *)self _shouldAllowTapAtLocationInWindow:v14, v16];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    v18 = [beginCopy hasCurrentSelection] | !v17;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

- (void)applyToAllSelectedAnnotationsRotateEvent:(id)event orRecognizer:(id)recognizer
{
  v27 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 3)
  {
    [(AKMainEventHandler_iOS *)self setLastRotationAngleInRotationGesture:0.0];
  }

  if ([recognizerCopy state] == 2)
  {
    controller = [(AKMainEventHandler *)self controller];
    currentPageController = [controller currentPageController];
    pageModelController = [currentPageController pageModelController];
    selectedAnnotations = [pageModelController selectedAnnotations];

    if (selectedAnnotations && [selectedAnnotations count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = selectedAnnotations;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if ([v15 conformsToAKRotatableAnnotationProtocol])
            {
              [recognizerCopy rotation];
              v17 = 6.28318531 - v16;
              [(AKMainEventHandler_iOS *)self lastRotationAngleInRotationGesture];
              v19 = v17 - v18;
              [v15 rotationAngle];
              [v15 setRotationAngle:v20 + v19];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }
    }

    [recognizerCopy rotation];
    [(AKMainEventHandler_iOS *)self setLastRotationAngleInRotationGesture:6.28318531 - v21];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panRecognizer = self->_panRecognizer;
  pressRecognizer = self->_pressRecognizer;
  v12 = panRecognizer == recognizerCopy && pressRecognizer == gestureRecognizerCopy || panRecognizer == gestureRecognizerCopy && pressRecognizer == recognizerCopy;

  return v12;
}

@end