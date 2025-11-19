@interface SCATMenuItemCell
+ (CGSize)cellSizeForTitle:(id)a3;
+ (CGSize)maxCellSize;
+ (id)measuringCell;
+ (id)titleToSizeCache;
- (BOOL)_useHighVisibilityImage;
- (BOOL)allowsDwellScanningToAbortAfterTimeout;
- (BOOL)scatPerformAction:(int)a3;
- (NSLayoutConstraint)titleHiddenConstraint;
- (SCATMenuItemCell)initWithFrame:(CGRect)a3;
- (SCATModernMenuItem)menuItem;
- (UIImage)dimmedBorderImage;
- (double)_iconImageCornerRadiusForImageSize:(CGSize)a3;
- (id)accessibilityLabel;
- (id)description;
- (id)scatSpeakableDescription;
- (void)_setBorderDimmed:(BOOL)a3 focused:(BOOL)a4 hidden:(BOOL)a5;
- (void)_setIconDimmed:(BOOL)a3 asDimAsBorder:(BOOL)a4 focused:(BOOL)a5;
- (void)_setupConstraints;
- (void)didUpdateScatMenuItemStyle;
- (void)flash;
- (void)prepareForReuse;
- (void)setIconImage:(id)a3;
- (void)setIconImageAngle:(double)a3;
- (void)setPressedBackgroundImage:(id)a3;
- (void)setShouldIncludeTextLabels:(BOOL)a3;
- (void)setShouldUseActivityIndicator:(BOOL)a3;
- (void)update;
@end

@implementation SCATMenuItemCell

+ (id)titleToSizeCache
{
  if (qword_100218BA0 != -1)
  {
    sub_10012AD98();
  }

  v2 = qword_100218B98;
  if (!qword_100218B98)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_100218B98;
    qword_100218B98 = v3;

    v2 = qword_100218B98;
  }

  return v2;
}

+ (id)measuringCell
{
  if (qword_100218BB0 != -1)
  {
    sub_10012ADAC();
  }

  v3 = qword_100218BA8;

  return v3;
}

+ (CGSize)maxCellSize
{
  v2 = objc_opt_class();

  [v2 cellSizeForTitle:@"a\nb"];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)cellSizeForTitle:(id)a3
{
  v3 = &stru_1001DB590;
  if (a3)
  {
    v3 = a3;
  }

  v4 = v3;
  v5 = [objc_opt_class() titleToSizeCache];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v7 = [objc_opt_class() measuringCell];
    v8 = [v7 titleLabel];
    [v8 setAdjustsFontSizeToFitWidth:0];

    v9 = [v7 titleLabel];
    [v9 setText:v4];

    [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v18[0] = v10;
    v18[1] = v11;
    v6 = [NSValue valueWithBytes:v18 objCType:"{CGSize=dd}"];
    [v5 setObject:v6 forKeyedSubscript:v4];
  }

  [v6 CGSizeValue];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (SCATMenuItemCell)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = SCATMenuItemCell;
  v3 = [(SCATMenuItemCell *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIBlurEffect effectWithStyle:9];
    v5 = [UIVibrancyEffect effectForBlurEffect:v4 style:0];
    iconEffect = v3->_iconEffect;
    v3->_iconEffect = v5;

    if (_UISolariumEnabled())
    {
      v7 = v3->_iconEffect;
      v3->_iconEffect = 0;
    }

    v8 = [[UIVisualEffectView alloc] initWithEffect:v3->_iconEffect];
    iconContainerView = v3->_iconContainerView;
    v3->_iconContainerView = v8;

    [(UIVisualEffectView *)v3->_iconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(SCATMenuItemCell *)v3 contentView];
    v11 = [(SCATMenuItemCell *)v3 iconContainerView];
    [v10 addSubview:v11];

    v12 = objc_alloc_init(SCATMenuLabel);
    [(SCATMenuLabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuItemCell *)v3 setTitleLabel:v12];
    v13 = +[UIColor whiteColor];
    v14 = [(SCATMenuItemCell *)v3 titleLabel];
    [v14 setTextColor:v13];

    v15 = [(SCATMenuItemCell *)v3 iconContainerView];
    v16 = [v15 contentView];
    [v16 addSubview:v12];

    v17 = [UIVisualEffectView alloc];
    v18 = [(SCATMenuItemCell *)v3 iconEffect];
    v19 = [v17 initWithEffect:v18];
    borderContainerView = v3->_borderContainerView;
    v3->_borderContainerView = v19;

    [(UIVisualEffectView *)v3->_borderContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = objc_alloc_init(UIImageView);
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuItemCell *)v3 setBackgroundBorderImageView:v21];
    v22 = [(SCATMenuItemCell *)v3 contentView];
    [v22 addSubview:v3->_borderContainerView];

    v23 = [(UIVisualEffectView *)v3->_borderContainerView contentView];
    v24 = [(SCATMenuItemCell *)v3 backgroundBorderImageView];
    [v23 addSubview:v24];

    v25 = objc_alloc_init(UIImageView);
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAlpha:0.0];
    [(SCATMenuItemCell *)v3 setPressedBackgroundBorderImageView:v25];
    v26 = [(UIVisualEffectView *)v3->_borderContainerView contentView];
    v27 = [(SCATMenuItemCell *)v3 pressedBackgroundBorderImageView];
    [v26 addSubview:v27];

    v28 = objc_alloc_init(UIImageView);
    [v28 setContentMode:1];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuItemCell *)v3 setIconImageView:v28];
    v29 = [(SCATMenuItemCell *)v3 iconContainerView];
    v30 = [v29 contentView];
    [v30 addSubview:v28];

    v31 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setHidden:1];
    [(SCATMenuItemCell *)v3 setActivityIndicatorView:v31];
    v32 = [(SCATMenuItemCell *)v3 iconContainerView];
    v33 = [v32 contentView];
    [v33 addSubview:v31];

    [(SCATMenuItemCell *)v3 _setupConstraints];
    [(SCATMenuItemCell *)v3 didUpdateScatMenuItemStyle];
  }

  return v3;
}

- (void)_setupConstraints
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v8 >= 375.0)
  {
    v9 = 10.0;
  }

  else
  {
    v9 = 5.0;
  }

  +[SCATModernMenuItem imageSize];
  v11 = v10;
  v13 = v12;
  v156 = [(SCATMenuItemCell *)self contentView];
  v154 = [v156 leadingAnchor];
  v155 = [(SCATMenuItemCell *)self iconContainerView];
  v153 = [v155 leadingAnchor];
  v152 = [v154 constraintEqualToAnchor:v153];
  v157[0] = v152;
  v151 = [(SCATMenuItemCell *)self contentView];
  v149 = [v151 trailingAnchor];
  v150 = [(SCATMenuItemCell *)self iconContainerView];
  v148 = [v150 trailingAnchor];
  v147 = [v149 constraintEqualToAnchor:v148];
  v157[1] = v147;
  v146 = [(SCATMenuItemCell *)self contentView];
  v144 = [v146 topAnchor];
  v145 = [(SCATMenuItemCell *)self iconContainerView];
  v143 = [v145 topAnchor];
  v142 = [v144 constraintEqualToAnchor:v143];
  v157[2] = v142;
  v141 = [(SCATMenuItemCell *)self contentView];
  v139 = [v141 bottomAnchor];
  v140 = [(SCATMenuItemCell *)self iconContainerView];
  v138 = [v140 bottomAnchor];
  v137 = [v139 constraintEqualToAnchor:v138];
  v157[3] = v137;
  v136 = [(SCATMenuItemCell *)self borderContainerView];
  v134 = [v136 centerXAnchor];
  v135 = [(SCATMenuItemCell *)self iconContainerView];
  v133 = [v135 centerXAnchor];
  v132 = [v134 constraintEqualToAnchor:v133];
  v157[4] = v132;
  v131 = [(SCATMenuItemCell *)self borderContainerView];
  v129 = [v131 topAnchor];
  v130 = [(SCATMenuItemCell *)self iconContainerView];
  v128 = [v130 topAnchor];
  v127 = [v129 constraintEqualToAnchor:v128];
  v157[5] = v127;
  v126 = [(SCATMenuItemCell *)self borderContainerView];
  v124 = [v126 bottomAnchor];
  v125 = [(SCATMenuItemCell *)self iconContainerView];
  v123 = [v125 bottomAnchor];
  v122 = [v124 constraintEqualToAnchor:v123];
  v157[6] = v122;
  v121 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v120 = [v121 heightAnchor];
  v119 = [v120 constraintEqualToConstant:v13];
  v157[7] = v119;
  v118 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v117 = [v118 widthAnchor];
  v116 = [v117 constraintEqualToConstant:v11];
  v157[8] = v116;
  v115 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v113 = [v115 topAnchor];
  v114 = [(SCATMenuItemCell *)self borderContainerView];
  v112 = [v114 contentView];
  v111 = [v112 topAnchor];
  v110 = [v113 constraintEqualToAnchor:v111];
  v157[9] = v110;
  v109 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  v107 = [v109 centerXAnchor];
  v108 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v106 = [v108 centerXAnchor];
  v105 = [v107 constraintEqualToAnchor:v106];
  v157[10] = v105;
  v104 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  v102 = [v104 centerYAnchor];
  v103 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v101 = [v103 centerYAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v157[11] = v100;
  v99 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  v97 = [v99 heightAnchor];
  v98 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v96 = [v98 heightAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v157[12] = v95;
  v94 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  v92 = [v94 widthAnchor];
  v93 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v91 = [v93 widthAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v157[13] = v90;
  v89 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v87 = [v89 trailingAnchor];
  v88 = [(SCATMenuItemCell *)self borderContainerView];
  v86 = [v88 contentView];
  v85 = [v86 trailingAnchor];
  v84 = [v87 constraintEqualToAnchor:v85];
  v157[14] = v84;
  v83 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v81 = [v83 leadingAnchor];
  v82 = [(SCATMenuItemCell *)self borderContainerView];
  v80 = [v82 contentView];
  v79 = [v80 leadingAnchor];
  v78 = [v81 constraintEqualToAnchor:v79];
  v157[15] = v78;
  v77 = [(SCATMenuItemCell *)self iconImageView];
  v76 = [v77 heightAnchor];
  v75 = [v76 constraintEqualToConstant:v13];
  v157[16] = v75;
  v74 = [(SCATMenuItemCell *)self iconImageView];
  v73 = [v74 widthAnchor];
  v72 = [v73 constraintEqualToConstant:v11];
  v157[17] = v72;
  v71 = [(SCATMenuItemCell *)self iconImageView];
  v69 = [v71 leadingAnchor];
  v70 = [(SCATMenuItemCell *)self iconContainerView];
  v68 = [v70 contentView];
  v67 = [v68 leadingAnchor];
  v66 = [v69 constraintEqualToAnchor:v67 constant:v9];
  v157[18] = v66;
  v65 = [(SCATMenuItemCell *)self iconImageView];
  v63 = [v65 topAnchor];
  v64 = [(SCATMenuItemCell *)self iconContainerView];
  v62 = [v64 contentView];
  v61 = [v62 topAnchor];
  v60 = [v63 constraintEqualToAnchor:v61];
  v157[19] = v60;
  v59 = [(SCATMenuItemCell *)self iconImageView];
  v57 = [v59 trailingAnchor];
  v58 = [(SCATMenuItemCell *)self iconContainerView];
  v56 = [v58 contentView];
  v55 = [v56 trailingAnchor];
  v54 = [v57 constraintEqualToAnchor:v55 constant:-v9];
  v157[20] = v54;
  v53 = [(SCATMenuItemCell *)self titleLabel];
  v51 = [v53 firstBaselineAnchor];
  v52 = [(SCATMenuItemCell *)self iconImageView];
  v50 = [v52 bottomAnchor];
  v49 = [v51 constraintEqualToSystemSpacingBelowAnchor:v50 multiplier:0.8];
  v157[21] = v49;
  v48 = [(SCATMenuItemCell *)self titleLabel];
  v46 = [v48 trailingAnchor];
  v47 = [(SCATMenuItemCell *)self iconContainerView];
  v45 = [v47 contentView];
  v44 = [v45 trailingAnchor];
  v43 = [v46 constraintLessThanOrEqualToAnchor:v44];
  v157[22] = v43;
  v42 = [(SCATMenuItemCell *)self titleLabel];
  v40 = [v42 leadingAnchor];
  v41 = [(SCATMenuItemCell *)self iconContainerView];
  v39 = [v41 contentView];
  v38 = [v39 leadingAnchor];
  v37 = [v40 constraintGreaterThanOrEqualToAnchor:v38];
  v157[23] = v37;
  v36 = [(SCATMenuItemCell *)self titleLabel];
  v34 = [v36 centerXAnchor];
  v35 = [(SCATMenuItemCell *)self iconContainerView];
  v33 = [v35 contentView];
  v32 = [v33 centerXAnchor];
  v31 = [v34 constraintEqualToAnchor:v32];
  v157[24] = v31;
  v30 = [(SCATMenuItemCell *)self titleLabel];
  v28 = [v30 bottomAnchor];
  v29 = [(SCATMenuItemCell *)self iconContainerView];
  v27 = [v29 contentView];
  v26 = [v27 bottomAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v157[25] = v25;
  v24 = [(SCATMenuItemCell *)self activityIndicatorView];
  v14 = [v24 centerXAnchor];
  v15 = [(SCATMenuItemCell *)self iconContainerView];
  v16 = [v15 centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v157[26] = v17;
  v18 = [(SCATMenuItemCell *)self activityIndicatorView];
  v19 = [v18 centerYAnchor];
  v20 = [(SCATMenuItemCell *)self iconContainerView];
  v21 = [v20 centerYAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v157[27] = v22;
  v23 = [NSArray arrayWithObjects:v157 count:28];
  [NSLayoutConstraint activateConstraints:v23];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SCATMenuItemCell *)self menuItem];
  v6 = [v5 title];
  [(SCATMenuItemCell *)self frame];
  v7 = NSStringFromCGRect(v11);
  v8 = [NSString stringWithFormat:@"%@<%p>. title:%@. frame:%@", v4, self, v6, v7];

  return v8;
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  if (self->_iconImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_iconImage, a3);
    v6 = +[SCATStyleProvider sharedStyleProvider];
    v7 = [v6 menuKnockoutColor];
    v8 = [(UIImage *)v9 imageWithTintColor:v7 renderingMode:1];
    [(SCATMenuItemCell *)self setDimmedIconImage:v8];

    [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:0];
    [(SCATMenuItemCell *)self didUpdateScatMenuItemStyle];
    v5 = v9;
  }
}

- (void)setShouldUseActivityIndicator:(BOOL)a3
{
  if (self->_shouldUseActivityIndicator != a3)
  {
    v4 = a3;
    self->_shouldUseActivityIndicator = a3;
    v6 = [(SCATMenuItemCell *)self activityIndicatorView];
    v7 = v6;
    if (v4)
    {
      [v6 startAnimating];
    }

    else
    {
      [v6 stopAnimating];
    }

    v8 = [(SCATMenuItemCell *)self activityIndicatorView];
    [v8 setHidden:!v4];

    [(SCATMenuItemCell *)self didUpdateScatMenuItemStyle];
  }
}

- (void)setIconImageAngle:(double)a3
{
  if (self->_iconImageAngle != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_iconImageAngle = a3;
    CGAffineTransformMakeRotation(&v9, a3);
    v6 = [(SCATMenuItemCell *)self iconImageView];
    v8 = v9;
    [v6 setTransform:&v8];

    v7 = [(SCATMenuItemCell *)self highVisBackgroundAndIconImage];

    if (v7)
    {
      [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:0];
      [(SCATMenuItemCell *)self didUpdateScatMenuItemStyle];
    }
  }
}

- (void)setPressedBackgroundImage:(id)a3
{
  v5 = a3;
  if (self->_pressedBackgroundImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_pressedBackgroundImage, a3);
    v6 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
    [v6 setImage:v7];

    v5 = v7;
  }
}

- (void)setShouldIncludeTextLabels:(BOOL)a3
{
  v3 = a3;
  self->_shouldIncludeTextLabels = a3;
  v4 = [(SCATMenuItemCell *)self titleHiddenConstraint];
  [v4 setActive:!v3];
}

- (NSLayoutConstraint)titleHiddenConstraint
{
  titleHiddenConstraint = self->_titleHiddenConstraint;
  if (!titleHiddenConstraint)
  {
    v4 = [(SCATMenuItemCell *)self titleLabel];
    v5 = [v4 heightAnchor];
    v6 = [v5 constraintEqualToConstant:0.0];
    v7 = self->_titleHiddenConstraint;
    self->_titleHiddenConstraint = v6;

    titleHiddenConstraint = self->_titleHiddenConstraint;
  }

  return titleHiddenConstraint;
}

- (BOOL)_useHighVisibilityImage
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  return v3;
}

- (void)_setBorderDimmed:(BOOL)a3 focused:(BOOL)a4 hidden:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([(SCATMenuItemCell *)self _useHighVisibilityImage]&& v6)
  {
    v9 = [(SCATMenuItemCell *)self highVisBackgroundAndIconImage];

    if (!v9)
    {
      +[SCATModernMenuItem imageSize];
      v11 = v10;
      v13 = v12;
      y = CGRectZero.origin.y;
      v15 = +[UIScreen mainScreen];
      [v15 scale];
      v17 = v16;
      v56.width = v11;
      v56.height = v13;
      UIGraphicsBeginImageContextWithOptions(v56, 0, v17);

      [(SCATMenuItemCell *)self _iconImageCornerRadiusForImageSize:v11, v13];
      v19 = [UIBezierPath bezierPathWithRoundedRect:CGRectZero.origin.x cornerRadius:y, v11, v13, v18];
      v20 = +[UIColor whiteColor];
      [v20 set];

      [v19 fill];
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextTranslateCTM(CurrentContext, v11 * 0.5, v13 * 0.5);
      v22 = UIGraphicsGetCurrentContext();
      [(SCATMenuItemCell *)self iconImageAngle];
      CGContextRotateCTM(v22, v23);
      v24 = UIGraphicsGetCurrentContext();
      CGContextTranslateCTM(v24, -(v11 * 0.5), -(v13 * 0.5));
      v25 = [(SCATMenuItemCell *)self iconImage];
      [v25 size];
      v27 = v26;
      v28 = [(SCATMenuItemCell *)self iconImage];
      [v28 size];
      v30 = v29;

      if (v27 == v30)
      {
        v40 = 0.0;
        v41 = 0.0;
      }

      else
      {
        v31 = [(SCATMenuItemCell *)self iconImage];
        [v31 size];
        v33 = v32;

        v34 = [(SCATMenuItemCell *)self iconImage];
        [v34 size];
        v36 = v35;

        v37 = v13 / v36;
        if (v33 > v36)
        {
          v37 = v11 / v33;
        }

        v38 = v33 * v37;
        v39 = v36 * v37;
        v40 = (v11 - v38) * 0.5;
        v41 = (v13 - v39) * 0.5;
        v11 = v38;
        v13 = v39;
      }

      v50 = [(SCATMenuItemCell *)self iconImage];
      [v50 drawInRect:23 blendMode:v40 alpha:{v41, v11, v13, 1.0}];

      v51 = UIGraphicsGetImageFromCurrentImageContext();
      [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:v51];

      UIGraphicsEndImageContext();
    }

    v49 = [(SCATMenuItemCell *)self highVisBackgroundAndIconImage];
    goto LABEL_21;
  }

  if (v7)
  {
    if (_UISolariumEnabled())
    {
      [(SCATMenuItemCell *)self dimmedBorderImage];
    }

    else
    {
      [(SCATMenuItemCell *)self dimmedBackgroundImage];
    }
    v44 = ;
    v45 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    [v45 setImage:v44];

    v54 = +[SCATStyleProvider sharedStyleProvider];
    [v54 menuKnockoutBorderOpacity];
    v47 = v46;
    v48 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    [v48 setAlpha:v47];

    goto LABEL_23;
  }

  if (!v5)
  {
    if (_UISolariumEnabled())
    {
      [(SCATMenuItemCell *)self dimmedBorderImage];
    }

    else
    {
      [(SCATMenuItemCell *)self defaultBackgroundImage];
    }
    v49 = ;
LABEL_21:
    v52 = v49;
    v53 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    [v53 setImage:v52];

    v42 = [(SCATMenuItemCell *)self backgroundBorderImageView];
    v43 = 1.0;
    goto LABEL_22;
  }

  v42 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  v43 = 0.0;
LABEL_22:
  v54 = v42;
  [v42 setAlpha:v43];
LABEL_23:
}

- (void)_setIconDimmed:(BOOL)a3 asDimAsBorder:(BOOL)a4 focused:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([(SCATMenuItemCell *)self _useHighVisibilityImage]&& v5)
  {
    v9 = [(SCATMenuItemCell *)self iconImageView];
    v22 = v9;
LABEL_5:
    [v9 setHidden:1];
LABEL_6:
    v11 = v22;
LABEL_7:

    return;
  }

  v10 = [(SCATMenuItemCell *)self shouldUseActivityIndicator];
  v9 = [(SCATMenuItemCell *)self iconImageView];
  v22 = v9;
  if (v10)
  {
    goto LABEL_5;
  }

  [v9 setHidden:0];

  if (!v7)
  {
    v18 = [(SCATMenuItemCell *)self iconImage];
    v19 = [(SCATMenuItemCell *)self iconImageView];
    [v19 setImage:v18];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v20 = [(SCATMenuItemCell *)self iconImageView];
      [v20 _setDrawsAsBackdropOverlayWithBlendMode:0];
    }

    v22 = [(SCATMenuItemCell *)self iconImageView];
    [v22 setAlpha:1.0];
    goto LABEL_6;
  }

  v12 = [(SCATMenuItemCell *)self dimmedIconImage];
  v13 = [(SCATMenuItemCell *)self iconImageView];
  [v13 setImage:v12];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v14 = [(SCATMenuItemCell *)self iconImageView];
    v15 = +[SCATStyleProvider sharedStyleProvider];
    [v14 _setDrawsAsBackdropOverlayWithBlendMode:{objc_msgSend(v15, "menuKnockoutBorderOverlayBlendMode")}];
  }

  if (v6)
  {
    v22 = +[SCATStyleProvider sharedStyleProvider];
    [v22 menuKnockoutBorderOpacity];
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  v21 = [(SCATMenuItemCell *)self iconImageView];
  [v21 setAlpha:v17];

  v11 = v22;
  if (v6)
  {
    goto LABEL_7;
  }
}

- (void)didUpdateScatMenuItemStyle
{
  v3 = [(SCATMenuItemCell *)self scatMenuItemStyle];
  v4 = v3;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v5 = self;
      v6 = 1;
      v7 = 0;
LABEL_13:
      [(SCATMenuItemCell *)v5 _setBorderDimmed:v6 focused:0 hidden:v7];
      v11 = self;
      v12 = 0;
      v13 = 0;
      goto LABEL_14;
    }

    if (v3 != 1)
    {
      goto LABEL_16;
    }

    v8 = self;
    v9 = 1;
    v10 = 0;
LABEL_11:
    [(SCATMenuItemCell *)v8 _setBorderDimmed:v9 focused:0 hidden:v10];
    v11 = self;
    v12 = 1;
    v13 = 1;
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      if (v3 != 4)
      {
        goto LABEL_16;
      }

      v5 = self;
      v6 = 0;
      v7 = 1;
      goto LABEL_13;
    }

    v8 = self;
    v9 = 0;
    v10 = 1;
    goto LABEL_11;
  }

  [(SCATMenuItemCell *)self _setBorderDimmed:0 focused:1 hidden:0];
  v11 = self;
  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_15:
  [(SCATMenuItemCell *)v11 _setIconDimmed:v12 asDimAsBorder:v13 focused:v14];
LABEL_16:
  v15 = [(SCATMenuItemCell *)self titleLabel];
  [v15 setScatMenuItemStyle:v4];

  v16 = [(SCATMenuItemCell *)self titleLabel];
  [v16 didUpdateScatMenuItemStyle];
}

- (UIImage)dimmedBorderImage
{
  dimmedBorderImage = self->_dimmedBorderImage;
  if (!dimmedBorderImage)
  {
    +[SCATModernMenuItem imageSize];
    v5 = v4;
    v7 = v6;
    y = CGRectZero.origin.y;
    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v11 = v10;
    v23.width = v5;
    v23.height = v7;
    UIGraphicsBeginImageContextWithOptions(v23, 0, v11);

    v24.origin.x = CGRectZero.origin.x;
    v24.origin.y = y;
    v24.size.width = v5;
    v24.size.height = v7;
    v25 = CGRectInset(v24, 0.5, 0.5);
    x = v25.origin.x;
    v13 = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    [(SCATMenuItemCell *)self _iconImageCornerRadiusForImageSize:v5, v7];
    v17 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:v13, width, height, v16];
    [v17 setLineWidth:1.0];
    v18 = +[UIColor whiteColor];
    [v18 set];

    [v17 stroke];
    v19 = UIGraphicsGetImageFromCurrentImageContext();
    v20 = self->_dimmedBorderImage;
    self->_dimmedBorderImage = v19;

    UIGraphicsEndImageContext();
    dimmedBorderImage = self->_dimmedBorderImage;
  }

  return dimmedBorderImage;
}

- (void)prepareForReuse
{
  [(SCATMenuItemCell *)self setIconImageAngle:0.0];
  [(SCATMenuItemCell *)self setShouldUseActivityIndicator:0];
  [(SCATMenuItemCell *)self setIconImage:0];
  [(SCATMenuItemCell *)self setDimmedIconImage:0];
  [(SCATMenuItemCell *)self setHighVisBackgroundAndIconImage:0];
  v3 = [(SCATMenuItemCell *)self iconImageView];
  [v3 setImage:0];

  [(SCATMenuItemCell *)self setDefaultBackgroundImage:0];
  [(SCATMenuItemCell *)self setPressedBackgroundImage:0];
  [(SCATMenuItemCell *)self setDimmedBackgroundImage:0];
  v4 = [(SCATMenuItemCell *)self backgroundBorderImageView];
  [v4 setImage:0];

  v5 = [(SCATMenuItemCell *)self pressedBackgroundBorderImageView];
  [v5 setImage:0];

  [(SCATMenuItemCell *)self setMenuItem:0];
  v6 = [(SCATMenuItemCell *)self titleLabel];
  [v6 setAdjustsFontSizeToFitWidth:0];

  v7 = [(SCATMenuItemCell *)self titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];

  v8.receiver = self;
  v8.super_class = SCATMenuItemCell;
  [(SCATMenuItemCell *)&v8 prepareForReuse];
}

- (double)_iconImageCornerRadiusForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!_UISolariumEnabled())
  {
    return 15.0;
  }

  v5 = +[SCATStyleProvider sharedStyleProvider];
  [v5 cornerRadiusForSize:{width, height}];
  v7 = v6;

  return v7;
}

- (BOOL)scatPerformAction:(int)a3
{
  if (a3 != 2010)
  {
    return 0;
  }

  v3 = self;
  v4 = [(SCATMenuItemCell *)self menuItem];
  LOBYTE(v3) = [v4 handleActivateWithElement:v3];

  return v3;
}

- (id)scatSpeakableDescription
{
  v2 = [(SCATMenuItemCell *)self menuItem];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(SCATMenuItemCell *)self menuItem];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)allowsDwellScanningToAbortAfterTimeout
{
  v2 = [(SCATMenuItemCell *)self menuItem];
  v3 = [v2 allowsDwellScanningToAbortAfterTimeout];

  return v3;
}

- (void)update
{
  v3 = [(SCATMenuItemCell *)self iconImage];
  v4 = [v3 isSymbolImage];

  if (v4)
  {
    v5 = [(SCATMenuItemCell *)self iconImageView];
    [v5 setContentMode:4];
  }

  if (![(SCATMenuItemCell *)self isFlashing])
  {
    v6 = [(SCATMenuItemCell *)self menuItem];
    -[SCATMenuItemCell setShouldUseActivityIndicator:](self, "setShouldUseActivityIndicator:", [v6 shouldUseActivityIndicator]);

    v7 = [(SCATMenuItemCell *)self menuItem];
    v8 = [v7 resolvedImage];
    [(SCATMenuItemCell *)self setIconImage:v8];

    v9 = [(SCATMenuItemCell *)self titleLabel];
    v10 = [(SCATMenuItemCell *)self menuItem];
    v11 = [v10 title];
    [v9 setText:v11];

    v12 = [(SCATMenuItemCell *)self menuItem];
    -[SCATMenuItemCell setScatMenuItemStyle:](self, "setScatMenuItemStyle:", [v12 style]);

    v13 = [(SCATMenuItemCell *)self menuItem];
    [v13 iconImageAngle];
    [(SCATMenuItemCell *)self setIconImageAngle:?];

    [(SCATMenuItemCell *)self setNeedsDisplay];
  }
}

- (void)flash
{
  [(SCATMenuItemCell *)self setIsFlashing:1];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C2990;
  v5[3] = &unk_1001D3460;
  objc_copyWeak(&v6, &location);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C29EC;
  v3[3] = &unk_1001D4458;
  objc_copyWeak(&v4, &location);
  [UIView animateWithDuration:v5 animations:v3 completion:0.1];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (SCATModernMenuItem)menuItem
{
  WeakRetained = objc_loadWeakRetained(&self->_menuItem);

  return WeakRetained;
}

@end