@interface TintColorUpdateView
- (void)tintColorDidChange;
@end

@implementation TintColorUpdateView

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = TintColorUpdateView;
  [(TintColorUpdateView *)&v6 tintColorDidChange];
  v3 = [(TintColorUpdateView *)self tintColorUpdateDelegate];

  if (v3)
  {
    v4 = [(TintColorUpdateView *)self tintColorUpdateDelegate];
    v5 = [(TintColorUpdateView *)self tintColor];
    [v4 viewTintColorDidChangeForView:self toColor:v5];
  }
}

@end