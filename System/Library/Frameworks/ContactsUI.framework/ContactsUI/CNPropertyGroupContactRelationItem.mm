@interface CNPropertyGroupContactRelationItem
- (CNContactRelation)contactRelation;
- (id)normalizedValue;
@end

@implementation CNPropertyGroupContactRelationItem

- (id)normalizedValue
{
  contactRelation = [(CNPropertyGroupContactRelationItem *)self contactRelation];
  name = [contactRelation name];

  return name;
}

- (CNContactRelation)contactRelation
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  return value;
}

@end