@interface PKUISSPresentableContext
- (void)bannerHandle:(id)a3 didChangeFromClientState:(id)a4;
- (void)bannerHandleDidInvalidate:(id)a3;
- (void)setState:(id)a3;
@end

@implementation PKUISSPresentableContext

- (void)setState:(id)a3
{
  v5 = a3;
  if (self->_associated)
  {
    v7 = v5;
    if (self->_state != v5)
    {
      objc_storeStrong(&self->_state, a3);
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

- (void)bannerHandle:(id)a3 didChangeFromClientState:(id)a4
{
  if (self->_effectiveHandle == a3)
  {
    sub_1000060F0(self);
  }
}

- (void)bannerHandleDidInvalidate:(id)a3
{
  handles = self->_handles;
  v5 = a3;
  [(NSMutableArray *)handles removeObjectIdenticalTo:v5];
  p_currentHandle = &self->_currentHandle;
  currentHandle = self->_currentHandle;

  if (currentHandle == v5)
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

  v8 = [(NSMutableArray *)self->_handles firstObject];
  v9 = self->_currentHandle;
  self->_currentHandle = v8;

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