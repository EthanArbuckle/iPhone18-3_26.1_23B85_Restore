@interface PersonalizedCompoundItemGroup
- (PersonalizedCompoundItemGroup)initWithItems:(id)a3;
@end

@implementation PersonalizedCompoundItemGroup

- (PersonalizedCompoundItemGroup)initWithItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PersonalizedCompoundItemGroup;
  v5 = [(PersonalizedCompoundItemGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

@end