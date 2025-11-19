@interface CarManeuverBannerView
- (BNBannerSource)target;
- (CGSize)sizeThatFits:(CGSize)result;
- (CarManeuverBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5;
- (id)accessibilityLabel;
- (void)updateFromBannerItem;
@end

@implementation CarManeuverBannerView

- (BNBannerSource)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)accessibilityLabel
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(UILabel *)self->_primaryLabel accessibilityLabel];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(UILabel *)self->_primaryLabel accessibilityLabel];
    [v3 addObject:v6];
  }

  v7 = [(UILabel *)self->_secondaryLabel accessibilityLabel];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(UILabel *)self->_secondaryLabel accessibilityLabel];
    [v3 addObject:v9];
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 54.0;
  result.height = v3;
  return result;
}

- (void)updateFromBannerItem
{
  lastManeuverItem = self->_lastManeuverItem;
  v4 = [(CarManeuverBannerView *)self maneuverItem];
  v5 = lastManeuverItem;
  v6 = v4;
  if (v5 | v6)
  {
    v7 = v6;
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      v9 = [(CarManeuverBannerView *)self maneuverItem];
      v10 = [v9 copy];
      v11 = self->_lastManeuverItem;
      self->_lastManeuverItem = v10;

      v12 = [(CarManeuverBannerView *)self maneuverItem];
      v13 = [v12 maneuverGuidanceInfo];

      v14 = [(CarManeuverBannerView *)self item];
      v15 = [v14 guidanceState];
      v16 = [v15 junction];
      if ([v16 type] == 1)
      {
        v17 = +[UIColor labelColor];
        v18 = [v17 colorWithAlphaComponent:0.600000024];
        p_maneuverView = &self->_maneuverView;
        [(GuidanceManeuverView *)self->_maneuverView setAccentColor:v18];
      }

      else
      {
        v17 = +[UIColor clearColor];
        p_maneuverView = &self->_maneuverView;
        [(GuidanceManeuverView *)self->_maneuverView setAccentColor:v17];
      }

      v20 = [v13 maneuverArtwork];
      [(GuidanceManeuverView *)*p_maneuverView setManeuverArtwork:v20];

      if (qword_10195F1D0 != -1)
      {
        dispatch_once(&qword_10195F1D0, &stru_101654B98);
      }

      [(UIStackView *)self->_labelStackView frame];
      v22 = v21;
      v74 = v13;
      v23 = [v13 majorTextAlternatives];
      v24 = qword_10195F1C0;
      v25 = v23;
      v26 = v24;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = *v76;
LABEL_10:
        v32 = 0;
        v33 = v30;
        while (1)
        {
          if (*v76 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v34 = [*(*(&v75 + 1) + 8 * v32) multiPartAttributedStringWithAttributes:v26];
          v30 = [v34 attributedString];

          [v30 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
          if (v35 < v22)
          {
            break;
          }

          v32 = v32 + 1;
          v33 = v30;
          if (v29 == v32)
          {
            v29 = [v27 countByEnumeratingWithState:&v75 objects:v79 count:16];
            if (v29)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      v36 = [(UILabel *)self->_primaryLabel attributedText];
      v37 = v30;
      v38 = v36;
      if (v37 | v38)
      {
        v39 = v38;
        v40 = [v37 isEqual:v38];

        if ((v40 & 1) == 0)
        {
          [(UILabel *)self->_primaryLabel setAttributedText:v37];
        }
      }

      v41 = [v74 minorTextAlternatives];
      v42 = qword_10195F1C8;
      v43 = v41;
      v44 = v42;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = 0;
        v49 = *v76;
LABEL_23:
        v50 = 0;
        v51 = v48;
        while (1)
        {
          if (*v76 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v52 = [*(*(&v75 + 1) + 8 * v50) multiPartAttributedStringWithAttributes:v44];
          v48 = [v52 attributedString];

          [v48 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
          if (v53 < v22)
          {
            break;
          }

          v50 = v50 + 1;
          v51 = v48;
          if (v47 == v50)
          {
            v47 = [v45 countByEnumeratingWithState:&v75 objects:v79 count:16];
            if (v47)
            {
              goto LABEL_23;
            }

            break;
          }
        }
      }

      else
      {
        v48 = 0;
      }

      v54 = [(UILabel *)self->_secondaryLabel attributedText];
      v55 = v48;
      v56 = v54;
      if (v55 | v56)
      {
        v57 = v56;
        v58 = [v55 isEqual:v56];

        if ((v58 & 1) == 0)
        {
          [(UILabel *)self->_secondaryLabel setAttributedText:v55];
        }
      }

      v59 = [v74 shieldInfo];
      v60 = v59;
      if (v59)
      {
        if (![v59 isEqual:self->_cachedShieldInfo])
        {
          v62 = +[UIScreen _carScreen];
          [v62 scale];
          v64 = v63;

          v65 = [v60 shieldImageWithSize:5 scale:1 idiom:v64];
          v66 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v65 image], 0, v64);
          [(UIImageView *)self->_shieldImageView setImage:v66];
          objc_storeStrong(&self->_cachedShieldInfo, v60);
          if (v66)
          {
            [v66 size];
            v68 = v67;
            [v66 size];
            v70 = v69 * 16.0 / v68;
          }

          else
          {
            v70 = 0.0;
          }

          [(NSLayoutConstraint *)self->_shieldWidthConstraint setConstant:v70];
        }
      }

      else
      {
        [(UIImageView *)self->_shieldImageView setImage:0];
        cachedShieldInfo = self->_cachedShieldInfo;
        self->_cachedShieldInfo = 0;

        [(NSLayoutConstraint *)self->_shieldWidthConstraint setConstant:0.0];
      }

      v71 = [(UIImageView *)self->_shieldImageView image];

      if (v71)
      {
        v72 = &OBJC_IVAR___CarManeuverBannerView__labelsToButtonConstraint;
      }

      else
      {
        v72 = &OBJC_IVAR___CarManeuverBannerView__labelsToShieldConstraint;
      }

      if (v71)
      {
        v73 = &OBJC_IVAR___CarManeuverBannerView__labelsToShieldConstraint;
      }

      else
      {
        v73 = &OBJC_IVAR___CarManeuverBannerView__labelsToButtonConstraint;
      }

      [*(&self->super.super.super.isa + *v72) setActive:0];
      [*(&self->super.super.super.isa + *v73) setActive:1];
    }
  }
}

- (CarManeuverBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v89.receiver = self;
  v89.super_class = CarManeuverBannerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [(CarManeuverBannerView *)&v89 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v12)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(CarManeuverBannerView *)v12 setAccessibilityIdentifier:v14];

    objc_storeWeak(&v12->_target, v7);
    objc_storeStrong(&v12->_item, a4);
    v15 = [[GuidanceManeuverView alloc] initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    maneuverView = v12->_maneuverView;
    v12->_maneuverView = v15;

    [(GuidanceManeuverView *)v12->_maneuverView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GuidanceManeuverView *)v12->_maneuverView setShieldIdiom:1];
    v17 = objc_opt_new();
    primaryLabel = v12->_primaryLabel;
    v12->_primaryLabel = v17;

    [(UILabel *)v12->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
    [(UILabel *)v12->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = objc_opt_new();
    v88 = v7;
    secondaryLabel = v12->_secondaryLabel;
    v12->_secondaryLabel = v19;

    [(UILabel *)v12->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
    [(UILabel *)v12->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [UIStackView alloc];
    v91[0] = v12->_primaryLabel;
    v91[1] = v12->_secondaryLabel;
    v22 = [NSArray arrayWithObjects:v91 count:2];
    v23 = [v21 initWithArrangedSubviews:v22];
    labelStackView = v12->_labelStackView;
    v12->_labelStackView = v23;

    [(UIStackView *)v12->_labelStackView setAccessibilityIdentifier:@"LabelStackView"];
    [(UIStackView *)v12->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v12->_labelStackView setAxis:1];
    [(UIStackView *)v12->_labelStackView setDistribution:2];
    [(UIStackView *)v12->_labelStackView setAlignment:0];
    v25 = objc_opt_new();
    shieldImageView = v12->_shieldImageView;
    v12->_shieldImageView = v25;

    [(UIImageView *)v12->_shieldImageView setAccessibilityIdentifier:@"ShieldImageView"];
    [(UIImageView *)v12->_shieldImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v12->_shieldImageView setContentMode:1];
    v27 = +[CPUIBannerViewButton buttonWithChevronImage];
    actionButton = v12->_actionButton;
    v12->_actionButton = v27;

    [(CPUIBannerViewButton *)v12->_actionButton setAccessibilityIdentifier:@"ActionButton"];
    [(CPUIBannerViewButton *)v12->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = +[CarDisplayController sharedInstance];
    v30 = [v29 window];
    v31 = [v30 windowScene];
    [v31 focusSystem];
    v32 = v87 = v8;
    [(CPUIBannerViewButton *)v12->_actionButton setSelected:v32 != 0];

    LODWORD(v33) = 1148846080;
    [(CPUIBannerViewButton *)v12->_actionButton setContentHuggingPriority:0 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(CPUIBannerViewButton *)v12->_actionButton setContentHuggingPriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(CPUIBannerViewButton *)v12->_actionButton setContentCompressionResistancePriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(CPUIBannerViewButton *)v12->_actionButton setContentCompressionResistancePriority:1 forAxis:v36];
    [(CarManeuverBannerView *)v12 addSubview:v12->_maneuverView];
    [(CarManeuverBannerView *)v12 addSubview:v12->_labelStackView];
    [(CarManeuverBannerView *)v12 addSubview:v12->_shieldImageView];
    [(CarManeuverBannerView *)v12 addSubview:v12->_actionButton];
    v37 = [(UIStackView *)v12->_labelStackView trailingAnchor];
    v38 = [(UIImageView *)v12->_shieldImageView leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-12.0];
    labelsToShieldConstraint = v12->_labelsToShieldConstraint;
    v12->_labelsToShieldConstraint = v39;

    v41 = [(UIStackView *)v12->_labelStackView trailingAnchor];
    v42 = [(CPUIBannerViewButton *)v12->_actionButton leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-12.0];
    labelsToButtonConstraint = v12->_labelsToButtonConstraint;
    v12->_labelsToButtonConstraint = v43;

    v45 = [(UIImageView *)v12->_shieldImageView widthAnchor];
    v46 = [v45 constraintEqualToConstant:0.0];
    shieldWidthConstraint = v12->_shieldWidthConstraint;
    v12->_shieldWidthConstraint = v46;

    v86 = [(GuidanceManeuverView *)v12->_maneuverView leadingAnchor];
    v85 = [(CarManeuverBannerView *)v12 leadingAnchor];
    v84 = [v86 constraintEqualToAnchor:v85 constant:12.0];
    v90[0] = v84;
    v83 = [(GuidanceManeuverView *)v12->_maneuverView widthAnchor];
    v82 = [v83 constraintEqualToConstant:33.0];
    v90[1] = v82;
    v81 = [(GuidanceManeuverView *)v12->_maneuverView centerYAnchor];
    v80 = [(CarManeuverBannerView *)v12 centerYAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v90[2] = v79;
    v78 = [(GuidanceManeuverView *)v12->_maneuverView heightAnchor];
    v77 = [v78 constraintEqualToConstant:33.0];
    v90[3] = v77;
    v76 = [(CPUIBannerViewButton *)v12->_actionButton trailingAnchor];
    v75 = [(CarManeuverBannerView *)v12 trailingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75 constant:-12.0];
    v90[4] = v74;
    v73 = [(CPUIBannerViewButton *)v12->_actionButton widthAnchor];
    v72 = [v73 constraintEqualToConstant:29.0];
    v90[5] = v72;
    v71 = [(CPUIBannerViewButton *)v12->_actionButton centerYAnchor];
    v70 = [(CarManeuverBannerView *)v12 centerYAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v90[6] = v69;
    v68 = [(CPUIBannerViewButton *)v12->_actionButton heightAnchor];
    v67 = [v68 constraintEqualToConstant:29.0];
    v90[7] = v67;
    v66 = [(UIImageView *)v12->_shieldImageView trailingAnchor];
    v65 = [(CPUIBannerViewButton *)v12->_actionButton leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65 constant:-12.0];
    v90[8] = v64;
    v90[9] = v12->_shieldWidthConstraint;
    v63 = [(UIImageView *)v12->_shieldImageView heightAnchor];
    v62 = [v63 constraintEqualToConstant:16.0];
    v90[10] = v62;
    v61 = [(UIImageView *)v12->_shieldImageView centerYAnchor];
    v60 = [(CarManeuverBannerView *)v12 centerYAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v90[11] = v59;
    v58 = [(UIStackView *)v12->_labelStackView leadingAnchor];
    v57 = [(GuidanceManeuverView *)v12->_maneuverView trailingAnchor];
    v48 = [v58 constraintEqualToAnchor:v57 constant:12.0];
    v90[12] = v48;
    v49 = [(UIStackView *)v12->_labelStackView topAnchor];
    v50 = [(CarManeuverBannerView *)v12 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:3.0];
    v90[13] = v51;
    v52 = [(UIStackView *)v12->_labelStackView bottomAnchor];
    v53 = [(CarManeuverBannerView *)v12 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-3.0];
    v90[14] = v54;
    v55 = [NSArray arrayWithObjects:v90 count:15];
    [NSLayoutConstraint activateConstraints:v55];

    v8 = v87;
    v7 = v88;

    [(CarManeuverBannerView *)v12 updateFromBannerItem];
  }

  return v12;
}

@end