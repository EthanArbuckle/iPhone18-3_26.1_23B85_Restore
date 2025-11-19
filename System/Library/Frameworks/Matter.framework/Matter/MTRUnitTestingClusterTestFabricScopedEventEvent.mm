@interface MTRUnitTestingClusterTestFabricScopedEventEvent
- (MTRUnitTestingClusterTestFabricScopedEventEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestFabricScopedEventEvent

- (MTRUnitTestingClusterTestFabricScopedEventEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRUnitTestingClusterTestFabricScopedEventEvent;
  v2 = [(MTRUnitTestingClusterTestFabricScopedEventEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestFabricScopedEventEvent);
  v5 = [(MTRUnitTestingClusterTestFabricScopedEventEvent *)self fabricIndex];
  [(MTRUnitTestingClusterTestFabricScopedEventEvent *)v4 setFabricIndex:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: fabricIndex:%@ >", v5, self->_fabricIndex];;

  return v6;
}

@end