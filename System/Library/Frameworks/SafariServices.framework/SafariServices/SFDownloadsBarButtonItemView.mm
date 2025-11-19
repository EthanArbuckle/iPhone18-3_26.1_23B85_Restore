@interface SFDownloadsBarButtonItemView
+ (id)buttonWithBarButtonItem:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_barButtonHitRect;
- (CGRect)_selectedIndicatorBounds;
- (CGSize)intrinsicContentSize;
- (SFDownloadsBarButtonItemView)initWithFrame:(CGRect)a3;
- (UIBarButtonItem)barButtonItem;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (void)_buttonPressed;
- (void)_installSubviews;
- (void)_updateIcon;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)pulse;
- (void)setBarButtonItem:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setProgress:(double)a3;
- (void)updateContents;
@end

@implementation SFDownloadsBarButtonItemView

+ (id)buttonWithBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [a1 buttonWithType:1];
  [v5 setBarButtonItem:v4];

  return v5;
}

- (SFDownloadsBarButtonItemView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SFDownloadsBarButtonItemView;
  v3 = [(SFDownloadsBarButtonItemView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD1B8] safari_traitsAffectingTextAppearance];
    v5 = [(SFDownloadsBarButtonItemView *)v3 registerForTraitChanges:v4 withTarget:v3 action:sel__updateIcon];

    v6 = v3;
  }

  return v3;
}

- (void)_installSubviews
{
  [(SFDownloadsBarButtonItemView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFDownloadsBarButtonItemView *)self setPointerStyleProvider:&__block_literal_global_38];
  [(SFDownloadsBarButtonItemView *)self addTarget:self action:sel__buttonPressed forControlEvents:64];
  v12 = [(SFDownloadsBarButtonItemView *)self imageView];
  [v12 setClipsToBounds:0];
  v3 = [_SFDownloadsIconView alloc];
  v4 = [(_SFDownloadsIconView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;

  [v12 addSubview:self->_iconView];
  [(SFDownloadsBarButtonItemView *)self _updateIcon];
  v6 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  [(SFDownloadsBarButtonItemView *)self setImage:v6 forState:0];

  v7 = [(SFDownloadsBarButtonItemView *)self heightAnchor];
  v8 = [v7 constraintEqualToConstant:44.0];
  [v8 setActive:1];

  v9 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  progressView = self->_progressView;
  self->_progressView = v9;

  if ([(SFDownloadsBarButtonItemView *)self isEnabled])
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  [(UIProgressView *)self->_progressView setTintAdjustmentMode:v11];
  [v12 addSubview:self->_progressView];
}

id __48__SFDownloadsBarButtonItemView__installSubviews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69DCDD0];
  v5 = MEMORY[0x1E69DCDC8];
  v6 = a3;
  v7 = [v5 sf_shapeForToolbarButton:a2];
  v8 = [v4 styleWithEffect:v6 shape:v7];

  return v8;
}

- (void)_updateIcon
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  v4 = MEMORY[0x1E69DCAD8];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [(SFDownloadsBarButtonItemView *)self traitCollection];
  v14 = [v4 _sf_staticConfigurationWithTextStyle:v5 scale:3 weight:v3 compatibleWithTraitCollection:v6];

  v7 = MEMORY[0x1E69DCAB8];
  v8 = [MEMORY[0x1E696AAE8] sf_mobileSafariFrameworkBundle];
  v9 = [v7 imageNamed:@"DownloadsIconCircle" inBundle:v8 withConfiguration:v14];

  v10 = MEMORY[0x1E69DCAB8];
  v11 = [MEMORY[0x1E696AAE8] sf_mobileSafariFrameworkBundle];
  v12 = [v10 imageNamed:@"DownloadsIconArrow" inBundle:v11 withConfiguration:v14];

  [(_SFDownloadsIconView *)self->_iconView setCircleImage:v9];
  [(_SFDownloadsIconView *)self->_iconView setArrowImage:v12];
  [v9 size];
  [(_SFDownloadsIconView *)self->_iconView setIconScale:v13 / 24.0];
  [(SFDownloadsBarButtonItemView *)self invalidateIntrinsicContentSize];
  [(SFDownloadsBarButtonItemView *)self setNeedsLayout];
}

- (void)setBarButtonItem:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_barButtonItem, obj);
    v5 = obj;
  }
}

- (CGRect)_selectedIndicatorBounds
{
  v2 = [(SFDownloadsBarButtonItemView *)self imageView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_barButtonHitRect
{
  v3 = [(SFDownloadsBarButtonItemView *)self _sf_firstAncestorViewOfClass:objc_opt_class()];
  v4 = [v3 items];
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);
  v6 = [v4 indexOfObject:WeakRetained];

  v7 = v6 >= [v4 count];
  v8 = v6 < 1;
  v9 = [(SFDownloadsBarButtonItemView *)self _sf_usesLeftToRightLayout];
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = -17.0;
  }

  if (v11)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = -17.0;
  }

  [(SFDownloadsBarButtonItemView *)self bounds];
  v15 = v14;
  v17 = v12 + v16;
  v19 = v18 + 0.0;
  v21 = v20 - (v12 + v13);

  v22 = v17;
  v23 = v19;
  v24 = v21;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SFDownloadsBarButtonItemView *)self _barButtonHitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = MEMORY[0x1E69DCDC0];
  [(SFDownloadsBarButtonItemView *)self _barButtonHitRect:a3];

  return [v5 regionWithRect:@"SFDownloadsBarButtonItem" identifier:?];
}

- (CGSize)intrinsicContentSize
{
  [(_SFDownloadsIconView *)self->_iconView intrinsicContentSize];
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SFDownloadsBarButtonItemView;
  [(SFDownloadsBarButtonItemView *)&v6 setEnabled:?];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [(UIProgressView *)self->_progressView setTintAdjustmentMode:v5];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SFDownloadsBarButtonItemView;
  [(SFDownloadsBarButtonItemView *)&v3 didMoveToWindow];
  if (!self->_iconView)
  {
    [(SFDownloadsBarButtonItemView *)self _installSubviews];
  }

  SFDeferrableUpdateViewDidMoveToWindow();
}

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    [(SFDownloadsBarButtonItemView *)self updateContents];
  }
}

- (void)pulse
{
  if (SFDeferrableUpdateViewCanUpdateContents())
  {
    iconView = self->_iconView;

    [(_SFDownloadsIconView *)iconView pulse];
  }
}

- (void)_buttonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [WeakRetained action];
  v4 = [WeakRetained target];
  [v2 sendAction:v3 to:v4 from:WeakRetained forEvent:0];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = SFDownloadsBarButtonItemView;
  [(SFDownloadsBarButtonItemView *)&v20 layoutSubviews];
  [(_SFDownloadsIconView *)self->_iconView intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(SFDownloadsBarButtonItemView *)self _sf_firstAncestorViewOfClass:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    v7 = self;
  }

  [v7 bounds];
  v9 = CGRectGetHeight(v21) + -16.0 - v6;
  v10 = [(_SFDownloadsIconView *)self->_iconView circleImage];
  [v10 baselineOffsetFromBottom];
  v12 = v9 + v11;

  v13 = [(SFDownloadsBarButtonItemView *)self imageView];
  [v13 setFrame:{0.0, v12, v4, v6}];

  [(_SFDownloadsIconView *)self->_iconView setFrame:0.0, 0.0, v4, v6];
  v14 = [(_SFDownloadsIconView *)self->_iconView arrowImage];
  [v14 size];
  v16 = v15;

  _SFRoundFloatToPixels();
  v18 = v17;
  _SFRoundFloatToPixels();
  [(UIProgressView *)self->_progressView setFrame:v18, v19, v16, 2.0];
}

- (void)updateContents
{
  if (SFDeferrableUpdateViewShouldAttemptToUpdateContents())
  {
    progress = self->_progress;
    v4 = progress;
    v5 = progress == -1.0;
    v6 = 0.0;
    if (!v5)
    {
      *&v6 = v4;
    }

    [(UIProgressView *)self->_progressView setProgress:v6];
    v7 = self->_progress == -2.0;
    progressView = self->_progressView;

    [(UIProgressView *)progressView setHidden:v7];
  }
}

- (UIBarButtonItem)barButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_barButtonItem);

  return WeakRetained;
}

@end