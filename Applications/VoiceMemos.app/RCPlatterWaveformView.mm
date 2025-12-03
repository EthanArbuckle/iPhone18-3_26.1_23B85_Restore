@interface RCPlatterWaveformView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_sliceTimeRangeForIndex:(int64_t)index sliceDuration:(double)duration;
- ($F24F406B2B787EFB06265DBA3D28CBD5)currentTimeWindow;
- ($F24F406B2B787EFB06265DBA3D28CBD5)sliceTimeRangeForIndex:(int64_t)index;
- (CGRect)_activeSliceFrame;
- (CGRect)_inactiveSliceFrame;
- (CGRect)_leadingRoundedFrame;
- (CGRect)_trailingRoundedFrame;
- (CGRect)frameForSlice:(id)slice sliceType:(int64_t)type atIndex:(int64_t)index;
- (CGSize)intrinsicContentSize;
- (RCPlatterWaveformView)initWithFrame:(CGRect)frame dataProvider:(id)provider;
- (double)_heightForAmplitude:(double)amplitude;
- (double)_maxHeightForSliceAtIndex:(int64_t)index sliceType:(int64_t)type;
- (double)_roundedSliceWidthPerSide;
- (double)heightForSlice:(id)slice sliceType:(int64_t)type atIndex:(int64_t)index;
- (double)slicePadding;
- (double)sliceWidth;
- (double)timeWindow;
- (double)xPositionForSliceAtIndex:(int64_t)index;
- (id)_defaultActiveSliceColor;
- (id)accessibilityLabel;
- (id)sliceWithType:(int64_t)type;
- (int64_t)indexForSliceStartTime:(double)time;
- (unint64_t)numberOfInactiveSlices;
- (void)_resetActiveSlicesWithIndex:(int64_t)index;
- (void)_setupViews;
- (void)_updateAmplitudes;
- (void)_updateSliceColors;
- (void)appendSliceWithType:(int64_t)type;
- (void)enumerateAllSlices:(id)slices;
- (void)layoutSubviews;
- (void)removeSliceWithType:(int64_t)type;
- (void)resetSliceColor;
- (void)setSliceColor:(id)color;
- (void)updateActiveSlicesForTimeRange:(id)range;
- (void)updateFrameForSlice:(id)slice sliceType:(int64_t)type atIndex:(int64_t)index;
- (void)updateInactiveSlicesForTimeRange:(id)range inactiveSliceCount:(unint64_t)count;
- (void)updateSliceFrames;
- (void)updateSliceFramesForRecordingTime:(double)time;
- (void)updateSlicesAndFrames;
@end

@implementation RCPlatterWaveformView

- (RCPlatterWaveformView)initWithFrame:(CGRect)frame dataProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = RCPlatterWaveformView;
  height = [(RCPlatterWaveformView *)&v18 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(RCPlatterWaveformView *)height setDataProvider:providerCopy];
    _defaultActiveSliceColor = [(RCPlatterWaveformView *)v11 _defaultActiveSliceColor];
    [(RCPlatterWaveformView *)v11 setActiveSliceColor:_defaultActiveSliceColor];

    v13 = +[NSMutableArray array];
    [(RCPlatterWaveformView *)v11 setActiveSliceQueue:v13];

    v14 = +[NSMutableArray array];
    [(RCPlatterWaveformView *)v11 setInactiveSliceStack:v14];

    v15 = +[NSMutableArray array];
    [(RCPlatterWaveformView *)v11 setSliceRecyclerStack:v15];

    [(RCPlatterWaveformView *)v11 _setupViews];
    layer = [(RCPlatterWaveformView *)v11 layer];
    [layer setAllowsHitTesting:0];
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
  leadingAnchor = [(UIView *)self->_sliceViewContainer leadingAnchor];
  leadingAnchor2 = [(RCPlatterWaveformView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 setActive:1];

  trailingAnchor = [(UIView *)self->_sliceViewContainer trailingAnchor];
  trailingAnchor2 = [(RCPlatterWaveformView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v10 setActive:1];

  topAnchor = [(UIView *)self->_sliceViewContainer topAnchor];
  topAnchor2 = [(RCPlatterWaveformView *)self topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  bottomAnchor = [(UIView *)self->_sliceViewContainer bottomAnchor];
  bottomAnchor2 = [(RCPlatterWaveformView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RCPlatterWaveformView;
  [(RCPlatterWaveformView *)&v3 layoutSubviews];
  [(RCPlatterWaveformView *)self updateSlicesAndFrames];
}

- (void)updateSliceFramesForRecordingTime:(double)time
{
  [(RCPlatterWaveformView *)self timeWindow];
  RCTimeRangeMake();
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
  v5[2] = sub_10007B500;
  v5[3] = &unk_10028B760;
  v5[4] = self;
  [(RCPlatterWaveformView *)self enumerateAllSlices:v5];
}

- (void)updateActiveSlicesForTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
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
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8DB0(v12, v13, v14, v15, v16, v17, v18, v19);
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
    v4 = OSLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8E28(v4, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)updateInactiveSlicesForTimeRange:(id)range inactiveSliceCount:(unint64_t)count
{
  var1 = range.var1;
  [(RCPlatterWaveformView *)self sliceDuration];
  v8 = var1 + v7 * count;
  v9 = [(RCPlatterWaveformView *)self indexForSliceStartTime:var1];
  v10 = [(RCPlatterWaveformView *)self indexForSliceStartTime:v8];
  if (count)
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

- (void)enumerateAllSlices:(id)slices
{
  slicesCopy = slices;
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

        (*(slicesCopy + 2))(slicesCopy, indexOfFirstActiveSlice++, *(*(&v20 + 1) + 8 * v10), 0);
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

        (*(slicesCopy + 2))(slicesCopy, indexOfFirstActiveSlice++, *(*(&v16 + 1) + 8 * v15), 1);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)sliceTimeRangeForIndex:(int64_t)index
{
  [(RCPlatterWaveformView *)self sliceDuration];

  [(RCPlatterWaveformView *)self _sliceTimeRangeForIndex:index sliceDuration:?];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_sliceTimeRangeForIndex:(int64_t)index sliceDuration:(double)duration
{
  RCTimeRangeMake();
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (int64_t)indexForSliceStartTime:(double)time
{
  [(RCPlatterWaveformView *)self sliceDuration];

  return [(RCPlatterWaveformView *)self _indexForSliceStartTime:time sliceDuration:v5];
}

- (void)updateFrameForSlice:(id)slice sliceType:(int64_t)type atIndex:(int64_t)index
{
  sliceCopy = slice;
  [(RCPlatterWaveformView *)self frameForSlice:sliceCopy sliceType:type atIndex:index];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view = [sliceCopy view];
  [view setFrame:{v10, v12, v14, v16}];

  view2 = [sliceCopy view];
  [view2 bounds];
  v19 = v18 * 0.5;
  view3 = [sliceCopy view];

  layer = [view3 layer];
  [layer setCornerRadius:v19];
}

- (CGRect)frameForSlice:(id)slice sliceType:(int64_t)type atIndex:(int64_t)index
{
  sliceCopy = slice;
  [(RCPlatterWaveformView *)self sliceWidth];
  v10 = v9;
  [(RCPlatterWaveformView *)self heightForSlice:sliceCopy sliceType:type atIndex:index];
  v12 = v11;

  [(RCPlatterWaveformView *)self bounds];
  v13 = CGRectGetMidY(v18) + v12 * -0.5;
  [(RCPlatterWaveformView *)self xPositionForSliceAtIndex:index];
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
  numberOfSlices = [(RCPlatterWaveformView *)self numberOfSlices];
  v8 = v6 * numberOfSlices + numberOfSlices * v4;
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

- (double)xPositionForSliceAtIndex:(int64_t)index
{
  [(RCPlatterWaveformView *)self sliceWidth];
  v6 = v5;
  [(RCPlatterWaveformView *)self slicePadding];
  v8 = v7;
  [(RCPlatterWaveformView *)self sliceDuration];
  v10 = v9;
  [(RCPlatterWaveformView *)self currentTimeWindow];

  [(RCPlatterWaveformView *)self _xPositionForSliceAtIndex:index sliceWidth:v6 slicePadding:v8 sliceDuration:v10 inTimeWindow:v11, v12];
  return result;
}

- (double)heightForSlice:(id)slice sliceType:(int64_t)type atIndex:(int64_t)index
{
  [slice amplitude];
  [(RCPlatterWaveformView *)self _heightForAmplitude:?];
  v9 = v8;
  [(RCPlatterWaveformView *)self _maxHeightForSliceAtIndex:index sliceType:type];
  if (v9 < result)
  {
    return v9;
  }

  return result;
}

- (double)_heightForAmplitude:(double)amplitude
{
  [(RCPlatterWaveformView *)self maximumSliceHeight];
  v6 = v5;
  [(RCPlatterWaveformView *)self minimumSliceHeight];
  return v7 + amplitude * (v6 - v7);
}

- (double)_maxHeightForSliceAtIndex:(int64_t)index sliceType:(int64_t)type
{
  [(RCPlatterWaveformView *)self maximumSliceHeight];
  v8 = v7;
  if (type != 1)
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
    [(RCPlatterWaveformView *)self xPositionForSliceAtIndex:index];
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

- (void)appendSliceWithType:(int64_t)type
{
  v5 = &OBJC_IVAR___RCPlatterWaveformView__inactiveSliceStack;
  if (!type)
  {
    v5 = &OBJC_IVAR___RCPlatterWaveformView__activeSliceQueue;
  }

  v6 = *(&self->super.super.super.isa + *v5);
  v9 = [(RCPlatterWaveformView *)self sliceWithType:type];
  [v6 addObject:v9];

  sliceViewContainer = [(RCPlatterWaveformView *)self sliceViewContainer];
  view = [v9 view];
  [sliceViewContainer addSubview:view];
}

- (void)_resetActiveSlicesWithIndex:(int64_t)index
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

  self->_indexOfFirstActiveSlice = index;
}

- (void)removeSliceWithType:(int64_t)type
{
  if (type == 1)
  {
    lastObject = [(NSMutableArray *)self->_inactiveSliceStack lastObject];
    if (!lastObject)
    {
      return;
    }

    v5 = lastObject;
    view = [lastObject view];
    [view removeFromSuperview];

    [(NSMutableArray *)self->_inactiveSliceStack removeLastObject];
  }

  else
  {
    if (type)
    {
      v5 = OSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B8EA0(v5);
      }

      goto LABEL_10;
    }

    firstObject = [(NSMutableArray *)self->_activeSliceQueue firstObject];
    if (!firstObject)
    {
      return;
    }

    v5 = firstObject;
    view2 = [firstObject view];
    [view2 removeFromSuperview];

    [(NSMutableArray *)self->_activeSliceQueue removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_sliceRecyclerStack addObject:v5];
LABEL_10:
}

- (id)sliceWithType:(int64_t)type
{
  lastObject = [(NSMutableArray *)self->_sliceRecyclerStack lastObject];
  if (lastObject)
  {
    v6 = lastObject;
    [(NSMutableArray *)self->_sliceRecyclerStack removeLastObject];
  }

  else
  {
    v6 = objc_alloc_init(RCPlatterWaveformSlice);
  }

  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = v7;
  if (type)
  {
    [v7 platterWaveformInactiveSliceColor];
  }

  else
  {
    [(RCPlatterWaveformView *)self activeSliceColor];
  }
  v9 = ;
  view = [(RCPlatterWaveformSlice *)v6 view];
  [view setBackgroundColor:v9];

  [(RCPlatterWaveformSlice *)v6 setAmplitudeNeedsUpdate:type == 0];
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

- (void)setSliceColor:(id)color
{
  [(RCPlatterWaveformView *)self setActiveSliceColor:color];

  [(RCPlatterWaveformView *)self _updateSliceColors];
}

- (id)_defaultActiveSliceColor
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  platterWaveformActiveSliceColor = [v2 platterWaveformActiveSliceColor];

  return platterWaveformActiveSliceColor;
}

- (void)resetSliceColor
{
  _defaultActiveSliceColor = [(RCPlatterWaveformView *)self _defaultActiveSliceColor];
  [(RCPlatterWaveformView *)self setSliceColor:_defaultActiveSliceColor];
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
        activeSliceColor = [(RCPlatterWaveformView *)self activeSliceColor];
        view = [v8 view];
        [view setBackgroundColor:activeSliceColor];

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
  numberOfSlices = [(RCPlatterWaveformView *)self numberOfSlices];
  [(RCPlatterWaveformView *)self sliceWidth];
  v5 = v4;
  [(RCPlatterWaveformView *)self slicePadding];
  v7 = (numberOfSlices + -1.0) * v6 + numberOfSlices * v5;
  v8 = UIViewNoIntrinsicMetric;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)accessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AX_WAVEFORM" value:&stru_100295BB8 table:0];

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