@interface MTAStopwatchController
- (MTAStopwatchController)initWithTarget:(id)a3;
- (MTAStopwatchControlsTarget)target;
- (void)_lapControlButtonDown:(id)a3;
- (void)_startStopButtonDown:(id)a3;
- (void)setButtonSize:(unint64_t)a3;
- (void)setMode:(unint64_t)a3 force:(BOOL)a4;
@end

@implementation MTAStopwatchController

- (MTAStopwatchController)initWithTarget:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MTAStopwatchController;
  v5 = [(MTAStopwatchController *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, v4);
    v7 = objc_alloc_init(MTACircleButton);
    startStopButton = v6->_startStopButton;
    v6->_startStopButton = v7;

    v9 = v6->_startStopButton;
    v10 = +[UIColor clearColor];
    [(MTACircleButton *)v9 setBackgroundColor:v10];

    [(MTACircleButton *)v6->_startStopButton addTarget:v6 action:"_startStopButtonDown:" forControlEvents:64];
    [(MTACircleButton *)v6->_startStopButton setButtonCircleSize:0];
    v11 = +[UIShape circleShape];
    v12 = [(MTACircleButton *)v6->_startStopButton hoverStyle];
    [v12 setShape:v11];

    v13 = objc_alloc_init(MTACircleButton);
    lapControlButton = v6->_lapControlButton;
    v6->_lapControlButton = v13;

    v15 = v6->_lapControlButton;
    v16 = +[UIColor clearColor];
    [(MTACircleButton *)v15 setBackgroundColor:v16];

    [(MTACircleButton *)v6->_lapControlButton addTarget:v6 action:"_lapControlButtonDown:" forControlEvents:64];
    [(MTACircleButton *)v6->_lapControlButton setButtonCircleSize:0];
    v17 = +[UIShape circleShape];
    v18 = [(MTACircleButton *)v6->_lapControlButton hoverStyle];
    [v18 setShape:v17];
  }

  return v6;
}

- (void)setButtonSize:(unint64_t)a3
{
  [(MTACircleButton *)self->_startStopButton setButtonCircleSize:?];
  lapControlButton = self->_lapControlButton;

  [(MTACircleButton *)lapControlButton setButtonCircleSize:a3];
}

- (void)_startStopButtonDown:(id)a3
{
  v4 = a3;
  mode = self->_mode;
  switch(mode)
  {
    case 3uLL:
      v7 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained resumeLapTimer];
      break;
    case 2uLL:
      v7 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained pauseLapTimer];
      break;
    case 1uLL:
      v7 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained startLapTimer];
      break;
    default:
      goto LABEL_8;
  }

  v4 = v7;
LABEL_8:
}

- (void)_lapControlButtonDown:(id)a3
{
  v4 = a3;
  mode = self->_mode;
  if (mode != 3)
  {
    if (mode == 2)
    {
      v7 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained lapLapTimer];
      goto LABEL_6;
    }

    if (mode != 1)
    {
      goto LABEL_7;
    }
  }

  v7 = v4;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained resetLapTimer];
LABEL_6:

  v4 = v7;
LABEL_7:
}

- (void)setMode:(unint64_t)a3 force:(BOOL)a4
{
  if (!a4 && self->_mode == a3)
  {
    return;
  }

  self->_mode = a3;
  switch(a3)
  {
    case 3uLL:
      startStopButton = self->_startStopButton;
      v37 = +[NSBundle mainBundle];
      v38 = [v37 localizedStringForKey:@"RESUME_STOPWATCH" value:&stru_1000AEF10 table:0];
      [(MTACircleButton *)startStopButton setTitle:v38 forState:0];

      v39 = self->_startStopButton;
      v40 = +[UIColor mtui_startResumeButtonTextColor];
      [(MTACircleButton *)v39 setTitleColor:v40 forState:0];

      v41 = self->_startStopButton;
      v42 = +[UIColor mtui_startResumeButtonTintColor];
      [(MTACircleButton *)v41 setTintColor:v42];

      v43 = self->_startStopButton;
      v44 = +[UIColor mtui_startResumeButtonTintColor];
      [(MTACircleButton *)v43 setBackgroundColor:v44];

      lapControlButton = self->_lapControlButton;
      v33 = +[NSBundle mainBundle];
      v34 = v33;
      v35 = @"RESET_STOPWATCH";
      break;
    case 2uLL:
      v23 = self->_startStopButton;
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"PAUSE_STOPWATCH" value:&stru_1000AEF10 table:0];
      [(MTACircleButton *)v23 setTitle:v25 forState:0];

      v26 = self->_startStopButton;
      v27 = +[UIColor mtui_stopButtonTextColor];
      [(MTACircleButton *)v26 setTitleColor:v27 forState:0];

      v28 = self->_startStopButton;
      v29 = +[UIColor mtui_stopButtonTintColor];
      [(MTACircleButton *)v28 setTintColor:v29];

      v30 = self->_startStopButton;
      v31 = +[UIColor mtui_stopButtonTintColor];
      [(MTACircleButton *)v30 setBackgroundColor:v31];

      lapControlButton = self->_lapControlButton;
      v33 = +[NSBundle mainBundle];
      v34 = v33;
      v35 = @"MARK_LAP_STOPWATCH";
      break;
    case 1uLL:
      v5 = self->_startStopButton;
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"START_STOPWATCH" value:&stru_1000AEF10 table:0];
      [(MTACircleButton *)v5 setTitle:v7 forState:0];

      v8 = self->_startStopButton;
      v9 = +[UIColor mtui_startResumeButtonTextColor];
      [(MTACircleButton *)v8 setTitleColor:v9 forState:0];

      v10 = self->_startStopButton;
      v11 = +[UIColor mtui_startResumeButtonTintColor];
      [(MTACircleButton *)v10 setTintColor:v11];

      v12 = self->_startStopButton;
      v13 = +[UIColor mtui_startResumeButtonTintColor];
      [(MTACircleButton *)v12 setBackgroundColor:v13];

      v14 = self->_lapControlButton;
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"MARK_LAP_STOPWATCH" value:&stru_1000AEF10 table:0];
      [(MTACircleButton *)v14 setTitle:v16 forState:0];

      v17 = self->_lapControlButton;
      v18 = +[UIColor mtui_disabledTextColor];
      [(MTACircleButton *)v17 setTitleColor:v18 forState:0];

      v19 = self->_lapControlButton;
      v20 = +[UIColor mtui_disabledButtonTintColor];
      [(MTACircleButton *)v19 setTintColor:v20];

      v21 = self->_lapControlButton;
      v22 = +[UIColor mtui_disabledButtonTintColor];
      goto LABEL_11;
    default:
      return;
  }

  v45 = [v33 localizedStringForKey:v35 value:&stru_1000AEF10 table:0];
  [(MTACircleButton *)lapControlButton setTitle:v45 forState:0];

  v46 = self->_lapControlButton;
  v47 = +[UIColor mtui_primaryColor];
  [(MTACircleButton *)v46 setTitleColor:v47 forState:0];

  v48 = self->_lapControlButton;
  v49 = +[UIColor mtui_lapResetButtonTintColor];
  [(MTACircleButton *)v48 setTintColor:v49];

  v21 = self->_lapControlButton;
  v22 = +[UIColor mtui_lapResetButtonTintColor];
LABEL_11:
  v50 = v22;
  [(MTACircleButton *)v21 setBackgroundColor:?];
}

- (MTAStopwatchControlsTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end