@interface BCCardStackTransitionAnimationItem
- (BCCardStackTransitionAnimationItem)initWithKey:(id)a3;
@end

@implementation BCCardStackTransitionAnimationItem

- (BCCardStackTransitionAnimationItem)initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BCCardStackTransitionAnimationItem;
  v6 = [(BCCardStackTransitionAnimationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
  }

  return v7;
}

@end