@interface BuddyTransferOptionsTableViewCell
- (BuddyTransferOptionsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CALayer)iconLayer;
- (double)_chevronWidth;
- (double)_imageLeadingMargin;
- (double)_imageTrailingMargin;
- (double)_imageWidth;
- (id)_descriptionFont;
- (id)_footnoteFont;
- (id)_titleFont;
- (void)prepareForReuse;
- (void)setIconLayer:(id)layer;
@end

@implementation BuddyTransferOptionsTableViewCell

- (BuddyTransferOptionsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v77 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v74.receiver = v4;
  v74.super_class = BuddyTransferOptionsTableViewCell;
  v5 = [(BuddyTransferOptionsTableViewCell *)&v74 initWithStyle:styleCopy reuseIdentifier:location];
  selfCopy = v5;
  objc_storeStrong(&selfCopy, v5);
  if (v5)
  {
    [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [[BuddyAspectFitLayerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = *(selfCopy + 4);
    *(selfCopy + 4) = v6;

    [*(selfCopy + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [selfCopy contentView];
    [contentView addSubview:*(selfCopy + 4)];

    leadingAnchor = [*(selfCopy + 4) leadingAnchor];
    contentView2 = [selfCopy contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    [selfCopy _imageLeadingMargin];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v81[0] = v64;
    contentView3 = [selfCopy contentView];
    topAnchor = [contentView3 topAnchor];
    topAnchor2 = [*(selfCopy + 4) topAnchor];
    v11 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v81[1] = v11;
    contentView4 = [selfCopy contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    bottomAnchor2 = [*(selfCopy + 4) bottomAnchor];
    v15 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v81[2] = v15;
    widthAnchor = [*(selfCopy + 4) widthAnchor];
    [selfCopy _imageWidth];
    v17 = [widthAnchor constraintEqualToConstant:?];
    v81[3] = v17;
    v18 = [NSArray arrayWithObjects:v81 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    v73 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v73 setAxis:1];
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [selfCopy contentView];
    [contentView5 addSubview:v73];

    leadingAnchor3 = [v73 leadingAnchor];
    trailingAnchor = [*(selfCopy + 4) trailingAnchor];
    [selfCopy _imageTrailingMargin];
    v20 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    v80[0] = v20;
    topAnchor3 = [v73 topAnchor];
    contentView6 = [selfCopy contentView];
    topAnchor4 = [contentView6 topAnchor];
    v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:40.0];
    v80[1] = v24;
    contentView7 = [selfCopy contentView];
    bottomAnchor3 = [contentView7 bottomAnchor];
    bottomAnchor4 = [v73 bottomAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:30.0];
    v80[2] = v28;
    v29 = [NSArray arrayWithObjects:v80 count:3];
    [NSLayoutConstraint activateConstraints:v29];

    v72 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v72 setAxis:1];
    [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v31 = *(selfCopy + 1);
    *(selfCopy + 1) = v30;

    _titleFont = [selfCopy _titleFont];
    [*(selfCopy + 1) setFont:_titleFont];

    [*(selfCopy + 1) setNumberOfLines:0];
    [*(selfCopy + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v72 addArrangedSubview:*(selfCopy + 1)];
    [v72 setCustomSpacing:*(selfCopy + 1) afterView:2.0];
    v33 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v34 = *(selfCopy + 2);
    *(selfCopy + 2) = v33;

    _descriptionFont = [selfCopy _descriptionFont];
    [*(selfCopy + 2) setFont:_descriptionFont];

    [*(selfCopy + 2) setNumberOfLines:0];
    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v72 addArrangedSubview:*(selfCopy + 2)];
    [v73 addArrangedSubview:v72];
    [v73 setCustomSpacing:v72 afterView:16.0];
    centerYAnchor = [*(selfCopy + 4) centerYAnchor];
    centerYAnchor2 = [v72 centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v38 setActive:1];

    v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v40 = *(selfCopy + 3);
    *(selfCopy + 3) = v39;

    _footnoteFont = [selfCopy _footnoteFont];
    [*(selfCopy + 3) setFont:_footnoteFont];

    [*(selfCopy + 3) setNumberOfLines:0];
    [*(selfCopy + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v73 addArrangedSubview:*(selfCopy + 3)];
    v42 = [UIImage systemImageNamed:@"chevron.forward"];
    v43 = +[UIColor tertiaryLabelColor];
    v71 = [(UIImage *)v42 imageWithTintColor:v43 renderingMode:1];

    v44 = [[UIImageView alloc] initWithImage:v71];
    v45 = *(selfCopy + 5);
    *(selfCopy + 5) = v44;

    [*(selfCopy + 5) setContentMode:1];
    [*(selfCopy + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView8 = [selfCopy contentView];
    [contentView8 addSubview:*(selfCopy + 5)];

    centerYAnchor3 = [*(selfCopy + 5) centerYAnchor];
    contentView9 = [selfCopy contentView];
    centerYAnchor4 = [contentView9 centerYAnchor];
    v63 = [centerYAnchor3 constraintEqualToAnchor:?];
    v79[0] = v63;
    widthAnchor2 = [*(selfCopy + 5) widthAnchor];
    [selfCopy _chevronWidth];
    v48 = [widthAnchor2 constraintEqualToConstant:?];
    v79[1] = v48;
    leadingAnchor4 = [*(selfCopy + 5) leadingAnchor];
    trailingAnchor2 = [v73 trailingAnchor];
    v51 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:10.0];
    v79[2] = v51;
    contentView10 = [selfCopy contentView];
    trailingAnchor3 = [contentView10 trailingAnchor];
    trailingAnchor4 = [*(selfCopy + 5) trailingAnchor];
    v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
    v79[3] = v55;
    v56 = [NSArray arrayWithObjects:v79 count:4];
    [NSLayoutConstraint activateConstraints:v56];

    LODWORD(v57) = 1148846080;
    [*(selfCopy + 5) setContentHuggingPriority:0 forAxis:v57];
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
  }

  v58 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v58;
}

- (void)prepareForReuse
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyTransferOptionsTableViewCell;
  [(BuddyTransferOptionsTableViewCell *)&v7 prepareForReuse];
  imageView = [(BuddyTransferOptionsTableViewCell *)selfCopy imageView];
  [imageView setImage:0];

  iconLayerView = [(BuddyTransferOptionsTableViewCell *)selfCopy iconLayerView];
  [(BuddyAspectFitLayerView *)iconLayerView setManagedLayer:0];

  nameLabel = [(BuddyTransferOptionsTableViewCell *)selfCopy nameLabel];
  [(UILabel *)nameLabel setText:0];

  descriptionLabel = [(BuddyTransferOptionsTableViewCell *)selfCopy descriptionLabel];
  [(UILabel *)descriptionLabel setText:0];

  footnoteLabel = [(BuddyTransferOptionsTableViewCell *)selfCopy footnoteLabel];
  [(UILabel *)footnoteLabel setText:0];
}

- (CALayer)iconLayer
{
  v2 = [(BuddyTransferOptionsTableViewCell *)self iconLayerView:a2];
  managedLayer = [(BuddyAspectFitLayerView *)v2 managedLayer];

  return managedLayer;
}

- (void)setIconLayer:(id)layer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layer);
  v3 = location[0];
  iconLayerView = [(BuddyTransferOptionsTableViewCell *)selfCopy iconLayerView];
  [(BuddyAspectFitLayerView *)iconLayerView setManagedLayer:v3];

  objc_storeStrong(location, 0);
}

- (id)_titleFont
{
  location[2] = self;
  location[1] = a2;
  location[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v2 = [location[0] fontDescriptorWithSymbolicTraits:2];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  objc_storeStrong(location, 0);

  return v3;
}

- (id)_descriptionFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline, a2, self];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)_footnoteFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote, a2, self];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (double)_imageWidth
{
  v2 = +[BYDevice currentDevice];
  v3 = [v2 size];

  if (v3 == 2)
  {
    return 40.0;
  }

  else
  {
    return 54.0;
  }
}

- (double)_imageLeadingMargin
{
  v2 = +[BYDevice currentDevice];
  v3 = [v2 size];

  if (v3)
  {
    if (v3 == 1)
    {
      return 20.0;
    }

    if (v3 == 2)
    {
      return 12.0;
    }

    if (v3 != 3)
    {
      if ((v3 - 4) >= 3)
      {
        return v5;
      }

      return 20.0;
    }
  }

  return 16.0;
}

- (double)_imageTrailingMargin
{
  v2 = +[BYDevice currentDevice];
  v3 = [v2 size];

  if (v3)
  {
    if (v3 == 1)
    {
      return 14.0;
    }

    if ((v3 - 2) >= 2)
    {
      if ((v3 - 4) >= 3)
      {
        return v5;
      }

      return 14.0;
    }
  }

  return 10.0;
}

- (double)_chevronWidth
{
  v2 = +[BYDevice currentDevice];
  v3 = [v2 size];

  if (v3 == 2)
  {
    return 24.0;
  }

  else
  {
    return 20.0;
  }
}

@end