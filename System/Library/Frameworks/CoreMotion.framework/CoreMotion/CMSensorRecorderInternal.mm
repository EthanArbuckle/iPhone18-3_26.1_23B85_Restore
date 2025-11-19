@interface CMSensorRecorderInternal
- (CMSensorRecorderInternal)init;
- (void)dealloc;
- (void)teardown;
@end

@implementation CMSensorRecorderInternal

- (CMSensorRecorderInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSensorRecorderInternal;
  v2 = [(CMSensorRecorderInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSensorRecorderInternal", 0);
    operator new();
  }

  return 0;
}

- (void)teardown
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6149D0;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)dealloc
{
  self->fInternalQueue = 0;
  v3.receiver = self;
  v3.super_class = CMSensorRecorderInternal;
  [(CMSensorRecorderInternal *)&v3 dealloc];
}

@end