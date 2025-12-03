@interface UGCHairlineView
- (UGCHairlineView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UGCHairlineView

- (void)traitCollectionDidChange:(id)change
{
  v20.receiver = self;
  v20.super_class = UGCHairlineView;
  changeCopy = change;
  [(UGCHairlineView *)&v20 traitCollectionDidChange:changeCopy];
  v5 = [(UGCHairlineView *)self traitCollection:v20.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    selfCopy = self;
    window = [(UGCHairlineView *)selfCopy window];
    screen = [window screen];
    if (screen)
    {
      window2 = [(UGCHairlineView *)selfCopy window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v16 = v15;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
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

    constraint = [(UGCHairlineView *)selfCopy constraint];
    [constraint setConstant:v18];
  }
}

- (UGCHairlineView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = UGCHairlineView;
  v3 = [(UGCHairlineView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCHairlineView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(UGCHairlineView *)v4 heightAnchor];
    v6 = v4;
    window = [(UGCHairlineView *)v6 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [(UGCHairlineView *)v6 window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v12 = v11;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
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

    v15 = [heightAnchor constraintEqualToConstant:v14];
    [(UGCHairlineView *)v6 setConstraint:v15];

    constraint = [(UGCHairlineView *)v6 constraint];
    [constraint setActive:1];

    v17 = +[MapsTheme ugcHairlineColor];
    [(UGCHairlineView *)v6 setBackgroundColor:v17];
  }

  return v4;
}

@end