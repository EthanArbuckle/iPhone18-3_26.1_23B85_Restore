@interface AVMediaTimelineControl
- (AVMediaTimelineControl)initWithSource:(id)a3;
- (AVMediaTimelineControlConfiguration)configuration;
- (AVMediaTimelineControlDelegate)delegate;
- (AVMediaTimelineControlSource)source;
- (CGRect)_frameForTimeRangeMark:(id)a3;
- (CGSize)intrinsicContentSize;
- (double)_maskingLayerFrame;
- (double)_updateContainerLayersFrames;
- (float)totalValue;
- (id)_timelineViewSlider;
- (id)_uiProxyForTimeRangeMark:(id)a3;
- (void)_handleDisplayLink;
- (void)_invalidateDisplayLink;
- (void)_setupObservationsIfNeeded;
- (void)_timelineSliderDidChangeValue:(id)a3;
- (void)_updateConfiguration;
- (void)_updateDisplayLinkPausedStateIfNeeded;
- (void)_updateDisplayLinkRefreshRateIfNeeded;
- (void)_updateFineScrubbingStyleIfNeeded;
- (void)_updateLabelsIfNeeded;
- (void)_updateMaskedTimeRangeLayerPathIfNeeded;
- (void)_updateSliderPulsingStateIfNeeded;
- (void)_updateSliderTintStateToState:(void *)a3 duration:(double)a4 completionHandler:;
- (void)_updateTimeRangeMarksIfNeeded;
- (void)_updateTimeRangeMarksLayerFramesIfNeeded;
- (void)_updateTimelineSliderEmphasisStateIfNeeded;
- (void)_updateTimelineSliderEnabledStateIfNeeded;
- (void)_updateTimelineViewValuesWithForceUpdate:(uint64_t)a1;
- (void)_updateVariableScrubbingOffSetScalarIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setConfiguration:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFineScrubbingStyle:(unint64_t)a3;
- (void)setHidden:(BOOL)a3;
- (void)setSource:(id)a3;
- (void)setTotalValue:(float)a3;
- (void)setUsesCurrentValueLabelWhileScrubbing:(BOOL)a3;
- (void)slider:(id)a3 didChangeScrubbingRate:(unint64_t)a4;
- (void)slider:(id)a3 didExtendWithInsets:(UIEdgeInsets)a4;
- (void)sliderDidBeginTracking:(id)a3;
- (void)sliderDidEndTracking:(id)a3;
- (void)sliderWillEndTracking:(id)a3;
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

- (void)slider:(id)a3 didChangeScrubbingRate:(unint64_t)a4
{
  v7 = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (a4 - 1 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18B6EC638[a4 - 1];
    }

    [v7 mediaTimelineControl:self didChangeScrubbingRate:v6];
  }
}

- (void)slider:(id)a3 didExtendWithInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  self->_sliderEdgeInsets = a4;
  [(AVMediaTimelineControl *)self _updateContainerLayersFrames];
  [(AVMediaTimelineControl *)self _updateTimeRangeMarksLayerFramesIfNeeded];
  [(AVMediaTimelineControl *)self _updateMaskedTimeRangeLayerPathIfNeeded];
  v9 = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 mediaTimelineControl:self didExtendWithInsets:{top, left, bottom, right}];
  }
}

- (double)_updateContainerLayersFrames
{
  if (result)
  {
    v1 = result;
    if (*(result + 61))
    {
      v2 = [(AVMediaTimelineControl *)result _timelineViewSlider];
      [v2 frame];
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
  if (a1)
  {
    v1 = [a1 timelineView];
    v2 = [v1 fluidSlider];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)sliderDidEndTracking:(id)a3
{
  self->_isDecelerating = 0;
  v4 = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 mediaTimelineControlDidEndDecelerating:self];
  }
}

- (void)sliderWillEndTracking:(id)a3
{
  self->_isDecelerating = 1;
  v11 = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 mediaTimelineControlDidEndChanging:self];
  }

  [(AVMediaTimelineControl *)self _updateTimelineSliderEmphasisStateIfNeeded];
  [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
  inSyncWithSourceValuesTimer = self->_inSyncWithSourceValuesTimer;
  if (inSyncWithSourceValuesTimer)
  {
    [(NSTimer *)inSyncWithSourceValuesTimer invalidate];
  }

  v5 = [(AVMediaTimelineControl *)self source];
  if ([v5 isPlaying])
  {
    v6 = [(AVMediaTimelineControl *)self source];
    v7 = [v6 isLoading];

    if ((v7 & 1) == 0)
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
  if (a1)
  {
    v2 = [a1 timelineView];
    v3 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
    v4 = [v3 isTracking];
    if (v4 != [v2 isEmphasized])
    {
      v5 = [a1 configuration];
      v6 = [v5 labelsConfiguration];
      v7 = [v6 labelsStyle];

      objc_initWeak(&location, a1);
      if (v7 != 2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 504), *MEMORY[0x1E69DDCE0]), vceqq_f64(*(a1 + 520), *(MEMORY[0x1E69DDCE0] + 16))))) & 1) != 0)
      {
        [v2 prepareForDeemphasisIfNeeded];
        [v2 setEmphasized:v4];
        v10 = *(a1 + 424);
        v11 = 1.0;
        if (v10 && [v10 isRunning] && objc_msgSend(*(a1 + 424), "isInterruptible"))
        {
          [*(a1 + 424) fractionComplete];
          v11 = v12;
          [*(a1 + 424) stopAnimation:1];
          [*(a1 + 424) finishAnimationAtPosition:2];
          v13 = *(a1 + 424);
          *(a1 + 424) = 0;
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
        v27 = v4;
        v17 = [v14 initWithDuration:3 curve:v25 animations:v16];
        v18 = *(a1 + 424);
        *(a1 + 424) = v17;

        v19 = *(a1 + 424);
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __68__AVMediaTimelineControl__updateTimelineSliderEmphasisStateIfNeeded__block_invoke_4;
        v23 = &unk_1E7209618;
        objc_copyWeak(&v24, &location);
        [v19 addCompletion:&v20];
        [*(a1 + 424) startAnimation];
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
        v31 = v2;
        v33 = v4;
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
    v2 = [result configuration];
    v3 = [v2 labelsConfiguration];
    v4 = [v1 timelineView];
    if ([v3 labelsStyle] == 2)
    {
      [v4 setLeadingTimeText:0];
      [v4 setTrailingTimeText:0];
    }

    else
    {
      [v4 setLabelPosition:{objc_msgSend(v3, "labelsStyle") != 0}];
      v5 = [v3 textFont];
      [v4 setLabelsFont:v5];

      v6 = [v3 textColor];
      [v4 setLabelsTextColor:v6];

      v7 = [v3 textCompositingFilter];
      [v4 setLabelsCompositingFilter:v7];

      v8 = [v3 textFont];
      if (!v8)
      {
        v8 = +[AVMediaTimelineControlLabelsConfiguration _defaultFont];
      }

      [v4 setLabelsFont:v8];
      v9 = [v3 textColor];
      if (!v9)
      {
        v9 = +[AVMediaTimelineControlLabelsConfiguration _defaultTextColor];
      }

      [v4 setLabelsTextColor:v9];
      [v3 extendedDynamicRangeGain];
      [v4 setLabelsExtendedDynamicRangeGain:?];
    }

    v10 = [v1 configuration];
    v11 = [(AVMediaTimelineControl *)v1 _timelineViewSlider];
    v12 = [v10 currentValueVisualEffect];
    v13 = [v10 maxValueVisualEffect];
    [v11 setFilledBarVisualEffect:v12];
    [v11 setUnfilledBarVisualEffect:v13];

    v14 = [v1 configuration];
    v15 = [v1 timelineView];
    [v14 extendedDynamicRangeGain];
    [v15 setSliderExtendedDynamicRangeGain:?];

    return [v1 _updateDisplayLinkRefreshRateIfNeeded];
  }

  return result;
}

- (void)sliderDidBeginTracking:(id)a3
{
  self->_isDecelerating = 0;
  [(AVMediaTimelineControl *)self _updateVariableScrubbingOffSetScalarIfNeeded];
  v5 = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 mediaTimelineControlWillBeginChanging:self];
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
  if (a1)
  {
    v2 = [a1 window];
    if (v2)
    {
      v14 = v2;
      v3 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
      [v3 frame];
      v5 = v4 * 0.5;
      [v3 frame];
      [a1 convertPoint:v14 toView:{v5, v6 * 0.5}];
      v8 = v7;
      if ([a1 fineScrubbingStyle] == 2)
      {
        [v14 bounds];
        v8 = v9 - v8;
      }

      [AVMobileChromelessFluidSlider variableSpeedScrubbingMultiplierForDistanceToEdge:v8];
      v11 = v10;
      v12 = fabsf(v11 + -0.9);
      if (v11 > 0.9 || v12 < 0.00000011921)
      {
        [v3 setVariableSpeedScrubbingOffsetMultiplier:v10 * 0.6];
      }

      v2 = v14;
    }
  }
}

- (id)_uiProxyForTimeRangeMark:(id)a3
{
  v4 = a3;
  v5 = [v4 markUIProvider];
  v6 = [(AVMediaTimelineControl *)self source];
  v7 = [v5 uiProxyForTimeRangeMark:v4 withSource:v6];

  return v7;
}

- (CGRect)_frameForTimeRangeMark:(id)a3
{
  v4 = a3;
  v5 = [v4 markUIProvider];
  v6 = [(AVMediaTimelineControl *)self source];
  v7 = [v5 uiProxyForTimeRangeMark:v4 withSource:v6];

  if ([v7 isMasked])
  {
    v8 = [(AVMediaTimelineControl *)self _maskingLayerFrame];
  }

  else
  {
    [(CAShapeLayer *)self->_timeRangeMarksContainerLayer frame];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [v16 frame];
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
  [v4 startValue];
  v25 = v24;
  v26 = objc_loadWeakRetained(&self->_source);
  [v26 minValue];
  v28 = (v25 - v27);
  v29 = objc_loadWeakRetained(&self->_source);
  [v29 minValue];
  v31 = v28 / (v23 - v30);

  v32 = [v4 markUIProvider];
  [v32 timeRangeMark:v4 sizeInFrame:{v12, v13, v14, v15}];
  v34 = v33;
  v36 = v35;

  v37 = v14 * v31;
  left = self->_sliderEdgeInsets.left;
  if (left < 0.0)
  {
    v37 = v37 + left - fabs(self->_sliderEdgeInsets.right) + (v14 - v18) * -0.5;
  }

  [v4 startValue];
  v40 = v39;
  [v4 endValue];
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
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 424) isRunning];
  v2 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
  [v2 frame];

  return *(a1 + 512);
}

- (void)_timelineSliderDidChangeValue:(id)a3
{
  v4 = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [v4 value];
  v6 = v5;

  if (self)
  {
    if (self->_lastFeedbackValue != -3.4028e38)
    {
      v7 = [(AVMediaTimelineControl *)self source];
      [v7 minValue];
      v9 = v8;
      [v7 maxValue];
      v11 = v10;
      v12 = [(AVMediaTimelineControl *)self _timelineViewSlider];
      [v12 value];
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

    v22 = [(AVMediaTimelineControl *)self _timelineViewSlider];
    v23 = [(AVMediaTimelineControl *)self timelineView];
    v24 = [v23 fluidSlider];

    v25 = [(NSArray *)self->_timeRangeMarks count];
    if (v22)
    {
      if (v25 && v24 == 0)
      {
        [v22 value];
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
  v33 = [(AVMediaTimelineControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v32 = v6;
    [v33 mediaTimelineControl:self didChangeValue:v32];
  }

  [(AVMediaTimelineControl *)self _updateLabelsIfNeeded];
}

- (void)_updateLabelsIfNeeded
{
  if (a1)
  {
    v2 = [a1 timelineView];
    if (v2)
    {
      v18 = v2;
      v3 = [a1 configuration];
      v4 = [v3 labelsConfiguration];
      if ([v4 labelsStyle] != 2)
      {
        v5 = [a1 source];
        v6 = [v5 currentValueText];
        v7 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
        v8 = [v7 isTracking];

        v9 = [a1 source];
        v10 = [v9 isLoading];

        if (*(a1 + 551) & 1) == 0 && ((v8 | v10))
        {
          v11 = *(a1 + 456);
          if (!v11)
          {
            v12 = objc_alloc_init(MEMORY[0x1E6988158]);
            v13 = *(a1 + 456);
            *(a1 + 456) = v12;

            v11 = *(a1 + 456);
          }

          v14 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
          [v14 value];
          v16 = [v11 stringFromSeconds:v15];

          v6 = v16;
        }

        [v18 setLeadingTimeText:v6];
        v17 = [v5 maxValueText];
        [v18 setTrailingTimeText:v17];
      }

      v2 = v18;
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

- (void)_updateTimelineViewValuesWithForceUpdate:(uint64_t)a1
{
  if (a1 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 504), *MEMORY[0x1E69DDCE0]), vceqq_f64(*(a1 + 520), *(MEMORY[0x1E69DDCE0] + 16))))) & 1) != 0)
  {
    v3 = a2;
    if (a2)
    {
      *(a1 + 548) = 1;
    }

    v28 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
    v4 = [v28 isTracking];
    v5 = *(a1 + 448);
    v6 = [a1 source];
    v7 = [v6 isLoading];
    v8 = [v6 isPlaying];
    [v6 minValue];
    v10 = v9;
    [v28 minimumValue];
    v12 = vabds_f32(v10, v11);
    [v6 maxValue];
    v14 = v13;
    [v28 maximumValue];
    v16 = vabds_f32(v14, v15);
    [v6 currentValue];
    v18 = v17;
    v19 = *(a1 + 464);
    v20 = *(a1 + 544);
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
        v23 = v7 | v8 ^ 1;
      }
    }

    if (!((v28 == 0) | v4 & 1) && (v5 & 1) == 0 && (v23 & 1) == 0)
    {
      [v6 minValue];
      if (v12 >= 0.00000011921)
      {
        [v6 minValue];
        [v28 setMinimumValue:?];
      }

      [v6 maxValue];
      HIDWORD(v27) = 872415232;
      if (v16 >= 0.00000011921)
      {
        [v6 maxValue];
        [v28 setMaximumValue:?];
      }

      *&v27 = v18;
      [v28 setValue:v27];
      *(a1 + 464) = v18;
    }

    [(AVMediaTimelineControl *)a1 _updateLabelsIfNeeded];
  }
}

- (void)setUsesCurrentValueLabelWhileScrubbing:(BOOL)a3
{
  if (self->_usesCurrentValueLabelWhileScrubbing != a3)
  {
    self->_usesCurrentValueLabelWhileScrubbing = a3;
    [(AVMediaTimelineControl *)self _updateLabelsIfNeeded];
  }
}

- (float)totalValue
{
  v2 = [(AVMediaTimelineControl *)self timelineView];
  v3 = [v2 slider];
  [v3 totalValue];
  v5 = v4;

  return v5;
}

- (void)setTotalValue:(float)a3
{
  [(AVMediaTimelineControl *)self totalValue];
  if (v5 != a3)
  {
    v6 = [(AVMediaTimelineControl *)self timelineView];
    v7 = [v6 slider];
    *&v8 = a3;
    [v7 setTotalValue:v8];

    self->_totalValueSet = 1;
  }
}

- (void)setSource:(id)a3
{
  obj = a3;
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
  if (a1)
  {
    if (!*(a1 + 440))
    {
      v2 = [[AVObservationController alloc] initWithOwner:a1];
      v3 = *(a1 + 440);
      *(a1 + 440) = v2;
    }

    if ((*(a1 + 536) & 1) == 0)
    {
      *(a1 + 536) = 1;
      v4 = *(a1 + 440);
      v9[0] = @"source.loading";
      v9[1] = @"source.playing";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
      v6 = [v4 startObserving:a1 keyPaths:v5 observationHandler:&__block_literal_global_20611];

      v7 = [*(a1 + 440) startObserving:a1 keyPath:@"source.timeRangeMarks" observationHandler:&__block_literal_global_31];
      v8 = [*(a1 + 440) startObserving:a1 keyPath:@"source.currentValue" observationHandler:&__block_literal_global_37_20614];
    }
  }
}

void __52__AVMediaTimelineControl__setupObservationsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateDisplayLinkPausedStateIfNeeded];
  [v2 _updateSliderPulsingStateIfNeeded];
}

- (void)setFineScrubbingStyle:(unint64_t)a3
{
  if (self->_fineScrubbingStyle != a3)
  {
    self->_fineScrubbingStyle = a3;
    [(AVMediaTimelineControl *)self _updateFineScrubbingStyleIfNeeded];
  }
}

- (void)_updateFineScrubbingStyleIfNeeded
{
  if (a1)
  {
    v2 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
    [v2 setFineScrubbingStyle:{objc_msgSend(a1, "fineScrubbingStyle") & 3}];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVMediaTimelineControl *)self _updateTimelineSliderEnabledStateIfNeeded];
  }
}

- (void)_updateTimelineSliderEnabledStateIfNeeded
{
  if (a1)
  {
    v2 = [a1 timelineView];
    [v2 setEnabled:a1[553]];
  }
}

- (AVMediaTimelineControlConfiguration)configuration
{
  v2 = [(AVMediaTimelineControlConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  if (self->_configuration != a3)
  {
    v4 = [a3 copy];
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
        v10 = [v9 backgroundColor];
        v11 = [v10 CGColor];

        [v9 cornerRadius];
        v13 = v12;
        if ([(NSArray *)self->_timeRangeMarkLayers count]> v3)
        {
          v14 = [(NSArray *)self->_timeRangeMarkLayers objectAtIndex:v3];
          [v14 setBackgroundColor:v11];
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
  v5 = [WeakRetained timeRangeMarks];

  if (timeRangeMarks == v5)
  {
    return;
  }

  v6 = objc_loadWeakRetained(&self->_source);
  v7 = [v6 timeRangeMarks];
  v8 = self->_timeRangeMarks;
  self->_timeRangeMarks = v7;

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = MEMORY[0x1E695E0F0];
  v11 = [v9 initWithArray:MEMORY[0x1E695E0F0]];
  maskedTimeRangeMarks = self->_maskedTimeRangeMarks;
  self->_maskedTimeRangeMarks = v11;

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v10];
  p_nonMaskedTimeRangeMarks = &self->_nonMaskedTimeRangeMarks;
  nonMaskedTimeRangeMarks = self->_nonMaskedTimeRangeMarks;
  self->_nonMaskedTimeRangeMarks = v13;

  v49 = [MEMORY[0x1E695DF70] array];
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
        [v49 addObject:v21];

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

  v48 = [(AVMediaTimelineControl *)self _timelineViewSlider];
  [v48 setSnappingValues:v49];
  v25 = [(NSArray *)*p_nonMaskedTimeRangeMarks count];
  if (!self->_timeRangeMarksContainerLayer && v25)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69794A0]);
    timeRangeMarksContainerLayer = self->_timeRangeMarksContainerLayer;
    self->_timeRangeMarksContainerLayer = v26;

    v28 = [(AVMediaTimelineControl *)self layer];
    [v28 addSublayer:self->_timeRangeMarksContainerLayer];
  }

  v29 = [(NSArray *)self->_maskedTimeRangeMarks count];
  if (!self->_timeRangeMarksMaskingContainerLayer && v29)
  {
    v30 = [(AVMediaTimelineControl *)self _timelineViewSlider];
    if (v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E69794A0]);
      timeRangeMarksMaskingContainerLayer = self->_timeRangeMarksMaskingContainerLayer;
      self->_timeRangeMarksMaskingContainerLayer = v31;

      [(CAShapeLayer *)self->_timeRangeMarksMaskingContainerLayer setFillRule:*MEMORY[0x1E69797F8]];
      v33 = self->_timeRangeMarksMaskingContainerLayer;
      v34 = [MEMORY[0x1E69DC888] whiteColor];
      -[CAShapeLayer setFillColor:](v33, "setFillColor:", [v34 CGColor]);

      v35 = [(AVMediaTimelineControl *)self layer];
      [v35 addSublayer:self->_timeRangeMarksMaskingContainerLayer];

      v36 = [v30 layer];
      [v36 setMask:self->_timeRangeMarksMaskingContainerLayer];
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
        v44 = [v42 backgroundColor];
        [v43 setBackgroundColor:{objc_msgSend(v44, "CGColor")}];

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
  v3 = [(AVMediaTimelineControl *)self _timelineViewSlider];
  if (v3)
  {
    v4 = [(AVMediaTimelineControl *)self source];
    v5 = [v4 isLoading];

    if (v5)
    {
      v6 = 2 * (([v3 tintState] - 1) > 1);
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

- (void)_updateSliderTintStateToState:(void *)a3 duration:(double)a4 completionHandler:
{
  v7 = a3;
  if (a1)
  {
    v8 = [(AVMediaTimelineControl *)a1 _timelineViewSlider];
    if (v8)
    {
      v9 = a1[54];
      if (v9 && [v9 isRunning] && objc_msgSend(a1[54], "isInterruptible"))
      {
        [a1[54] stopAnimation:1];
        [a1[54] finishAnimationAtPosition:2];
        v10 = a1[54];
        a1[54] = 0;
      }

      v11 = objc_alloc(MEMORY[0x1E69DD278]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke;
      v19[3] = &unk_1E7209A60;
      v20 = v8;
      v21 = a2;
      v12 = [v11 initWithDuration:3 curve:v19 animations:a4];
      v13 = a1[54];
      a1[54] = v12;

      if (v7)
      {
        objc_initWeak(&location, a1);
        v14 = a1[54];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __83__AVMediaTimelineControl__updateSliderTintStateToState_duration_completionHandler___block_invoke_2;
        v15[3] = &unk_1E7208A30;
        objc_copyWeak(&v17, &location);
        v16 = v7;
        [v14 addCompletion:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      [a1[54] startAnimation];
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
    v3 = [(AVMediaTimelineControl *)self window];
    v4 = [v3 windowScene];
    v5 = [v4 screen];
    [v5 scale];
    v7 = v6;

    v8 = [(AVMediaTimelineControl *)self source];
    [v8 maxValue];
    v10 = v9;

    v11 = [(AVMediaTimelineControl *)self _timelineViewSlider];
    [v11 frame];
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

    v5 = [(AVMediaTimelineControl *)self source];
    v6 = [v5 isLoading];

    v7 = [(AVMediaTimelineControl *)self source];
    v8 = [v7 isPlaying];

    v10 = [(AVMediaTimelineControl *)self _timelineViewSlider];
    LOBYTE(v9) = 1;
    if (!v3 && (v6 & 1) == 0)
    {
      v9 = [v10 isTracking] | v8 ^ 1;
    }

    [(CADisplayLink *)self->_displayLink setPaused:v9 & 1];
  }
}

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v4 setAlpha:a3];
  [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVMediaTimelineControl;
  [(AVMediaTimelineControl *)&v4 setHidden:a3];
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
  v3 = [(AVMediaTimelineControl *)self timelineView];
  [(AVMediaTimelineControl *)self bounds];
  [v3 setFrame:?];

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
  v3 = [(AVMediaTimelineControl *)self window];

  if (v3)
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
        v7 = [MEMORY[0x1E695DFD0] currentRunLoop];
        [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

        [(AVMediaTimelineControl *)self _updateDisplayLinkPausedStateIfNeeded];
      }

      [(AVMediaTimelineControl *)self _updateContainerLayersFrames];
      if (!self->_timelineView)
      {
        v8 = [[AVMobileChromelessTimelineView alloc] initWithUsingFluidSlider:1];
        [(AVMobileChromelessTimelineView *)v8 setAutoresizingMask:0];
        [(AVMobileChromelessTimelineView *)v8 setDelegate:self];
        v9 = [(AVMobileChromelessTimelineView *)v8 slider];
        LODWORD(v10) = 1120403456;
        [v9 setTotalValue:v10];

        [(AVMediaTimelineControl *)self setTimelineView:v8];
        [(AVMediaTimelineControl *)self _updateTimelineSliderEnabledStateIfNeeded];
        [(AVMediaTimelineControl *)self addSubview:self->_timelineView];
        [(AVMediaTimelineControl *)self _updateTimelineViewValuesWithForceUpdate:?];
      }

      v11 = [(AVMediaTimelineControl *)self timelineView];
      v12 = [v11 slider];
      v13 = v12;
      if (v12)
      {
        [v12 addTarget:self action:sel__timelineSliderDidChangeValue_ forControlEvents:4096];
        [v13 addTarget:self action:sel__timelineSliderDidChangeValue_ forControlEvents:448];
        [v13 setDelegate:self];
        v14 = [v11 fluidSlider];
        [v14 setDirectionalHitRectInsets:{-8.0, 0.0, -8.0, 0.0}];
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
  if (a1)
  {
    [*(a1 + 408) invalidate];
    v2 = *(a1 + 408);
    *(a1 + 408) = 0;
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

- (AVMediaTimelineControl)initWithSource:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AVMediaTimelineControl;
  v5 = [(AVMediaTimelineControl *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = +[AVMediaTimelineControlConfiguration defaultConfiguration];
    v7 = *(v5 + 70);
    *(v5 + 70) = v6;

    objc_storeWeak(v5 + 72, v4);
    v5[553] = 1;
    v5[448] = 0;
    [v4 currentValue];
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