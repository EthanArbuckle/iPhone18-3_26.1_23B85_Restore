@interface AKMainEventHandler_iOS
- (AKMainEventHandler_iOS)initWithController:(id)a3;
- (BOOL)_doubleTapRecognizerCanBeginAtPoint:(CGPoint)a3;
- (BOOL)_shouldAllowTapAtLocationInWindow:(CGPoint)a3;
- (BOOL)_tapRecognizerCanBeginAtPoint:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)selectionInteractionShouldBegin:(id)a3 atPoint:(CGPoint)a4 forEvent:(id)a5 orGestureRecognizer:(id)a6;
- (void)applyToAllSelectedAnnotationsRotateEvent:(id)a3 orRecognizer:(id)a4;
- (void)forwardRecognizerToMainHandleEvent:(id)a3;
- (void)teardown;
@end

@implementation AKMainEventHandler_iOS

- (AKMainEventHandler_iOS)initWithController:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AKMainEventHandler_iOS;
  v5 = [(AKMainEventHandler *)&v17 initWithController:v4];
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

    [(AKRotationGestureRecognizer *)v5->_rotationRecognizer setAnnotationController:v4];
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
  v3 = [(AKMainEventHandler_iOS *)self tapRecognizer];
  v4 = [v3 view];
  v5 = [(AKMainEventHandler_iOS *)self tapRecognizer];
  [v4 removeGestureRecognizer:v5];

  v6 = [(AKMainEventHandler_iOS *)self tapRecognizer];
  [v6 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setTapRecognizer:0];
  v7 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  v8 = [v7 view];
  v9 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  [v8 removeGestureRecognizer:v9];

  v10 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  [v10 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setDoubleTapRecognizer:0];
  v11 = [(AKMainEventHandler_iOS *)self pressRecognizer];
  v12 = [v11 view];
  v13 = [(AKMainEventHandler_iOS *)self pressRecognizer];
  [v12 removeGestureRecognizer:v13];

  v14 = [(AKMainEventHandler_iOS *)self pressRecognizer];
  [v14 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setPressRecognizer:0];
  v15 = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  v16 = [v15 view];
  v17 = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  [v16 removeGestureRecognizer:v17];

  v18 = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  [v18 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setRotationRecognizer:0];
  v19 = [(AKMainEventHandler_iOS *)self panRecognizer];
  v20 = [v19 view];
  v21 = [(AKMainEventHandler_iOS *)self panRecognizer];
  [v20 removeGestureRecognizer:v21];

  v22 = [(AKMainEventHandler_iOS *)self panRecognizer];
  [v22 setDelegate:0];

  [(AKMainEventHandler_iOS *)self setPanRecognizer:0];
  v23.receiver = self;
  v23.super_class = AKMainEventHandler_iOS;
  [(AKMainEventHandler *)&v23 teardown];
}

- (void)forwardRecognizerToMainHandleEvent:(id)a3
{
  v8 = a3;
  v4 = [(AKMainEventHandler_iOS *)self panRecognizer];
  if (v4 != v8)
  {
LABEL_2:

    goto LABEL_8;
  }

  v5 = [(AKMainEventHandler_iOS *)self panRecognizer];
  v6 = [v5 penGestureDetected];

  if (v6 && [v8 state] == 3)
  {
    v4 = [(AKMainEventHandler *)self controller];
    v7 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 penStrokeCompletedForAnnotationController:v4];
    }

    goto LABEL_2;
  }

LABEL_8:
  [(AKMainEventHandler *)self mainHandleEvent:0 orRecognizer:v8];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AKMainEventHandler *)self controller];
  [v7 locationInView:0];
  v10 = v9;
  v12 = v11;

  v13 = [(AKMainEventHandler_iOS *)self tapRecognizer];

  if (v13 == v6)
  {
    v16 = [(AKMainEventHandler_iOS *)self _tapRecognizerCanBeginAtPoint:v10, v12];
LABEL_8:
    v15 = v16;
    goto LABEL_9;
  }

  v14 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];

  if (v14 == v6)
  {
    v16 = [(AKMainEventHandler_iOS *)self _doubleTapRecognizerCanBeginAtPoint:v10, v12];
    goto LABEL_8;
  }

  v15 = ([v8 annotationEditingEnabled] & 1) != 0 || objc_msgSend(v8, "formFillingEnabled");
LABEL_9:

  return v15;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(AKMainEventHandler *)self controller];
  v6 = [v5 toolController];
  v7 = [v6 toolMode];

  if ([v5 annotationEditingEnabled])
  {
    LODWORD(v8) = 1;
  }

  else
  {
    LODWORD(v8) = [v5 formFillingEnabled];
  }

  v9 = [(AKMainEventHandler_iOS *)self panRecognizer];

  if (v9 == v4)
  {
    [v4 locationOfFirstTouchInView:0];
    v17 = v16;
    v19 = v18;
    v20 = [v5 annotationEditingEnabled];
    if (v7 == 4)
    {
      if ((v20 & 1) != 0 || [v5 formFillingEnabled])
      {
        v21 = self;
        v22 = 1;
        goto LABEL_22;
      }

      if (!v8)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((v20 & 1) == 0 && ![v5 formFillingEnabled])
      {
        goto LABEL_38;
      }

      if ((v7 - 1) >= 2)
      {
        v21 = self;
        v22 = 0;
LABEL_22:
        if (![(AKMainEventHandler *)v21 hitTestAnnotationsIncludingPOI:1 ignoreIfDeselected:v22 atPointInWindow:0 outAnnotation:v17, v19])
        {
LABEL_38:
          LOBYTE(v8) = 0;
          goto LABEL_39;
        }
      }
    }

    [(AKMainEventHandler *)self setPanGestureStartPointInWindow:v17, v19];
    LOBYTE(v8) = 1;
    goto LABEL_39;
  }

  v10 = [(AKMainEventHandler_iOS *)self tapRecognizer];

  if (v10 == v4)
  {
    [v4 akLocationInWindow];
    v23 = [(AKMainEventHandler_iOS *)self _tapRecognizerCanBeginAtPoint:?];
LABEL_33:
    LOBYTE(v8) = v23;
    goto LABEL_39;
  }

  v11 = [(AKMainEventHandler_iOS *)self rotationRecognizer];
  v12 = v11;
  if (v11 != v4)
  {

    goto LABEL_8;
  }

  if ([v5 annotationEditingEnabled])
  {

LABEL_29:
    v25 = [v5 currentPageController];
    v8 = [v25 pageModelController];
    v15 = [v8 selectedAnnotations];

    LOBYTE(v8) = [v15 count] != 0;
    goto LABEL_30;
  }

  v24 = [v5 formFillingEnabled];

  if (v24)
  {
    goto LABEL_29;
  }

LABEL_8:
  v13 = [(AKMainEventHandler_iOS *)self doubleTapRecognizer];
  v14 = v13;
  if (v13 != v4)
  {

    goto LABEL_10;
  }

  if ([v5 annotationEditingEnabled])
  {

LABEL_32:
    [v4 akLocationInWindow];
    v23 = [(AKMainEventHandler_iOS *)self _doubleTapRecognizerCanBeginAtPoint:?];
    goto LABEL_33;
  }

  v26 = [v5 formFillingEnabled];

  if (v26)
  {
    goto LABEL_32;
  }

LABEL_10:
  v15 = [(AKMainEventHandler_iOS *)self pressRecognizer];
  if (v15 != v4)
  {
LABEL_30:

    goto LABEL_39;
  }

  if ([v5 annotationEditingEnabled])
  {

    goto LABEL_37;
  }

  v27 = [v5 formFillingEnabled];

  if (v27)
  {
LABEL_37:
    v28 = [(AKMainEventHandler_iOS *)self panRecognizer];
    v29 = [v28 penGestureDetected];

    if (v29)
    {
      goto LABEL_38;
    }

    v31 = [v5 toolController];
    if ([v31 toolMode] == 4)
    {
      v32 = [v5 attributeController];
      v33 = [v32 ink];
      v34 = [v33 identifier];
      v35 = [v34 isEqual:*MEMORY[0x277CD96C8]];

      if (v35)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    [v4 akLocationInWindow];
    v42 = 0;
    v36 = [(AKMainEventHandler *)self hitTestAnnotationsIncludingPOI:0 ignoreIfDeselected:0 atPointInWindow:&v42 outAnnotation:?];
    v37 = v42;
    LOBYTE(v8) = 0;
    if (!v36)
    {
LABEL_53:

      goto LABEL_39;
    }

    v38 = [v5 textEditorController];
    v39 = [v38 annotation];

    v40 = [v5 modelController];
    v41 = [v40 allSelectedAnnotations];

    if (v37)
    {
      if ([v41 count] && (objc_msgSend(v41, "containsObject:", v37) & 1) != 0)
      {
        LOBYTE(v8) = 0;
LABEL_52:

        goto LABEL_53;
      }

      if (v39)
      {
        LODWORD(v8) = [v39 isEqual:v37] ^ 1;
        goto LABEL_52;
      }
    }

    LOBYTE(v8) = 1;
    goto LABEL_52;
  }

LABEL_39:

  return v8;
}

- (BOOL)_tapRecognizerCanBeginAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AKMainEventHandler *)self controller];
  if (([v6 annotationEditingEnabled] & 1) != 0 || objc_msgSend(v6, "formFillingEnabled"))
  {
    isKindOfClass = [(AKMainEventHandler_iOS *)self _shouldAllowTapAtLocationInWindow:x, y];
  }

  else if ([v6 allEditingDisabled])
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

- (BOOL)_doubleTapRecognizerCanBeginAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AKMainEventHandler *)self controller];
  if (([v6 annotationEditingEnabled] & 1) != 0 || objc_msgSend(v6, "formFillingEnabled"))
  {
    v11 = 0;
    v7 = [(AKMainEventHandler *)self hitTestAnnotationsIncludingPOI:0 ignoreIfDeselected:0 atPointInWindow:&v11 outAnnotation:x, y];
    v8 = v11;
    v9 = 0;
    if (v7)
    {
      v9 = [v6 canBeginEditingTextAnnotation:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldAllowTapAtLocationInWindow:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AKMainEventHandler *)self controller];
  v7 = [v6 currentPageController];
  v8 = [v7 pageModelController];
  v9 = [v8 selectedAnnotations];

  if ([v9 count])
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

- (BOOL)selectionInteractionShouldBegin:(id)a3 atPoint:(CGPoint)a4 forEvent:(id)a5 orGestureRecognizer:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = a6;
  v12 = [v10 view];
  [v12 convertPoint:0 toView:{x, y}];
  v14 = v13;
  v16 = v15;

  v17 = [(AKMainEventHandler_iOS *)self _shouldAllowTapAtLocationInWindow:v14, v16];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    v18 = [v10 hasCurrentSelection] | !v17;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

- (void)applyToAllSelectedAnnotationsRotateEvent:(id)a3 orRecognizer:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 state] == 3)
  {
    [(AKMainEventHandler_iOS *)self setLastRotationAngleInRotationGesture:0.0];
  }

  if ([v5 state] == 2)
  {
    v6 = [(AKMainEventHandler *)self controller];
    v7 = [v6 currentPageController];
    v8 = [v7 pageModelController];
    v9 = [v8 selectedAnnotations];

    if (v9 && [v9 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v9;
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
              [v5 rotation];
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

    [v5 rotation];
    [(AKMainEventHandler_iOS *)self setLastRotationAngleInRotationGesture:6.28318531 - v21];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  panRecognizer = self->_panRecognizer;
  pressRecognizer = self->_pressRecognizer;
  v12 = panRecognizer == v6 && pressRecognizer == v7 || panRecognizer == v7 && pressRecognizer == v6;

  return v12;
}

@end