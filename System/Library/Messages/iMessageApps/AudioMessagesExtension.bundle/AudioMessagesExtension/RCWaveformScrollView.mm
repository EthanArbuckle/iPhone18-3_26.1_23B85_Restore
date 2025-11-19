@interface RCWaveformScrollView
- (CGPoint)contentOffsetInPresentationLayer:(BOOL)a3;
- (CGRect)convertRect:(CGRect)a3 fromView:(id)a4 usingCurrentAnimatedPosition:(BOOL)a5;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
@end

@implementation RCWaveformScrollView

- (void)setContentOffset:(CGPoint)a3
{
  if (!self->_ignoreContentOffsetChangesCount)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = RCWaveformScrollView;
    [(RCWaveformScrollView *)&v5 setContentOffset:a3.x, a3.y];
  }
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  if (!self->_ignoreContentOffsetChangesCount)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = RCWaveformScrollView;
    [(RCWaveformScrollView *)&v6 setContentOffset:a4 animated:a3.x, a3.y];
  }
}

- (CGPoint)contentOffsetInPresentationLayer:(BOOL)a3
{
  if (a3)
  {
    v4 = [(RCWaveformScrollView *)self layer];
    v5 = [v4 presentationLayer];

    if (v5)
    {
      [v5 bounds];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = RCWaveformScrollView;
      [(RCWaveformScrollView *)&v14 contentOffset];
    }

    v9 = v6;
    v11 = v7;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = RCWaveformScrollView;
    [(RCWaveformScrollView *)&v15 contentOffset];
    v9 = v8;
    v11 = v10;
  }

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromView:(id)a4 usingCurrentAnimatedPosition:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  if (a5)
  {
    v12 = [(RCWaveformScrollView *)self layer];
    v13 = [v12 presentationLayer];

    v14 = [v13 animationKeys];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [v11 layer];
      [v13 convertRect:v16 fromLayer:{x, y, width, height}];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
    }

    else
    {
      v37.receiver = self;
      v37.super_class = RCWaveformScrollView;
      [(RCWaveformScrollView *)&v37 convertRect:v11 fromView:x, y, width, height];
      v18 = v29;
      v20 = v30;
      v22 = v31;
      v24 = v32;
    }
  }

  else
  {
    v38.receiver = self;
    v38.super_class = RCWaveformScrollView;
    [(RCWaveformScrollView *)&v38 convertRect:v11 fromView:x, y, width, height];
    v18 = v25;
    v20 = v26;
    v22 = v27;
    v24 = v28;
  }

  v33 = v18;
  v34 = v20;
  v35 = v22;
  v36 = v24;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

@end