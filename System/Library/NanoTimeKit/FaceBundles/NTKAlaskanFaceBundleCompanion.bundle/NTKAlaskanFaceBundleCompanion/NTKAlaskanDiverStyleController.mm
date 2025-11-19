@interface NTKAlaskanDiverStyleController
- (BOOL)_cancelPreCountUpWithCompletionBlock:(id)a3 animated:(BOOL)a4;
- (BOOL)crownInputHandlerCanChangeProgress:(id)a3;
- (NTKAlaskanDiverStyleController)initWithContentView:(id)a3 crownInputHandler:(id)a4 storage:(id)a5;
- (NTKAlaskanDiverStyleView)diverView;
- (NTKTroutFaceView)faceView;
- (double)alphaValueForAngle:(double)a3;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)alaskanDiverStyleView:(id)a3 didRotateDialToMinuteOffset:(int64_t)a4;
- (void)alaskanDiverStyleViewDidStartCountUpWithDate:(id)a3;
- (void)alaskanDiverStyleViewDidStartPreCountUp;
- (void)alaskanDiverStyleViewWantsToShowAlert:(id)a3;
- (void)crownInputHandler:(id)a3 didChangeProgress:(double)a4;
- (void)crownInputHandlerDidBecomeIdle:(id)a3;
- (void)dealloc;
- (void)handleExitingEditModeAnimated:(BOOL)a3;
- (void)rotateToMinuteHand;
- (void)setDatamode:(int64_t)a3;
- (void)setFaceView:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setStorage:(id)a3;
- (void)setTimeOffset:(double)a3;
- (void)updateCrownInputHandlerProgress:(double)a3;
- (void)updateTimeViewHandsVisibility;
@end

@implementation NTKAlaskanDiverStyleController

- (NTKAlaskanDiverStyleController)initWithContentView:(id)a3 crownInputHandler:(id)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = NTKAlaskanDiverStyleController;
  v11 = [(NTKAlaskanDiverStyleController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(NTKAlaskanDiverStyleController *)v11 setStorage:v10];
    v13 = objc_storeWeak(&v12->_diverView, v8);
    [v8 setDelegate:v12];

    v14 = [(NTKAlaskanDiverStyleController *)v12 storage];
    v15 = [v14 diverCountUpStartDate];

    if (v15)
    {
      WeakRetained = objc_loadWeakRetained(&v12->_diverView);
      [WeakRetained setCurrentMode:2];
    }

    v17 = objc_loadWeakRetained(&v12->_diverView);
    [v17 setStartDate:v15];

    objc_storeStrong(&v12->_crownInputHandler, a4);
    [(NTKCrownInputHandler *)v12->_crownInputHandler setDelegate:v12];
    v18 = objc_loadWeakRetained(&v12->_diverView);
    -[NTKAlaskanDiverStyleController updateCrownInputHandlerProgress:](v12, "updateCrownInputHandlerProgress:", [v18 angleOffset] / 360.0);

    [(NTKCrownInputHandler *)v12->_crownInputHandler setOffsetPerRevolution:NTKCrownInputHandlerDefaultOffsetPerRevolution * 0.5];
    [(NTKCrownInputHandler *)v12->_crownInputHandler setUseWideIdleCheck:0];
  }

  return v12;
}

- (void)dealloc
{
  [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
  v3.receiver = self;
  v3.super_class = NTKAlaskanDiverStyleController;
  [(NTKAlaskanDiverStyleController *)&v3 dealloc];
}

- (void)setStorage:(id)a3
{
  objc_storeStrong(&self->_storage, a3);
  v6 = [(NTKAlaskanDiverStyleController *)self storage];
  v4 = [v6 diverCountUpStartDate];
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  [WeakRetained setStartDate:v4];
}

- (void)setFaceView:(id)a3
{
  objc_storeWeak(&self->_faceView, a3);

  [(NTKAlaskanDiverStyleController *)self updateTimeViewHandsVisibility];
}

- (void)setDatamode:(int64_t)a3
{
  if (a3 > 5)
  {
    return;
  }

  if (((1 << a3) & 0x35) != 0)
  {
    v4 = [(NTKAlaskanPersistenceStorage *)self->_storage diverCountUpStartDate];
    WeakRetained = objc_loadWeakRetained(&self->_diverView);
    [WeakRetained setStartDate:v4];

LABEL_4:
    v6 = objc_loadWeakRetained(&self->_diverView);
    [v6 setUserInteractionEnabled:0];

    [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];

    [(NTKAlaskanDiverStyleController *)self _cancelPreCountUp];
    return;
  }

  if (a3 != 1)
  {
    v4 = objc_loadWeakRetained(&self->_diverView);
    [v4 setStartDate:0];
    goto LABEL_4;
  }

  v14 = [(NTKAlaskanPersistenceStorage *)self->_storage diverCountUpStartDate];
  if (v14)
  {
    v7 = objc_loadWeakRetained(&self->_diverView);
    [v7 setCurrentMode:2];

    v8 = [(NTKAlaskanDiverStyleController *)self faceView];
    [v8 updateTimeViewColor];

    v9 = [(NTKAlaskanDiverStyleController *)self faceView];
    v10 = [v9 timeView];
    v11 = [v10 secondHandView];
    [v11 setAlpha:0.0];
  }

  v12 = objc_loadWeakRetained(&self->_diverView);
  [v12 setStartDate:v14];

  v13 = objc_loadWeakRetained(&self->_diverView);
  [v13 setUserInteractionEnabled:1];

  [(NTKAlaskanDiverStyleController *)self _startClockUpdates];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [(NTKAlaskanDiverStyleController *)self diverView];
  [v6 setOverrideDate:v5];
}

- (void)setTimeOffset:(double)a3
{
  v4 = [(NTKAlaskanDiverStyleController *)self diverView];
  [v4 setTimeOffset:a3];
}

- (void)crownInputHandler:(id)a3 didChangeProgress:(double)a4
{
  v6 = a3;
  if (!self->_animationInProgress)
  {
    v11 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_diverView);
    v8 = [WeakRetained currentMode];

    v6 = v11;
    if (v8 == &dword_0 + 1)
    {
      self->_previousProgress = a4;
      v9 = objc_loadWeakRetained(&self->_diverView);
      [v9 setAngleOffset:(a4 * 360.0)];

      v10 = objc_loadWeakRetained(&self->_diverView);
      [v10 setSyncMarkerWithMinuteHand:1];

      v6 = v11;
    }
  }
}

- (BOOL)crownInputHandlerCanChangeProgress:(id)a3
{
  v4 = [(NTKAlaskanDiverStyleController *)self faceView];
  v5 = [v4 dataMode] == &dword_0 + 1 && !self->_animationInProgress;

  return v5;
}

- (void)crownInputHandlerDidBecomeIdle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  v6 = [WeakRetained currentMode];

  if (v6 == &dword_0 + 1)
  {
    v7 = objc_loadWeakRetained(&self->_diverView);
    [v7 setSyncMarkerWithMinuteHand:0];

    [v4 progress];
    v9 = v8 * 360.0;
    v10 = objc_loadWeakRetained(&self->_diverView);
    [v10 targetAngleOffsetForOffset:v9];
    v12 = v11;

    v13 = objc_loadWeakRetained(&self->_diverView);
    [v13 angleOffset];
    v14 = CLKFloatEqualsFloat();

    if ((v14 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v15 = objc_loadWeakRetained(&self->_diverView);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_8BE0;
      v17[3] = &unk_38AF0;
      objc_copyWeak(&v18, &location);
      [v15 setAngleOffset:1 animated:v17 progressCallback:0 completionBlock:v12];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [v4 progress];
    self->_previousProgress = v16;
  }
}

- (void)_startClockUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  if ([WeakRetained currentMode])
  {
    clockTimerToken = self->_clockTimerToken;

    if (!clockTimerToken)
    {
      objc_initWeak(&location, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_8DC4;
      v9[3] = &unk_38B18;
      objc_copyWeak(&v10, &location);
      v4 = objc_retainBlock(v9);
      if (self->_trackSeconds)
      {
        v5 = +[CLKClockTimer sharedInstance];
        [v5 startUpdatesWithUpdateFrequency:1 withHandler:v4 identificationLog:&stru_38B78];
      }

      else
      {
        v5 = +[CLKClockTimer sharedInstance];
        [v5 startUpdatesWithUpdateFrequency:0 withHandler:v4 identificationLog:&stru_38B58];
      }
      v6 = ;
      v7 = self->_clockTimerToken;
      self->_clockTimerToken = v6;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

- (void)_stopClockUpdates
{
  if (self->_clockTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)updateTimeViewHandsVisibility
{
  v3 = [(NTKAlaskanDiverStyleController *)self faceView];
  v4 = [v3 currentDisplayDate];
  [NTKAnalogHandsView minuteHandAngleForDate:v4];
  [(NTKAlaskanDiverStyleController *)self alphaValueForAngle:?];
  v6 = v5;
  v7 = [(NTKAlaskanDiverStyleController *)self faceView];
  v8 = [v7 timeView];
  v9 = [v8 minuteHandView];
  [v9 setAlpha:v6];

  v16 = [(NTKAlaskanDiverStyleController *)self faceView];
  v10 = [v16 currentDisplayDate];
  [NTKAnalogHandsView hourHandAngleForDate:v10];
  [(NTKAlaskanDiverStyleController *)self alphaValueForAngle:?];
  v12 = v11;
  v13 = [(NTKAlaskanDiverStyleController *)self faceView];
  v14 = [v13 timeView];
  v15 = [v14 hourHandView];
  [v15 setAlpha:v12];
}

- (double)alphaValueForAngle:(double)a3
{
  v4 = [(NTKAlaskanDiverStyleController *)self diverView];
  if (![v4 currentMode])
  {

    return 1.0;
  }

  if (a3 >= 0.0 && a3 <= 55.0)
  {

    return 0.5;
  }

  if (a3 < 305.0)
  {
    return 1.0;
  }

  result = 0.5;
  if (a3 > 360.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)_cancelPreCountUpWithCompletionBlock:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  v8 = [WeakRetained currentMode];

  if (v8 == &dword_0 + 1)
  {
    v9 = [(NTKAlaskanDiverStyleController *)self faceView];
    [v9 disableCrownEventReception];

    v10 = objc_loadWeakRetained(&self->_diverView);
    [v10 setCurrentMode:0];

    v11 = [(NTKAlaskanDiverStyleController *)self diverView];
    [v11 angleOffsetForDate:0];
    v13 = v12;

    objc_initWeak(&location, self);
    v14 = objc_loadWeakRetained(&self->_diverView);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_92D0;
    v22[3] = &unk_38AF0;
    objc_copyWeak(&v23, &location);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_9328;
    v19 = &unk_38BA0;
    objc_copyWeak(&v21, &location);
    v20 = v6;
    [v14 setAngleOffset:v4 animated:v22 progressCallback:&v16 completionBlock:v13 animationDuration:0.2];

    [(NTKAlaskanDiverStyleController *)self handleExitingEditModeAnimated:v4, v16, v17, v18, v19];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8 == &dword_0 + 1;
}

- (void)alaskanDiverStyleViewDidStartPreCountUp
{
  v3 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v3 enableCrownEventReception];

  [(NTKCrownInputHandler *)self->_crownInputHandler generateMajorDetents];
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  [WeakRetained setSyncMarkerWithMinuteHand:0];

  [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
  self->_trackSeconds = 1;
  [(NTKAlaskanDiverStyleController *)self _startClockUpdates];
  [(NTKAlaskanDiverStyleController *)self rotateToMinuteHand];
  v5 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v5 enumerateComplicationDisplayWrappersWithBlock:&stru_38BC0];

  v6 = [(NTKAlaskanDiverStyleController *)self faceView];
  v7 = [v6 delegate];
  [v7 faceViewWantsStatusBarHidden:1 animated:1];

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_963C;
  v17[3] = &unk_38BE8;
  objc_copyWeak(&v18, &location);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9734;
  v15[3] = &unk_38C10;
  objc_copyWeak(&v16, &location);
  [UIView animateWithDuration:v17 animations:v15 completion:0.3];
  v8 = [(NTKAlaskanDiverStyleController *)self faceView];
  v9 = [(NTKAlaskanDiverStyleController *)self diverView];
  v10 = [v9 palette];
  v11 = [v8 colorForDateComplicationPalette:v10];
  v12 = [(NTKAlaskanDiverStyleController *)self faceView];
  v13 = [v12 dateComplicationView];
  [v13 setForegroundColor:v11];

  v14 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v14 updateTimeViewColor];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)rotateToMinuteHand
{
  self->_animationInProgress = 1;
  v3 = objc_loadWeakRetained(&self->_diverView);
  v4 = [v3 currentDate];
  [v3 angleOffsetForDate:v4];
  v6 = v5;

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9928;
  v10[3] = &unk_38AF0;
  objc_copyWeak(&v11, &location);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9984;
  v8[3] = &unk_38C38;
  objc_copyWeak(v9, &location);
  v9[1] = v6;
  [WeakRetained setAngleOffset:1 animated:v10 progressCallback:v8 completionBlock:*&v6 animationDuration:0.3];

  objc_destroyWeak(v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)alaskanDiverStyleViewDidStartCountUpWithDate:(id)a3
{
  crownInputHandler = self->_crownInputHandler;
  v5 = a3;
  [(NTKCrownInputHandler *)crownInputHandler generateMajorDetents];
  v6 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v6 enableCrownEventReception];

  v7 = [(NTKAlaskanDiverStyleController *)self storage];
  [v7 setDiverCountUpStartDate:v5];

  if (!v5)
  {
    [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
    [(NTKAlaskanDiverStyleController *)self updateCrownInputHandlerProgress:0.0];
  }

  [(NTKAlaskanDiverStyleController *)self handleExitingEditModeAnimated:1];
}

- (void)alaskanDiverStyleViewWantsToShowAlert:(id)a3
{
  v4 = a3;
  v6 = [(NTKAlaskanDiverStyleController *)self faceView];
  v5 = [v6 delegate];
  [v5 faceViewWantsToPresentViewController:v4];
}

- (void)handleExitingEditModeAnimated:(BOOL)a3
{
  v3 = a3;
  [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
  self->_trackSeconds = 0;
  [(NTKAlaskanDiverStyleController *)self _startClockUpdates];
  v5 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v5 enumerateComplicationDisplayWrappersWithBlock:&stru_38C58];

  v6 = [(NTKAlaskanDiverStyleController *)self faceView];
  v7 = [v6 delegate];
  [v7 faceViewWantsStatusBarHidden:0 animated:1];

  v8 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v8 disableCrownEventReception];

  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_9E0C;
  v26[3] = &unk_38BE8;
  objc_copyWeak(&v27, &location);
  v9 = objc_retainBlock(v26);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_9F08;
  v24[3] = &unk_38BE8;
  objc_copyWeak(&v25, &location);
  v10 = objc_retainBlock(v24);
  v11 = v10;
  if (v3)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_9F68;
    v22 = &unk_38C80;
    v23 = v10;
    [UIView animateWithDuration:v9 animations:&v19 completion:0.3];
  }

  else
  {
    (v9[2])(v9);
    v11[2](v11);
  }

  v12 = [(NTKAlaskanDiverStyleController *)self faceView:v19];
  v13 = [(NTKAlaskanDiverStyleController *)self diverView];
  v14 = [v13 palette];
  v15 = [v12 colorForDateComplicationPalette:v14];
  v16 = [(NTKAlaskanDiverStyleController *)self faceView];
  v17 = [v16 dateComplicationView];
  [v17 setForegroundColor:v15];

  v18 = [(NTKAlaskanDiverStyleController *)self faceView];
  [v18 updateTimeViewColor];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)alaskanDiverStyleView:(id)a3 didRotateDialToMinuteOffset:(int64_t)a4
{
  v5 = [(NTKAlaskanDiverStyleController *)self crownInputHandler];
  v6 = v5;
  if (a4)
  {
    [v5 generateMinorDetents];
  }

  else
  {
    [v5 generateMajorDetents];
  }
}

- (void)updateCrownInputHandlerProgress:(double)a3
{
  v5 = [(NTKAlaskanDiverStyleController *)self crownInputHandler];
  [v5 setProgress:a3];

  self->_previousProgress = a3;
}

- (NTKTroutFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKAlaskanDiverStyleView)diverView
{
  WeakRetained = objc_loadWeakRetained(&self->_diverView);

  return WeakRetained;
}

@end