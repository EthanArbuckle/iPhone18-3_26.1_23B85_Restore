@interface RCWaveformSelectionOverlay
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- (BOOL)__shouldDisplayBeginTimeText;
- (BOOL)__shouldDisplayEndTimeText;
- (BOOL)_beginTrackingSelectionBar:(id)bar selectionBarType:(int64_t)type withTouch:(id)touch;
- (BOOL)_shouldDisplayBeginTimeText;
- (BOOL)_shouldDisplayEndTimeText;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_alternateBeginTimeRectWithSizedTextLayer:(id)layer;
- (CGRect)_alternateEndTimeRectWithSizedTextLayer:(id)layer;
- (CGRect)_beginTimeRectWithSizedTextLayer:(id)layer isOffsetForThumb:(BOOL *)thumb;
- (CGRect)_endTimeRectWithSizedTextLayer:(id)layer isOffsetForThumb:(BOOL *)thumb;
- (CGRect)_middleTimeRectWithFont:(id)font;
- (CGRect)_selectionBoundsIncludingKnobs;
- (CGRect)_selectionBoundsIncludingKnobsUsingMultiplier:(double)multiplier;
- (CGRect)_selectionRectForSelectedTimeRange:(id)range;
- (CGRect)selectionRect;
- (RCWaveformSelectionOverlay)initWithDelegate:(id)delegate height:(double)height selectionAreaInsets:(UIEdgeInsets)insets;
- (RCWaveformSelectionOverlayDelegate)delegate;
- (UIView)selectionBackgroundView;
- (double)_xAdjustmentAmount;
- (double)currentTimeIndicatorCoordinate;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_hitSelectionForPoint:(CGPoint)point;
- (id)_touchTrackingInfoForSelectionBarTye:(int64_t)tye;
- (id)accessibilityElements;
- (id)accessibilityValue;
- (int64_t)beginTimeIndicatorSelectionAffinity;
- (int64_t)endTimeIndicatorSelectionAffinity;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityIncreaseValue:(BOOL)value bySegment:(double)segment;
- (void)_clearStaleTouches;
- (void)_clearSublayers;
- (void)_createSublayersIfNeeded;
- (void)_setWantsAnimatedLayoutDuration:(double)duration;
- (void)_updateSelectedTimeRangeForTrackedTouchesAnimated:(BOOL)animated;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)reloadSelectionOffsets;
- (void)setAssetCurrentTime:(double)time;
- (void)setEditingEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setInsertMode:(BOOL)mode;
- (void)setIsRecording:(BOOL)recording;
- (void)setSelectedTimeRange:(id)range withAnimationDuration:(double)duration;
- (void)setSelectionMode:(int64_t)mode;
- (void)setSelectionRect:(CGRect)rect;
- (void)setTrackedAssetCurrentTime:(double)time;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation RCWaveformSelectionOverlay

- (RCWaveformSelectionOverlay)initWithDelegate:(id)delegate height:(double)height selectionAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = RCWaveformSelectionOverlay;
  height = [(RCWaveformSelectionOverlay *)&v22 initWithFrame:0.0, 0.0, 0.0, height];
  v13 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    v13->_selectionAreaInsets.top = top;
    v13->_selectionAreaInsets.left = left;
    v13->_selectionAreaInsets.bottom = bottom;
    v13->_selectionAreaInsets.right = right;
    v13->_selectionRect.origin.x = 0.0;
    v13->_selectionRect.origin.y = 0.0;
    v13->_selectionRect.size.width = 0.0;
    v13->_selectionRect.size.height = 177.0;
    v14 = +[NSMutableDictionary dictionary];
    trackedTouches = v13->_trackedTouches;
    v13->_trackedTouches = v14;

    [(RCWaveformSelectionOverlay *)v13 sizeThatFits:0.0, height];
    v17 = v16;
    v19 = v18;
    [(RCWaveformSelectionOverlay *)v13 setMultipleTouchEnabled:1];
    [(RCWaveformSelectionOverlay *)v13 setFrame:0.0, 0.0, v17, v19];
    [(RCWaveformSelectionOverlay *)v13 setOpaque:0];
    [(RCWaveformSelectionOverlay *)v13 setUserInteractionEnabled:1];
    v20 = +[UIColor clearColor];
    [(RCWaveformSelectionOverlay *)v13 setBackgroundColor:v20];

    [(RCWaveformSelectionOverlay *)v13 setIsRecording:0];
    v13->_trackedAssetCurrentTime = -1.0;
  }

  return v13;
}

- (void)setSelectionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_selectionRect = &self->_selectionRect;
  if (!CGRectEqualToRect(self->_selectionRect, rect))
  {
    if (p_selectionRect->size.height != height)
    {
      [(RCWaveformSelectionOverlay *)self _clearSublayers];
    }

    p_selectionRect->origin.x = x;
    p_selectionRect->origin.y = y;
    p_selectionRect->size.width = width;
    p_selectionRect->size.height = height;

    [(RCWaveformSelectionOverlay *)self setNeedsLayout];
  }
}

- (void)setSelectedTimeRange:(id)range withAnimationDuration:(double)duration
{
  var1 = range.var1;
  var0 = range.var0;
  p_selectedTimeRange = &self->_selectedTimeRange;
  if (!RCTimeRangeEqualToTimeRange(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime, range.var0, range.var1))
  {
    p_selectedTimeRange->beginTime = var0;
    p_selectedTimeRange->endTime = var1;
    [(RCWaveformSelectionOverlay *)self reloadSelectionOffsets];

    [(RCWaveformSelectionOverlay *)self _setWantsAnimatedLayoutDuration:duration];
  }
}

- (void)reloadSelectionOffsets
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformSelectionOverlayGetCurrentTime:self];
  self->_assetCurrentTime = v4;

  if (self->_assetCurrentTime >= 0.0 || self->_trackedAssetCurrentTime >= 0.0 || RCTimeRangeDeltaWithUIPrecision(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime) > 0.00000011920929)
  {
    beginTime = self->_selectedTimeRange.beginTime;
    endTime = self->_selectedTimeRange.endTime;
  }

  else
  {
    RCTimeRangeMake(self->_assetCurrentTime, self->_assetCurrentTime);
  }

  [(RCWaveformSelectionOverlay *)self _selectionRectForSelectedTimeRange:beginTime, endTime];

  [(RCWaveformSelectionOverlay *)self setSelectionRect:?];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(RCWaveformSelectionOverlay *)self frame];
  if (v8 == height)
  {
    v9.receiver = self;
    v9.super_class = RCWaveformSelectionOverlay;
    [(RCWaveformSelectionOverlay *)&v9 setFrame:x, y, width, height];
  }

  else
  {
    [(RCWaveformSelectionOverlay *)self _clearSublayers];
    v10.receiver = self;
    v10.super_class = RCWaveformSelectionOverlay;
    [(RCWaveformSelectionOverlay *)&v10 setFrame:x, y, width, height];
    [(RCWaveformSelectionOverlay *)self reloadSelectionOffsets];
  }

  [(RCWaveformSelectionOverlay *)self setNeedsLayout];
}

- (void)setTrackedAssetCurrentTime:(double)time
{
  if (self->_trackedAssetCurrentTime != time)
  {
    self->_trackedAssetCurrentTime = time;
    [(RCWaveformSelectionOverlay *)self setNeedsLayout];
  }
}

- (void)setAssetCurrentTime:(double)time
{
  if (self->_assetCurrentTime != time)
  {
    self->_assetCurrentTime = time;
    if (self->_trackedAssetCurrentTime < 0.0)
    {
      [(RCWaveformSelectionOverlay *)self setNeedsLayout];
    }
  }
}

- (void)setSelectionMode:(int64_t)mode
{
  if (self->_selectionMode != mode)
  {
    self->_selectionMode = mode;
    [(RCWaveformSelectionOverlay *)self _clearSublayers];

    [(RCWaveformSelectionOverlay *)self setNeedsLayout];
  }
}

- (double)currentTimeIndicatorCoordinate
{
  [(RCWaveformSelectionOverlay *)self layoutIfNeeded];
  [(RCOverlayBarLayer *)self->_currentTimeBar frame];

  return CGRectGetMidX(*&v3);
}

- (int64_t)beginTimeIndicatorSelectionAffinity
{
  v2 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:0];
  selectionAffinity = [v2 selectionAffinity];

  return selectionAffinity;
}

- (int64_t)endTimeIndicatorSelectionAffinity
{
  v2 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:1];
  selectionAffinity = [v2 selectionAffinity];

  return selectionAffinity;
}

- (void)setIsRecording:(BOOL)recording
{
  if (self->_isRecording != recording)
  {
    self->_isRecording = recording;
    [(RCWaveformSelectionOverlay *)self setNeedsLayout];
  }
}

- (void)_clearSublayers
{
  [(RCOverlayBarLayer *)self->_beginTimeSelection removeFromSuperlayer];
  beginTimeSelection = self->_beginTimeSelection;
  self->_beginTimeSelection = 0;

  [(RCOverlayBarLayer *)self->_endTimeSelection removeFromSuperlayer];
  endTimeSelection = self->_endTimeSelection;
  self->_endTimeSelection = 0;

  [(CALayer *)self->_middleSelectionOverlay removeFromSuperlayer];
  middleSelectionOverlay = self->_middleSelectionOverlay;
  self->_middleSelectionOverlay = 0;

  [(CALayer *)self->_corneredDimOverlayContainer removeFromSuperlayer];
  corneredDimOverlayContainer = self->_corneredDimOverlayContainer;
  self->_corneredDimOverlayContainer = 0;

  [(RCOverlayBarLayer *)self->_currentTimeBar removeFromSuperlayer];
  currentTimeBar = self->_currentTimeBar;
  self->_currentTimeBar = 0;

  [(RCOverlayBarLayer *)self->_compactCurrentTimeBar removeFromSuperlayer];
  compactCurrentTimeBar = self->_compactCurrentTimeBar;
  self->_compactCurrentTimeBar = 0;

  self->_sublayersCreated = 0;
}

- (void)_createSublayersIfNeeded
{
  if (!self->_sublayersCreated)
  {
    v45 = +[RCRecorderStyleProvider sharedStyleProvider];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    if (!self->_middleSelectionOverlay)
    {
      v3 = objc_alloc_init(CALayer);
      middleSelectionOverlay = self->_middleSelectionOverlay;
      self->_middleSelectionOverlay = v3;

      if (self->_overviewTrimHandleStyle)
      {
        selectionOverlayEndpointBarColor = [v45 selectionOverlayEndpointBarColor];
        -[CALayer setBorderColor:](self->_middleSelectionOverlay, "setBorderColor:", [selectionOverlayEndpointBarColor CGColor]);

        [v45 selectionOverlayBorderWidth];
        [(CALayer *)self->_middleSelectionOverlay setBorderWidth:?];
      }
    }

    if (!self->_corneredDimOverlayContainer)
    {
      v6 = objc_alloc_init(CALayer);
      corneredDimOverlayContainer = self->_corneredDimOverlayContainer;
      self->_corneredDimOverlayContainer = v6;

      v8 = +[UIColor clearColor];
      -[CALayer setBackgroundColor:](self->_corneredDimOverlayContainer, "setBackgroundColor:", [v8 CGColor]);

      if (self->_overviewTrimHandleStyle)
      {
        [v45 overviewWaveformCornerRadius];
        [(CALayer *)self->_corneredDimOverlayContainer setCornerRadius:?];
        [(CALayer *)self->_corneredDimOverlayContainer setMasksToBounds:1];
      }
    }

    [(RCWaveformSelectionOverlay *)self knobWidthMultiplier];
    [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobsUsingMultiplier:?];
    v10 = v9;
    if (!self->_beginTimeSelection)
    {
      overviewTrimHandleStyle = self->_overviewTrimHandleStyle;
      v12 = [RCOverlayBarLayer alloc];
      selectionOverlayEndpointBarColor2 = [v45 selectionOverlayEndpointBarColor];
      [(RCWaveformSelectionOverlay *)self knobWidthMultiplier];
      if (overviewTrimHandleStyle)
      {
        v15 = [(RCOverlayBarLayer *)v12 initWithColor:selectionOverlayEndpointBarColor2 selectionExtentIncludingKnobs:0 topKnob:0 bottomKnob:1 widthMultiplier:v10 barWidthMatchesKnobs:v14];
        beginTimeSelection = self->_beginTimeSelection;
        self->_beginTimeSelection = v15;

        selectionOverlayEndpointBarColor2 = [UIImage imageNamed:@"Trim_Chevron_Left"];
        [(RCOverlayBarLayer *)self->_beginTimeSelection setBarGlyph:selectionOverlayEndpointBarColor2];
      }

      else
      {
        v17 = [(RCOverlayBarLayer *)v12 initWithColor:selectionOverlayEndpointBarColor2 selectionExtentIncludingKnobs:1 topKnob:1 bottomKnob:0 widthMultiplier:v10 barWidthMatchesKnobs:v14];
        v18 = self->_beginTimeSelection;
        self->_beginTimeSelection = v17;
      }
    }

    if (!self->_endTimeSelection)
    {
      v19 = self->_overviewTrimHandleStyle;
      v20 = [RCOverlayBarLayer alloc];
      selectionOverlayEndpointBarColor3 = [v45 selectionOverlayEndpointBarColor];
      [(RCWaveformSelectionOverlay *)self knobWidthMultiplier];
      if (v19)
      {
        v23 = [(RCOverlayBarLayer *)v20 initWithColor:selectionOverlayEndpointBarColor3 selectionExtentIncludingKnobs:0 topKnob:0 bottomKnob:1 widthMultiplier:v10 barWidthMatchesKnobs:v22];
        endTimeSelection = self->_endTimeSelection;
        self->_endTimeSelection = v23;

        selectionOverlayEndpointBarColor3 = [UIImage imageNamed:@"Trim_Chevron_Right"];
        [(RCOverlayBarLayer *)self->_endTimeSelection setBarGlyph:selectionOverlayEndpointBarColor3];
      }

      else
      {
        v25 = [(RCOverlayBarLayer *)v20 initWithColor:selectionOverlayEndpointBarColor3 selectionExtentIncludingKnobs:1 topKnob:1 bottomKnob:0 widthMultiplier:v10 barWidthMatchesKnobs:v22];
        v26 = self->_endTimeSelection;
        self->_endTimeSelection = v25;
      }
    }

    if (!self->_currentTimeBar)
    {
      [(RCWaveformSelectionOverlay *)self playWidthMultiplier];
      [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobsUsingMultiplier:?];
      v28 = v27;
      v29 = [RCOverlayBarLayer alloc];
      playbackPositionBarColor = [v45 playbackPositionBarColor];
      [(RCWaveformSelectionOverlay *)self playWidthMultiplier];
      v32 = [(RCOverlayBarLayer *)v29 initWithColor:playbackPositionBarColor selectionExtentIncludingKnobs:1 topKnob:1 bottomKnob:[(RCWaveformSelectionOverlay *)self barMatchesKnobRadius] widthMultiplier:v28 barWidthMatchesKnobs:v31];
      currentTimeBar = self->_currentTimeBar;
      self->_currentTimeBar = v32;
    }

    if (!self->_compactCurrentTimeBar)
    {
      v34 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v34 compactStyleTimeBarDefaultHeight];
      v36 = v35;

      v37 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v37 compactStylePlayheadMultiplier];
      v39 = v38;

      v40 = [RCOverlayBarLayer alloc];
      v41 = +[RCRecorderStyleProvider sharedStyleProvider];
      playbackPositionBarColor2 = [v41 playbackPositionBarColor];
      v43 = [(RCOverlayBarLayer *)v40 initWithColor:playbackPositionBarColor2 selectionExtentIncludingKnobs:0 topKnob:0 bottomKnob:1 widthMultiplier:v36 barWidthMatchesKnobs:v39];
      compactCurrentTimeBar = self->_compactCurrentTimeBar;
      self->_compactCurrentTimeBar = v43;
    }

    +[CATransaction commit];
    self->_sublayersCreated = 1;
  }
}

- (void)_setWantsAnimatedLayoutDuration:(double)duration
{
  if (duration <= 0.0)
  {
    requestedNonAnimatedLayout = 1;
  }

  else
  {
    self->_requestedAnimatedLayoutDuration = duration;
    requestedNonAnimatedLayout = self->_requestedNonAnimatedLayout;
  }

  self->_requestedNonAnimatedLayout = requestedNonAnimatedLayout;
  [(RCWaveformSelectionOverlay *)self setNeedsLayout];
}

- (void)setEditingEnabled:(BOOL)enabled
{
  if (self->_editingEnabled != enabled)
  {
    self->_editingEnabled = enabled;
    [(RCWaveformSelectionOverlay *)self setNeedsLayout];

    [(RCWaveformSelectionOverlay *)self layoutIfNeeded];
  }
}

- (void)setInsertMode:(BOOL)mode
{
  if (self->_insertMode != mode)
  {
    self->_insertMode = mode;
    [(RCWaveformSelectionOverlay *)self setNeedsLayout];

    [(RCWaveformSelectionOverlay *)self layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v3 = self->_requestedAnimatedLayoutDuration > 0.0 && !self->_requestedNonAnimatedLayout;
  v4 = v3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v5 animationDragCoefficient];
  v7 = v6;

  v8 = v7 * self->_requestedAnimatedLayoutDuration;
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (v3)
  {
    +[CATransaction begin];
    [CATransaction setAnimationDuration:v8];
  }

  self->_requestedAnimatedLayoutDuration = 0.0;
  self->_requestedNonAnimatedLayout = 0;
  v166[0] = _NSConcreteStackBlock;
  v166[1] = 3221225472;
  v166[2] = sub_3770;
  v166[3] = &unk_6CEB8;
  v166[4] = self;
  *&v166[5] = v7;
  *&v166[6] = v8;
  v167 = v3;
  v10 = objc_retainBlock(v166);
  [(RCWaveformSelectionOverlay *)self _createSublayersIfNeeded];
  [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobs];
  x = v169.origin.x;
  y = v169.origin.y;
  width = v169.size.width;
  height = v169.size.height;
  if (CGRectIsEmpty(v169) || (v170.origin.x = x, v170.origin.y = y, v170.size.width = width, v170.size.height = height, CGRectIsInfinite(v170)) || (*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v3)
    {
      +[CATransaction commit];
    }
  }

  else
  {
    if ([(RCWaveformSelectionOverlay *)self playBarOnly])
    {
      isEditingEnabled = 0;
      v15 = 0.0;
    }

    else
    {
      isEditingEnabled = [(RCWaveformSelectionOverlay *)self isEditingEnabled];
      v15 = 0.0;
      if (isEditingEnabled)
      {
        v15 = 1.0;
      }
    }

    v156 = v15;
    [(RCWaveformSelectionOverlay *)self selectedTimeRange];
    v17 = v16;
    v154 = v18;
    v19 = RCTimeRangeDeltaWithUIPrecision(v16, v18);
    v150 = v19;
    v20 = v19 == 0.0 && self->_insertMode;
    v21 = v19 > 0.0 || !self->_insertMode;
    overviewTrimHandleStyle = self->_overviewTrimHandleStyle;
    [(CALayer *)self->_middleSelectionOverlay setZPosition:1.0];
    if (overviewTrimHandleStyle)
    {
      v23 = 3.0;
    }

    else
    {
      v23 = 2.0;
    }

    if (overviewTrimHandleStyle)
    {
      v24 = 2.0;
    }

    else
    {
      v24 = 3.0;
    }

    [(RCOverlayBarLayer *)self->_currentTimeBar setZPosition:v23];
    [(RCOverlayBarLayer *)self->_compactCurrentTimeBar setZPosition:v23];
    [(RCOverlayBarLayer *)self->_beginTimeSelection setZPosition:v24];
    [(RCOverlayBarLayer *)self->_endTimeSelection setZPosition:v24];
    [(CALayer *)self->_corneredDimOverlayContainer setZPosition:0.5];
    [(RCWaveformSelectionOverlay *)self _selectionHighlightBounds];
    v159 = v25;
    v160 = v26;
    [(RCOverlayBarLayer *)self->_beginTimeSelection frame];
    v28 = v27;
    v151 = v29;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v31 = WeakRetained;
    assetDuration = self->_assetDuration;
    if (v17 < assetDuration)
    {
      assetDuration = v17;
    }

    if (assetDuration < 0.0)
    {
      assetDuration = 0.0;
    }

    [WeakRetained waveformSelectionOverlay:self offsetForTime:assetDuration];
    v34 = v33;

    v158 = v21;
    v161 = v34;
    if (self->_overviewTrimHandleStyle)
    {
      if (v20 || v21)
      {
        [(RCOverlayBarLayer *)self->_endTimeSelection frame];
        v28 = v35;
        [(RCOverlayBarLayer *)self->_beginTimeSelection setMasksToBounds:0];
        MinY = v159;
        v36 = v160;
        v38 = v28;
      }

      else
      {
        [(RCOverlayBarLayer *)self->_beginTimeSelection setMasksToBounds:1];
        v28 = 1.0;
        MinY = v159;
        v36 = v160;
        v38 = 1.0;
      }
    }

    else
    {
      v38 = v28 * 0.5;
      v171.origin.x = x;
      v171.origin.y = y;
      v171.size.width = width;
      v171.size.height = height;
      MinY = CGRectGetMinY(v171);
      v36 = v151;
    }

    v39.n128_f64[0] = RCRoundCoord(v161 - v38);
    if (v20)
    {
      v40.n128_f64[0] = 0.0;
    }

    else
    {
      v40.n128_f64[0] = v156;
    }

    (v10[2])(v10, self->_beginTimeSelection, 0, 0, v39, MinY, v28, v36, v40);
    [(RCOverlayBarLayer *)self->_endTimeSelection frame];
    v42 = v41;
    v152 = v43;
    v44 = objc_loadWeakRetained(&self->_delegate);
    v45 = v44;
    v46 = self->_assetDuration;
    if (v154 < v46)
    {
      v46 = v154;
    }

    if (v46 < 0.0)
    {
      v46 = 0.0;
    }

    [v44 waveformSelectionOverlay:self offsetForTime:v46];
    v48 = v47;

    v49 = v159;
    v50 = v160;
    if (!self->_overviewTrimHandleStyle)
    {
      v48 = v48 + v42 * -0.5;
      v172.origin.x = x;
      v172.origin.y = y;
      v172.size.width = width;
      v172.size.height = height;
      v49 = CGRectGetMinY(v172);
      v50 = v152;
    }

    v51.n128_f64[0] = RCRoundCoord(v48);
    if (v21)
    {
      v52.n128_f64[0] = v156;
    }

    else
    {
      v52.n128_f64[0] = 0.0;
    }

    (v10[2])(v10, self->_endTimeSelection, 0, 0, v51, v49, v42, v50, v52);
    [(RCWaveformSelectionOverlay *)self playWidthMultiplier];
    [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobsUsingMultiplier:?];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    trackedAssetCurrentTime = self->_trackedAssetCurrentTime;
    if (trackedAssetCurrentTime < 0.0)
    {
      v62 = objc_loadWeakRetained(&self->_delegate);
      [v62 waveformSelectionOverlayGetCurrentTime:self];
      trackedAssetCurrentTime = v63;
    }

    v64 = self->_assetDuration;
    if (trackedAssetCurrentTime < v64)
    {
      v64 = trackedAssetCurrentTime;
    }

    if (v64 >= 0.0)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0.0;
    }

    [(RCOverlayBarLayer *)self->_currentTimeBar frame];
    v67 = v66;
    v69 = v68;
    v70 = objc_loadWeakRetained(&self->_delegate);
    [v70 waveformSelectionOverlay:self offsetForTime:v65];
    v72 = v71;

    +[RCOverlayBarLayer selectionKnobRadius];
    v74 = v73;
    [(RCWaveformSelectionOverlay *)self playWidthMultiplier];
    v76 = RCRoundCoord(v72 - v74 * v75);
    if (self->_overviewTrimHandleStyle)
    {
      [v9 overviewPlayheadHeightInset];
      v78 = -v77;
      v173.origin.x = v76;
      v173.origin.y = v159;
      v173.size.height = v160;
      v173.size.width = v67;
      v174 = CGRectInset(v173, 0.0, v78);
      v76 = v174.origin.x;
      v79 = v174.origin.y;
      v67 = v174.size.width;
      v69 = v174.size.height;
    }

    else
    {
      v175.origin.x = v54;
      v175.origin.y = v56;
      v175.size.width = v58;
      v175.size.height = v60;
      v79 = CGRectGetMinY(v175);
    }

    if (v72 < 0.0)
    {
      v80 = 0.0;
    }

    else
    {
      v80 = 1.0;
    }

    layer = [(RCWaveformSelectionOverlay *)self layer];
    v82 = [layer animationForKey:@"bounds.origin"];

    v155 = v82;
    if ([v82 isMemberOfClass:objc_opt_class()])
    {
      v157 = v82;
    }

    else
    {
      v157 = 0;
    }

    [(RCOverlayBarLayer *)self->_currentTimeBar position];
    v84 = v83;
    v86 = v85;
    delegate = [(RCWaveformSelectionOverlay *)self delegate];
    waveformSelectionOverlayNeedsExplicitAnimations = [delegate waveformSelectionOverlayNeedsExplicitAnimations];

    [(RCOverlayBarLayer *)self->_currentTimeBar frame];
    if (waveformSelectionOverlayNeedsExplicitAnimations && v157)
    {
      v90 = v76 - v84;
      if (v76 - v84 < 0.0)
      {
        v90 = -(v76 - v84);
      }

      if (v90 > v89)
      {
        +[CATransaction begin];
        v91 = v155;
        v92 = [CASpringAnimation animationWithKeyPath:@"position"];
        [v91 duration];
        [v92 setDuration:?];
        [v91 timingFunction];
        v94 = v93 = v4;
        [v92 setTimingFunction:v94];

        v4 = v93;
        [v91 damping];
        [v92 setDamping:?];
        [v91 stiffness];
        [v92 setStiffness:?];
        [v91 mass];
        v96 = v95;

        [v92 setMass:v96];
        [(RCOverlayBarLayer *)self->_currentTimeBar position];
        v97 = [NSValue valueWithCGPoint:?];
        [v92 setFromValue:v97];

        [(RCOverlayBarLayer *)self->_currentTimeBar setPosition:v76, v79];
        [(RCOverlayBarLayer *)self->_currentTimeBar addAnimation:v92 forKey:@"position"];
        +[CATransaction commit];
      }
    }

    else if (v84 != v76 || v86 != v79)
    {
      (v10[2])(v10, self->_currentTimeBar, 0, 0, v76, v79, v67, v69, v80);
    }

    [(RCWaveformSelectionOverlay *)self bounds];
    v99 = v98;
    v101 = v100;
    v103 = v102;
    [(RCOverlayBarLayer *)self->_compactCurrentTimeBar frame];
    v104 = CGRectGetWidth(v176);
    v177.origin.x = v99;
    v177.origin.y = v101;
    v177.size.width = v104;
    v177.size.height = v103;
    v105 = CGRectGetWidth(v177);
    v106 = RCRoundCoord(v72 + v105 * -0.5);
    [v9 compactStyleTimeBarHeightInset];
    v108 = v107;
    v178.origin.x = v106;
    v178.origin.y = v101;
    v178.size.width = v104;
    v178.size.height = v103;
    v179 = CGRectInset(v178, 0.0, v108);
    (v10[2])(v10, self->_compactCurrentTimeBar, 0, 0, v179.origin, *&v179.origin.y, v179.size, *&v179.size.height, v80);
    selectionMode = self->_selectionMode;
    v110 = selectionMode == 1;
    [(RCOverlayBarLayer *)self->_compactCurrentTimeBar setHidden:selectionMode != 1];
    [(RCOverlayBarLayer *)self->_currentTimeBar setHidden:v110];
    if (self->_insertMode)
    {
      recordPositionBarColor = [v9 recordPositionBarColor];
      [(RCOverlayBarLayer *)self->_beginTimeSelection setColor:recordPositionBarColor];

      recordPositionBarColor2 = [v9 recordPositionBarColor];
      [(RCOverlayBarLayer *)self->_endTimeSelection setColor:recordPositionBarColor2];

      replaceSelectionOverlayColor = [v9 replaceSelectionOverlayColor];
      v114 = objc_loadWeakRetained(&self->_selectionBackgroundView);
      [v114 setBackgroundColor:replaceSelectionOverlayColor];

      [v9 recordPositionBarColor];
    }

    else
    {
      selectionOverlayEndpointBarColor = [v9 selectionOverlayEndpointBarColor];
      [(RCOverlayBarLayer *)self->_beginTimeSelection setColor:selectionOverlayEndpointBarColor];

      selectionOverlayEndpointBarColor2 = [v9 selectionOverlayEndpointBarColor];
      [(RCOverlayBarLayer *)self->_endTimeSelection setColor:selectionOverlayEndpointBarColor2];

      selectionOverlayColor = [v9 selectionOverlayColor];
      v119 = objc_loadWeakRetained(&self->_selectionBackgroundView);
      [v119 setBackgroundColor:selectionOverlayColor];

      [v9 selectionOverlayEndpointBarColor];
    }
    v115 = ;
    -[CALayer setBorderColor:](self->_middleSelectionOverlay, "setBorderColor:", [v115 CGColor]);

    if (self->_isRecording || self->_insertMode && (v120 = v150, v150 == 0.0))
    {
      recordPositionBarColor3 = [v9 recordPositionBarColor];
      [(RCOverlayBarLayer *)self->_currentTimeBar setColor:recordPositionBarColor3];

      recordPositionBarColor4 = [v9 recordPositionBarColor];
    }

    else
    {
      playbackPositionBarColor = [v9 playbackPositionBarColor];
      [(RCOverlayBarLayer *)self->_currentTimeBar setColor:playbackPositionBarColor];

      recordPositionBarColor4 = [v9 playbackPositionBarColor];
    }

    v124 = recordPositionBarColor4;
    [(RCOverlayBarLayer *)self->_compactCurrentTimeBar setColor:recordPositionBarColor4];

    [(RCOverlayBarLayer *)self->_beginTimeSelection frame];
    MidX = CGRectGetMidX(v180);
    [(RCOverlayBarLayer *)self->_endTimeSelection frame];
    v126 = CGRectGetMidX(v181) - MidX;
    v127 = RCRoundCoord(MidX);
    v128 = RCRoundCoord(v126);
    middleSelectionOverlay = self->_middleSelectionOverlay;
    v130 = 0.0;
    v131 = 0.0;
    v132.n128_u64[0] = 0;
    if (isEditingEnabled & v158)
    {
      [v9 selectionOverlayAlpha];
      v132.n128_u64[0] = v133;
      v131 = 1.0;
    }

    (v10[2])(v10, middleSelectionOverlay, 0, 0, v127, v159, v128, v160, v132);
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v134 = objc_loadWeakRetained(&self->_selectionBackgroundView);
    [v134 setFrame:{v127, v159, v128, v160}];

    v135 = objc_loadWeakRetained(&self->_selectionBackgroundView);
    [v135 setAlpha:v131];

    if ([(RCWaveformSelectionOverlay *)self overviewTrimHandleStyle])
    {
      [v9 selectionOverlayBorderWidth];
      v130 = v136;
    }

    v137 = objc_loadWeakRetained(&self->_delegate);
    [v137 waveformSelectionOverlay:self offsetForTime:0.0];
    v139 = v138;

    v140 = objc_loadWeakRetained(&self->_delegate);
    [v140 waveformSelectionOverlay:self offsetForTime:self->_assetDuration];
    v142 = v141;

    v182.origin.x = v127;
    v182.origin.y = v159;
    v182.size.width = v128;
    v182.size.height = v160;
    v183 = CGRectInset(v182, 0.0, v130);
    (v10[2])(v10, self->_corneredDimOverlayContainer, 0, 0, v139, *&v183.origin.y, v142 - v139, *&v183.size.height, v131);
    v184.origin.x = v127 - v139;
    v184.origin.y = v159;
    v184.size.width = v128;
    v184.size.height = v160;
    +[CATransaction commit];
    if (+[UIApplication shouldMakeUIForDefaultPNG])
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      layer2 = [(RCWaveformSelectionOverlay *)self layer];
      sublayers = [layer2 sublayers];

      v145 = [sublayers countByEnumeratingWithState:&v162 objects:v168 count:16];
      if (v145)
      {
        v146 = v145;
        v147 = *v163;
        do
        {
          for (i = 0; i != v146; i = i + 1)
          {
            if (*v163 != v147)
            {
              objc_enumerationMutation(sublayers);
            }

            [*(*(&v162 + 1) + 8 * i) setHidden:1];
          }

          v146 = [sublayers countByEnumeratingWithState:&v162 objects:v168 count:16];
        }

        while (v146);
      }

      [(RCOverlayBarLayer *)self->_currentTimeBar setHidden:0];
      LODWORD(v149) = 1.0;
      [(RCOverlayBarLayer *)self->_currentTimeBar setOpacity:v149];
    }

    if (v4)
    {
      +[CATransaction commit];
    }
  }
}

- (id)_hitSelectionForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_3E48;
  v25[3] = &unk_6CEE0;
  v25[4] = self;
  *&v25[5] = x;
  *&v25[6] = y;
  v7 = objc_retainBlock(v25);
  if (self->_editingEnabled)
  {
    if (x >= 0.0)
    {
      [(RCWaveformSelectionOverlay *)self frame];
      v8 = 0.0;
      if (x > v9)
      {
        [(RCWaveformSelectionOverlay *)self frame];
        v8 = x - v10;
      }
    }

    else
    {
      v8 = fabs(x);
    }

    p_endTimeSelection = &self->_endTimeSelection;
    endTimeSelection = self->_endTimeSelection;
    [v6 selectionHitTestSlop];
    if ((v7[2])(v7, endTimeSelection))
    {
      goto LABEL_16;
    }

    beginTimeSelection = self->_beginTimeSelection;
    [v6 selectionHitTestSlop];
    if ((v7[2])(v7, beginTimeSelection, 0.0, v14))
    {
      p_endTimeSelection = &self->_beginTimeSelection;
LABEL_16:
      v23 = *p_endTimeSelection;
      goto LABEL_18;
    }

    v15 = *p_endTimeSelection;
    [v6 selectionHitTestSlop];
    if ((v7[2])(v7, v15, 0.0, v8 + v16))
    {
      goto LABEL_16;
    }

    v17 = self->_beginTimeSelection;
    [v6 selectionHitTestSlop];
    p_endTimeSelection = &self->_beginTimeSelection;
    if ((v7[2])(v7, v17, v8 + v18, 0.0))
    {
      goto LABEL_16;
    }

    if ([(RCWaveformSelectionOverlay *)self enablePlayBarTracking])
    {
      if (v8 == 0.0)
      {
        p_endTimeSelection = &self->_currentTimeBar;
        currentTimeBar = self->_currentTimeBar;
        [v6 selectionHitTestSlop];
        v21 = v20;
        [v6 selectionHitTestSlop];
        if ((v7[2])(v7, currentTimeBar, v21, v22))
        {
          goto LABEL_16;
        }
      }
    }
  }

  if ([(RCWaveformSelectionOverlay *)self enableTimeTrackingInView])
  {
    p_endTimeSelection = &self->_currentTimeBar;
    goto LABEL_16;
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v4 = [(RCWaveformSelectionOverlay *)self _hitSelectionForPoint:event, inside.x, inside.y];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_beginTrackingSelectionBar:(id)bar selectionBarType:(int64_t)type withTouch:(id)touch
{
  barCopy = bar;
  touchCopy = touch;
  trackedTouches = self->_trackedTouches;
  v11 = [NSValue valueWithPointer:touchCopy];
  v12 = [(NSMutableDictionary *)trackedTouches objectForKey:v11];

  if (!v12)
  {
    v13 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:type];

    if (!v13)
    {
      [touchCopy locationInView:self];
      v14 = [(RCWaveformSelectionOverlay *)self _hitSelectionForPoint:?];

      if (v14 == barCopy)
      {
        [(RCWaveformSelectionOverlay *)self selectionRect];
        if (type == 2)
        {
          [(RCWaveformSelectionOverlay *)self currentTimeIndicatorCoordinate];
        }

        else if (type == 1)
        {
          MaxX = CGRectGetMaxX(*&v17);
        }

        else
        {
          v21 = 0.0;
          if (type)
          {
LABEL_13:
            v23 = objc_alloc_init(RCSelectionTouchTrackingInfo);
            superview = [(RCWaveformSelectionOverlay *)self superview];
            [touchCopy locationInView:superview];
            [(RCSelectionTouchTrackingInfo *)v23 setTrackingOffset:v21 - v25];

            [(RCSelectionTouchTrackingInfo *)v23 setSelectionBarType:type];
            [(RCSelectionTouchTrackingInfo *)v23 setTouch:touchCopy];
            v26 = self->_trackedTouches;
            v27 = [NSValue valueWithPointer:touchCopy];
            [(NSMutableDictionary *)v26 setObject:v23 forKey:v27];

            v15 = 1;
            goto LABEL_5;
          }

          MaxX = CGRectGetMinX(*&v17);
        }

        v21 = MaxX;
        goto LABEL_13;
      }
    }
  }

  v15 = 0;
LABEL_5:

  return v15;
}

- (void)_updateSelectedTimeRangeForTrackedTouchesAnimated:(BOOL)animated
{
  v4 = 0.0;
  if (animated)
  {
    v4 = 0.5;
  }

  [(RCWaveformSelectionOverlay *)self _setWantsAnimatedLayoutDuration:v4];
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  [(RCWaveformSelectionOverlay *)self selectionRect];
  v56[3] = CGRectGetMinX(v57);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  [(RCWaveformSelectionOverlay *)self selectionRect];
  v55[3] = CGRectGetMaxX(v58);
  beginTime = self->_selectedTimeRange.beginTime;
  endTime = self->_selectedTimeRange.endTime;
  v53 = 0x2020000000;
  v54 = beginTime;
  v51 = 0;
  v52 = &v51;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = endTime;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0xBFF0000000000000;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  allValues = [(NSMutableDictionary *)self->_trackedTouches allValues];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4574;
  v21[3] = &unk_6CF48;
  v23 = &v39;
  v24 = v56;
  v21[4] = self;
  v22 = &stru_6CF20;
  v25 = &v51;
  v26 = &v47;
  v27 = &v35;
  v28 = v55;
  v29 = &v31;
  v30 = &v43;
  [allValues enumerateObjectsUsingBlock:v21];

  v8 = RCTimeRangeMake(v52[3], v48[3]);
  v10 = v9;
  if (!RCTimeRangeEqualToTimeRange(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime, v8, v9))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained waveformSelectionOverlay:self willChangeSelectedTimeRange:*(v40 + 24) isTrackingMin:*(v36 + 24) isTrackingMax:{v8, v10}];
    v13 = v12;
    v15 = v14;

    if (v13 >= 0.0)
    {
      [(RCWaveformSelectionOverlay *)self setSelectedTimeRange:v13, v15];
    }
  }

  if (*(v32 + 24) == 1)
  {
    v16 = v44[3];
    if (v16 != self->_assetCurrentTime || v16 != self->_trackedAssetCurrentTime)
    {
      assetDuration = 0.0;
      if (v16 < 0.0 || (assetDuration = self->_assetDuration, v16 > assetDuration))
      {
        v44[3] = assetDuration;
      }

      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 waveformSelectionOverlay:self willChangeAssetCurrentTime:1 isTracking:v44[3]];
      *(v44 + 3) = v19;

      [(RCWaveformSelectionOverlay *)self setTrackedAssetCurrentTime:v44[3]];
      [(RCWaveformSelectionOverlay *)self setAssetCurrentTime:v44[3]];
    }
  }

  else
  {
    trackedAssetCurrentTime = self->_trackedAssetCurrentTime;
    [(RCWaveformSelectionOverlay *)self setTrackedAssetCurrentTime:-1.0];
    if (trackedAssetCurrentTime >= 0.0)
    {
      [(RCWaveformSelectionOverlay *)self setAssetCurrentTime:trackedAssetCurrentTime];
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v56, 8);
}

- (void)_clearStaleTouches
{
  v3 = +[NSMutableArray array];
  trackedTouches = self->_trackedTouches;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_495C;
  v7[3] = &unk_6CF70;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)trackedTouches enumerateKeysAndObjectsUsingBlock:v7];
  if ([v5 count])
  {
    [(NSMutableDictionary *)self->_trackedTouches removeObjectsForKeys:v5];
    if (![(NSMutableDictionary *)self->_trackedTouches count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained waveformSelectionOverlay:self didFinishTrackingSelectionBeginTime:1 endTime:1 assetCurrentTime:1];
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (!self->_isRecording && (self->_editingEnabled || [(RCWaveformSelectionOverlay *)self enableTimeTrackingInView]))
  {
    [(RCWaveformSelectionOverlay *)self _clearStaleTouches];
    v21 = [(NSMutableDictionary *)self->_trackedTouches count];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = beganCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if (![(RCWaveformSelectionOverlay *)self _beginTrackingSelectionBar:self->_beginTimeSelection selectionBarType:0 withTouch:v13]&& ![(RCWaveformSelectionOverlay *)self _beginTrackingSelectionBar:self->_endTimeSelection selectionBarType:1 withTouch:v13])
          {
            [(RCWaveformSelectionOverlay *)self _beginTrackingSelectionBar:self->_currentTimeBar selectionBarType:2 withTouch:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if (v21 != [(NSMutableDictionary *)self->_trackedTouches count])
    {
      [(RCWaveformSelectionOverlay *)self _updateSelectedTimeRangeForTrackedTouchesAnimated:[(RCWaveformSelectionOverlay *)self rc_canAnimate]];
      if ([(NSMutableDictionary *)self->_trackedTouches count])
      {
        if (!v21)
        {
          v14 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:0];
          v15 = v14 != 0;

          v16 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:1];
          v17 = v16 != 0;

          v18 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:2];
          v19 = v18 != 0;

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained waveformSelectionOverlay:self willBeginTrackingSelectionBeginTime:v15 endTime:v17 assetCurrentTime:v19];
        }
      }
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  allKeys = [(NSMutableDictionary *)self->_trackedTouches allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4E3C;
  v13[3] = &unk_6CF98;
  v14 = movedCopy;
  v7 = movedCopy;
  v8 = [allKeys indexesOfObjectsPassingTest:v13];

  if ([v8 count])
  {
    [(RCWaveformSelectionOverlay *)self _updateSelectedTimeRangeForTrackedTouchesAnimated:0];
    v9 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:2];

    if ([(RCWaveformSelectionOverlay *)self enableTimeTrackingInView])
    {
      if (v9)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained waveformSelectionOverlay:self didFinishTrackingSelectionBeginTime:0 endTime:0 assetCurrentTime:1];
      }
    }
  }

  [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:0];

  v11 = [(RCWaveformSelectionOverlay *)self _accessibilityValueForKey:@"LastSpokenTime"];
  v12 = UIAXTimeStringForDuration();
  if (([v11 isEqualToString:v12] & 1) == 0)
  {
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v12);
    [(RCWaveformSelectionOverlay *)self _accessibilitySetRetainedValue:v12 forKey:@"LastSpokenTime"];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v19 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:0];

  v18 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:1];

  v17 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:2];

  v6 = [(NSMutableDictionary *)self->_trackedTouches count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = endedCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        trackedTouches = self->_trackedTouches;
        v13 = [NSValue valueWithPointer:*(*(&v20 + 1) + 8 * i)];
        [(NSMutableDictionary *)trackedTouches removeObjectForKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if (v6 != [(NSMutableDictionary *)self->_trackedTouches count])
  {
    [(RCWaveformSelectionOverlay *)self _updateSelectedTimeRangeForTrackedTouchesAnimated:[(RCWaveformSelectionOverlay *)self rc_canAnimate]];
    if (![(NSMutableDictionary *)self->_trackedTouches count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained waveformSelectionOverlay:self didFinishTrackingSelectionBeginTime:v19 != 0 endTime:v18 != 0 assetCurrentTime:v17 != 0];

      if (v19)
      {
        goto LABEL_11;
      }

LABEL_13:
      v14 = @"WAVEFORM_SELECTION_CHANGED_END_TIME";
      goto LABEL_14;
    }
  }

  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_11:
  v14 = @"WAVEFORM_SELECTION_CHANGED_START_TIME";
LABEL_14:
  v16 = RCLocalizedFrameworkString(v14);
  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v16);
  [(RCWaveformSelectionOverlay *)self _accessibilityRemoveValueForKey:@"LastSpokenTime"];
}

- (double)_xAdjustmentAmount
{
  overviewTrimHandleStyle = self->_overviewTrimHandleStyle;
  +[RCOverlayBarLayer selectionKnobRadius];
  v5 = v4;
  [(RCWaveformSelectionOverlay *)self knobWidthMultiplier];
  if (overviewTrimHandleStyle)
  {
    v6 = v6 + v6;
  }

  return -(v5 * v6);
}

- (CGRect)_selectionBoundsIncludingKnobsUsingMultiplier:(double)multiplier
{
  [(RCWaveformSelectionOverlay *)self selectionRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  +[RCOverlayBarLayer selectionKnobRadius];
  v14 = v13 * multiplier;
  v15 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v15 selectionHighlightToKnobInset];
  v17 = v16 + v14 * 2.0;

  [(RCWaveformSelectionOverlay *)self _xAdjustmentAmount];
  v19 = v18;
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v20 = v19 + CGRectGetMinX(v28);
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  v21 = CGRectGetMaxX(v29) - v19;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  v22 = CGRectGetMinY(v30) - v17;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  MaxY = CGRectGetMaxY(v31);
  v24 = v21 - v20;
  v25 = v17 + MaxY - v22;
  v26 = v20;
  v27 = v22;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_selectionBoundsIncludingKnobs
{
  [(RCWaveformSelectionOverlay *)self knobWidthMultiplier];

  [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobsUsingMultiplier:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_selectionRectForSelectedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformSelectionOverlay:self offsetForTime:var0];
  v9 = v8 + self->_selectionAreaInsets.left;

  v10 = objc_loadWeakRetained(&self->_delegate);
  [v10 waveformSelectionOverlay:self offsetForTime:var1];
  v12 = v11 - self->_selectionAreaInsets.right;

  [(RCWaveformSelectionOverlay *)self bounds];
  MinY = CGRectGetMinY(v27);
  top = self->_selectionAreaInsets.top;
  [v6 selectionHighlightToKnobInset];
  v16 = MinY + top + v15;
  [(RCWaveformSelectionOverlay *)self bounds];
  MaxY = CGRectGetMaxY(v28);
  bottom = self->_selectionAreaInsets.bottom;
  [v6 selectionHighlightToKnobInset];
  v20 = MaxY - (bottom + v19);
  v21 = v12 - v9;
  v22 = v20 - v16;

  v23 = v9;
  v24 = v16;
  v25 = v21;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)_middleTimeRectWithFont:(id)font
{
  fontCopy = font;
  [(RCWaveformSelectionOverlay *)self bounds];
  v6 = v5;
  v29 = v7;
  [(RCWaveformSelectionOverlay *)self _selectionHighlightBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [fontCopy lineHeight];
  *&v16 = v16;
  v17 = ceilf(*&v16);
  v18 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v18 selectionMiddleTimeBaselineInset];
  v20 = v19;
  [fontCopy descender];
  v22 = v21;

  v23 = v20 + v22;
  v24 = rintf(v23);

  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  v25 = CGRectGetMaxY(v30) - v17 - v24;
  v26 = v6;
  v27 = v29;
  v28 = v17;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v25;
  result.origin.x = v26;
  return result;
}

- (id)_touchTrackingInfoForSelectionBarTye:(int64_t)tye
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_trackedTouches allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 selectionBarType] == tye)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)__shouldDisplayBeginTimeText
{
  v3 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:0];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    p_selectedTimeRange = &self->_selectedTimeRange;
    v4 = RCTimeRangeDeltaWithUIPrecision(p_selectedTimeRange->beginTime, p_selectedTimeRange->endTime) > 0.001 && p_selectedTimeRange->beginTime != 0.0;
  }

  return v4;
}

- (BOOL)__shouldDisplayEndTimeText
{
  v3 = 1;
  v4 = [(RCWaveformSelectionOverlay *)self _touchTrackingInfoForSelectionBarTye:1];
  if (!v4)
  {
    v3 = RCTimeRangeDeltaWithUIPrecision(self->_selectedTimeRange.beginTime, self->_selectedTimeRange.endTime) > 0.001 && vabdd_f64(self->_selectedTimeRange.endTime, self->_assetDuration) > 0.001;
  }

  return v3;
}

- (BOOL)_shouldDisplayBeginTimeText
{
  if ([(RCWaveformSelectionOverlay *)self __shouldDisplayBeginTimeText])
  {
    return 1;
  }

  return [(RCWaveformSelectionOverlay *)self __shouldDisplayEndTimeText];
}

- (CGRect)_beginTimeRectWithSizedTextLayer:(id)layer isOffsetForThumb:(BOOL *)thumb
{
  layerCopy = layer;
  font = [layerCopy font];
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobs];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(RCWaveformSelectionOverlay *)self _shouldOffsetSelectionBarTypeForThumb:0];
  v18 = v17;
  if (v17)
  {
    [v8 selectionTimeInsetWhenSelected];
  }

  else
  {
    [v8 selectionTimeInsetNormal];
  }

  v47 = v19;
  [v8 selectionTimeBaseLineOffset];
  v21 = v20;
  [font ascender];
  v23 = v22;
  v48.origin.x = v10;
  v48.origin.y = v12;
  v48.size.width = v14;
  v48.size.height = v16;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = v10;
  v49.origin.y = v12;
  v49.size.width = v14;
  v49.size.height = v16;
  MinY = CGRectGetMinY(v49);
  [layerCopy frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v50.origin.x = v27;
  v50.origin.y = v29;
  v50.size.width = v31;
  v50.size.height = v33;
  Width = CGRectGetWidth(v50);
  [font lineHeight];
  if (thumb)
  {
    *thumb = v18;
  }

  v36 = v47;
  v37 = v21 + v23;
  v38 = v35;
  v39 = rint(MinX + rintf(v36));
  v40 = rint(MinY - rintf(v37));
  v41 = ceil(Width);
  v42 = ceilf(v38);

  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)_alternateBeginTimeRectWithSizedTextLayer:(id)layer
{
  layerCopy = layer;
  [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(RCWaveformSelectionOverlay *)self _beginTimeRectWithSizedTextLayer:layerCopy isOffsetForThumb:0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v22 = MinX - CGRectGetMinX(v28);
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  v23 = CGRectGetMinX(v29) - v22 - v18;
  v24 = v16;
  v25 = v18;
  v26 = v20;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (BOOL)_shouldDisplayEndTimeText
{
  if ([(RCWaveformSelectionOverlay *)self __shouldDisplayBeginTimeText])
  {
    return 1;
  }

  return [(RCWaveformSelectionOverlay *)self __shouldDisplayEndTimeText];
}

- (CGRect)_endTimeRectWithSizedTextLayer:(id)layer isOffsetForThumb:(BOOL *)thumb
{
  layerCopy = layer;
  font = [layerCopy font];
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobs];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(RCWaveformSelectionOverlay *)self _shouldOffsetSelectionBarTypeForThumb:1];
  v18 = v17;
  if (v17)
  {
    [v8 selectionTimeInsetWhenSelected];
  }

  else
  {
    [v8 selectionTimeInsetNormal];
  }

  v49 = v19;
  [v8 selectionTimeBaseLineOffset];
  v48 = v20;
  [font ascender];
  v47 = v21;
  v50.origin.x = v10;
  v50.origin.y = v12;
  v50.size.width = v14;
  v50.size.height = v16;
  MaxX = CGRectGetMaxX(v50);
  [layerCopy frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v51.origin.x = v23;
  v51.origin.y = v25;
  v51.size.width = v27;
  v51.size.height = v29;
  Width = CGRectGetWidth(v51);
  v52.origin.x = v10;
  v52.origin.y = v12;
  v52.size.width = v14;
  v52.size.height = v16;
  MinY = CGRectGetMinY(v52);
  [font lineHeight];
  if (thumb)
  {
    *thumb = v18;
  }

  v33 = v49;
  v34 = MaxX - rintf(v33);
  v35 = v48 + v47;
  v36 = MinY - rintf(v35);
  v37 = v32;
  v38 = rint(v34 - Width);
  v39 = rint(v36);
  v40 = ceil(v34 - (v34 - Width));
  v41 = ceilf(v37);

  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGRect)_alternateEndTimeRectWithSizedTextLayer:(id)layer
{
  layerCopy = layer;
  [(RCWaveformSelectionOverlay *)self _selectionBoundsIncludingKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(RCWaveformSelectionOverlay *)self _endTimeRectWithSizedTextLayer:layerCopy isOffsetForThumb:0];
  rect = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = rect;
  v28.origin.y = v15;
  v28.size.width = v17;
  v28.size.height = v19;
  v21 = MaxX - CGRectGetMaxX(v28);
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  v22 = CGRectGetMaxX(v29) + v21;
  v23 = v15;
  v24 = v17;
  v25 = v19;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)accessibilityElements
{
  v3 = [(RCWaveformSelectionOverlay *)self _accessibilityValueForKey:@"kUIAccessibilityStorageKeyChildren"];
  if (!v3)
  {
    v4 = [[AXWaveformSelectionBarElement alloc] initWithAccessibilityContainer:self];
    [(AXWaveformSelectionBarElement *)v4 setAdjustsStartTime:1];
    v5 = [[AXWaveformSelectionBarElement alloc] initWithAccessibilityContainer:self];
    v7[0] = v4;
    v7[1] = v5;
    v3 = [NSArray arrayWithObjects:v7 count:2];
    [(RCWaveformSelectionOverlay *)self _accessibilitySetRetainedValue:v3 forKey:@"kUIAccessibilityStorageKeyChildren"];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = RCWaveformSelectionOverlay;
  accessibilityTraits = [(RCWaveformSelectionOverlay *)&v7 accessibilityTraits];
  changeAXValue = [(RCWaveformSelectionOverlay *)self changeAXValue];
  v5 = UIAccessibilityTraitAdjustable;
  if (!changeAXValue)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityValue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformSelectionOverlayGetCurrentTime:self];

  return UIAXTimeStringForDuration();
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (![(RCWaveformSelectionOverlay *)self changeAXValue]|| ![(RCWaveformSelectionOverlay *)self isAccessibilityElement])
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = 0;
  v6 = 20.0;
  if (self->_isOverView)
  {
    v6 = 8.0;
  }

  if (scroll == 3)
  {
    goto LABEL_8;
  }

  if (scroll == 4)
  {
    v5 = 1;
LABEL_8:
    [(RCWaveformSelectionOverlay *)self _accessibilityIncreaseValue:v5 bySegment:v6];
    v7 = UIAccessibilityAnnouncementNotification;
    accessibilityValue = [(RCWaveformSelectionOverlay *)self accessibilityValue];
    UIAccessibilityPostNotification(v7, accessibilityValue);

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_accessibilityIncreaseValue:(BOOL)value bySegment:(double)segment
{
  valueCopy = value;
  if (segment == 0.0)
  {
    segment = 20.0;
  }

  v6 = self->_assetDuration / segment;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformSelectionOverlayGetCurrentTime:self];
  v9 = v8;

  v10 = -v6;
  if (valueCopy)
  {
    v10 = v6;
  }

  v11 = v10 + v9;
  if (v11 == self->_assetCurrentTime && v11 == self->_trackedAssetCurrentTime)
  {
    assetDuration = v11;
  }

  else
  {
    assetDuration = 0.0;
    if (v11 >= 0.0)
    {
      assetDuration = v11;
      if (v11 > self->_assetDuration)
      {
        assetDuration = self->_assetDuration;
      }
    }
  }

  v13 = objc_loadWeakRetained(&self->_delegate);
  [v13 waveformSelectionOverlay:self willChangeAssetCurrentTime:1 isTracking:assetDuration];
}

- (void)accessibilityIncrement
{
  if ([(RCWaveformSelectionOverlay *)self changeAXValue])
  {
    [(RCWaveformSelectionOverlay *)self axSegment];

    [(RCWaveformSelectionOverlay *)self _accessibilityIncreaseValue:1 bySegment:?];
  }
}

- (void)accessibilityDecrement
{
  if ([(RCWaveformSelectionOverlay *)self changeAXValue])
  {
    [(RCWaveformSelectionOverlay *)self axSegment];

    [(RCWaveformSelectionOverlay *)self _accessibilityIncreaseValue:0 bySegment:?];
  }
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(RCWaveformSelectionOverlay *)self _axIsShowingSelectionBars]|| ([(RCWaveformSelectionOverlay *)self bounds], v13.x = x, v13.y = y, !CGRectContainsPoint(v14, v13)))
  {
    v11.receiver = self;
    v11.super_class = RCWaveformSelectionOverlay;
    selfCopy = [(RCWaveformSelectionOverlay *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  else
  {
    selfCopy = self;
  }

  v9 = selfCopy;

  return v9;
}

- (RCWaveformSelectionOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange
{
  beginTime = self->_selectedTimeRange.beginTime;
  endTime = self->_selectedTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (CGRect)selectionRect
{
  x = self->_selectionRect.origin.x;
  y = self->_selectionRect.origin.y;
  width = self->_selectionRect.size.width;
  height = self->_selectionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)selectionBackgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionBackgroundView);

  return WeakRetained;
}

@end