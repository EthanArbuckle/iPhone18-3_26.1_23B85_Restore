@interface CarplayCollapsedAllDayTableViewCell
+ (id)reuseIdentifier;
- (CarplayCollapsedAllDayTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_cellTitle;
- (id)normalPlatterBackgroundColor;
- (id)normalPrimaryTextColor;
- (void)_setupConstraints;
- (void)configureWithAllDayCount:(int64_t)a3 birthdayCount:(int64_t)a4;
- (void)crossfadeToCell:(id)a3;
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
  block[4] = a1;
  if (qword_100251B90 != -1)
  {
    dispatch_once(&qword_100251B90, block);
  }

  v2 = qword_100251B88;

  return v2;
}

- (CarplayCollapsedAllDayTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v23.receiver = self;
  v23.super_class = CarplayCollapsedAllDayTableViewCell;
  v4 = [(CarplayCollapsedAllDayTableViewCell *)&v23 initWithStyle:a3 reuseIdentifier:a4];
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
    v9 = [(CarplayCollapsedAllDayTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_occurrenceCellSuperview];

    v10 = objc_opt_new();
    allDaySuperview = v4->_allDaySuperview;
    v4->_allDaySuperview = v10;

    v12 = +[UIColor clearColor];
    [(UIView *)v4->_allDaySuperview setBackgroundColor:v12];

    [(UIView *)v4->_allDaySuperview setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(CarplayCollapsedAllDayTableViewCell *)v4 contentView];
    [v13 addSubview:v4->_allDaySuperview];

    v14 = [[CollapsedCellBackgroundView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    coloredBackgroundView = v4->_coloredBackgroundView;
    v4->_coloredBackgroundView = &v14->super;

    [(UIView *)v4->_coloredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(CarplayCollapsedAllDayTableViewCell *)v4 normalPlatterBackgroundColor];
    [(UIView *)v4->_coloredBackgroundView setBackgroundColor:v16];

    v17 = [(UIView *)v4->_coloredBackgroundView layer];
    [v17 setMasksToBounds:1];

    [(UIView *)v4->_allDaySuperview addSubview:v4->_coloredBackgroundView];
    v18 = objc_opt_new();
    primaryLabel = v4->_primaryLabel;
    v4->_primaryLabel = v18;

    v20 = [(CarplayCollapsedAllDayTableViewCell *)v4 primaryTextLabelFont];
    [(UILabel *)v4->_primaryLabel setFont:v20];

    v21 = [(CarplayCollapsedAllDayTableViewCell *)v4 normalPrimaryTextColor];
    [(UILabel *)v4->_primaryLabel setTextColor:v21];

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
  v3 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
  v4 = [v3 mask];

  if (!v4)
  {
    v5 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
    [v5 bounds];
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

      v13 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
      [v13 bounds];
      [v11 setFrame:?];

      v14 = [(CarplayCollapsedAllDayTableViewCell *)self layer];
      [v14 setMask:v11];
    }
  }
}

- (void)configureWithAllDayCount:(int64_t)a3 birthdayCount:(int64_t)a4
{
  [(CarplayCollapsedAllDayTableViewCell *)self setSelectionStyle:0];
  self->_allDayCount = a3;
  self->_birthdayCount = a4;
  v7 = [(CarplayCollapsedAllDayTableViewCell *)self _cellTitle];
  [(UILabel *)self->_primaryLabel setText:v7];

  [(CarplayCollapsedAllDayTableViewCell *)self forceUpdateOfAllElements];
}

- (void)forceUpdateOfAllElements
{
  v3 = [(CarplayCollapsedAllDayTableViewCell *)self normalPlatterBackgroundColor];
  [(UIView *)self->_coloredBackgroundView setBackgroundColor:v3];

  v4 = [(CarplayCollapsedAllDayTableViewCell *)self normalPrimaryTextColor];
  [(UILabel *)self->_primaryLabel setTextColor:v4];
}

- (void)_setupConstraints
{
  v59 = [(UIView *)self->_allDaySuperview leadingAnchor];
  v60 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v58 = [v60 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v61[0] = v57;
  v55 = [(UIView *)self->_allDaySuperview trailingAnchor];
  v56 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v54 = [v56 trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v61[1] = v53;
  v51 = [(UIView *)self->_allDaySuperview topAnchor];
  v52 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v50 = [v52 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v61[2] = v49;
  v47 = [(UIView *)self->_allDaySuperview bottomAnchor];
  v48 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v46 = [v48 bottomAnchor];
  [(CarplayCollapsedAllDayTableViewCell *)self carplayBackgroundViewVerticalInset];
  v45 = [v47 constraintEqualToAnchor:v46 constant:-v3];
  v61[3] = v45;
  v43 = [(UIView *)self->_occurrenceCellSuperview leadingAnchor];
  v44 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v61[4] = v41;
  v39 = [(UIView *)self->_occurrenceCellSuperview trailingAnchor];
  v40 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v38 = [v40 trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v61[5] = v37;
  v35 = [(UIView *)self->_occurrenceCellSuperview topAnchor];
  v36 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v34 = [v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v61[6] = v33;
  v31 = [(UIView *)self->_occurrenceCellSuperview bottomAnchor];
  v32 = [(CarplayCollapsedAllDayTableViewCell *)self contentView];
  v30 = [v32 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v61[7] = v29;
  v28 = [(UIView *)self->_coloredBackgroundView topAnchor];
  v27 = [(UIView *)self->_allDaySuperview topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v61[8] = v26;
  v25 = [(UIView *)self->_coloredBackgroundView bottomAnchor];
  v24 = [(UIView *)self->_allDaySuperview bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v61[9] = v23;
  v22 = [(UIView *)self->_coloredBackgroundView trailingAnchor];
  v21 = [(UIView *)self->_allDaySuperview trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v61[10] = v20;
  v19 = [(UIView *)self->_coloredBackgroundView leadingAnchor];
  v18 = [(UIView *)self->_allDaySuperview leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v61[11] = v17;
  v16 = [(UILabel *)self->_primaryLabel topAnchor];
  v15 = [(UIView *)self->_coloredBackgroundView topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15 constant:8.0];
  v61[12] = v14;
  v4 = [(UILabel *)self->_primaryLabel bottomAnchor];
  v5 = [(UIView *)self->_coloredBackgroundView bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-8.0];
  v61[13] = v6;
  v7 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v8 = [(UIView *)self->_coloredBackgroundView trailingAnchor];
  v9 = [v7 constraintLessThanOrEqualToAnchor:v8 constant:-8.0];
  v61[14] = v9;
  v10 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v11 = [(UIView *)self->_coloredBackgroundView leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.5];
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

- (void)crossfadeToCell:(id)a3
{
  v4 = a3;
  v5 = [v4 contentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  occurrenceCellSuperview = self->_occurrenceCellSuperview;
  v7 = [v4 contentView];
  [(UIView *)occurrenceCellSuperview addSubview:v7];

  v24 = [v4 contentView];
  v23 = [v24 leadingAnchor];
  v22 = [(UIView *)self->_occurrenceCellSuperview leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v25[0] = v21;
  v20 = [v4 contentView];
  v19 = [v20 trailingAnchor];
  v18 = [(UIView *)self->_occurrenceCellSuperview trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v25[1] = v17;
  v16 = [v4 contentView];
  v8 = [v16 topAnchor];
  v9 = [(UIView *)self->_occurrenceCellSuperview topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v25[2] = v10;
  v11 = [v4 contentView];

  v12 = [v11 bottomAnchor];
  v13 = [(UIView *)self->_occurrenceCellSuperview bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v25[3] = v14;
  v15 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  [UIView transitionFromView:self->_allDaySuperview toView:self->_occurrenceCellSuperview duration:5243136 options:0 completion:0.3];
}

@end