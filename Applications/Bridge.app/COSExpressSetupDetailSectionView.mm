@interface COSExpressSetupDetailSectionView
- (id)itemViewForItem:(id)item;
- (void)_didTapSection;
- (void)_setCollapsed:(BOOL)collapsed animated:(BOOL)animated;
- (void)populateSection:(id)section;
@end

@implementation COSExpressSetupDetailSectionView

- (void)populateSection:(id)section
{
  sectionCopy = section;
  v5 = +[UIColor systemGray6Color];
  [(COSExpressSetupDetailSectionView *)self setBackgroundColor:v5];

  layer = [(COSExpressSetupDetailSectionView *)self layer];
  [layer setCornerRadius:8.0];

  v7 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_titleLabel];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  title = [sectionCopy title];
  [(UILabel *)self->_titleLabel setText:title];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_titleLabel setFont:v10];

  v11 = objc_opt_new();
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v11;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_subtitleLabel];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = sectionCopy;
  subtitle = [sectionCopy subtitle];
  [(UILabel *)self->_subtitleLabel setText:subtitle];

  v14 = +[UIColor systemGrayColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v14];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UILabel *)self->_subtitleLabel setFont:v15];

  [(UILabel *)self->_subtitleLabel setLineBreakMode:0];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v16 = objc_opt_new();
  imageView = self->_imageView;
  self->_imageView = v16;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_imageView];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setContentMode:1];
  image = [sectionCopy image];
  [(UIImageView *)self->_imageView setImage:image];

  v19 = objc_opt_new();
  chevron = self->_chevron;
  self->_chevron = v19;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_chevron];
  [(UIImageView *)self->_chevron setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [UIImage systemImageNamed:@"chevron.down"];
  [(UIImageView *)self->_chevron setImage:v21];

  v22 = +[UIColor systemGrayColor];
  [(UIImageView *)self->_chevron setTintColor:v22];

  v23 = objc_opt_new();
  itemStackView = self->_itemStackView;
  self->_itemStackView = v23;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_itemStackView];
  [(UIStackView *)self->_itemStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_itemStackView setAxis:1];
  [(UIStackView *)self->_itemStackView setAlignment:0];
  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  topAnchor2 = [(COSExpressSetupDetailSectionView *)self topAnchor];
  v84 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v93[0] = v84;
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(COSExpressSetupDetailSectionView *)self leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v93[1] = v81;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v79 = [widthAnchor constraintEqualToConstant:36.0];
  v93[2] = v79;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v77 = [heightAnchor constraintEqualToConstant:36.0];
  v93[3] = v77;
  trailingAnchor = [(UIImageView *)self->_chevron trailingAnchor];
  trailingAnchor2 = [(COSExpressSetupDetailSectionView *)self trailingAnchor];
  v74 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v93[4] = v74;
  centerYAnchor = [(UIImageView *)self->_chevron centerYAnchor];
  centerYAnchor2 = [(UIImageView *)self->_imageView centerYAnchor];
  v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v93[5] = v71;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [(UIImageView *)self->_imageView topAnchor];
  v68 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v93[6] = v68;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_imageView trailingAnchor];
  v65 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:8.0];
  v93[7] = v65;
  trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor5 = [(UIImageView *)self->_chevron trailingAnchor];
  v62 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-2.0];
  v93[8] = v62;
  topAnchor5 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v59 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:2.0];
  v93[9] = v59;
  leadingAnchor4 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  v56 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v93[10] = v56;
  trailingAnchor6 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor7 = [(UIImageView *)self->_chevron trailingAnchor];
  v53 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-2.0];
  v93[11] = v53;
  bottomAnchor2 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  topAnchor6 = [(UIStackView *)self->_itemStackView topAnchor];
  v50 = [bottomAnchor2 constraintEqualToAnchor:topAnchor6 constant:-16.0];
  v93[12] = v50;
  leadingAnchor6 = [(UIStackView *)self->_itemStackView leadingAnchor];
  leadingAnchor7 = [(COSExpressSetupDetailSectionView *)self leadingAnchor];
  v25 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v93[13] = v25;
  trailingAnchor8 = [(UIStackView *)self->_itemStackView trailingAnchor];
  trailingAnchor9 = [(COSExpressSetupDetailSectionView *)self trailingAnchor];
  v28 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v93[14] = v28;
  bottomAnchor3 = [(UIStackView *)self->_itemStackView bottomAnchor];
  bottomAnchor4 = [(COSExpressSetupDetailSectionView *)self bottomAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v93[15] = v31;
  v32 = [NSArray arrayWithObjects:v93 count:16];
  [NSLayoutConstraint activateConstraints:v32];

  v33 = v87;
  v34 = objc_opt_new();
  itemMap = self->_itemMap;
  self->_itemMap = v34;

  items = [v87 items];
  v37 = [items count];

  if (v37)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    items2 = [v87 items];
    v39 = [items2 countByEnumeratingWithState:&v88 objects:v92 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v89;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v89 != v41)
          {
            objc_enumerationMutation(items2);
          }

          v43 = *(*(&v88 + 1) + 8 * i);
          v44 = objc_opt_new();
          [v44 populateItem:v43];
          v45 = self->_itemMap;
          identifier = [v43 identifier];
          [(NSMutableDictionary *)v45 setObject:v44 forKey:identifier];

          [(UIStackView *)self->_itemStackView addArrangedSubview:v44];
        }

        v40 = [items2 countByEnumeratingWithState:&v88 objects:v92 count:16];
      }

      while (v40);
    }

    v47 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapSection"];
    [(COSExpressSetupDetailSectionView *)self addGestureRecognizer:v47];
    [(COSExpressSetupDetailSectionView *)self _setCollapsed:1 animated:0];

    v33 = v87;
  }

  else
  {
    [(UIImageView *)self->_chevron setHidden:1];
  }
}

- (id)itemViewForItem:(id)item
{
  itemMap = self->_itemMap;
  identifier = [item identifier];
  v5 = [(NSMutableDictionary *)itemMap objectForKey:identifier];

  return v5;
}

- (void)_didTapSection
{
  v3 = [(COSExpressSetupDetailSectionView *)self isCollapsed]^ 1;

  [(COSExpressSetupDetailSectionView *)self _setCollapsed:v3 animated:1];
}

- (void)_setCollapsed:(BOOL)collapsed animated:(BOOL)animated
{
  animatedCopy = animated;
  collapsedCopy = collapsed;
  v7 = objc_opt_new();
  if (animatedCopy)
  {
    v8 = 0.25;
  }

  else
  {
    v8 = 0.0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C0658;
  v20[3] = &unk_10026B130;
  v20[4] = self;
  v22 = collapsedCopy;
  v21 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000C07B0;
  v18 = &unk_100269800;
  v9 = v21;
  v19 = v9;
  [UIView animateWithDuration:v20 animations:&v15 completion:v8];
  if (collapsedCopy)
  {
    v10 = [UIApplication sharedApplication:v15];
    userInterfaceLayoutDirection = [v10 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v12 = @"chevron.left";
    }

    else
    {
      v12 = @"chevron.right";
    }
  }

  else
  {
    v12 = @"chevron.down";
  }

  v13 = [UIImage systemImageNamed:v12, v15, v16, v17, v18];
  chevron = [(COSExpressSetupDetailSectionView *)self chevron];
  [chevron setImage:v13];

  [(COSExpressSetupDetailSectionView *)self setIsCollapsed:collapsedCopy];
}

@end