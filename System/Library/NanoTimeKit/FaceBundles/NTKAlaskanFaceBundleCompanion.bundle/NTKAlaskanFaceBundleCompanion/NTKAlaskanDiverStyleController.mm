@interface NTKAlaskanDiverStyleController
- (BOOL)_cancelPreCountUpWithCompletionBlock:(id)block animated:(BOOL)animated;
- (BOOL)crownInputHandlerCanChangeProgress:(id)progress;
- (NTKAlaskanDiverStyleController)initWithContentView:(id)view crownInputHandler:(id)handler storage:(id)storage;
- (NTKAlaskanDiverStyleView)diverView;
- (NTKTroutFaceView)faceView;
- (double)alphaValueForAngle:(double)angle;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)alaskanDiverStyleView:(id)view didRotateDialToMinuteOffset:(int64_t)offset;
- (void)alaskanDiverStyleViewDidStartCountUpWithDate:(id)date;
- (void)alaskanDiverStyleViewDidStartPreCountUp;
- (void)alaskanDiverStyleViewWantsToShowAlert:(id)alert;
- (void)crownInputHandler:(id)handler didChangeProgress:(double)progress;
- (void)crownInputHandlerDidBecomeIdle:(id)idle;
- (void)dealloc;
- (void)handleExitingEditModeAnimated:(BOOL)animated;
- (void)rotateToMinuteHand;
- (void)setDatamode:(int64_t)datamode;
- (void)setFaceView:(id)view;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setStorage:(id)storage;
- (void)setTimeOffset:(double)offset;
- (void)updateCrownInputHandlerProgress:(double)progress;
- (void)updateTimeViewHandsVisibility;
@end

@implementation NTKAlaskanDiverStyleController

- (NTKAlaskanDiverStyleController)initWithContentView:(id)view crownInputHandler:(id)handler storage:(id)storage
{
  viewCopy = view;
  handlerCopy = handler;
  storageCopy = storage;
  v20.receiver = self;
  v20.super_class = NTKAlaskanDiverStyleController;
  v11 = [(NTKAlaskanDiverStyleController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(NTKAlaskanDiverStyleController *)v11 setStorage:storageCopy];
    v13 = objc_storeWeak(&v12->_diverView, viewCopy);
    [viewCopy setDelegate:v12];

    storage = [(NTKAlaskanDiverStyleController *)v12 storage];
    diverCountUpStartDate = [storage diverCountUpStartDate];

    if (diverCountUpStartDate)
    {
      WeakRetained = objc_loadWeakRetained(&v12->_diverView);
      [WeakRetained setCurrentMode:2];
    }

    v17 = objc_loadWeakRetained(&v12->_diverView);
    [v17 setStartDate:diverCountUpStartDate];

    objc_storeStrong(&v12->_crownInputHandler, handler);
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

- (void)setStorage:(id)storage
{
  objc_storeStrong(&self->_storage, storage);
  storage = [(NTKAlaskanDiverStyleController *)self storage];
  diverCountUpStartDate = [storage diverCountUpStartDate];
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  [WeakRetained setStartDate:diverCountUpStartDate];
}

- (void)setFaceView:(id)view
{
  objc_storeWeak(&self->_faceView, view);

  [(NTKAlaskanDiverStyleController *)self updateTimeViewHandsVisibility];
}

- (void)setDatamode:(int64_t)datamode
{
  if (datamode > 5)
  {
    return;
  }

  if (((1 << datamode) & 0x35) != 0)
  {
    diverCountUpStartDate = [(NTKAlaskanPersistenceStorage *)self->_storage diverCountUpStartDate];
    WeakRetained = objc_loadWeakRetained(&self->_diverView);
    [WeakRetained setStartDate:diverCountUpStartDate];

LABEL_4:
    v6 = objc_loadWeakRetained(&self->_diverView);
    [v6 setUserInteractionEnabled:0];

    [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];

    [(NTKAlaskanDiverStyleController *)self _cancelPreCountUp];
    return;
  }

  if (datamode != 1)
  {
    diverCountUpStartDate = objc_loadWeakRetained(&self->_diverView);
    [diverCountUpStartDate setStartDate:0];
    goto LABEL_4;
  }

  diverCountUpStartDate2 = [(NTKAlaskanPersistenceStorage *)self->_storage diverCountUpStartDate];
  if (diverCountUpStartDate2)
  {
    v7 = objc_loadWeakRetained(&self->_diverView);
    [v7 setCurrentMode:2];

    faceView = [(NTKAlaskanDiverStyleController *)self faceView];
    [faceView updateTimeViewColor];

    faceView2 = [(NTKAlaskanDiverStyleController *)self faceView];
    timeView = [faceView2 timeView];
    secondHandView = [timeView secondHandView];
    [secondHandView setAlpha:0.0];
  }

  v12 = objc_loadWeakRetained(&self->_diverView);
  [v12 setStartDate:diverCountUpStartDate2];

  v13 = objc_loadWeakRetained(&self->_diverView);
  [v13 setUserInteractionEnabled:1];

  [(NTKAlaskanDiverStyleController *)self _startClockUpdates];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  diverView = [(NTKAlaskanDiverStyleController *)self diverView];
  [diverView setOverrideDate:dateCopy];
}

- (void)setTimeOffset:(double)offset
{
  diverView = [(NTKAlaskanDiverStyleController *)self diverView];
  [diverView setTimeOffset:offset];
}

- (void)crownInputHandler:(id)handler didChangeProgress:(double)progress
{
  handlerCopy = handler;
  if (!self->_animationInProgress)
  {
    v11 = handlerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_diverView);
    currentMode = [WeakRetained currentMode];

    handlerCopy = v11;
    if (currentMode == &dword_0 + 1)
    {
      self->_previousProgress = progress;
      v9 = objc_loadWeakRetained(&self->_diverView);
      [v9 setAngleOffset:(progress * 360.0)];

      v10 = objc_loadWeakRetained(&self->_diverView);
      [v10 setSyncMarkerWithMinuteHand:1];

      handlerCopy = v11;
    }
  }
}

- (BOOL)crownInputHandlerCanChangeProgress:(id)progress
{
  faceView = [(NTKAlaskanDiverStyleController *)self faceView];
  v5 = [faceView dataMode] == &dword_0 + 1 && !self->_animationInProgress;

  return v5;
}

- (void)crownInputHandlerDidBecomeIdle:(id)idle
{
  idleCopy = idle;
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  currentMode = [WeakRetained currentMode];

  if (currentMode == &dword_0 + 1)
  {
    v7 = objc_loadWeakRetained(&self->_diverView);
    [v7 setSyncMarkerWithMinuteHand:0];

    [idleCopy progress];
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
    [idleCopy progress];
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
  faceView = [(NTKAlaskanDiverStyleController *)self faceView];
  currentDisplayDate = [faceView currentDisplayDate];
  [NTKAnalogHandsView minuteHandAngleForDate:currentDisplayDate];
  [(NTKAlaskanDiverStyleController *)self alphaValueForAngle:?];
  v6 = v5;
  faceView2 = [(NTKAlaskanDiverStyleController *)self faceView];
  timeView = [faceView2 timeView];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setAlpha:v6];

  faceView3 = [(NTKAlaskanDiverStyleController *)self faceView];
  currentDisplayDate2 = [faceView3 currentDisplayDate];
  [NTKAnalogHandsView hourHandAngleForDate:currentDisplayDate2];
  [(NTKAlaskanDiverStyleController *)self alphaValueForAngle:?];
  v12 = v11;
  faceView4 = [(NTKAlaskanDiverStyleController *)self faceView];
  timeView2 = [faceView4 timeView];
  hourHandView = [timeView2 hourHandView];
  [hourHandView setAlpha:v12];
}

- (double)alphaValueForAngle:(double)angle
{
  diverView = [(NTKAlaskanDiverStyleController *)self diverView];
  if (![diverView currentMode])
  {

    return 1.0;
  }

  if (angle >= 0.0 && angle <= 55.0)
  {

    return 0.5;
  }

  if (angle < 305.0)
  {
    return 1.0;
  }

  result = 0.5;
  if (angle > 360.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)_cancelPreCountUpWithCompletionBlock:(id)block animated:(BOOL)animated
{
  animatedCopy = animated;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  currentMode = [WeakRetained currentMode];

  if (currentMode == &dword_0 + 1)
  {
    faceView = [(NTKAlaskanDiverStyleController *)self faceView];
    [faceView disableCrownEventReception];

    v10 = objc_loadWeakRetained(&self->_diverView);
    [v10 setCurrentMode:0];

    diverView = [(NTKAlaskanDiverStyleController *)self diverView];
    [diverView angleOffsetForDate:0];
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
    v20 = blockCopy;
    [v14 setAngleOffset:animatedCopy animated:v22 progressCallback:&v16 completionBlock:v13 animationDuration:0.2];

    [(NTKAlaskanDiverStyleController *)self handleExitingEditModeAnimated:animatedCopy, v16, v17, v18, v19];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return currentMode == &dword_0 + 1;
}

- (void)alaskanDiverStyleViewDidStartPreCountUp
{
  faceView = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView enableCrownEventReception];

  [(NTKCrownInputHandler *)self->_crownInputHandler generateMajorDetents];
  WeakRetained = objc_loadWeakRetained(&self->_diverView);
  [WeakRetained setSyncMarkerWithMinuteHand:0];

  [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
  self->_trackSeconds = 1;
  [(NTKAlaskanDiverStyleController *)self _startClockUpdates];
  [(NTKAlaskanDiverStyleController *)self rotateToMinuteHand];
  faceView2 = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView2 enumerateComplicationDisplayWrappersWithBlock:&stru_38BC0];

  faceView3 = [(NTKAlaskanDiverStyleController *)self faceView];
  delegate = [faceView3 delegate];
  [delegate faceViewWantsStatusBarHidden:1 animated:1];

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
  faceView4 = [(NTKAlaskanDiverStyleController *)self faceView];
  diverView = [(NTKAlaskanDiverStyleController *)self diverView];
  palette = [diverView palette];
  v11 = [faceView4 colorForDateComplicationPalette:palette];
  faceView5 = [(NTKAlaskanDiverStyleController *)self faceView];
  dateComplicationView = [faceView5 dateComplicationView];
  [dateComplicationView setForegroundColor:v11];

  faceView6 = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView6 updateTimeViewColor];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)rotateToMinuteHand
{
  self->_animationInProgress = 1;
  v3 = objc_loadWeakRetained(&self->_diverView);
  currentDate = [v3 currentDate];
  [v3 angleOffsetForDate:currentDate];
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

- (void)alaskanDiverStyleViewDidStartCountUpWithDate:(id)date
{
  crownInputHandler = self->_crownInputHandler;
  dateCopy = date;
  [(NTKCrownInputHandler *)crownInputHandler generateMajorDetents];
  faceView = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView enableCrownEventReception];

  storage = [(NTKAlaskanDiverStyleController *)self storage];
  [storage setDiverCountUpStartDate:dateCopy];

  if (!dateCopy)
  {
    [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
    [(NTKAlaskanDiverStyleController *)self updateCrownInputHandlerProgress:0.0];
  }

  [(NTKAlaskanDiverStyleController *)self handleExitingEditModeAnimated:1];
}

- (void)alaskanDiverStyleViewWantsToShowAlert:(id)alert
{
  alertCopy = alert;
  faceView = [(NTKAlaskanDiverStyleController *)self faceView];
  delegate = [faceView delegate];
  [delegate faceViewWantsToPresentViewController:alertCopy];
}

- (void)handleExitingEditModeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NTKAlaskanDiverStyleController *)self _stopClockUpdates];
  self->_trackSeconds = 0;
  [(NTKAlaskanDiverStyleController *)self _startClockUpdates];
  faceView = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView enumerateComplicationDisplayWrappersWithBlock:&stru_38C58];

  faceView2 = [(NTKAlaskanDiverStyleController *)self faceView];
  delegate = [faceView2 delegate];
  [delegate faceViewWantsStatusBarHidden:0 animated:1];

  faceView3 = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView3 disableCrownEventReception];

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
  if (animatedCopy)
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
  diverView = [(NTKAlaskanDiverStyleController *)self diverView];
  palette = [diverView palette];
  v15 = [v12 colorForDateComplicationPalette:palette];
  faceView4 = [(NTKAlaskanDiverStyleController *)self faceView];
  dateComplicationView = [faceView4 dateComplicationView];
  [dateComplicationView setForegroundColor:v15];

  faceView5 = [(NTKAlaskanDiverStyleController *)self faceView];
  [faceView5 updateTimeViewColor];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)alaskanDiverStyleView:(id)view didRotateDialToMinuteOffset:(int64_t)offset
{
  crownInputHandler = [(NTKAlaskanDiverStyleController *)self crownInputHandler];
  v6 = crownInputHandler;
  if (offset)
  {
    [crownInputHandler generateMinorDetents];
  }

  else
  {
    [crownInputHandler generateMajorDetents];
  }
}

- (void)updateCrownInputHandlerProgress:(double)progress
{
  crownInputHandler = [(NTKAlaskanDiverStyleController *)self crownInputHandler];
  [crownInputHandler setProgress:progress];

  self->_previousProgress = progress;
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