@interface MTRUnitTestingClusterTestDifferentVendorMeiEventEvent
- (MTRUnitTestingClusterTestDifferentVendorMeiEventEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestDifferentVendorMeiEventEvent

- (MTRUnitTestingClusterTestDifferentVendorMeiEventEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRUnitTestingClusterTestDifferentVendorMeiEventEvent;
  v2 = [(MTRUnitTestingClusterTestDifferentVendorMeiEventEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    arg1 = v2->_arg1;
    v2->_arg1 = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestDifferentVendorMeiEventEvent);
  arg1 = [(MTRUnitTestingClusterTestDifferentVendorMeiEventEvent *)self arg1];
  [(MTRUnitTestingClusterTestDifferentVendorMeiEventEvent *)v4 setArg1:arg1];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ >", v5, self->_arg1];;

  return v6;
}

@end