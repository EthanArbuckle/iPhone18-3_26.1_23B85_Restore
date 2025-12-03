@interface AVSTableCell
+ (id)specifier;
- (AVSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)actionName;
- (id)shortcutName;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AVSTableCell

+ (id)specifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:self cell:-1 edit:0];
  v5 = PSCellClassKey;
  v6 = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 setProperties:v3];

  return v2;
}

- (id)actionName
{
  specifier = [(AVSTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"avsActionName"];

  return v3;
}

- (id)shortcutName
{
  specifier = [(AVSTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"avsName"];

  return v3;
}

- (AVSTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v46.receiver = self;
  v46.super_class = AVSTableCell;
  v9 = [(AVSTableCell *)&v46 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], specifierCopy);
    v11 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    actionName = [(AVSTableCell *)v10 actionName];
    [v15 setText:actionName];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = specifierCopy;
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v15 setFont:v17];

    [v15 setLineBreakMode:0];
    v44 = v15;
    [v15 setNumberOfLines:0];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v18 setFont:v19];

    shortcutName = [(AVSTableCell *)v10 shortcutName];
    [v18 setText:shortcutName];

    v21 = +[UIColor secondaryLabelColor];
    [v18 setTextColor:v21];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setLineBreakMode:0];
    v43 = v18;
    [v18 setNumberOfLines:0];
    v22 = objc_alloc_init(UIStackView);
    [v22 setAxis:1];
    [v22 setAlignment:1];
    [v22 setSpacing:10.0];
    [v22 addArrangedSubview:v15];
    [v22 addArrangedSubview:v18];
    contentView = [(AVSTableCell *)v10 contentView];
    [contentView addSubview:v22];

    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [v22 widthAnchor];
    contentView2 = [(AVSTableCell *)v10 contentView];
    widthAnchor2 = [contentView2 widthAnchor];
    v39 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-32.0];
    v47[0] = v39;
    heightAnchor = [v22 heightAnchor];
    contentView3 = [(AVSTableCell *)v10 contentView];
    heightAnchor2 = [contentView3 heightAnchor];
    v35 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:-32.0];
    v47[1] = v35;
    centerXAnchor = [v22 centerXAnchor];
    contentView4 = [(AVSTableCell *)v10 contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v47[2] = v26;
    centerYAnchor = [v22 centerYAnchor];
    contentView5 = [(AVSTableCell *)v10 contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v47[3] = v30;
    v31 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v31];

    specifierCopy = v45;
    v32 = v10;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AVSTableCell;
  [(AVSTableCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AVSTableCell *)self setNeedsUpdateConstraints];
}

@end