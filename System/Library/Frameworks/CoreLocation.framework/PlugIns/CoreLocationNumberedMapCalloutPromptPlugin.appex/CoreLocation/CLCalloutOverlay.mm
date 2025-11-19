@interface CLCalloutOverlay
- (CGRect)calloutFrame;
- (CGSize)calloutIconSize;
- (CLCalloutOverlay)initWithFrame:(CGRect)a3 title:(id)a4 subtitle:(id)a5 subtitle2:(id)a6 subtitleColor:(id)a7 subtitle2Color:(id)a8 image:(id)a9 imageSize:(CGSize)a10 titleFontSize:(double)a11 titleNumberOfLines:(unsigned int)a12 titleFontWeight:(double)a13 titleLineBreakMode:(int64_t)a14 showBackgroundPlatters:(BOOL)a15;
- (void)layoutSubviews;
- (void)setupBlurView:(id)a3;
- (void)setupCalloutIcon:(id)a3 withImage:(id)a4;
- (void)setupImageView:(id)a3 withImage:(id)a4 forImageSize:(CGSize)a5 withBorderWidth:(double)a6;
- (void)setupPillView:(id)a3;
- (void)setupPlatters;
- (void)setupTitleLabel:(id)a3 withText:(id)a4 withTextColor:(id)a5 numberOfLines:(unsigned int)a6 withLineBreakMode:(int64_t)a7 withFontWeight:(double)a8 withFontSize:(double)a9;
@end

@implementation CLCalloutOverlay

- (CLCalloutOverlay)initWithFrame:(CGRect)a3 title:(id)a4 subtitle:(id)a5 subtitle2:(id)a6 subtitleColor:(id)a7 subtitle2Color:(id)a8 image:(id)a9 imageSize:(CGSize)a10 titleFontSize:(double)a11 titleNumberOfLines:(unsigned int)a12 titleFontWeight:(double)a13 titleLineBreakMode:(int64_t)a14 showBackgroundPlatters:(BOOL)a15
{
  height = a10.height;
  width = a10.width;
  v24 = a3.size.height;
  v25 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v174 = a4;
  v177 = a5;
  v176 = a6;
  v172 = a7;
  v173 = a8;
  v175 = a9;
  v182.receiver = self;
  v182.super_class = CLCalloutOverlay;
  v29 = [(CLCalloutOverlay *)&v182 initWithAnnotation:0 reuseIdentifier:@"CalloutOverlay"];
  v30 = v29;
  if (v29)
  {
    [(CLCalloutOverlay *)v29 setFrame:x, y, v25, v24];
    v31 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CLCalloutOverlay *)v30 setMainPlatterView:v31];

    [(CLCalloutOverlay *)v30 setShowBackgroundPlatters:a15];
    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CLCalloutOverlay *)v30 setTitleLabel:v32];

    [(CLCalloutOverlay *)v30 setSubtitleLabel:0];
    [(CLCalloutOverlay *)v30 setSecondSubtitleLabel:0];
    v171 = +[UIColor labelColor];
    [(CLCalloutOverlay *)v30 setCalloutIconSize:width, height];
    v33 = [(CLCalloutOverlay *)v30 titleLabel];
    [(CLCalloutOverlay *)v30 setupTitleLabel:v33 withText:v174 withTextColor:v171 numberOfLines:a12 withLineBreakMode:a14 withFontWeight:a13 withFontSize:a11];

    if (v177)
    {
      v34 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLCalloutOverlay *)v30 setSubtitleLabel:v34];

      v35 = [(CLCalloutOverlay *)v30 subtitleLabel];
      [(CLCalloutOverlay *)v30 setupTitleLabel:v35 withText:v177 withTextColor:v172 numberOfLines:a12 withLineBreakMode:a14 withFontWeight:a13 withFontSize:a11];

      v36 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v37 = [(CLCalloutOverlay *)v30 subtitleLabel];
      [v36 addSubview:v37];
    }

    if (v176)
    {
      v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLCalloutOverlay *)v30 setSecondSubtitleLabel:v38];

      v39 = [(CLCalloutOverlay *)v30 secondSubtitleLabel];
      [(CLCalloutOverlay *)v30 setupTitleLabel:v39 withText:v176 withTextColor:v173 numberOfLines:a12 withLineBreakMode:a14 withFontWeight:a13 withFontSize:a11];

      v40 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v41 = [(CLCalloutOverlay *)v30 secondSubtitleLabel];
      [v40 addSubview:v41];
    }

    v42 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v43 = [(CLCalloutOverlay *)v30 titleLabel];
    [v42 addSubview:v43];

    v44 = [(CLCalloutOverlay *)v30 mainPlatterView];
    [(CLCalloutOverlay *)v30 addSubview:v44];

    v45 = objc_alloc_init(UIImageView);
    [(CLCalloutOverlay *)v30 setCalloutImageView:v45];

    v46 = [(CLCalloutOverlay *)v30 calloutImageView];
    [(CLCalloutOverlay *)v30 setupCalloutIcon:v46 withImage:v175];

    v47 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v48 = [(CLCalloutOverlay *)v30 calloutImageView];
    [v47 addSubview:v48];

    v163 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v180 = [v163 centerXAnchor];
    v161 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    v159 = [v161 centerXAnchor];
    v157 = [v180 constraintEqualToAnchor:?];
    v184[0] = v157;
    v155 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v178 = [v155 centerYAnchor];
    v153 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    v151 = [v153 centerYAnchor];
    v149 = [v178 constraintEqualToAnchor:?];
    v184[1] = v149;
    v147 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v169 = [v147 widthAnchor];
    v145 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    v143 = [v145 widthAnchor];
    v141 = [v169 constraintGreaterThanOrEqualToAnchor:0.4 multiplier:?];
    v184[2] = v141;
    v139 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v167 = [v139 widthAnchor];
    v137 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    v135 = [v137 widthAnchor];
    v133 = [v167 constraintLessThanOrEqualToAnchor:0.6 multiplier:?];
    v184[3] = v133;
    v131 = [(CLCalloutOverlay *)v30 calloutImageView];
    v129 = [v131 widthAnchor];
    v127 = [v129 constraintEqualToConstant:width];
    v184[4] = v127;
    v125 = [(CLCalloutOverlay *)v30 calloutImageView];
    v123 = [v125 heightAnchor];
    v121 = [v123 constraintEqualToConstant:height];
    v184[5] = v121;
    v119 = [(CLCalloutOverlay *)v30 calloutImageView];
    v165 = [v119 topAnchor];
    v117 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v49 = [v117 topAnchor];
    v50 = [v165 constraintEqualToAnchor:v49 constant:5.0];
    v184[6] = v50;
    v51 = [(CLCalloutOverlay *)v30 calloutImageView];
    v52 = [v51 centerXAnchor];
    v53 = [(CLCalloutOverlay *)v30 mainPlatterView];
    v54 = [v53 centerXAnchor];
    v55 = [v52 constraintEqualToAnchor:v54];
    v184[7] = v55;
    v56 = [NSArray arrayWithObjects:v184 count:8];
    [NSLayoutConstraint activateConstraints:v56];

    if ([(CLCalloutOverlay *)v30 showBackgroundPlatters])
    {
      v170 = [UIBlurEffect effectWithStyle:1];
      v181 = [[UIVisualEffectView alloc] initWithEffect:v170];
      v179 = [[UIVisualEffectView alloc] initWithEffect:v170];
      [(CLCalloutOverlay *)v30 setupBlurView:v181];
      v57 = [v181 layer];
      LODWORD(v58) = 1.0;
      [v57 setOpacity:v58];

      [(CLCalloutOverlay *)v30 addSubview:v181];
      [(CLCalloutOverlay *)v30 setupBlurView:v179];
      v59 = [v179 layer];
      LODWORD(v60) = 1.0;
      [v59 setOpacity:v60];

      [(CLCalloutOverlay *)v30 addSubview:v179];
      v61 = objc_alloc_init(UIView);
      [(CLCalloutOverlay *)v30 setBackgroundPlatter1:v61];

      v62 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      [(CLCalloutOverlay *)v30 addSubview:v62];

      v63 = objc_alloc_init(UIView);
      [(CLCalloutOverlay *)v30 setBackgroundPlatter2:v63];

      v64 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      [(CLCalloutOverlay *)v30 addSubview:v64];

      [(CLCalloutOverlay *)v30 setupPlatters];
      v138 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      v168 = [v138 heightAnchor];
      v136 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v134 = [v136 heightAnchor];
      v132 = [v168 constraintEqualToAnchor:?];
      v183[0] = v132;
      v130 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      v166 = [v130 widthAnchor];
      v128 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v126 = [v128 widthAnchor];
      v124 = [v166 constraintEqualToAnchor:0.9 multiplier:?];
      v183[1] = v124;
      v122 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      v164 = [v122 centerXAnchor];
      v120 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      v118 = [v120 centerXAnchor];
      v116 = [v164 constraintEqualToAnchor:?];
      v183[2] = v116;
      v115 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      v162 = [v115 topAnchor];
      v114 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v113 = [v114 topAnchor];
      v112 = [v162 constraintEqualToAnchor:5.0 constant:?];
      v183[3] = v112;
      v111 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      v160 = [v111 heightAnchor];
      v110 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v109 = [v110 heightAnchor];
      v108 = [v160 constraintEqualToAnchor:?];
      v183[4] = v108;
      v107 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      v158 = [v107 widthAnchor];
      v106 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v105 = [v106 widthAnchor];
      v104 = [v158 constraintEqualToAnchor:0.8 multiplier:?];
      v183[5] = v104;
      v103 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      v156 = [v103 centerXAnchor];
      v102 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      v101 = [v102 centerXAnchor];
      v100 = [v156 constraintEqualToAnchor:?];
      v183[6] = v100;
      v99 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      v154 = [v99 topAnchor];
      v98 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v97 = [v98 topAnchor];
      v96 = [v154 constraintEqualToAnchor:10.0 constant:?];
      v183[7] = v96;
      v152 = [v181 heightAnchor];
      v95 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v94 = [v95 heightAnchor];
      v93 = [v152 constraintEqualToAnchor:?];
      v183[8] = v93;
      v150 = [v181 widthAnchor];
      v92 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v91 = [v92 widthAnchor];
      v90 = [v150 constraintEqualToAnchor:0.9 multiplier:?];
      v183[9] = v90;
      v148 = [v181 centerXAnchor];
      v89 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      v88 = [v89 centerXAnchor];
      v87 = [v148 constraintEqualToAnchor:?];
      v183[10] = v87;
      v146 = [v181 topAnchor];
      v86 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v85 = [v86 topAnchor];
      v84 = [v146 constraintEqualToAnchor:5.0 constant:?];
      v183[11] = v84;
      v144 = [v179 heightAnchor];
      v83 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v82 = [v83 heightAnchor];
      v81 = [v144 constraintEqualToAnchor:?];
      v183[12] = v81;
      v142 = [v179 widthAnchor];
      v80 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v79 = [v80 widthAnchor];
      v78 = [v142 constraintEqualToAnchor:0.8 multiplier:?];
      v183[13] = v78;
      v140 = [v179 centerXAnchor];
      v65 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      v66 = [v65 centerXAnchor];
      v67 = [v140 constraintEqualToAnchor:v66];
      v183[14] = v67;
      v68 = [v179 topAnchor];
      v69 = [(CLCalloutOverlay *)v30 mainPlatterView];
      v70 = [v69 topAnchor];
      v71 = [v68 constraintEqualToAnchor:v70 constant:10.0];
      v183[15] = v71;
      v72 = [NSArray arrayWithObjects:v183 count:16];
      [NSLayoutConstraint activateConstraints:v72];

      [(CLCalloutOverlay *)v30 bringSubviewToFront:v179];
      v73 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      [(CLCalloutOverlay *)v30 bringSubviewToFront:v73];

      [(CLCalloutOverlay *)v30 bringSubviewToFront:v181];
      v74 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      [(CLCalloutOverlay *)v30 bringSubviewToFront:v74];
    }

    v75 = [(CLCalloutOverlay *)v30 mainPlatterView];
    [(CLCalloutOverlay *)v30 bringSubviewToFront:v75];

    v76 = [(CLCalloutOverlay *)v30 calloutImageView];
    [(CLCalloutOverlay *)v30 bringSubviewToFront:v76];
  }

  return v30;
}

- (void)setupPlatters
{
  v5 = [(CLCalloutOverlay *)self mainPlatterView];
  [(CLCalloutOverlay *)self setupPillView:?];

  if ([(CLCalloutOverlay *)self showBackgroundPlatters])
  {
    v6 = [(CLCalloutOverlay *)self backgroundPlatter1];
    [(CLCalloutOverlay *)self setupPillView:?];

    v7 = [UIColor colorNamed:@"UpperPlatterBackgroundColor"];
    v3 = [(CLCalloutOverlay *)self backgroundPlatter1];
    [v3 setBackgroundColor:v7];

    v8 = [(CLCalloutOverlay *)self backgroundPlatter2];
    [(CLCalloutOverlay *)self setupPillView:?];

    v9 = [UIColor colorNamed:@"LowerPlatterBackgroundColor"];
    v4 = [(CLCalloutOverlay *)self backgroundPlatter2];
    [v4 setBackgroundColor:v9];
  }
}

- (void)setupPillView:(id)a3
{
  v16 = a3;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [UIColor colorNamed:@"PillBackgroundColor"];
  v4 = [v3 cgColor];
  v5 = [v16 layer];
  [v5 setBackgroundColor:v4];

  v6 = [v3 cgColor];
  v7 = [v16 layer];
  [v7 setBorderColor:v6];

  v8 = [v16 layer];
  [v8 setCornerRadius:10.0];

  v9 = [UIColor colorNamed:@"PillShadowColor"];
  v10 = [v9 cgColor];
  v11 = [v16 layer];
  [v11 setShadowColor:v10];

  v12 = [v16 layer];
  [v12 setShadowOffset:{0.0, 0.0}];

  v13 = [v16 layer];
  [v13 setShadowRadius:2.0];

  v14 = [v16 layer];
  LODWORD(v15) = 1.0;
  [v14 setShadowOpacity:v15];
}

- (void)setupTitleLabel:(id)a3 withText:(id)a4 withTextColor:(id)a5 numberOfLines:(unsigned int)a6 withLineBreakMode:(int64_t)a7 withFontWeight:(double)a8 withFontSize:(double)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [NSAttributedString alloc];
  v23 = NSKernAttributeName;
  v24 = &off_1000106A8;
  v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v20 = [v18 initWithString:v16 attributes:v19];

  [v15 setTextColor:v17];
  [v15 setAttributedText:v20];
  [v15 setTextAlignment:1];
  v21 = [UIFontDescriptor _preferredFontDescriptorWithTextStyle:UIFontTextStyleBody design:UIFontDescriptorSystemDesignDefault weight:a8];
  v22 = [UIFont fontWithDescriptor:v21 size:a9];
  [v15 setFont:v22];

  [v15 setNumberOfLines:a6];
  [v15 setLineBreakMode:a7];
}

- (void)setupCalloutIcon:(id)a3 withImage:(id)a4
{
  v6 = a3;
  v5 = a4;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setImage:v5];
  [v6 setContentMode:1];
  [v6 setClipsToBounds:1];
}

- (void)setupImageView:(id)a3 withImage:(id)a4 forImageSize:(CGSize)a5 withBorderWidth:(double)a6
{
  height = a5.height;
  v15 = a3;
  v9 = a4;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setImage:v9];
  v10 = [v15 layer];
  [v10 setBorderWidth:a6];

  v11 = +[UIColor whiteColor];
  v12 = [v11 CGColor];
  v13 = [v15 layer];
  [v13 setBorderColor:v12];

  v14 = [v15 layer];
  [v14 setCornerRadius:height * 0.5];

  [v15 setContentMode:1];
  [v15 setClipsToBounds:1];
}

- (void)setupBlurView:(id)a3
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v4 layer];
  [v3 setCornerRadius:10.0];

  [v4 setClipsToBounds:1];
}

- (void)layoutSubviews
{
  v3 = [(CLCalloutOverlay *)self mainPlatterView];

  if (v3)
  {
    v4 = [(CLCalloutOverlay *)self titleLabel];
    [v4 intrinsicContentSize];
    v6 = v5;

    [(CLCalloutOverlay *)self calloutIconSize];
    v8 = v7;
    v69 = [(CLCalloutOverlay *)self titleLabel];
    v66 = [v69 topAnchor];
    v60 = [(CLCalloutOverlay *)self calloutImageView];
    v57 = [v60 bottomAnchor];
    v54 = [v66 constraintEqualToAnchor:0.0 constant:?];
    v76[0] = v54;
    v51 = [(CLCalloutOverlay *)self titleLabel];
    v63 = [v51 leadingAnchor];
    v48 = [(CLCalloutOverlay *)self mainPlatterView];
    v9 = [v48 leadingAnchor];
    v10 = [v63 constraintEqualToAnchor:v9 constant:7.5];
    v76[1] = v10;
    v11 = [(CLCalloutOverlay *)self titleLabel];
    v12 = [v11 trailingAnchor];
    v13 = [(CLCalloutOverlay *)self mainPlatterView];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-7.5];
    v76[2] = v15;
    v16 = [NSArray arrayWithObjects:v76 count:3];
    [NSLayoutConstraint activateConstraints:v16];

    v17 = [(CLCalloutOverlay *)self subtitleLabel];
    LOBYTE(v10) = v17 == 0;

    v18 = v6 + 5.0 + 8.0 + v8;
    if ((v10 & 1) == 0)
    {
      v19 = [(CLCalloutOverlay *)self subtitleLabel];
      [v19 intrinsicContentSize];
      v21 = v20;

      v70 = [(CLCalloutOverlay *)self subtitleLabel];
      v67 = [v70 topAnchor];
      v61 = [(CLCalloutOverlay *)self titleLabel];
      v58 = [v61 bottomAnchor];
      v55 = [v67 constraintEqualToAnchor:0.0 constant:?];
      v75[0] = v55;
      v52 = [(CLCalloutOverlay *)self subtitleLabel];
      v64 = [v52 leadingAnchor];
      v49 = [(CLCalloutOverlay *)self mainPlatterView];
      v22 = [v49 leadingAnchor];
      v23 = [v64 constraintEqualToAnchor:v22 constant:7.5];
      v75[1] = v23;
      v24 = [(CLCalloutOverlay *)self subtitleLabel];
      v25 = [v24 trailingAnchor];
      v26 = [(CLCalloutOverlay *)self mainPlatterView];
      v27 = [v26 trailingAnchor];
      v28 = [v25 constraintEqualToAnchor:v27 constant:-7.5];
      v75[2] = v28;
      v29 = [NSArray arrayWithObjects:v75 count:3];
      [NSLayoutConstraint activateConstraints:v29];

      v18 = v18 + v21;
    }

    v30 = [(CLCalloutOverlay *)self secondSubtitleLabel];
    v31 = v30 == 0;

    if (!v31)
    {
      v32 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      [v32 intrinsicContentSize];
      v34 = v33;

      v71 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      v68 = [v71 topAnchor];
      v62 = [(CLCalloutOverlay *)self subtitleLabel];
      v59 = [v62 bottomAnchor];
      v56 = [v68 constraintEqualToAnchor:0.0 constant:?];
      v74[0] = v56;
      v53 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      v65 = [v53 leadingAnchor];
      v50 = [(CLCalloutOverlay *)self mainPlatterView];
      v35 = [v50 leadingAnchor];
      v36 = [v65 constraintEqualToAnchor:v35 constant:7.5];
      v74[1] = v36;
      v37 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      v38 = [v37 trailingAnchor];
      v39 = [(CLCalloutOverlay *)self mainPlatterView];
      v40 = [v39 trailingAnchor];
      v41 = [v38 constraintEqualToAnchor:v40 constant:-7.5];
      v74[2] = v41;
      v42 = [NSArray arrayWithObjects:v74 count:3];
      [NSLayoutConstraint activateConstraints:v42];

      v18 = v18 + v34;
    }

    v43 = [(CLCalloutOverlay *)self mainPlatterView];
    v44 = [v43 heightAnchor];
    v45 = [v44 constraintEqualToConstant:v18];
    v73 = v45;
    v46 = [NSArray arrayWithObjects:&v73 count:1];
    [NSLayoutConstraint activateConstraints:v46];

    v47 = [(CLCalloutOverlay *)self mainPlatterView];
    [v47 setFrame:{0.0, 0.0, 0.0, v18}];

    [(CLCalloutOverlay *)self setupPlatters];
  }

  v72.receiver = self;
  v72.super_class = CLCalloutOverlay;
  [(CLCalloutOverlay *)&v72 layoutSubviews];
}

- (CGRect)calloutFrame
{
  v2 = [(CLCalloutOverlay *)self mainPlatterView];
  [v2 visibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)calloutIconSize
{
  width = self->_calloutIconSize.width;
  height = self->_calloutIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end