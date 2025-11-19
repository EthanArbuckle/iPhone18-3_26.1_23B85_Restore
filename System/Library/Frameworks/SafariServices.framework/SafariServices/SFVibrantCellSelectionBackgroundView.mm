@interface SFVibrantCellSelectionBackgroundView
- (SFVibrantCellSelectionBackgroundView)initWithFrame:(CGRect)a3;
- (void)updateSelectionEffect;
@end

@implementation SFVibrantCellSelectionBackgroundView

- (SFVibrantCellSelectionBackgroundView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SFVibrantCellSelectionBackgroundView;
  v3 = [(SFVibrantCellSelectionBackgroundView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [(SFVibrantCellSelectionBackgroundView *)v3 contentView];
    [v5 setBackgroundColor:v4];

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
  v3 = [(SFVibrantCellSelectionBackgroundView *)self traitCollection];
  v4 = [v3 sf_backgroundBlurEffect];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DC730] _sf_defaultPopoverBackgroundEffect];
  }

  v8 = v6;

  v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:v8 style:6];
  [(SFVibrantCellSelectionBackgroundView *)self setEffect:v7];
}

@end