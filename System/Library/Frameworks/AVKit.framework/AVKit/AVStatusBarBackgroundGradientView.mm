@interface AVStatusBarBackgroundGradientView
- (double)alpha;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
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
  gradientView = [(AVStatusBarBackgroundGradientView *)self gradientView];
  [gradientView setFrame:{v4, v6, v8, v10}];
}

- (void)setAlpha:(double)alpha
{
  if (alpha <= 0.0)
  {
    layer = [(AVStatusBarBackgroundGradientView *)self layer];
    [layer setEnabled:0];

    [(AVStatusBarBackgroundGradientView *)self setHidden:1];
  }

  else
  {
    [(AVStatusBarBackgroundGradientView *)self setHidden:0];
    layer2 = [(AVStatusBarBackgroundGradientView *)self layer];
    [layer2 setEnabled:1];

    gradientView = [(AVStatusBarBackgroundGradientView *)self gradientView];

    if (!gradientView)
    {
      v7 = [AVStatusBarBackgroundGradientViewSubview alloc];
      [(AVStatusBarBackgroundGradientView *)self bounds];
      v8 = [(AVStatusBarBackgroundGradientViewSubview *)v7 initWithFrame:?];
      [(AVStatusBarBackgroundGradientView *)self setGradientView:v8];

      gradientView2 = [(AVStatusBarBackgroundGradientView *)self gradientView];
      [(AVStatusBarBackgroundGradientView *)self addSubview:gradientView2];
    }

    gradientView3 = [(AVStatusBarBackgroundGradientView *)self gradientView];
    [gradientView3 setAlpha:alpha];
  }
}

- (double)alpha
{
  gradientView = [(AVStatusBarBackgroundGradientView *)self gradientView];
  [gradientView alpha];
  v4 = v3;

  return v4;
}

@end