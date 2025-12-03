@interface MTRUnitTestingClusterDoubleNestedStructList
- (MTRUnitTestingClusterDoubleNestedStructList)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterDoubleNestedStructList

- (MTRUnitTestingClusterDoubleNestedStructList)init
{
  v6.receiver = self;
  v6.super_class = MTRUnitTestingClusterDoubleNestedStructList;
  v2 = [(MTRUnitTestingClusterDoubleNestedStructList *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    a = v2->_a;
    v2->_a = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterDoubleNestedStructList);
  v5 = [(MTRUnitTestingClusterDoubleNestedStructList *)self a];
  [(MTRUnitTestingClusterDoubleNestedStructList *)v4 setA:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: a:%@ >", v5, self->_a];;

  return v6;
}

@end