@interface MTATimerButtonsController
- (MTATimerButtonsController)initWithTarget:(id)target;
- (TimerControlsTarget)target;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_startStopButtonTapped:(id)tapped;
- (void)setButtonSize:(unint64_t)size;
- (void)setShouldEnableStartButton:(BOOL)button;
- (void)setState:(unint64_t)state;
@end

@implementation MTATimerButtonsController

- (MTATimerButtonsController)initWithTarget:(id)target
{
  targetCopy = target;
  v22.receiver = self;
  v22.super_class = MTATimerButtonsController;
  v5 = [(MTATimerButtonsController *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, targetCopy);
    v6->_shouldEnableStartButton = 1;
    v7 = objc_alloc_init(MTACircleButton);
    startStopButton = v6->_startStopButton;
    v6->_startStopButton = v7;

    v9 = +[UIColor clearColor];
    [(MTACircleButton *)v6->_startStopButton setBackgroundColor:v9];

    [(MTACircleButton *)v6->_startStopButton addTarget:v6 action:"_startStopButtonTapped:" forControlEvents:64];
    v10 = +[UIShape circleShape];
    hoverStyle = [(MTACircleButton *)v6->_startStopButton hoverStyle];
    [hoverStyle setShape:v10];

    v12 = objc_alloc_init(MTACircleButton);
    cancelButton = v6->_cancelButton;
    v6->_cancelButton = v12;

    v14 = +[UIColor clearColor];
    [(MTACircleButton *)v6->_cancelButton setBackgroundColor:v14];

    [(MTACircleButton *)v6->_cancelButton addTarget:v6 action:"_cancelButtonTapped:" forControlEvents:64];
    v15 = +[UIShape circleShape];
    hoverStyle2 = [(MTACircleButton *)v6->_cancelButton hoverStyle];
    [hoverStyle2 setShape:v15];

    v17 = v6->_cancelButton;
    v18 = +[UIColor mtui_buttonBackgroundColor];
    [(MTACircleButton *)v17 setTintColor:v18];

    v19 = v6->_cancelButton;
    v20 = +[UIColor mtui_buttonBackgroundColor];
    [(MTACircleButton *)v19 setBackgroundColor:v20];
  }

  return v6;
}

- (void)setButtonSize:(unint64_t)size
{
  self->_buttonSize = size;
  [(MTACircleButton *)self->_startStopButton setButtonCircleSize:?];
  [(MTACircleButton *)self->_cancelButton setButtonCircleSize:size];
  state = self->_state;

  [(MTATimerButtonsController *)self setState:state];
}

- (void)setShouldEnableStartButton:(BOOL)button
{
  if (self->_shouldEnableStartButton != button)
  {
    self->_shouldEnableStartButton = button;
    [(MTATimerButtonsController *)self setState:self->_state];
  }
}

- (void)_startStopButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v9 = 138543618;
    selfCopy = self;
    v11 = 2050;
    v12 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ start/stop button tapped with state: %{public}lu", &v9, 0x16u);
  }

  v7 = self->_state;
  if (v7 > 1)
  {
    if ((v7 - 2) < 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained pauseResumeTimer:tappedCopy];
LABEL_9:

      goto LABEL_12;
    }

    if (v7 != 4)
    {
      goto LABEL_12;
    }

LABEL_11:
    NSLog(@"Attempting to start/stop timer in an unknown state");
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    [WeakRetained startTimer:tappedCopy];
    goto LABEL_9;
  }

LABEL_12:
}

- (void)_cancelButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v9 = 138543618;
    selfCopy = self;
    v11 = 2050;
    v12 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel button tapped with state: %{public}lu", &v9, 0x16u);
  }

  v7 = self->_state;
  if (v7 <= 4)
  {
    if (((1 << v7) & 0x13) != 0)
    {
      NSLog(@"Attempting to cancel a timer in a stopped or unknown state");
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained cancelTimer:tappedCopy];
    }
  }
}

- (void)setState:(unint64_t)state
{
  self->_state = state;
  if (state == 3)
  {
    startStopButton = self->_startStopButton;
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"PAUSE_TIMER" value:&stru_1000AEF10 table:0];
    [(MTACircleButton *)startStopButton setTitle:v21 forState:0];

    v22 = self->_startStopButton;
    v23 = +[UIColor mtui_pauseButtonTextColor];
    [(MTACircleButton *)v22 setTitleColor:v23 forState:0];

    v24 = self->_startStopButton;
    v25 = +[UIColor mtui_pauseButtonTintColor];
    [(MTACircleButton *)v24 setTintColor:v25];

    v17 = self->_startStopButton;
    v18 = +[UIColor mtui_pauseButtonTintColor];
    goto LABEL_8;
  }

  if (state == 2)
  {
    v10 = self->_startStopButton;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"RESUME_TIMER" value:&stru_1000AEF10 table:0];
    [(MTACircleButton *)v10 setTitle:v12 forState:0];

    v13 = self->_startStopButton;
    v14 = +[UIColor mtui_startResumeButtonTextColor];
    [(MTACircleButton *)v13 setTitleColor:v14 forState:0];

    v15 = self->_startStopButton;
    v16 = +[UIColor mtui_startResumeButtonTintColor];
    [(MTACircleButton *)v15 setTintColor:v16];

    v17 = self->_startStopButton;
    v18 = +[UIColor mtui_startResumeButtonTintColor];
LABEL_8:
    v26 = v18;
    [(MTACircleButton *)v17 setBackgroundColor:v18];

    cancelButton = self->_cancelButton;
    LODWORD(v26) = MTUIIsPhoneIdiom();
    v28 = +[NSBundle mainBundle];
    v29 = v28;
    if (v26)
    {
      v30 = @"CANCEL_TIMER";
    }

    else
    {
      v30 = @"CANCEL";
    }

    v31 = [v28 localizedStringForKey:v30 value:&stru_1000AEF10 table:0];
    [(MTACircleButton *)cancelButton setTitle:v31 forState:0];

    v32 = self->_cancelButton;
    v33 = +[UIColor mtui_primaryColor];
    goto LABEL_20;
  }

  if (state != 1)
  {
    goto LABEL_21;
  }

  v4 = self->_startStopButton;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"START_TIMER" value:&stru_1000AEF10 table:0];
  [(MTACircleButton *)v4 setTitle:v6 forState:0];

  v7 = self->_startStopButton;
  v8 = +[UIColor mtui_startResumeButtonTextColor];
  [(MTACircleButton *)v7 setTitleColor:v8 forState:0];

  v9 = self->_startStopButton;
  if (self->_shouldEnableStartButton)
  {
    +[UIColor mtui_startResumeButtonTintColor];
  }

  else
  {
    +[UIColor mtui_disabledStartButtonTintColor];
  }
  v34 = ;
  [(MTACircleButton *)v9 setTintColor:v34];

  v35 = self->_startStopButton;
  if (self->_shouldEnableStartButton)
  {
    +[UIColor mtui_startResumeButtonTintColor];
  }

  else
  {
    +[UIColor mtui_disabledStartButtonTintColor];
  }
  v36 = ;
  [(MTACircleButton *)v35 setBackgroundColor:v36];

  v37 = self->_cancelButton;
  if (MTUIIsPhoneIdiom())
  {
    v38 = @"CANCEL_TIMER";
  }

  else
  {
    v38 = @"CANCEL";
  }

  v39 = +[NSBundle mainBundle];
  v40 = [v39 localizedStringForKey:v38 value:&stru_1000AEF10 table:0];
  [(MTACircleButton *)v37 setTitle:v40 forState:0];

  v32 = self->_cancelButton;
  v33 = +[UIColor mtui_tertiaryColor];
LABEL_20:
  v41 = v33;
  [(MTACircleButton *)v32 setTitleColor:v33 forState:0];

LABEL_21:
  [(MTACircleButton *)self->_startStopButton setEnabled:self->_shouldEnableStartButton];
  [(MTACircleButton *)self->_startStopButton cancelTrackingWithEvent:0];
  v42 = self->_cancelButton;

  [(MTACircleButton *)v42 cancelTrackingWithEvent:0];
}

- (TimerControlsTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end