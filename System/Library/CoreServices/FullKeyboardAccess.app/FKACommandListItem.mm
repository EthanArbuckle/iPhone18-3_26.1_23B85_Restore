@interface FKACommandListItem
+ (id)itemWithName:(id)name keyDescription:(id)description;
- (FKACommandListItem)initWithName:(id)name keyDescription:(id)description;
@end

@implementation FKACommandListItem

+ (id)itemWithName:(id)name keyDescription:(id)description
{
  descriptionCopy = description;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy keyDescription:descriptionCopy];

  return v8;
}

- (FKACommandListItem)initWithName:(id)name keyDescription:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = FKACommandListItem;
  v9 = [(FKACommandListItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_keyDescription, description);
  }

  return v10;
}

@end