@interface AVCatalystScrubber
- (AVCatalystScrubber)initWithFrame:(CGRect)frame;
- (AVCatalystScrubberDelegate)delegate;
- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)point;
- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)point;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)isTracking;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)contentOffsetFromValue;
- (CGRect)hitRect;
- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds;
- (CGSize)extrinsicContentSize;
- (NSDirectionalEdgeInsets)hitRectInsets;
- (NSMutableArray)previousScrubberVelocities;
- (UIEdgeInsets)alignmentRectInsets;
- (UIGestureRecognizer)trackpadGestureRecognizer;
- (UIImageView)currentThumbView;
- (UIView)loadedTrackOverlayView;
- (double)normalizedScrollOffset;
- (double)timeIntervalSinceTrackingEnded;
- (float)_normalizeSliderValue:(float)value;
- (float)clampedEstimatedFrameRate;
- (float)duration;
- (float)normalizedPosition;
- (float)valueFromScrollView;
- (void)_layoutPhotosensitiveRegions:(float)regions;
- (void)_layoutTimeLineMarkerViews:(float)views;
- (void)_updateLayoutItem;
- (void)_updateSlowKnobMovementDetected;
- (void)_updateSlowKnobMovementDetectedForTargetValue:(float)value;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endOrCancelTracking;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setEnabled:(BOOL)enabled;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setIncluded:(BOOL)included;
- (void)setInterstitialDisplayTimes:(id)times;
- (void)setLoadedTimeRanges:(id)ranges;
- (void)setPhotosensitiveDisplayTimes:(id)times;
- (void)setRemoved:(BOOL)removed;
- (void)setShowsTimelineMarkers:(BOOL)markers;
- (void)setValue:(float)value;
- (void)updateScrollViewContentSizeAndOffsetIfNeeded;
@end

@implementation AVCatalystScrubber

- (UIImageView)currentThumbView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentThumbView);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  leading = self->_hitRectInsets.leading;
  bottom = self->_hitRectInsets.bottom;
  trailing = self->_hitRectInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (AVCatalystScrubberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_layoutTimeLineMarkerViews:(float)views
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _minTrackView = [(AVCatalystScrubber *)self _minTrackView];
  [_minTrackView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  _minTrackView2 = [(AVCatalystScrubber *)self _minTrackView];
  [(AVCatalystScrubber *)self convertRect:_minTrackView2 fromView:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  interstitialDisplayTimes = [(AVCatalystScrubber *)self interstitialDisplayTimes];
  v25 = [interstitialDisplayTimes countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v56;
    do
    {
      v28 = 0;
      do
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(interstitialDisplayTimes);
        }

        v29 = *(*(&v55 + 1) + 8 * v28);
        v30 = MEMORY[0x1E696AD98];
        if (v29)
        {
          [v29 timeRange];
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
        }

        *&time.value = v51;
        time.epoch = v52;
        v31 = [v30 numberWithDouble:CMTimeGetSeconds(&time)];
        [v5 addObject:v31];

        ++v28;
      }

      while (v26 != v28);
      v26 = [interstitialDisplayTimes countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v26);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  interstitialOverlayViews = [(AVCatalystScrubber *)self interstitialOverlayViews];
  v33 = [interstitialOverlayViews countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v48;
    do
    {
      v37 = 0;
      do
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(interstitialOverlayViews);
        }

        v38 = *(*(&v47 + 1) + 8 * v37);
        v39 = [v5 objectAtIndexedSubscript:v35];
        [v39 floatValue];
        v41 = v40;
        [(AVCatalystScrubber *)self minimumValue];
        v43 = (v41 - v42) / views;

        [(AVCatalystScrubber *)self bounds];
        [(AVCatalystScrubber *)self trackRectForBounds:?];
        v44 = CGRectGetWidth(v62) * v43;
        v63.origin.x = v17;
        v63.origin.y = v19;
        v63.size.width = v21;
        v63.size.height = v23;
        MinY = CGRectGetMinY(v63);
        layer = [v38 layer];
        [layer setCornerRadius:2.5];

        [v38 setFrame:{v44, MinY, 5.0, 5.0}];
        [(AVCatalystScrubber *)self insertSubview:v38 atIndex:0];
        ++v35;
        ++v37;
      }

      while (v34 != v37);
      v34 = [interstitialOverlayViews countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v34);
  }
}

- (void)_layoutPhotosensitiveRegions:(float)regions
{
  v69 = *MEMORY[0x1E69E9840];
  photosensitiveDisplayTimes = [(AVCatalystScrubber *)self photosensitiveDisplayTimes];
  v5 = [photosensitiveDisplayTimes count];

  if (v5)
  {
    _minTrackView = [(AVCatalystScrubber *)self _minTrackView];
    [_minTrackView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _minTrackView2 = [(AVCatalystScrubber *)self _minTrackView];
    [(AVCatalystScrubber *)self convertRect:_minTrackView2 fromView:v8, v10, v12, v14];
    v58 = v17;
    v59 = v16;
    v56 = v19;
    v57 = v18;

    [(AVCatalystScrubber *)self bounds];
    [(AVCatalystScrubber *)self trackRectForBounds:?];
    Width = CGRectGetWidth(v70);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(AVCatalystScrubber *)self photosensitiveOverlayViews];
    v60 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v60)
    {
      v21 = 0;
      v55 = *v65;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v65 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v64 + 1) + 8 * i);
          photosensitiveDisplayTimes2 = [(AVCatalystScrubber *)self photosensitiveDisplayTimes];
          v25 = [photosensitiveDisplayTimes2 objectAtIndex:v21];

          v61 = v21;
          if (v25)
          {
            [v25 timeRange];
            time = v62[3];
            Seconds = CMTimeGetSeconds(&time);
            [v25 timeRange];
          }

          else
          {
            memset(&v62[2].epoch, 0, 32);
            *&time.value = *&v62[3].value;
            time.epoch = 0;
            Seconds = CMTimeGetSeconds(&time);
            memset(v62, 0, 24);
          }

          time = v62[0];
          v27 = CMTimeGetSeconds(&time);
          v28 = v27;
          *&v27 = v27;
          [(AVCatalystScrubber *)self _normalizeSliderValue:v27];
          v30 = v29;
          v31 = Seconds + v28;
          *&v31 = Seconds + v28;
          [(AVCatalystScrubber *)self _normalizeSliderValue:v31];
          v33 = 10.0;
          if (v30 < 0.0)
          {
            v33 = 0.0;
          }

          v34 = Width * (v32 - fmaxf(v30, 0.0));
          if (v33 >= v34)
          {
            v35 = v33;
          }

          else
          {
            v35 = v34;
          }

          v36 = fmax(Width * v30, 0.0);
          v71.origin.y = v58;
          v71.origin.x = v59;
          v71.size.height = v56;
          v71.size.width = v57;
          MinY = CGRectGetMinY(v71);
          layer = [v23 layer];
          [layer setCornerRadius:2.5];

          colors = [v25 colors];
          v40 = MEMORY[0x1E69DC888];
          v41 = [colors objectAtIndexedSubscript:0];
          [v41 doubleValue];
          v43 = v42;
          v44 = [colors objectAtIndexedSubscript:1];
          [v44 doubleValue];
          v46 = v45;
          [colors objectAtIndexedSubscript:2];
          v48 = v47 = v23;
          [v48 doubleValue];
          v50 = v49;
          v51 = [colors objectAtIndexedSubscript:3];
          [v51 doubleValue];
          v53 = [v40 colorWithRed:v43 green:v46 blue:v50 alpha:v52];
          [v47 setBackgroundColor:v53];

          [v47 setFrame:{v36, MinY, v35, 5.0}];
          [(AVCatalystScrubber *)self insertSubview:v47 atIndex:0];
          v21 = v61 + 1;
        }

        v60 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v60);
    }
  }
}

- (float)_normalizeSliderValue:(float)value
{
  [(AVCatalystScrubber *)self maximumValue];
  v6 = v5;
  [(AVCatalystScrubber *)self minimumValue];
  v8 = v6 - v7;
  result = 0.0;
  if (v8 > 0.0)
  {
    [(AVCatalystScrubber *)self minimumValue];
    return (value - v10) / v8;
  }

  return result;
}

- (void)_updateLayoutItem
{
  layoutAttributes = [(AVCatalystScrubber *)self layoutAttributes];
  [(AVCatalystScrubber *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVCatalystScrubber *)self layoutAttributes];
  if ([(AVCatalystScrubber *)self isIncluded])
  {
    v5 = [(AVCatalystScrubber *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [layoutAttributes2 setIncluded:v5];

  layoutAttributes3 = [(AVCatalystScrubber *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVCatalystScrubber isCollapsed](self, "isCollapsed")}];
}

- (void)_updateSlowKnobMovementDetectedForTargetValue:(float)value
{
  v66 = *MEMORY[0x1E69E9840];
  if (![(AVCatalystScrubber *)self slowKnobMovementDetected]&& !self->_didHaveLessThanFullScrubbingSpeedSinceTrackingBegin)
  {
    [(AVCatalystScrubber *)self maximumValue];
    v6 = v5;
    [(AVCatalystScrubber *)self minimumValue];
    v8 = v7;
    [(AVCatalystScrubber *)self bounds];
    [(AVCatalystScrubber *)self trackRectForBounds:?];
    Width = CGRectGetWidth(v67);
    objc_initWeak(&location, self);
    updateSlowKnobMovementDetectedTimer = [(AVCatalystScrubber *)self updateSlowKnobMovementDetectedTimer];
    [updateSlowKnobMovementDetectedTimer invalidate];

    v11 = MEMORY[0x1E695DFF0];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __68__AVCatalystScrubber__updateSlowKnobMovementDetectedForTargetValue___block_invoke;
    v61[3] = &unk_1E7209DA8;
    objc_copyWeak(&v62, &location);
    v12 = [v11 scheduledTimerWithTimeInterval:1 repeats:v61 block:0.25];
    [(AVCatalystScrubber *)self setUpdateSlowKnobMovementDetectedTimer:v12];

    Current = CFAbsoluteTimeGetCurrent();
    array = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    previousScrubberVelocities = [(AVCatalystScrubber *)self previousScrubberVelocities];
    v16 = [previousScrubberVelocities countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v16)
    {
      v17 = *v58;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v58 != v17)
          {
            objc_enumerationMutation(previousScrubberVelocities);
          }

          v19 = *(*(&v57 + 1) + 8 * i);
          [v19 timestamp];
          if (Current - v20 > 1.5)
          {
            [array addObject:v19];
          }
        }

        v16 = [previousScrubberVelocities countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v16);
    }

    previousScrubberVelocities2 = [(AVCatalystScrubber *)self previousScrubberVelocities];
    [previousScrubberVelocities2 removeObjectsInArray:array];

    previousValue = self->_previousValue;
    previousValueChangeTime = self->_previousValueChangeTime;
    currentValueChangedTime = self->_currentValueChangedTime;
    v25 = v6 - v8;
    if (((LODWORD(v25) & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E)
    {
      v26 = objc_alloc_init(AVCatalystScrubberVelocity);
      [(AVCatalystScrubberVelocity *)v26 setTimestamp:Current];
      [(AVCatalystScrubberVelocity *)v26 setVelocity:(Width + -9.0) * ((value - previousValue) / v25) / (currentValueChangedTime - previousValueChangeTime)];
      previousScrubberVelocities3 = [(AVCatalystScrubber *)self previousScrubberVelocities];
      [previousScrubberVelocities3 addObject:v26];
    }

    self->_previousValueChangeTime = self->_currentValueChangedTime;
    self->_currentValueChangedTime = Current;
    self->_previousValue = value;
    if (Current - self->_trackingStartTime <= 1.0)
    {
      goto LABEL_40;
    }

    previousScrubberVelocities4 = [(AVCatalystScrubber *)self previousScrubberVelocities];
    v29 = [previousScrubberVelocities4 count] == 0;

    if (v29)
    {
      goto LABEL_40;
    }

    previousScrubberVelocities5 = [(AVCatalystScrubber *)self previousScrubberVelocities];
    v31 = [previousScrubberVelocities5 objectAtIndexedSubscript:0];
    [v31 velocity];
    v33 = v32;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    previousScrubberVelocities6 = [(AVCatalystScrubber *)self previousScrubberVelocities];
    v35 = [previousScrubberVelocities6 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v35)
    {
      v36 = 0;
      v37 = Current + -1.5;
      v38 = *v54;
      v39 = 0.0;
      do
      {
        v40 = 0;
        v41 = v33;
        v42 = v37;
        do
        {
          if (*v54 != v38)
          {
            objc_enumerationMutation(previousScrubberVelocities6);
          }

          v43 = *(*(&v53 + 1) + 8 * v40);
          [v43 timestamp];
          v45 = v44;
          [v43 velocity];
          v47 = v46;
          [v43 timestamp];
          v37 = v48;
          v33 = (v45 - v42) / 1.5 * v47;
          v49 = fabs(v33);
          if (((*&v33 ^ *&v41) & 0x8000000000000000) != 0 && fabs(v41) + v49 > 0.1)
          {
            ++v36;
          }

          v39 = v39 + v49;
          ++v40;
          v41 = v33;
          v42 = v37;
        }

        while (v35 != v40);
        v35 = [previousScrubberVelocities6 countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v35);

      if (v39 >= 3.0 && (v39 >= 12.0 || v36 <= 0) && (v39 >= 20.0 || v36 < 2))
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    [(AVCatalystScrubber *)self setSlowKnobMovementDetected:1];
    delegate = [(AVCatalystScrubber *)self delegate];
    [delegate catalystScrubberSlowKnobMovementDetected:self];

LABEL_40:
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }
}

void __68__AVCatalystScrubber__updateSlowKnobMovementDetectedForTargetValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSlowKnobMovementDetected];
}

- (void)_updateSlowKnobMovementDetected
{
  [(AVCatalystScrubber *)self value];

  [(AVCatalystScrubber *)self _updateSlowKnobMovementDetectedForTargetValue:?];
}

- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AVCatalystScrubber *)self scrubsWhenTappedAnywhere])
  {
    [(AVCatalystScrubber *)self hitRect];
    v34.x = x;
    v34.y = y;
    v6 = CGRectContainsPoint(v36, v34);
  }

  else
  {
    v6 = 0;
  }

  currentThumbView = [(AVCatalystScrubber *)self currentThumbView];
  [(AVCatalystScrubber *)self convertPoint:currentThumbView toView:x, y];
  v9 = v8;
  v11 = v10;

  currentThumbView2 = [(AVCatalystScrubber *)self currentThumbView];
  [currentThumbView2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(AVCatalystScrubber *)self _thumbHitEdgeInsets];
  v22 = v14 + v21;
  v24 = v16 + v23;
  v26 = v18 - (v21 + v25);
  v28 = v20 - (v23 + v27);

  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v35.x = v9;
  v35.y = v11;
  LOBYTE(currentThumbView2) = CGRectContainsPoint(v37, v35);
  _trackEnabled = [(AVCatalystScrubber *)self _trackEnabled];
  if ((currentThumbView2 & 1) != 0 || _trackEnabled)
  {
    [(AVCatalystScrubber *)self maximumValue];
    v31 = v30;
    [(AVCatalystScrubber *)self minimumValue];
    if (v31 <= v32)
    {
      return 0;
    }

    else
    {
      [(AVCatalystScrubber *)self bounds];
      [(AVCatalystScrubber *)self trackRectForBounds:?];
      return CGRectGetWidth(v38) > 0.0;
    }
  }

  return v6;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(AVCatalystScrubber *)self sendActionsForControlEvents:448];

  [(AVCatalystScrubber *)self setScrollScrubbing:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(AVCatalystScrubber *)self sendActionsForControlEvents:448];

    [(AVCatalystScrubber *)self setScrollScrubbing:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(AVCatalystScrubber *)self setScrollScrubbing:1];

  [(AVCatalystScrubber *)self sendActionsForControlEvents:1];
}

- (void)scrollViewDidScroll:(id)scroll
{
  if ([(AVCatalystScrubber *)self isScrollScrubbing])
  {
    [(AVCatalystScrubber *)self valueFromScrollView];
    [(AVCatalystScrubber *)self setValue:?];

    [(AVCatalystScrubber *)self sendActionsForControlEvents:4096];
  }
}

- (UIGestureRecognizer)trackpadGestureRecognizer
{
  scrollView = [(AVCatalystScrubber *)self scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];

  return panGestureRecognizer;
}

- (CGPoint)contentOffsetFromValue
{
  scrollView = [(AVCatalystScrubber *)self scrollView];
  [scrollView contentSize];
  v5 = v4;
  scrollView2 = [(AVCatalystScrubber *)self scrollView];
  [scrollView2 bounds];
  v8 = v5 - v7;

  [(AVCatalystScrubber *)self normalizedPosition];
  v10 = v8 * v9;
  v11 = 0.0;
  result.y = v11;
  result.x = v10;
  return result;
}

- (float)valueFromScrollView
{
  [(AVCatalystScrubber *)self normalizedScrollOffset];
  v4 = v3;
  [(AVCatalystScrubber *)self duration];
  v6 = v5;
  [(AVCatalystScrubber *)self minimumValue];
  return v7 + v4 * v6;
}

- (double)normalizedScrollOffset
{
  scrollView = [(AVCatalystScrubber *)self scrollView];
  [scrollView contentSize];
  v5 = v4;
  scrollView2 = [(AVCatalystScrubber *)self scrollView];
  [scrollView2 bounds];
  v8 = v5 - v7;

  v9 = 0.0;
  if (v8 > 0.0)
  {
    scrollView3 = [(AVCatalystScrubber *)self scrollView];
    [scrollView3 contentOffset];
    v9 = 1.0 - v11 / v8;
  }

  return v9;
}

- (float)normalizedPosition
{
  [(AVCatalystScrubber *)self duration];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    [(AVCatalystScrubber *)self value];
    v7 = v6;
    [(AVCatalystScrubber *)self minimumValue];
    v9 = v7 - v8;
    [(AVCatalystScrubber *)self duration];
    return 1.0 - (v9 / v10);
  }

  return result;
}

- (float)duration
{
  [(AVCatalystScrubber *)self maximumValue];
  v4 = v3;
  [(AVCatalystScrubber *)self minimumValue];
  return v4 - v5;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(AVCatalystScrubber *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v24.receiver = self;
  v24.super_class = AVCatalystScrubber;
  [(AVCatalystScrubber *)&v24 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVCatalystScrubber *)self hitRectInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(AVCatalystScrubber *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = v4 + v19;
  v21 = v6 + v12;
  v22 = v8 - (v18 + v14);
  v23 = v10 - (v12 + v16);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = AVCatalystScrubber;
  [(AVCatalystScrubber *)&v47 layoutSubviews];
  _minTrackView = [(AVCatalystScrubber *)self _minTrackView];
  [_minTrackView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _minTrackView2 = [(AVCatalystScrubber *)self _minTrackView];
  [(AVCatalystScrubber *)self convertRect:_minTrackView2 fromView:v5, v7, v9, v11];
  v46 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  MaxX = *MEMORY[0x1E695F058];
  MinY = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  Height = *(MEMORY[0x1E695F058] + 24);
  loadedTimeRanges = [(AVCatalystScrubber *)self loadedTimeRanges];
  [(AVCatalystScrubber *)self maximumValue];
  LODWORD(v5) = v25;
  [(AVCatalystScrubber *)self minimumValue];
  v27 = *&v5 - v26;
  if (v27 <= 0.0 || ![loadedTimeRanges count])
  {
    goto LABEL_12;
  }

  [(AVCatalystScrubber *)self value];
  v29 = v28;
  [(AVCatalystScrubber *)self minimumValue];
  v31 = v30;
  if ([loadedTimeRanges count] < 2)
  {
    goto LABEL_11;
  }

  v32 = 0;
  v33 = (v29 - v31) / v27;
  while (1)
  {
    v34 = [loadedTimeRanges objectAtIndexedSubscript:v32];
    [v34 floatValue];
    if (v35 <= v33)
    {
      break;
    }

    ++v32;
LABEL_8:
    if (v32 >= [loadedTimeRanges count] >> 1)
    {
      goto LABEL_11;
    }
  }

  v36 = [loadedTimeRanges objectAtIndexedSubscript:++v32];
  [v36 floatValue];
  v38 = v37;

  if (v38 <= v33)
  {
    goto LABEL_8;
  }

  v39 = [loadedTimeRanges objectAtIndexedSubscript:v32];
  [v39 floatValue];

LABEL_11:
  [(AVCatalystScrubber *)self bounds];
  [(AVCatalystScrubber *)self trackRectForBounds:?];
  CGRectGetWidth(v48);
  v49.origin.x = v46;
  v49.origin.y = v15;
  v49.size.width = v17;
  v49.size.height = v19;
  MaxX = CGRectGetMaxX(v49);
  v50.origin.x = v46;
  v50.origin.y = v15;
  v50.size.width = v17;
  v50.size.height = v19;
  MinY = CGRectGetMinY(v50);
  UIRoundToViewScale();
  v41 = v40;
  v51.origin.x = v46;
  v51.origin.y = v15;
  v51.size.width = v17;
  v51.size.height = v19;
  v23 = fmax(v41 - CGRectGetWidth(v51), 0.0);
  v52.origin.x = v46;
  v52.origin.y = v15;
  v52.size.width = v17;
  v52.size.height = v19;
  Height = CGRectGetHeight(v52);
LABEL_12:
  loadedTrackOverlayView = [(AVCatalystScrubber *)self loadedTrackOverlayView];
  [loadedTrackOverlayView setFrame:{MaxX, MinY, v23, Height}];

  *&v43 = v27;
  [(AVCatalystScrubber *)self _layoutTimeLineMarkerViews:v43];
  *&v44 = v27;
  [(AVCatalystScrubber *)self _layoutPhotosensitiveRegions:v44];
  if (([(AVCatalystScrubber *)self isEnabled]& 1) == 0)
  {
    [(AVCatalystScrubber *)self setAlpha:1.0];
  }

  if (![(AVCatalystScrubber *)self isScrollScrubbing])
  {
    [(AVCatalystScrubber *)self updateScrollViewContentSizeAndOffsetIfNeeded];
    scrollView = [(AVCatalystScrubber *)self scrollView];
    [(AVCatalystScrubber *)self contentOffsetFromValue];
    [scrollView setContentOffset:?];
  }
}

- (void)updateScrollViewContentSizeAndOffsetIfNeeded
{
  scrollView = [(AVCatalystScrubber *)self scrollView];
  [scrollView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(AVCatalystScrubber *)self bounds];
  v24.origin.x = v12;
  v24.origin.y = v13;
  v24.size.width = v14;
  v24.size.height = v15;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  v16 = CGRectEqualToRect(v21, v24);

  if (!v16)
  {
    scrollView2 = [(AVCatalystScrubber *)self scrollView];
    [(AVCatalystScrubber *)self bounds];
    [scrollView2 setFrame:?];

    scrollView3 = [(AVCatalystScrubber *)self scrollView];
    [(AVCatalystScrubber *)self bounds];
    v18 = CGRectGetWidth(v22) * 6.0;
    [(AVCatalystScrubber *)self bounds];
    [scrollView3 setContentSize:{v18, CGRectGetHeight(v23)}];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)endOrCancelTracking
{
  [(AVCatalystScrubber *)self setTimestampWhenTrackingEnded:CFAbsoluteTimeGetCurrent()];
  [(AVCatalystScrubber *)self setSlowKnobMovementDetected:0];
  previousScrubberVelocities = [(AVCatalystScrubber *)self previousScrubberVelocities];
  [previousScrubberVelocities removeAllObjects];

  updateSlowKnobMovementDetectedTimer = [(AVCatalystScrubber *)self updateSlowKnobMovementDetectedTimer];
  [updateSlowKnobMovementDetectedTimer invalidate];

  [(AVCatalystScrubber *)self setUpdateSlowKnobMovementDetectedTimer:0];
  self->_trackingStartTime = NAN;
  self->_previousValue = NAN;
  self->_previousValueChangeTime = NAN;
  self->_currentValueChangedTime = NAN;
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = AVCatalystScrubber;
  [(AVCatalystScrubber *)&v4 cancelTrackingWithEvent:event];
  [(AVCatalystScrubber *)self endOrCancelTracking];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(AVCatalystScrubber *)self setTracking:0, event];
  [(AVCatalystScrubber *)self setHighlighted:0];

  [(AVCatalystScrubber *)self endOrCancelTracking];
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  [(AVCatalystScrubber *)self maximumValue];
  v7 = v6;
  [(AVCatalystScrubber *)self minimumValue];
  v9 = v7 - v8;
  [(AVCatalystScrubber *)self bounds];
  [(AVCatalystScrubber *)self trackRectForBounds:?];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v40 = CGRectGetWidth(v42);
  currentThumbView = [(AVCatalystScrubber *)self currentThumbView];
  [currentThumbView frame];
  v39 = v15;

  [touchCopy locationInView:self];
  v17 = v16;
  [touchCopy previousLocationInView:self];
  v19 = v18;

  [(AVCatalystScrubber *)self center];
  [(AVCatalystScrubber *)self value];
  v21 = v20;
  [(AVCatalystScrubber *)self minimumValue];
  v41 = v9;
  v23 = (v21 - v22) / v9;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinX = CGRectGetMinX(v44);
  if (v17 >= MinX && (vabdd_f64(v17, MinX) >= 2.22044605e-16 ? (v26 = v17 <= MaxX) : (v26 = 0), v26 && vabdd_f64(v17, MaxX) >= 2.22044605e-16))
  {
    v38 = (v17 - v19) / (v40 - v39);
    v27 = fminf(fmaxf(v23 + v38, 0.0), 1.0);
  }

  else
  {
    v27 = roundf(v23);
  }

  [(AVCatalystScrubber *)self minimumValue];
  v29 = v28;
  window = [(AVCatalystScrubber *)self window];
  windowScene = [window windowScene];
  if (windowScene)
  {
    v32 = windowScene;
    window2 = [(AVCatalystScrubber *)self window];
    windowScene2 = [window2 windowScene];
    activationState = [windowScene2 activationState];

    if (!activationState)
    {
      *&v36 = v29 + (v27 * v41);
      [(AVCatalystScrubber *)self setValue:v36];
      [(AVCatalystScrubber *)self sendActionsForControlEvents:4096];
    }
  }

  else
  {
  }

  return 1;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  [(AVCatalystScrubber *)self setHasChangedLocationAtLeastOnce:0];
  [(AVCatalystScrubber *)self setShouldRecoverFromPrecisionScrubbingIfNeeded:0];
  [touchCopy locationInView:self];
  v9 = v8;
  v10 = [(AVCatalystScrubber *)self _shouldTrackTouchAtPoint:?];
  if (v10)
  {
    self->_trackingStartTime = CFAbsoluteTimeGetCurrent();
    self->_didHaveLessThanFullScrubbingSpeedSinceTrackingBegin = 0;
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E695DFF0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__AVCatalystScrubber_beginTrackingWithTouch_withEvent___block_invoke;
    v21[3] = &unk_1E7209DA8;
    objc_copyWeak(&v22, &location);
    v12 = [v11 scheduledTimerWithTimeInterval:1 repeats:v21 block:0.25];
    [(AVCatalystScrubber *)self setUpdateSlowKnobMovementDetectedTimer:v12];

    if ([(AVCatalystScrubber *)self scrubsWhenTappedAnywhere])
    {
      [(AVCatalystScrubber *)self maximumValue];
      v14 = v13;
      [(AVCatalystScrubber *)self minimumValue];
      v16 = v15;
      [(AVCatalystScrubber *)self bounds];
      [(AVCatalystScrubber *)self trackRectForBounds:?];
      v17 = v9 / CGRectGetWidth(v24) * (v14 - v16);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__AVCatalystScrubber_beginTrackingWithTouch_withEvent___block_invoke_2;
      v19[3] = &unk_1E7209A38;
      objc_copyWeak(v20, &location);
      v20[1] = *&v17;
      dispatch_async(MEMORY[0x1E69E96A0], v19);
      objc_destroyWeak(v20);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __55__AVCatalystScrubber_beginTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSlowKnobMovementDetected];
}

void __55__AVCatalystScrubber_beginTrackingWithTouch_withEvent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  *&v3 = v3;
  [WeakRetained setValue:v3];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 sendActionsForControlEvents:4096];
}

- (BOOL)isTracking
{
  v4.receiver = self;
  v4.super_class = AVCatalystScrubber;
  return [(AVCatalystScrubber *)&v4 isTracking]|| [(AVCatalystScrubber *)self isScrollScrubbing];
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = AVCatalystScrubber;
  [(AVCatalystScrubber *)&v5 setEnabled:?];
  if ([(AVCatalystScrubber *)self isTracking]&& !enabled)
  {
    [(AVCatalystScrubber *)self setTracking:0];
    [(AVCatalystScrubber *)self setHighlighted:0];
    [(AVCatalystScrubber *)self sendActionsForControlEvents:256];
  }

  [(AVCatalystScrubber *)self setNeedsLayout];
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setValue:(float)value
{
  v5.receiver = self;
  v5.super_class = AVCatalystScrubber;
  [(AVCatalystScrubber *)&v5 setValue:?];
  if (![(AVCatalystScrubber *)self isScrollScrubbing])
  {
    [(AVCatalystScrubber *)self updateScrollViewContentSizeAndOffsetIfNeeded];
    scrollView = [(AVCatalystScrubber *)self scrollView];
    [(AVCatalystScrubber *)self contentOffsetFromValue];
    [scrollView setContentOffset:?];
  }
}

- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AVCatalystScrubber *)self isTracking])
  {
    return 1;
  }

  return [(AVCatalystScrubber *)self _shouldTrackTouchAtPoint:x, y];
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVCatalystScrubber *)self invalidateIntrinsicContentSize];

    [(AVCatalystScrubber *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVCatalystScrubber *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(AVCatalystScrubber *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    [(AVCatalystScrubber *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVCatalystScrubber *)self isCollapsed]|| ![(AVCatalystScrubber *)self isIncluded])
  {
    return 1;
  }

  return [(AVCatalystScrubber *)self isRemoved];
}

- (void)layoutAttributesDidChange
{
  layoutAttributes = [(AVCatalystScrubber *)self layoutAttributes];
  -[AVCatalystScrubber setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)setShowsTimelineMarkers:(BOOL)markers
{
  if (self->_showsTimelineMarkers != markers)
  {
    markersCopy = markers;
    self->_showsTimelineMarkers = markers;
    interstitialOverlayViews = [(AVCatalystScrubber *)self interstitialOverlayViews];
    v6 = [interstitialOverlayViews count];

    if (v6)
    {
      v7 = 0;
      do
      {
        interstitialOverlayViews2 = [(AVCatalystScrubber *)self interstitialOverlayViews];
        v9 = [interstitialOverlayViews2 objectAtIndex:v7];

        [v9 setHidden:!markersCopy];
        ++v7;
        interstitialOverlayViews3 = [(AVCatalystScrubber *)self interstitialOverlayViews];
        v11 = [interstitialOverlayViews3 count];
      }

      while (v11 > v7);
    }
  }
}

- (void)setInterstitialDisplayTimes:(id)times
{
  timesCopy = times;
  if (self->_interstitialDisplayTimes != timesCopy)
  {
    objc_storeStrong(&self->_interstitialDisplayTimes, times);
    interstitialOverlayViews = [(AVCatalystScrubber *)self interstitialOverlayViews];
    [interstitialOverlayViews removeAllObjects];

    if ([(NSArray *)timesCopy count])
    {
      v6 = 0;
      do
      {
        v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [v7 setBackgroundColor:whiteColor];

        [v7 setUserInteractionEnabled:0];
        interstitialOverlayViews2 = [(AVCatalystScrubber *)self interstitialOverlayViews];
        [interstitialOverlayViews2 addObject:v7];

        ++v6;
      }

      while ([(NSArray *)timesCopy count]> v6);
    }
  }
}

- (void)setPhotosensitiveDisplayTimes:(id)times
{
  v23 = *MEMORY[0x1E69E9840];
  timesCopy = times;
  if (self->_photosensitiveDisplayTimes != timesCopy)
  {
    objc_storeStrong(&self->_photosensitiveDisplayTimes, times);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    photosensitiveOverlayViews = [(AVCatalystScrubber *)self photosensitiveOverlayViews];
    v7 = [photosensitiveOverlayViews countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(photosensitiveOverlayViews);
          }

          [*(*(&v18 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [photosensitiveOverlayViews countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    photosensitiveOverlayViews2 = [(AVCatalystScrubber *)self photosensitiveOverlayViews];
    [photosensitiveOverlayViews2 removeAllObjects];

    if ([(NSArray *)timesCopy count])
    {
      v12 = 0;
      do
      {
        v13 = [(NSArray *)timesCopy objectAtIndex:v12];
        [v13 risk];
        v15 = v14;

        if (v15 >= 0.1)
        {
          v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
          [v16 setUserInteractionEnabled:0];
          photosensitiveOverlayViews3 = [(AVCatalystScrubber *)self photosensitiveOverlayViews];
          [photosensitiveOverlayViews3 addObject:v16];
        }

        ++v12;
      }

      while ([(NSArray *)timesCopy count]> v12);
    }
  }
}

- (double)timeIntervalSinceTrackingEnded
{
  Current = CFAbsoluteTimeGetCurrent();
  [(AVCatalystScrubber *)self timestampWhenTrackingEnded];
  return Current - v4;
}

- (float)clampedEstimatedFrameRate
{
  [(AVCatalystScrubber *)self estimatedFrameRate];
  v3 = 30.0;
  [(AVCatalystScrubber *)self estimatedFrameRate];
  if (v4 > 0.0)
  {
    return fminf(fmaxf(self->_estimatedFrameRate, 10.0), 480.0);
  }

  return v3;
}

- (void)setLoadedTimeRanges:(id)ranges
{
  if (self->_loadedTimeRanges != ranges)
  {
    v4 = [ranges copy];
    loadedTimeRanges = self->_loadedTimeRanges;
    self->_loadedTimeRanges = v4;

    [(AVCatalystScrubber *)self setNeedsLayout];
  }
}

- (NSMutableArray)previousScrubberVelocities
{
  previousScrubberVelocities = self->_previousScrubberVelocities;
  if (!previousScrubberVelocities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_previousScrubberVelocities;
    self->_previousScrubberVelocities = array;

    previousScrubberVelocities = self->_previousScrubberVelocities;
  }

  return previousScrubberVelocities;
}

- (UIView)loadedTrackOverlayView
{
  loadedTrackOverlayView = self->_loadedTrackOverlayView;
  if (!loadedTrackOverlayView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_loadedTrackOverlayView;
    self->_loadedTrackOverlayView = v4;

    v6 = self->_loadedTrackOverlayView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v6 setBackgroundColor:whiteColor];

    [(UIView *)self->_loadedTrackOverlayView setUserInteractionEnabled:0];
    loadedTrackOverlayView = self->_loadedTrackOverlayView;
  }

  return loadedTrackOverlayView;
}

- (AVCatalystScrubber)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = AVCatalystScrubber;
  v3 = [(AVCatalystScrubber *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVCatalystScrubber *)v3 setSemanticContentAttribute:1];
    v4->_included = 1;
    *&v4->_hitRectInsets.top = AVDefaultHitRectInsets_28318;
    *&v4->_hitRectInsets.bottom = unk_18B6EC6E0;
    v4->_scrubsWhenTappedAnywhere = 1;
    v4->_scrubberEnabledStatus = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    interstitialOverlayViews = v4->_interstitialOverlayViews;
    v4->_interstitialOverlayViews = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    photosensitiveOverlayViews = v4->_photosensitiveOverlayViews;
    v4->_photosensitiveOverlayViews = v7;

    v9 = objc_alloc_init(AVLayoutItemAttributes);
    layoutAttributes = v4->_layoutAttributes;
    v4->_layoutAttributes = v9;

    v11 = v4->_layoutAttributes;
    [(AVCatalystScrubber *)v4 intrinsicContentSize];
    [(AVLayoutItemAttributes *)v11 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setCollapsed:[(AVCatalystScrubber *)v4 isCollapsed]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setIncluded:[(AVCatalystScrubber *)v4 isIncluded]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setHasFlexibleContentSize:0];
    v12 = v4->_layoutAttributes;
    accessibilityIdentifier = [(AVCatalystScrubber *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v12 setAccessibilityIdentifier:accessibilityIdentifier];

    v14 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v4->_scrollView;
    v4->_scrollView = v14;

    [(UIScrollView *)v4->_scrollView setBounces:0];
    [(UIScrollView *)v4->_scrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView setShowsHorizontalScrollIndicator:0];
    [(AVCatalystScrubber *)v4 addSubview:v4->_scrollView];
  }

  return v4;
}

@end