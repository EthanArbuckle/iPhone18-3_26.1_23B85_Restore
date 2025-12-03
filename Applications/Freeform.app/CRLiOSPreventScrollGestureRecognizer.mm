@interface CRLiOSPreventScrollGestureRecognizer
- (CRLiOSPreventScrollGestureRecognizer)initWithInteractiveCanvasController:(id)controller;
- (id)p_ICC;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation CRLiOSPreventScrollGestureRecognizer

- (CRLiOSPreventScrollGestureRecognizer)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CRLiOSPreventScrollGestureRecognizer;
  v5 = [(CRLiOSPreventScrollGestureRecognizer *)&v12 initWithTarget:0 action:0];
  if (v5)
  {
    if (!controllerCopy)
    {
      v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101363718();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101363740(v6, v7);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013637FC();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v8, v6);
      }

      v9 = [NSString stringWithUTF8String:"[CRLiOSPreventScrollGestureRecognizer initWithInteractiveCanvasController:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSPreventScrollGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:29 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
  }

  return v5;
}

- (void)reset
{
  touch = self->_touch;
  self->_touch = 0;

  secondTouch = self->_secondTouch;
  self->_secondTouch = 0;

  v5.receiver = self;
  v5.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v5 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v30.receiver = self;
  v30.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v30 touchesBegan:beganCopy withEvent:event];
  p_ICC = [(CRLiOSPreventScrollGestureRecognizer *)self p_ICC];
  layerHost = [p_ICC layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  if (-[CRLiOSPreventScrollGestureRecognizer state](self, "state") || ![p_ICC currentlyScrolling])
  {
    canvasView = [p_ICC canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    panGestureRecognizer = [enclosingScrollView panGestureRecognizer];
    minimumNumberOfTouches = [panGestureRecognizer minimumNumberOfTouches];

    if (minimumNumberOfTouches < 2)
    {
      v24 = p_ICC;
      v25 = beganCopy;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = beganCopy;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = v15;
      v17 = *v27;
      while (1)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if (![(CRLiOSPreventScrollGestureRecognizer *)self state:v24])
          {
            if (self->_touch)
            {
              objc_storeStrong(&self->_secondTouch, v19);
              selfCopy2 = self;
              v21 = 1;
LABEL_18:
              [(CRLiOSPreventScrollGestureRecognizer *)selfCopy2 setState:v21];
              continue;
            }

            objc_storeStrong(&self->_touch, v19);
            if ([(UITouch *)self->_touch tapCount]!= 1)
            {
              selfCopy2 = self;
              v21 = 5;
              goto LABEL_18;
            }

            v22 = [asUIKitHost hitRepWithTouch:self->_touch];
            repForDragging = [v22 repForDragging];

            if (!repForDragging)
            {
              [(CRLiOSPreventScrollGestureRecognizer *)self setState:5];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (!v16)
        {
LABEL_21:

          p_ICC = v24;
          beganCopy = v25;
          goto LABEL_22;
        }
      }
    }
  }

  [(CRLiOSPreventScrollGestureRecognizer *)self setState:5];
LABEL_22:
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v9.receiver = self;
  v9.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v9 touchesEnded:endedCopy withEvent:event];
  if (self->_touch && [endedCopy containsObject:?])
  {
    touch = self->_touch;
    self->_touch = 0;
  }

  if (self->_secondTouch && [endedCopy containsObject:?])
  {
    secondTouch = self->_secondTouch;
    self->_secondTouch = 0;
  }

  if (!self->_touch && !self->_secondTouch)
  {
    [(CRLiOSPreventScrollGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v9.receiver = self;
  v9.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v9 touchesCancelled:cancelledCopy withEvent:event];
  if (self->_touch && [cancelledCopy containsObject:?])
  {
    touch = self->_touch;
    self->_touch = 0;
  }

  if (self->_secondTouch && [cancelledCopy containsObject:?])
  {
    secondTouch = self->_secondTouch;
    self->_secondTouch = 0;
  }

  if (!self->_touch && !self->_secondTouch)
  {
    [(CRLiOSPreventScrollGestureRecognizer *)self setState:3];
  }
}

- (id)p_ICC
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end