@interface CMBatchedSensorManager
- (CMBatchedSensorManager)init;
- (void)dealloc;
- (void)startAccelerometerUpdates;
- (void)startAccelerometerUpdatesWithHandler:(void *)handler;
- (void)startDeviceMotionUpdates;
- (void)startDeviceMotionUpdatesWithHandler:(void *)handler;
- (void)stopAccelerometerUpdates;
- (void)stopDeviceMotionUpdates;
@end

@implementation CMBatchedSensorManager

- (CMBatchedSensorManager)init
{
  v4.receiver = self;
  v4.super_class = CMBatchedSensorManager;
  v2 = [(CMBatchedSensorManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  dispatch_queue_set_specific(internal[2], &unk_1EAFE3A08, &unk_1EAFE3A08, 0);
  if (dispatch_get_specific(&unk_1EAFE3A08) == &unk_1EAFE3A08)
  {
    objc_msgSend__teardown(internal, v4, v5);
  }

  else
  {
    v6 = internal[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B78087C;
    block[3] = &unk_1E7532988;
    block[4] = internal;
    dispatch_sync(v6, block);
  }

  v7.receiver = self;
  v7.super_class = CMBatchedSensorManager;
  [(CMBatchedSensorManager *)&v7 dealloc];
}

- (void)startAccelerometerUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B78091C;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startAccelerometerUpdatesWithHandler:(void *)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B780A18;
  v3[3] = &unk_1E7532B68;
  v3[4] = self;
  v3[5] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

- (void)stopAccelerometerUpdates
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B780B18;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)startDeviceMotionUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B780BC4;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startDeviceMotionUpdatesWithHandler:(void *)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B780CC0;
  v3[3] = &unk_1E7532B68;
  v3[4] = self;
  v3[5] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

- (void)stopDeviceMotionUpdates
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B780DC0;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end