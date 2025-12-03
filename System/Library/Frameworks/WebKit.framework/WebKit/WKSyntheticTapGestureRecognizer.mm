@interface WKSyntheticTapGestureRecognizer
- (void)reset;
- (void)setGestureFailedTarget:(id)target action:(SEL)action;
- (void)setGestureIdentifiedTarget:(id)target action:(SEL)action;
- (void)setResetTarget:(id)target action:(SEL)action;
- (void)setState:(int64_t)state;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation WKSyntheticTapGestureRecognizer

- (void)setGestureIdentifiedTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_gestureIdentifiedTarget, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_gestureIdentifiedAction = actionCopy;
}

- (void)setGestureFailedTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_gestureFailedTarget, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_gestureFailedAction = actionCopy;
}

- (void)setResetTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_resetTarget, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_resetAction = actionCopy;
}

- (void)setState:(int64_t)state
{
  if (state == 5)
  {
    v5 = &OBJC_IVAR___WKSyntheticTapGestureRecognizer__gestureFailedTarget;
  }

  else
  {
    if (state != 3)
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
  [(WKSyntheticTapGestureRecognizer *)&v8 setState:state];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = WKSyntheticTapGestureRecognizer;
  [(WKSyntheticTapGestureRecognizer *)&v15 touchesEnded:ended withEvent:event];
  if (objc_loadWeak(&self->_supportingTouchEventsGestureRecognizer))
  {
    activeTouchesByIdentifier = [objc_loadWeak(&self->_supportingTouchEventsGestureRecognizer) activeTouchesByIdentifier];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [activeTouchesByIdentifier countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(activeTouchesByIdentifier);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(activeTouchesByIdentifier objectForKey:{v10), "gestureRecognizers"), "containsObject:", self}])
          {
            WTF::RetainPtr<NSNumber>::operator=(&self->_lastActiveTouchIdentifier.m_ptr, v10);
            return;
          }
        }

        v7 = [activeTouchesByIdentifier countByEnumeratingWithState:&v11 objects:v16 count:16];
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