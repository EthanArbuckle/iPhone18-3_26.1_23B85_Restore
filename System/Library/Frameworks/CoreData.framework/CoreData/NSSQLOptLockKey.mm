@interface NSSQLOptLockKey
- (NSSQLOptLockKey)initWithEntity:(id)entity propertyDescription:(id)description;
@end

@implementation NSSQLOptLockKey

- (NSSQLOptLockKey)initWithEntity:(id)entity propertyDescription:(id)description
{
  v8.receiver = self;
  v8.super_class = NSSQLOptLockKey;
  v4 = [(NSSQLColumn *)&v8 initWithEntity:entity propertyDescription:0];
  v5 = v4;
  if (v4)
  {
    v4->super.super._propertyType = 6;
    columnName = v4->super._columnName;
    if (columnName != @"Z_OPT")
    {

      v5->super._columnName = [@"Z_OPT" copy];
    }

    v5->super.super._sqlType = 2;
  }

  return v5;
}

@end