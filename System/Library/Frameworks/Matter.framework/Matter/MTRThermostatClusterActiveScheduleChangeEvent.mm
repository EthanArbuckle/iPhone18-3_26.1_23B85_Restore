@interface MTRThermostatClusterActiveScheduleChangeEvent
- (MTRThermostatClusterActiveScheduleChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterActiveScheduleChangeEvent

- (MTRThermostatClusterActiveScheduleChangeEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRThermostatClusterActiveScheduleChangeEvent;
  v2 = [(MTRThermostatClusterActiveScheduleChangeEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousScheduleHandle = v2->_previousScheduleHandle;
    v2->_previousScheduleHandle = 0;

    currentScheduleHandle = v3->_currentScheduleHandle;
    v3->_currentScheduleHandle = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterActiveScheduleChangeEvent);
  previousScheduleHandle = [(MTRThermostatClusterActiveScheduleChangeEvent *)self previousScheduleHandle];
  [(MTRThermostatClusterActiveScheduleChangeEvent *)v4 setPreviousScheduleHandle:previousScheduleHandle];

  currentScheduleHandle = [(MTRThermostatClusterActiveScheduleChangeEvent *)self currentScheduleHandle];
  [(MTRThermostatClusterActiveScheduleChangeEvent *)v4 setCurrentScheduleHandle:currentScheduleHandle];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_previousScheduleHandle base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_currentScheduleHandle base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: previousScheduleHandle:%@ currentScheduleHandle:%@; >", v5, v6, v7];;

  return v8;
}

@end