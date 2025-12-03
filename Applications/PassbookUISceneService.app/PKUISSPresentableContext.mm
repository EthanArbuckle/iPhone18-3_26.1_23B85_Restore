@interface PKUISSPresentableContext
- (void)bannerHandle:(id)handle didChangeFromClientState:(id)state;
- (void)bannerHandleDidInvalidate:(id)invalidate;
- (void)setState:(id)state;
@end

@implementation PKUISSPresentableContext

- (void)setState:(id)state
{
  stateCopy = state;
  if (self->_associated)
  {
    v7 = stateCopy;
    if (self->_state != stateCopy)
    {
      objc_storeStrong(&self->_state, state);
      currentHandle = self->_currentHandle;
      if (currentHandle)
      {
        sub_1000017C4(currentHandle, self->_state);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)bannerHandle:(id)handle didChangeFromClientState:(id)state
{
  if (self->_effectiveHandle == handle)
  {
    sub_1000060F0(self);
  }
}

- (void)bannerHandleDidInvalidate:(id)invalidate
{
  handles = self->_handles;
  invalidateCopy = invalidate;
  [(NSMutableArray *)handles removeObjectIdenticalTo:invalidateCopy];
  p_currentHandle = &self->_currentHandle;
  currentHandle = self->_currentHandle;

  if (currentHandle == invalidateCopy)
  {
    *p_currentHandle = 0;

    if (*p_currentHandle)
    {
      return;
    }
  }

  else if (currentHandle)
  {
    return;
  }

  firstObject = [(NSMutableArray *)self->_handles firstObject];
  v9 = self->_currentHandle;
  self->_currentHandle = firstObject;

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v11 = self->_currentHandle;
  v12 = WeakRetained;
  if (v11)
  {
    sub_100006154(self, v11, &self->_currentHandle, WeakRetained);
  }

  else
  {
    [WeakRetained setBannerDetached:1];
  }
}

@end