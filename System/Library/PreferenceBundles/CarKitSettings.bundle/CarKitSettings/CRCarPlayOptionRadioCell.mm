@interface CRCarPlayOptionRadioCell
- (CRCarPlayOptionRadioCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
@end

@implementation CRCarPlayOptionRadioCell

- (CRCarPlayOptionRadioCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v60.receiver = self;
  v60.super_class = CRCarPlayOptionRadioCell;
  v9 = [(CRCarPlayOptionRadioCell *)&v60 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(CRCarPlayOptionRadioCell *)v9 contentView];
    textLabel = [(CRCarPlayOptionRadioCell *)v10 textLabel];
    [(CRCarPlayOptionRadioCell *)v10 setAccessoryType:0];
    v13 = [[CRCheckmarkView alloc] initWithChecked:[(CRCarPlayOptionRadioCell *)v10 isChecked]];
    [(CRCheckmarkView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v13];
    checkmarkView = v10->_checkmarkView;
    v10->_checkmarkView = v13;
    v57 = v13;

    v15 = objc_alloc_init(UILabel);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = textLabel;
    font = [textLabel font];
    [v15 setFont:font];

    textColor = [textLabel textColor];
    [v15 setTextColor:textColor];

    [v15 setTextAlignment:4];
    name = [specifierCopy name];
    [(CRCarPlayOptionRadioCell *)v10 setSpecifierName:name];

    specifierName = [(CRCarPlayOptionRadioCell *)v10 specifierName];
    [v15 setText:specifierName];

    v56 = v15;
    [(CRCarPlayOptionRadioCell *)v10 setNameLabel:v15];
    textLabel2 = [(CRCarPlayOptionRadioCell *)v10 textLabel];
    [textLabel2 setHidden:1];

    v21 = [UIStackView alloc];
    [(CRCarPlayOptionRadioCell *)v10 checkmarkView];
    v22 = v59 = specifierCopy;
    v63[0] = v22;
    v63[1] = v15;
    v23 = [NSArray arrayWithObjects:v63 count:2];
    v24 = [v21 initWithArrangedSubviews:v23];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAxis:0];
    [v24 setAlignment:3];
    [v24 setDistribution:0];
    [v24 setSpacing:1.17549435e-38];
    v25 = contentView;
    [contentView addSubview:v24];
    leadingAnchor = [v24 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v50 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:2.0];
    v62[0] = v50;
    trailingAnchor = [contentView trailingAnchor];
    trailingAnchor2 = [v24 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:2.0];
    v62[1] = v28;
    topAnchor = [v24 topAnchor];
    topAnchor2 = [v25 topAnchor];
    v31 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v62[2] = v31;
    v32 = [NSArray arrayWithObjects:v62 count:3];
    [v25 addConstraints:v32];

    v55 = [v59 propertyForKey:@"CRCarPlayOptionImageNameKey"];
    [(CRCarPlayOptionRadioCell *)v10 setDrawingName:v55];
    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v53 = [UIImage imageNamed:v55 inBundle:v33];

    v34 = [[UIImageView alloc] initWithImage:v53];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setContentMode:2];
    [v25 addSubview:v34];
    [(CRCarPlayOptionRadioCell *)v10 setDrawingView:v34];
    leadingAnchor3 = [v34 leadingAnchor];
    leadingAnchor4 = [v25 leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:2.0];
    v61[0] = v48;
    v35 = v25;
    trailingAnchor3 = [v25 trailingAnchor];
    trailingAnchor4 = [v34 trailingAnchor];
    v44 = [trailingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:2.0];
    v61[1] = v44;
    topAnchor3 = [v34 topAnchor];
    bottomAnchor = [v24 bottomAnchor];
    v38 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:2.0];
    v61[2] = v38;
    [v25 bottomAnchor];
    v39 = v47 = v10;
    bottomAnchor2 = [v34 bottomAnchor];
    v41 = [v39 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:4.0];
    v61[3] = v41;
    v42 = [NSArray arrayWithObjects:v61 count:4];

    [v35 addConstraints:v42];
    v10 = v47;

    specifierCopy = v59;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v15.receiver = self;
  v15.super_class = CRCarPlayOptionRadioCell;
  specifierCopy = specifier;
  [(CRCarPlayOptionRadioCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  name = [specifierCopy name];
  v6 = [specifierCopy propertyForKey:@"CRCarPlayOptionImageNameKey"];

  specifierName = [(CRCarPlayOptionRadioCell *)self specifierName];
  if ([name isEqualToString:specifierName])
  {
    drawingName = [(CRCarPlayOptionRadioCell *)self drawingName];
    v9 = [v6 isEqualToString:drawingName];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(CRCarPlayOptionRadioCell *)self setAccessoryType:0];
  checkmarkView = [(CRCarPlayOptionRadioCell *)self checkmarkView];
  [checkmarkView setChecked:{-[CRCarPlayOptionRadioCell isChecked](self, "isChecked")}];

  [(CRCarPlayOptionRadioCell *)self setSpecifierName:name];
  nameLabel = [(CRCarPlayOptionRadioCell *)self nameLabel];
  [nameLabel setText:name];

  [(CRCarPlayOptionRadioCell *)self setDrawingName:v6];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [UIImage imageNamed:v6 inBundle:v12];

  drawingView = [(CRCarPlayOptionRadioCell *)self drawingView];
  [drawingView setImage:v13];

LABEL_6:
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (highlighted)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  checkmarkView = [(CRCarPlayOptionRadioCell *)self checkmarkView];
  [checkmarkView setAlpha:v5];

  nameLabel = [(CRCarPlayOptionRadioCell *)self nameLabel];
  [nameLabel setAlpha:v5];

  drawingView = [(CRCarPlayOptionRadioCell *)self drawingView];
  [drawingView setAlpha:v5];
}

@end