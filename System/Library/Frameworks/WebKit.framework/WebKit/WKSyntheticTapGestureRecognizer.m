@interface WKSyntheticTapGestureRecognizer
- (void)reset;
- (void)setGestureFailedTarget:(id)a3 action:(SEL)a4;
- (void)setGestureIdentifiedTarget:(id)a3 action:(SEL)a4;
- (void)setResetTarget:(id)a3 action:(SEL)a4;
- (void)setState:(int64_t)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation WKSyntheticTapGestureRecognizer

- (void)setGestureIdentifiedTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_gestureIdentifiedTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_gestureIdentifiedAction = v6;
}

- (void)setGestureFailedTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_gestureFailedTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_gestureFailedAction = v6;
}

- (void)setResetTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_resetTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_resetAction = v6;
}

- (void)setState:(int64_t)a3
{
  if (a3 == 5)
  {
    v5 = &OBJC_IVAR___WKSyntheticTapGestureRecognizer__gestureFailedTarget;
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_9;
    }

    v5 = &OBJC_IVAR___WKSyntheticTapGestureRecognizer__gestureIdentifiedTarget;
  }

  Weak = objc_loadWeak((&self->super.super.super.super.isa + *v5));
  if (*(&self->super.super.super.super.isa + v5[1]))
  {
    v7 = *(&self->super.super.super.super.isa + v5[1]);
  }

  else
  {
    v7 = 0;
  }

  [Weak performSelector:v7 withObject:self];
LABEL_9:
  v8.receiver = self;
  v8.super_class = WKSyntheticTapGestureRecognizer;
  [(WKSyntheticTapGestureRecognizer *)&v8 setState:a3];
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = WKSyntheticTapGestureRecognizer;
  [(WKScrollViewTrackingTapGestureRecognizer *)&v6 reset];
  Weak = objc_loadWeak(&self->_resetTarget);
  if (self->_resetAction)
  {
    resetAction = self->_resetAction;
  }

  else
  {
    resetAction = 0;
  }

  [Weak performSelector:resetAction withObject:self];
  m_ptr = self->_lastActiveTouchIdentifier.m_ptr;
  self->_lastActiveTouchIdentifier.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = WKSyntheticTapGestureRecognizer;
  [(WKSyntheticTapGestureRecognizer *)&v15 touchesEnded:a3 withEvent:a4];
  if (objc_loadWeak(&self->_supportingTouchEventsGestureRecognizer))
  {
    v5 = [objc_loadWeak(&self->_supportingTouchEventsGestureRecognizer) activeTouchesByIdentifier];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(v5 objectForKey:{v10), "gestureRecognizers"), "containsObject:", self}])
          {
            WTF::RetainPtr<NSNumber>::operator=(&self->_lastActiveTouchIdentifier.m_ptr, v10);
            return;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }
}

@end