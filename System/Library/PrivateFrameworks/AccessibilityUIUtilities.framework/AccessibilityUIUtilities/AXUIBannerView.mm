@interface AXUIBannerView
- (AXUIBannerView)initWithFrame:(CGRect)a3;
- (NSString)text;
- (void)_updateSecondaryTextVisibility;
- (void)setSecondaryText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation AXUIBannerView

- (AXUIBannerView)initWithFrame:(CGRect)a3
{
  v120[3] = *MEMORY[0x1E69E9840];
  v116.receiver = self;
  v116.super_class = AXUIBannerView;
  v3 = [(AXUIPlatterContainerView *)&v116 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = [(AXUIPlatterContainerView *)v3 primaryTextStyle];
    v7 = [v5 preferredFontForTextStyle:v6];

    v8 = objc_alloc(MEMORY[0x1E69DD298]);
    v9 = MEMORY[0x1E69DD248];
    v10 = [(AXUIPlatterContainerView *)v4 platterBlurEffect];
    v11 = [v9 effectForBlurEffect:v10 style:0];
    v12 = [v8 initWithEffect:v11];

    if (_UISolariumEnabled())
    {
      [v12 setEffect:0];
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc(MEMORY[0x1E69DD298]);
    v14 = MEMORY[0x1E69DD248];
    v15 = [(AXUIPlatterContainerView *)v4 platterBlurEffect];
    v16 = [v14 effectForBlurEffect:v15 style:1];
    v17 = [v13 initWithEffect:v16];

    if (_UISolariumEnabled())
    {
      [v17 setEffect:0];
    }

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(AXUIPlatterContainerView *)v4 contentView];
    [v18 addSubview:v12];

    v19 = [(AXUIPlatterContainerView *)v4 contentView];
    [v19 addSubview:v17];

    v20 = [v12 contentView];
    v21 = [v17 contentView];
    v22 = objc_opt_new();
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v111 = v7;
    [v22 setFont:v7];
    [v22 setNumberOfLines:0];
    [v22 setTextAlignment:1];
    [v20 addSubview:v22];
    v109 = v4;
    p_textLabel = &v4->_textLabel;
    v24 = v22;
    objc_storeStrong(p_textLabel, v22);
    v25 = objc_opt_new();
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v25 setFont:v26];

    [v25 setNumberOfLines:0];
    [v25 setTextAlignment:1];
    v110 = v21;
    [v21 addSubview:v25];
    [v25 setHidden:1];
    if (_UISolariumEnabled())
    {
      v27 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v25 setTextColor:v27];
    }

    objc_storeStrong(&v109->_secondaryTextLabel, v25);
    v28 = [MEMORY[0x1E695DF70] array];
    v29 = MEMORY[0x1E696ACD8];
    v30 = [(AXUIPlatterContainerView *)v109 contentView];
    v108 = v12;
    v31 = [v29 ax_constraintsToMakeView:v12 sameDimensionsAsView:v30];
    [v28 addObjectsFromArray:v31];

    v32 = MEMORY[0x1E696ACD8];
    v33 = [(AXUIPlatterContainerView *)v109 contentView];
    v107 = v17;
    v34 = [v32 ax_constraintsToMakeView:v17 sameDimensionsAsView:v33];
    v35 = v28;
    [v28 addObjectsFromArray:v34];

    v36 = MEMORY[0x1E69DCA40];
    v37 = [(AXUIPlatterContainerView *)v109 primaryTextStyle];
    v38 = [v36 metricsForTextStyle:v37];
    [(AXUIBannerView *)v109 defaultTitleToSubtitleVerticalSpacing];
    [v38 scaledValueForValue:?];
    v40 = v39;
    v41 = [v25 font];
    [v41 capHeight];
    v43 = v40 + v42;

    v44 = MEMORY[0x1E69DCA40];
    v45 = [(AXUIPlatterContainerView *)v109 primaryTextStyle];
    v46 = [v44 metricsForTextStyle:v45];
    [(AXUIBannerView *)v109 defaultPlatterToTextVerticalSpacing];
    [v46 scaledValueForValue:?];
    v48 = v47;

    [v111 capHeight];
    v50 = v48 + v49;
    [(AXUIBannerView *)v109 platterToTextHorizontalSpacing];
    v52 = v51;
    v53 = [v24 leadingAnchor];
    v54 = [v20 leadingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:v52];

    v56 = [v20 trailingAnchor];
    v57 = [v24 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:v52];

    v101 = v20;
    v59 = [v20 bottomAnchor];
    v60 = [v24 lastBaselineAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:v48];

    v105 = v58;
    v106 = v55;
    v120[0] = v55;
    v120[1] = v58;
    v104 = v61;
    v120[2] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
    v63 = v25;
    v64 = [v25 text];
    v65 = [v64 length];

    if (v65)
    {
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v66 = v62;
      v67 = v62;
      v68 = [v67 countByEnumeratingWithState:&v112 objects:v119 count:16];
      if (v68)
      {
        v70 = v68;
        v71 = *v113;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v113 != v71)
            {
              objc_enumerationMutation(v67);
            }

            LODWORD(v69) = 1144733696;
            [*(*(&v112 + 1) + 8 * i) setPriority:v69];
          }

          v70 = [v67 countByEnumeratingWithState:&v112 objects:v119 count:16];
        }

        while (v70);
      }

      v62 = v66;
    }

    v103 = v35;
    [v35 addObjectsFromArray:{v62, v62}];
    v73 = [v63 firstBaselineAnchor];
    v74 = [v24 lastBaselineAnchor];
    v100 = [v73 constraintEqualToAnchor:v74 constant:v43];

    v75 = [v63 leadingAnchor];
    v76 = [v110 leadingAnchor];
    v99 = [v75 constraintGreaterThanOrEqualToAnchor:v76 constant:v52];

    v77 = [v110 trailingAnchor];
    v78 = [v63 trailingAnchor];
    v98 = [v77 constraintGreaterThanOrEqualToAnchor:v78 constant:v52];

    v79 = [v110 bottomAnchor];
    v102 = v63;
    v80 = [v63 lastBaselineAnchor];
    v97 = [v79 constraintEqualToAnchor:v80 constant:v48];

    v81 = [v63 centerXAnchor];
    v82 = [v110 centerXAnchor];
    v95 = [v81 constraintEqualToAnchor:v82];

    v118[0] = v100;
    v118[1] = v99;
    v118[2] = v98;
    v118[3] = v97;
    v118[4] = v95;
    v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:5];
    v84 = v24;
    v4 = v109;
    withSecondaryTextConstraints = v109->_withSecondaryTextConstraints;
    v109->_withSecondaryTextConstraints = v83;

    v96 = v84;
    v86 = [v84 firstBaselineAnchor];
    v87 = [v20 topAnchor];
    v88 = [v86 constraintEqualToAnchor:v87 constant:v50];
    v117[0] = v88;
    v89 = [v84 centerXAnchor];
    v90 = [v20 centerXAnchor];
    v91 = [v89 constraintEqualToAnchor:v90];
    v117[1] = v91;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    [v103 addObjectsFromArray:v92];

    [MEMORY[0x1E696ACD8] activateConstraints:v103];
  }

  return v4;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(AXUIBannerView *)self textLabel];
  [v5 setText:v4];
}

- (NSString)text
{
  v2 = [(AXUIBannerView *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSecondaryText:(id)a3
{
  v4 = a3;
  v5 = [(AXUIBannerView *)self secondaryTextLabel];
  [v5 setText:v4];

  [(AXUIBannerView *)self _updateSecondaryTextVisibility];
}

- (void)_updateSecondaryTextVisibility
{
  v3 = [(AXUIBannerView *)self secondaryTextLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  v6 = [(AXUIBannerView *)self secondaryTextLabel];
  v7 = [v6 isHidden];

  if (v5)
  {
    if (!v7)
    {
      return;
    }

    v8 = [(AXUIBannerView *)self secondaryTextLabel];
    [v8 setHidden:0];

    v9 = MEMORY[0x1E696ACD8];
    v12 = [(AXUIBannerView *)self withSecondaryTextConstraints];
    [v9 activateConstraints:?];
  }

  else
  {
    if (v7)
    {
      return;
    }

    v10 = [(AXUIBannerView *)self secondaryTextLabel];
    [v10 setHidden:1];

    v11 = MEMORY[0x1E696ACD8];
    v12 = [(AXUIBannerView *)self withSecondaryTextConstraints];
    [v11 deactivateConstraints:?];
  }
}

@end