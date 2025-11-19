@interface MTATimerTableViewCell
+ (double)estimatedCellHeightForTimerWithTitle:(id)a3;
- (MTATimerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (MTATimerTableViewCellDelegate)delegate;
- (void)didSendPauseAction;
- (void)didSendResumeAction;
- (void)localSetup;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setRemainingTime:(double)a3 duration:(double)a4 state:(unint64_t)a5 title:(id)a6 forceRefresh:(BOOL)a7;
- (void)setupLayoutConstraints;
- (void)tickWithTimer:(id)a3;
@end

@implementation MTATimerTableViewCell

+ (double)estimatedCellHeightForTimerWithTitle:(id)a3
{
  [MTATimerCellView estimatedHeightForTimerWithTitle:a3];
  if (result <= 110.0)
  {
    return 110.0;
  }

  return result;
}

- (MTATimerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTATimerTableViewCell;
  v4 = [(MTATimerTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTATimerTableViewCell *)v4 localSetup];
    [(MTATimerTableViewCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = [[MTATimerCellView alloc] initWithDelegate:self];
  [(MTATimerTableViewCell *)self setTimerCellView:v3];

  v4 = [(MTATimerTableViewCell *)self timerCellView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MTATimerTableViewCell *)self setEditingAccessoryType:1];
  v6 = [(MTATimerTableViewCell *)self contentView];
  v5 = [(MTATimerTableViewCell *)self timerCellView];
  [v6 addSubview:v5];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  v3 = [(MTATimerTableViewCell *)self timerCellView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTATimerTableViewCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];
  [v27 addObject:v8];

  v9 = [(MTATimerTableViewCell *)self timerCellView];
  v10 = [v9 trailingAnchor];
  v11 = [(MTATimerTableViewCell *)self contentView];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v27 addObject:v14];

  v15 = [(MTATimerTableViewCell *)self timerCellView];
  v16 = [v15 topAnchor];
  v17 = [(MTATimerTableViewCell *)self contentView];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  [v27 addObject:v20];

  v21 = [(MTATimerTableViewCell *)self timerCellView];
  v22 = [v21 bottomAnchor];
  v23 = [(MTATimerTableViewCell *)self contentView];
  v24 = [v23 safeAreaLayoutGuide];
  v25 = [v24 bottomAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = 0.0;
  if (a4)
  {
    +[CATransaction animationDuration];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100048028;
  v9[3] = &unk_1000ADEA8;
  v9[4] = self;
  v10 = v5;
  [UIView animateWithDuration:v9 animations:v7];
  v8.receiver = self;
  v8.super_class = MTATimerTableViewCell;
  [(MTATimerTableViewCell *)&v8 setEditing:v5 animated:v4];
}

- (void)tickWithTimer:(id)a3
{
  v4 = a3;
  v5 = [(MTATimerTableViewCell *)self timerCellView];
  [v5 tickWithTimer:v4];
}

- (void)setRemainingTime:(double)a3 duration:(double)a4 state:(unint64_t)a5 title:(id)a6 forceRefresh:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = [(MTATimerTableViewCell *)self timerCellView];
  [v13 setRemainingTime:a5 duration:v12 state:v7 title:a3 forceRefresh:a4];
}

- (void)didSendPauseAction
{
  v3 = [(MTATimerTableViewCell *)self delegate];
  [v3 didSendPauseAction:self];
}

- (void)didSendResumeAction
{
  v3 = [(MTATimerTableViewCell *)self delegate];
  [v3 didSendResumeAction:self];
}

- (MTATimerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end