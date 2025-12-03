@interface SCATModernMenuView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits includeTip:(BOOL)tip;
- (SCATModernMenuView)initWithFrame:(CGRect)frame;
@end

@implementation SCATModernMenuView

- (SCATModernMenuView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16.receiver = self;
  v16.super_class = SCATModernMenuView;
  v7 = [(SCATModernMenuView *)&v16 initWithFrame:?];
  if (v7)
  {
    height = [[SCATModernMenuBackgroundView alloc] initWithFrame:x, y, width, height];
    [(SCATModernMenuBackgroundView *)height setAutoresizingMask:18];
    [(SCATModernMenuView *)v7 setBackgroundView:height];
    backdropView = [(SCATModernMenuBackgroundView *)height backdropView];
    [backdropView setTranslatesAutoresizingMaskIntoConstraints:0];

    backdropView2 = [(SCATModernMenuBackgroundView *)height backdropView];
    [(SCATModernMenuView *)v7 addSubview:backdropView2];

    backdropView3 = [(SCATModernMenuBackgroundView *)height backdropView];
    contentView = [backdropView3 contentView];
    [contentView addSubview:height];

    backdropView4 = [(SCATModernMenuBackgroundView *)height backdropView];
    v14 = [NSLayoutConstraint ax_constraintsToMakeView:v7 sameDimensionsAsView:backdropView4];
    [NSLayoutConstraint activateConstraints:v14];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits includeTip:(BOOL)tip
{
  tipCopy = tip;
  height = fits.height;
  width = fits.width;
  backgroundView = [(SCATModernMenuView *)self backgroundView];
  [backgroundView sizeThatFits:tipCopy includeTip:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  backgroundView = [(SCATModernMenuView *)self backgroundView];
  [backgroundView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end