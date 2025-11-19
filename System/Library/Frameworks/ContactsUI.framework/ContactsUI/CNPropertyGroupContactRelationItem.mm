@interface CNPropertyGroupContactRelationItem
- (CNContactRelation)contactRelation;
- (id)normalizedValue;
@end

@implementation CNPropertyGroupContactRelationItem

- (id)normalizedValue
{
  v2 = [(CNPropertyGroupContactRelationItem *)self contactRelation];
  v3 = [v2 name];

  return v3;
}

- (CNContactRelation)contactRelation
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  return v3;
}

@end