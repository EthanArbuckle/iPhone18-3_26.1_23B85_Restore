@interface ReservationActionButtonTableViewCell
- (CGSize)intrinsicContentSize;
- (ReservationActionButtonTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setupConstraints;
@end

@implementation ReservationActionButtonTableViewCell

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = ReservationActionButtonTableViewCell;
  [(ReservationActionButtonTableViewCell *)&v4 setSelected:a3 animated:a4];
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ReservationActionButtonTableViewCell;
  [(ReservationActionButtonTableViewCell *)&v7 layoutSubviews];
  v3 = [(ReservationActionButtonTableViewCell *)self title];
  v4 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  [v4 setText:v3];

  v5 = [(ReservationActionButtonTableViewCell *)self accessoryTitle];
  v6 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  [v6 setText:v5];
}

- (void)setupConstraints
{
  v3 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ReservationActionButtonTableViewCell *)self actionButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  v7 = [v6 leadingAnchor];
  v8 = [(ReservationActionButtonTableViewCell *)self contentView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];
  v54 = [v7 constraintEqualToAnchor:v10];

  v11 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  v12 = [v11 trailingAnchor];
  v13 = [(ReservationActionButtonTableViewCell *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];
  v53 = [v12 constraintEqualToAnchor:v15];

  v16 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  v17 = [v16 firstBaselineAnchor];
  v18 = [(ReservationActionButtonTableViewCell *)self contentView];
  v19 = [v18 topAnchor];
  v52 = [v17 constraintEqualToAnchor:v19 constant:32.5];

  v20 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  v21 = [v20 leadingAnchor];
  v22 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];

  v25 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  v26 = [v25 leadingAnchor];
  v27 = [(ReservationActionButtonTableViewCell *)self contentView];
  v28 = [v27 layoutMarginsGuide];
  v29 = [v28 trailingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  v31 = [(ReservationActionButtonTableViewCell *)self accessoryTitleLabel];
  v32 = [v31 firstBaselineAnchor];
  v33 = [(ReservationActionButtonTableViewCell *)self titleLabel];
  v34 = [v33 firstBaselineAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:18.0];

  v36 = [(ReservationActionButtonTableViewCell *)self actionButton];
  v37 = [v36 trailingAnchor];
  v38 = [(ReservationActionButtonTableViewCell *)self contentView];
  v39 = [v38 layoutMarginsGuide];
  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintEqualToAnchor:v40];

  v42 = [(ReservationActionButtonTableViewCell *)self actionButton];
  v43 = [v42 topAnchor];
  v44 = [(ReservationActionButtonTableViewCell *)self contentView];
  v45 = [v44 topAnchor];
  v46 = [v43 constraintEqualToAnchor:v45 constant:17.5];

  v47 = [(ReservationActionButtonTableViewCell *)self actionButton];
  v48 = [v47 bottomAnchor];
  v49 = [(ReservationActionButtonTableViewCell *)self contentView];
  v50 = [v49 bottomAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 constant:-17.5];

  [v54 setActive:1];
  [v53 setActive:1];
  [v52 setActive:1];
  [v24 setActive:1];
  [v30 setActive:1];
  [v35 setActive:1];
  [v41 setActive:1];
  [v46 setActive:1];
  [v51 setActive:1];
}

- (ReservationActionButtonTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v22.receiver = self;
  v22.super_class = ReservationActionButtonTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v22 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    v7 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v7];

    v8 = objc_opt_new();
    accessoryTitleLabel = v4->_accessoryTitleLabel;
    v4->_accessoryTitleLabel = v8;

    v10 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_accessoryTitleLabel setTextColor:v10];

    v11 = +[OverridenBackgroundColorButton newChromeBlueButton];
    actionButton = v4->_actionButton;
    v4->_actionButton = v11;

    v13 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
    [(UILabel *)v4->_titleLabel setFont:v13];

    v14 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_accessoryTitleLabel setFont:v14];

    v15 = [(ReservationActionButtonTableViewCell *)v4 contentView];
    v16 = [(ReservationActionButtonTableViewCell *)v4 titleLabel];
    [v15 addSubview:v16];

    v17 = [(ReservationActionButtonTableViewCell *)v4 contentView];
    v18 = [(ReservationActionButtonTableViewCell *)v4 accessoryTitleLabel];
    [v17 addSubview:v18];

    v19 = [(ReservationActionButtonTableViewCell *)v4 contentView];
    v20 = [(ReservationActionButtonTableViewCell *)v4 actionButton];
    [v19 addSubview:v20];

    [(ReservationActionButtonTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end