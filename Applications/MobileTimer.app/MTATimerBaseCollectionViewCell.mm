@interface MTATimerBaseCollectionViewCell
+ (double)cellHeight;
- (MTATimerBaseCollectionViewCell)initWithFrame:(CGRect)frame;
- (MTATimerCollectionViewCellDelegate)delegate;
- (void)setupConstraints;
@end

@implementation MTATimerBaseCollectionViewCell

- (MTATimerBaseCollectionViewCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = MTATimerBaseCollectionViewCell;
  v3 = [(MTATimerBaseCollectionViewCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[MTATimerControlsView alloc] initWithDelegate:v3 style:[(MTATimerBaseCollectionViewCell *)v3 defaultViewStyle] timerControlState:1];
    [(MTATimerBaseCollectionViewCell *)v3 setTimerControlsView:v4];

    timerControlsView = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    [timerControlsView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    timerControlsView2 = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    [timerControlsView2 setFrame:{v8, v10, v12, v14}];

    contentView2 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_timerControlsView];

    v17 = +[UIColor mtui_foregroundColor];
    contentView3 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    [contentView3 setBackgroundColor:v17];

    traitCollection = [(MTATimerBaseCollectionViewCell *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v21 = v20;
    contentView4 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    layer = [contentView4 layer];
    [layer setCornerRadius:v21];

    contentView5 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    layer2 = [contentView5 layer];
    [layer2 setMasksToBounds:1];

    timerControlsView3 = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    v27 = +[UIColor mtui_foregroundColor];
    [timerControlsView3 applyBackgroundColor:v27];

    [(MTATimerBaseCollectionViewCell *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v23 = objc_opt_new();
  timerControlsView = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  leadingAnchor = [timerControlsView leadingAnchor];
  contentView = [(MTATimerBaseCollectionViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v23 addObject:v7];

  timerControlsView2 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  trailingAnchor = [timerControlsView2 trailingAnchor];
  contentView2 = [(MTATimerBaseCollectionViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 addObject:v12];

  timerControlsView3 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  topAnchor = [timerControlsView3 topAnchor];
  contentView3 = [(MTATimerBaseCollectionViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 addObject:v17];

  timerControlsView4 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  bottomAnchor = [timerControlsView4 bottomAnchor];
  contentView4 = [(MTATimerBaseCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

+ (double)cellHeight
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 lineHeight];
  v4 = v3 * 3.0 + 7.0 + 115.0;
  [v2 _scaledValueForValue:8.0];
  v6 = v4 + v5 + 31.0 + 53.0 + 100.0;

  return v6;
}

- (MTATimerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end