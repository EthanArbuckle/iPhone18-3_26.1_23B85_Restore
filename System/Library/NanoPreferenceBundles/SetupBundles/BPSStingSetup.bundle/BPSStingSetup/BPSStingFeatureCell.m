@interface BPSStingFeatureCell
+ (BOOL)isLargeText;
- (BOOL)_largerThanMaxCategory;
- (BPSStingFeatureCell)initWithFrame:(CGRect)a3;
- (CGSize)_findOptimalTitleLineSize;
- (CGSize)getPreferredCellSize;
- (id)_subtitleLabelFont;
- (id)_titleLabelFont;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)setImage:(id)a3 title:(id)a4 subtitle:(id)a5;
- (void)setSelected:(BOOL)a3;
@end

@implementation BPSStingFeatureCell

+ (BOOL)isLargeText
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = UIContentSizeCategoryIsAccessibilityCategory(v3) || UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryLarge, v3) == NSOrderedAscending;
  return v4;
}

- (BPSStingFeatureCell)initWithFrame:(CGRect)a3
{
  v79.receiver = self;
  v79.super_class = BPSStingFeatureCell;
  v3 = [(BPSStingFeatureCell *)&v79 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor secondarySystemFillColor];
    v5 = [v4 cgColor];
    v6 = [(BPSStingFeatureCell *)v3 layer];
    [v6 setBackgroundColor:v5];

    v7 = [(BPSStingFeatureCell *)v3 layer];
    [v7 setCornerRadius:18.0];

    v8 = [(BPSStingFeatureCell *)v3 layer];
    [v8 setCornerCurve:kCACornerCurveContinuous];

    [(BPSStingFeatureCell *)v3 setClipsToBounds:1];
    v9 = [(BPSStingFeatureCell *)v3 contentView];
    v10 = [v9 layer];
    [v10 setBorderWidth:4.0];

    v11 = +[UIColor systemBlackColor];
    v12 = [v11 CGColor];
    v13 = [(BPSStingFeatureCell *)v3 contentView];
    v14 = [v13 layer];
    [v14 setBorderColor:v12];

    v15 = [(BPSStingFeatureCell *)v3 contentView];
    v16 = [v15 layer];
    [v16 setCornerRadius:18.0];

    v17 = [(BPSStingFeatureCell *)v3 contentView];
    v18 = [v17 layer];
    [v18 setCornerCurve:kCACornerCurveContinuous];

    v19 = +[UIColor systemBlackColor];
    v20 = [v19 CGColor];
    v21 = [(BPSStingFeatureCell *)v3 layer];
    [v21 setBorderColor:v20];

    v22 = [(BPSStingFeatureCell *)v3 layer];
    [v22 setBorderWidth:2.0];

    v23 = objc_opt_new();
    activityImageView = v3->_activityImageView;
    v3->_activityImageView = v23;

    [(UIImageView *)v3->_activityImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_activityImageView setClipsToBounds:1];
    [(UIImageView *)v3->_activityImageView setContentMode:1];
    v78 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
    [(UIImageView *)v3->_activityImageView setPreferredSymbolConfiguration:v78];
    [(BPSStingFeatureCell *)v3 addSubview:v3->_activityImageView];
    v25 = objc_opt_new();
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v25;

    v27 = v3->_titleLabel;
    v28 = [(BPSStingFeatureCell *)v3 _titleLabelFont];
    [(UILabel *)v27 setFont:v28];

    v29 = +[UIColor systemWhiteColor];
    [(UILabel *)v3->_titleLabel setColor:v29];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = +[NSLocale currentLocale];
    v31 = [v30 localeIdentifier];
    v32 = [(BPSStingFeatureCell *)v3 traitOverrides];
    [v32 setTypesettingLanguage:v31];

    [(UILabel *)v3->_titleLabel _setWantsContentAwareTypesettingLanguage:1];
    [(BPSStingFeatureCell *)v3 addSubview:v3->_titleLabel];
    v33 = objc_opt_new();
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v33;

    v35 = v3->_subtitleLabel;
    v36 = [(BPSStingFeatureCell *)v3 _subtitleLabelFont];
    [(UILabel *)v35 setFont:v36];

    v37 = v3->_subtitleLabel;
    v38 = +[UIColor systemGrayColor];
    [(UILabel *)v37 setTextColor:v38];

    [(UILabel *)v3->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BPSStingFeatureCell *)v3 addSubview:v3->_subtitleLabel];
    v76 = [(UIImageView *)v3->_activityImageView leadingAnchor];
    v77 = [(BPSStingFeatureCell *)v3 contentView];
    v75 = [v77 leadingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75 constant:14.0];
    v80[0] = v74;
    v72 = [(UIImageView *)v3->_activityImageView topAnchor];
    v73 = [(BPSStingFeatureCell *)v3 contentView];
    v71 = [v73 topAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:14.0];
    v80[1] = v70;
    v68 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    v69 = [(BPSStingFeatureCell *)v3 contentView];
    v67 = [v69 bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:-14.0];
    v80[2] = v66;
    v65 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    v64 = [(BPSStingFeatureCell *)v3 leadingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:14.0];
    v80[3] = v63;
    v62 = [(UILabel *)v3->_subtitleLabel trailingAnchor];
    v61 = [(BPSStingFeatureCell *)v3 trailingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:-14.0];
    v80[4] = v60;
    v59 = [(UILabel *)v3->_titleLabel topAnchor];
    v58 = [(UIImageView *)v3->_activityImageView bottomAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:2.0];
    v80[5] = v57;
    v56 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v55 = [(UILabel *)v3->_subtitleLabel topAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v80[6] = v54;
    v39 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v40 = [(BPSStingFeatureCell *)v3 contentView];
    v41 = [v40 leadingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41 constant:14.0];
    v80[7] = v42;
    v43 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v44 = [(BPSStingFeatureCell *)v3 contentView];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintEqualToAnchor:v45 constant:-14.0];
    v80[8] = v46;
    v47 = [NSArray arrayWithObjects:v80 count:9];
    [NSLayoutConstraint activateConstraints:v47];

    v48 = objc_opt_new();
    scratchLabel = v3->_scratchLabel;
    v3->_scratchLabel = v48;

    v50 = v3->_scratchLabel;
    v51 = [(BPSStingFeatureCell *)v3 _titleLabelFont];
    [(UILabel *)v50 setFont:v51];

    v52 = +[UIColor systemWhiteColor];
    [(UILabel *)v3->_scratchLabel setColor:v52];

    [(UILabel *)v3->_scratchLabel setNumberOfLines:0];
    [(UILabel *)v3->_scratchLabel setLineBreakMode:0];
    [(UILabel *)v3->_scratchLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_scratchLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

- (id)_titleLabelFont
{
  if ([(BPSStingFeatureCell *)self _largerThanMaxCategory])
  {
    v2 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v2];
  }

  else
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  }

  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:32770];

  v6 = [UIFont fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)_subtitleLabelFont
{
  v3 = bps_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    *buf = 136315394;
    v21 = "[BPSStingFeatureCell _subtitleLabelFont]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s: preferredContentSizeCategory is %@", buf, 0x16u);
  }

  if ([(BPSStingFeatureCell *)self _largerThanMaxCategory])
  {
    v6 = bps_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "[BPSStingFeatureCell _subtitleLabelFont]";
      v22 = 2112;
      v23 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v24 = 2112;
      v25 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: preferredContentSizeCategory is larger than %@ forcing %@", buf, 0x20u);
    }

    v7 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v7];
  }

  else
  {
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
  }

  v9 = [v8 fontDescriptor];
  v18 = UIFontWeightTrait;
  v10 = [NSNumber numberWithDouble:UIFontWeightMedium];
  v19 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v16 = UIFontDescriptorTraitsAttribute;
  v17 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = [v9 fontDescriptorByAddingAttributes:v12];

  v14 = [UIFont fontWithDescriptor:v13 size:0.0];

  return v14;
}

- (BOOL)_largerThanMaxCategory
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryAccessibilityExtraExtraLarge, v3) == NSOrderedAscending;
  return v2;
}

- (void)setImage:(id)a3 title:(id)a4 subtitle:(id)a5
{
  activityImageView = self->_activityImageView;
  v9 = a5;
  v10 = a4;
  [(UIImageView *)activityImageView setImage:a3];
  [(UILabel *)self->_titleLabel setText:v10];

  [(UILabel *)self->_subtitleLabel setText:v9];

  [(BPSStingFeatureCell *)self layoutSubviews];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = BPSStingFeatureCell;
  [(BPSStingFeatureCell *)&v8 setSelected:?];
  if (v3)
  {
    +[UIColor systemOrangeColor];
  }

  else
  {
    +[UIColor systemBlackColor];
  }
  v5 = ;
  v6 = [v5 CGColor];
  v7 = [(BPSStingFeatureCell *)self layer];
  [v7 setBorderColor:v6];
}

- (CGSize)getPreferredCellSize
{
  [(BPSStingFeatureCell *)self _findOptimalTitleLineSize];
  v4 = v3;
  v6 = v5 + 28.0;
  subtitleLabel = self->_subtitleLabel;
  [(UILabel *)subtitleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  [UILabel systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v9 = v8 + 28.0;
  if (v8 + 28.0 >= v6)
  {
    v10 = v8 + 28.0;
  }

  else
  {
    v10 = v6;
  }

  if (self->_preferredCellWidth >= v10)
  {
    preferredCellWidth = self->_preferredCellWidth;
  }

  else
  {
    preferredCellWidth = v10;
  }

  v12 = +[BPSStingFeatureCell isLargeText];
  preferredCellHeight = 0.0;
  if (v12)
  {
    if (preferredCellWidth < v9)
    {
      preferredCellWidth = v9;
    }

    activityImageView = self->_activityImageView;
    [(UIImageView *)activityImageView sizeThatFits:1.79769313e308, 1.79769313e308];
    [UIImageView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
    v16 = v15;
    v17 = self->_subtitleLabel;
    [(UILabel *)v17 sizeThatFits:preferredCellWidth, 1.79769313e308];
    [UILabel systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" verticalFittingPriority:?];
    v19 = v4 + v16 + v18 + 8.0 + 20.0;
    preferredCellHeight = self->_preferredCellHeight;
    if (preferredCellHeight < v19)
    {
      preferredCellHeight = v19;
    }
  }

  v20 = fmax(preferredCellWidth, 127.0);
  v21 = fmax(preferredCellHeight, 106.0);
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)_findOptimalTitleLineSize
{
  [(UILabel *)self->_scratchLabel setText:@"1\n2"];
  scratchLabel = self->_scratchLabel;
  v4 = 127.0;
  [(UILabel *)scratchLabel sizeThatFits:127.0, 1.79769313e308];
  [UILabel systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v6 = v5;
  titleLabel = self->_titleLabel;
  [(UILabel *)titleLabel sizeThatFits:127.0, 1.79769313e308];
  [UILabel systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v9 = v8;
  v11 = v10;
  if (v10 > v6)
  {
    v12 = self->_titleLabel;
    [(UILabel *)v12 sizeThatFits:1.79769313e308, 1.79769313e308];
    [UILabel systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" verticalFittingPriority:?];
    v14 = v13;
    if (v13 >= 127.0)
    {
      v4 = 127.0;
      do
      {
        v15 = floor((v14 + v4) * 0.5);
        v16 = self->_titleLabel;
        [(UILabel *)v16 sizeThatFits:v15, 1.79769313e308];
        [UILabel systemLayoutSizeFittingSize:v16 withHorizontalFittingPriority:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" verticalFittingPriority:?];
        v9 = v17;
        v11 = v18;
        if (v18 <= v6)
        {
          v20 = self->_titleLabel;
          v19 = v15 + -1.0;
          [(UILabel *)v20 sizeThatFits:v19, 1.79769313e308];
          [UILabel systemLayoutSizeFittingSize:v20 withHorizontalFittingPriority:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" verticalFittingPriority:?];
          if (v21 > v6)
          {
            break;
          }
        }

        else
        {
          v4 = v15 + 1.0;
          v19 = v14;
        }

        v14 = v19;
      }

      while (v4 <= v19);
    }

    if (v4 <= v14)
    {
      v22 = bps_setup_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(UILabel *)self->_titleLabel text];
        v26 = 138412290;
        v27 = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Failed to find a width that meets criteria.  Layout of sting tile could be weird. Word: %@", &v26, 0xCu);
      }
    }
  }

  v24 = v9;
  v25 = v11;
  result.height = v25;
  result.width = v24;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = BPSStingFeatureCell;
  v4 = [(BPSStingFeatureCell *)&v8 preferredLayoutAttributesFittingAttributes:a3];
  [(BPSStingFeatureCell *)self getPreferredCellSize];
  [v4 setSize:?];
  v5 = bps_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 size];
    v6 = NSStringFromCGSize(v14);
    *buf = 136315394;
    v10 = "[BPSStingFeatureCell preferredLayoutAttributesFittingAttributes:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: attributes size is %@", buf, 0x16u);
  }

  return v4;
}

@end