@interface OBBoldSubtitleController
- (OBBoldSubtitleController)initWithTitle:(id)title subtitle:(id)subtitle detailText:(id)text icon:(id)icon;
- (OBBoldSubtitleController)initWithTitle:(id)title subtitle:(id)subtitle detailText:(id)text symbolName:(id)name;
- (void)initContentViewWithSubtitle:(id)subtitle detailText:(id)text;
@end

@implementation OBBoldSubtitleController

- (OBBoldSubtitleController)initWithTitle:(id)title subtitle:(id)subtitle detailText:(id)text icon:(id)icon
{
  subtitleCopy = subtitle;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = OBBoldSubtitleController;
  v12 = [(OBBoldSubtitleController *)&v15 initWithTitle:title detailText:0 icon:icon];
  v13 = v12;
  if (v12)
  {
    [(OBBoldSubtitleController *)v12 initContentViewWithSubtitle:subtitleCopy detailText:textCopy];
  }

  return v13;
}

- (OBBoldSubtitleController)initWithTitle:(id)title subtitle:(id)subtitle detailText:(id)text symbolName:(id)name
{
  subtitleCopy = subtitle;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = OBBoldSubtitleController;
  v12 = [(OBBoldSubtitleController *)&v15 initWithTitle:title detailText:0 symbolName:name];
  v13 = v12;
  if (v12)
  {
    [(OBBoldSubtitleController *)v12 initContentViewWithSubtitle:subtitleCopy detailText:textCopy];
  }

  return v13;
}

- (void)initContentViewWithSubtitle:(id)subtitle detailText:(id)text
{
  subtitleCopy = subtitle;
  textCopy = text;
  navigationItem = [(OBBoldSubtitleController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  [(OBBoldSubtitleController *)self setScrollingDisabled:0];
  contentView = [(OBBoldSubtitleController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(UILabel);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    v11 = UIFontTextStyleTitle2;
  }

  else
  {
    v11 = UIFontTextStyleBody;
  }

  v12 = [UIFont preferredFontForTextStyle:v11];
  [v10 setFont:v12];

  [v10 setText:textCopy];
  if (_UISolariumEnabled())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v13 = ;
  [v10 setTextColor:v13];

  [v10 setNumberOfLines:0];
  if (_UISolariumEnabled())
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  [v10 setTextAlignment:v14];
  [contentView addSubview:v10];
  v15 = +[NSMutableArray array];
  v51 = subtitleCopy;
  v52 = v15;
  if (subtitleCopy && [subtitleCopy length])
  {
    v16 = objc_alloc_init(UILabel);
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (_UISolariumEnabled())
    {
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
      [v16 setFont:v17];
    }

    else
    {
      v17 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
      v21 = [v17 fontDescriptorWithSymbolicTraits:2];
      v22 = [UIFont fontWithDescriptor:v21 size:0.0];
      [v16 setFont:v22];
    }

    [v16 setText:subtitleCopy];
    [v16 setNumberOfLines:0];
    if (_UISolariumEnabled())
    {
      v23 = 4;
    }

    else
    {
      v23 = 1;
    }

    [v16 setTextAlignment:v23];
    [contentView addSubview:v16];
    topAnchor = [v16 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v54[0] = v45;
    leadingAnchor = [v16 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v54[1] = v42;
    trailingAnchor = [v16 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v54[2] = v26;
    topAnchor3 = [v10 topAnchor];
    [v16 bottomAnchor];
    v29 = v28 = contentView;
    v30 = [topAnchor3 constraintEqualToAnchor:v29 constant:16.0];
    v54[3] = v30;
    v31 = [NSArray arrayWithObjects:v54 count:4];
    [v52 addObjectsFromArray:v31];

    contentView = v28;
  }

  else
  {
    topAnchor4 = [v10 topAnchor];
    topAnchor5 = [contentView topAnchor];
    v20 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v15 addObject:v20];
  }

  v47 = contentView;
  leadingAnchor3 = [v10 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v53[0] = v33;
  trailingAnchor3 = [v10 trailingAnchor];
  [contentView trailingAnchor];
  v35 = v10;
  v36 = v48 = v10;
  v37 = [trailingAnchor3 constraintEqualToAnchor:v36];
  v53[1] = v37;
  bottomAnchor = [v35 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[2] = v40;
  v41 = [NSArray arrayWithObjects:v53 count:3];
  [v52 addObjectsFromArray:v41];

  [NSLayoutConstraint activateConstraints:v52];
}

@end