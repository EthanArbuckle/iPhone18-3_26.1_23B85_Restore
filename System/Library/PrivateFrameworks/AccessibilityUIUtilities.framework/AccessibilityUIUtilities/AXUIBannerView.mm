@interface AXUIBannerView
- (AXUIBannerView)initWithFrame:(CGRect)frame;
- (NSString)text;
- (void)_updateSecondaryTextVisibility;
- (void)setSecondaryText:(id)text;
- (void)setText:(id)text;
@end

@implementation AXUIBannerView

- (AXUIBannerView)initWithFrame:(CGRect)frame
{
  v120[3] = *MEMORY[0x1E69E9840];
  v116.receiver = self;
  v116.super_class = AXUIBannerView;
  v3 = [(AXUIPlatterContainerView *)&v116 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69DB878];
    primaryTextStyle = [(AXUIPlatterContainerView *)v3 primaryTextStyle];
    v7 = [v5 preferredFontForTextStyle:primaryTextStyle];

    v8 = objc_alloc(MEMORY[0x1E69DD298]);
    v9 = MEMORY[0x1E69DD248];
    platterBlurEffect = [(AXUIPlatterContainerView *)v4 platterBlurEffect];
    v11 = [v9 effectForBlurEffect:platterBlurEffect style:0];
    v12 = [v8 initWithEffect:v11];

    if (_UISolariumEnabled())
    {
      [v12 setEffect:0];
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc(MEMORY[0x1E69DD298]);
    v14 = MEMORY[0x1E69DD248];
    platterBlurEffect2 = [(AXUIPlatterContainerView *)v4 platterBlurEffect];
    v16 = [v14 effectForBlurEffect:platterBlurEffect2 style:1];
    v17 = [v13 initWithEffect:v16];

    if (_UISolariumEnabled())
    {
      [v17 setEffect:0];
    }

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(AXUIPlatterContainerView *)v4 contentView];
    [contentView addSubview:v12];

    contentView2 = [(AXUIPlatterContainerView *)v4 contentView];
    [contentView2 addSubview:v17];

    contentView3 = [v12 contentView];
    contentView4 = [v17 contentView];
    v22 = objc_opt_new();
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v111 = v7;
    [v22 setFont:v7];
    [v22 setNumberOfLines:0];
    [v22 setTextAlignment:1];
    [contentView3 addSubview:v22];
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
    v110 = contentView4;
    [contentView4 addSubview:v25];
    [v25 setHidden:1];
    if (_UISolariumEnabled())
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v25 setTextColor:secondaryLabelColor];
    }

    objc_storeStrong(&v109->_secondaryTextLabel, v25);
    array = [MEMORY[0x1E695DF70] array];
    v29 = MEMORY[0x1E696ACD8];
    contentView5 = [(AXUIPlatterContainerView *)v109 contentView];
    v108 = v12;
    v31 = [v29 ax_constraintsToMakeView:v12 sameDimensionsAsView:contentView5];
    [array addObjectsFromArray:v31];

    v32 = MEMORY[0x1E696ACD8];
    contentView6 = [(AXUIPlatterContainerView *)v109 contentView];
    v107 = v17;
    v34 = [v32 ax_constraintsToMakeView:v17 sameDimensionsAsView:contentView6];
    v35 = array;
    [array addObjectsFromArray:v34];

    v36 = MEMORY[0x1E69DCA40];
    primaryTextStyle2 = [(AXUIPlatterContainerView *)v109 primaryTextStyle];
    v38 = [v36 metricsForTextStyle:primaryTextStyle2];
    [(AXUIBannerView *)v109 defaultTitleToSubtitleVerticalSpacing];
    [v38 scaledValueForValue:?];
    v40 = v39;
    font = [v25 font];
    [font capHeight];
    v43 = v40 + v42;

    v44 = MEMORY[0x1E69DCA40];
    primaryTextStyle3 = [(AXUIPlatterContainerView *)v109 primaryTextStyle];
    v46 = [v44 metricsForTextStyle:primaryTextStyle3];
    [(AXUIBannerView *)v109 defaultPlatterToTextVerticalSpacing];
    [v46 scaledValueForValue:?];
    v48 = v47;

    [v111 capHeight];
    v50 = v48 + v49;
    [(AXUIBannerView *)v109 platterToTextHorizontalSpacing];
    v52 = v51;
    leadingAnchor = [v24 leadingAnchor];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v52];

    trailingAnchor = [contentView3 trailingAnchor];
    trailingAnchor2 = [v24 trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v52];

    v101 = contentView3;
    bottomAnchor = [contentView3 bottomAnchor];
    lastBaselineAnchor = [v24 lastBaselineAnchor];
    v61 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v48];

    v105 = v58;
    v106 = v55;
    v120[0] = v55;
    v120[1] = v58;
    v104 = v61;
    v120[2] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
    v63 = v25;
    text = [v25 text];
    v65 = [text length];

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
    firstBaselineAnchor = [v63 firstBaselineAnchor];
    lastBaselineAnchor2 = [v24 lastBaselineAnchor];
    v100 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:v43];

    leadingAnchor3 = [v63 leadingAnchor];
    leadingAnchor4 = [v110 leadingAnchor];
    v99 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:v52];

    trailingAnchor3 = [v110 trailingAnchor];
    trailingAnchor4 = [v63 trailingAnchor];
    v98 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:v52];

    bottomAnchor2 = [v110 bottomAnchor];
    v102 = v63;
    lastBaselineAnchor3 = [v63 lastBaselineAnchor];
    v97 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor3 constant:v48];

    centerXAnchor = [v63 centerXAnchor];
    centerXAnchor2 = [v110 centerXAnchor];
    v95 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

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
    firstBaselineAnchor2 = [v84 firstBaselineAnchor];
    topAnchor = [contentView3 topAnchor];
    v88 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor constant:v50];
    v117[0] = v88;
    centerXAnchor3 = [v84 centerXAnchor];
    centerXAnchor4 = [contentView3 centerXAnchor];
    v91 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v117[1] = v91;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    [v103 addObjectsFromArray:v92];

    [MEMORY[0x1E696ACD8] activateConstraints:v103];
  }

  return v4;
}

- (void)setText:(id)text
{
  textCopy = text;
  textLabel = [(AXUIBannerView *)self textLabel];
  [textLabel setText:textCopy];
}

- (NSString)text
{
  textLabel = [(AXUIBannerView *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryTextLabel = [(AXUIBannerView *)self secondaryTextLabel];
  [secondaryTextLabel setText:textCopy];

  [(AXUIBannerView *)self _updateSecondaryTextVisibility];
}

- (void)_updateSecondaryTextVisibility
{
  secondaryTextLabel = [(AXUIBannerView *)self secondaryTextLabel];
  text = [secondaryTextLabel text];
  v5 = [text length];

  secondaryTextLabel2 = [(AXUIBannerView *)self secondaryTextLabel];
  isHidden = [secondaryTextLabel2 isHidden];

  if (v5)
  {
    if (!isHidden)
    {
      return;
    }

    secondaryTextLabel3 = [(AXUIBannerView *)self secondaryTextLabel];
    [secondaryTextLabel3 setHidden:0];

    v9 = MEMORY[0x1E696ACD8];
    withSecondaryTextConstraints = [(AXUIBannerView *)self withSecondaryTextConstraints];
    [v9 activateConstraints:?];
  }

  else
  {
    if (isHidden)
    {
      return;
    }

    secondaryTextLabel4 = [(AXUIBannerView *)self secondaryTextLabel];
    [secondaryTextLabel4 setHidden:1];

    v11 = MEMORY[0x1E696ACD8];
    withSecondaryTextConstraints = [(AXUIBannerView *)self withSecondaryTextConstraints];
    [v11 deactivateConstraints:?];
  }
}

@end