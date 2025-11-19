@interface MPDetailScrubController
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)durationAllowsForDetailedScrubbing;
- (MPDetailScrubController)init;
- (MPDetailScrubController)initWithScrubbingControl:(id)a3;
- (MPDetailScrubControllerDelegate)delegate;
- (MPDetailedScrubbing)scrubbingControl;
- (float)_minimumScale;
- (float)_scaleForIdealValueForVerticalPosition:(double)a3;
- (float)scaleForVerticalPosition:(double)a3;
- (void)_beginScrubbing;
- (void)_commitValue:(float)a3;
- (void)_endScrubbing;
@end

@implementation MPDetailScrubController

- (MPDetailScrubControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MPDetailedScrubbing)scrubbingControl
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);

  return WeakRetained;
}

- (void)_commitValue:(float)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (self->_needsCommit)
  {
    v9 = WeakRetained;
    WeakRetained = objc_opt_respondsToSelector();
    v7 = v9;
    if (WeakRetained)
    {
      v8 = self->_duration * a3;
      *&v8 = v8;
      WeakRetained = [v9 detailScrubController:self didChangeValue:v8];
      v7 = v9;
      self->_needsCommit = 0;
    }
  }

  MEMORY[0x1EEE66BE0](WeakRetained, v6, v7);
}

- (void)_endScrubbing
{
  if (self->_isTracking)
  {
    self->_isTracking = 0;
    self->_currentScrubSpeed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained detailScrubControllerDidEndScrubbing:self];
    }
  }
}

- (void)_beginScrubbing
{
  if (!self->_isTracking)
  {
    self->_isTracking = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained detailScrubController:self didChangeScrubSpeed:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained detailScrubControllerDidBeginScrubbing:self];
    }
  }
}

- (float)_scaleForIdealValueForVerticalPosition:(double)a3
{
  scrubbingVerticalRange = self->_scrubbingVerticalRange;
  v4 = vabdd_f64(a3, self->_beginLocationInView.y);
  if (scrubbingVerticalRange < v4)
  {
    v4 = self->_scrubbingVerticalRange;
  }

  v5 = fmax(v4, 20.0) + -20.0;
  v6 = v5 / (scrubbingVerticalRange + -20.0);
  if (v6 <= 0.15)
  {
    v6 = v6 / 0.15;
    v7 = 0.33333;
  }

  else
  {
    v7 = 0.025;
  }

  v8 = 1.0 - fmaxf(powf(v6, v7), 0.0);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  return fmaxf(v8, 0.0);
}

- (float)_minimumScale
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [WeakRetained bounds];
  Width = CGRectGetWidth(v8);
  duration = self->_duration;
  v6 = (Width / duration) / 20.0;

  return v6;
}

- (float)scaleForVerticalPosition:(double)a3
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  scrubbingVerticalRange = self->_scrubbingVerticalRange;
  v8 = vabdd_f64(a3, self->_beginLocationInView.y);
  if (scrubbingVerticalRange >= v8)
  {
    scrubbingVerticalRange = v8;
  }

  if (v6 == 1)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v9 >= scrubbingVerticalRange)
  {
    v10 = v9;
  }

  else
  {
    v10 = scrubbingVerticalRange;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v11 userInterfaceIdiom] == 1)
  {
    v12 = 20.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v10 - v12;

  v14 = v13;
  v15 = self->_scrubbingVerticalRange;
  v16 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v16 userInterfaceIdiom] == 1)
  {
    v17 = 20.0;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = v14 / (v15 - v17);
  v19 = 1.0 - v18;

  return v19;
}

- (BOOL)durationAllowsForDetailedScrubbing
{
  duration = self->_duration;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [WeakRetained bounds];
  v4 = duration / CGRectGetWidth(v6) >= 0.1;

  return v4;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [v5 locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  v11 = 1.0;
  if (self->_detailedScrubbingEnabled && [(MPDetailScrubController *)self durationAllowsForDetailedScrubbing])
  {
    [(MPDetailScrubController *)self scaleForVerticalPosition:v10];
    v11 = v12;
    v13 = v12;
    if (v13 <= 0.1)
    {
      v14 = 3;
    }

    else if (v13 > 0.35 || v13 <= 0.1)
    {
      v15 = v13 <= 0.35 || v11 > 0.75;
      v14 = !v15;
    }

    else
    {
      v14 = 2;
    }

    if (self->_currentScrubSpeed != v14)
    {
      self->_currentScrubSpeed = v14;
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
      v16 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [v16 detailScrubController:self didChangeScrubSpeed:self->_currentScrubSpeed];
      }
    }
  }

  [(MPDetailScrubController *)self _minimumScale];
  if (v17 < v11)
  {
    v17 = v11;
  }

  if (!self->_didBeginTracking)
  {
    if (vabdd_f64(self->_beginLocationInView.x, v8) < 12.0)
    {
      goto LABEL_35;
    }

    self->_didBeginTracking = 1;
    self->_accumulatedDelta = 0.0;
  }

  v18 = fminf(v17, 1.0);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [WeakRetained bounds];
  v21 = v20;
  if (isKindOfClass)
  {
    [WeakRetained trackRectForBounds:?];
    v21 = v22;
  }

  v23 = v8 - self->_previousLocationInView.x;
  [WeakRetained maximumValue];
  v25 = v24;
  [WeakRetained minimumValue];
  v27 = v23 * ((v25 - v26) / v21);
  [WeakRetained value];
  v29 = v28;
  v30 = v28;
  v31 = v28 + v27 * v18;
  [WeakRetained minimumValue];
  v33 = v32;
  [WeakRetained maximumValue];
  v35 = v34;
  if (v31 <= v35)
  {
    v35 = v31;
  }

  if (v35 <= v33)
  {
    v35 = v33;
  }

  v36 = v35;
  if (vabds_f32(v36, v29) > 0.00000011921)
  {
    self->_needsCommit = 1;
  }

  if (vabdd_f64(self->_lastCommittedLocationInView.x, v8) <= 8.0 && vabdd_f64(self->_lastCommittedLocationInView.y, v10) <= 4.0)
  {
    v38 = v35 - v30 + self->_accumulatedDelta;
    self->_accumulatedDelta = v38;
  }

  else
  {
    v37 = v35 + self->_accumulatedDelta;
    *&v37 = v37;
    [(MPDetailScrubController *)self _commitValue:v37];
    self->_accumulatedDelta = 0.0;
    self->_lastCommittedLocationInView.x = v8;
    self->_lastCommittedLocationInView.y = v10;
  }

LABEL_35:
  self->_previousLocationInView.x = v8;
  self->_previousLocationInView.y = v10;

  return 1;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  self->_didBeginTracking = 0;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [v5 locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  [WeakRetained thumbHitRect];
  v16.x = v8;
  v16.y = v10;
  v11 = CGRectContainsPoint(v17, v16);
  if (v11)
  {
    self->_previousLocationInView.x = v8;
    self->_previousLocationInView.y = v10;
    self->_beginLocationInView.x = v8;
    self->_beginLocationInView.y = v10;
    [(MPDetailScrubController *)self _beginScrubbing];
    feedbackGenerator = self->_feedbackGenerator;
    if (!feedbackGenerator)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69DCF40]);
      v14 = self->_feedbackGenerator;
      self->_feedbackGenerator = v13;

      feedbackGenerator = self->_feedbackGenerator;
    }

    [(UISelectionFeedbackGenerator *)feedbackGenerator prepare];
  }

  return v11;
}

- (MPDetailScrubController)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"-init is invalid. Use -initWithScrubbingControl: instead."];

  return 0;
}

- (MPDetailScrubController)initWithScrubbingControl:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPDetailScrubController;
  v5 = [(MPDetailScrubController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrubbingControl, v4);
    v6->_scrubbingVerticalRange = 220.0;
    v6->_detailedScrubbingEnabled = 1;
  }

  return v6;
}

@end