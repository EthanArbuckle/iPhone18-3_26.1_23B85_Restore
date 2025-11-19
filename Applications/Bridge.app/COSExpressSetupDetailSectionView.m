@interface COSExpressSetupDetailSectionView
- (id)itemViewForItem:(id)a3;
- (void)_didTapSection;
- (void)_setCollapsed:(BOOL)a3 animated:(BOOL)a4;
- (void)populateSection:(id)a3;
@end

@implementation COSExpressSetupDetailSectionView

- (void)populateSection:(id)a3
{
  v4 = a3;
  v5 = +[UIColor systemGray6Color];
  [(COSExpressSetupDetailSectionView *)self setBackgroundColor:v5];

  v6 = [(COSExpressSetupDetailSectionView *)self layer];
  [v6 setCornerRadius:8.0];

  v7 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_titleLabel];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v4 title];
  [(UILabel *)self->_titleLabel setText:v9];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_titleLabel setFont:v10];

  v11 = objc_opt_new();
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v11;

  [(COSExpressSetupDetailSectionView *)self addSubview:self->_subtitleLabel];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = v4;
  v13 = [v4 subtitle];
  [(UILabel *)self->_subtitleLabel setText:v13];

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
  v18 = [v4 image];
  [(UIImageView *)self->_imageView setImage:v18];

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
  v86 = [(UIImageView *)self->_imageView topAnchor];
  v85 = [(COSExpressSetupDetailSectionView *)self topAnchor];
  v84 = [v86 constraintEqualToAnchor:v85 constant:16.0];
  v93[0] = v84;
  v83 = [(UIImageView *)self->_imageView leadingAnchor];
  v82 = [(COSExpressSetupDetailSectionView *)self leadingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82 constant:16.0];
  v93[1] = v81;
  v80 = [(UIImageView *)self->_imageView widthAnchor];
  v79 = [v80 constraintEqualToConstant:36.0];
  v93[2] = v79;
  v78 = [(UIImageView *)self->_imageView heightAnchor];
  v77 = [v78 constraintEqualToConstant:36.0];
  v93[3] = v77;
  v76 = [(UIImageView *)self->_chevron trailingAnchor];
  v75 = [(COSExpressSetupDetailSectionView *)self trailingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:-16.0];
  v93[4] = v74;
  v73 = [(UIImageView *)self->_chevron centerYAnchor];
  v72 = [(UIImageView *)self->_imageView centerYAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v93[5] = v71;
  v70 = [(UILabel *)self->_titleLabel topAnchor];
  v69 = [(UIImageView *)self->_imageView topAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v93[6] = v68;
  v67 = [(UILabel *)self->_titleLabel leadingAnchor];
  v66 = [(UIImageView *)self->_imageView trailingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:8.0];
  v93[7] = v65;
  v64 = [(UILabel *)self->_titleLabel trailingAnchor];
  v63 = [(UIImageView *)self->_chevron trailingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:-2.0];
  v93[8] = v62;
  v61 = [(UILabel *)self->_subtitleLabel topAnchor];
  v60 = [(UILabel *)self->_titleLabel bottomAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:2.0];
  v93[9] = v59;
  v58 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v57 = [(UILabel *)self->_titleLabel leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v93[10] = v56;
  v55 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v54 = [(UIImageView *)self->_chevron trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54 constant:-2.0];
  v93[11] = v53;
  v52 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v51 = [(UIStackView *)self->_itemStackView topAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:-16.0];
  v93[12] = v50;
  v49 = [(UIStackView *)self->_itemStackView leadingAnchor];
  v48 = [(COSExpressSetupDetailSectionView *)self leadingAnchor];
  v25 = [v49 constraintEqualToAnchor:v48];
  v93[13] = v25;
  v26 = [(UIStackView *)self->_itemStackView trailingAnchor];
  v27 = [(COSExpressSetupDetailSectionView *)self trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v93[14] = v28;
  v29 = [(UIStackView *)self->_itemStackView bottomAnchor];
  v30 = [(COSExpressSetupDetailSectionView *)self bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v93[15] = v31;
  v32 = [NSArray arrayWithObjects:v93 count:16];
  [NSLayoutConstraint activateConstraints:v32];

  v33 = v87;
  v34 = objc_opt_new();
  itemMap = self->_itemMap;
  self->_itemMap = v34;

  v36 = [v87 items];
  v37 = [v36 count];

  if (v37)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v38 = [v87 items];
    v39 = [v38 countByEnumeratingWithState:&v88 objects:v92 count:16];
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
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v88 + 1) + 8 * i);
          v44 = objc_opt_new();
          [v44 populateItem:v43];
          v45 = self->_itemMap;
          v46 = [v43 identifier];
          [(NSMutableDictionary *)v45 setObject:v44 forKey:v46];

          [(UIStackView *)self->_itemStackView addArrangedSubview:v44];
        }

        v40 = [v38 countByEnumeratingWithState:&v88 objects:v92 count:16];
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

- (id)itemViewForItem:(id)a3
{
  itemMap = self->_itemMap;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)itemMap objectForKey:v4];

  return v5;
}

- (void)_didTapSection
{
  v3 = [(COSExpressSetupDetailSectionView *)self isCollapsed]^ 1;

  [(COSExpressSetupDetailSectionView *)self _setCollapsed:v3 animated:1];
}

- (void)_setCollapsed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_opt_new();
  if (v4)
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
  v22 = v5;
  v21 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000C07B0;
  v18 = &unk_100269800;
  v9 = v21;
  v19 = v9;
  [UIView animateWithDuration:v20 animations:&v15 completion:v8];
  if (v5)
  {
    v10 = [UIApplication sharedApplication:v15];
    v11 = [v10 userInterfaceLayoutDirection];

    if (v11 == 1)
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
  v14 = [(COSExpressSetupDetailSectionView *)self chevron];
  [v14 setImage:v13];

  [(COSExpressSetupDetailSectionView *)self setIsCollapsed:v5];
}

@end