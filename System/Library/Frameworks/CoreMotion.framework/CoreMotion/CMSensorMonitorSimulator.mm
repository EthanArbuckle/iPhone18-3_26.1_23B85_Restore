@interface CMSensorMonitorSimulator
- (CMSensorMonitorSimulator)init;
- (void)dealloc;
- (void)simulateMotionSensorDataForType:(unint64_t)a3 payload:(id)a4 withHandler:(id)a5;
@end

@implementation CMSensorMonitorSimulator

- (CMSensorMonitorSimulator)init
{
  v7.receiver = self;
  v7.super_class = CMSensorMonitorSimulator;
  v2 = [(CMSensorMonitorSimulator *)&v7 init];
  if (v2)
  {
    v3 = [CMSensorMonitorSimulatorProxy alloc];
    v2->_sensorMonitorSimulatorProxy = objc_msgSend_initWithSensorMonitorTests(v3, v4, v5);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSensorMonitorSimulator;
  [(CMSensorMonitorSimulator *)&v3 dealloc];
}

- (void)simulateMotionSensorDataForType:(unint64_t)a3 payload:(id)a4 withHandler:(id)a5
{
  if (!a5)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMSensorMonitorSimulator.mm", 116, @"Invalid parameter not satisfying: %@", @"handler");
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CMSensorMonitorSimulator.mm", 117, @"Invalid parameter not satisfying: %@", @"data");
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(objc_msgSend_sensorMonitorSimulatorProxy(self, a2, a3) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6E4A6C;
  block[3] = &unk_1E7533780;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  block[7] = a3;
  dispatch_async(v10, block);
}

@end