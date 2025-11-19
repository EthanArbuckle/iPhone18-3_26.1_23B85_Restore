@interface VLFCalloutView
- (VLFCalloutView)initWithFrame:(CGRect)a3;
- (VLFCalloutViewDelegate)delegate;
- (void)_updateDescriptionNumberOfLines;
- (void)_updateFonts;
- (void)traitCollectionDidChange:(id)a3;
- (void)userDismissedVLFCallout:(id)a3;
@end

@implementation VLFCalloutView

- (VLFCalloutViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userDismissedVLFCallout:(id)a3
{
  v4 = [(VLFCalloutView *)self delegate];
  [v4 calloutViewWasDismissed:self];
}

- (void)_updateDescriptionNumberOfLines
{
  v3 = [(VLFCalloutView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (v4)
  {
    v5 = [(VLFCalloutView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = UIContentSizeCategoryCompareToCategory(v6, UIContentSizeCategoryLarge);

    v8 = [(VLFCalloutView *)self descriptionLabel];
    v10 = v8;
    if (v7 == NSOrderedDescending)
    {
      v9 = 5;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [(VLFCalloutView *)self descriptionLabel];
    v10 = v8;
  }

  v9 = 4;
LABEL_6:
  [v8 setNumberOfLines:v9];
}

- (void)_updateFonts
{
  v3 = [(VLFCalloutView *)self traitCollection];
  v4 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v4];
  v18 = UIFontDescriptorTraitsAttribute;
  v16 = UIFontWeightTrait;
  v6 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v17 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = [UIFont fontWithDescriptor:v9 size:0.0];
  v11 = [(VLFCalloutView *)self titleLabel];
  [v11 setFont:v10];

  v12 = [(VLFCalloutView *)self traitCollection];
  v13 = [v12 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v13];
  v15 = [(VLFCalloutView *)self descriptionLabel];
  [v15 setFont:v14];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = VLFCalloutView;
  [(VLFCalloutView *)&v4 traitCollectionDidChange:a3];
  [(VLFCalloutView *)self _updateFonts];
  [(VLFCalloutView *)self _updateDescriptionNumberOfLines];
}

- (VLFCalloutView)initWithFrame:(CGRect)a3
{
  v74.receiver = self;
  v74.super_class = VLFCalloutView;
  v3 = [(VLFCalloutView *)&v74 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    LODWORD(v6) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v6];
    Integer = GEOConfigGetInteger();
    v8 = Integer;
    if (Integer >= 4)
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v79 = "[VLFCalloutView initWithFrame:]";
        v80 = 2080;
        v81 = "VLFCalloutView.m";
        v82 = 1024;
        v83 = 51;
        v84 = 2080;
        v85 = "experimentConfig == 0";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v79 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v9 = @"VLF_Active_Banner_Title_Text";
    }

    else
    {
      v9 = off_101624390[Integer];
    }

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:v9 value:@"localized string not found" table:0];
    [(UILabel *)v3->_titleLabel setText:v14];

    v15 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v15];

    [(VLFCalloutView *)v3 addSubview:v3->_titleLabel];
    v16 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v17 = [(VLFCalloutView *)v3 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v77[0] = v18;
    v19 = [(UILabel *)v3->_titleLabel topAnchor];
    v20 = [(VLFCalloutView *)v3 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:2.0];
    v77[1] = v21;
    v22 = [NSArray arrayWithObjects:v77 count:2];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = objc_opt_new();
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v23;

    [(UILabel *)v3->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1148846080;
    [(UILabel *)v3->_descriptionLabel setContentCompressionResistancePriority:0 forAxis:v25];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:4];
    [(UILabel *)v3->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
    if (GEOVisualLocalizationCrowdsourcingIsSupported() && GEOVisualLocalizationCrowdsourcingIsAllowed() && GEOVisualLocalizationCrowdsourcingIsEnabled())
    {
      if (v8 >= 4)
      {
        v59 = sub_10006D178();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v79 = "[VLFCalloutView initWithFrame:]";
          v80 = 2080;
          v81 = "VLFCalloutView.m";
          v82 = 1024;
          v83 = 82;
          v84 = 2080;
          v85 = "experimentConfig == 0";
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v60 = sub_10006D178();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v79 = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v27 = @"VLF_Active_Banner_Description_Text_CrowdsourcingEnabled";
        goto LABEL_26;
      }

      v26 = off_1016243B0;
    }

    else
    {
      if (v8 >= 4)
      {
        v28 = sub_10006D178();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v79 = "[VLFCalloutView initWithFrame:]";
          v80 = 2080;
          v81 = "VLFCalloutView.m";
          v82 = 1024;
          v83 = 100;
          v84 = 2080;
          v85 = "experimentConfig == 0";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v29 = sub_10006D178();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v79 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v27 = @"VLF_Active_Banner_Description_Text";
        goto LABEL_26;
      }

      v26 = off_1016243D0;
    }

    v27 = v26[v8];
LABEL_26:
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:v27 value:@"localized string not found" table:0];
    [(UILabel *)v3->_descriptionLabel setText:v32];

    v33 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_descriptionLabel setTextColor:v33];

    [(VLFCalloutView *)v3 addSubview:v3->_descriptionLabel];
    v71 = [(UILabel *)v3->_descriptionLabel leadingAnchor];
    v69 = [(VLFCalloutView *)v3 leadingAnchor];
    v67 = [v71 constraintEqualToAnchor:v69];
    v76[0] = v67;
    v65 = [(UILabel *)v3->_descriptionLabel trailingAnchor];
    v34 = [(VLFCalloutView *)v3 trailingAnchor];
    v35 = [v65 constraintEqualToAnchor:v34 constant:-16.0];
    v76[1] = v35;
    v36 = [(UILabel *)v3->_descriptionLabel topAnchor];
    v37 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:2.0];
    v76[2] = v38;
    v39 = [(UILabel *)v3->_descriptionLabel bottomAnchor];
    v40 = [(VLFCalloutView *)v3 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v76[3] = v41;
    v42 = [NSArray arrayWithObjects:v76 count:4];
    [NSLayoutConstraint activateConstraints:v42];

    [(VLFCalloutView *)v3 _updateFonts];
    [(VLFCalloutView *)v3 _updateDescriptionNumberOfLines];
    v43 = [UIFont systemFontOfSize:17.0];
    v44 = [v43 _mapkit_fontWithWeight:UIFontWeightMedium];
    v72 = [UIImageSymbolConfiguration configurationWithFont:v44];

    v45 = [UIImage systemImageNamed:@"xmark" withConfiguration:v72];
    v46 = [v45 imageWithRenderingMode:2];

    v47 = [UIButton buttonWithType:0];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v47 setImage:v46 forState:0];
    v48 = +[UIColor secondaryLabelColor];
    [v47 setTintColor:v48];

    [v47 addTarget:v3 action:"userDismissedVLFCallout:" forControlEvents:64];
    [(VLFCalloutView *)v3 addSubview:v47];
    v70 = [v47 leadingAnchor];
    v73 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v68 = [v70 constraintEqualToAnchor:v73 constant:14.0];
    v75[0] = v68;
    v66 = [v47 trailingAnchor];
    v64 = [(VLFCalloutView *)v3 trailingAnchor];
    v63 = [v66 constraintEqualToAnchor:v64];
    v75[1] = v63;
    v49 = [v47 topAnchor];
    v50 = [(VLFCalloutView *)v3 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v75[2] = v51;
    v52 = [v47 widthAnchor];
    v62 = v46;
    [v46 size];
    v53 = [v52 constraintEqualToConstant:?];
    v75[3] = v53;
    v54 = [v47 heightAnchor];
    [v46 size];
    v56 = [v54 constraintEqualToConstant:v55];
    v75[4] = v56;
    v57 = [NSArray arrayWithObjects:v75 count:5];
    [NSLayoutConstraint activateConstraints:v57];
  }

  return v3;
}

@end