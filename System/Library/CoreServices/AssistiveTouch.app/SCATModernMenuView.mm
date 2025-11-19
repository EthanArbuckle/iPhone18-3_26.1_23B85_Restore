@interface SCATModernMenuView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 includeTip:(BOOL)a4;
- (SCATModernMenuView)initWithFrame:(CGRect)a3;
@end

@implementation SCATModernMenuView

- (SCATModernMenuView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = SCATModernMenuView;
  v7 = [(SCATModernMenuView *)&v16 initWithFrame:?];
  if (v7)
  {
    v8 = [[SCATModernMenuBackgroundView alloc] initWithFrame:x, y, width, height];
    [(SCATModernMenuBackgroundView *)v8 setAutoresizingMask:18];
    [(SCATModernMenuView *)v7 setBackgroundView:v8];
    v9 = [(SCATModernMenuBackgroundView *)v8 backdropView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(SCATModernMenuBackgroundView *)v8 backdropView];
    [(SCATModernMenuView *)v7 addSubview:v10];

    v11 = [(SCATModernMenuBackgroundView *)v8 backdropView];
    v12 = [v11 contentView];
    [v12 addSubview:v8];

    v13 = [(SCATModernMenuBackgroundView *)v8 backdropView];
    v14 = [NSLayoutConstraint ax_constraintsToMakeView:v7 sameDimensionsAsView:v13];
    [NSLayoutConstraint activateConstraints:v14];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3 includeTip:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = [(SCATModernMenuView *)self backgroundView];
  [v7 sizeThatFits:v4 includeTip:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SCATModernMenuView *)self backgroundView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end