@interface CMPedestrianFenceManagerInternal
- (CMPedestrianFenceManagerInternal)init;
- (void)_clearFence:(id)a3 force:(BOOL)a4;
- (void)_setFence:(id)a3 withRadius:(id)a4 wake:(BOOL)a5 delay:(id)a6 withCompletion:(id)a7;
- (void)_setInSession:(BOOL)a3 withStatusHandler:(id)a4;
- (void)dealloc;
@end

@implementation CMPedestrianFenceManagerInternal

- (CMPedestrianFenceManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMPedestrianFenceManagerInternal;
  v2 = [(CMPedestrianFenceManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fFenceHandler = 0;
    v2->fStatusHandler = 0;
    v2->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMPedestrianFenceManagerPrivateQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  self->fFenceHandler = 0;

  self->fStatusHandler = 0;
  dispatch_release(self->fPrivateQueue);
  self->fPrivateQueue = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
  v4.receiver = self;
  v4.super_class = CMPedestrianFenceManagerInternal;
  [(CMPedestrianFenceManagerInternal *)&v4 dealloc];
}

- (void)_setInSession:(BOOL)a3 withStatusHandler:(id)a4
{
  fPrivateQueue = self->fPrivateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B72D008;
  block[3] = &unk_1E75358F8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(fPrivateQueue, block);
}

- (void)_setFence:(id)a3 withRadius:(id)a4 wake:(BOOL)a5 delay:(id)a6 withCompletion:(id)a7
{
  fPrivateQueue = self->fPrivateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B72D378;
  v8[3] = &unk_1E7535920;
  v8[7] = a6;
  v8[8] = a7;
  v8[4] = self;
  v8[5] = a3;
  v9 = a5;
  v8[6] = a4;
  dispatch_async(fPrivateQueue, v8);
}

- (void)_clearFence:(id)a3 force:(BOOL)a4
{
  fPrivateQueue = self->fPrivateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B72D9DC;
  block[3] = &unk_1E7534FF0;
  v6 = a4;
  block[4] = a3;
  block[5] = self;
  dispatch_async(fPrivateQueue, block);
}

@end