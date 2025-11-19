@interface PHInCallRootView
- (void)safeAreaInsetsDidChange;
@end

@implementation PHInCallRootView

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PHInCallRootView;
  [(PHInCallRootView *)&v3 safeAreaInsetsDidChange];
  [(PHInCallRootView *)self setNeedsLayout];
  [(PHInCallRootView *)self layoutIfNeeded];
}

@end