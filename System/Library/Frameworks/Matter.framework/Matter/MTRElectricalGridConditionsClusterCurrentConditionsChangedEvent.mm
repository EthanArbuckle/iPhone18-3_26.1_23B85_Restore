@interface MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent
- (MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent

- (MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent;
  v2 = [(MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    currentConditions = v2->_currentConditions;
    v2->_currentConditions = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent);
  currentConditions = [(MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent *)self currentConditions];
  [(MTRElectricalGridConditionsClusterCurrentConditionsChangedEvent *)v4 setCurrentConditions:currentConditions];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: currentConditions:%@ >", v5, self->_currentConditions];;

  return v6;
}

@end