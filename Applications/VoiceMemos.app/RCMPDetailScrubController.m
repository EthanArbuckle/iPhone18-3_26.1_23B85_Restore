@interface RCMPDetailScrubController
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)durationAllowsForDetailedScrubbing;
- (RCMPDetailScrubController)init;
- (RCMPDetailScrubController)initWithScrubbingControl:(id)a3;
- (RCMPDetailScrubControllerDelegate)delegate;
- (RCMPDetailedScrubbing)scrubbingControl;
- (float)_minimumScale;
- (float)_scaleForIdealValueForVerticalPosition:(double)a3;
- (float)scaleForVerticalPosition:(double)a3;
- (void)_beginScrubbing;
- (void)_calculateAndCommitLocation:(CGPoint)a3 force:(BOOL)a4;
- (void)_commitValue:(float)a3;
- (void)_endScrubbing;
@end

@implementation RCMPDetailScrubController

- (RCMPDetailScrubController)initWithScrubbingControl:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RCMPDetailScrubController;
  v5 = [(RCMPDetailScrubController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrubbingControl, v4);
    v6->_scrubbingVerticalRange = 220.0;
    v6->_detailedScrubbingEnabled = 1;
  }

  return v6;
}

- (RCMPDetailScrubController)init
{
  [NSException raise:NSGenericException format:@"-init is invalid. Use -initWithScrubbingControl: instead."];

  return 0;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  self->_didBeginTracking = 0;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [v5 locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v11 thumbHitRect];
  v16.x = v8;
  v16.y = v10;
  LODWORD(WeakRetained) = CGRectContainsPoint(v17, v16);

  self->_beginLocationInView.x = v8;
  self->_beginLocationInView.y = v10;
  self->_previousLocationInView.x = v8;
  self->_previousLocationInView.y = v10;
  if (WeakRetained)
  {
    [(RCMPDetailScrubController *)self _beginScrubbing];
  }

  else
  {
    [(RCMPDetailScrubController *)self _calculateAndCommitLocation:1 force:v8, v10];
  }

  feedbackGenerator = self->_feedbackGenerator;
  if (!feedbackGenerator)
  {
    v13 = objc_alloc_init(UISelectionFeedbackGenerator);
    v14 = self->_feedbackGenerator;
    self->_feedbackGenerator = v13;

    feedbackGenerator = self->_feedbackGenerator;
  }

  [(UISelectionFeedbackGenerator *)feedbackGenerator prepare];
  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [v5 locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  if (self->_detailedScrubbingEnabled && [(RCMPDetailScrubController *)self durationAllowsForDetailedScrubbing])
  {
    [(RCMPDetailScrubController *)self scaleForVerticalPosition:v10];
    v12 = v11;
    if (v11 <= 0.1)
    {
      v13 = 3;
    }

    else if (v12 > 0.35 || v12 <= 0.1)
    {
      v13 = v12 > 0.35 && v11 <= 0.75;
    }

    else
    {
      v13 = 2;
    }

    if (self->_currentScrubSpeed != v13)
    {
      self->_currentScrubSpeed = v13;
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_delegate);
        [v17 detailScrubController:self didChangeScrubSpeed:self->_currentScrubSpeed];
      }
    }
  }

  if (self->_didBeginTracking)
  {
    goto LABEL_21;
  }

  if (vabdd_f64(self->_beginLocationInView.x, v8) >= 12.0)
  {
    self->_didBeginTracking = 1;
    self->_accumulatedDelta = 0.0;
LABEL_21:
    [(RCMPDetailScrubController *)self _calculateAndCommitLocation:0 force:v8, v10];
    return 1;
  }

  self->_previousLocationInView.x = v8;
  self->_previousLocationInView.y = v10;
  return 1;
}

- (void)_calculateAndCommitLocation:(CGPoint)a3 force:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = 1.0;
  if (self->_detailedScrubbingEnabled && [(RCMPDetailScrubController *)self durationAllowsForDetailedScrubbing])
  {
    [(RCMPDetailScrubController *)self scaleForVerticalPosition:y];
    v8 = v9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = objc_loadWeakRetained(&self->_scrubbingControl);
  v13 = v12;
  if (isKindOfClass)
  {
    v14 = v12;
    [v14 bounds];
    [v14 trackRectForBounds:?];
    v48 = v15;
    v17 = v16;
  }

  else
  {
    [v12 bounds];
    v48 = v18;
    v17 = v19;
  }

  v20 = x - self->_previousLocationInView.x;
  v21 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v21 maximumValue];
  v23 = v22;
  v24 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v24 minimumValue];
  v26 = (v23 - v25) / v17;

  v27 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v27 value];
  v29 = v28;

  v30 = v29 + v20 * v26 * v8;
  v31 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v31 minimumValue];
  v33 = v32;

  v34 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v34 maximumValue];
  v36 = v35;

  v37 = v36;
  if (v30 <= v36)
  {
    v37 = v30;
  }

  if (v37 <= v33)
  {
    v37 = v33;
  }

  v38 = v37;
  if (vabds_f32(v38, v29) > 0.00000011921)
  {
    self->_needsCommit = 1;
  }

  if (v4)
  {
    v39 = objc_loadWeakRetained(&self->_scrubbingControl);
    [v39 minimumValue];
    v41 = v40;

    v42 = objc_loadWeakRetained(&self->_scrubbingControl);
    [v42 maximumValue];
    v44 = v43;

    v45 = v44;
    if ((x - v48) * v26 <= v44)
    {
      v46 = (x - v48) * v26;
    }

    else
    {
      v46 = v44;
    }

    if (!self->_isTracking)
    {
      [(RCMPDetailScrubController *)self _beginScrubbing];
    }

    self->_needsCommit = 1;
    *&v45 = v46;
    if (v46 <= v41)
    {
      *&v45 = v41;
    }
  }

  else
  {
    if (vabdd_f64(self->_lastCommittedLocationInView.x, x) <= 8.0 && vabdd_f64(self->_lastCommittedLocationInView.y, y) <= 4.0)
    {
      v47 = v37 - v29 + self->_accumulatedDelta;
      self->_accumulatedDelta = v47;
      goto LABEL_26;
    }

    v45 = v37 + self->_accumulatedDelta;
    *&v45 = v45;
  }

  [(RCMPDetailScrubController *)self _commitValue:v45];
  self->_accumulatedDelta = 0.0;
  self->_lastCommittedLocationInView.x = x;
  self->_lastCommittedLocationInView.y = y;
LABEL_26:
  self->_previousLocationInView.x = x;
  self->_previousLocationInView.y = y;
}

- (BOOL)durationAllowsForDetailedScrubbing
{
  duration = self->_duration;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [WeakRetained bounds];
  v4 = duration / CGRectGetWidth(v6) >= 0.1;

  return v4;
}

- (float)scaleForVerticalPosition:(double)a3
{
  v5 = +[UIDevice currentDevice];
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

  v11 = +[UIDevice currentDevice];
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
  v16 = +[UIDevice currentDevice];
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

- (float)_minimumScale
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [WeakRetained bounds];
  Width = CGRectGetWidth(v8);
  duration = self->_duration;
  v6 = (Width / duration) / 20.0;

  return v6;
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

- (void)_beginScrubbing
{
  if (!self->_isTracking)
  {
    self->_isTracking = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 detailScrubController:self didChangeScrubSpeed:0];
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 detailScrubControllerDidBeginScrubbing:self];
    }
  }
}

- (void)_endScrubbing
{
  if (self->_isTracking)
  {
    self->_isTracking = 0;
    self->_currentScrubSpeed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 detailScrubControllerDidEndScrubbing:self];
    }
  }
}

- (void)_commitValue:(float)a3
{
  if (self->_needsCommit)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = self->_duration * a3;
      *&v8 = v8;
      [v7 detailScrubController:self didChangeValue:v8];

      self->_needsCommit = 0;
    }
  }
}

- (RCMPDetailedScrubbing)scrubbingControl
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);

  return WeakRetained;
}

- (RCMPDetailScrubControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end