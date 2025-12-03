@interface CarManeuverBannerView
- (BNBannerSource)target;
- (CGSize)sizeThatFits:(CGSize)result;
- (CarManeuverBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
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
  accessibilityLabel = [(UILabel *)self->_primaryLabel accessibilityLabel];
  v5 = [accessibilityLabel length];

  if (v5)
  {
    accessibilityLabel2 = [(UILabel *)self->_primaryLabel accessibilityLabel];
    [v3 addObject:accessibilityLabel2];
  }

  accessibilityLabel3 = [(UILabel *)self->_secondaryLabel accessibilityLabel];
  v8 = [accessibilityLabel3 length];

  if (v8)
  {
    accessibilityLabel4 = [(UILabel *)self->_secondaryLabel accessibilityLabel];
    [v3 addObject:accessibilityLabel4];
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
  maneuverItem = [(CarManeuverBannerView *)self maneuverItem];
  v5 = lastManeuverItem;
  v6 = maneuverItem;
  if (v5 | v6)
  {
    v7 = v6;
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      maneuverItem2 = [(CarManeuverBannerView *)self maneuverItem];
      v10 = [maneuverItem2 copy];
      v11 = self->_lastManeuverItem;
      self->_lastManeuverItem = v10;

      maneuverItem3 = [(CarManeuverBannerView *)self maneuverItem];
      maneuverGuidanceInfo = [maneuverItem3 maneuverGuidanceInfo];

      item = [(CarManeuverBannerView *)self item];
      guidanceState = [item guidanceState];
      junction = [guidanceState junction];
      if ([junction type] == 1)
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

      maneuverArtwork = [maneuverGuidanceInfo maneuverArtwork];
      [(GuidanceManeuverView *)*p_maneuverView setManeuverArtwork:maneuverArtwork];

      if (qword_10195F1D0 != -1)
      {
        dispatch_once(&qword_10195F1D0, &stru_101654B98);
      }

      [(UIStackView *)self->_labelStackView frame];
      v22 = v21;
      v74 = maneuverGuidanceInfo;
      majorTextAlternatives = [maneuverGuidanceInfo majorTextAlternatives];
      v24 = qword_10195F1C0;
      v25 = majorTextAlternatives;
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
        attributedString = 0;
        v31 = *v76;
LABEL_10:
        v32 = 0;
        v33 = attributedString;
        while (1)
        {
          if (*v76 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v34 = [*(*(&v75 + 1) + 8 * v32) multiPartAttributedStringWithAttributes:v26];
          attributedString = [v34 attributedString];

          [attributedString boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
          if (v35 < v22)
          {
            break;
          }

          v32 = v32 + 1;
          v33 = attributedString;
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
        attributedString = 0;
      }

      attributedText = [(UILabel *)self->_primaryLabel attributedText];
      v37 = attributedString;
      v38 = attributedText;
      if (v37 | v38)
      {
        v39 = v38;
        v40 = [v37 isEqual:v38];

        if ((v40 & 1) == 0)
        {
          [(UILabel *)self->_primaryLabel setAttributedText:v37];
        }
      }

      minorTextAlternatives = [v74 minorTextAlternatives];
      v42 = qword_10195F1C8;
      v43 = minorTextAlternatives;
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
        attributedString2 = 0;
        v49 = *v76;
LABEL_23:
        v50 = 0;
        v51 = attributedString2;
        while (1)
        {
          if (*v76 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v52 = [*(*(&v75 + 1) + 8 * v50) multiPartAttributedStringWithAttributes:v44];
          attributedString2 = [v52 attributedString];

          [attributedString2 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
          if (v53 < v22)
          {
            break;
          }

          v50 = v50 + 1;
          v51 = attributedString2;
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
        attributedString2 = 0;
      }

      attributedText2 = [(UILabel *)self->_secondaryLabel attributedText];
      v55 = attributedString2;
      v56 = attributedText2;
      if (v55 | v56)
      {
        v57 = v56;
        v58 = [v55 isEqual:v56];

        if ((v58 & 1) == 0)
        {
          [(UILabel *)self->_secondaryLabel setAttributedText:v55];
        }
      }

      shieldInfo = [v74 shieldInfo];
      v60 = shieldInfo;
      if (shieldInfo)
      {
        if (![shieldInfo isEqual:self->_cachedShieldInfo])
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

      image = [(UIImageView *)self->_shieldImageView image];

      if (image)
      {
        v72 = &OBJC_IVAR___CarManeuverBannerView__labelsToButtonConstraint;
      }

      else
      {
        v72 = &OBJC_IVAR___CarManeuverBannerView__labelsToShieldConstraint;
      }

      if (image)
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

- (CarManeuverBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  targetCopy = target;
  itemCopy = item;
  v89.receiver = self;
  v89.super_class = CarManeuverBannerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarManeuverBannerView *)&v89 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(CarManeuverBannerView *)height setAccessibilityIdentifier:v14];

    objc_storeWeak(&height->_target, targetCopy);
    objc_storeStrong(&height->_item, item);
    height2 = [[GuidanceManeuverView alloc] initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    maneuverView = height->_maneuverView;
    height->_maneuverView = height2;

    [(GuidanceManeuverView *)height->_maneuverView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GuidanceManeuverView *)height->_maneuverView setShieldIdiom:1];
    v17 = objc_opt_new();
    primaryLabel = height->_primaryLabel;
    height->_primaryLabel = v17;

    [(UILabel *)height->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
    [(UILabel *)height->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = objc_opt_new();
    v88 = targetCopy;
    secondaryLabel = height->_secondaryLabel;
    height->_secondaryLabel = v19;

    [(UILabel *)height->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
    [(UILabel *)height->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [UIStackView alloc];
    v91[0] = height->_primaryLabel;
    v91[1] = height->_secondaryLabel;
    v22 = [NSArray arrayWithObjects:v91 count:2];
    v23 = [v21 initWithArrangedSubviews:v22];
    labelStackView = height->_labelStackView;
    height->_labelStackView = v23;

    [(UIStackView *)height->_labelStackView setAccessibilityIdentifier:@"LabelStackView"];
    [(UIStackView *)height->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)height->_labelStackView setAxis:1];
    [(UIStackView *)height->_labelStackView setDistribution:2];
    [(UIStackView *)height->_labelStackView setAlignment:0];
    v25 = objc_opt_new();
    shieldImageView = height->_shieldImageView;
    height->_shieldImageView = v25;

    [(UIImageView *)height->_shieldImageView setAccessibilityIdentifier:@"ShieldImageView"];
    [(UIImageView *)height->_shieldImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)height->_shieldImageView setContentMode:1];
    v27 = +[CPUIBannerViewButton buttonWithChevronImage];
    actionButton = height->_actionButton;
    height->_actionButton = v27;

    [(CPUIBannerViewButton *)height->_actionButton setAccessibilityIdentifier:@"ActionButton"];
    [(CPUIBannerViewButton *)height->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = +[CarDisplayController sharedInstance];
    window = [v29 window];
    windowScene = [window windowScene];
    [windowScene focusSystem];
    v32 = v87 = itemCopy;
    [(CPUIBannerViewButton *)height->_actionButton setSelected:v32 != 0];

    LODWORD(v33) = 1148846080;
    [(CPUIBannerViewButton *)height->_actionButton setContentHuggingPriority:0 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(CPUIBannerViewButton *)height->_actionButton setContentHuggingPriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(CPUIBannerViewButton *)height->_actionButton setContentCompressionResistancePriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(CPUIBannerViewButton *)height->_actionButton setContentCompressionResistancePriority:1 forAxis:v36];
    [(CarManeuverBannerView *)height addSubview:height->_maneuverView];
    [(CarManeuverBannerView *)height addSubview:height->_labelStackView];
    [(CarManeuverBannerView *)height addSubview:height->_shieldImageView];
    [(CarManeuverBannerView *)height addSubview:height->_actionButton];
    trailingAnchor = [(UIStackView *)height->_labelStackView trailingAnchor];
    leadingAnchor = [(UIImageView *)height->_shieldImageView leadingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-12.0];
    labelsToShieldConstraint = height->_labelsToShieldConstraint;
    height->_labelsToShieldConstraint = v39;

    trailingAnchor2 = [(UIStackView *)height->_labelStackView trailingAnchor];
    leadingAnchor2 = [(CPUIBannerViewButton *)height->_actionButton leadingAnchor];
    v43 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2 constant:-12.0];
    labelsToButtonConstraint = height->_labelsToButtonConstraint;
    height->_labelsToButtonConstraint = v43;

    widthAnchor = [(UIImageView *)height->_shieldImageView widthAnchor];
    v46 = [widthAnchor constraintEqualToConstant:0.0];
    shieldWidthConstraint = height->_shieldWidthConstraint;
    height->_shieldWidthConstraint = v46;

    leadingAnchor3 = [(GuidanceManeuverView *)height->_maneuverView leadingAnchor];
    leadingAnchor4 = [(CarManeuverBannerView *)height leadingAnchor];
    v84 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
    v90[0] = v84;
    widthAnchor2 = [(GuidanceManeuverView *)height->_maneuverView widthAnchor];
    v82 = [widthAnchor2 constraintEqualToConstant:33.0];
    v90[1] = v82;
    centerYAnchor = [(GuidanceManeuverView *)height->_maneuverView centerYAnchor];
    centerYAnchor2 = [(CarManeuverBannerView *)height centerYAnchor];
    v79 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v90[2] = v79;
    heightAnchor = [(GuidanceManeuverView *)height->_maneuverView heightAnchor];
    v77 = [heightAnchor constraintEqualToConstant:33.0];
    v90[3] = v77;
    trailingAnchor3 = [(CPUIBannerViewButton *)height->_actionButton trailingAnchor];
    trailingAnchor4 = [(CarManeuverBannerView *)height trailingAnchor];
    v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-12.0];
    v90[4] = v74;
    widthAnchor3 = [(CPUIBannerViewButton *)height->_actionButton widthAnchor];
    v72 = [widthAnchor3 constraintEqualToConstant:29.0];
    v90[5] = v72;
    centerYAnchor3 = [(CPUIBannerViewButton *)height->_actionButton centerYAnchor];
    centerYAnchor4 = [(CarManeuverBannerView *)height centerYAnchor];
    v69 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v90[6] = v69;
    heightAnchor2 = [(CPUIBannerViewButton *)height->_actionButton heightAnchor];
    v67 = [heightAnchor2 constraintEqualToConstant:29.0];
    v90[7] = v67;
    trailingAnchor5 = [(UIImageView *)height->_shieldImageView trailingAnchor];
    leadingAnchor5 = [(CPUIBannerViewButton *)height->_actionButton leadingAnchor];
    v64 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5 constant:-12.0];
    v90[8] = v64;
    v90[9] = height->_shieldWidthConstraint;
    heightAnchor3 = [(UIImageView *)height->_shieldImageView heightAnchor];
    v62 = [heightAnchor3 constraintEqualToConstant:16.0];
    v90[10] = v62;
    centerYAnchor5 = [(UIImageView *)height->_shieldImageView centerYAnchor];
    centerYAnchor6 = [(CarManeuverBannerView *)height centerYAnchor];
    v59 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v90[11] = v59;
    leadingAnchor6 = [(UIStackView *)height->_labelStackView leadingAnchor];
    trailingAnchor6 = [(GuidanceManeuverView *)height->_maneuverView trailingAnchor];
    v48 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor6 constant:12.0];
    v90[12] = v48;
    topAnchor = [(UIStackView *)height->_labelStackView topAnchor];
    topAnchor2 = [(CarManeuverBannerView *)height topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];
    v90[13] = v51;
    bottomAnchor = [(UIStackView *)height->_labelStackView bottomAnchor];
    bottomAnchor2 = [(CarManeuverBannerView *)height bottomAnchor];
    v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.0];
    v90[14] = v54;
    v55 = [NSArray arrayWithObjects:v90 count:15];
    [NSLayoutConstraint activateConstraints:v55];

    itemCopy = v87;
    targetCopy = v88;

    [(CarManeuverBannerView *)height updateFromBannerItem];
  }

  return height;
}

@end