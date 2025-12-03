@interface NSSQLToMany
- (NSSQLToMany)initWithEntity:(id)entity propertyDescription:(id)description;
@end

@implementation NSSQLToMany

- (NSSQLToMany)initWithEntity:(id)entity propertyDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = NSSQLToMany;
  result = [(NSSQLRelationship *)&v5 initWithEntity:entity propertyDescription:description];
  if (result)
  {
    result->super.super._propertyType = 8;
  }

  return result;
}

@end