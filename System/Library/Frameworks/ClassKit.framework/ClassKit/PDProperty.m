@interface PDProperty
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (NSString)entityName;
- (PDDatabaseValue)identityValue;
- (PDProperty)initWithDatabaseRow:(id)a3;
@end

@implementation PDProperty

+ (NSString)entityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (PDDatabaseValue)identityValue
{
  if (self)
  {
    self = self->_name;
  }

  return self;
}

- (PDProperty)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PDProperty;
  v5 = [(PDProperty *)&v9 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"name");
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v10 = [[NSMutableString alloc] initWithString:@"create table "];
    v11 = NSStringFromClass(a1);
    [v10 appendString:v11];
    objc_msgSend(v10, "appendString:", @" (");
    [v10 appendString:{@" name text not null, "}];
    [v10 appendString:@" value "];
    v12 = [a1 valueSQLType];
    [v10 appendString:v12];
    [v10 appendString:@""]);
    if (sub_1000B9298(v8, v10, 0, 0, 0) && ([v10 setString:@"create unique index "], objc_msgSend(v10, "appendString:", v11), objc_msgSend(v10, "appendString:", @"_name on "), objc_msgSend(v10, "appendString:", v11), objc_msgSend(v10, "appendString:", @" (name)"), sub_1000B9298(v8, v10, 0, 0, 0)))
    {
      v9 = 1;
      *a4 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end