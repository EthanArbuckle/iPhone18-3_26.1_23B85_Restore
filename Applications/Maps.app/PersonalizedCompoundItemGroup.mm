@interface PersonalizedCompoundItemGroup
- (PersonalizedCompoundItemGroup)initWithItems:(id)items;
@end

@implementation PersonalizedCompoundItemGroup

- (PersonalizedCompoundItemGroup)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = PersonalizedCompoundItemGroup;
  v5 = [(PersonalizedCompoundItemGroup *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

@end