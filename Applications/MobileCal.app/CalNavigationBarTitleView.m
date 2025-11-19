@interface CalNavigationBarTitleView
- (CalNavigationBarTitleView)initWithContents:(id)a3;
- (void)layoutSubviews;
@end

@implementation CalNavigationBarTitleView

- (CalNavigationBarTitleView)initWithContents:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CalNavigationBarTitleView;
  v6 = [(CalNavigationBarTitleView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contents, a3);
    [(CalNavigationBarTitleView *)v7 setPreservesSuperviewLayoutMargins:1];
    [(CalNavigationBarTitleView *)v7 setHideStandardTitle:1];
    v8 = +[UIColor clearColor];
    [(CalNavigationBarTitleView *)v7 setBackgroundColor:v8];

    [(CalNavigationBarTitleView *)v7 addSubview:v5];
  }

  return v7;
}

- (void)layoutSubviews
{
  contents = self->_contents;
  [(CalNavigationBarTitleView *)self bounds];
  [(UIView *)contents sizeThatFits:v4, v5];
  v7 = v6;
  v8 = [(CalNavigationBarTitleView *)self overlays];
  [v8 leadingItemsRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(CalNavigationBarTitleView *)self bounds];
  v18 = v17 * 0.5 - v7 * 0.5;
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  MidY = CGRectGetMidY(v23);
  if (v14 > 0.0)
  {
    if (CalInterfaceIsLeftToRight())
    {
      if (v10 + v14 + 10.0 > v18)
      {
        v18 = v10 + v14 + 10.0;
      }
    }

    else if (v10 + -10.0 < v7 + v18)
    {
      v18 = v10 + -10.0 - v7;
    }
  }

  if (v16 <= 0.0)
  {
    v20 = 44.0;
  }

  else
  {
    v20 = v16;
  }

  v21 = self->_contents;

  [(UIView *)v21 setFrame:v18, MidY + v20 * -0.5, v7];
}

@end