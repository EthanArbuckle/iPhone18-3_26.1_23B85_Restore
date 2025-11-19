@interface COSAppleWatchPairingDiscoveryNoWatchViewController
- (COSAppleWatchPairingDiscoveryNoWatchViewController)init;
- (id)_detailTextLabelFont;
- (id)_titleLabelFont;
- (id)alternateButtonTitle;
- (void)alternateButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation COSAppleWatchPairingDiscoveryNoWatchViewController

- (COSAppleWatchPairingDiscoveryNoWatchViewController)init
{
  v5.receiver = self;
  v5.super_class = COSAppleWatchPairingDiscoveryNoWatchViewController;
  v2 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSAppleWatchPairingDiscoveryNoWatchViewController *)v2 setStyle:8];
  }

  return v3;
}

- (void)viewDidLoad
{
  v74.receiver = self;
  v74.super_class = COSAppleWatchPairingDiscoveryNoWatchViewController;
  [(COSAppleWatchPairingDiscoveryNoWatchViewController *)&v74 viewDidLoad];
  v3 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  containerView = self->_containerView;
  self->_containerView = v9;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self contentView];
  [v11 addSubview:self->_containerView];

  v12 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v12;

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v14;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:v16];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v17 = BPSTextColor();
  [(UILabel *)self->_titleLabel setColor:v17];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"HAVING_TROUBLE_MAGIC_CODE" value:&stru_10026E598 table:@"Localizable"];
  [(UILabel *)self->_titleLabel setText:v19];

  v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  detailTextLabel = self->_detailTextLabel;
  self->_detailTextLabel = v20;

  [(UILabel *)self->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self _detailTextLabelFont];
  [(UILabel *)self->_detailTextLabel setFont:v22];

  [(UILabel *)self->_detailTextLabel setNumberOfLines:0];
  [(UILabel *)self->_detailTextLabel setTextAlignment:1];
  v23 = BPSDetailTextColor();
  [(UILabel *)self->_detailTextLabel setColor:v23];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"HAVING_TROUBLE_MAGIC_CODE_DETAIL_TEXT" value:&stru_10026E598 table:@"Localizable"];
  [(UILabel *)self->_detailTextLabel setText:v25];

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  [(UIView *)self->_containerView addSubview:self->_spinner];
  [(UIView *)self->_containerView addSubview:self->_titleLabel];
  [(UIView *)self->_containerView addSubview:self->_detailTextLabel];
  v73 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self contentView];
  v72 = [v73 leadingAnchor];
  v71 = [(UIView *)self->_containerView leadingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v75[0] = v70;
  v69 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self contentView];
  v68 = [v69 trailingAnchor];
  v67 = [(UIView *)self->_containerView trailingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v75[1] = v66;
  v64 = [(UIView *)self->_containerView centerXAnchor];
  v65 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self view];
  v63 = [v65 centerXAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v75[2] = v62;
  v60 = [(UIView *)self->_containerView centerYAnchor];
  v61 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self view];
  v59 = [v61 centerYAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v75[3] = v58;
  v57 = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  v56 = [(UIView *)self->_containerView topAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v75[4] = v55;
  v54 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v53 = [(UIView *)self->_containerView centerXAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v75[5] = v52;
  v51 = [(UILabel *)self->_titleLabel topAnchor];
  v50 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:10.0];
  v75[6] = v49;
  v47 = [(UILabel *)self->_titleLabel leadingAnchor];
  v48 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v46 = [v48 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v75[7] = v45;
  v43 = [(UILabel *)self->_titleLabel trailingAnchor];
  v44 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v42 = [v44 trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v75[8] = v41;
  v40 = [(UILabel *)self->_detailTextLabel topAnchor];
  v39 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:0.0];
  v75[9] = v38;
  v37 = [(UILabel *)self->_detailTextLabel bottomAnchor];
  v36 = [(UIView *)self->_containerView bottomAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v75[10] = v35;
  v26 = [(UILabel *)self->_detailTextLabel leadingAnchor];
  v27 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v28 = [v27 leadingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v75[11] = v29;
  v30 = [(UILabel *)self->_detailTextLabel trailingAnchor];
  v31 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v75[12] = v33;
  v34 = [NSArray arrayWithObjects:v75 count:13];
  [NSLayoutConstraint activateConstraints:v34];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

- (id)_titleLabelFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v8 = UIFontWeightTrait;
  v3 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [v2 fontDescriptorByAddingAttributes:v4];

  v6 = [UIFont fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)_detailTextLabelFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"HAVING_TROUBLE_MAGIC_CODE_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/HT204505"];
  [v4 openURL:v3 configuration:0 completionHandler:0];
}

@end