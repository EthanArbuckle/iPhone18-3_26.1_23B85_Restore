@interface CMSensorMonitorSimulatorProxy
- (CMSensorMonitorSimulatorProxy)initWithSensorMonitorTests;
- (void)_simulateMotionSensorDataForType:(unint64_t)type payload:(id)payload withHandler:(id)handler;
- (void)dealloc;
@end

@implementation CMSensorMonitorSimulatorProxy

- (CMSensorMonitorSimulatorProxy)initWithSensorMonitorTests
{
  v4.receiver = self;
  v4.super_class = CMSensorMonitorSimulatorProxy;
  v2 = [(CMSensorMonitorSimulatorProxy *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSensorMonitorSimulator", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  sub_19B42C54C(&self->fLocationdConnection, 0);
  v3.receiver = self;
  v3.super_class = CMSensorMonitorSimulatorProxy;
  [(CMSensorMonitorSimulatorProxy *)&v3 dealloc];
}

- (void)_simulateMotionSensorDataForType:(unint64_t)type payload:(id)payload withHandler:(id)handler
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"CMSensorMonitorMotionSensorTypeId";
  v7[1] = @"CMSensorMonitorMotionSensorPayload";
  v8[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, type);
  v8[1] = payload;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, v7, 2);
  sub_19B6AD504();
}

@end