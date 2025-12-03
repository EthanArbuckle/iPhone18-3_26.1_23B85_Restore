@interface UITraitCollection
- (BOOL)isInCard;
- (BOOL)isInactiveCard;
@end

@implementation UITraitCollection

- (BOOL)isInCard
{
  sub_21C364();
  selfCopy = self;
  v4 = sub_264980();

  return v4 & 1;
}

- (BOOL)isInactiveCard
{
  sub_21C444();
  selfCopy = self;
  v4 = sub_264980();

  return v4 & 1;
}

@end