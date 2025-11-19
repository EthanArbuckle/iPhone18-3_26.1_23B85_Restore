@interface _SFDownloadsIconView
- (CGSize)intrinsicContentSize;
- (_SFDownloadsIconView)initWithFrame:(CGRect)a3;
- (id)_makeSpringAnimationWithDelay:(double)a3 offset:(double)a4;
- (void)_finishedPulsing;
- (void)_setUp;
- (void)_updateSuppressesPixelAlignment;
- (void)layoutSubviews;
- (void)pulse;
- (void)setCircleImage:(id)a3;
@end

@implementation _SFDownloadsIconView

- (_SFDownloadsIconView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _SFDownloadsIconView;
  v3 = [(_SFDownloadsIconView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFDownloadsIconView *)v3 _setUp];
    v5 = v4;
  }

  return v4;
}

- (void)_setUp
{
  self->_iconScale = 1.0;
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  circleContainerView = self->_circleContainerView;
  self->_circleContainerView = v3;

  [(_SFDownloadsIconView *)self addSubview:self->_circleContainerView];
  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  circleImageView = self->_circleImageView;
  self->_circleImageView = v5;

  [(UIImageView *)self->_circleImageView setContentMode:4];
  [(UIView *)self->_circleContainerView addSubview:self->_circleImageView];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  arrowContainerView = self->_arrowContainerView;
  self->_arrowContainerView = v7;

  [(_SFDownloadsIconView *)self addSubview:self->_arrowContainerView];
  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  arrowImageView = self->_arrowImageView;
  self->_arrowImageView = v9;

  [(UIImageView *)self->_arrowImageView setContentMode:4];
  v11 = self->_arrowContainerView;
  v12 = self->_arrowImageView;

  [(UIView *)v11 addSubview:v12];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = _SFDownloadsIconView;
  [(_SFDownloadsIconView *)&v20 layoutSubviews];
  v3 = [(UIImageView *)self->_circleImageView image];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  [(UIImageView *)self->_circleImageView sizeThatFits:*MEMORY[0x1E695F060], v5];
  v7 = v6;
  v9 = v8;
  [(UIView *)self->_circleContainerView setFrame:0.0, 0.0, v6, v8];
  [(UIImageView *)self->_circleImageView setFrame:0.0, 0.0, v7, v9];
  v10 = [(UIImageView *)self->_arrowImageView image];
  [(UIImageView *)self->_arrowImageView sizeThatFits:v4, v5];
  v12 = v11;
  v14 = v13;
  _SFRoundFloatToPixels();
  v16 = v15;
  [v3 baselineOffsetFromBottom];
  v18 = v9 - v17;
  [v10 baselineOffsetFromBottom];
  [(UIView *)self->_arrowContainerView setFrame:v16, v18 + v19 - v14, v12, v14];
  [(UIImageView *)self->_arrowImageView setFrame:0.0, 0.0, v12, v14];
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_circleImageView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)pulse
{
  if (!self->_pulsing)
  {
    objc_initWeak(&location, self);
    [(_SFDownloadsIconView *)self _setPulsing:1];
    [MEMORY[0x1E6979518] begin];
    v3 = MEMORY[0x1E6979518];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __29___SFDownloadsIconView_pulse__block_invoke;
    v15 = &unk_1E848F8F0;
    objc_copyWeak(&v16, &location);
    [v3 setCompletionBlock:&v12];
    v4 = [(UIView *)self->_circleContainerView layer:v12];
    v5 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.135 offset:3.0];
    [v4 addAnimation:v5 forKey:@"pulse"];

    v6 = [(UIImageView *)self->_circleImageView layer];
    v7 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.345 offset:-3.0];
    [v6 addAnimation:v7 forKey:@"pulse"];

    v8 = [(UIView *)self->_arrowContainerView layer];
    v9 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.0 offset:5.0];
    [v8 addAnimation:v9 forKey:@"pulse"];

    v10 = [(UIImageView *)self->_arrowImageView layer];
    v11 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.215 offset:-5.0];
    [v10 addAnimation:v11 forKey:@"pulse"];

    [MEMORY[0x1E6979518] commit];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_finishedPulsing
{
  [(_SFDownloadsIconView *)self _setPulsing:0];
  v3 = [(UIView *)self->_circleContainerView layer];
  [v3 removeAnimationForKey:@"pulse"];

  v4 = [(UIImageView *)self->_circleImageView layer];
  [v4 removeAnimationForKey:@"pulse"];

  v5 = [(UIView *)self->_arrowContainerView layer];
  [v5 removeAnimationForKey:@"pulse"];

  v6 = [(UIImageView *)self->_arrowImageView layer];
  [v6 removeAnimationForKey:@"pulse"];
}

- (id)_makeSpringAnimationWithDelay:(double)a3 offset:(double)a4
{
  v5 = [MEMORY[0x1E69794A8] animation];
  [v5 setKeyPath:@"position.y"];
  [v5 setFromValue:&unk_1F50231D0];
  v6 = MEMORY[0x1E696AD98];
  _SFRoundFloatToPixels();
  v7 = [v6 numberWithDouble:?];
  [v5 setToValue:v7];

  [v5 setAdditive:1];
  [v5 setMass:2.0];
  [v5 setStiffness:350.0];
  [v5 setDamping:25.0];
  [v5 setDuration:0.8];
  [v5 setBeginTime:CACurrentMediaTime() + a3];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  [v5 setRemovedOnCompletion:0];

  return v5;
}

- (void)setCircleImage:(id)a3
{
  [(UIImageView *)self->_circleImageView setImage:a3];

  [(_SFDownloadsIconView *)self setNeedsLayout];
}

- (void)_updateSuppressesPixelAlignment
{
  pulsing = 1;
  if (!self->_suppressesPixelAlignment)
  {
    pulsing = self->_pulsing;
  }

  v4 = [(UIImageView *)self->_circleImageView layer];
  [v4 setContentsAlignsToPixels:!pulsing];

  v5 = [(UIImageView *)self->_circleImageView layer];
  [v5 setAllowsEdgeAntialiasing:pulsing];

  v6 = [(UIImageView *)self->_arrowImageView layer];
  [v6 setContentsAlignsToPixels:!pulsing];

  v7 = [(UIImageView *)self->_arrowImageView layer];
  [v7 setAllowsEdgeAntialiasing:pulsing];
}

@end