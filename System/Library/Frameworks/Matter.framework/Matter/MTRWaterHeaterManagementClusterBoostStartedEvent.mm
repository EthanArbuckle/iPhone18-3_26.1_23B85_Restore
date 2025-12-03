@interface MTRWaterHeaterManagementClusterBoostStartedEvent
- (MTRWaterHeaterManagementClusterBoostStartedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWaterHeaterManagementClusterBoostStartedEvent

- (MTRWaterHeaterManagementClusterBoostStartedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRWaterHeaterManagementClusterBoostStartedEvent;
  v2 = [(MTRWaterHeaterManagementClusterBoostStartedEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    boostInfo = v2->_boostInfo;
    v2->_boostInfo = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWaterHeaterManagementClusterBoostStartedEvent);
  boostInfo = [(MTRWaterHeaterManagementClusterBoostStartedEvent *)self boostInfo];
  [(MTRWaterHeaterManagementClusterBoostStartedEvent *)v4 setBoostInfo:boostInfo];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: boostInfo:%@ >", v5, self->_boostInfo];;

  return v6;
}

@end