@interface MTRSampleMEIClusterPingCountEventEvent
- (MTRSampleMEIClusterPingCountEventEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSampleMEIClusterPingCountEventEvent

- (MTRSampleMEIClusterPingCountEventEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRSampleMEIClusterPingCountEventEvent;
  v2 = [(MTRSampleMEIClusterPingCountEventEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    count = v2->_count;
    v2->_count = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRSampleMEIClusterPingCountEventEvent);
  v5 = [(MTRSampleMEIClusterPingCountEventEvent *)self getCount];
  [(MTRSampleMEIClusterPingCountEventEvent *)v4 setCount:v5];

  v6 = [(MTRSampleMEIClusterPingCountEventEvent *)self fabricIndex];
  [(MTRSampleMEIClusterPingCountEventEvent *)v4 setFabricIndex:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: count:%@ fabricIndex:%@; >", v5, self->_count, self->_fabricIndex];;

  return v6;
}

@end