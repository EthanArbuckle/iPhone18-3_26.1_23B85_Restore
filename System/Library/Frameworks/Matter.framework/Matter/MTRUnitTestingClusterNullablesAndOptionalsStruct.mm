@interface MTRUnitTestingClusterNullablesAndOptionalsStruct
- (MTRUnitTestingClusterNullablesAndOptionalsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterNullablesAndOptionalsStruct

- (MTRUnitTestingClusterNullablesAndOptionalsStruct)init
{
  v17.receiver = self;
  v17.super_class = MTRUnitTestingClusterNullablesAndOptionalsStruct;
  v2 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)&v17 init];
  v3 = v2;
  if (v2)
  {
    nullableInt = v2->_nullableInt;
    v2->_nullableInt = 0;

    optionalInt = v3->_optionalInt;
    v3->_optionalInt = 0;

    nullableOptionalInt = v3->_nullableOptionalInt;
    v3->_nullableOptionalInt = 0;

    nullableString = v3->_nullableString;
    v3->_nullableString = 0;

    optionalString = v3->_optionalString;
    v3->_optionalString = 0;

    nullableOptionalString = v3->_nullableOptionalString;
    v3->_nullableOptionalString = 0;

    nullableStruct = v3->_nullableStruct;
    v3->_nullableStruct = 0;

    optionalStruct = v3->_optionalStruct;
    v3->_optionalStruct = 0;

    nullableOptionalStruct = v3->_nullableOptionalStruct;
    v3->_nullableOptionalStruct = 0;

    nullableList = v3->_nullableList;
    v3->_nullableList = 0;

    optionalList = v3->_optionalList;
    v3->_optionalList = 0;

    nullableOptionalList = v3->_nullableOptionalList;
    v3->_nullableOptionalList = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterNullablesAndOptionalsStruct);
  v5 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableInt];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableInt:v5];

  v6 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalInt];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalInt:v6];

  v7 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalInt];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalInt:v7];

  v8 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableString];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableString:v8];

  v9 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalString];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalString:v9];

  v10 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalString];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalString:v10];

  v11 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableStruct];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableStruct:v11];

  v12 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalStruct];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalStruct:v12];

  v13 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalStruct];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalStruct:v13];

  v14 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableList];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableList:v14];

  v15 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalList];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalList:v15];

  v16 = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalList];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalList:v16];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nullableInt:%@ optionalInt:%@; nullableOptionalInt:%@; nullableString:%@; optionalString:%@; nullableOptionalString:%@; nullableStruct:%@; optionalStruct:%@; nullableOptionalStruct:%@; nullableList:%@; optionalList:%@; nullableOptionalList:%@; >", v5, self->_nullableInt, self->_optionalInt, self->_nullableOptionalInt, self->_nullableString, self->_optionalString, self->_nullableOptionalString, self->_nullableStruct, self->_optionalStruct, self->_nullableOptionalStruct, self->_nullableList, self->_optionalList, self->_nullableOptionalList];;

  return v6;
}

@end