@interface FlyoverTrayHeader
- (FlyoverTrayHeader)initWithFrame:(CGRect)frame;
- (TrayHeaderDelegate)delegate;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)buttonDidTouchUpInside:(id)inside;
- (void)setAttributedSubtitleAlternatives:(id)alternatives;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)trayHeaderDidReceiveTap:(id)tap;
@end

@implementation FlyoverTrayHeader

- (TrayHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)trayHeaderDidReceiveTap:(id)tap
{
  delegate = [(FlyoverTrayHeader *)self delegate];
  [delegate trayHeaderDidReceiveTap];
}

- (void)buttonDidTouchUpInside:(id)inside
{
  insideCopy = inside;
  delegate = [(FlyoverTrayHeader *)self delegate];
  [delegate trayHeaderButtonDidTouchUpInside:insideCopy];
}

- (void)setAttributedSubtitleAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  if ([alternativesCopy count])
  {
    firstObject = [alternativesCopy firstObject];
    subtitleLabel = [(FlyoverTrayHeader *)self subtitleLabel];
    [subtitleLabel setAttributedText:firstObject];

    subtitleLabel2 = [(FlyoverTrayHeader *)self subtitleLabel];
    [subtitleLabel2 sizeToFit];
  }

  subtitleLabel3 = [(FlyoverTrayHeader *)self subtitleLabel];
  [subtitleLabel3 setAttributedTextAlternatives:alternativesCopy];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = [[NSAttributedString alloc] initWithString:subtitleCopy];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(FlyoverTrayHeader *)self setAttributedSubtitleAlternatives:v6];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(FlyoverTrayHeader *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)_setupConstraints
{
  titleLabel = [(FlyoverTrayHeader *)self titleLabel];
  subtitleLabel = [(FlyoverTrayHeader *)self subtitleLabel];
  button = [(FlyoverTrayHeader *)self button];
  v5 = subtitleLabel;
  v6 = titleLabel;
  v34 = _NSDictionaryOfVariableBindings(@"titleLabel, subtitleLabel, button", titleLabel, subtitleLabel, button, 0);
  v37 = @"margin";
  v7 = [NSNumber numberWithDouble:16.0];
  v38 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];

  v33 = v8;
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(margin)-[titleLabel]-(>=margin)-[button]|", 0, v8, v34);
  [NSLayoutConstraint activateConstraints:v9];

  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(margin)-[subtitleLabel]-(>=margin)-[button]|", 0, v8, v34);
  [NSLayoutConstraint activateConstraints:v10];

  v31 = v6;
  firstBaselineAnchor = [v6 firstBaselineAnchor];
  topAnchor = [(FlyoverTrayHeader *)self topAnchor];
  v29 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [DynamicTypeWizard autoscaledConstraint:v29 constant:&stru_10162ADA0 withFontProvider:35.0];
  v28 = v27 = v5;
  v36[0] = v28;
  firstBaselineAnchor2 = [v5 firstBaselineAnchor];
  lastBaselineAnchor = [v6 lastBaselineAnchor];
  v24 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  v23 = [DynamicTypeWizard autoscaledConstraint:v24 constant:&stru_10162AD80 withFontProvider:21.0];
  v36[1] = v23;
  firstBaselineAnchor3 = [v5 firstBaselineAnchor];
  bottomAnchor = [(FlyoverTrayHeader *)self bottomAnchor];
  v11 = [firstBaselineAnchor3 constraintEqualToAnchor:bottomAnchor constant:-21.0];
  v36[2] = v11;
  button2 = [(FlyoverTrayHeader *)self button];
  topAnchor2 = [button2 topAnchor];
  topAnchor3 = [(FlyoverTrayHeader *)self topAnchor];
  v15 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v36[3] = v15;
  button3 = [(FlyoverTrayHeader *)self button];
  trailingAnchor = [button3 trailingAnchor];
  trailingAnchor2 = [(FlyoverTrayHeader *)self trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[4] = v19;
  v20 = [NSArray arrayWithObjects:v36 count:5];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)_setupViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(FlyoverTrayHeader *)self setTitleLabel:v7];

  titleLabel = [(FlyoverTrayHeader *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  titleLabel2 = [(FlyoverTrayHeader *)self titleLabel];
  LODWORD(v10) = 1132068864;
  [titleLabel2 setContentCompressionResistancePriority:0 forAxis:v10];

  titleLabel3 = [(FlyoverTrayHeader *)self titleLabel];
  LODWORD(v12) = 1148846080;
  [titleLabel3 setContentCompressionResistancePriority:1 forAxis:v12];

  titleLabel4 = [(FlyoverTrayHeader *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(FlyoverTrayHeader *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel5 withFontProvider:&stru_10162ADA0];

  v15 = +[UIColor clearColor];
  titleLabel6 = [(FlyoverTrayHeader *)self titleLabel];
  [titleLabel6 setBackgroundColor:v15];

  v17 = +[UIColor labelColor];
  titleLabel7 = [(FlyoverTrayHeader *)self titleLabel];
  [titleLabel7 setTextColor:v17];

  titleLabel8 = [(FlyoverTrayHeader *)self titleLabel];
  [titleLabel8 setAccessibilityIdentifier:@"FlyoverTrayHeaderTitle"];

  titleLabel9 = [(FlyoverTrayHeader *)self titleLabel];
  [(FlyoverTrayHeader *)self addSubview:titleLabel9];

  height = [[ShorteningLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(FlyoverTrayHeader *)self setSubtitleLabel:height];

  v22 = +[UIColor secondaryLabelColor];
  subtitleLabel = [(FlyoverTrayHeader *)self subtitleLabel];
  [subtitleLabel setTextColor:v22];

  subtitleLabel2 = [(FlyoverTrayHeader *)self subtitleLabel];
  [subtitleLabel2 setNumberOfLines:0];

  subtitleLabel3 = [(FlyoverTrayHeader *)self subtitleLabel];
  LODWORD(v26) = 1132068864;
  [subtitleLabel3 setContentCompressionResistancePriority:0 forAxis:v26];

  subtitleLabel4 = [(FlyoverTrayHeader *)self subtitleLabel];
  LODWORD(v28) = 1148846080;
  [subtitleLabel4 setContentCompressionResistancePriority:1 forAxis:v28];

  subtitleLabel5 = [(FlyoverTrayHeader *)self subtitleLabel];
  [subtitleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  subtitleLabel6 = [(FlyoverTrayHeader *)self subtitleLabel];
  [DynamicTypeWizard autorefreshLabel:subtitleLabel6 withFontProvider:&stru_10162AD80];

  v31 = +[UIColor clearColor];
  subtitleLabel7 = [(FlyoverTrayHeader *)self subtitleLabel];
  [subtitleLabel7 setBackgroundColor:v31];

  subtitleLabel8 = [(FlyoverTrayHeader *)self subtitleLabel];
  [subtitleLabel8 setAccessibilityIdentifier:@"FlyoverTrayHeaderSubtitle"];

  subtitleLabel9 = [(FlyoverTrayHeader *)self subtitleLabel];
  [(FlyoverTrayHeader *)self addSubview:subtitleLabel9];

  v35 = [CardButton alloc];
  v36 = +[CardButtonConfiguration close];
  v38 = [(CardButton *)v35 initWithConfiguration:v36];

  [(CardButton *)v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CardButton *)v38 addTarget:self action:"buttonDidTouchUpInside:" forControlEvents:64];
  [(CardButton *)v38 setAccessibilityIdentifier:@"FlyoverTrayHeaderButton"];
  [(FlyoverTrayHeader *)self addSubview:v38];
  [(FlyoverTrayHeader *)self setButton:v38];
  v37 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"trayHeaderDidReceiveTap:"];
  [(FlyoverTrayHeader *)self addGestureRecognizer:v37];
}

- (FlyoverTrayHeader)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FlyoverTrayHeader;
  v3 = [(FlyoverTrayHeader *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FlyoverTrayHeader *)v3 setAccessibilityIdentifier:@"FlyoverTrayHeader"];
    [(FlyoverTrayHeader *)v4 _setupViews];
    [(FlyoverTrayHeader *)v4 _setupConstraints];
  }

  return v4;
}

@end