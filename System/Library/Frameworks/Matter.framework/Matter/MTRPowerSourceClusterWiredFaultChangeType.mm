@interface MTRPowerSourceClusterWiredFaultChangeType
- (MTRPowerSourceClusterWiredFaultChangeType)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPowerSourceClusterWiredFaultChangeType

- (MTRPowerSourceClusterWiredFaultChangeType)init
{
  v8.receiver = self;
  v8.super_class = MTRPowerSourceClusterWiredFaultChangeType;
  v2 = [(MTRPowerSourceClusterWiredFaultChangeType *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    current = v2->_current;
    v2->_current = v3;

    v5 = [MEMORY[0x277CBEA60] array];
    previous = v2->_previous;
    v2->_previous = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPowerSourceClusterWiredFaultChangeType);
  v5 = [(MTRPowerSourceClusterWiredFaultChangeType *)self current];
  [(MTRPowerSourceClusterWiredFaultChangeType *)v4 setCurrent:v5];

  v6 = [(MTRPowerSourceClusterWiredFaultChangeType *)self previous];
  [(MTRPowerSourceClusterWiredFaultChangeType *)v4 setPrevious:v6];

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