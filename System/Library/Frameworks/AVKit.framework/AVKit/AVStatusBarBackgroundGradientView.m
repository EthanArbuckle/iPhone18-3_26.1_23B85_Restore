@interface AVStatusBarBackgroundGradientView
- (double)alpha;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
@end

@implementation AVStatusBarBackgroundGradientView

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = AVStatusBarBackgroundGradientView;
  [(AVStatusBarBackgroundGradientView *)&v12 layoutSubviews];
  [(AVStatusBarBackgroundGradientView *)self setUserInteractionEnabled:0];
  [(AVStatusBarBackgroundGradientView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AVStatusBarBackgroundGradientView *)self gradientView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setAlpha:(double)a3
{
  if (a3 <= 0.0)
  {
    v10 = [(AVStatusBarBackgroundGradientView *)self layer];
    [v10 setEnabled:0];

    [(AVStatusBarBackgroundGradientView *)self setHidden:1];
  }

  else
  {
    [(AVStatusBarBackgroundGradientView *)self setHidden:0];
    v5 = [(AVStatusBarBackgroundGradientView *)self layer];
    [v5 setEnabled:1];

    v6 = [(AVStatusBarBackgroundGradientView *)self gradientView];

    if (!v6)
    {
      v7 = [AVStatusBarBackgroundGradientViewSubview alloc];
      [(AVStatusBarBackgroundGradientView *)self bounds];
      v8 = [(AVStatusBarBackgroundGradientViewSubview *)v7 initWithFrame:?];
      [(AVStatusBarBackgroundGradientView *)self setGradientView:v8];

      v9 = [(AVStatusBarBackgroundGradientView *)self gradientView];
      [(AVStatusBarBackgroundGradientView *)self addSubview:v9];
    }

    v11 = [(AVStatusBarBackgroundGradientView *)self gradientView];
    [v11 setAlpha:a3];
  }
}

- (double)alpha
{
  v2 = [(AVStatusBarBackgroundGradientView *)self gradientView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

@end