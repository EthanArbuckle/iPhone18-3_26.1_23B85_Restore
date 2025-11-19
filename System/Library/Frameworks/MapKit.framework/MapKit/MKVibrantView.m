@interface MKVibrantView
- (MKVibrantView)initWithCoder:(id)a3;
- (MKVibrantView)initWithEffect:(id)a3;
- (void)didMoveToWindow;
- (void)setStyle:(int64_t)a3;
@end

@implementation MKVibrantView

- (void)didMoveToWindow
{
  v3 = [(MKVibrantView *)self window];

  if (v3)
  {
    v4 = [(MKVibrantView *)self superview];
    if (v4)
    {
      while (1)
      {
        v7 = v4;
        if (objc_opt_respondsToSelector())
        {
          break;
        }

        v5 = [v7 superview];

        v4 = v5;
        if (!v5)
        {
          return;
        }
      }

      v6 = [v7 vibrancyGroupName];
      [(MKVibrantView *)self _setGroupName:v6];
    }
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v4 = MEMORY[0x1E69DC730];
    v5 = [(MKVibrantView *)self traitCollection];
    v7 = [v4 effectWithStyle:1100];

    v6 = [MEMORY[0x1E69DD248] effectForBlurEffect:v7 style:self->_style];
    [(MKVibrantView *)self setEffect:v6];
  }
}

- (MKVibrantView)initWithEffect:(id)a3
{
  v7.receiver = self;
  v7.super_class = MKVibrantView;
  v3 = [(MKVibrantView *)&v7 initWithEffect:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    v5 = [(MKVibrantView *)v3 contentView];
    [v5 setBackgroundColor:v4];

    [(MKVibrantView *)v3 setStyle:6];
  }

  return v3;
}

- (MKVibrantView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MKVibrantView;
  v3 = [(MKVibrantView *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    v5 = [(MKVibrantView *)v3 contentView];
    [v5 setBackgroundColor:v4];

    [(MKVibrantView *)v3 setStyle:6];
  }

  return v3;
}

@end