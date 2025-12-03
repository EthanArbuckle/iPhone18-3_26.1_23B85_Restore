@interface MTDetailScrubController
- (BOOL)beginTrackingWithLocation:(CGPoint)location;
- (BOOL)continueTrackingWithLocation:(CGPoint)location;
- (MTDetailScrubController)init;
- (MTDetailScrubController)initWithScrubbingControl:(id)control;
- (MTDetailScrubControllerDelegate)delegate;
- (MTDetailedScrubbing)scrubbingControl;
- (double)_minimumScale;
- (double)_scaleForIdealValueForVerticalPosition:(double)position;
- (double)scaleForVerticalPosition:(double)position;
- (void)_beginScrubbing;
- (void)_commitValue:(float)value;
- (void)_endScrubbing;
- (void)endTrackingWithLocation:(CGPoint)location;
@end

@implementation MTDetailScrubController

- (MTDetailScrubController)initWithScrubbingControl:(id)control
{
  controlCopy = control;
  v8.receiver = self;
  v8.super_class = MTDetailScrubController;
  v5 = [(MTDetailScrubController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrubbingControl, controlCopy);
    v6->_scrubbingVerticalRange = 220.0;
    v6->_detailedScrubbingEnabled = 1;
  }

  return v6;
}

- (MTDetailScrubController)init
{
  [NSException raise:NSGenericException format:@"-init is invalid. Use -initWithScrubbingControl: instead."];

  return 0;
}

- (BOOL)beginTrackingWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  self->_didBeginTracking = 0;
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [WeakRetained thumbHitRect];
  v12.x = x;
  v12.y = y;
  v7 = CGRectContainsPoint(v13, v12);

  if (v7)
  {
    self->_previousLocationInView.x = x;
    self->_previousLocationInView.y = y;
    self->_beginLocationInView.x = x;
    self->_beginLocationInView.y = y;
    [(MTDetailScrubController *)self _beginScrubbing];
    feedbackGenerator = self->_feedbackGenerator;
    if (!feedbackGenerator)
    {
      v9 = objc_alloc_init(UISelectionFeedbackGenerator);
      v10 = self->_feedbackGenerator;
      self->_feedbackGenerator = v9;

      feedbackGenerator = self->_feedbackGenerator;
    }

    [(UISelectionFeedbackGenerator *)feedbackGenerator prepare];
  }

  return v7;
}

- (BOOL)continueTrackingWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = 1.0;
  if (self->_detailedScrubbingEnabled && [(MTDetailScrubController *)self durationAllowsForDetailedScrubbing])
  {
    [(MTDetailScrubController *)self scaleForVerticalPosition:y];
    v6 = v7;
    if (v7 <= 0.1)
    {
      v8 = 3;
    }

    else if (v7 > 0.35 || v7 <= 0.1)
    {
      v8 = v7 > 0.35 && (v7 <= 0.75);
    }

    else
    {
      v8 = 2;
    }

    if (self->_currentScrubSpeed != v8)
    {
      self->_currentScrubSpeed = v8;
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        [v11 detailScrubController:self didChangeScrubSpeed:self->_currentScrubSpeed];
      }
    }
  }

  [(MTDetailScrubController *)self _minimumScale];
  if (v12 < v6)
  {
    v12 = v6;
  }

  if (!self->_didBeginTracking)
  {
    if (vabdd_f64(self->_beginLocationInView.x, x) < 12.0)
    {
      goto LABEL_33;
    }

    self->_didBeginTracking = 1;
    self->_accumulatedDelta = 0.0;
  }

  v13 = fmin(v12, 1.0);
  v14 = objc_loadWeakRetained(&self->_scrubbingControl);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v16 = objc_loadWeakRetained(&self->_scrubbingControl);
  v17 = v16;
  if (isKindOfClass)
  {
    v18 = v16;
    [v18 bounds];
    [v18 trackRectForBounds:?];
    v20 = v19;
  }

  else
  {
    [v16 bounds];
    v20 = v21;
  }

  v22 = x - self->_previousLocationInView.x;
  v23 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v23 maximumValue];
  v25 = v24;
  v26 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v26 minimumValue];
  v28 = (v25 - v27) / v20;

  v29 = v22 * v28;
  v30 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v30 value];
  v32 = v31;

  v33 = v32 + v29 * v13;
  v34 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v34 minimumValue];
  v36 = v35;

  v37 = objc_loadWeakRetained(&self->_scrubbingControl);
  [v37 maximumValue];
  v39 = v38;

  if (v39 >= v33)
  {
    *&v40 = v33;
  }

  else
  {
    *&v40 = v39;
  }

  if (v36 >= *&v40)
  {
    *&v40 = v36;
  }

  if (vabds_f32(*&v40, v32) > 0.00000011921)
  {
    self->_needsCommit = 1;
  }

  if (vabdd_f64(self->_lastCommittedLocationInView.x, x) <= 1.0 && vabdd_f64(self->_lastCommittedLocationInView.y, y) <= 4.0)
  {
    self->_accumulatedDelta = (*&v40 - v32) + self->_accumulatedDelta;
  }

  else
  {
    *&v40 = *&v40 + self->_accumulatedDelta;
    [(MTDetailScrubController *)self _commitValue:v40];
    self->_accumulatedDelta = 0.0;
    self->_lastCommittedLocationInView.x = x;
    self->_lastCommittedLocationInView.y = y;
  }

LABEL_33:
  self->_previousLocationInView.x = x;
  self->_previousLocationInView.y = y;
  return 1;
}

- (void)endTrackingWithLocation:(CGPoint)location
{
  x = location.x;
  [(MTDetailScrubController *)self _endScrubbing:location.x];
  if (vabdd_f64(self->_lastCommittedLocationInView.x, x) > 3.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
    [WeakRetained value];
    [(MTDetailScrubController *)self _commitValue:?];
  }
}

- (double)scaleForVerticalPosition:(double)position
{
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  scrubbingVerticalRange = self->_scrubbingVerticalRange;
  v8 = vabdd_f64(position, self->_beginLocationInView.y);
  if (scrubbingVerticalRange >= v8)
  {
    scrubbingVerticalRange = v8;
  }

  if (userInterfaceIdiom == &dword_0 + 1)
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
  if ([v11 userInterfaceIdiom] == &dword_0 + 1)
  {
    v12 = 20.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v10 - v12;

  v14 = self->_scrubbingVerticalRange;
  v15 = +[UIDevice currentDevice];
  if ([v15 userInterfaceIdiom] == &dword_0 + 1)
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = v13 / (v14 - v16);
  v18 = (1.0 - v17);

  return v18;
}

- (double)_minimumScale
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);
  [WeakRetained bounds];
  v4 = CGRectGetWidth(v6) / self->_duration / 10.0;

  return v4;
}

- (double)_scaleForIdealValueForVerticalPosition:(double)position
{
  scrubbingVerticalRange = self->_scrubbingVerticalRange;
  v4 = vabdd_f64(position, self->_beginLocationInView.y);
  if (scrubbingVerticalRange < v4)
  {
    v4 = self->_scrubbingVerticalRange;
  }

  v5 = (fmax(v4, 20.0) + -20.0) / (scrubbingVerticalRange + -20.0);
  v6 = v5;
  if (v5 <= 0.15)
  {
    v6 = v6 / 0.150000006;
    v7 = 0.333333333;
  }

  else
  {
    v7 = 0.0250000004;
  }

  v8 = 1.0 - fmax(pow(v6, v7), 0.0);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  return fmax(v8, 0.0);
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

- (void)_commitValue:(float)value
{
  if (self->_needsCommit)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = self->_duration * value;
      *&v8 = v8;
      [v7 detailScrubController:self didChangeValue:v8];

      self->_needsCommit = 0;
    }
  }
}

- (MTDetailedScrubbing)scrubbingControl
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubbingControl);

  return WeakRetained;
}

- (MTDetailScrubControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end