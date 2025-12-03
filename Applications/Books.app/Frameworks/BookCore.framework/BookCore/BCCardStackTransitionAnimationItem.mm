@interface BCCardStackTransitionAnimationItem
- (BCCardStackTransitionAnimationItem)initWithKey:(id)key;
@end

@implementation BCCardStackTransitionAnimationItem

- (BCCardStackTransitionAnimationItem)initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = BCCardStackTransitionAnimationItem;
  v6 = [(BCCardStackTransitionAnimationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
  }

  return v7;
}

@end