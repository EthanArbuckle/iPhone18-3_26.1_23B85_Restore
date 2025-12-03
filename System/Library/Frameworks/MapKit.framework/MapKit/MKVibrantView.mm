@interface MKVibrantView
- (MKVibrantView)initWithCoder:(id)coder;
- (MKVibrantView)initWithEffect:(id)effect;
- (void)didMoveToWindow;
- (void)setStyle:(int64_t)style;
@end

@implementation MKVibrantView

- (void)didMoveToWindow
{
  window = [(MKVibrantView *)self window];

  if (window)
  {
    superview = [(MKVibrantView *)self superview];
    if (superview)
    {
      while (1)
      {
        v7 = superview;
        if (objc_opt_respondsToSelector())
        {
          break;
        }

        superview2 = [v7 superview];

        superview = superview2;
        if (!superview2)
        {
          return;
        }
      }

      vibrancyGroupName = [v7 vibrancyGroupName];
      [(MKVibrantView *)self _setGroupName:vibrancyGroupName];
    }
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    v4 = MEMORY[0x1E69DC730];
    traitCollection = [(MKVibrantView *)self traitCollection];
    v7 = [v4 effectWithStyle:1100];

    v6 = [MEMORY[0x1E69DD248] effectForBlurEffect:v7 style:self->_style];
    [(MKVibrantView *)self setEffect:v6];
  }
}

- (MKVibrantView)initWithEffect:(id)effect
{
  v7.receiver = self;
  v7.super_class = MKVibrantView;
  v3 = [(MKVibrantView *)&v7 initWithEffect:effect];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    contentView = [(MKVibrantView *)v3 contentView];
    [contentView setBackgroundColor:v4];

    [(MKVibrantView *)v3 setStyle:6];
  }

  return v3;
}

- (MKVibrantView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MKVibrantView;
  v3 = [(MKVibrantView *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    contentView = [(MKVibrantView *)v3 contentView];
    [contentView setBackgroundColor:v4];

    [(MKVibrantView *)v3 setStyle:6];
  }

  return v3;
}

@end