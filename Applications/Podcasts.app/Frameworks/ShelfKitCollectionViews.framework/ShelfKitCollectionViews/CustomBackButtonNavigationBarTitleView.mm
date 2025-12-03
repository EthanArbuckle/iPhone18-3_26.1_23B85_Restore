@interface CustomBackButtonNavigationBarTitleView
- (void)contentDidChange;
- (void)layoutSubviews;
@end

@implementation CustomBackButtonNavigationBarTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_B5AC4();
}

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CustomBackButtonNavigationBarTitleView *)&v3 contentDidChange];
  [v2 setNeedsLayout];
}

@end