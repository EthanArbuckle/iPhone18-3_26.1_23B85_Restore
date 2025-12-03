@interface MTRUnitTestingClusterTestFabricScoped
- (MTRUnitTestingClusterTestFabricScoped)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestFabricScoped

- (MTRUnitTestingClusterTestFabricScoped)init
{
  v15.receiver = self;
  v15.super_class = MTRUnitTestingClusterTestFabricScoped;
  v2 = [(MTRUnitTestingClusterTestFabricScoped *)&v15 init];
  v3 = v2;
  if (v2)
  {
    fabricSensitiveInt8u = v2->_fabricSensitiveInt8u;
    v2->_fabricSensitiveInt8u = &unk_284C3E588;

    optionalFabricSensitiveInt8u = v3->_optionalFabricSensitiveInt8u;
    v3->_optionalFabricSensitiveInt8u = 0;

    nullableFabricSensitiveInt8u = v3->_nullableFabricSensitiveInt8u;
    v3->_nullableFabricSensitiveInt8u = 0;

    nullableOptionalFabricSensitiveInt8u = v3->_nullableOptionalFabricSensitiveInt8u;
    v3->_nullableOptionalFabricSensitiveInt8u = 0;

    fabricSensitiveCharString = v3->_fabricSensitiveCharString;
    v3->_fabricSensitiveCharString = &stru_284BD0DD8;

    v9 = objc_opt_new();
    fabricSensitiveStruct = v3->_fabricSensitiveStruct;
    v3->_fabricSensitiveStruct = v9;

    array = [MEMORY[0x277CBEA60] array];
    fabricSensitiveInt8uList = v3->_fabricSensitiveInt8uList;
    v3->_fabricSensitiveInt8uList = array;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestFabricScoped);
  fabricSensitiveInt8u = [(MTRUnitTestingClusterTestFabricScoped *)self fabricSensitiveInt8u];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setFabricSensitiveInt8u:fabricSensitiveInt8u];

  optionalFabricSensitiveInt8u = [(MTRUnitTestingClusterTestFabricScoped *)self optionalFabricSensitiveInt8u];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setOptionalFabricSensitiveInt8u:optionalFabricSensitiveInt8u];

  nullableFabricSensitiveInt8u = [(MTRUnitTestingClusterTestFabricScoped *)self nullableFabricSensitiveInt8u];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setNullableFabricSensitiveInt8u:nullableFabricSensitiveInt8u];

  nullableOptionalFabricSensitiveInt8u = [(MTRUnitTestingClusterTestFabricScoped *)self nullableOptionalFabricSensitiveInt8u];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setNullableOptionalFabricSensitiveInt8u:nullableOptionalFabricSensitiveInt8u];

  fabricSensitiveCharString = [(MTRUnitTestingClusterTestFabricScoped *)self fabricSensitiveCharString];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setFabricSensitiveCharString:fabricSensitiveCharString];

  fabricSensitiveStruct = [(MTRUnitTestingClusterTestFabricScoped *)self fabricSensitiveStruct];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setFabricSensitiveStruct:fabricSensitiveStruct];

  fabricSensitiveInt8uList = [(MTRUnitTestingClusterTestFabricScoped *)self fabricSensitiveInt8uList];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setFabricSensitiveInt8uList:fabricSensitiveInt8uList];

  fabricIndex = [(MTRUnitTestingClusterTestFabricScoped *)self fabricIndex];
  [(MTRUnitTestingClusterTestFabricScoped *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: fabricSensitiveInt8u:%@ optionalFabricSensitiveInt8u:%@; nullableFabricSensitiveInt8u:%@; nullableOptionalFabricSensitiveInt8u:%@; fabricSensitiveCharString:%@; fabricSensitiveStruct:%@; fabricSensitiveInt8uList:%@; fabricIndex:%@; >", v5, self->_fabricSensitiveInt8u, self->_optionalFabricSensitiveInt8u, self->_nullableFabricSensitiveInt8u, self->_nullableOptionalFabricSensitiveInt8u, self->_fabricSensitiveCharString, self->_fabricSensitiveStruct, self->_fabricSensitiveInt8uList, self->_fabricIndex];;

  return v6;
}

@end