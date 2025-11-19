@interface UGCHairlineView
- (UGCHairlineView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UGCHairlineView

- (void)traitCollectionDidChange:(id)a3
{
  v20.receiver = self;
  v20.super_class = UGCHairlineView;
  v4 = a3;
  [(UGCHairlineView *)&v20 traitCollectionDidChange:v4];
  v5 = [(UGCHairlineView *)self traitCollection:v20.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    v10 = self;
    v11 = [(UGCHairlineView *)v10 window];
    v12 = [v11 screen];
    if (v12)
    {
      v13 = [(UGCHairlineView *)v10 window];
      v14 = [v13 screen];
      [v14 nativeScale];
      v16 = v15;
    }

    else
    {
      v13 = +[UIScreen mainScreen];
      [v13 nativeScale];
      v16 = v17;
    }

    if (v16 <= 0.0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 1.0 / v16;
    }

    v19 = [(UGCHairlineView *)v10 constraint];
    [v19 setConstant:v18];
  }
}

- (UGCHairlineView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = UGCHairlineView;
  v3 = [(UGCHairlineView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCHairlineView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(UGCHairlineView *)v4 heightAnchor];
    v6 = v4;
    v7 = [(UGCHairlineView *)v6 window];
    v8 = [v7 screen];
    if (v8)
    {
      v9 = [(UGCHairlineView *)v6 window];
      v10 = [v9 screen];
      [v10 nativeScale];
      v12 = v11;
    }

    else
    {
      v9 = +[UIScreen mainScreen];
      [v9 nativeScale];
      v12 = v13;
    }

    if (v12 <= 0.0)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 1.0 / v12;
    }

    v15 = [v5 constraintEqualToConstant:v14];
    [(UGCHairlineView *)v6 setConstraint:v15];

    v16 = [(UGCHairlineView *)v6 constraint];
    [v16 setActive:1];

    v17 = +[MapsTheme ugcHairlineColor];
    [(UGCHairlineView *)v6 setBackgroundColor:v17];
  }

  return v4;
}

@end