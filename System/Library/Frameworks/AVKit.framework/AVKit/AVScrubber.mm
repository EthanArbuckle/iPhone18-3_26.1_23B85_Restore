@interface AVScrubber
- (AVScrubber)initWithFrame:(CGRect)a3;
- (AVScrubberDelegate)delegate;
- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)a3;
- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)isTracking;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)contentOffsetFromValue;
- (CGRect)hitRect;
- (CGRect)maximumValueImageRectForBounds:(CGRect)a3;
- (CGRect)minimumValueImageRectForBounds:(CGRect)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)hitRectInsets;
- (NSMutableArray)previousScrubberVelocities;
- (NSString)localizedScrubbingSpeedName;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImageView)currentThumbView;
- (UISelectionFeedbackGenerator)feedbackGenerator;
- (UIView)loadedTrackOverlayView;
- (double)normalizedScrollOffset;
- (double)timeIntervalSinceTrackingEnded;
- (float)_normalizeSliderValue:(float)a3;
- (float)clampedEstimatedFrameRate;
- (float)duration;
- (float)normalizedPosition;
- (float)valueFromScrollView;
- (id)createThumbView;
- (void)_layoutPhotosensitiveRegions:(float)a3;
- (void)_layoutTimeLineMarkerViews:(float)a3;
- (void)_updateLayoutItem;
- (void)_updateSlowKnobMovementDetected;
- (void)_updateSlowKnobMovementDetectedForTargetValue:(float)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endOrCancelTracking;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setCollapsed:(BOOL)a3;
- (void)setCurrentThumbView:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setInterstitialDisplayTimes:(id)a3;
- (void)setLoadedTimeRanges:(id)a3;
- (void)setPhotosensitiveDisplayTimes:(id)a3;
- (void)setRemoved:(BOOL)a3;
- (void)setScrubberParentHeight:(double)a3;
- (void)setShowsTimelineMarkers:(BOOL)a3;
- (void)setValue:(float)a3;
@end

@implementation AVScrubber

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

- (AVScrubberDelegate)delegate
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

- (void)_layoutTimeLineMarkerViews:(float)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(AVScrubber *)self _minTrackView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(AVScrubber *)self _minTrackView];
  [(AVScrubber *)self convertRect:v15 fromView:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = [(AVScrubber *)self interstitialDisplayTimes];
  v25 = [v24 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
          objc_enumerationMutation(v24);
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
      v26 = [v24 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v26);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = [(AVScrubber *)self interstitialOverlayViews];
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
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
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v47 + 1) + 8 * v37);
        v39 = [v5 objectAtIndexedSubscript:v35];
        [v39 floatValue];
        v41 = v40;
        [(AVScrubber *)self minimumValue];
        v43 = (v41 - v42) / a3;

        [(AVScrubber *)self bounds];
        [(AVScrubber *)self trackRectForBounds:?];
        v44 = CGRectGetWidth(v62) * v43;
        v63.origin.x = v17;
        v63.origin.y = v19;
        v63.size.width = v21;
        v63.size.height = v23;
        MinY = CGRectGetMinY(v63);
        v46 = [v38 layer];
        [v46 setCornerRadius:2.5];

        [v38 setFrame:{v44, MinY, 5.0, 5.0}];
        [(AVScrubber *)self insertSubview:v38 atIndex:0];
        ++v35;
        ++v37;
      }

      while (v34 != v37);
      v34 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v34);
  }
}

- (void)_layoutPhotosensitiveRegions:(float)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = [(AVScrubber *)self photosensitiveDisplayTimes];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(AVScrubber *)self _minTrackView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(AVScrubber *)self _minTrackView];
    [(AVScrubber *)self convertRect:v15 fromView:v8, v10, v12, v14];
    v58 = v17;
    v59 = v16;
    v56 = v19;
    v57 = v18;

    [(AVScrubber *)self bounds];
    [(AVScrubber *)self trackRectForBounds:?];
    Width = CGRectGetWidth(v70);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(AVScrubber *)self photosensitiveOverlayViews];
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
          v24 = [(AVScrubber *)self photosensitiveDisplayTimes];
          v25 = [v24 objectAtIndex:v21];

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
          [(AVScrubber *)self _normalizeSliderValue:v27];
          v30 = v29;
          v31 = Seconds + v28;
          *&v31 = Seconds + v28;
          [(AVScrubber *)self _normalizeSliderValue:v31];
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
          v38 = [v23 layer];
          [v38 setCornerRadius:2.5];

          v39 = [v25 colors];
          v40 = MEMORY[0x1E69DC888];
          v41 = [v39 objectAtIndexedSubscript:0];
          [v41 doubleValue];
          v43 = v42;
          v44 = [v39 objectAtIndexedSubscript:1];
          [v44 doubleValue];
          v46 = v45;
          [v39 objectAtIndexedSubscript:2];
          v48 = v47 = v23;
          [v48 doubleValue];
          v50 = v49;
          v51 = [v39 objectAtIndexedSubscript:3];
          [v51 doubleValue];
          v53 = [v40 colorWithRed:v43 green:v46 blue:v50 alpha:v52];
          [v47 setBackgroundColor:v53];

          [v47 setFrame:{v36, MinY, v35, 5.0}];
          [(AVScrubber *)self insertSubview:v47 atIndex:0];
          v21 = v61 + 1;
        }

        v60 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v60);
    }
  }
}

- (float)_normalizeSliderValue:(float)a3
{
  [(AVScrubber *)self maximumValue];
  v6 = v5;
  [(AVScrubber *)self minimumValue];
  v8 = v6 - v7;
  result = 0.0;
  if (v8 > 0.0)
  {
    [(AVScrubber *)self minimumValue];
    return (a3 - v10) / v8;
  }

  return result;
}

- (void)_updateLayoutItem
{
  v3 = [(AVScrubber *)self layoutAttributes];
  [(AVScrubber *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVScrubber *)self layoutAttributes];
  if ([(AVScrubber *)self isIncluded])
  {
    v5 = [(AVScrubber *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  v6 = [(AVScrubber *)self layoutAttributes];
  [v6 setCollapsed:{-[AVScrubber isCollapsed](self, "isCollapsed")}];
}

- (void)_updateSlowKnobMovementDetectedForTargetValue:(float)a3
{
  v66 = *MEMORY[0x1E69E9840];
  if (![(AVScrubber *)self slowKnobMovementDetected]&& !self->_didHaveLessThanFullScrubbingSpeedSinceTrackingBegin)
  {
    [(AVScrubber *)self maximumValue];
    v6 = v5;
    [(AVScrubber *)self minimumValue];
    v8 = v7;
    [(AVScrubber *)self bounds];
    [(AVScrubber *)self trackRectForBounds:?];
    Width = CGRectGetWidth(v67);
    objc_initWeak(&location, self);
    v10 = [(AVScrubber *)self updateSlowKnobMovementDetectedTimer];
    [v10 invalidate];

    v11 = MEMORY[0x1E695DFF0];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __60__AVScrubber__updateSlowKnobMovementDetectedForTargetValue___block_invoke;
    v61[3] = &unk_1E7209DA8;
    objc_copyWeak(&v62, &location);
    v12 = [v11 scheduledTimerWithTimeInterval:1 repeats:v61 block:0.25];
    [(AVScrubber *)self setUpdateSlowKnobMovementDetectedTimer:v12];

    Current = CFAbsoluteTimeGetCurrent();
    v14 = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v15 = [(AVScrubber *)self previousScrubberVelocities];
    v16 = [v15 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v16)
    {
      v17 = *v58;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v58 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v57 + 1) + 8 * i);
          [v19 timestamp];
          if (Current - v20 > 1.5)
          {
            [v14 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v16);
    }

    v21 = [(AVScrubber *)self previousScrubberVelocities];
    [v21 removeObjectsInArray:v14];

    previousValue = self->_previousValue;
    previousValueChangeTime = self->_previousValueChangeTime;
    currentValueChangedTime = self->_currentValueChangedTime;
    v25 = v6 - v8;
    if (((LODWORD(v25) & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E)
    {
      v26 = objc_alloc_init(AVScrubberVelocity);
      [(AVScrubberVelocity *)v26 setTimestamp:Current];
      [(AVScrubberVelocity *)v26 setVelocity:(Width + -9.0) * ((a3 - previousValue) / v25) / (currentValueChangedTime - previousValueChangeTime)];
      v27 = [(AVScrubber *)self previousScrubberVelocities];
      [v27 addObject:v26];
    }

    self->_previousValueChangeTime = self->_currentValueChangedTime;
    self->_currentValueChangedTime = Current;
    self->_previousValue = a3;
    if (Current - self->_trackingStartTime <= 1.0)
    {
      goto LABEL_40;
    }

    v28 = [(AVScrubber *)self previousScrubberVelocities];
    v29 = [v28 count] == 0;

    if (v29)
    {
      goto LABEL_40;
    }

    v30 = [(AVScrubber *)self previousScrubberVelocities];
    v31 = [v30 objectAtIndexedSubscript:0];
    [v31 velocity];
    v33 = v32;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v34 = [(AVScrubber *)self previousScrubberVelocities];
    v35 = [v34 countByEnumeratingWithState:&v53 objects:v64 count:16];
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
            objc_enumerationMutation(v34);
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
        v35 = [v34 countByEnumeratingWithState:&v53 objects:v64 count:16];
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

    [(AVScrubber *)self setSlowKnobMovementDetected:1];
    v52 = [(AVScrubber *)self delegate];
    [v52 scrubberSlowKnobMovementDetected:self];

LABEL_40:
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }
}

void __60__AVScrubber__updateSlowKnobMovementDetectedForTargetValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSlowKnobMovementDetected];
}

- (void)_updateSlowKnobMovementDetected
{
  [(AVScrubber *)self value];

  [(AVScrubber *)self _updateSlowKnobMovementDetectedForTargetValue:?];
}

- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVScrubber *)self scrubsWhenTappedAnywhere])
  {
    [(AVScrubber *)self hitRect];
    v34.x = x;
    v34.y = y;
    v6 = CGRectContainsPoint(v36, v34);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AVScrubber *)self currentThumbView];
  [(AVScrubber *)self convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = [(AVScrubber *)self currentThumbView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(AVScrubber *)self _thumbHitEdgeInsets];
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
  LOBYTE(v12) = CGRectContainsPoint(v37, v35);
  v29 = [(AVScrubber *)self _trackEnabled];
  if ((v12 & 1) != 0 || v29)
  {
    [(AVScrubber *)self maximumValue];
    v31 = v30;
    [(AVScrubber *)self minimumValue];
    if (v31 <= v32)
    {
      return 0;
    }

    else
    {
      [(AVScrubber *)self bounds];
      [(AVScrubber *)self trackRectForBounds:?];
      return CGRectGetWidth(v38) > 0.0;
    }
  }

  return v6;
}

- (CGPoint)contentOffsetFromValue
{
  v3 = [(AVScrubber *)self scrollView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(AVScrubber *)self scrollView];
  [v6 bounds];
  v8 = v5 - v7;

  [(AVScrubber *)self normalizedPosition];
  v10 = v8 * v9;
  v11 = 0.0;
  result.y = v11;
  result.x = v10;
  return result;
}

- (float)valueFromScrollView
{
  [(AVScrubber *)self normalizedScrollOffset];
  v4 = v3;
  [(AVScrubber *)self duration];
  v6 = v5;
  [(AVScrubber *)self minimumValue];
  return v7 + v4 * v6;
}

- (double)normalizedScrollOffset
{
  v3 = [(AVScrubber *)self scrollView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(AVScrubber *)self scrollView];
  [v6 bounds];
  v8 = v5 - v7;

  v9 = 0.0;
  if (v8 > 0.0)
  {
    v10 = [(AVScrubber *)self scrollView];
    [v10 contentOffset];
    v9 = 1.0 - v11 / v8;
  }

  return v9;
}

- (float)normalizedPosition
{
  [(AVScrubber *)self duration];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    [(AVScrubber *)self value];
    v7 = v6;
    [(AVScrubber *)self minimumValue];
    v9 = v7 - v8;
    [(AVScrubber *)self duration];
    return 1.0 - (v9 / v10);
  }

  return result;
}

- (float)duration
{
  [(AVScrubber *)self maximumValue];
  v4 = v3;
  [(AVScrubber *)self minimumValue];
  return v4 - v5;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AVScrubber *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v24.receiver = self;
  v24.super_class = AVScrubber;
  [(AVScrubber *)&v24 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVScrubber *)self hitRectInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(AVScrubber *)self effectiveUserInterfaceLayoutDirection]== 1)
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
  v67.receiver = self;
  v67.super_class = AVScrubber;
  [(AVScrubber *)&v67 layoutSubviews];
  v3 = [(AVScrubber *)self _minTrackView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AVScrubber *)self _minTrackView];
  [(AVScrubber *)self convertRect:v12 fromView:v5, v7, v9, v11];
  v66 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  MaxX = *MEMORY[0x1E695F058];
  MinY = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  Height = *(MEMORY[0x1E695F058] + 24);
  v24 = [(AVScrubber *)self loadedTimeRanges];
  [(AVScrubber *)self maximumValue];
  LODWORD(v5) = v25;
  [(AVScrubber *)self minimumValue];
  v27 = *&v5 - v26;
  if (v27 <= 0.0 || ![v24 count])
  {
    goto LABEL_12;
  }

  [(AVScrubber *)self value];
  v29 = v28;
  [(AVScrubber *)self minimumValue];
  v31 = v30;
  if ([v24 count] < 2)
  {
    goto LABEL_11;
  }

  v32 = 0;
  v33 = (v29 - v31) / v27;
  while (1)
  {
    v34 = [v24 objectAtIndexedSubscript:v32];
    [v34 floatValue];
    if (v35 <= v33)
    {
      break;
    }

    ++v32;
LABEL_8:
    if (v32 >= [v24 count] >> 1)
    {
      goto LABEL_11;
    }
  }

  v36 = [v24 objectAtIndexedSubscript:++v32];
  [v36 floatValue];
  v38 = v37;

  if (v38 <= v33)
  {
    goto LABEL_8;
  }

  v39 = [v24 objectAtIndexedSubscript:v32];
  [v39 floatValue];

LABEL_11:
  [(AVScrubber *)self bounds];
  [(AVScrubber *)self trackRectForBounds:?];
  CGRectGetWidth(v68);
  v69.origin.x = v66;
  v69.origin.y = v15;
  v69.size.width = v17;
  v69.size.height = v19;
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = v66;
  v70.origin.y = v15;
  v70.size.width = v17;
  v70.size.height = v19;
  MinY = CGRectGetMinY(v70);
  UIRoundToViewScale();
  v41 = v40;
  v71.origin.x = v66;
  v71.origin.y = v15;
  v71.size.width = v17;
  v71.size.height = v19;
  v23 = fmax(v41 - CGRectGetWidth(v71), 0.0);
  v72.origin.x = v66;
  v72.origin.y = v15;
  v72.size.width = v17;
  v72.size.height = v19;
  Height = CGRectGetHeight(v72);
LABEL_12:
  v42 = [(AVScrubber *)self loadedTrackOverlayView];
  [v42 setFrame:{MaxX, MinY, v23, Height}];

  *&v43 = v27;
  [(AVScrubber *)self _layoutTimeLineMarkerViews:v43];
  *&v44 = v27;
  [(AVScrubber *)self _layoutPhotosensitiveRegions:v44];
  v45 = [(AVScrubber *)self currentThumbView];
  [v45 setHidden:{-[AVScrubber isEnabled](self, "isEnabled") ^ 1}];

  v46 = [(AVScrubber *)self _maxTrackView];
  [v46 _cornerRadius];
  v48 = v47;

  if (v48 == 0.0)
  {
    v49 = [(AVScrubber *)self _minTrackView];
    v50 = [v49 layer];
    v51 = *MEMORY[0x1E69796E0];
    [v50 setCornerCurve:*MEMORY[0x1E69796E0]];

    v52 = [(AVScrubber *)self _minTrackView];
    v53 = [v52 layer];
    [v53 setCornerRadius:2.5];

    v54 = [(AVScrubber *)self _minTrackView];
    v55 = [v54 layer];
    [v55 setMaskedCorners:5];

    v56 = [(AVScrubber *)self _maxTrackView];
    v57 = [v56 layer];
    [v57 setCornerCurve:v51];

    v58 = [(AVScrubber *)self _maxTrackView];
    v59 = [v58 layer];
    [v59 setCornerRadius:2.5];

    v60 = [(AVScrubber *)self _maxTrackView];
    v61 = [v60 layer];
    [v61 setMaskedCorners:10];

    v62 = [(AVScrubber *)self currentThumbView];
    v63 = [(AVScrubber *)self loadedTrackOverlayView];
    v64 = [(AVScrubber *)self interstitialOverlayViews];
    [AVBackdropView configureSlider:self thumbView:v62 loadedTrackView:v63 withTimelineMarkers:v64];

    [(UIView *)self avkit_makeSubtreeDisallowGroupBlending];
  }

  if (([(AVScrubber *)self isEnabled]& 1) == 0)
  {
    [(AVScrubber *)self setAlpha:1.0];
  }

  if (![(AVScrubber *)self isScrollScrubbing])
  {
    [(AVScrubber *)self updateScrollViewContentSizeAndOffsetIfNeeded];
    v65 = [(AVScrubber *)self scrollView];
    [(AVScrubber *)self contentOffsetFromValue];
    [v65 setContentOffset:?];
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
  [(AVScrubber *)self setTimestampWhenTrackingEnded:CFAbsoluteTimeGetCurrent()];
  [(AVScrubber *)self setScrubbingSpeed:0];
  [(AVScrubber *)self setSlowKnobMovementDetected:0];
  v3 = [(AVScrubber *)self previousScrubberVelocities];
  [v3 removeAllObjects];

  v4 = [(AVScrubber *)self updateSlowKnobMovementDetectedTimer];
  [v4 invalidate];

  [(AVScrubber *)self setUpdateSlowKnobMovementDetectedTimer:0];
  self->_trackingStartTime = NAN;
  self->_previousValue = NAN;
  self->_previousValueChangeTime = NAN;
  self->_currentValueChangedTime = NAN;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVScrubber;
  [(AVScrubber *)&v4 cancelTrackingWithEvent:a3];
  [(AVScrubber *)self endOrCancelTracking];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(AVScrubber *)self setTracking:0, a4];
  [(AVScrubber *)self setHighlighted:0];

  [(AVScrubber *)self endOrCancelTracking];
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  if (![(AVScrubber *)self hasChangedLocationAtLeastOnce])
  {
    [v5 locationInView:self];
    v37 = v36;
    [v5 previousLocationInView:self];
    [(AVScrubber *)self setHasChangedLocationAtLeastOnce:v37 - v38 != 0.0];
    goto LABEL_29;
  }

  [(AVScrubber *)self maximumValue];
  v7 = v6;
  [(AVScrubber *)self minimumValue];
  v9 = v7 - v8;
  [(AVScrubber *)self bounds];
  [(AVScrubber *)self trackRectForBounds:?];
  v10 = CGRectGetWidth(v64) + -9.0;
  [v5 locationInView:self];
  v12 = v11;
  v14 = v13;
  [v5 previousLocationInView:self];
  v63 = v12;
  v16 = v12 - v15;
  [(AVScrubber *)self center];
  v18 = v14 - v17;
  v19 = [(AVScrubber *)self traitCollection];
  [v19 displayScale];
  v21 = v20;

  [(AVScrubber *)self value];
  v23 = v22;
  [(AVScrubber *)self minimumValue];
  v25 = v9;
  v26 = (v23 - v24) / v9;
  v28 = [(AVScrubber *)self canChangeScrubbingSpeed];
  v29 = 1.0;
  v62 = v18;
  if (v28)
  {
    v30 = fabs(v18);
    if (v30 <= 196.0)
    {
      if (v30 <= 140.0)
      {
        if (v30 <= 84.0)
        {
          v39 = 0;
          v35 = 0;
          v34 = 1.0;
          v31 = v25;
          goto LABEL_16;
        }

        v34 = 0.5;
        v35 = 1;
      }

      else
      {
        v34 = 0.25;
        v35 = 2;
      }

      v31 = v25;
    }

    else
    {
      [(AVScrubber *)self clampedEstimatedFrameRate];
      v31 = v25;
      v33 = v10 / (v25 * v32);
      if (v33 <= 0.125)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0.125;
      }

      v35 = 3;
    }

    v39 = 1;
    [(AVScrubber *)self setShouldRecoverFromPrecisionScrubbingIfNeeded:1, *&v62];
LABEL_16:
    if ([(AVScrubber *)self scrubbingSpeed]!= v35)
    {
      [(AVScrubber *)self setScrubbingSpeed:v35];
      v40 = [(AVScrubber *)self feedbackGenerator];
      [v40 selectionChanged];

      self->_didHaveLessThanFullScrubbingSpeedSinceTrackingBegin |= v39;
    }

    v29 = 1.0;
    goto LABEL_19;
  }

  v35 = 0;
  v34 = 1.0;
  v31 = v25;
LABEL_19:
  v41 = v10 * v21;
  v27 = v16 / v10;
  v42 = fmin(fmax(v26 + v34 * v27, 0.0), v29);
  if (!v35)
  {
    if ([(AVScrubber *)self shouldRecoverFromPrecisionScrubbingIfNeeded])
    {
      v53 = (v63 + -4.5) / v10;
      if (1.0 / v10 >= vabds_f32(v53, v42))
      {
        [(AVScrubber *)self setShouldRecoverFromPrecisionScrubbingIfNeeded:0, 1.0, 1.0 / v10];
      }

      else
      {
        v54 = 1.0 - fmin(fmax(fabs(v62) / 84.0, 0.0), 1.0);
        v55 = powf(v54, 3.0);
        v56 = v55 + v55;
        if (v56 > 1.0)
        {
          v56 = 1.0;
        }

        v42 = fminf(fmaxf(v26 + ((v53 - v26) * v56), 0.0), 1.0);
      }
    }

    else
    {
      [v5 locationInView:self];
      v59 = v58;
      [(AVScrubber *)self bounds];
      [(AVScrubber *)self trackRectForBounds:?];
      if (v59 <= CGRectGetMinX(v65) || ([v5 locationInView:self], v61 = v60, -[AVScrubber bounds](self, "bounds"), -[AVScrubber trackRectForBounds:](self, "trackRectForBounds:"), v61 >= CGRectGetMaxX(v66)))
      {
        v42 = round(v26);
      }
    }
  }

  [(AVScrubber *)self minimumValue];
  v44 = v43 + (v42 * v31);
  *&v45 = v44;
  [(AVScrubber *)self _updateSlowKnobMovementDetectedForTargetValue:v45];
  [(AVScrubber *)self setResolution:v41 / v34];
  v46 = [(AVScrubber *)self window];
  v47 = [v46 windowScene];
  if (v47)
  {
    v48 = v47;
    v49 = [(AVScrubber *)self window];
    v50 = [v49 windowScene];
    v51 = [v50 activationState];

    if (!v51)
    {
      *&v52 = v44;
      [(AVScrubber *)self setValue:v52];
      [(AVScrubber *)self sendActionsForControlEvents:4096];
    }
  }

  else
  {
  }

LABEL_29:

  return 1;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVScrubber *)self setHasChangedLocationAtLeastOnce:0];
  [(AVScrubber *)self setShouldRecoverFromPrecisionScrubbingIfNeeded:0];
  [(AVScrubber *)self setScrubbingSpeed:0];
  [v6 locationInView:self];
  v9 = v8;
  v11 = v10;
  if ([v6 _isPointerTouch])
  {
    v12 = [(AVScrubber *)self currentThumbView];
    [v12 frame];
    v28.x = v9;
    v28.y = v11;
    [(AVScrubber *)self setScrubsWhenTappedAnywhere:!CGRectContainsPoint(v29, v28)];
  }

  else
  {
    [(AVScrubber *)self setScrubsWhenTappedAnywhere:0];
  }

  v13 = [(AVScrubber *)self _shouldTrackTouchAtPoint:v9, v11];
  if (v13)
  {
    v14 = [(AVScrubber *)self feedbackGenerator];
    [v14 prepare];

    self->_trackingStartTime = CFAbsoluteTimeGetCurrent();
    self->_didHaveLessThanFullScrubbingSpeedSinceTrackingBegin = 0;
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E695DFF0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __47__AVScrubber_beginTrackingWithTouch_withEvent___block_invoke;
    v25[3] = &unk_1E7209DA8;
    objc_copyWeak(&v26, &location);
    v16 = [v15 scheduledTimerWithTimeInterval:1 repeats:v25 block:0.25];
    [(AVScrubber *)self setUpdateSlowKnobMovementDetectedTimer:v16];

    if ([(AVScrubber *)self scrubsWhenTappedAnywhere])
    {
      [(AVScrubber *)self maximumValue];
      v18 = v17;
      [(AVScrubber *)self minimumValue];
      v20 = v19;
      [(AVScrubber *)self bounds];
      [(AVScrubber *)self trackRectForBounds:?];
      v21 = v9 / CGRectGetWidth(v30) * (v18 - v20);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __47__AVScrubber_beginTrackingWithTouch_withEvent___block_invoke_2;
      v23[3] = &unk_1E7209A38;
      objc_copyWeak(v24, &location);
      v24[1] = *&v21;
      dispatch_async(MEMORY[0x1E69E96A0], v23);
      objc_destroyWeak(v24);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __47__AVScrubber_beginTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSlowKnobMovementDetected];
}

void __47__AVScrubber_beginTrackingWithTouch_withEvent___block_invoke_2(uint64_t a1)
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
  v4.super_class = AVScrubber;
  return [(AVScrubber *)&v4 isTracking]|| [(AVScrubber *)self isScrollScrubbing];
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVScrubber;
  [(AVScrubber *)&v5 setEnabled:?];
  if ([(AVScrubber *)self isTracking]&& !a3)
  {
    [(AVScrubber *)self setTracking:0];
    [(AVScrubber *)self setHighlighted:0];
    [(AVScrubber *)self sendActionsForControlEvents:256];
  }

  [(AVScrubber *)self setNeedsLayout];
}

- (id)createThumbView
{
  v5.receiver = self;
  v5.super_class = AVScrubber;
  v3 = [(AVScrubber *)&v5 createThumbView];
  [(AVScrubber *)self setCurrentThumbView:v3];
  return v3;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGRectGetHeight(a3);
  UIRoundToViewScale();
  v8 = v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, 0.0, v8);
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = 9.0;
  if (([(AVScrubber *)self isEnabled:a3.origin.x]& 1) == 0)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v10 = CGRectGetHeight(v26);
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetWidth(v27);
  [(AVScrubber *)self minimumValue];
  [(AVScrubber *)self maximumValue];
  [(AVScrubber *)self minimumValue];
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectGetMinX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetMidY(v29);
  UIPointRoundToViewScale();
  v12 = v11;
  v14 = v13;
  v15 = *MEMORY[0x1E69796E0];
  v16 = [(AVScrubber *)self currentThumbView];
  v17 = [v16 layer];
  [v17 setCornerCurve:v15];

  v30.origin.x = v12;
  v30.origin.y = v14;
  v30.size.width = v10;
  v30.size.height = v10;
  CGRectGetHeight(v30);
  UIFloorToViewScale();
  v19 = v18;
  v20 = [(AVScrubber *)self currentThumbView];
  v21 = [v20 layer];
  [v21 setCornerRadius:v19];

  v22 = v12;
  v23 = v14;
  v24 = v10;
  v25 = v10;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)a3
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

- (CGRect)minimumValueImageRectForBounds:(CGRect)a3
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

- (void)setValue:(float)a3
{
  v5.receiver = self;
  v5.super_class = AVScrubber;
  [(AVScrubber *)&v5 setValue:?];
  if (![(AVScrubber *)self isScrollScrubbing])
  {
    [(AVScrubber *)self updateScrollViewContentSizeAndOffsetIfNeeded];
    v4 = [(AVScrubber *)self scrollView];
    [(AVScrubber *)self contentOffsetFromValue];
    [v4 setContentOffset:?];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(AVScrubber *)self isCollapsedOrExcluded];
  [(AVScrubber *)self extrinsicContentSize];
  if (v3)
  {
    v4 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVScrubber *)self isTracking])
  {
    return 1;
  }

  return [(AVScrubber *)self _shouldTrackTouchAtPoint:x, y];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVScrubber *)self invalidateIntrinsicContentSize];

    [(AVScrubber *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVScrubber *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(AVScrubber *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVScrubber *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVScrubber *)self isCollapsed]|| ![(AVScrubber *)self isIncluded])
  {
    return 1;
  }

  return [(AVScrubber *)self isRemoved];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVScrubber *)self layoutAttributes];
  -[AVScrubber setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setShowsTimelineMarkers:(BOOL)a3
{
  if (self->_showsTimelineMarkers != a3)
  {
    v3 = a3;
    self->_showsTimelineMarkers = a3;
    v5 = [(AVScrubber *)self interstitialOverlayViews];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(AVScrubber *)self interstitialOverlayViews];
        v9 = [v8 objectAtIndex:v7];

        [v9 setHidden:!v3];
        ++v7;
        v10 = [(AVScrubber *)self interstitialOverlayViews];
        v11 = [v10 count];
      }

      while (v11 > v7);
    }
  }
}

- (void)setInterstitialDisplayTimes:(id)a3
{
  v10 = a3;
  if (self->_interstitialDisplayTimes != v10)
  {
    objc_storeStrong(&self->_interstitialDisplayTimes, a3);
    v5 = [(AVScrubber *)self interstitialOverlayViews];
    [v5 removeAllObjects];

    if ([(NSArray *)v10 count])
    {
      v6 = 0;
      do
      {
        v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        v8 = [MEMORY[0x1E69DC888] whiteColor];
        [v7 setBackgroundColor:v8];

        [v7 setUserInteractionEnabled:0];
        v9 = [(AVScrubber *)self interstitialOverlayViews];
        [v9 addObject:v7];

        ++v6;
      }

      while ([(NSArray *)v10 count]> v6);
    }
  }
}

- (void)setPhotosensitiveDisplayTimes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_photosensitiveDisplayTimes != v5)
  {
    objc_storeStrong(&self->_photosensitiveDisplayTimes, a3);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(AVScrubber *)self photosensitiveOverlayViews];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v18 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v11 = [(AVScrubber *)self photosensitiveOverlayViews];
    [v11 removeAllObjects];

    if ([(NSArray *)v5 count])
    {
      v12 = 0;
      do
      {
        v13 = [(NSArray *)v5 objectAtIndex:v12];
        [v13 risk];
        v15 = v14;

        if (v15 >= 0.1)
        {
          v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
          [v16 setUserInteractionEnabled:0];
          v17 = [(AVScrubber *)self photosensitiveOverlayViews];
          [v17 addObject:v16];
        }

        ++v12;
      }

      while ([(NSArray *)v5 count]> v12);
    }
  }
}

- (double)timeIntervalSinceTrackingEnded
{
  Current = CFAbsoluteTimeGetCurrent();
  [(AVScrubber *)self timestampWhenTrackingEnded];
  return Current - v4;
}

- (void)setCurrentThumbView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentThumbView);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_currentThumbView, obj);
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [obj setBackgroundColor:v6];
  }
}

- (NSString)localizedScrubbingSpeedName
{
  v2 = [(AVScrubber *)self scrubbingSpeed];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = AVLocalizedString(off_1E720A188[v2]);
  }

  return v3;
}

- (float)clampedEstimatedFrameRate
{
  [(AVScrubber *)self estimatedFrameRate];
  v3 = 30.0;
  [(AVScrubber *)self estimatedFrameRate];
  if (v4 > 0.0)
  {
    return fminf(fmaxf(self->_estimatedFrameRate, 10.0), 480.0);
  }

  return v3;
}

- (void)setLoadedTimeRanges:(id)a3
{
  if (self->_loadedTimeRanges != a3)
  {
    v4 = [a3 copy];
    loadedTimeRanges = self->_loadedTimeRanges;
    self->_loadedTimeRanges = v4;

    [(AVScrubber *)self setNeedsLayout];
  }
}

- (NSMutableArray)previousScrubberVelocities
{
  previousScrubberVelocities = self->_previousScrubberVelocities;
  if (!previousScrubberVelocities)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_previousScrubberVelocities;
    self->_previousScrubberVelocities = v4;

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
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIView *)self->_loadedTrackOverlayView setUserInteractionEnabled:0];
    loadedTrackOverlayView = self->_loadedTrackOverlayView;
  }

  return loadedTrackOverlayView;
}

- (UISelectionFeedbackGenerator)feedbackGenerator
{
  feedbackGenerator = self->_feedbackGenerator;
  if (!feedbackGenerator)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    v5 = self->_feedbackGenerator;
    self->_feedbackGenerator = v4;

    feedbackGenerator = self->_feedbackGenerator;
  }

  return feedbackGenerator;
}

- (void)setScrubberParentHeight:(double)a3
{
  [(AVScrubber *)self newScrubberParentHeight];
  if (v5 != a3)
  {

    [(AVScrubber *)self setNewScrubberParentHeight:a3];
  }
}

- (AVScrubber)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = AVScrubber;
  v3 = [(AVScrubber *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVScrubber *)v3 setSemanticContentAttribute:1];
    v4->_included = 1;
    *&v4->_hitRectInsets.top = AVDefaultHitRectInsets_28318;
    *&v4->_hitRectInsets.bottom = unk_18B6EC6E0;
    v4->_canChangeScrubbingSpeed = 1;
    v4->_scrubsWhenTappedAnywhere = 0;
    v4->_currentScrubberParentHeight = 22.0;
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
    [(AVScrubber *)v4 intrinsicContentSize];
    [(AVLayoutItemAttributes *)v11 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setCollapsed:[(AVScrubber *)v4 isCollapsed]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setIncluded:[(AVScrubber *)v4 isIncluded]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setHasFlexibleContentSize:1];
    v12 = v4->_layoutAttributes;
    v13 = [(AVScrubber *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v12 setAccessibilityIdentifier:v13];

    v14 = [MEMORY[0x1E69DCAB8] avkit_flatWhiteResizableTemplateImage];
    v15 = [(AVScrubber *)v4 minimumTrackImageForState:0];

    if (v15 != v14)
    {
      LODWORD(v16) = 1.0;
      [(AVScrubber *)v4 setContentHuggingPriority:0 forAxis:v16];
      LODWORD(v17) = 1148846080;
      [(AVScrubber *)v4 setContentHuggingPriority:1 forAxis:v17];
      LODWORD(v18) = 1112014848;
      [(AVScrubber *)v4 setContentCompressionResistancePriority:0 forAxis:v18];
      LODWORD(v19) = *"";
      [(AVScrubber *)v4 setContentCompressionResistancePriority:1 forAxis:v19];
      [(AVScrubber *)v4 setMinimumTrackImage:v14 forState:0];
      [(AVScrubber *)v4 setMaximumTrackImage:v14 forState:0];
      [(AVScrubber *)v4 setThumbImage:v14 forState:0];
    }
  }

  return v4;
}

@end