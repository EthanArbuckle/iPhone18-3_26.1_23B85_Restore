@interface BuddyTransferOptionsTableViewCell
- (BuddyTransferOptionsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CALayer)iconLayer;
- (double)_chevronWidth;
- (double)_imageLeadingMargin;
- (double)_imageTrailingMargin;
- (double)_imageWidth;
- (id)_descriptionFont;
- (id)_footnoteFont;
- (id)_titleFont;
- (void)prepareForReuse;
- (void)setIconLayer:(id)a3;
@end

@implementation BuddyTransferOptionsTableViewCell

- (BuddyTransferOptionsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v78 = self;
  v77 = a2;
  v76 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v78;
  v78 = 0;
  v74.receiver = v4;
  v74.super_class = BuddyTransferOptionsTableViewCell;
  v5 = [(BuddyTransferOptionsTableViewCell *)&v74 initWithStyle:v76 reuseIdentifier:location];
  v78 = v5;
  objc_storeStrong(&v78, v5);
  if (v5)
  {
    [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [[BuddyAspectFitLayerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = *(v78 + 4);
    *(v78 + 4) = v6;

    [*(v78 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v78 contentView];
    [v8 addSubview:*(v78 + 4)];

    v68 = [*(v78 + 4) leadingAnchor];
    v70 = [v78 contentView];
    v66 = [v70 leadingAnchor];
    [v78 _imageLeadingMargin];
    v64 = [v68 constraintEqualToAnchor:v66 constant:?];
    v81[0] = v64;
    v62 = [v78 contentView];
    v9 = [v62 topAnchor];
    v10 = [*(v78 + 4) topAnchor];
    v11 = [v9 constraintLessThanOrEqualToAnchor:v10];
    v81[1] = v11;
    v12 = [v78 contentView];
    v13 = [v12 bottomAnchor];
    v14 = [*(v78 + 4) bottomAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
    v81[2] = v15;
    v16 = [*(v78 + 4) widthAnchor];
    [v78 _imageWidth];
    v17 = [v16 constraintEqualToConstant:?];
    v81[3] = v17;
    v18 = [NSArray arrayWithObjects:v81 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    v73 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v73 setAxis:1];
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v78 contentView];
    [v19 addSubview:v73];

    v61 = [v73 leadingAnchor];
    v60 = [*(v78 + 4) trailingAnchor];
    [v78 _imageTrailingMargin];
    v20 = [v61 constraintEqualToAnchor:v60 constant:?];
    v80[0] = v20;
    v21 = [v73 topAnchor];
    v22 = [v78 contentView];
    v23 = [v22 topAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:40.0];
    v80[1] = v24;
    v25 = [v78 contentView];
    v26 = [v25 bottomAnchor];
    v27 = [v73 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:30.0];
    v80[2] = v28;
    v29 = [NSArray arrayWithObjects:v80 count:3];
    [NSLayoutConstraint activateConstraints:v29];

    v72 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v72 setAxis:1];
    [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v31 = *(v78 + 1);
    *(v78 + 1) = v30;

    v32 = [v78 _titleFont];
    [*(v78 + 1) setFont:v32];

    [*(v78 + 1) setNumberOfLines:0];
    [*(v78 + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v72 addArrangedSubview:*(v78 + 1)];
    [v72 setCustomSpacing:*(v78 + 1) afterView:2.0];
    v33 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v34 = *(v78 + 2);
    *(v78 + 2) = v33;

    v35 = [v78 _descriptionFont];
    [*(v78 + 2) setFont:v35];

    [*(v78 + 2) setNumberOfLines:0];
    [*(v78 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v72 addArrangedSubview:*(v78 + 2)];
    [v73 addArrangedSubview:v72];
    [v73 setCustomSpacing:v72 afterView:16.0];
    v36 = [*(v78 + 4) centerYAnchor];
    v37 = [v72 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v38 setActive:1];

    v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v40 = *(v78 + 3);
    *(v78 + 3) = v39;

    v41 = [v78 _footnoteFont];
    [*(v78 + 3) setFont:v41];

    [*(v78 + 3) setNumberOfLines:0];
    [*(v78 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v73 addArrangedSubview:*(v78 + 3)];
    v42 = [UIImage systemImageNamed:@"chevron.forward"];
    v43 = +[UIColor tertiaryLabelColor];
    v71 = [(UIImage *)v42 imageWithTintColor:v43 renderingMode:1];

    v44 = [[UIImageView alloc] initWithImage:v71];
    v45 = *(v78 + 5);
    *(v78 + 5) = v44;

    [*(v78 + 5) setContentMode:1];
    [*(v78 + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [v78 contentView];
    [v46 addSubview:*(v78 + 5)];

    v67 = [*(v78 + 5) centerYAnchor];
    v69 = [v78 contentView];
    v65 = [v69 centerYAnchor];
    v63 = [v67 constraintEqualToAnchor:?];
    v79[0] = v63;
    v47 = [*(v78 + 5) widthAnchor];
    [v78 _chevronWidth];
    v48 = [v47 constraintEqualToConstant:?];
    v79[1] = v48;
    v49 = [*(v78 + 5) leadingAnchor];
    v50 = [v73 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:10.0];
    v79[2] = v51;
    v52 = [v78 contentView];
    v53 = [v52 trailingAnchor];
    v54 = [*(v78 + 5) trailingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:8.0];
    v79[3] = v55;
    v56 = [NSArray arrayWithObjects:v79 count:4];
    [NSLayoutConstraint activateConstraints:v56];

    LODWORD(v57) = 1148846080;
    [*(v78 + 5) setContentHuggingPriority:0 forAxis:v57];
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
  }

  v58 = v78;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v78, 0);
  return v58;
}

- (void)prepareForReuse
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyTransferOptionsTableViewCell;
  [(BuddyTransferOptionsTableViewCell *)&v7 prepareForReuse];
  v2 = [(BuddyTransferOptionsTableViewCell *)v9 imageView];
  [v2 setImage:0];

  v3 = [(BuddyTransferOptionsTableViewCell *)v9 iconLayerView];
  [(BuddyAspectFitLayerView *)v3 setManagedLayer:0];

  v4 = [(BuddyTransferOptionsTableViewCell *)v9 nameLabel];
  [(UILabel *)v4 setText:0];

  v5 = [(BuddyTransferOptionsTableViewCell *)v9 descriptionLabel];
  [(UILabel *)v5 setText:0];

  v6 = [(BuddyTransferOptionsTableViewCell *)v9 footnoteLabel];
  [(UILabel *)v6 setText:0];
}

- (CALayer)iconLayer
{
  v2 = [(BuddyTransferOptionsTableViewCell *)self iconLayerView:a2];
  v3 = [(BuddyAspectFitLayerView *)v2 managedLayer];

  return v3;
}

- (void)setIconLayer:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddyTransferOptionsTableViewCell *)v6 iconLayerView];
  [(BuddyAspectFitLayerView *)v4 setManagedLayer:v3];

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