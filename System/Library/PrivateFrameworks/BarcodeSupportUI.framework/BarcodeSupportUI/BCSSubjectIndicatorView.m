@interface BCSSubjectIndicatorView
+ (CGSize)_fixedSubjectIndicatorSizeForReferenceBounds:(CGSize)a3;
- (BCSSubjectIndicatorView)initWithFrame:(CGRect)a3;
- (BOOL)isBouncing;
- (BOOL)isInactive;
- (BOOL)isPulsing;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setBouncing:(BOOL)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setPulsing:(BOOL)a3;
- (void)startScalingWithExpansionWidth:(double)a3 duration:(double)a4 repeatCount:(unint64_t)a5 timingFunction:(id)a6;
- (void)stopScalingWithDuration:(double)a3;
@end

@implementation BCSSubjectIndicatorView

- (BCSSubjectIndicatorView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = BCSSubjectIndicatorView;
  v3 = [(BCSSubjectIndicatorView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = [(BCSSubjectIndicatorView *)self _imageView];
  v3 = [v2 isHighlighted];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 _referenceBounds];
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
  v11 = [(BCSSubjectIndicatorView *)self _imageView];
  [v11 setBounds:{x + -3.0, y + -3.0, width + 6.0, height + 6.0}];
  [v11 setCenter:{v8, v10}];
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v7 = [(BCSSubjectIndicatorView *)self _imageView];
  v8 = [(BCSSubjectIndicatorView *)self layer];
  v9 = [v7 layer];
  v10 = [v8 animationForKey:@"opacity"];

  v11 = [v9 animationForKey:@"transform"];

  [(BCSSubjectIndicatorView *)self alpha];
  if (v5)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  if (v5 && !a4)
  {
    [v8 removeAnimationForKey:@"opacity"];
    [v9 removeAnimationForKey:@"transform"];
LABEL_7:
    [(BCSSubjectIndicatorView *)self setAlpha:v13];
    goto LABEL_16;
  }

  if (v12 == v13)
  {
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  if (v5)
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
    v23 = v9;
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
      [v7 setTransform:&v20];
    }

    v16 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__BCSSubjectIndicatorView_setHidden_animated___block_invoke_3;
    v17[3] = &unk_278D01FD8;
    v17[4] = self;
    v19 = (v11 | v10) == 0;
    v18 = v7;
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

- (void)startScalingWithExpansionWidth:(double)a3 duration:(double)a4 repeatCount:(unint64_t)a5 timingFunction:(id)a6
{
  v26[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [(BCSSubjectIndicatorView *)self _imageView];
  v12 = [v11 layer];
  v13 = [v12 animationForKey:@"transform"];

  if (!v13)
  {
    [(BCSSubjectIndicatorView *)self bounds];
    if (v14 != 0.0)
    {
      v15 = v14;
      if (!v10)
      {
        v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
      }

      v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
      [v16 setTimingFunction:v10];
      [v16 setDuration:a4];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15 / (v15 + a3 * 2.0)];
      v26[0] = v17;
      v26[1] = &unk_2853A10D8;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      [v16 setValues:v18];

      *&v19 = a5;
      [v16 setRepeatCount:v19];
      [v16 setAutoreverses:1];
      [v12 addAnimation:v16 forKey:@"transform"];
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
      [v12 setTransform:v25];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stopScalingWithDuration:(double)a3
{
  v4 = [(BCSSubjectIndicatorView *)self _imageView];
  v5 = [v4 layer];

  v6 = MEMORY[0x277CD9DE8];
  if (a3 > 0.0)
  {
    v7 = [v5 presentationLayer];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
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
    [v11 setDuration:a3];
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

    [v5 addAnimation:v11 forKey:@"stopScalingAnimation"];
  }

  [v5 removeAnimationForKey:@"transform"];
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
  [v5 setTransform:&v31];
}

- (BOOL)isPulsing
{
  v2 = [(BCSSubjectIndicatorView *)self _imageView];
  v3 = [v2 layer];
  v4 = [v3 animationForKey:@"opacity"];
  v5 = v4 != 0;

  return v5;
}

- (void)setPulsing:(BOOL)a3
{
  v3 = a3;
  if ([(BCSSubjectIndicatorView *)self isPulsing]!= a3)
  {
    v5 = [(BCSSubjectIndicatorView *)self _imageView];
    v6 = [v5 layer];
    v7 = v6;
    if (v3)
    {
      [v5 setAlpha:1.0];
      v8 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __38__BCSSubjectIndicatorView_setPulsing___block_invoke;
      v9[3] = &unk_278D01AE0;
      v10 = v5;
      [v8 animateWithDuration:30 delay:v9 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      [v6 removeAnimationForKey:@"opacity"];
      [v5 setAlpha:1.0];
    }
  }
}

+ (CGSize)_fixedSubjectIndicatorSizeForReferenceBounds:(CGSize)a3
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
  v2 = [(BCSSubjectIndicatorView *)self _imageView];
  v3 = [v2 layer];
  v4 = [v3 animationForKey:@"transform"];
  v5 = v4 != 0;

  return v5;
}

- (void)setBouncing:(BOOL)a3
{
  v3 = a3;
  if ([(BCSSubjectIndicatorView *)self isBouncing]!= a3)
  {
    if (v3)
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