@interface MTRUnitTestingClusterNestedStruct
- (MTRUnitTestingClusterNestedStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterNestedStruct

- (MTRUnitTestingClusterNestedStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterNestedStruct;
  v2 = [(MTRUnitTestingClusterNestedStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    a = v2->_a;
    v2->_a = &unk_284C3E588;

    b = v3->_b;
    v3->_b = &unk_284C3E588;

    v6 = objc_opt_new();
    c = v3->_c;
    v3->_c = v6;

    d = v3->_d;
    v3->_d = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterNestedStruct);
  v5 = [(MTRUnitTestingClusterNestedStruct *)self a];
  [(MTRUnitTestingClusterNestedStruct *)v4 setA:v5];

  v6 = [(MTRUnitTestingClusterNestedStruct *)self b];
  [(MTRUnitTestingClusterNestedStruct *)v4 setB:v6];

  v7 = [(MTRUnitTestingClusterNestedStruct *)self c];
  [(MTRUnitTestingClusterNestedStruct *)v4 setC:v7];

  v8 = [(MTRUnitTestingClusterNestedStruct *)self d];
  [(MTRUnitTestingClusterNestedStruct *)v4 setD:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: a:%@ b:%@; c:%@; d:%@; >", v5, self->_a, self->_b, self->_c, self->_d];;

  return v6;
}

@end