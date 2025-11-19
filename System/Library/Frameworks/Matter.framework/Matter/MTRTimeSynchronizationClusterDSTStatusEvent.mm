@interface MTRTimeSynchronizationClusterDSTStatusEvent
- (MTRTimeSynchronizationClusterDSTStatusEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterDSTStatusEvent

- (MTRTimeSynchronizationClusterDSTStatusEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRTimeSynchronizationClusterDSTStatusEvent;
  v2 = [(MTRTimeSynchronizationClusterDSTStatusEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    dstOffsetActive = v2->_dstOffsetActive;
    v2->_dstOffsetActive = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterDSTStatusEvent);
  v5 = [(MTRTimeSynchronizationClusterDSTStatusEvent *)self dstOffsetActive];
  [(MTRTimeSynchronizationClusterDSTStatusEvent *)v4 setDstOffsetActive:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: dstOffsetActive:%@ >", v5, self->_dstOffsetActive];;

  return v6;
}

@end