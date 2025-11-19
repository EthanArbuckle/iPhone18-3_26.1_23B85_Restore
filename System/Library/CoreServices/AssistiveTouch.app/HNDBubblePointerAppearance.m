@interface HNDBubblePointerAppearance
- (HNDBubblePointerAppearance)init;
@end

@implementation HNDBubblePointerAppearance

- (HNDBubblePointerAppearance)init
{
  v4.receiver = self;
  v4.super_class = HNDBubblePointerAppearance;
  v2 = [(HNDBubblePointerAppearance *)&v4 init];
  [(HNDBubblePointerAppearance *)v2 setShouldShowInnerCircle:0];
  return v2;
}

@end