@interface BCSSubjectIndicatorView
+ (CGSize)_fixedSubjectIndicatorSizeForReferenceBounds:(CGSize)bounds;
- (BCSSubjectIndicatorView)initWithFrame:(CGRect)frame;
- (BOOL)isBouncing;
- (BOOL)isInactive;
- (BOOL)isPulsing;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setBouncing:(BOOL)bouncing;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setPulsing:(BOOL)pulsing;
- (void)startScalingWithExpansionWidth:(double)width duration:(double)duration repeatCount:(unint64_t)count timingFunction:(id)function;
- (void)stopScalingWithDuration:(double)duration;
@end

@implementation BCSSubjectIndicatorView

- (BCSSubjectIndicatorView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = BCSSubjectIndicatorView;
  v3 = [(BCSSubjectIndicatorView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"FocusIndicator" inBundle:v5];

    [v6 size];
    v9 = [v6 resizableImageWithCapInsets:1 resizingMode:{v7 * 0.5, v8 * 0.5, v7 * 0.5, v8 * 0.5}];

    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
    imageView = v3->__imageView;
    v3->__imageView = v10;

    [(BCSSubjectIndicatorView *)v3 addSubview:v3->__imageView];
    v12 = v3;
  }

  return v3;
}

- (BOOL)isInactive
{
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  isHighlighted = [_imageView isHighlighted];

  return isHighlighted;
}

- (CGSize)intrinsicContentSize
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v4 = v3;
  v6 = v5;

  [objc_opt_class() _fixedSubjectIndicatorSizeForReferenceBounds:{v4, v6}];
  v8 = v7 + -3.0 + -3.0;
  v10 = v9 + -3.0 + -3.0;
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = BCSSubjectIndicatorView;
  [(BCSSubjectIndicatorView *)&v12 layoutSubviews];
  [(BCSSubjectIndicatorView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  CGRectGetMidX(v13);
  UIRoundToViewScale();
  v8 = v7;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMidY(v14);
  UIRoundToViewScale();
  v10 = v9;
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  [_imageView setBounds:{x + -3.0, y + -3.0, width + 6.0, height + 6.0}];
  [_imageView setCenter:{v8, v10}];
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  layer = [(BCSSubjectIndicatorView *)self layer];
  layer2 = [_imageView layer];
  v10 = [layer animationForKey:@"opacity"];

  v11 = [layer2 animationForKey:@"transform"];

  [(BCSSubjectIndicatorView *)self alpha];
  if (hiddenCopy)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  if (hiddenCopy && !animated)
  {
    [layer removeAnimationForKey:@"opacity"];
    [layer2 removeAnimationForKey:@"transform"];
LABEL_7:
    [(BCSSubjectIndicatorView *)self setAlpha:v13];
    goto LABEL_16;
  }

  if (v12 == v13)
  {
    goto LABEL_16;
  }

  if (!animated)
  {
    goto LABEL_7;
  }

  if (hiddenCopy)
  {
    v14 = MEMORY[0x277D75D18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __46__BCSSubjectIndicatorView_setHidden_animated___block_invoke;
    v24[3] = &unk_278D01E48;
    v24[4] = self;
    v24[5] = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__BCSSubjectIndicatorView_setHidden_animated___block_invoke_2;
    v22[3] = &unk_278D01C40;
    v22[4] = self;
    v23 = layer2;
    [v14 animateWithDuration:6 delay:v24 options:v22 animations:0.25 completion:0.0];
    v15 = v23;
  }

  else
  {
    if (!(v11 | v10))
    {
      [(BCSSubjectIndicatorView *)self layoutIfNeeded];
      memset(&v21, 0, sizeof(v21));
      CGAffineTransformMakeScale(&v21, 1.22279793, 1.22279793);
      v20 = v21;
      [_imageView setTransform:&v20];
    }

    v16 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__BCSSubjectIndicatorView_setHidden_animated___block_invoke_3;
    v17[3] = &unk_278D01FD8;
    v17[4] = self;
    v19 = (v11 | v10) == 0;
    v18 = _imageView;
    [v16 animateWithDuration:131078 delay:v17 options:0 animations:0.233333333 completion:0.0];
    v15 = v18;
  }

LABEL_16:
}

void __46__BCSSubjectIndicatorView_setHidden_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) alpha];
  v3 = v2;
  v4 = [*(a1 + 40) animationForKey:@"transform"];

  if (v3 == 0.0 && v4 != 0)
  {
    v6 = *(a1 + 40);

    [v6 removeAnimationForKey:@"transform"];
  }
}

uint64_t __46__BCSSubjectIndicatorView_setHidden_animated___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v5[0] = *MEMORY[0x277CBF2C0];
    v5[1] = v4;
    v5[2] = *(MEMORY[0x277CBF2C0] + 32);
    return [v3 setTransform:v5];
  }

  return result;
}

- (void)startScalingWithExpansionWidth:(double)width duration:(double)duration repeatCount:(unint64_t)count timingFunction:(id)function
{
  v26[2] = *MEMORY[0x277D85DE8];
  functionCopy = function;
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  layer = [_imageView layer];
  v13 = [layer animationForKey:@"transform"];

  if (!v13)
  {
    [(BCSSubjectIndicatorView *)self bounds];
    if (v14 != 0.0)
    {
      v15 = v14;
      if (!functionCopy)
      {
        functionCopy = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
      }

      v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
      [v16 setTimingFunction:functionCopy];
      [v16 setDuration:duration];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15 / (v15 + width * 2.0)];
      v26[0] = v17;
      v26[1] = &unk_2853A10D8;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      [v16 setValues:v18];

      *&v19 = count;
      [v16 setRepeatCount:v19];
      [v16 setAutoreverses:1];
      [layer addAnimation:v16 forKey:@"transform"];
      v20 = *(MEMORY[0x277CD9DE8] + 80);
      v25[4] = *(MEMORY[0x277CD9DE8] + 64);
      v25[5] = v20;
      v21 = *(MEMORY[0x277CD9DE8] + 112);
      v25[6] = *(MEMORY[0x277CD9DE8] + 96);
      v25[7] = v21;
      v22 = *(MEMORY[0x277CD9DE8] + 16);
      v25[0] = *MEMORY[0x277CD9DE8];
      v25[1] = v22;
      v23 = *(MEMORY[0x277CD9DE8] + 48);
      v25[2] = *(MEMORY[0x277CD9DE8] + 32);
      v25[3] = v23;
      [layer setTransform:v25];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stopScalingWithDuration:(double)duration
{
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  layer = [_imageView layer];

  v6 = MEMORY[0x277CD9DE8];
  if (duration > 0.0)
  {
    presentationLayer = [layer presentationLayer];
    v8 = presentationLayer;
    if (presentationLayer)
    {
      v9 = presentationLayer;
    }

    else
    {
      v9 = layer;
    }

    v10 = v9;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    if (v10)
    {
      [v10 transform];
    }

    v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    [v11 setDuration:duration];
    v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [v11 setTimingFunction:v12];

    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v13 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v23];
    [v11 setFromValue:v13];

    v14 = v6[5];
    v27 = v6[4];
    v28 = v14;
    v15 = v6[7];
    v29 = v6[6];
    v30 = v15;
    v16 = v6[1];
    v23 = *v6;
    v24 = v16;
    v17 = v6[3];
    v25 = v6[2];
    v26 = v17;
    v18 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v23];
    [v11 setToValue:v18];

    [layer addAnimation:v11 forKey:@"stopScalingAnimation"];
  }

  [layer removeAnimationForKey:@"transform"];
  v19 = v6[5];
  v35 = v6[4];
  v36 = v19;
  v20 = v6[7];
  v37 = v6[6];
  v38 = v20;
  v21 = v6[1];
  v31 = *v6;
  v32 = v21;
  v22 = v6[3];
  v33 = v6[2];
  v34 = v22;
  [layer setTransform:&v31];
}

- (BOOL)isPulsing
{
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  layer = [_imageView layer];
  v4 = [layer animationForKey:@"opacity"];
  v5 = v4 != 0;

  return v5;
}

- (void)setPulsing:(BOOL)pulsing
{
  pulsingCopy = pulsing;
  if ([(BCSSubjectIndicatorView *)self isPulsing]!= pulsing)
  {
    _imageView = [(BCSSubjectIndicatorView *)self _imageView];
    layer = [_imageView layer];
    v7 = layer;
    if (pulsingCopy)
    {
      [_imageView setAlpha:1.0];
      v8 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __38__BCSSubjectIndicatorView_setPulsing___block_invoke;
      v9[3] = &unk_278D01AE0;
      v10 = _imageView;
      [v8 animateWithDuration:30 delay:v9 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      [layer removeAnimationForKey:@"opacity"];
      [_imageView setAlpha:1.0];
    }
  }
}

+ (CGSize)_fixedSubjectIndicatorSizeForReferenceBounds:(CGSize)bounds
{
  UIRoundToScale();
  v4 = v3;
  UIRoundToScale();
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (BOOL)isBouncing
{
  _imageView = [(BCSSubjectIndicatorView *)self _imageView];
  layer = [_imageView layer];
  v4 = [layer animationForKey:@"transform"];
  v5 = v4 != 0;

  return v5;
}

- (void)setBouncing:(BOOL)bouncing
{
  bouncingCopy = bouncing;
  if ([(BCSSubjectIndicatorView *)self isBouncing]!= bouncing)
  {
    if (bouncingCopy)
    {

      [(BCSSubjectIndicatorView *)self startScalingWithExpansionWidth:-1 duration:10.0 repeatCount:0.5];
    }

    else
    {

      [(BCSSubjectIndicatorView *)self stopScalingWithDuration:0.0];
    }
  }
}

@end