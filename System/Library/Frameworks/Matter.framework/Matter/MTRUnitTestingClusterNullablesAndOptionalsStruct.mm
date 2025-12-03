@interface MTRUnitTestingClusterNullablesAndOptionalsStruct
- (MTRUnitTestingClusterNullablesAndOptionalsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterNullablesAndOptionalsStruct);
  nullableInt = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableInt];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableInt:nullableInt];

  optionalInt = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalInt];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalInt:optionalInt];

  nullableOptionalInt = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalInt];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalInt:nullableOptionalInt];

  nullableString = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableString];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableString:nullableString];

  optionalString = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalString];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalString:optionalString];

  nullableOptionalString = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalString];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalString:nullableOptionalString];

  nullableStruct = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableStruct];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableStruct:nullableStruct];

  optionalStruct = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalStruct];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalStruct:optionalStruct];

  nullableOptionalStruct = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalStruct];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalStruct:nullableOptionalStruct];

  nullableList = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableList];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableList:nullableList];

  optionalList = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self optionalList];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setOptionalList:optionalList];

  nullableOptionalList = [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)self nullableOptionalList];
  [(MTRUnitTestingClusterNullablesAndOptionalsStruct *)v4 setNullableOptionalList:nullableOptionalList];

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