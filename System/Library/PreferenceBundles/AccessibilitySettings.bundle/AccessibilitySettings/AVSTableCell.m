@interface AVSTableCell
+ (id)specifier;
- (AVSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)actionName;
- (id)shortcutName;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AVSTableCell

+ (id)specifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:a1 set:0 get:0 detail:a1 cell:-1 edit:0];
  v5 = PSCellClassKey;
  v6 = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 setProperties:v3];

  return v2;
}

- (id)actionName
{
  v2 = [(AVSTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"avsActionName"];

  return v3;
}

- (id)shortcutName
{
  v2 = [(AVSTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"avsName"];

  return v3;
}

- (AVSTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v46.receiver = self;
  v46.super_class = AVSTableCell;
  v9 = [(AVSTableCell *)&v46 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], v8);
    v11 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v16 = [(AVSTableCell *)v10 actionName];
    [v15 setText:v16];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = v8;
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v15 setFont:v17];

    [v15 setLineBreakMode:0];
    v44 = v15;
    [v15 setNumberOfLines:0];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v18 setFont:v19];

    v20 = [(AVSTableCell *)v10 shortcutName];
    [v18 setText:v20];

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
    v23 = [(AVSTableCell *)v10 contentView];
    [v23 addSubview:v22];

    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [v22 widthAnchor];
    v42 = [(AVSTableCell *)v10 contentView];
    v40 = [v42 widthAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:-32.0];
    v47[0] = v39;
    v37 = [v22 heightAnchor];
    v38 = [(AVSTableCell *)v10 contentView];
    v36 = [v38 heightAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-32.0];
    v47[1] = v35;
    v34 = [v22 centerXAnchor];
    v24 = [(AVSTableCell *)v10 contentView];
    v25 = [v24 centerXAnchor];
    v26 = [v34 constraintEqualToAnchor:v25];
    v47[2] = v26;
    v27 = [v22 centerYAnchor];
    v28 = [(AVSTableCell *)v10 contentView];
    v29 = [v28 centerYAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v47[3] = v30;
    v31 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v31];

    v8 = v45;
    v32 = v10;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVSTableCell;
  [(AVSTableCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(AVSTableCell *)self setNeedsUpdateConstraints];
}

@end