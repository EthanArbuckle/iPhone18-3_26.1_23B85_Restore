@interface ReservationSuccessViewController
- (NSString)mainText;
- (NSString)subText;
- (UILabel)mainLabel;
- (UILabel)subLabel;
- (void)setMainText:(id)a3;
- (void)setSubText:(id)a3;
- (void)viewDidLoad;
@end

@implementation ReservationSuccessViewController

- (UILabel)subLabel
{
  subLabel = self->_subLabel;
  if (!subLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_subLabel;
    self->_subLabel = v4;

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)self->_subLabel setFont:v6];

    [(UILabel *)self->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    subLabel = self->_subLabel;
  }

  return subLabel;
}

- (UILabel)mainLabel
{
  mainLabel = self->_mainLabel;
  if (!mainLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_mainLabel;
    self->_mainLabel = v4;

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(UILabel *)self->_mainLabel setFont:v6];

    [(UILabel *)self->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    mainLabel = self->_mainLabel;
  }

  return mainLabel;
}

- (NSString)subText
{
  v2 = [(ReservationSuccessViewController *)self subLabel];
  v3 = [v2 text];

  return v3;
}

- (NSString)mainText
{
  v2 = [(ReservationSuccessViewController *)self mainLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSubText:(id)a3
{
  v4 = a3;
  v5 = [(ReservationSuccessViewController *)self subLabel];
  [v5 setText:v4];
}

- (void)setMainText:(id)a3
{
  v4 = a3;
  v5 = [(ReservationSuccessViewController *)self mainLabel];
  [v5 setText:v4];
}

- (void)viewDidLoad
{
  v61.receiver = self;
  v61.super_class = ReservationSuccessViewController;
  [(ReservationSuccessViewController *)&v61 viewDidLoad];
  v3 = [UIButton buttonWithType:0];
  editButton = self->_editButton;
  self->_editButton = v3;

  [(UIButton *)self->_editButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(ReservationSuccessViewController *)self view];
  v6 = [(ReservationSuccessViewController *)self mainLabel];
  [v5 addSubview:v6];

  v7 = [(ReservationSuccessViewController *)self view];
  v8 = [(ReservationSuccessViewController *)self subLabel];
  [v7 addSubview:v8];

  v9 = [(ReservationSuccessViewController *)self view];
  v10 = [(ReservationSuccessViewController *)self editButton];
  [v9 addSubview:v10];

  v11 = [(ReservationSuccessViewController *)self mainLabel];
  v12 = [v11 leadingAnchor];
  v13 = [(ReservationSuccessViewController *)self view];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];
  v60 = [v12 constraintEqualToAnchor:v15];

  v16 = [(ReservationSuccessViewController *)self mainLabel];
  v17 = [v16 trailingAnchor];
  v18 = [(ReservationSuccessViewController *)self view];
  v19 = [v18 layoutMarginsGuide];
  v20 = [v19 trailingAnchor];
  v59 = [v17 constraintEqualToAnchor:v20];

  v21 = [(ReservationSuccessViewController *)self mainLabel];
  v22 = [v21 firstBaselineAnchor];
  v23 = [(ReservationSuccessViewController *)self view];
  v24 = [v23 layoutMarginsGuide];
  v25 = [v24 topAnchor];
  v58 = [v22 constraintEqualToAnchor:v25 constant:42.5];

  v26 = [(ReservationSuccessViewController *)self mainLabel];
  v27 = [v26 leadingAnchor];
  v28 = [(ReservationSuccessViewController *)self subLabel];
  v29 = [v28 leadingAnchor];
  v57 = [v27 constraintEqualToAnchor:v29];

  v30 = [(ReservationSuccessViewController *)self subLabel];
  v31 = [v30 trailingAnchor];
  v32 = [(ReservationSuccessViewController *)self view];
  v33 = [v32 layoutMarginsGuide];
  v34 = [v33 trailingAnchor];
  v56 = [v31 constraintEqualToAnchor:v34];

  v35 = [(ReservationSuccessViewController *)self subLabel];
  v36 = [v35 firstBaselineAnchor];
  v37 = [(ReservationSuccessViewController *)self mainLabel];
  v38 = [v37 firstBaselineAnchor];
  v55 = [v36 constraintEqualToAnchor:v38 constant:25.0];

  v39 = [(ReservationSuccessViewController *)self editButton];
  v40 = [v39 leadingAnchor];
  v41 = [(ReservationSuccessViewController *)self mainLabel];
  v42 = [v41 leadingAnchor];
  v54 = [v40 constraintEqualToAnchor:v42];

  v43 = [(ReservationSuccessViewController *)self editButton];
  v44 = [v43 trailingAnchor];
  v45 = [(ReservationSuccessViewController *)self view];
  v46 = [v45 trailingAnchor];
  v53 = [v44 constraintEqualToAnchor:v46];

  v47 = [(ReservationSuccessViewController *)self editButton];
  v48 = [v47 lastBaselineAnchor];
  v49 = [(ReservationSuccessViewController *)self view];
  v50 = [v49 bottomAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 constant:16.5];

  v62[0] = v60;
  v62[1] = v59;
  v62[2] = v58;
  v62[3] = v57;
  v62[4] = v56;
  v62[5] = v55;
  v62[6] = v54;
  v62[7] = v53;
  v62[8] = v51;
  v52 = [NSArray arrayWithObjects:v62 count:9];
  [NSLayoutConstraint activateConstraints:v52];
}

@end