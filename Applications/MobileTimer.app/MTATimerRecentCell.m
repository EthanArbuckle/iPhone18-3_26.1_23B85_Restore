@interface MTATimerRecentCell
+ (double)estimatedCellHeightForTimerWithTitle:(id)a3;
- (MTATimerRecentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)localSetup;
- (void)setDelegate:(id)a3 duration:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setupLayoutConstraints;
@end

@implementation MTATimerRecentCell

+ (double)estimatedCellHeightForTimerWithTitle:(id)a3
{
  [MTATimerRecentView estimatedHeightForTimerWithTitle:a3];
  if (result <= 110.0)
  {
    return 110.0;
  }

  return result;
}

- (MTATimerRecentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTATimerRecentCell;
  v4 = [(MTATimerRecentCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTATimerRecentCell *)v4 localSetup];
    [(MTATimerRecentCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = objc_opt_new();
  [(MTATimerRecentCell *)self setRecentView:v3];

  v4 = [(MTATimerRecentCell *)self recentView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(MTATimerRecentCell *)self contentView];
  v6 = [(MTATimerRecentCell *)self recentView];
  [v5 addSubview:v6];

  v7 = +[UIColor clearColor];
  [(MTATimerRecentCell *)self setBackgroundColor:v7];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  v3 = [(MTATimerRecentCell *)self recentView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTATimerRecentCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];
  [v27 addObject:v8];

  v9 = [(MTATimerRecentCell *)self recentView];
  v10 = [v9 trailingAnchor];
  v11 = [(MTATimerRecentCell *)self contentView];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v27 addObject:v14];

  v15 = [(MTATimerRecentCell *)self recentView];
  v16 = [v15 topAnchor];
  v17 = [(MTATimerRecentCell *)self contentView];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  [v27 addObject:v20];

  v21 = [(MTATimerRecentCell *)self recentView];
  v22 = [v21 bottomAnchor];
  v23 = [(MTATimerRecentCell *)self contentView];
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
  v9[2] = sub_10003A7C8;
  v9[3] = &unk_1000ADEA8;
  v9[4] = self;
  v10 = v5;
  [UIView animateWithDuration:v9 animations:v7];
  v8.receiver = self;
  v8.super_class = MTATimerRecentCell;
  [(MTATimerRecentCell *)&v8 setEditing:v5 animated:v4];
}

- (void)setDelegate:(id)a3 duration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTATimerRecentCell *)self recentView];
  [v8 setDelegate:v7 duration:v6];
}

@end