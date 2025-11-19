@interface NSSQLPrimaryKey
- (NSSQLPrimaryKey)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (void)copyValuesForReadOnlyFetch:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLPrimaryKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLPrimaryKey;
  [(NSSQLColumn *)&v3 dealloc];
}

- (NSSQLPrimaryKey)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v9.receiver = self;
  v9.super_class = NSSQLPrimaryKey;
  v4 = [(NSSQLColumn *)&v9 initWithEntity:a3 propertyDescription:0];
  v5 = v4;
  if (v4)
  {
    v4->super.super._propertyType = 2;
    columnName = v4->super._columnName;
    if (columnName != @"Z_PK")
    {

      v5->super._columnName = [@"Z_PK" copy];
    }

    name = v5->_name;
    if (name != @"_pk")
    {

      v5->_name = [@"_pk" copy];
    }

    v5->super.super._sqlType = 2;
  }

  return v5;
}

- (void)copyValuesForReadOnlyFetch:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLPrimaryKey;
  [(NSSQLColumn *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(a3 "name")];
}

@end