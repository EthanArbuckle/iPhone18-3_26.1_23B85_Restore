@interface CMIMUCalManager
- (CMIMUCalManager)init;
- (void)dealloc;
- (void)insertEstimate:(const SensorParameterEstimate *)a3 intervalBeforeCurrentTimeSec:(double)a4;
- (void)insertImpact:(const DeviceImpactEvent *)a3;
@end

@implementation CMIMUCalManager

- (void)insertEstimate:(const SensorParameterEstimate *)a3 intervalBeforeCurrentTimeSec:(double)a4
{
  v5 = objc_msgSend__internal(self, a2, a3);

  MEMORY[0x1EEE66B58](v5, sel__insertEstimate_intervalBeforeCurrentTimeSec_, a3);
}

- (void)insertImpact:(const DeviceImpactEvent *)a3
{
  v4 = objc_msgSend__internal(self, a2, a3);

  MEMORY[0x1EEE66B58](v4, sel__insertImpact_, a3);
}

- (CMIMUCalManager)init
{
  v4.receiver = self;
  v4.super_class = CMIMUCalManager;
  v2 = [(CMIMUCalManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMIMUCalManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CMIMUCalManager;
  [(CMIMUCalManager *)&v3 dealloc];
}

@end