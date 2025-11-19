@interface MTRUnitTestingClusterNestedStructList
- (MTRUnitTestingClusterNestedStructList)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterNestedStructList

- (MTRUnitTestingClusterNestedStructList)init
{
  v17.receiver = self;
  v17.super_class = MTRUnitTestingClusterNestedStructList;
  v2 = [(MTRUnitTestingClusterNestedStructList *)&v17 init];
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

    v8 = [MEMORY[0x277CBEA60] array];
    d = v3->_d;
    v3->_d = v8;

    v10 = [MEMORY[0x277CBEA60] array];
    e = v3->_e;
    v3->_e = v10;

    v12 = [MEMORY[0x277CBEA60] array];
    f = v3->_f;
    v3->_f = v12;

    v14 = [MEMORY[0x277CBEA60] array];
    g = v3->_g;
    v3->_g = v14;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterNestedStructList);
  v5 = [(MTRUnitTestingClusterNestedStructList *)self a];
  [(MTRUnitTestingClusterNestedStructList *)v4 setA:v5];

  v6 = [(MTRUnitTestingClusterNestedStructList *)self b];
  [(MTRUnitTestingClusterNestedStructList *)v4 setB:v6];

  v7 = [(MTRUnitTestingClusterNestedStructList *)self c];
  [(MTRUnitTestingClusterNestedStructList *)v4 setC:v7];

  v8 = [(MTRUnitTestingClusterNestedStructList *)self d];
  [(MTRUnitTestingClusterNestedStructList *)v4 setD:v8];

  v9 = [(MTRUnitTestingClusterNestedStructList *)self e];
  [(MTRUnitTestingClusterNestedStructList *)v4 setE:v9];

  v10 = [(MTRUnitTestingClusterNestedStructList *)self f];
  [(MTRUnitTestingClusterNestedStructList *)v4 setF:v10];

  v11 = [(MTRUnitTestingClusterNestedStructList *)self g];
  [(MTRUnitTestingClusterNestedStructList *)v4 setG:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: a:%@ b:%@; c:%@; d:%@; e:%@; f:%@; g:%@; >", v5, self->_a, self->_b, self->_c, self->_d, self->_e, self->_f, self->_g];;

  return v6;
}

@end