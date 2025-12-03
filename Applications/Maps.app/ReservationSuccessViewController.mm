@interface ReservationSuccessViewController
- (NSString)mainText;
- (NSString)subText;
- (UILabel)mainLabel;
- (UILabel)subLabel;
- (void)setMainText:(id)text;
- (void)setSubText:(id)text;
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
  subLabel = [(ReservationSuccessViewController *)self subLabel];
  text = [subLabel text];

  return text;
}

- (NSString)mainText
{
  mainLabel = [(ReservationSuccessViewController *)self mainLabel];
  text = [mainLabel text];

  return text;
}

- (void)setSubText:(id)text
{
  textCopy = text;
  subLabel = [(ReservationSuccessViewController *)self subLabel];
  [subLabel setText:textCopy];
}

- (void)setMainText:(id)text
{
  textCopy = text;
  mainLabel = [(ReservationSuccessViewController *)self mainLabel];
  [mainLabel setText:textCopy];
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
  view = [(ReservationSuccessViewController *)self view];
  mainLabel = [(ReservationSuccessViewController *)self mainLabel];
  [view addSubview:mainLabel];

  view2 = [(ReservationSuccessViewController *)self view];
  subLabel = [(ReservationSuccessViewController *)self subLabel];
  [view2 addSubview:subLabel];

  view3 = [(ReservationSuccessViewController *)self view];
  editButton = [(ReservationSuccessViewController *)self editButton];
  [view3 addSubview:editButton];

  mainLabel2 = [(ReservationSuccessViewController *)self mainLabel];
  leadingAnchor = [mainLabel2 leadingAnchor];
  view4 = [(ReservationSuccessViewController *)self view];
  layoutMarginsGuide = [view4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  mainLabel3 = [(ReservationSuccessViewController *)self mainLabel];
  trailingAnchor = [mainLabel3 trailingAnchor];
  view5 = [(ReservationSuccessViewController *)self view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  mainLabel4 = [(ReservationSuccessViewController *)self mainLabel];
  firstBaselineAnchor = [mainLabel4 firstBaselineAnchor];
  view6 = [(ReservationSuccessViewController *)self view];
  layoutMarginsGuide3 = [view6 layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide3 topAnchor];
  v58 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:42.5];

  mainLabel5 = [(ReservationSuccessViewController *)self mainLabel];
  leadingAnchor3 = [mainLabel5 leadingAnchor];
  subLabel2 = [(ReservationSuccessViewController *)self subLabel];
  leadingAnchor4 = [subLabel2 leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  subLabel3 = [(ReservationSuccessViewController *)self subLabel];
  trailingAnchor3 = [subLabel3 trailingAnchor];
  view7 = [(ReservationSuccessViewController *)self view];
  layoutMarginsGuide4 = [view7 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
  v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  subLabel4 = [(ReservationSuccessViewController *)self subLabel];
  firstBaselineAnchor2 = [subLabel4 firstBaselineAnchor];
  mainLabel6 = [(ReservationSuccessViewController *)self mainLabel];
  firstBaselineAnchor3 = [mainLabel6 firstBaselineAnchor];
  v55 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:25.0];

  editButton2 = [(ReservationSuccessViewController *)self editButton];
  leadingAnchor5 = [editButton2 leadingAnchor];
  mainLabel7 = [(ReservationSuccessViewController *)self mainLabel];
  leadingAnchor6 = [mainLabel7 leadingAnchor];
  v54 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  editButton3 = [(ReservationSuccessViewController *)self editButton];
  trailingAnchor5 = [editButton3 trailingAnchor];
  view8 = [(ReservationSuccessViewController *)self view];
  trailingAnchor6 = [view8 trailingAnchor];
  v53 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];

  editButton4 = [(ReservationSuccessViewController *)self editButton];
  lastBaselineAnchor = [editButton4 lastBaselineAnchor];
  view9 = [(ReservationSuccessViewController *)self view];
  bottomAnchor = [view9 bottomAnchor];
  v51 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:16.5];

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