@interface MTASingleTimerCollectionViewCell
- (MTASingleTimerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setupControlsView;
- (void)setupLayoutConstraints;
@end

@implementation MTASingleTimerCollectionViewCell

- (MTASingleTimerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTASingleTimerCollectionViewCell;
  v3 = [(MTASingleTimerCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTASingleTimerCollectionViewCell *)v3 setupControlsView];
    [(MTASingleTimerCollectionViewCell *)v4 setupLayoutConstraints];
  }

  [(MTASingleTimerCollectionViewCell *)v4 setHoverStyle:0];
  return v4;
}

- (void)setupControlsView
{
  v3 = [[MTATimerControlsView alloc] initWithDelegate:0 style:4 timerControlState:0];
  [(MTASingleTimerCollectionViewCell *)self setControlsView:v3];

  v4 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MTASingleTimerCollectionViewCell *)self contentView];
  v5 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [v6 addSubview:v5];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  v3 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTASingleTimerCollectionViewCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];
  [v27 addObject:v8];

  v9 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  v10 = [v9 trailingAnchor];
  v11 = [(MTASingleTimerCollectionViewCell *)self contentView];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v27 addObject:v14];

  v15 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  v16 = [v15 topAnchor];
  v17 = [(MTASingleTimerCollectionViewCell *)self contentView];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  [v27 addObject:v20];

  v21 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  v22 = [v21 bottomAnchor];
  v23 = [(MTASingleTimerCollectionViewCell *)self contentView];
  v24 = [v23 safeAreaLayoutGuide];
  v25 = [v24 bottomAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MTASingleTimerCollectionViewCell;
  [(MTASingleTimerCollectionViewCell *)&v5 prepareForReuse];
  v3 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [v3 setStateNeedsReset:1];

  v4 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [v4 resetLayout];
}

@end