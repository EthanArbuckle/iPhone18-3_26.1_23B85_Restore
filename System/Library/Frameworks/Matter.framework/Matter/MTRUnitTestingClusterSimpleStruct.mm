@interface MTRUnitTestingClusterSimpleStruct
- (MTRUnitTestingClusterSimpleStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterSimpleStruct

- (MTRUnitTestingClusterSimpleStruct)init
{
  v15.receiver = self;
  v15.super_class = MTRUnitTestingClusterSimpleStruct;
  v2 = [(MTRUnitTestingClusterSimpleStruct *)&v15 init];
  v3 = v2;
  if (v2)
  {
    a = v2->_a;
    v2->_a = &unk_284C3E588;

    b = v3->_b;
    v3->_b = &unk_284C3E588;

    c = v3->_c;
    v3->_c = &unk_284C3E588;

    data = [MEMORY[0x277CBEA90] data];
    d = v3->_d;
    v3->_d = data;

    e = v3->_e;
    v3->_e = &stru_284BD0DD8;

    f = v3->_f;
    v3->_f = &unk_284C3E588;

    g = v3->_g;
    v3->_g = &unk_284C3E588;

    h = v3->_h;
    v3->_h = &unk_284C3E588;

    i = v3->_i;
    v3->_i = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterSimpleStruct);
  v5 = [(MTRUnitTestingClusterSimpleStruct *)self a];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setA:v5];

  v6 = [(MTRUnitTestingClusterSimpleStruct *)self b];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setB:v6];

  v7 = [(MTRUnitTestingClusterSimpleStruct *)self c];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setC:v7];

  v8 = [(MTRUnitTestingClusterSimpleStruct *)self d];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setD:v8];

  v9 = [(MTRUnitTestingClusterSimpleStruct *)self e];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setE:v9];

  v10 = [(MTRUnitTestingClusterSimpleStruct *)self f];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setF:v10];

  v11 = [(MTRUnitTestingClusterSimpleStruct *)self g];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setG:v11];

  v12 = [(MTRUnitTestingClusterSimpleStruct *)self h];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setH:v12];

  v13 = [(MTRUnitTestingClusterSimpleStruct *)self i];
  [(MTRUnitTestingClusterSimpleStruct *)v4 setI:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  a = self->_a;
  b = self->_b;
  c = self->_c;
  v9 = [(NSData *)self->_d base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: a:%@ b:%@; c:%@; d:%@; e:%@; f:%@; g:%@; h:%@; i:%@; >", v5, a, b, c, v9, self->_e, self->_f, self->_g, self->_h, self->_i];;

  return v10;
}

@end