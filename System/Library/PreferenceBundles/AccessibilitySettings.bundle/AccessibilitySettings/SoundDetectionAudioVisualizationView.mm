@interface SoundDetectionAudioVisualizationView
- (SoundDetectionAudioVisualizationView)initWithPipCount:(int)a3;
- (void)setTintColor:(id)a3;
- (void)updateWithMagnitudes:(id)a3;
- (void)zeroOut;
@end

@implementation SoundDetectionAudioVisualizationView

- (SoundDetectionAudioVisualizationView)initWithPipCount:(int)a3
{
  v3 = *&a3;
  v16.receiver = self;
  v16.super_class = SoundDetectionAudioVisualizationView;
  v4 = [(SoundDetectionAudioVisualizationView *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(SoundDetectionAudioVisualizationView *)v4 setPipCount:v3];
    v6 = +[NSMutableArray array];
    if (v3 >= 1)
    {
      do
      {
        v7 = objc_alloc_init(CAShapeLayer);
        v8 = +[UIColor systemBlueColor];
        [v7 setFillColor:{objc_msgSend(v8, "CGColor")}];

        v9 = [(SoundDetectionAudioVisualizationView *)v5 layer];
        [v9 addSublayer:v7];

        [v6 addObject:v7];
        LODWORD(v3) = v3 - 1;
      }

      while (v3);
    }

    [(SoundDetectionAudioVisualizationView *)v5 setLevels:v6];
    v10 = objc_alloc_init(CAShapeLayer);
    baseLine = v5->_baseLine;
    v5->_baseLine = v10;

    v12 = v5->_baseLine;
    v13 = +[UIColor systemLightGrayColor];
    -[CAShapeLayer setFillColor:](v12, "setFillColor:", [v13 CGColor]);

    v14 = [(SoundDetectionAudioVisualizationView *)v5 layer];
    [v14 addSublayer:v5->_baseLine];
  }

  return v5;
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SoundDetectionAudioVisualizationView;
  [(SoundDetectionAudioVisualizationView *)&v19 setTintColor:v4];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SoundDetectionAudioVisualizationView *)self layer];
  v6 = [v5 sublayers];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v15 + 1) + 8 * v10) setFillColor:{objc_msgSend(v4, "CGColor")}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = [(SoundDetectionAudioVisualizationView *)self layer];
  v12 = [v11 sublayers];
  v13 = [v12 lastObject];
  v14 = +[UIColor systemLightGrayColor];
  [v13 setFillColor:{objc_msgSend(v14, "CGColor")}];
}

- (void)updateWithMagnitudes:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockOnMainThread();
}

void __61__SoundDetectionAudioVisualizationView_updateWithMagnitudes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pipCount];
  [*(a1 + 32) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 + [*(a1 + 32) pipCount] * -2.0;
  v12 = [*(a1 + 32) pipCount];
  if (v12 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 / (v13 - 1);
  [*(a1 + 32) bounds];
  v16 = v15 * 0.5;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v17 = (CGRectGetWidth(v26) + v2 * -2.0 - v14 * (v2 - 1)) * 0.5;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __61__SoundDetectionAudioVisualizationView_updateWithMagnitudes___block_invoke_2;
  v19[3] = &unk_2591F0;
  v18 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v18;
  v21 = v10;
  v22 = v17;
  v23 = 0x4000000000000000;
  v24 = v14;
  v25 = v16;
  [UIView _animateWithFrictionBounceAnimations:v19 completion:0];
}

void __61__SoundDetectionAudioVisualizationView_updateWithMagnitudes___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) levels];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __61__SoundDetectionAudioVisualizationView_updateWithMagnitudes___block_invoke_3;
  v4[3] = &unk_2591C8;
  v5 = *(a1 + 40);
  v3 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 80);
  [v2 enumerateObjectsUsingBlock:v4];
}

void __61__SoundDetectionAudioVisualizationView_updateWithMagnitudes___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 count];
  if (v7 <= a3)
  {
    v10 = &off_27D250;
  }

  else
  {
    v8 = v7;
    if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
    {
      v9 = v8 + ~a3;
    }

    else
    {
      v9 = a3;
    }

    v10 = [*(a1 + 32) objectAtIndex:v9];
  }

  v11 = *(a1 + 40);
  v12 = floor(v11 / 20.0);
  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v18 = v10;
  [v10 floatValue];
  v15 = v13 + v11 * v14;
  if (v11 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  v17 = [UIBezierPath bezierPathWithRoundedRect:*(a1 + 48) + a3 * *(a1 + 56) + a3 * *(a1 + 64) cornerRadius:*(a1 + 72) + v16 * -0.5, *(a1 + 56), v16, fmax(*(a1 + 56), 1.5)];
  [v6 setPath:{objc_msgSend(v17, "CGPath")}];
}

- (void)zeroOut
{
  v4 = objc_opt_new();
  if ([(SoundDetectionAudioVisualizationView *)self pipCount]>= 1)
  {
    v3 = 0;
    do
    {
      [v4 addObject:&off_27B5E0];
      ++v3;
    }

    while (v3 < [(SoundDetectionAudioVisualizationView *)self pipCount]);
  }

  [(SoundDetectionAudioVisualizationView *)self updateWithMagnitudes:v4];
}

@end