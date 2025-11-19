@interface ReservationTableViewCell
- (ReservationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIColor)detailTextColor;
- (UIColor)titleTextColor;
- (void)_setupConstraints;
- (void)loadDetailView;
- (void)setDetailText:(id)a3;
- (void)setDetailTextColor:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleTextColor:(id)a3;
- (void)setupTextVerticalConstraints;
- (void)updateLabels;
@end

@implementation ReservationTableViewCell

- (UIColor)titleTextColor
{
  v2 = [(ReservationTableViewCell *)self titleLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setTitleTextColor:(id)a3
{
  v4 = a3;
  v5 = [(ReservationTableViewCell *)self titleLabel];
  [v5 setTextColor:v4];
}

- (UIColor)detailTextColor
{
  v2 = [(ReservationTableViewCell *)self detailLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setDetailTextColor:(id)a3
{
  v4 = a3;
  v5 = [(ReservationTableViewCell *)self detailLabel];
  [v5 setTextColor:v4];
}

- (void)updateLabels
{
  v3 = [(ReservationTableViewCell *)self titleText];
  v4 = [(ReservationTableViewCell *)self titleLabel];
  [v4 setText:v3];

  v6 = [(ReservationTableViewCell *)self detailText];
  v5 = [(ReservationTableViewCell *)self detailLabel];
  [v5 setText:v6];
}

- (void)setDetailText:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_detailText] & 1) == 0)
  {
    v4 = [v6 copy];
    detailText = self->_detailText;
    self->_detailText = v4;

    [(ReservationTableViewCell *)self updateLabels];
  }
}

- (void)setTitleText:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_titleText] & 1) == 0)
  {
    v4 = [v6 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(ReservationTableViewCell *)self updateLabels];
  }
}

- (void)setupTextVerticalConstraints
{
  v3 = [(ReservationTableViewCell *)self contentView];
  v4 = [v3 layoutMarginsGuide];
  v5 = [v4 topAnchor];
  v6 = [(ReservationTableViewCell *)self titleLabel];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  v9 = [(ReservationTableViewCell *)self contentView];
  v10 = [v9 layoutMarginsGuide];
  v11 = [v10 bottomAnchor];
  v12 = [(ReservationTableViewCell *)self titleLabel];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];

  v15 = [(ReservationTableViewCell *)self titleLabel];
  v16 = [v15 firstBaselineAnchor];
  v17 = [(ReservationTableViewCell *)self detailView];
  v18 = [v17 firstBaselineAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  v21[0] = v8;
  v21[1] = v14;
  v21[2] = v19;
  v20 = [NSArray arrayWithObjects:v21 count:3];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)_setupConstraints
{
  v3 = [(ReservationTableViewCell *)self titleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ReservationTableViewCell *)self detailView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ReservationTableViewCell *)self titleLabel];
  v6 = [v5 leadingAnchor];
  v7 = [(ReservationTableViewCell *)self contentView];
  v8 = [v7 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];

  v11 = [(ReservationTableViewCell *)self detailView];
  v12 = [v11 trailingAnchor];
  v13 = [(ReservationTableViewCell *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  v17 = [(ReservationTableViewCell *)self detailView];
  v18 = [v17 leadingAnchor];
  v19 = [(ReservationTableViewCell *)self titleLabel];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintLessThanOrEqualToAnchor:v20 constant:20.0];

  v23[0] = v10;
  v23[1] = v16;
  v23[2] = v21;
  v22 = [NSArray arrayWithObjects:v23 count:3];
  [NSLayoutConstraint activateConstraints:v22];

  [(ReservationTableViewCell *)self setupTextVerticalConstraints];
}

- (void)loadDetailView
{
  v3 = objc_opt_new();
  [(ReservationTableViewCell *)self setDetailLabel:v3];

  v4 = +[UIColor labelColor];
  v5 = [(ReservationTableViewCell *)self detailLabel];
  [v5 setTextColor:v4];

  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  v7 = [(ReservationTableViewCell *)self titleLabel];
  [v7 setFont:v6];

  v8 = [(ReservationTableViewCell *)self detailLabel];
  [(ReservationTableViewCell *)self setDetailView:v8];
}

- (ReservationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = ReservationTableViewCell;
  v4 = [(ReservationTableViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    [(ReservationTableViewCell *)v4 setTitleLabel:v5];

    v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
    v7 = [(ReservationTableViewCell *)v4 titleLabel];
    [v7 setFont:v6];

    v8 = +[UIColor secondaryLabelColor];
    v9 = [(ReservationTableViewCell *)v4 titleLabel];
    [v9 setTextColor:v8];

    [(ReservationTableViewCell *)v4 loadDetailView];
    v10 = [(ReservationTableViewCell *)v4 contentView];
    v11 = [(ReservationTableViewCell *)v4 titleLabel];
    [v10 addSubview:v11];

    v12 = [(ReservationTableViewCell *)v4 contentView];
    v13 = [(ReservationTableViewCell *)v4 detailView];
    [v12 addSubview:v13];

    [(ReservationTableViewCell *)v4 _setupConstraints];
  }

  return v4;
}

@end