@interface FKACommandListItem
+ (id)itemWithName:(id)a3 keyDescription:(id)a4;
- (FKACommandListItem)initWithName:(id)a3 keyDescription:(id)a4;
@end

@implementation FKACommandListItem

+ (id)itemWithName:(id)a3 keyDescription:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 keyDescription:v6];

  return v8;
}

- (FKACommandListItem)initWithName:(id)a3 keyDescription:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FKACommandListItem;
  v9 = [(FKACommandListItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_keyDescription, a4);
  }

  return v10;
}

@end