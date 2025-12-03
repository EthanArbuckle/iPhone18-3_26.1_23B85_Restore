@interface ENUIExposureDetailHeaderView
- (ENUIExposureDetailHeaderView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setUp;
- (void)tappedContinueButton:(id)button;
@end

@implementation ENUIExposureDetailHeaderView

- (ENUIExposureDetailHeaderView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = ENUIExposureDetailHeaderView;
  v4 = [(ENUIExposureDetailHeaderView *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ENUIExposureDetailHeaderView *)v4 setUp];
    v6 = v5;
  }

  return v5;
}

- (void)setUp
{
  v3 = objc_opt_new();
  [(ENUIExposureDetailHeaderView *)self setAgencyNameLabel:v3];

  agencyNameLabel = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [agencyNameLabel setNumberOfLines:0];

  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  agencyNameLabel2 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [agencyNameLabel2 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  agencyNameLabel3 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [agencyNameLabel3 setTextColor:v7];

  v9 = objc_opt_new();
  [(ENUIExposureDetailHeaderView *)self setTitleLabel:v9];

  titleLabel = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:1024];
  titleLabel2 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [titleLabel2 setFont:v11];

  v13 = +[UIColor labelColor];
  titleLabel3 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [titleLabel3 setTextColor:v13];

  v15 = objc_opt_new();
  [(ENUIExposureDetailHeaderView *)self setMessageTextView:v15];

  messageTextView = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView textContainerInset];
  v18 = v17;
  v20 = v19;

  messageTextView2 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView2 setTextContainerInset:{v18, 0.0, v20, 0.0}];

  messageTextView3 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  textContainer = [messageTextView3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  messageTextView4 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView4 setScrollingEnabled:0];

  messageTextView5 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView5 setEditable:0];

  messageTextView6 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView6 setDataDetectorTypes:3];

  v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  messageTextView7 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView7 setFont:v27];

  v29 = +[UIColor labelColor];
  messageTextView8 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView8 setTextColor:v29];

  v31 = +[UIColor clearColor];
  messageTextView9 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView9 setBackgroundColor:v31];

  v33 = +[OBBoldTrayButton boldButton];
  [(ENUIExposureDetailHeaderView *)self setContinueButton:v33];

  continueButton = [(ENUIExposureDetailHeaderView *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(ENUIExposureDetailHeaderView *)self continueButton];
  v36 = ENUILocalizedString();
  [continueButton2 setTitle:v36 forState:0];

  continueButton3 = [(ENUIExposureDetailHeaderView *)self continueButton];
  [continueButton3 addTarget:self action:"tappedContinueButton:" forEvents:64];

  v38 = [UIStackView alloc];
  agencyNameLabel4 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  v70[0] = agencyNameLabel4;
  titleLabel4 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  v70[1] = titleLabel4;
  messageTextView10 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  v70[2] = messageTextView10;
  v42 = [NSArray arrayWithObjects:v70 count:3];
  v43 = [v38 initWithArrangedSubviews:v42];
  [(ENUIExposureDetailHeaderView *)self setHeaderStack:v43];

  headerStack = [(ENUIExposureDetailHeaderView *)self headerStack];
  [headerStack setTranslatesAutoresizingMaskIntoConstraints:0];

  headerStack2 = [(ENUIExposureDetailHeaderView *)self headerStack];
  [headerStack2 setAxis:1];

  contentView = [(ENUIExposureDetailHeaderView *)self contentView];
  headerStack3 = [(ENUIExposureDetailHeaderView *)self headerStack];
  [contentView addSubview:headerStack3];

  headerStack4 = [(ENUIExposureDetailHeaderView *)self headerStack];
  topAnchor = [headerStack4 topAnchor];
  contentView2 = [(ENUIExposureDetailHeaderView *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v69[0] = v64;
  headerStack5 = [(ENUIExposureDetailHeaderView *)self headerStack];
  leadingAnchor = [headerStack5 leadingAnchor];
  contentView3 = [(ENUIExposureDetailHeaderView *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v69[1] = v59;
  headerStack6 = [(ENUIExposureDetailHeaderView *)self headerStack];
  trailingAnchor = [headerStack6 trailingAnchor];
  contentView4 = [(ENUIExposureDetailHeaderView *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v69[2] = v51;
  headerStack7 = [(ENUIExposureDetailHeaderView *)self headerStack];
  bottomAnchor = [headerStack7 bottomAnchor];
  contentView5 = [(ENUIExposureDetailHeaderView *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v56 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v69[3] = v56;
  v57 = [NSArray arrayWithObjects:v69 count:4];
  [NSLayoutConstraint activateConstraints:v57];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifier = [(ENUIExposureDetailHeaderView *)self specifier];
  userInfo = [specifier userInfo];

  name = [userInfo name];
  agencyNameLabel = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [agencyNameLabel setText:name];

  title = [userInfo title];
  titleLabel = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [titleLabel setText:title];

  message = [userInfo message];
  messageTextView = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [messageTextView setText:message];

  learnMoreURL = [userInfo learnMoreURL];
  [(ENUIExposureDetailHeaderView *)self setLearnMoreURL:learnMoreURL];

  learnMoreURL2 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
  if (!learnMoreURL2)
  {
    goto LABEL_4;
  }

  v13 = learnMoreURL2;
  v14 = +[UIApplication sharedApplication];
  learnMoreURL3 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
  v16 = [v14 canOpenURL:learnMoreURL3];

  if (v16)
  {
    headerStack = [(ENUIExposureDetailHeaderView *)self headerStack];
    continueButton = [(ENUIExposureDetailHeaderView *)self continueButton];
    [headerStack addArrangedSubview:continueButton];
  }

  else
  {
LABEL_4:
    headerStack = [(ENUIExposureDetailHeaderView *)self headerStack];
    continueButton = [(ENUIExposureDetailHeaderView *)self continueButton];
    [headerStack removeArrangedSubview:continueButton];
  }
}

- (void)tappedContinueButton:(id)button
{
  learnMoreURL = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
  if (learnMoreURL)
  {
    v5 = learnMoreURL;
    v6 = +[UIApplication sharedApplication];
    learnMoreURL2 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
    v8 = [v6 canOpenURL:learnMoreURL2];

    if (v8)
    {
      v10 = +[UIApplication sharedApplication];
      learnMoreURL3 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
      [v10 openURL:learnMoreURL3 options:&__NSDictionary0__struct completionHandler:0];
    }
  }
}

@end