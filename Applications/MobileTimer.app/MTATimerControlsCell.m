@interface MTATimerControlsCell
- (BOOL)edited;
- (MTATimerControlsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unint64_t)timerViewStyle;
- (void)localSetup;
- (void)setDelegate:(id)a3;
- (void)setDuration:(double)a3;
- (void)setTimerToneName:(id)a3;
- (void)setupLayoutConstraints;
@end

@implementation MTATimerControlsCell

- (MTATimerControlsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTATimerControlsCell;
  v4 = [(MTATimerControlsCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTATimerControlsCell *)v4 localSetup];
    [(MTATimerControlsCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = [[MTATimerControlsView alloc] initWithDelegate:0 style:[(MTATimerControlsCell *)self timerViewStyle] timerControlState:0];
  [(MTATimerControlsCell *)self setControlsView:v3];

  v4 = [(MTATimerControlsCell *)self controlsView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(MTATimerControlsCell *)self contentView];
  v6 = [(MTATimerControlsCell *)self controlsView];
  [v5 addSubview:v6];

  v7 = +[UIColor clearColor];
  [(MTATimerControlsCell *)self setBackgroundColor:v7];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  v3 = [(MTATimerControlsCell *)self controlsView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTATimerControlsCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];
  [v27 addObject:v8];

  v9 = [(MTATimerControlsCell *)self controlsView];
  v10 = [v9 trailingAnchor];
  v11 = [(MTATimerControlsCell *)self contentView];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v27 addObject:v14];

  v15 = [(MTATimerControlsCell *)self controlsView];
  v16 = [v15 topAnchor];
  v17 = [(MTATimerControlsCell *)self contentView];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  [v27 addObject:v20];

  v21 = [(MTATimerControlsCell *)self controlsView];
  v22 = [v21 bottomAnchor];
  v23 = [(MTATimerControlsCell *)self contentView];
  v24 = [v23 safeAreaLayoutGuide];
  v25 = [v24 bottomAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (BOOL)edited
{
  v2 = [(MTATimerControlsCell *)self controlsView];
  v3 = [v2 edited];

  return v3;
}

- (unint64_t)timerViewStyle
{
  v2 = [(MTATimerControlsCell *)self traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerControlsCell *)self controlsView];
  [v5 setControlsViewDelegate:v4];
}

- (void)setDuration:(double)a3
{
  v4 = [(MTATimerControlsCell *)self controlsView];
  [v4 setCountDownDuration:a3];
}

- (void)setTimerToneName:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerControlsCell *)self controlsView];
  [v5 setTimerToneName:v4];
}

@end