@interface CRLiOSPreventScrollGestureRecognizer
- (CRLiOSPreventScrollGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (id)p_ICC;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSPreventScrollGestureRecognizer

- (CRLiOSPreventScrollGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRLiOSPreventScrollGestureRecognizer;
  v5 = [(CRLiOSPreventScrollGestureRecognizer *)&v12 initWithTarget:0 action:0];
  if (v5)
  {
    if (!v4)
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

    objc_storeWeak(&v5->_interactiveCanvasController, v4);
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v30.receiver = self;
  v30.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v30 touchesBegan:v6 withEvent:a4];
  v7 = [(CRLiOSPreventScrollGestureRecognizer *)self p_ICC];
  v8 = [v7 layerHost];
  v9 = [v8 asUIKitHost];

  if (-[CRLiOSPreventScrollGestureRecognizer state](self, "state") || ![v7 currentlyScrolling])
  {
    v10 = [v7 canvasView];
    v11 = [v10 enclosingScrollView];
    v12 = [v11 panGestureRecognizer];
    v13 = [v12 minimumNumberOfTouches];

    if (v13 < 2)
    {
      v24 = v7;
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v6;
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
              v20 = self;
              v21 = 1;
LABEL_18:
              [(CRLiOSPreventScrollGestureRecognizer *)v20 setState:v21];
              continue;
            }

            objc_storeStrong(&self->_touch, v19);
            if ([(UITouch *)self->_touch tapCount]!= 1)
            {
              v20 = self;
              v21 = 5;
              goto LABEL_18;
            }

            v22 = [v9 hitRepWithTouch:self->_touch];
            v23 = [v22 repForDragging];

            if (!v23)
            {
              [(CRLiOSPreventScrollGestureRecognizer *)self setState:5];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (!v16)
        {
LABEL_21:

          v7 = v24;
          v6 = v25;
          goto LABEL_22;
        }
      }
    }
  }

  [(CRLiOSPreventScrollGestureRecognizer *)self setState:5];
LABEL_22:
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v9 touchesEnded:v6 withEvent:a4];
  if (self->_touch && [v6 containsObject:?])
  {
    touch = self->_touch;
    self->_touch = 0;
  }

  if (self->_secondTouch && [v6 containsObject:?])
  {
    secondTouch = self->_secondTouch;
    self->_secondTouch = 0;
  }

  if (!self->_touch && !self->_secondTouch)
  {
    [(CRLiOSPreventScrollGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = CRLiOSPreventScrollGestureRecognizer;
  [(CRLiOSPreventScrollGestureRecognizer *)&v9 touchesCancelled:v6 withEvent:a4];
  if (self->_touch && [v6 containsObject:?])
  {
    touch = self->_touch;
    self->_touch = 0;
  }

  if (self->_secondTouch && [v6 containsObject:?])
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