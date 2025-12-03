@interface CarplayCollapsedAllDayTableViewCell
+ (id)reuseIdentifier;
- (CarplayCollapsedAllDayTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_cellTitle;
- (id)normalPlatterBackgroundColor;
- (id)normalPrimaryTextColor;
- (void)_setupConstraints;
- (void)configureWithAllDayCount:(int64_t)count birthdayCount:(int64_t)birthdayCount;
- (void)crossfadeToCell:(id)cell;
- (void)forceUpdateOfAllElements;
- (void)layoutSubviews;
@end

@implementation CarplayCollapsedAllDayTableViewCell

+ (id)reuseIdentifier
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE064;
  block[3] = &unk_10020F5F0;
  block[4] = self;
  if (qword_100251B90 != -1)
  {
    dispatch_once(&qword_100251B90, block);
  }

  v2 = qword_100251B88;

  return v2;
}

- (CarplayCollapsedAllDayTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = CarplayCollapsedAllDayTableViewCell;
  v4 = [(CarplayCollapsedAllDayTableViewCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(CarplayCollapsedAllDayTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_opt_new();
    occurrenceCellSuperview = v4->_occurrenceCellSuperview;
    v4->_occurrenceCellSuperview = v6;

    v8 = +[UIColor clearColor];
    [(UIView *)v4->_occurrenceCellSuperview setBackgroundColor:v8];

    [(UIView *)v4->_occurrenceCellSuperview setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_occurrenceCellSuperview setHidden:1];
    contentView = [(CarplayCollapsedAllDayTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_occurrenceCellSuperview];

    v10 = objc_opt_new();
    allDaySuperview = v4->_allDaySuperview;
    v4->_allDaySuperview = v10;

    v12 = +[UIColor clearColor];
    [(UIView *)v4->_allDaySuperview setBackgroundColor:v12];

    [(UIView *)v4->_allDaySuperview setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CarplayCollapsedAllDayTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_allDaySuperview];

    v14 = [[CollapsedCellBackgroundView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    coloredBackgroundView = v4->_coloredBackgroundView;
    v4->_coloredBackgroundView = &v14->super;

    [(UIView *)v4->_coloredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    normalPlatterBackgroundColor = [(CarplayCollapsedAllDayTableViewCell *)v4 normalPlatterBackgroundColor];
    [(UIView *)v4->_coloredBackgroundView setBackgroundColor:normalPlatterBackgroundColor];

    layer = [(UIView *)v4->_coloredBackgroundView layer];
    [layer setMasksToBounds:1];

    [(UIView *)v4->_allDaySuperview addSubview:v4->_coloredBackgroundView];
    v18 = objc_opt_new();
    primaryLabel = v4->_primaryLabel;
    v4->_primaryLabel = v18;

    primaryTextLabelFont = [(CarplayCollapsedAllDayTableViewCell *)v4 primaryTextLabelFont];
    [(UILabel *)v4->_primaryLabel setFont:primaryTextLabelFont];

    normalPrimaryTextColor = [(CarplayCollapsedAllDayTableViewCell *)v4 normalPrimaryTextColor];
    [(UILabel *)v4->_primaryLabel setTextColor:normalPrimaryTextColor];

    [(UILabel *)v4->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_primaryLabel setNumberOfLines:1];
    [(UIView *)v4->_allDaySuperview addSubview:v4->_primaryLabel];
    [(CarplayCollapsedAllDayTableViewCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CarplayCollapsedAllDayTableViewCell;
  [(CarplayCollapsedAllDayTableViewCell *)&v15 layoutSubviews];
  layer = [(CarplayCollapsedAllDayTableViewCell *)self layer];
  mask = [layer mask];

  if (!mask)
  {
    layer2 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
    [layer2 bounds];
    v17.origin.x = v6;
    v17.origin.y = v7;
    v17.size.width = v8;
    v17.size.height = v9;
    v16.origin.x = CGRectZero.origin.x;
    v16.origin.y = CGRectZero.origin.y;
    v16.size.width = CGRectZero.size.width;
    v16.size.height = CGRectZero.size.height;
    v10 = CGRectEqualToRect(v16, v17);

    if (!v10)
    {
      v11 = +[CALayer layer];
      v12 = [UIColor colorWithWhite:1.0 alpha:1.0];
      [v11 setBackgroundColor:{objc_msgSend(v12, "CGColor")}];

      layer3 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
      [layer3 bounds];
      [v11 setFrame:?];

      layer4 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
      [layer4 setMask:v11];
    }
  }
}

- (void)configureWithAllDayCount:(int64_t)count birthdayCount:(int64_t)birthdayCount
{
  [(CarplayCollapsedAllDayTableViewCell *)self setSelectionStyle:0];
  self->_allDayCount = count;
  self->_birthdayCount = birthdayCount;
  _cellTitle = [(CarplayCollapsedAllDayTableViewCell *)self _cellTitle];
  [(UILabel *)self->_primaryLabel setText:_cellTitle];

  [(CarplayCollapsedAllDayTableViewCell *)self forceUpdateOfAllElements];
}

- (void)forceUpdateOfAllElements
{
  normalPlatterBackgroundColor = [(CarplayCollapsedAllDayTableViewCell *)self normalPlatterBackgroundColor];
  [(UIView *)self->_coloredBackgroundView setBackgroundColor:normalPlatterBackgroundColor];

  normalPrimaryTextColor = [(CarplayCollapsedAllDayTableViewCell *)self normalPrimaryTextColor];
  [(UILabel *)self->_primaryLabel setTextColor:normalPrimaryTextColor];
}

- (void)_setupConstraints
{
  leadingAnchor = [(UIView *)self->_allDaySuperview leadingAnchor];
  contentView = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v61[0] = v57;
  trailingAnchor = [(UIView *)self->_allDaySuperview trailingAnchor];
  contentView2 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v61[1] = v53;
  topAnchor = [(UIView *)self->_allDaySuperview topAnchor];
  contentView3 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v61[2] = v49;
  bottomAnchor = [(UIView *)self->_allDaySuperview bottomAnchor];
  contentView4 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  [(CarplayCollapsedAllDayTableViewCell *)self carplayBackgroundViewVerticalInset];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v3];
  v61[3] = v45;
  leadingAnchor3 = [(UIView *)self->_occurrenceCellSuperview leadingAnchor];
  contentView5 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v61[4] = v41;
  trailingAnchor3 = [(UIView *)self->_occurrenceCellSuperview trailingAnchor];
  contentView6 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v61[5] = v37;
  topAnchor3 = [(UIView *)self->_occurrenceCellSuperview topAnchor];
  contentView7 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v61[6] = v33;
  bottomAnchor3 = [(UIView *)self->_occurrenceCellSuperview bottomAnchor];
  contentView8 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v61[7] = v29;
  topAnchor5 = [(UIView *)self->_coloredBackgroundView topAnchor];
  topAnchor6 = [(UIView *)self->_allDaySuperview topAnchor];
  v26 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v61[8] = v26;
  bottomAnchor5 = [(UIView *)self->_coloredBackgroundView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_allDaySuperview bottomAnchor];
  v23 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v61[9] = v23;
  trailingAnchor5 = [(UIView *)self->_coloredBackgroundView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_allDaySuperview trailingAnchor];
  v20 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v61[10] = v20;
  leadingAnchor5 = [(UIView *)self->_coloredBackgroundView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_allDaySuperview leadingAnchor];
  v17 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v61[11] = v17;
  topAnchor7 = [(UILabel *)self->_primaryLabel topAnchor];
  topAnchor8 = [(UIView *)self->_coloredBackgroundView topAnchor];
  v14 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:8.0];
  v61[12] = v14;
  bottomAnchor7 = [(UILabel *)self->_primaryLabel bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_coloredBackgroundView bottomAnchor];
  v6 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-8.0];
  v61[13] = v6;
  trailingAnchor7 = [(UILabel *)self->_primaryLabel trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_coloredBackgroundView trailingAnchor];
  v9 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8 constant:-8.0];
  v61[14] = v9;
  leadingAnchor7 = [(UILabel *)self->_primaryLabel leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_coloredBackgroundView leadingAnchor];
  v12 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.5];
  v61[15] = v12;
  v13 = [NSArray arrayWithObjects:v61 count:16];
  [NSLayoutConstraint activateConstraints:v13];
}

- (id)normalPrimaryTextColor
{
  if ([(CarplayCollapsedAllDayTableViewCell *)self isHighlighted])
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor _carSystemFocusColor];
  }
  v2 = ;

  return v2;
}

- (id)normalPlatterBackgroundColor
{
  if ([(CarplayCollapsedAllDayTableViewCell *)self isHighlighted])
  {
    +[UIColor _carSystemFocusColor];
  }

  else
  {
    +[UIColor _carSystemQuaternaryColor];
  }
  v2 = ;

  return v2;
}

- (id)_cellTitle
{
  if (self->_allDayCount)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"num_all_day_events_carplay_list" value:&stru_1002133B8 table:0];
    v5 = [NSString localizedStringWithFormat:v4, self->_allDayCount];

    p_birthdayCount = &self->_birthdayCount;
    if (!self->_birthdayCount)
    {
      if (v5)
      {
        v7 = 0;
LABEL_11:
        v13 = v5;

        v7 = v13;
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    p_birthdayCount = &self->_birthdayCount;
    if (!self->_birthdayCount)
    {
LABEL_13:
      v7 = &stru_1002133B8;
      goto LABEL_14;
    }

    v5 = 0;
  }

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"num_birthday_events_carplay_list" value:&stru_1002133B8 table:0];
  v7 = [NSString localizedStringWithFormat:v9, *p_birthdayCount];

  if (v5 && v7)
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"%@ value:%@" table:{&stru_1002133B8, 0}];
    v12 = [NSString localizedStringWithFormat:v11, v5, v7];

    v7 = v12;
    goto LABEL_14;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (void)crossfadeToCell:(id)cell
{
  cellCopy = cell;
  contentView = [cellCopy contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  occurrenceCellSuperview = self->_occurrenceCellSuperview;
  contentView2 = [cellCopy contentView];
  [(UIView *)occurrenceCellSuperview addSubview:contentView2];

  contentView3 = [cellCopy contentView];
  leadingAnchor = [contentView3 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_occurrenceCellSuperview leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v21;
  contentView4 = [cellCopy contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_occurrenceCellSuperview trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v17;
  contentView5 = [cellCopy contentView];
  topAnchor = [contentView5 topAnchor];
  topAnchor2 = [(UIView *)self->_occurrenceCellSuperview topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v10;
  contentView6 = [cellCopy contentView];

  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_occurrenceCellSuperview bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v14;
  v15 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  [UIView transitionFromView:self->_allDaySuperview toView:self->_occurrenceCellSuperview duration:5243136 options:0 completion:0.3];
}

@end