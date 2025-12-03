@interface CMBikeSensorInternal
- (CMBikeSensorInternal)init;
- (void)_feedBikeSensorData:(id)data;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMBikeSensorInternal

- (CMBikeSensorInternal)init
{
  v4.receiver = self;
  v4.super_class = CMBikeSensorInternal;
  v2 = [(CMBikeSensorInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMBikeSensor", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMBikeSensorInternal;
  [(CMBikeSensorInternal *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_feedBikeSensorData:(id)data
{
  if (!data)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMBikeSensor.mm", 78, @"Invalid parameter not satisfying: %@", @"bikeSensorData");
  }

  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6CBCA0;
  block[3] = &unk_1E7532A00;
  block[4] = data;
  block[5] = self;
  dispatch_async(fInternalQueue, block);
}

@end