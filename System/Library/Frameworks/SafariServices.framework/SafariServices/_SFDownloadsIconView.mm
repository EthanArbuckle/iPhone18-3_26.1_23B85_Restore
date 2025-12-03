@interface _SFDownloadsIconView
- (CGSize)intrinsicContentSize;
- (_SFDownloadsIconView)initWithFrame:(CGRect)frame;
- (id)_makeSpringAnimationWithDelay:(double)delay offset:(double)offset;
- (void)_finishedPulsing;
- (void)_setUp;
- (void)_updateSuppressesPixelAlignment;
- (void)layoutSubviews;
- (void)pulse;
- (void)setCircleImage:(id)image;
@end

@implementation _SFDownloadsIconView

- (_SFDownloadsIconView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _SFDownloadsIconView;
  v3 = [(_SFDownloadsIconView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  image = [(UIImageView *)self->_circleImageView image];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  [(UIImageView *)self->_circleImageView sizeThatFits:*MEMORY[0x1E695F060], v5];
  v7 = v6;
  v9 = v8;
  [(UIView *)self->_circleContainerView setFrame:0.0, 0.0, v6, v8];
  [(UIImageView *)self->_circleImageView setFrame:0.0, 0.0, v7, v9];
  image2 = [(UIImageView *)self->_arrowImageView image];
  [(UIImageView *)self->_arrowImageView sizeThatFits:v4, v5];
  v12 = v11;
  v14 = v13;
  _SFRoundFloatToPixels();
  v16 = v15;
  [image baselineOffsetFromBottom];
  v18 = v9 - v17;
  [image2 baselineOffsetFromBottom];
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

    layer = [(UIImageView *)self->_circleImageView layer];
    v7 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.345 offset:-3.0];
    [layer addAnimation:v7 forKey:@"pulse"];

    layer2 = [(UIView *)self->_arrowContainerView layer];
    v9 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.0 offset:5.0];
    [layer2 addAnimation:v9 forKey:@"pulse"];

    layer3 = [(UIImageView *)self->_arrowImageView layer];
    v11 = [(_SFDownloadsIconView *)self _makeSpringAnimationWithDelay:0.215 offset:-5.0];
    [layer3 addAnimation:v11 forKey:@"pulse"];

    [MEMORY[0x1E6979518] commit];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_finishedPulsing
{
  [(_SFDownloadsIconView *)self _setPulsing:0];
  layer = [(UIView *)self->_circleContainerView layer];
  [layer removeAnimationForKey:@"pulse"];

  layer2 = [(UIImageView *)self->_circleImageView layer];
  [layer2 removeAnimationForKey:@"pulse"];

  layer3 = [(UIView *)self->_arrowContainerView layer];
  [layer3 removeAnimationForKey:@"pulse"];

  layer4 = [(UIImageView *)self->_arrowImageView layer];
  [layer4 removeAnimationForKey:@"pulse"];
}

- (id)_makeSpringAnimationWithDelay:(double)delay offset:(double)offset
{
  animation = [MEMORY[0x1E69794A8] animation];
  [animation setKeyPath:@"position.y"];
  [animation setFromValue:&unk_1F50231D0];
  v6 = MEMORY[0x1E696AD98];
  _SFRoundFloatToPixels();
  v7 = [v6 numberWithDouble:?];
  [animation setToValue:v7];

  [animation setAdditive:1];
  [animation setMass:2.0];
  [animation setStiffness:350.0];
  [animation setDamping:25.0];
  [animation setDuration:0.8];
  [animation setBeginTime:CACurrentMediaTime() + delay];
  [animation setFillMode:*MEMORY[0x1E69797E0]];
  [animation setRemovedOnCompletion:0];

  return animation;
}

- (void)setCircleImage:(id)image
{
  [(UIImageView *)self->_circleImageView setImage:image];

  [(_SFDownloadsIconView *)self setNeedsLayout];
}

- (void)_updateSuppressesPixelAlignment
{
  pulsing = 1;
  if (!self->_suppressesPixelAlignment)
  {
    pulsing = self->_pulsing;
  }

  layer = [(UIImageView *)self->_circleImageView layer];
  [layer setContentsAlignsToPixels:!pulsing];

  layer2 = [(UIImageView *)self->_circleImageView layer];
  [layer2 setAllowsEdgeAntialiasing:pulsing];

  layer3 = [(UIImageView *)self->_arrowImageView layer];
  [layer3 setContentsAlignsToPixels:!pulsing];

  layer4 = [(UIImageView *)self->_arrowImageView layer];
  [layer4 setAllowsEdgeAntialiasing:pulsing];
}

@end