@interface MTRTimeSynchronizationClusterDSTOffsetStruct
- (MTRTimeSynchronizationClusterDSTOffsetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterDSTOffsetStruct

- (MTRTimeSynchronizationClusterDSTOffsetStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRTimeSynchronizationClusterDSTOffsetStruct;
  v2 = [(MTRTimeSynchronizationClusterDSTOffsetStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    offset = v2->_offset;
    v2->_offset = &unk_284C3E588;

    validStarting = v3->_validStarting;
    v3->_validStarting = &unk_284C3E588;

    validUntil = v3->_validUntil;
    v3->_validUntil = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterDSTOffsetStruct);
  offset = [(MTRTimeSynchronizationClusterDSTOffsetStruct *)self offset];
  [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v4 setOffset:offset];

  validStarting = [(MTRTimeSynchronizationClusterDSTOffsetStruct *)self validStarting];
  [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v4 setValidStarting:validStarting];

  validUntil = [(MTRTimeSynchronizationClusterDSTOffsetStruct *)self validUntil];
  [(MTRTimeSynchronizationClusterDSTOffsetStruct *)v4 setValidUntil:validUntil];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: offset:%@ validStarting:%@; validUntil:%@; >", v5, self->_offset, self->_validStarting, self->_validUntil];;

  return v6;
}

@end