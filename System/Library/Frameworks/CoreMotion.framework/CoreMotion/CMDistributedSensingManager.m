@interface CMDistributedSensingManager
+ (BOOL)isVehicleStateUpdatesAvailable;
- (CMDistributedSensingManager)init;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation CMDistributedSensingManager

- (CMDistributedSensingManager)init
{
  v4.receiver = self;
  v4.super_class = CMDistributedSensingManager;
  v2 = [(CMDistributedSensingManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMDistributedSensingManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  clientQueue = internal->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF8F0;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_async(clientQueue, block);

  v5.receiver = self;
  v5.super_class = CMDistributedSensingManager;
  [(CMDistributedSensingManager *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  internal = self->_internal;
  objc_storeWeak(&internal->_delegate, a3);
  objc_storeWeak(&internal->_manager, self);
  self->_delegate = a3;
}

+ (BOOL)isVehicleStateUpdatesAvailable
{
  sub_19B421798();
  if (sub_19B43B6EC())
  {
    return 1;
  }

  sub_19B421798();
  if (sub_19B4426E4())
  {
    return 1;
  }

  sub_19B421798();
  return 0;
}

@end