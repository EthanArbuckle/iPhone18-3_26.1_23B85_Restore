@interface NSValue
+ (NSValue)valueWithUIEdgeInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)uiEdgeInsetsValue;
@end

@implementation NSValue

+ (NSValue)valueWithUIEdgeInsets:(UIEdgeInsets)insets
{
  v5 = insets;
  v3 = [NSValue valueWithBytes:&v5 objCType:"{UIEdgeInsets=dddd}"];

  return v3;
}

- (UIEdgeInsets)uiEdgeInsetsValue
{
  v6 = 0u;
  v7 = 0u;
  [(NSValue *)self getValue:&v6];
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = *(&v7 + 1);
  v4 = *&v7;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end