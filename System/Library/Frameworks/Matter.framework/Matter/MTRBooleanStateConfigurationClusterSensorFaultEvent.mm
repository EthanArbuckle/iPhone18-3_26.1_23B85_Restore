@interface MTRBooleanStateConfigurationClusterSensorFaultEvent
- (MTRBooleanStateConfigurationClusterSensorFaultEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBooleanStateConfigurationClusterSensorFaultEvent

- (MTRBooleanStateConfigurationClusterSensorFaultEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRBooleanStateConfigurationClusterSensorFaultEvent;
  v2 = [(MTRBooleanStateConfigurationClusterSensorFaultEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sensorFault = v2->_sensorFault;
    v2->_sensorFault = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBooleanStateConfigurationClusterSensorFaultEvent);
  sensorFault = [(MTRBooleanStateConfigurationClusterSensorFaultEvent *)self sensorFault];
  [(MTRBooleanStateConfigurationClusterSensorFaultEvent *)v4 setSensorFault:sensorFault];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sensorFault:%@ >", v5, self->_sensorFault];;

  return v6;
}

@end