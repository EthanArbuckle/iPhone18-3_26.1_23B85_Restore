@interface BCAlertHeaderTableViewCell
+ (double)heightForBusinessItem:(id)a3 forWidth:(double)a4;
+ (double)heightForTitleText:(id)a3 forWidth:(double)a4;
- (BCAlertHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)updateContentViewUsingBusinessItem:(id)a3 brandedHeaderDelegate:(id)a4;
- (void)updateContentViewUsingTitleText:(id)a3;
@end

@implementation BCAlertHeaderTableViewCell

- (BCAlertHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = BCAlertHeaderTableViewCell;
  v4 = [(BCAlertHeaderTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(BCAlertHeaderTableViewCell *)v4 setSelectionStyle:0];
  }

  return v5;
}

+ (double)heightForBusinessItem:(id)a3 forWidth:(double)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [BCAlertHeaderTableViewCell alloc];
    v7 = [objc_opt_class() reuseIdentifier];
    v8 = [(BCAlertHeaderTableViewCell *)v6 initWithStyle:0 reuseIdentifier:v7];

    [(BCAlertHeaderTableViewCell *)v8 updateContentViewUsingBusinessItem:v5 brandedHeaderDelegate:0];
    [(BCAlertHeaderTableViewCell *)v8 layoutMargins];
    v12 = v11;
    v13 = v9;
    v15 = v14 + v10;
    v16 = a4 - (v14 + v10);
    if (v15 >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = v16;
    }

    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [(BCAlertHeaderTableViewCell *)v8 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v10];
    v19 = v13 + v12 + v18;
  }

  else
  {
    v20 = sub_10000BC3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[BCAlertHeaderTableViewCell heightForBusinessItem:forWidth:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Cannot update content view for nil BCSBusinessItem", &v22, 0xCu);
    }

    v19 = 0.0;
  }

  return v19;
}

+ (double)heightForTitleText:(id)a3 forWidth:(double)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [BCAlertHeaderTableViewCell alloc];
    v7 = [objc_opt_class() reuseIdentifier];
    v8 = [(BCAlertHeaderTableViewCell *)v6 initWithStyle:0 reuseIdentifier:v7];

    [(BCAlertHeaderTableViewCell *)v8 updateContentViewUsingTitleText:v5];
    [(BCAlertHeaderTableViewCell *)v8 layoutMargins];
    v12 = v11;
    v13 = v9;
    v15 = v14 + v10;
    v16 = a4 - (v14 + v10);
    if (v15 >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = v16;
    }

    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [(BCAlertHeaderTableViewCell *)v8 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v10];
    v19 = v13 + v12 + v18;
  }

  else
  {
    v20 = sub_10000BC3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[BCAlertHeaderTableViewCell heightForTitleText:forWidth:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Cannot compute height for nil title text", &v22, 0xCu);
    }

    v19 = 0.0;
  }

  return v19;
}

- (void)updateContentViewUsingBusinessItem:(id)a3 brandedHeaderDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [UIColor colorNamed:@"CellBackgroundColor"];
    [(BCAlertHeaderTableViewCell *)self setBackgroundColor:v8];

    v9 = [(BCAlertHeaderTableViewCell *)self contentView];
    v10 = [v9 subviews];
    [v10 makeObjectsPerformSelector:"removeFromSuperview"];

    v36 = [v6 makeBrandedHeaderViewController];
    [v36 setDelegate:v7];
    [v36 view];
    v11 = v47 = v7;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(BCAlertHeaderTableViewCell *)self contentView];
    [v12 addSubview:v11];

    v45 = [v11 leadingAnchor];
    v46 = [(BCAlertHeaderTableViewCell *)self contentView];
    v44 = [v46 layoutMarginsGuide];
    v43 = [v44 leadingAnchor];
    v42 = [v45 constraintGreaterThanOrEqualToAnchor:v43];
    v48[0] = v42;
    v40 = [v11 trailingAnchor];
    v41 = [(BCAlertHeaderTableViewCell *)self contentView];
    v39 = [v41 layoutMarginsGuide];
    v38 = [v39 trailingAnchor];
    v37 = [v40 constraintLessThanOrEqualToAnchor:v38];
    v48[1] = v37;
    v34 = [v11 centerXAnchor];
    v35 = [(BCAlertHeaderTableViewCell *)self contentView];
    v33 = [v35 layoutMarginsGuide];
    v32 = [v33 centerXAnchor];
    v31 = [v34 constraintEqualToAnchor:v32];
    v48[2] = v31;
    v29 = [v11 centerYAnchor];
    v30 = [(BCAlertHeaderTableViewCell *)self contentView];
    v28 = [v30 layoutMarginsGuide];
    v27 = [v28 centerYAnchor];
    v26 = [v29 constraintEqualToAnchor:v27];
    v48[3] = v26;
    v24 = [v11 topAnchor];
    v25 = [(BCAlertHeaderTableViewCell *)self contentView];
    v23 = [v25 layoutMarginsGuide];
    v13 = [v23 topAnchor];
    v14 = [v24 constraintEqualToAnchor:v13];
    v48[4] = v14;
    v15 = [v11 bottomAnchor];
    v16 = [(BCAlertHeaderTableViewCell *)self contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 bottomAnchor];
    [v15 constraintEqualToAnchor:v18];
    v20 = v19 = v6;
    v48[5] = v20;
    v21 = [NSArray arrayWithObjects:v48 count:6];
    [NSLayoutConstraint activateConstraints:v21];

    v6 = v19;
    v22 = v36;

    v7 = v47;
  }

  else
  {
    v22 = sub_10000BC3C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[BCAlertHeaderTableViewCell updateContentViewUsingBusinessItem:brandedHeaderDelegate:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Cannot update content view for nil BCSBusinessItem", buf, 0xCu);
    }
  }
}

- (void)updateContentViewUsingTitleText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [UIColor colorNamed:@"CellBackgroundColor"];
    [(BCAlertHeaderTableViewCell *)self setBackgroundColor:v5];

    v6 = [(BCAlertHeaderTableViewCell *)self contentView];
    v7 = [v6 subviews];
    [v7 makeObjectsPerformSelector:"removeFromSuperview"];

    v8 = objc_alloc_init(UILabel);
    [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [UIFont boldSystemFontOfSize:13.0];
    v9 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle3];
    v10 = [v9 scaledFontForFont:v39];
    [(UILabel *)v8 setFont:v10];

    v11 = +[UIColor secondaryLabelColor];
    [(UILabel *)v8 setTextColor:v11];

    [(UILabel *)v8 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8 setNumberOfLines:0];
    [(UILabel *)v8 setTextAlignment:1];
    [(UILabel *)v8 setLineBreakMode:4];
    [(UILabel *)v8 setText:v4];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v8;
    v31 = v8;

    v13 = [(BCAlertHeaderTableViewCell *)self contentView];
    [v13 addSubview:self->_titleLabel];

    v37 = [(UILabel *)self->_titleLabel topAnchor];
    v38 = [(BCAlertHeaderTableViewCell *)self contentView];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:10.0];
    v40[0] = v35;
    v33 = [(UILabel *)self->_titleLabel leadingAnchor];
    v34 = [(BCAlertHeaderTableViewCell *)self contentView];
    v32 = [v34 layoutMarginsGuide];
    v30 = [v32 leadingAnchor];
    v29 = [v33 constraintEqualToAnchor:v30];
    v40[1] = v29;
    v27 = [(UILabel *)self->_titleLabel trailingAnchor];
    v28 = [(BCAlertHeaderTableViewCell *)self contentView];
    v26 = [v28 layoutMarginsGuide];
    v25 = [v26 trailingAnchor];
    v24 = [v27 constraintEqualToAnchor:v25];
    v40[2] = v24;
    v14 = [(UILabel *)self->_titleLabel centerYAnchor];
    v15 = [(BCAlertHeaderTableViewCell *)self contentView];
    v16 = [v15 centerYAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v40[3] = v17;
    v18 = [(UILabel *)self->_titleLabel bottomAnchor];
    v19 = [(BCAlertHeaderTableViewCell *)self contentView];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20];
    v40[4] = v21;
    v22 = [NSArray arrayWithObjects:v40 count:5];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = v39;
  }

  else
  {
    v23 = sub_10000BC3C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[BCAlertHeaderTableViewCell updateContentViewUsingTitleText:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Cannot update content view for nil Title Text", buf, 0xCu);
    }
  }
}

@end