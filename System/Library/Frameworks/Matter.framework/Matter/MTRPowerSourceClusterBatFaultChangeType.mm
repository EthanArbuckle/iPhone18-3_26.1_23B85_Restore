@interface MTRPowerSourceClusterBatFaultChangeType
- (MTRPowerSourceClusterBatFaultChangeType)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPowerSourceClusterBatFaultChangeType

- (MTRPowerSourceClusterBatFaultChangeType)init
{
  v8.receiver = self;
  v8.super_class = MTRPowerSourceClusterBatFaultChangeType;
  v2 = [(MTRPowerSourceClusterBatFaultChangeType *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    current = v2->_current;
    v2->_current = array;

    array2 = [MEMORY[0x277CBEA60] array];
    previous = v2->_previous;
    v2->_previous = array2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPowerSourceClusterBatFaultChangeType);
  current = [(MTRPowerSourceClusterBatFaultChangeType *)self current];
  [(MTRPowerSourceClusterBatFaultChangeType *)v4 setCurrent:current];

  previous = [(MTRPowerSourceClusterBatFaultChangeType *)self previous];
  [(MTRPowerSourceClusterBatFaultChangeType *)v4 setPrevious:previous];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: current:%@ previous:%@; >", v5, self->_current, self->_previous];;

  return v6;
}

@end