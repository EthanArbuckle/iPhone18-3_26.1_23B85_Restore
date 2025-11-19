@interface NSSQLEntityKey
- (NSSQLEntityKey)initWithEntity:(id)a3 propertyDescription:(id)a4;
@end

@implementation NSSQLEntityKey

- (NSSQLEntityKey)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v8.receiver = self;
  v8.super_class = NSSQLEntityKey;
  v4 = [(NSSQLColumn *)&v8 initWithEntity:a3 propertyDescription:0];
  v5 = v4;
  if (v4)
  {
    v4->super.super._propertyType = 5;
    columnName = v4->super._columnName;
    if (columnName != @"Z_ENT")
    {

      v5->super._columnName = [@"Z_ENT" copy];
    }

    v5->super.super._sqlType = 1;
  }

  return v5;
}

@end