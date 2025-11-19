@interface HNDDwellPointerAppearance
- (HNDDwellPointerAppearance)init;
@end

@implementation HNDDwellPointerAppearance

- (HNDDwellPointerAppearance)init
{
  v4.receiver = self;
  v4.super_class = HNDDwellPointerAppearance;
  v2 = [(HNDDwellPointerAppearance *)&v4 init];
  [(HNDDwellPointerAppearance *)v2 setShouldShowFingerOutlines:1];
  [(HNDDwellPointerAppearance *)v2 setShouldShowInnerCircle:1];
  return v2;
}

@end