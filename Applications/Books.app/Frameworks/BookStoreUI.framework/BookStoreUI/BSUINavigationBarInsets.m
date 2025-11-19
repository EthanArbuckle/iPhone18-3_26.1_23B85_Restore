@interface BSUINavigationBarInsets
+ (UIEdgeInsets)compact;
+ (UIEdgeInsets)extraCompact;
+ (UIEdgeInsets)regular;
+ (UIEdgeInsets)sidebar;
- (BSUINavigationBarInsets)init;
@end

@implementation BSUINavigationBarInsets

+ (UIEdgeInsets)extraCompact
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = 0.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (UIEdgeInsets)compact
{
  v2 = 32.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 32.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

+ (UIEdgeInsets)regular
{
  v2 = 40.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 40.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

+ (UIEdgeInsets)sidebar
{
  v2 = 0.0;
  v3 = 24.0;
  v4 = 0.0;
  v5 = 24.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BSUINavigationBarInsets)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavigationBarInsets();
  return [(BSUINavigationBarInsets *)&v3 init];
}

@end