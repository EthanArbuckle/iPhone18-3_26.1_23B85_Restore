@interface ASCGradientBackgroundView
- (ASCGradientBackgroundView)initWithCoder:(id)coder;
- (ASCGradientBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ASCGradientBackgroundView

- (ASCGradientBackgroundView)initWithFrame:(CGRect)frame
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ASCGradientBackgroundView;
  v3 = [(ASCGradientBackgroundView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCGradientBackgroundView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ASCGradientBackgroundView *)v4 setBackgroundColor:clearColor];

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    gradientOverlayView = v4->_gradientOverlayView;
    v4->_gradientOverlayView = v7;

    layer = [MEMORY[0x277CD9EB0] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = layer;

    blackColor = [MEMORY[0x277D75348] blackColor];
    v11 = [blackColor colorWithAlphaComponent:0.0];
    v23[0] = [v11 CGColor];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    v13 = [blackColor2 colorWithAlphaComponent:0.63];
    v23[1] = [v13 CGColor];
    blackColor3 = [MEMORY[0x277D75348] blackColor];
    v15 = [blackColor3 colorWithAlphaComponent:0.75];
    v23[2] = [v15 CGColor];
    blackColor4 = [MEMORY[0x277D75348] blackColor];
    v17 = [blackColor4 colorWithAlphaComponent:0.75];
    v23[3] = [v17 CGColor];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    [(CAGradientLayer *)v4->_gradientLayer setColors:v18];

    [(CAGradientLayer *)v4->_gradientLayer setLocations:&unk_2827B39D0];
    [(CAGradientLayer *)v4->_gradientLayer setStartPoint:0.0, 0.0];
    [(CAGradientLayer *)v4->_gradientLayer setEndPoint:0.0, 1.0];
    layer2 = [(UIView *)v4->_gradientOverlayView layer];
    [layer2 addSublayer:v4->_gradientLayer];

    [(ASCGradientBackgroundView *)v4 addSubview:v4->_gradientOverlayView];
  }

  return v4;
}

- (ASCGradientBackgroundView)initWithCoder:(id)coder
{
  [(ASCGradientBackgroundView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = ASCGradientBackgroundView;
  [(ASCGradientBackgroundView *)&v21 layoutSubviews];
  [(ASCGradientBackgroundView *)self bounds];
  v4 = v3;
  +[ASCGradientBackgroundView gradientPercentageOfBounds];
  v6 = v4 * v5;
  [(ASCGradientBackgroundView *)self bounds];
  v7 = CGRectGetMaxY(v22) - v6;
  [(ASCGradientBackgroundView *)self bounds];
  v9 = v8;
  gradientOverlayView = [(ASCGradientBackgroundView *)self gradientOverlayView];
  [gradientOverlayView setFrame:{0.0, v7, v9, v6}];

  gradientOverlayView2 = [(ASCGradientBackgroundView *)self gradientOverlayView];
  [gradientOverlayView2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  gradientLayer = [(ASCGradientBackgroundView *)self gradientLayer];
  [gradientLayer setFrame:{v13, v15, v17, v19}];
}

@end