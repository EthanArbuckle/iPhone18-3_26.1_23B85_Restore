@interface AVMediaTimelineControl
- (AVMediaTimelineControl)initWithSource:(id)source;
- (AVMediaTimelineControlConfiguration)configuration;
- (AVMediaTimelineControlDelegate)delegate;
- (AVMediaTimelineControlSource)source;
- (CGRect)_frameForTimeRangeMark:(id)mark;
- (CGSize)intrinsicContentSize;
- (double)_maskingLayerFrame;
- (double)_updateContainerLayersFrames;
- (float)totalValue;
- (id)_timelineViewSlider;
- (id)_uiProxyForTimeRangeMark:(id)mark;
- (void)_handleDisplayLink;
- (void)_invalidateDisplayLink;
- (void)_setupObservationsIfNeeded;
- (void)_timelineSliderDidChangeValue:(id)value;
- (void)_updateConfiguration;
- (void)_updateDisplayLinkPausedStateIfNeeded;
- (void)_updateDisplayLinkRefreshRateIfNeeded;
- (void)_updateFineScrubbingStyleIfNeeded;
- (void)_updateLabelsIfNeeded;
- (void)_updateMaskedTimeRangeLayerPathIfNeeded;
- (void)_updateSliderPulsingStateIfNeeded;
- (void)_updateSliderTintStateToState:(void *)state duration:(double)duration completionHandler:;
- (void)_updateTimeRangeMarksIfNeeded;
- (void)_updateTimeRangeMarksLayerFramesIfNeeded;
- (void)_updateTimelineSliderEmphasisStateIfNeeded;
- (void)_updateTimelineSliderEnabledStateIfNeeded;
- (void)_updateTimelineViewValuesWithForceUpdate:(uint64_t)update;
- (void)_updateVariableScrubbingOffSetScalarIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setConfiguration:(id)configuration;
- (void)setEnabled:(BOOL)enabled;
- (void)setFineScrubbingStyle:(unint64_t)style;
- (void)setHidden:(BOOL)hidden;
- (void)setSource:(id)source;
- (void)setTotalValue:(float)value;
- (void)setUsesCurrentValueLabelWhileScrubbing:(BOOL)scrubbing;
- (void)slider:(id)slider didChangeScrubbingRate:(unint64_t)rate;
- (void)slider:(id)slider didExtendWithInsets:(UIEdgeInsets)insets;
- (void)sliderDidBeginTracking:(id)tracking;
- (void)sliderDidEndTracking:(id)tracking;
- (void)sliderWillEndTracking:(id)tracking;
@end

@implementation AVMediaTimelineControl

- (AVMediaTimelineControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVMediaTimelineControlSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (void)slider:(id)slider didChangeScrubbingRate:(unint64_t)rate
{
  delegate = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (rate - 1 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18B6EC638[rate - 1];
    }

    [delegate mediaTimelineControl:self didChangeScrubbingRate:v6];
  }
}

- (void)slider:(id)slider didExtendWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_sliderEdgeInsets = insets;
  [(AVMediaTimelineControl *)self _updateContainerLayersFrames];
  [(AVMediaTimelineControl *)self _updateTimeRangeMarksLayerFramesIfNeeded];
  [(AVMediaTimelineControl *)self _updateMaskedTimeRangeLayerPathIfNeeded];
  delegate = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaTimelineControl:self didExtendWithInsets:{top, left, bottom, right}];
  }
}

- (double)_updateContainerLayersFrames
{
  if (result)
  {
    v1 = result;
    if (*(result + 61))
    {
      _timelineViewSlider = [(AVMediaTimelineControl *)result _timelineViewSlider];
      [_timelineViewSlider frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = v1[63];
      v12 = v1[64];
      v13 = v1[65];
      v14 = v1[66];

      v15 = v10 - (v11 + v13);
      v16 = v8 - (v12 + v14);
      v17 = v6 + v11;
      v18 = v4 + v12;
      [MEMORY[0x1E6979518] begin];
      if (([*(v1 + 53) isRunning] & 1) != 0 || *(v1 + 549) == 1)
      {
        [MEMORY[0x1E6979518] setAnimationDuration:0.2];
      }

      else
      {
        [MEMORY[0x1E6979518] setDisableActions:1];
      }

      [*(v1 + 61) setFrame:{v18, v17, v16, v15}];
      [v1 _updateTimeRangeMarksLayerFramesIfNeeded];
      v19 = MEMORY[0x1E6979518];

      return [v19 commit];
    }
  }

  return result;
}

- (id)_timelineViewSlider
{
  if (self)
  {
    timelineView = [self timelineView];
    fluidSlider = [timelineView fluidSlider];
  }

  else
  {
    fluidSlider = 0;
  }

  return fluidSlider;
}

- (void)sliderDidEndTracking:(id)tracking
{
  self->_isDecelerating = 0;
  delegate = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaTimelineControlDidEndDecelerating:self];
  }
}

- (void)sliderWillEndTracking:(id)tracking
{
  self->_isDecelerating = 1;
  delegate = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaTimelineControlDidEndChanging:self];
  }

  [(AVMediaTimelineControl *)self _updateTimelineSliderEmphasisStateIfNeeded];
  [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
  inSyncWithSourceValuesTimer = self->_inSyncWithSourceValuesTimer;
  if (inSyncWithSourceValuesTimer)
  {
    [(NSTimer *)inSyncWithSourceValuesTimer invalidate];
  }

  source = [(AVMediaTimelineControl *)self source];
  if ([source isPlaying])
  {
    source2 = [(AVMediaTimelineControl *)self source];
    isLoading = [source2 isLoading];

    if ((isLoading & 1) == 0)
    {
      self->_shouldUpdateTimelineValuesAccordingToSource = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E695DFF0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__AVMediaTimelineControl__updateShouldUpdateTimelineValuesAccordingToSource__block_invoke;
  v12[3] = &unk_1E7209DA8;
  objc_copyWeak(&v13, &location);
  v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v12 block:2.0];
  v10 = self->_inSyncWithSourceValuesTimer;
  self->_inSyncWithSourceValuesTimer = v9;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
LABEL_10:
}

- (void)_updateTimelineSliderEmphasisStateIfNeeded
{
  if (self)
  {
    timelineView = [self timelineView];
    _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
    isTracking = [_timelineViewSlider isTracking];
    if (isTracking != [timelineView isEmphasized])
    {
      configuration = [self configuration];
      labelsConfiguration = [configuration labelsConfiguration];
      labelsStyle = [labelsConfiguration labelsStyle];

      objc_initWeak(&location, self);
      if (labelsStyle != 2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(self + 504), *MEMORY[0x1E69DDCE0]), vceqq_f64(*(self + 520), *(MEMORY[0x1E69DDCE0] + 16))))) & 1) != 0)
      {
        [timelineView prepareForDeemphasisIfNeeded];
        [timelineView setEmphasized:isTracking];
        v10 = *(self + 424);
        v11 = 1.0;
        if (v10 && [v10 isRunning] && objc_msgSend(*(self + 424), "isInterruptible"))
        {
          [*(self + 424) fractionComplete];
          v11 = v12;
          [*(self + 424) stopAnimation:1];
          [*(self + 424) finishAnimationAtPosition:2];
          v13 = *(self + 424);
          *(self + 424) = 0;
        }

        v14 = objc_alloc(MEMORY[0x1E69DD278]);
        v15 = 1.0;
        if (v11 <= 1.0)
        {
          v15 = v11;
        }

        v16 = v15 * 0.2;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_3;
        v25[3] = &unk_1E720A0B8;
        v9 = &v26;
        objc_copyWeak(&v26, &location);
        v27 = isTracking;
        v17 = [v14 initWithDuration:3 curve:v25 animations:v16];
        v18 = *(self + 424);
        *(self + 424) = v17;

        v19 = *(self + 424);
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_4;
        v23 = &unk_1E7209618;
        objc_copyWeak(&v24, &location);
        [v19 addCompletion:&v20];
        [*(self + 424) startAnimation];
        objc_destroyWeak(&v24);
      }

      else
      {
        v8 = MEMORY[0x1E69DD250];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke;
        v30[3] = &unk_1E7208D90;
        v9 = &v32;
        objc_copyWeak(&v32, &location);
        v31 = timelineView;
        v33 = isTracking;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_2;
        v28[3] = &unk_1E7208A58;
        objc_copyWeak(&v29, &location);
        [v8 _animateByRetargetingAnimations:v30 completion:v28];
        objc_destroyWeak(&v29);
      }

      objc_destroyWeak(v9);
      objc_destroyWeak(&location);
    }
  }
}

void __76__AVMediaTimelineControl__updateShouldUpdateTimelineValuesAccordingToSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[448] = 0;
  }
}

void __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[549] = 1;
    v3 = WeakRetained;
    [*(a1 + 32) setEmphasized:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    WeakRetained[549] = 0;
    v5 = WeakRetained;
    [(AVMediaTimelineControl *)WeakRetained _updateConfiguration];
    v4 = v5[53];
    v5[53] = 0;

    WeakRetained = v5;
  }
}

void __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMediaTimelineControl *)WeakRetained _updateConfiguration];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 timelineView];
  [v4 setEmphasized:*(a1 + 40)];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 timelineView];
  [v5 layoutIfNeeded];
}

void __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(AVMediaTimelineControl *)WeakRetained _updateConfiguration];
    v2 = v3[53];
    v3[53] = 0;

    WeakRetained = v3;
  }
}

- (void)_updateConfiguration
{
  if (result)
  {
    v1 = result;
    configuration = [result configuration];
    labelsConfiguration = [configuration labelsConfiguration];
    timelineView = [v1 timelineView];
    if ([labelsConfiguration labelsStyle] == 2)
    {
      [timelineView setLeadingTimeText:0];
      [timelineView setTrailingTimeText:0];
    }

    else
    {
      [timelineView setLabelPosition:{objc_msgSend(labelsConfiguration, "labelsStyle") != 0}];
      textFont = [labelsConfiguration textFont];
      [timelineView setLabelsFont:textFont];

      textColor = [labelsConfiguration textColor];
      [timelineView setLabelsTextColor:textColor];

      textCompositingFilter = [labelsConfiguration textCompositingFilter];
      [timelineView setLabelsCompositingFilter:textCompositingFilter];

      textFont2 = [labelsConfiguration textFont];
      if (!textFont2)
      {
        textFont2 = +[AVMediaTimelineControlLabelsConfiguration _defaultFont];
      }

      [timelineView setLabelsFont:textFont2];
      textColor2 = [labelsConfiguration textColor];
      if (!textColor2)
      {
        textColor2 = +[AVMediaTimelineControlLabelsConfiguration _defaultTextColor];
      }

      [timelineView setLabelsTextColor:textColor2];
      [labelsConfiguration extendedDynamicRangeGain];
      [timelineView setLabelsExtendedDynamicRangeGain:?];
    }

    configuration2 = [v1 configuration];
    _timelineViewSlider = [(AVMediaTimelineControl *)v1 _timelineViewSlider];
    currentValueVisualEffect = [configuration2 currentValueVisualEffect];
    maxValueVisualEffect = [configuration2 maxValueVisualEffect];
    [_timelineViewSlider setFilledBarVisualEffect:currentValueVisualEffect];
    [_timelineViewSlider setUnfilledBarVisualEffect:maxValueVisualEffect];

    configuration3 = [v1 configuration];
    timelineView2 = [v1 timelineView];
    [configuration3 extendedDynamicRangeGain];
    [timelineView2 setSliderExtendedDynamicRangeGain:?];

    return [v1 _updateDisplayLinkRefreshRateIfNeeded];
  }

  return result;
}

- (void)sliderDidBeginTracking:(id)tracking
{
  self->_isDecelerating = 0;
  [(AVMediaTimelineControl *)self _updateVariableScrubbingOffSetScalarIfNeeded];
  delegate = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaTimelineControlWillBeginChanging:self];
  }

  inSyncWithSourceValuesTimer = self->_inSyncWithSourceValuesTimer;
  if (inSyncWithSourceValuesTimer)
  {
    [(NSTimer *)inSyncWithSourceValuesTimer invalidate];
  }

  self->_shouldUpdateTimelineValuesAccordingToSource = 1;
  [(AVMediaTimelineControl *)self _updateTimelineSliderEmphasisStateIfNeeded];
  [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
}

- (void)_updateVariableScrubbingOffSetScalarIfNeeded
{
  if (self)
  {
    window = [self window];
    if (window)
    {
      v14 = window;
      _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
      [_timelineViewSlider frame];
      v5 = v4 * 0.5;
      [_timelineViewSlider frame];
      [self convertPoint:v14 toView:{v5, v6 * 0.5}];
      v8 = v7;
      if ([self fineScrubbingStyle] == 2)
      {
        [v14 bounds];
        v8 = v9 - v8;
      }

      [AVMobileChromelessFluidSlider variableSpeedScrubbingMultiplierForDistanceToEdge:v8];
      v11 = v10;
      v12 = fabsf(v11 + -0.9);
      if (v11 > 0.9 || v12 < 0.00000011921)
      {
        [_timelineViewSlider setVariableSpeedScrubbingOffsetMultiplier:v10 * 0.6];
      }

      window = v14;
    }
  }
}

- (id)_uiProxyForTimeRangeMark:(id)mark
{
  markCopy = mark;
  markUIProvider = [markCopy markUIProvider];
  source = [(AVMediaTimelineControl *)self source];
  v7 = [markUIProvider uiProxyForTimeRangeMark:markCopy withSource:source];

  return v7;
}

- (CGRect)_frameForTimeRangeMark:(id)mark
{
  markCopy = mark;
  markUIProvider = [markCopy markUIProvider];
  source = [(AVMediaTimelineControl *)self source];
  v7 = [markUIProvider uiProxyForTimeRangeMark:markCopy withSource:source];

  if ([v7 isMasked])
  {
    _maskingLayerFrame = [(AVMediaTimelineControl *)self _maskingLayerFrame];
  }

  else
  {
    [(CAShapeLayer *)self->_timeRangeMarksContainerLayer frame];
  }

  v12 = _maskingLayerFrame;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [_timelineViewSlider frame];
  v18 = v17;

  if (self->_totalValueSet)
  {
    [(AVMediaTimelineControl *)self totalValue];
    v20 = v19;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_source);
    [WeakRetained maxValue];
    v20 = v22;
  }

  v23 = v20;
  [markCopy startValue];
  v25 = v24;
  v26 = objc_loadWeakRetained(&self->_source);
  [v26 minValue];
  v28 = (v25 - v27);
  v29 = objc_loadWeakRetained(&self->_source);
  [v29 minValue];
  v31 = v28 / (v23 - v30);

  markUIProvider2 = [markCopy markUIProvider];
  [markUIProvider2 timeRangeMark:markCopy sizeInFrame:{v12, v13, v14, v15}];
  v34 = v33;
  v36 = v35;

  v37 = v14 * v31;
  left = self->_sliderEdgeInsets.left;
  if (left < 0.0)
  {
    v37 = v37 + left - fabs(self->_sliderEdgeInsets.right) + (v14 - v18) * -0.5;
  }

  [markCopy startValue];
  v40 = v39;
  [markCopy endValue];
  if (vabds_f32(v40, v41) >= 0.00000011921)
  {
    v42 = v37;
  }

  else
  {
    v42 = v37 - v34 * 0.5;
  }

  v43 = v42;
  v44 = (v15 - v36) * 0.5;
  v45 = v34;
  v46 = v36;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (double)_maskingLayerFrame
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 424) isRunning];
  _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [_timelineViewSlider frame];

  return *(self + 512);
}

- (void)_timelineSliderDidChangeValue:(id)value
{
  _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [_timelineViewSlider value];
  v6 = v5;

  if (self)
  {
    if (self->_lastFeedbackValue != -3.4028e38)
    {
      source = [(AVMediaTimelineControl *)self source];
      [source minValue];
      v9 = v8;
      [source maxValue];
      v11 = v10;
      _timelineViewSlider2 = [(AVMediaTimelineControl *)self _timelineViewSlider];
      [_timelineViewSlider2 value];
      v14 = v13;

      lastFeedbackValue = self->_lastFeedbackValue;
      v16 = (v11 - v9) * 0.01;
      v17 = vabds_f32(v14, v16 + lastFeedbackValue);
      v18 = v14 <= (v16 + lastFeedbackValue) || v17 < 0.00000011921;
      if (!v18 || ((v19 = lastFeedbackValue - v16, v20 = vabds_f32(v14, v19), v14 < v19) ? (v21 = v20 < 0.00000011921) : (v21 = 1), !v21))
      {
        self->_lastFeedbackValue = -3.4028e38;
      }
    }

    _timelineViewSlider3 = [(AVMediaTimelineControl *)self _timelineViewSlider];
    timelineView = [(AVMediaTimelineControl *)self timelineView];
    fluidSlider = [timelineView fluidSlider];

    v25 = [(NSArray *)self->_timeRangeMarks count];
    if (_timelineViewSlider3)
    {
      if (v25 && fluidSlider == 0)
      {
        [_timelineViewSlider3 value];
        v28 = v27;
        if ([(NSArray *)self->_timeRangeMarks count])
        {
          v29 = 0;
          while (1)
          {
            v30 = [(NSArray *)self->_timeRangeMarks objectAtIndex:v29];
            [v30 startValue];
            if (vabds_f32(v31, v28) < 0.00000011921 && vabds_f32(v31, self->_lastFeedbackValue) >= 0.00000011921)
            {
              break;
            }

            if ([(NSArray *)self->_timeRangeMarks count]<= ++v29)
            {
              goto LABEL_27;
            }
          }

          self->_lastFeedbackValue = v31;
          [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator prepare];

          [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator selectionChanged];
        }
      }
    }

LABEL_27:
  }

  self->_lastUpdatedTime = v6;
  delegate = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v32 = v6;
    [delegate mediaTimelineControl:self didChangeValue:v32];
  }

  [(AVMediaTimelineControl *)self _updateLabelsIfNeeded];
}

- (void)_updateLabelsIfNeeded
{
  if (self)
  {
    timelineView = [self timelineView];
    if (timelineView)
    {
      v18 = timelineView;
      configuration = [self configuration];
      labelsConfiguration = [configuration labelsConfiguration];
      if ([labelsConfiguration labelsStyle] != 2)
      {
        source = [self source];
        currentValueText = [source currentValueText];
        _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
        isTracking = [_timelineViewSlider isTracking];

        source2 = [self source];
        isLoading = [source2 isLoading];

        if (*(self + 551) & 1) == 0 && ((isTracking | isLoading))
        {
          v11 = *(self + 456);
          if (!v11)
          {
            v12 = objc_alloc_init(MEMORY[0x1E6988158]);
            v13 = *(self + 456);
            *(self + 456) = v12;

            v11 = *(self + 456);
          }

          _timelineViewSlider2 = [(AVMediaTimelineControl *)self _timelineViewSlider];
          [_timelineViewSlider2 value];
          v16 = [v11 stringFromSeconds:v15];

          currentValueText = v16;
        }

        [v18 setLeadingTimeText:currentValueText];
        maxValueText = [source maxValueText];
        [v18 setTrailingTimeText:maxValueText];
      }

      timelineView = v18;
    }
  }
}

- (void)_handleDisplayLink
{
  if (!self->_shouldSkipNextDisplayLinkUpdate)
  {
    [(AVMediaTimelineControl *)self _updateTimelineViewValuesWithForceUpdate:?];
  }

  self->_shouldSkipNextDisplayLinkUpdate = 0;
}

- (void)_updateTimelineViewValuesWithForceUpdate:(uint64_t)update
{
  if (update && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(update + 504), *MEMORY[0x1E69DDCE0]), vceqq_f64(*(update + 520), *(MEMORY[0x1E69DDCE0] + 16))))) & 1) != 0)
  {
    v3 = a2;
    if (a2)
    {
      *(update + 548) = 1;
    }

    _timelineViewSlider = [(AVMediaTimelineControl *)update _timelineViewSlider];
    isTracking = [_timelineViewSlider isTracking];
    v5 = *(update + 448);
    source = [update source];
    isLoading = [source isLoading];
    isPlaying = [source isPlaying];
    [source minValue];
    v10 = v9;
    [_timelineViewSlider minimumValue];
    v12 = vabds_f32(v10, v11);
    [source maxValue];
    v14 = v13;
    [_timelineViewSlider maximumValue];
    v16 = vabds_f32(v14, v15);
    [source currentValue];
    v18 = v17;
    v19 = *(update + 464);
    v20 = *(update + 544);
    v21 = vabds_f32(v18, v19 + v20);
    if (v18 > (v19 + v20) || v21 < 0.00000011921)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v24 = v19 - v20;
      v25 = vabds_f32(v18, v24);
      v26 = v18 < v24 || v25 < 0.00000011921;
      if (!v26 && (v3 & 1) == 0 && v12 < 0.00000011921 && v16 < 0.00000011921)
      {
        v23 = isLoading | isPlaying ^ 1;
      }
    }

    if (!((_timelineViewSlider == 0) | isTracking & 1) && (v5 & 1) == 0 && (v23 & 1) == 0)
    {
      [source minValue];
      if (v12 >= 0.00000011921)
      {
        [source minValue];
        [_timelineViewSlider setMinimumValue:?];
      }

      [source maxValue];
      HIDWORD(v27) = 872415232;
      if (v16 >= 0.00000011921)
      {
        [source maxValue];
        [_timelineViewSlider setMaximumValue:?];
      }

      *&v27 = v18;
      [_timelineViewSlider setValue:v27];
      *(update + 464) = v18;
    }

    [(AVMediaTimelineControl *)update _updateLabelsIfNeeded];
  }
}

- (void)setUsesCurrentValueLabelWhileScrubbing:(BOOL)scrubbing
{
  if (self->_usesCurrentValueLabelWhileScrubbing != scrubbing)
  {
    self->_usesCurrentValueLabelWhileScrubbing = scrubbing;
    [(AVMediaTimelineControl *)self _updateLabelsIfNeeded];
  }
}

- (float)totalValue
{
  timelineView = [(AVMediaTimelineControl *)self timelineView];
  slider = [timelineView slider];
  [slider totalValue];
  v5 = v4;

  return v5;
}

- (void)setTotalValue:(float)value
{
  [(AVMediaTimelineControl *)self totalValue];
  if (v5 != value)
  {
    timelineView = [(AVMediaTimelineControl *)self timelineView];
    slider = [timelineView slider];
    *&v8 = value;
    [slider setTotalValue:v8];

    self->_totalValueSet = 1;
  }
}

- (void)setSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_source);

  if (WeakRetained != obj)
  {
    if (self)
    {
      self->_isObservationControllerActivelyObserving = 0;
      [(AVObservationController *)self->_observationController stopAllObservation];
      objc_storeWeak(&self->_source, obj);
      [(AVMediaTimelineControl *)self _setupObservationsIfNeeded];
    }

    else
    {
      objc_storeWeak(0x240, obj);
    }

    [(AVMediaTimelineControl *)self _updateDisplayLinkRefreshRateIfNeeded];
  }
}

- (void)_setupObservationsIfNeeded
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!*(self + 440))
    {
      v2 = [[AVObservationController alloc] initWithOwner:self];
      v3 = *(self + 440);
      *(self + 440) = v2;
    }

    if ((*(self + 536) & 1) == 0)
    {
      *(self + 536) = 1;
      v4 = *(self + 440);
      v9[0] = @"source.loading";
      v9[1] = @"source.playing";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
      v6 = [v4 startObserving:self keyPaths:v5 observationHandler:&__block_literal_global_20611];

      v7 = [*(self + 440) startObserving:self keyPath:@"source.timeRangeMarks" observationHandler:&__block_literal_global_31];
      v8 = [*(self + 440) startObserving:self keyPath:@"source.currentValue" observationHandler:&__block_literal_global_37_20614];
    }
  }
}

void __52__AVMediaTimelineControl__setupObservationsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateDisplayLinkPausedStateIfNeeded];
  [v2 _updateSliderPulsingStateIfNeeded];
}

- (void)setFineScrubbingStyle:(unint64_t)style
{
  if (self->_fineScrubbingStyle != style)
  {
    self->_fineScrubbingStyle = style;
    [(AVMediaTimelineControl *)self _updateFineScrubbingStyleIfNeeded];
  }
}

- (void)_updateFineScrubbingStyleIfNeeded
{
  if (self)
  {
    _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
    [_timelineViewSlider setFineScrubbingStyle:{objc_msgSend(self, "fineScrubbingStyle") & 3}];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(AVMediaTimelineControl *)self _updateTimelineSliderEnabledStateIfNeeded];
  }
}

- (void)_updateTimelineSliderEnabledStateIfNeeded
{
  if (self)
  {
    timelineView = [self timelineView];
    [timelineView setEnabled:self[553]];
  }
}

- (AVMediaTimelineControlConfiguration)configuration
{
  v2 = [(AVMediaTimelineControlConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)configuration
{
  if (self->_configuration != configuration)
  {
    v4 = [configuration copy];
    configuration = self->_configuration;
    self->_configuration = v4;

    [(AVMediaTimelineControl *)self _updateConfiguration];
  }
}

- (void)_updateTimeRangeMarksLayerFramesIfNeeded
{
  if (self->_timeRangeMarksContainerLayer)
  {
    [MEMORY[0x1E6979518] begin];
    if (([(UIViewPropertyAnimator *)self->_timelineSliderEmphasisAnimator isRunning]& 1) != 0 || self->_isRetargetableAnimationInProgress)
    {
      [MEMORY[0x1E6979518] setAnimationDuration:0.2];
    }

    else
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    if ([(NSArray *)self->_nonMaskedTimeRangeMarks count])
    {
      v3 = 0;
      v4 = *MEMORY[0x1E695F058];
      v5 = *(MEMORY[0x1E695F058] + 8);
      v6 = *(MEMORY[0x1E695F058] + 16);
      v7 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v8 = [(NSArray *)self->_nonMaskedTimeRangeMarks objectAtIndex:v3];
        v9 = [(AVMediaTimelineControl *)self _uiProxyForTimeRangeMark:v8];
        backgroundColor = [v9 backgroundColor];
        cGColor = [backgroundColor CGColor];

        [v9 cornerRadius];
        v13 = v12;
        if ([(NSArray *)self->_timeRangeMarkLayers count]> v3)
        {
          v14 = [(NSArray *)self->_timeRangeMarkLayers objectAtIndex:v3];
          [v14 setBackgroundColor:cGColor];
          [v14 setCornerRadius:v13];
          [v14 setMasksToBounds:1];
          [(AVMediaTimelineControl *)self _frameForTimeRangeMark:v8];
          v18.origin.x = v4;
          v18.origin.y = v5;
          v18.size.width = v6;
          v18.size.height = v7;
          if (!CGRectEqualToRect(v17, v18))
          {
            [(AVMediaTimelineControl *)self _frameForTimeRangeMark:v8];
            [v14 setFrame:?];
          }
        }

        ++v3;
      }

      while ([(NSArray *)self->_nonMaskedTimeRangeMarks count]> v3);
    }

    v15 = MEMORY[0x1E6979518];

    [v15 commit];
  }
}

- (void)_updateTimeRangeMarksIfNeeded
{
  timeRangeMarks = self->_timeRangeMarks;
  WeakRetained = objc_loadWeakRetained(&self->_source);
  timeRangeMarks = [WeakRetained timeRangeMarks];

  if (timeRangeMarks == timeRangeMarks)
  {
    return;
  }

  v6 = objc_loadWeakRetained(&self->_source);
  timeRangeMarks2 = [v6 timeRangeMarks];
  v8 = self->_timeRangeMarks;
  self->_timeRangeMarks = timeRangeMarks2;

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = MEMORY[0x1E695E0F0];
  v11 = [v9 initWithArray:MEMORY[0x1E695E0F0]];
  maskedTimeRangeMarks = self->_maskedTimeRangeMarks;
  self->_maskedTimeRangeMarks = v11;

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v10];
  p_nonMaskedTimeRangeMarks = &self->_nonMaskedTimeRangeMarks;
  nonMaskedTimeRangeMarks = self->_nonMaskedTimeRangeMarks;
  self->_nonMaskedTimeRangeMarks = v13;

  array = [MEMORY[0x1E695DF70] array];
  v16 = self->_timeRangeMarks;
  if (v16)
  {
    goto LABEL_5;
  }

  if ([0 count])
  {
    v16 = self->_timeRangeMarks;
LABEL_5:
    if ([(NSArray *)v16 count])
    {
      v17 = 0;
      do
      {
        v18 = [(NSArray *)self->_timeRangeMarks objectAtIndex:v17];
        v19 = [(AVMediaTimelineControl *)self _uiProxyForTimeRangeMark:v18];
        v20 = MEMORY[0x1E696AD98];
        [v18 startValue];
        v21 = [v20 numberWithFloat:?];
        [array addObject:v21];

        if ([v19 isMasked])
        {
          p_maskedTimeRangeMarks = &self->_maskedTimeRangeMarks;
        }

        else
        {
          p_maskedTimeRangeMarks = &self->_nonMaskedTimeRangeMarks;
        }

        v23 = [(NSArray *)*p_maskedTimeRangeMarks arrayByAddingObject:v18];
        v24 = *p_maskedTimeRangeMarks;
        *p_maskedTimeRangeMarks = v23;

        ++v17;
      }

      while ([(NSArray *)self->_timeRangeMarks count]> v17);
    }
  }

  _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [_timelineViewSlider setSnappingValues:array];
  v25 = [(NSArray *)*p_nonMaskedTimeRangeMarks count];
  if (!self->_timeRangeMarksContainerLayer && v25)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69794A0]);
    timeRangeMarksContainerLayer = self->_timeRangeMarksContainerLayer;
    self->_timeRangeMarksContainerLayer = v26;

    layer = [(AVMediaTimelineControl *)self layer];
    [layer addSublayer:self->_timeRangeMarksContainerLayer];
  }

  v29 = [(NSArray *)self->_maskedTimeRangeMarks count];
  if (!self->_timeRangeMarksMaskingContainerLayer && v29)
  {
    _timelineViewSlider2 = [(AVMediaTimelineControl *)self _timelineViewSlider];
    if (_timelineViewSlider2)
    {
      v31 = objc_alloc_init(MEMORY[0x1E69794A0]);
      timeRangeMarksMaskingContainerLayer = self->_timeRangeMarksMaskingContainerLayer;
      self->_timeRangeMarksMaskingContainerLayer = v31;

      [(CAShapeLayer *)self->_timeRangeMarksMaskingContainerLayer setFillRule:*MEMORY[0x1E69797F8]];
      v33 = self->_timeRangeMarksMaskingContainerLayer;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      -[CAShapeLayer setFillColor:](v33, "setFillColor:", [whiteColor CGColor]);

      layer2 = [(AVMediaTimelineControl *)self layer];
      [layer2 addSublayer:self->_timeRangeMarksMaskingContainerLayer];

      layer3 = [_timelineViewSlider2 layer];
      [layer3 setMask:self->_timeRangeMarksMaskingContainerLayer];
    }
  }

  if (self->_timeRangeMarksContainerLayer)
  {
    if ([(NSArray *)self->_timeRangeMarkLayers count])
    {
      v37 = 0;
      do
      {
        v38 = [(NSArray *)self->_timeRangeMarkLayers objectAtIndex:v37];
        [v38 removeFromSuperlayer];

        ++v37;
      }

      while ([(NSArray *)self->_timeRangeMarkLayers count]> v37);
    }

    timeRangeMarkLayers = self->_timeRangeMarkLayers;
    self->_timeRangeMarkLayers = v10;

    if ([(NSArray *)*p_nonMaskedTimeRangeMarks count])
    {
      v40 = 0;
      do
      {
        v41 = [(NSArray *)*p_nonMaskedTimeRangeMarks objectAtIndex:v40];
        v42 = [(AVMediaTimelineControl *)self _uiProxyForTimeRangeMark:v41];
        v43 = objc_alloc_init(MEMORY[0x1E69794A0]);
        backgroundColor = [v42 backgroundColor];
        [v43 setBackgroundColor:{objc_msgSend(backgroundColor, "CGColor")}];

        [v42 cornerRadius];
        [v43 setCornerRadius:v45];
        [v43 setMasksToBounds:1];
        [(CAShapeLayer *)self->_timeRangeMarksContainerLayer addSublayer:v43];
        v46 = [(NSArray *)self->_timeRangeMarkLayers arrayByAddingObject:v43];
        v47 = self->_timeRangeMarkLayers;
        self->_timeRangeMarkLayers = v46;

        ++v40;
      }

      while ([(NSArray *)*p_nonMaskedTimeRangeMarks count]> v40);
    }
  }

  [(AVMediaTimelineControl *)self _updateTimeRangeMarksLayerFramesIfNeeded];
  [(AVMediaTimelineControl *)self _updateMaskedTimeRangeLayerPathIfNeeded];
}

- (void)_updateSliderPulsingStateIfNeeded
{
  _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
  if (_timelineViewSlider)
  {
    source = [(AVMediaTimelineControl *)self source];
    isLoading = [source isLoading];

    if (isLoading)
    {
      v6 = 2 * (([_timelineViewSlider tintState] - 1) > 1);
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __59__AVMediaTimelineControl__updateSliderPulsingStateIfNeeded__block_invoke;
      v7[3] = &unk_1E7209EA8;
      objc_copyWeak(&v8, &location);
      [(AVMediaTimelineControl *)&self->super.super.super.isa _updateSliderTintStateToState:v6 duration:v7 completionHandler:1.0];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      [(AVMediaTimelineControl *)&self->super.super.super.isa _updateSliderTintStateToState:0 duration:0.25 completionHandler:?];
    }
  }
}

void __59__AVMediaTimelineControl__updateSliderPulsingStateIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSliderPulsingStateIfNeeded];
}

- (void)_updateSliderTintStateToState:(void *)state duration:(double)duration completionHandler:
{
  stateCopy = state;
  if (self)
  {
    _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
    if (_timelineViewSlider)
    {
      v9 = self[54];
      if (v9 && [v9 isRunning] && objc_msgSend(self[54], "isInterruptible"))
      {
        [self[54] stopAnimation:1];
        [self[54] finishAnimationAtPosition:2];
        v10 = self[54];
        self[54] = 0;
      }

      v11 = objc_alloc(MEMORY[0x1E69DD278]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke;
      v19[3] = &unk_1E7209A60;
      v20 = _timelineViewSlider;
      v21 = a2;
      v12 = [v11 initWithDuration:3 curve:v19 animations:duration];
      v13 = self[54];
      self[54] = v12;

      if (stateCopy)
      {
        objc_initWeak(&location, self);
        v14 = self[54];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke_2;
        v15[3] = &unk_1E7208A30;
        objc_copyWeak(&v17, &location);
        v16 = stateCopy;
        [v14 addCompletion:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      [self[54] startAnimation];
    }
  }
}

void __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke_3;
  v2[3] = &unk_1E7209978;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    v3 = v4[54];
    v4[54] = 0;

    WeakRetained = v4;
  }
}

- (void)_updateMaskedTimeRangeLayerPathIfNeeded
{
  v3 = [(NSArray *)self->_maskedTimeRangeMarks count];
  if (self->_timeRangeMarksMaskingContainerLayer)
  {
    v4 = v3;
    Mutable = CGPathCreateMutable();
    v19 = [MEMORY[0x1E69DC728] bezierPathWithRect:-[AVMediaTimelineControl _maskingLayerFrame](self)];
    CGPathAddPath(Mutable, 0, [v19 CGPath]);
    if (v4 && [(NSArray *)self->_maskedTimeRangeMarks count])
    {
      v6 = 0;
      do
      {
        v7 = [(NSArray *)self->_maskedTimeRangeMarks objectAtIndex:v6];
        v8 = [(AVMediaTimelineControl *)self _uiProxyForTimeRangeMark:v7];
        [(AVMediaTimelineControl *)self _frameForTimeRangeMark:v7];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [v8 cornerRadius];
        v18 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, v17}];
        CGPathAddPath(Mutable, 0, [v18 CGPath]);

        ++v6;
      }

      while ([(NSArray *)self->_maskedTimeRangeMarks count]> v6);
    }

    [(CAShapeLayer *)self->_timeRangeMarksMaskingContainerLayer setPath:Mutable];
  }
}

- (void)_updateDisplayLinkRefreshRateIfNeeded
{
  if (self->_displayLink)
  {
    window = [(AVMediaTimelineControl *)self window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    [screen scale];
    v7 = v6;

    source = [(AVMediaTimelineControl *)self source];
    [source maxValue];
    v10 = v9;

    _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
    [_timelineViewSlider frame];
    v13 = v7 * v12;

    v14 = v13;
    v15 = fabsf(v14);
    if (v14 <= 0.0 || v15 < 0.00000011921)
    {
      timelineValuesUpdateInterval = self->_timelineValuesUpdateInterval;
    }

    else
    {
      timelineValuesUpdateInterval = v10 / v13 * 0.5;
      self->_timelineValuesUpdateInterval = timelineValuesUpdateInterval;
    }

    if (fabsf(timelineValuesUpdateInterval) >= 0.00000011921)
    {
      v18 = 1.0 / (timelineValuesUpdateInterval + timelineValuesUpdateInterval);
      if (vabds_f32(v18, self->_lastPreferredFramesPerSecond) >= 0.00000011921)
      {
        self->_lastPreferredFramesPerSecond = v18;
        v24 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
        v19 = fabsf(v18 + -24.0);
        if (fabsf(v18) >= 0.00000011921 && v18 < 24.0 && v19 >= 0.00000011921)
        {
          v24 = CAFrameRateRangeMake(v18, v18, v18);
        }

        displayLink = self->_displayLink;

        [(CADisplayLink *)displayLink setPreferredFrameRateRange:*&v24.minimum, *&v24.maximum, *&v24.preferred];
      }
    }
  }
}

- (void)_updateDisplayLinkPausedStateIfNeeded
{
  if (self->_displayLink)
  {
    if (([(AVMediaTimelineControl *)self isHidden]& 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      [(AVMediaTimelineControl *)self alpha];
      v3 = v4 == 0.0;
    }

    source = [(AVMediaTimelineControl *)self source];
    isLoading = [source isLoading];

    source2 = [(AVMediaTimelineControl *)self source];
    isPlaying = [source2 isPlaying];

    _timelineViewSlider = [(AVMediaTimelineControl *)self _timelineViewSlider];
    LOBYTE(v9) = 1;
    if (!v3 && (isLoading & 1) == 0)
    {
      v9 = [_timelineViewSlider isTracking] | isPlaying ^ 1;
    }

    [(CADisplayLink *)self->_displayLink setPaused:v9 & 1];
  }
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v4 setAlpha:alpha];
  [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v4 setHidden:hidden];
  [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileChromelessTimelineView *)self->_timelineView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v4 layoutSubviews];
  timelineView = [(AVMediaTimelineControl *)self timelineView];
  [(AVMediaTimelineControl *)self bounds];
  [timelineView setFrame:?];

  [(AVMediaTimelineControl *)self _updateContainerLayersFrames];
  [(AVMediaTimelineControl *)self _updateTimeRangeMarksLayerFramesIfNeeded];
  [(AVMediaTimelineControl *)self _updateMaskedTimeRangeLayerPathIfNeeded];
  [(AVMediaTimelineControl *)self _updateVariableScrubbingOffSetScalarIfNeeded];
}

- (void)didMoveToWindow
{
  v16.receiver = self;
  v16.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v16 didMoveToWindow];
  window = [(AVMediaTimelineControl *)self window];

  if (window)
  {
    [(AVMediaTimelineControl *)self _setupObservationsIfNeeded];
    if (self)
    {
      if (!self->_displayLink)
      {
        v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink];
        displayLink = self->_displayLink;
        self->_displayLink = v4;

        v6 = self->_displayLink;
        currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
        [(CADisplayLink *)v6 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

        [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
      }

      [(AVMediaTimelineControl *)self _updateContainerLayersFrames];
      if (!self->_timelineView)
      {
        v8 = [[AVMobileChromelessTimelineView alloc] initWithUsingFluidSlider:1];
        [(AVMobileChromelessTimelineView *)v8 setAutoresizingMask:0];
        [(AVMobileChromelessTimelineView *)v8 setDelegate:self];
        slider = [(AVMobileChromelessTimelineView *)v8 slider];
        LODWORD(v10) = 1120403456;
        [slider setTotalValue:v10];

        [(AVMediaTimelineControl *)self setTimelineView:v8];
        [(AVMediaTimelineControl *)self _updateTimelineSliderEnabledStateIfNeeded];
        [(AVMediaTimelineControl *)self addSubview:self->_timelineView];
        [(AVMediaTimelineControl *)self _updateTimelineViewValuesWithForceUpdate:?];
      }

      timelineView = [(AVMediaTimelineControl *)self timelineView];
      slider2 = [timelineView slider];
      v13 = slider2;
      if (slider2)
      {
        [slider2 addTarget:self action:sel__timelineSliderDidChangeValue_ forControlEvents:4096];
        [v13 addTarget:self action:sel__timelineSliderDidChangeValue_ forControlEvents:448];
        [v13 setDelegate:self];
        fluidSlider = [timelineView fluidSlider];
        [fluidSlider setDirectionalHitRectInsets:{-8.0, 0.0, -8.0, 0.0}];
      }
    }

    else
    {
      [(AVMediaTimelineControl *)0 _updateContainerLayersFrames];
    }

    [(AVMediaTimelineControl *)self _updateConfiguration];
    [(AVMediaTimelineControl *)self _updateTimeRangeMarksIfNeeded];
    [(AVMediaTimelineControl *)self _updateFineScrubbingStyleIfNeeded];
    [(AVMediaTimelineControl *)self _updateVariableScrubbingOffSetScalarIfNeeded];
    [(AVMediaTimelineControl *)self _updateTimelineViewValuesWithForceUpdate:?];
  }

  else
  {
    if (self)
    {
      self->_isObservationControllerActivelyObserving = 0;
      [(AVObservationController *)self->_observationController stopAllObservation];
      inSyncWithSourceValuesTimer = self->_inSyncWithSourceValuesTimer;
      if (inSyncWithSourceValuesTimer)
      {
        [(NSTimer *)inSyncWithSourceValuesTimer invalidate];
      }
    }

    [(AVMediaTimelineControl *)self _invalidateDisplayLink];
  }
}

- (void)_invalidateDisplayLink
{
  if (self)
  {
    [*(self + 408) invalidate];
    v2 = *(self + 408);
    *(self + 408) = 0;
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_source, 0);
  self->_isObservationControllerActivelyObserving = 0;
  [(AVObservationController *)self->_observationController stopAllObservation];
  selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
  self->_selectionFeedbackGenerator = 0;

  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  inSyncWithSourceValuesTimer = self->_inSyncWithSourceValuesTimer;
  if (inSyncWithSourceValuesTimer)
  {
    [(NSTimer *)inSyncWithSourceValuesTimer invalidate];
  }

  v6.receiver = self;
  v6.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v6 dealloc];
}

- (AVMediaTimelineControl)initWithSource:(id)source
{
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = AVMediaTimelineControl;
  v5 = [(AVMediaTimelineControl *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = +[AVMediaTimelineControlConfiguration defaultConfiguration];
    v7 = *(v5 + 70);
    *(v5 + 70) = v6;

    objc_storeWeak(v5 + 72, sourceCopy);
    v5[553] = 1;
    v5[448] = 0;
    [sourceCopy currentValue];
    *(v5 + 116) = v8;
    v9 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    v10 = *(v5 + 59);
    *(v5 + 59) = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = *(v5 + 75);
    *(v5 + 75) = v11;

    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v5 + 504) = *MEMORY[0x1E69DDCE0];
    *(v5 + 520) = v13;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = *(v5 + 76);
    *(v5 + 76) = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = *(v5 + 77);
    *(v5 + 77) = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *(v5 + 78);
    *(v5 + 78) = v18;

    v5[536] = 0;
    v5[548] = 0;
    v5[549] = 0;
    v5[550] = 0;
    v5[551] = 0;
    v5[552] = 0;
  }

  return v5;
}

@end