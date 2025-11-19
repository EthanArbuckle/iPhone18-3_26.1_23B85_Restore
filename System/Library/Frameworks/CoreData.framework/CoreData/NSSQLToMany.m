@interface NSSQLToMany
- (NSSQLToMany)initWithEntity:(id)a3 propertyDescription:(id)a4;
@end

@implementation NSSQLToMany

- (NSSQLToMany)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v5.receiver = self;
  v5.super_class = NSSQLToMany;
  result = [(NSSQLRelationship *)&v5 initWithEntity:a3 propertyDescription:a4];
  if (result)
  {
    result->super.super._propertyType = 8;
  }

  return result;
}

@end