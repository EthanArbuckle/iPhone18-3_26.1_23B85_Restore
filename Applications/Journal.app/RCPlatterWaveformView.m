@interface RCPlatterWaveformView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_sliceTimeRangeForIndex:(int64_t)a3 sliceDuration:(double)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)currentTimeWindow;
- ($F24F406B2B787EFB06265DBA3D28CBD5)sliceTimeRangeForIndex:(int64_t)a3;
- (CGRect)_activeSliceFrame;
- (CGRect)_inactiveSliceFrame;
- (CGRect)_leadingRoundedFrame;
- (CGRect)_trailingRoundedFrame;
- (CGRect)frameForSlice:(id)a3 sliceType:(int64_t)a4 atIndex:(int64_t)a5;
- (CGSize)intrinsicContentSize;
- (RCPlatterWaveformView)initWithFrame:(CGRect)a3 dataProvider:(id)a4;
- (double)_heightForAmplitude:(double)a3;
- (double)_maxHeightForSliceAtIndex:(int64_t)a3 sliceType:(int64_t)a4;
- (double)_roundedSliceWidthPerSide;
- (double)heightForSlice:(id)a3 sliceType:(int64_t)a4 atIndex:(int64_t)a5;
- (double)slicePadding;
- (double)sliceWidth;
- (double)timeWindow;
- (double)xPositionForSliceAtIndex:(int64_t)a3;
- (id)accessibilityLabel;
- (id)sliceWithType:(int64_t)a3;
- (int64_t)indexForSliceStartTime:(double)a3;
- (unint64_t)numberOfInactiveSlices;
- (void)_resetActiveSlicesWithIndex:(int64_t)a3;
- (void)_setupViews;
- (void)_updateAmplitudes;
- (void)_updateSliceColors;
- (void)appendSliceWithType:(int64_t)a3;
- (void)enumerateAllSlices:(id)a3;
- (void)layoutSubviews;
- (void)removeSliceWithType:(int64_t)a3;
- (void)setSliceColor:(id)a3;
- (void)updateActiveSlicesForTimeRange:(id)a3;
- (void)updateFrameForSlice:(id)a3 sliceType:(int64_t)a4 atIndex:(int64_t)a5;
- (void)updateInactiveSlicesForTimeRange:(id)a3 inactiveSliceCount:(unint64_t)a4;
- (void)updateSliceFrames;
- (void)updateSliceFramesForRecordingTime:(double)a3;
- (void)updateSlicesAndFrames;
@end

@implementation RCPlatterWaveformView

- (RCPlatterWaveformView)initWithFrame:(CGRect)a3 dataProvider:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = RCPlatterWaveformView;
  v10 = [(RCPlatterWaveformView *)&v19 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(RCPlatterWaveformView *)v10 setDataProvider:v9];
    v12 = +[RCRecorderStyleProvider sharedStyleProvider];
    v13 = [v12 platterWaveformActiveSliceColor];
    [(RCPlatterWaveformView *)v11 setActiveSliceColor:v13];

    v14 = +[NSMutableArray array];
    [(RCPlatterWaveformView *)v11 setActiveSliceQueue:v14];

    v15 = +[NSMutableArray array];
    [(RCPlatterWaveformView *)v11 setInactiveSliceStack:v15];

    v16 = +[NSMutableArray array];
    [(RCPlatterWaveformView *)v11 setSliceRecyclerStack:v16];

    [(RCPlatterWaveformView *)v11 _setupViews];
    v17 = [(RCPlatterWaveformView *)v11 layer];
    [v17 setAllowsHitTesting:0];
  }

  return v11;
}

- (void)_setupViews
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  sliceViewContainer = self->_sliceViewContainer;
  self->_sliceViewContainer = v3;

  [(RCPlatterWaveformView *)self addSubview:self->_sliceViewContainer];
  [(UIView *)self->_sliceViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(UIView *)self->_sliceViewContainer leadingAnchor];
  v6 = [(RCPlatterWaveformView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(UIView *)self->_sliceViewContainer trailingAnchor];
  v9 = [(RCPlatterWaveformView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(UIView *)self->_sliceViewContainer topAnchor];
  v12 = [(RCPlatterWaveformView *)self topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v16 = [(UIView *)self->_sliceViewContainer bottomAnchor];
  v14 = [(RCPlatterWaveformView *)self bottomAnchor];
  v15 = [v16 constraintEqualToAnchor:v14];
  [v15 setActive:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RCPlatterWaveformView;
  [(RCPlatterWaveformView *)&v3 layoutSubviews];
  [(RCPlatterWaveformView *)self updateSlicesAndFrames];
}

- (void)updateSliceFramesForRecordingTime:(double)a3
{
  v5 = [(RCPlatterWaveformView *)self timeWindow];
  RCTimeRangeMake(v5, v7, a3 - v6, a3);
  [(RCPlatterWaveformView *)self setCurrentTimeWindow:?];

  [(RCPlatterWaveformView *)self updateSliceFrames];
}

- (void)updateSliceFrames
{
  [(RCPlatterWaveformView *)self bounds];
  v4 = v3;
  [(RCPlatterWaveformView *)self bounds];
  if (v4 != 0.0 && v5 != 0.0)
  {

    [(RCPlatterWaveformView *)self updateSlicesAndFrames];
  }
}

- (void)updateSlicesAndFrames
{
  [(RCPlatterWaveformView *)self currentTimeWindow];
  [(RCPlatterWaveformView *)self updateActiveSlicesForTimeRange:?];
  [(RCPlatterWaveformView *)self currentTimeWindow];
  [(RCPlatterWaveformView *)self updateInactiveSlicesForTimeRange:[(RCPlatterWaveformView *)self numberOfInactiveSlices] inactiveSliceCount:v3, v4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E8274;
  v5[3] = &unk_100A559E0;
  v5[4] = self;
  [(RCPlatterWaveformView *)self enumerateAllSlices:v5];
}

- (void)updateActiveSlicesForTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(RCPlatterWaveformView *)self indexForSliceStartTime:?];
  [(RCPlatterWaveformView *)self sliceDuration];
  v8 = ((var1 - var0) / v7);
  if (v6 < self->_indexOfFirstActiveSlice)
  {
    [(RCPlatterWaveformView *)self _resetActiveSlicesWithIndex:v6];
  }

  v9 = [(NSMutableArray *)self->_activeSliceQueue count];
  if (v6 - self->_indexOfFirstActiveSlice >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6 - self->_indexOfFirstActiveSlice;
  }

  v11 = v8 - v9 + v10;
  if (v10 >= 1)
  {
    do
    {
      [(RCPlatterWaveformView *)self removeSliceWithType:0];
      --v10;
    }

    while (v10);
  }

  if (v11 >= 1)
  {
    do
    {
      [(RCPlatterWaveformView *)self appendSliceWithType:0];
      --v11;
    }

    while (v11);
  }

  if ([(NSMutableArray *)self->_activeSliceQueue count]!= v8)
  {
    v12 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1008C1B84(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  self->_indexOfFirstActiveSlice = v6;
  [(RCPlatterWaveformView *)self _updateAmplitudes];
}

- (void)_updateAmplitudes
{
  if (self->_dataProvider)
  {
    v3 = [(NSMutableArray *)self->_activeSliceQueue count]- 1;
    if (v3 < 0)
    {
      return;
    }

    while (1)
    {
      v4 = [(NSMutableArray *)self->_activeSliceQueue objectAtIndexedSubscript:v3];
      if (![v4 amplitudeNeedsUpdate])
      {
        break;
      }

      [(RCPlatterWaveformView *)self sliceTimeRangeForIndex:&v3[self->_indexOfFirstActiveSlice]];
      v13 = 0;
      [(RCWaveformDataProviding *)self->_dataProvider amplitudeForSliceWithTimeRange:&v13 fullTimeRangeSampled:?];
      [v4 setAmplitude:?];
      [v4 setAmplitudeNeedsUpdate:(v13 & 1) == 0];

      if (v3-- <= 0)
      {
        return;
      }
    }
  }

  else
  {
    v4 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1008C1BFC(v4, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)updateInactiveSlicesForTimeRange:(id)a3 inactiveSliceCount:(unint64_t)a4
{
  var1 = a3.var1;
  [(RCPlatterWaveformView *)self sliceDuration];
  v8 = var1 + v7 * a4;
  v9 = [(RCPlatterWaveformView *)self indexForSliceStartTime:var1];
  v10 = [(RCPlatterWaveformView *)self indexForSliceStartTime:v8];
  if (a4)
  {
    v11 = v10 - v9 + 1;
  }

  else
  {
    v11 = 0;
  }

  while ([(NSMutableArray *)self->_inactiveSliceStack count]> v11)
  {
    [(RCPlatterWaveformView *)self removeSliceWithType:1];
  }

  while ([(NSMutableArray *)self->_inactiveSliceStack count]< v11)
  {
    [(RCPlatterWaveformView *)self appendSliceWithType:1];
  }
}

- (void)enumerateAllSlices:(id)a3
{
  v4 = a3;
  indexOfFirstActiveSlice = self->_indexOfFirstActiveSlice;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_activeSliceQueue;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(v4 + 2))(v4, indexOfFirstActiveSlice++, *(*(&v20 + 1) + 8 * v10), 0);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_inactiveSliceStack;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(v4 + 2))(v4, indexOfFirstActiveSlice++, *(*(&v16 + 1) + 8 * v15), 1);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)sliceTimeRangeForIndex:(int64_t)a3
{
  [(RCPlatterWaveformView *)self sliceDuration];

  [(RCPlatterWaveformView *)self _sliceTimeRangeForIndex:a3 sliceDuration:?];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_sliceTimeRangeForIndex:(int64_t)a3 sliceDuration:(double)a4
{
  RCTimeRangeMake(self, a2, a3 * a4, a3 * a4 + a4);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (int64_t)indexForSliceStartTime:(double)a3
{
  [(RCPlatterWaveformView *)self sliceDuration];

  return [(RCPlatterWaveformView *)self _indexForSliceStartTime:a3 sliceDuration:v5];
}

- (void)updateFrameForSlice:(id)a3 sliceType:(int64_t)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  [(RCPlatterWaveformView *)self frameForSlice:v8 sliceType:a4 atIndex:a5];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v8 view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v22 = [v8 view];
  [v22 bounds];
  v19 = v18 * 0.5;
  v20 = [v8 view];

  v21 = [v20 layer];
  [v21 setCornerRadius:v19];
}

- (CGRect)frameForSlice:(id)a3 sliceType:(int64_t)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  [(RCPlatterWaveformView *)self sliceWidth];
  v10 = v9;
  [(RCPlatterWaveformView *)self heightForSlice:v8 sliceType:a4 atIndex:a5];
  v12 = v11;

  [(RCPlatterWaveformView *)self bounds];
  v13 = CGRectGetMidY(v18) + v12 * -0.5;
  [(RCPlatterWaveformView *)self xPositionForSliceAtIndex:a5];
  v15 = v13;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_activeSliceFrame
{
  [(RCPlatterWaveformView *)self sliceWidth];
  v4 = v3;
  [(RCPlatterWaveformView *)self slicePadding];
  v6 = v5;
  v7 = [(RCPlatterWaveformView *)self numberOfSlices];
  v8 = v6 * v7 + v7 * v4;
  [(RCPlatterWaveformView *)self bounds];
  v10 = v9;
  [(RCPlatterWaveformView *)self bounds];
  v12 = v11;
  [(RCPlatterWaveformView *)self bounds];
  v14 = v10;
  v15 = v12;
  v16 = v8;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_inactiveSliceFrame
{
  [(RCPlatterWaveformView *)self _activeSliceFrame];
  MaxX = CGRectGetMaxX(v12);
  [(RCPlatterWaveformView *)self bounds];
  v5 = v4 - MaxX;
  [(RCPlatterWaveformView *)self bounds];
  v7 = v6;
  [(RCPlatterWaveformView *)self bounds];
  v9 = MaxX;
  v10 = v7;
  v11 = v5;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)xPositionForSliceAtIndex:(int64_t)a3
{
  [(RCPlatterWaveformView *)self sliceWidth];
  v6 = v5;
  [(RCPlatterWaveformView *)self slicePadding];
  v8 = v7;
  [(RCPlatterWaveformView *)self sliceDuration];
  v10 = v9;
  [(RCPlatterWaveformView *)self currentTimeWindow];

  [(RCPlatterWaveformView *)self _xPositionForSliceAtIndex:a3 sliceWidth:v6 slicePadding:v8 sliceDuration:v10 inTimeWindow:v11, v12];
  return result;
}

- (double)heightForSlice:(id)a3 sliceType:(int64_t)a4 atIndex:(int64_t)a5
{
  [a3 amplitude];
  [(RCPlatterWaveformView *)self _heightForAmplitude:?];
  v9 = v8;
  [(RCPlatterWaveformView *)self _maxHeightForSliceAtIndex:a5 sliceType:a4];
  if (v9 < result)
  {
    return v9;
  }

  return result;
}

- (double)_heightForAmplitude:(double)a3
{
  [(RCPlatterWaveformView *)self maximumSliceHeight];
  v6 = v5;
  [(RCPlatterWaveformView *)self minimumSliceHeight];
  return v7 + a3 * (v6 - v7);
}

- (double)_maxHeightForSliceAtIndex:(int64_t)a3 sliceType:(int64_t)a4
{
  [(RCPlatterWaveformView *)self maximumSliceHeight];
  v8 = v7;
  if (a4 != 1)
  {
    [(RCPlatterWaveformView *)self _leadingRoundedFrame];
    v10 = v9;
    v12 = v11;
    v39 = v8;
    rect = v13;
    v15 = v14;
    [(RCPlatterWaveformView *)self _trailingRoundedFrame];
    v17 = v16;
    v19 = v18;
    v38 = v20;
    v22 = v21;
    [(RCPlatterWaveformView *)self xPositionForSliceAtIndex:a3];
    v24 = v23;
    [(RCPlatterWaveformView *)self sliceWidth];
    v26 = v24 + v25;
    v36 = v12;
    v37 = v10;
    v41.origin.x = v10;
    v41.origin.y = v12;
    v27 = v15;
    v8 = v39;
    v41.size.height = rect;
    v41.size.width = v27;
    MaxX = CGRectGetMaxX(v41);
    v35 = v17;
    v42.origin.x = v17;
    v42.origin.y = v19;
    v42.size.width = v38;
    v42.size.height = v22;
    MinX = CGRectGetMinX(v42);
    if (v26 <= MaxX || v24 >= MinX)
    {
      if (v26 > MaxX)
      {
        v31 = 0.0;
        if (v24 >= MinX)
        {
          v44.origin.y = v19;
          v44.origin.x = v35;
          v44.size.width = v38;
          v44.size.height = v22;
          v31 = CGRectGetMaxX(v44) - v26;
        }
      }

      else
      {
        v43.origin.y = v36;
        v43.origin.x = v37;
        v43.size.width = v27;
        v43.size.height = rect;
        v31 = v24 - CGRectGetMinX(v43);
      }

      [(RCPlatterWaveformView *)self _roundedSliceWidthPerSide];
      v33 = fmin(v31 / v32, 1.0);
      if (v33 < 0.0)
      {
        v33 = 0.0;
      }

      return v39 * sqrt(1.0 - (1.0 - v33) * (1.0 - v33));
    }
  }

  return v8;
}

- (double)_roundedSliceWidthPerSide
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 platterWaveformPercentageOfRoundedSlices];
  v5 = v4;
  [v3 platterWaveformMinimumRoundedSliceWidthPerSide];
  v7 = v6;
  [(RCPlatterWaveformView *)self _activeSliceFrame];
  if (v7 >= v5 * v8 * 0.5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5 * v8 * 0.5;
  }

  return v9;
}

- (CGRect)_leadingRoundedFrame
{
  [(RCPlatterWaveformView *)self _activeSliceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(RCPlatterWaveformView *)self _roundedSliceWidthPerSide];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_trailingRoundedFrame
{
  [(RCPlatterWaveformView *)self _activeSliceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(RCPlatterWaveformView *)self _roundedSliceWidthPerSide];
  v12 = v11;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v13 = CGRectGetMaxX(v17) - v12;
  v14 = v6;
  v15 = v12;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)appendSliceWithType:(int64_t)a3
{
  v5 = &OBJC_IVAR___RCPlatterWaveformView__inactiveSliceStack;
  if (!a3)
  {
    v5 = &OBJC_IVAR___RCPlatterWaveformView__activeSliceQueue;
  }

  v6 = *(&self->super.super.super.isa + *v5);
  v9 = [(RCPlatterWaveformView *)self sliceWithType:a3];
  [v6 addObject:v9];

  v7 = [(RCPlatterWaveformView *)self sliceViewContainer];
  v8 = [v9 view];
  [v7 addSubview:v8];
}

- (void)_resetActiveSlicesWithIndex:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_activeSliceQueue count];
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      [(RCPlatterWaveformView *)self removeSliceWithType:0];
      --v6;
    }

    while (v6);
  }

  self->_indexOfFirstActiveSlice = a3;
}

- (void)removeSliceWithType:(int64_t)a3
{
  if (a3 == 1)
  {
    v7 = [(NSMutableArray *)self->_inactiveSliceStack lastObject];
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v8 = [v7 view];
    [v8 removeFromSuperview];

    [(NSMutableArray *)self->_inactiveSliceStack removeLastObject];
  }

  else
  {
    if (a3)
    {
      v5 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1008C1C74(v5);
      }

      goto LABEL_10;
    }

    v4 = [(NSMutableArray *)self->_activeSliceQueue firstObject];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = [v4 view];
    [v6 removeFromSuperview];

    [(NSMutableArray *)self->_activeSliceQueue removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_sliceRecyclerStack addObject:v5];
LABEL_10:
}

- (id)sliceWithType:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_sliceRecyclerStack lastObject];
  if (v5)
  {
    v6 = v5;
    [(NSMutableArray *)self->_sliceRecyclerStack removeLastObject];
  }

  else
  {
    v6 = objc_alloc_init(RCPlatterWaveformSlice);
  }

  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = v7;
  if (a3)
  {
    [v7 platterWaveformInactiveSliceColor];
  }

  else
  {
    [(RCPlatterWaveformView *)self activeSliceColor];
  }
  v9 = ;
  v10 = [(RCPlatterWaveformSlice *)v6 view];
  [v10 setBackgroundColor:v9];

  [(RCPlatterWaveformSlice *)v6 setAmplitudeNeedsUpdate:a3 == 0];
  [(RCPlatterWaveformSlice *)v6 setAmplitude:0.0];

  return v6;
}

- (unint64_t)numberOfInactiveSlices
{
  [(RCPlatterWaveformView *)self _inactiveSliceFrame];
  v4 = v3;
  [(RCPlatterWaveformView *)self sliceWidth];
  v6 = v5;
  [(RCPlatterWaveformView *)self slicePadding];
  return (v4 / (v6 + v7));
}

- (void)setSliceColor:(id)a3
{
  [(RCPlatterWaveformView *)self setActiveSliceColor:a3];

  [(RCPlatterWaveformView *)self _updateSliceColors];
}

- (void)_updateSliceColors
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_activeSliceQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(RCPlatterWaveformView *)self activeSliceColor];
        v10 = [v8 view];
        [v10 setBackgroundColor:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (double)timeWindow
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 activityWaveformTimeWindowDuration];
  v4 = v3;

  return v4;
}

- (double)sliceWidth
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 platterWaveformSliceWidth];
  v4 = v3;

  return v4;
}

- (double)slicePadding
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 platterWaveformSlicePadding];
  v4 = v3;

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(RCPlatterWaveformView *)self numberOfSlices];
  [(RCPlatterWaveformView *)self sliceWidth];
  v5 = v4;
  [(RCPlatterWaveformView *)self slicePadding];
  v7 = (v3 + -1.0) * v6 + v3 * v5;
  v8 = UIViewNoIntrinsicMetric;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)accessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AX_WAVEFORM" value:&stru_100A84E00 table:0];

  return v3;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)currentTimeWindow
{
  beginTime = self->_currentTimeWindow.beginTime;
  endTime = self->_currentTimeWindow.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end