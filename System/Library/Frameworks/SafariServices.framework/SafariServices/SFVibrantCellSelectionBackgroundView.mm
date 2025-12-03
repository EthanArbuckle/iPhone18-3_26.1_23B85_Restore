@interface SFVibrantCellSelectionBackgroundView
- (SFVibrantCellSelectionBackgroundView)initWithFrame:(CGRect)frame;
- (void)updateSelectionEffect;
@end

@implementation SFVibrantCellSelectionBackgroundView

- (SFVibrantCellSelectionBackgroundView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SFVibrantCellSelectionBackgroundView;
  v3 = [(SFVibrantCellSelectionBackgroundView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    contentView = [(SFVibrantCellSelectionBackgroundView *)v3 contentView];
    [contentView setBackgroundColor:blackColor];

    v6 = objc_opt_self();
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [(SFVibrantCellSelectionBackgroundView *)v3 registerForTraitChanges:v7 withTarget:v3 action:sel_updateSelectionEffect];

    [(SFVibrantCellSelectionBackgroundView *)v3 updateSelectionEffect];
    v9 = v3;
  }

  return v3;
}

- (void)updateSelectionEffect
{
  traitCollection = [(SFVibrantCellSelectionBackgroundView *)self traitCollection];
  sf_backgroundBlurEffect = [traitCollection sf_backgroundBlurEffect];
  v5 = sf_backgroundBlurEffect;
  if (sf_backgroundBlurEffect)
  {
    _sf_defaultPopoverBackgroundEffect = sf_backgroundBlurEffect;
  }

  else
  {
    _sf_defaultPopoverBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultPopoverBackgroundEffect];
  }

  v8 = _sf_defaultPopoverBackgroundEffect;

  v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:v8 style:6];
  [(SFVibrantCellSelectionBackgroundView *)self setEffect:v7];
}

@end