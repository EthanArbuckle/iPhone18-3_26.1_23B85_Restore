@interface MTRTimeSynchronizationClusterTimeZoneStruct
- (MTRTimeSynchronizationClusterTimeZoneStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterTimeZoneStruct

- (MTRTimeSynchronizationClusterTimeZoneStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRTimeSynchronizationClusterTimeZoneStruct;
  v2 = [(MTRTimeSynchronizationClusterTimeZoneStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    offset = v2->_offset;
    v2->_offset = &unk_284C3E588;

    validAt = v3->_validAt;
    v3->_validAt = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterTimeZoneStruct);
  offset = [(MTRTimeSynchronizationClusterTimeZoneStruct *)self offset];
  [(MTRTimeSynchronizationClusterTimeZoneStruct *)v4 setOffset:offset];

  validAt = [(MTRTimeSynchronizationClusterTimeZoneStruct *)self validAt];
  [(MTRTimeSynchronizationClusterTimeZoneStruct *)v4 setValidAt:validAt];

  name = [(MTRTimeSynchronizationClusterTimeZoneStruct *)self name];
  [(MTRTimeSynchronizationClusterTimeZoneStruct *)v4 setName:name];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: offset:%@ validAt:%@; name:%@; >", v5, self->_offset, self->_validAt, self->_name];;

  return v6;
}

@end