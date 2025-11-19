@interface _ASNavigationTitleView
- (_ASNavigationTitleView)initWithFrame:(CGRect)a3;
@end

@implementation _ASNavigationTitleView

- (_ASNavigationTitleView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _ASNavigationTitleView;
  v3 = [(_UINavigationBarTitleView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UINavigationBarTitleView *)v3 setHeight:60.0];
    [(_UINavigationBarTitleView *)v4 setPreferredContentAlignment:2];
    v5 = v4;
  }

  return v4;
}

@end