@interface RCWaveformScrollView
- (CGPoint)contentOffsetInPresentationLayer:(BOOL)layer;
- (CGRect)convertRect:(CGRect)rect fromView:(id)view usingCurrentAnimatedPosition:(BOOL)position;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
@end

@implementation RCWaveformScrollView

- (void)setContentOffset:(CGPoint)offset
{
  if (!self->_ignoreContentOffsetChangesCount)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = RCWaveformScrollView;
    [(RCWaveformScrollView *)&v5 setContentOffset:offset.x, offset.y];
  }
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  if (!self->_ignoreContentOffsetChangesCount)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = RCWaveformScrollView;
    [(RCWaveformScrollView *)&v6 setContentOffset:animated animated:offset.x, offset.y];
  }
}

- (CGPoint)contentOffsetInPresentationLayer:(BOOL)layer
{
  if (layer)
  {
    layer = [(RCWaveformScrollView *)self layer];
    presentationLayer = [layer presentationLayer];

    if (presentationLayer)
    {
      [presentationLayer bounds];
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

- (CGRect)convertRect:(CGRect)rect fromView:(id)view usingCurrentAnimatedPosition:(BOOL)position
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  if (position)
  {
    layer = [(RCWaveformScrollView *)self layer];
    presentationLayer = [layer presentationLayer];

    animationKeys = [presentationLayer animationKeys];
    v15 = [animationKeys count];

    if (v15)
    {
      layer2 = [viewCopy layer];
      [presentationLayer convertRect:layer2 fromLayer:{x, y, width, height}];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
    }

    else
    {
      v37.receiver = self;
      v37.super_class = RCWaveformScrollView;
      [(RCWaveformScrollView *)&v37 convertRect:viewCopy fromView:x, y, width, height];
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
    [(RCWaveformScrollView *)&v38 convertRect:viewCopy fromView:x, y, width, height];
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