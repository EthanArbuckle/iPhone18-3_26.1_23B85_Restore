@interface _ASNavigationTitleView
- (_ASNavigationTitleView)initWithFrame:(CGRect)frame;
@end

@implementation _ASNavigationTitleView

- (_ASNavigationTitleView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _ASNavigationTitleView;
  v3 = [(_UINavigationBarTitleView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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