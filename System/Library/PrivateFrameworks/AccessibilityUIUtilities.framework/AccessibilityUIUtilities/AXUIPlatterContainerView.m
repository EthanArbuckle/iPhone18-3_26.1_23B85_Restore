@interface AXUIPlatterContainerView
- (AXUIPlatterContainerView)initWithFrame:(CGRect)a3;
- (double)platterWidth;
- (void)layoutSubviews;
@end

@implementation AXUIPlatterContainerView

- (AXUIPlatterContainerView)initWithFrame:(CGRect)a3
{
  v107[5] = *MEMORY[0x1E69E9840];
  v105.receiver = self;
  v105.super_class = AXUIPlatterContainerView;
  v3 = [(AXUIPlatterContainerView *)&v105 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!v3)
  {
    return v3;
  }

  v4 = [MEMORY[0x1E69DC730] effectWithStyle:1200];
  if (_UISolariumEnabled())
  {

    v4 = 0;
  }

  v101 = v4;
  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x1E69DCA40];
  v7 = [(AXUIPlatterContainerView *)v3 primaryTextStyle];
  v8 = [v6 metricsForTextStyle:v7];

  v100 = v8;
  [v8 scaledValueForValue:14.0];
  [(UIView *)v5 _setContinuousCornerRadius:?];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  v10 = [v9 CGColor];
  v11 = [(UIView *)v5 layer];
  [v11 setShadowColor:v10];

  v12 = [(UIView *)v5 layer];
  [v12 setShadowOffset:{0.0, 5.0}];

  v13 = [(UIView *)v5 layer];
  LODWORD(v14) = 1045220557;
  [v13 setShadowOpacity:v14];

  v15 = [(UIView *)v5 layer];
  [v15 setShadowRadius:10.0];

  if (_UISolariumEnabled())
  {
    [(UIView *)v5 ax_setWantsGlassAppearance:1];
  }

  [(AXUIPlatterContainerView *)v3 addSubview:v5];
  if ([(AXUIPlatterContainerView *)v3 shouldMimicNotificationBannerTopOffset])
  {
    v16 = [(AXUIPlatterContainerView *)v3 safeAreaLayoutGuide];
  }

  else
  {
    v16 = v3;
  }

  v17 = v16;
  v104 = v3;
  if ([(AXUIPlatterContainerView *)v3 shouldMimicNotificationBannerTopOffset])
  {
    if (MEMORY[0x1C68E7D90]())
    {
      v18 = v5;
      v19 = [getAXUIDisplayManagerClass() sharedDisplayManager];
      v20 = [v19 activeWindows];
      v21 = [v20 allValues];
      v22 = [v21 lastObject];
      v23 = [v22 allValues];
      v24 = [v23 lastObject];

      if (!v24)
      {
        v25 = [getAXUIDisplayManagerClass() sharedDisplayManager];
        v26 = [v25 passiveWindows];
        v27 = [v26 allValues];
        v28 = [v27 lastObject];
        v29 = [v28 allValues];
        v24 = [v29 lastObject];
      }

      [v24 safeAreaInsets];
      if (v30 == 0.0)
      {
        v31 = 10.0;
      }

      else
      {
        v31 = 0.0;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E69DC668] sharedApplication];
      v32 = [v24 delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        v31 = 0.0;
        goto LABEL_25;
      }

      v18 = v5;
      v33 = [MEMORY[0x1E69DC668] sharedApplication];
      v34 = [v33 delegate];
      v35 = [v34 window];
      [v35 safeAreaInsets];
      v31 = 10.0;
      if (v36 != 0.0)
      {
        v37 = [MEMORY[0x1E69DC938] currentDevice];
        v38 = [v37 userInterfaceIdiom];

        if (v38 == 1)
        {
          v31 = 10.0;
        }

        else
        {
          v31 = 0.0;
        }
      }
    }

    v5 = v18;
LABEL_25:

    goto LABEL_26;
  }

  v31 = 68.0;
LABEL_26:
  v103 = v5;
  v97 = [(UIView *)v5 leadingAnchor];
  v95 = [(AXUIPlatterContainerView *)v17 leadingAnchor];
  v93 = [v97 constraintGreaterThanOrEqualToAnchor:v95 constant:32.0];
  v107[0] = v93;
  v91 = [(UIView *)v5 trailingAnchor];
  v89 = [(AXUIPlatterContainerView *)v17 trailingAnchor];
  v87 = [v91 constraintLessThanOrEqualToAnchor:v89 constant:-32.0];
  v107[1] = v87;
  v39 = [(UIView *)v5 topAnchor];
  v40 = [(AXUIPlatterContainerView *)v17 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v31];
  v107[2] = v41;
  v42 = [(UIView *)v5 bottomAnchor];
  v43 = [(AXUIPlatterContainerView *)v17 bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43 constant:-v31];
  v107[3] = v44;
  v45 = [(UIView *)v5 centerXAnchor];
  v99 = v17;
  v46 = [(AXUIPlatterContainerView *)v17 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v107[4] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:5];
  v102 = [v48 mutableCopy];

  v49 = v103;
  v3 = v104;
  [(AXUIPlatterContainerView *)v104 platterWidth];
  if (v50 > 0.0)
  {
    v51 = v50;
    v52 = [(UIView *)v103 widthAnchor];
    v53 = [v52 constraintEqualToConstant:v51];

    LODWORD(v54) = 1144766464;
    [v53 setPriority:v54];
    [v102 addObject:v53];
  }

  v55 = objc_opt_new();
  [(UIView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(AXUIPlatterContainerView *)v104 allowsScrolling])
  {
    v56 = objc_opt_new();
    [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v56 addSubview:v55];
    v57 = [(UIView *)v103 contentView];
    [v57 addSubview:v56];

    v58 = [v56 heightAnchor];
    v59 = [(UIView *)v55 heightAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    LODWORD(v61) = 1132003328;
    v62 = v60;
    v86 = v60;
    [v60 setPriority:v61];
    v98 = [(UIView *)v55 topAnchor];
    v96 = [v56 topAnchor];
    v94 = [v98 constraintEqualToAnchor:v96];
    v106[0] = v94;
    v92 = [(UIView *)v55 bottomAnchor];
    v90 = [v56 bottomAnchor];
    v88 = [v92 constraintEqualToAnchor:v90];
    v106[1] = v88;
    v85 = [(UIView *)v55 leadingAnchor];
    v84 = [v56 leadingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v106[2] = v83;
    v63 = [(UIView *)v55 trailingAnchor];
    v64 = [v56 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    v106[3] = v65;
    v66 = [(UIView *)v55 widthAnchor];
    v67 = [v56 widthAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    v106[4] = v68;
    v106[5] = v62;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:6];
    v70 = v102;
    [v102 addObjectsFromArray:v69];

    v49 = v103;
    v3 = v104;

    v71 = MEMORY[0x1E696ACD8];
    v72 = [(UIView *)v103 contentView];
    v73 = [v71 ax_constraintsToMakeView:v56 sameDimensionsAsView:v72];
    [v102 addObjectsFromArray:v73];

    v74 = v86;
  }

  else
  {
    v75 = [(UIView *)v103 contentView];
    [v75 addSubview:v55];

    v76 = MEMORY[0x1E696ACD8];
    v56 = [(UIView *)v103 contentView];
    v74 = [v76 ax_constraintsToMakeView:v55 sameDimensionsAsView:v56];
    v70 = v102;
    [v102 addObjectsFromArray:v74];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v70];
  platterView = v3->_platterView;
  v3->_platterView = v49;
  v78 = v49;

  contentView = v3->_contentView;
  v3->_contentView = v55;
  v80 = v55;

  platterBlurEffect = v3->_platterBlurEffect;
  v3->_platterBlurEffect = v101;

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AXUIPlatterContainerView;
  [(AXUIPlatterContainerView *)&v8 layoutSubviews];
  if (_UISolariumEnabled())
  {
    [(AXUIPlatterContainerView *)self frame];
    v5 = AXCornerRadiusForBackgroundWithSize(v3, v4);
    v6 = [(AXUIPlatterContainerView *)self platterView];
    v7 = [v6 layer];
    [v7 setCornerRadius:v5];
  }
}

- (double)platterWidth
{
  v2 = MEMORY[0x1E69DCA40];
  v3 = [(AXUIPlatterContainerView *)self primaryTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:316.0];
  v6 = v5;

  return v6;
}

@end