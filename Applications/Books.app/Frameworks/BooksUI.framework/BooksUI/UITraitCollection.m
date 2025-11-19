@interface UITraitCollection
- (BOOL)isInCard;
- (BOOL)isInactiveCard;
@end

@implementation UITraitCollection

- (BOOL)isInCard
{
  sub_21C364();
  v3 = self;
  v4 = sub_264980();

  return v4 & 1;
}

- (BOOL)isInactiveCard
{
  sub_21C444();
  v3 = self;
  v4 = sub_264980();

  return v4 & 1;
}

@end