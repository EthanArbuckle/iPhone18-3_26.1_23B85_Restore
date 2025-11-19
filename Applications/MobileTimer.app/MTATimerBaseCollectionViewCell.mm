@interface MTATimerBaseCollectionViewCell
+ (double)cellHeight;
- (MTATimerBaseCollectionViewCell)initWithFrame:(CGRect)a3;
- (MTATimerCollectionViewCellDelegate)delegate;
- (void)setupConstraints;
@end

@implementation MTATimerBaseCollectionViewCell

- (MTATimerBaseCollectionViewCell)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = MTATimerBaseCollectionViewCell;
  v3 = [(MTATimerBaseCollectionViewCell *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[MTATimerControlsView alloc] initWithDelegate:v3 style:[(MTATimerBaseCollectionViewCell *)v3 defaultViewStyle] timerControlState:1];
    [(MTATimerBaseCollectionViewCell *)v3 setTimerControlsView:v4];

    v5 = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    [v16 addSubview:v3->_timerControlsView];

    v17 = +[UIColor mtui_foregroundColor];
    v18 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    [v18 setBackgroundColor:v17];

    v19 = [(MTATimerBaseCollectionViewCell *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v21 = v20;
    v22 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    v23 = [v22 layer];
    [v23 setCornerRadius:v21];

    v24 = [(MTATimerBaseCollectionViewCell *)v3 contentView];
    v25 = [v24 layer];
    [v25 setMasksToBounds:1];

    v26 = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    v27 = +[UIColor mtui_foregroundColor];
    [v26 applyBackgroundColor:v27];

    [(MTATimerBaseCollectionViewCell *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v23 = objc_opt_new();
  v3 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTATimerBaseCollectionViewCell *)self contentView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v23 addObject:v7];

  v8 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  v9 = [v8 trailingAnchor];
  v10 = [(MTATimerBaseCollectionViewCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v23 addObject:v12];

  v13 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  v14 = [v13 topAnchor];
  v15 = [(MTATimerBaseCollectionViewCell *)self contentView];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v23 addObject:v17];

  v18 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  v19 = [v18 bottomAnchor];
  v20 = [(MTATimerBaseCollectionViewCell *)self contentView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
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