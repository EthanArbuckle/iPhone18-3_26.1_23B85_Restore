@interface ABDeviceSceneResourceLoadingCancellable
- (ABDeviceSceneResourceLoadingCancellable)initWithCancelBlock:(id)a3;
- (void)dealloc;
@end

@implementation ABDeviceSceneResourceLoadingCancellable

- (ABDeviceSceneResourceLoadingCancellable)initWithCancelBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ABDeviceSceneResourceLoadingCancellable;
  v5 = [(ABDeviceSceneResourceLoadingCancellable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x23EF01A70](v4);
    cancelBlock = v5->_cancelBlock;
    v5->_cancelBlock = v6;
  }

  return v5;
}

- (void)dealloc
{
  (*(self->_cancelBlock + 2))();
  v3.receiver = self;
  v3.super_class = ABDeviceSceneResourceLoadingCancellable;
  [(ABDeviceSceneResourceLoadingCancellable *)&v3 dealloc];
}

@end