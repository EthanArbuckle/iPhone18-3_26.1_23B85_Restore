@interface AXUIPlatterContainerView
- (AXUIPlatterContainerView)initWithFrame:(CGRect)frame;
- (double)platterWidth;
- (void)layoutSubviews;
@end

@implementation AXUIPlatterContainerView

- (AXUIPlatterContainerView)initWithFrame:(CGRect)frame
{
  v107[5] = *MEMORY[0x1E69E9840];
  v105.receiver = self;
  v105.super_class = AXUIPlatterContainerView;
  v3 = [(AXUIPlatterContainerView *)&v105 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  primaryTextStyle = [(AXUIPlatterContainerView *)v3 primaryTextStyle];
  v8 = [v6 metricsForTextStyle:primaryTextStyle];

  v100 = v8;
  [v8 scaledValueForValue:14.0];
  [(UIView *)v5 _setContinuousCornerRadius:?];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer = [(UIView *)v5 layer];
  [layer setShadowColor:cGColor];

  layer2 = [(UIView *)v5 layer];
  [layer2 setShadowOffset:{0.0, 5.0}];

  layer3 = [(UIView *)v5 layer];
  LODWORD(v14) = 1045220557;
  [layer3 setShadowOpacity:v14];

  layer4 = [(UIView *)v5 layer];
  [layer4 setShadowRadius:10.0];

  if (_UISolariumEnabled())
  {
    [(UIView *)v5 ax_setWantsGlassAppearance:1];
  }

  [(AXUIPlatterContainerView *)v3 addSubview:v5];
  if ([(AXUIPlatterContainerView *)v3 shouldMimicNotificationBannerTopOffset])
  {
    safeAreaLayoutGuide = [(AXUIPlatterContainerView *)v3 safeAreaLayoutGuide];
  }

  else
  {
    safeAreaLayoutGuide = v3;
  }

  v17 = safeAreaLayoutGuide;
  v104 = v3;
  if ([(AXUIPlatterContainerView *)v3 shouldMimicNotificationBannerTopOffset])
  {
    if (MEMORY[0x1C68E7D90]())
    {
      v18 = v5;
      sharedDisplayManager = [getAXUIDisplayManagerClass() sharedDisplayManager];
      activeWindows = [sharedDisplayManager activeWindows];
      allValues = [activeWindows allValues];
      lastObject = [allValues lastObject];
      allValues2 = [lastObject allValues];
      lastObject2 = [allValues2 lastObject];

      if (!lastObject2)
      {
        sharedDisplayManager2 = [getAXUIDisplayManagerClass() sharedDisplayManager];
        passiveWindows = [sharedDisplayManager2 passiveWindows];
        allValues3 = [passiveWindows allValues];
        lastObject3 = [allValues3 lastObject];
        allValues4 = [lastObject3 allValues];
        lastObject2 = [allValues4 lastObject];
      }

      [lastObject2 safeAreaInsets];
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
      lastObject2 = [MEMORY[0x1E69DC668] sharedApplication];
      delegate = [lastObject2 delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        v31 = 0.0;
        goto LABEL_25;
      }

      v18 = v5;
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      delegate2 = [mEMORY[0x1E69DC668] delegate];
      window = [delegate2 window];
      [window safeAreaInsets];
      v31 = 10.0;
      if (v36 != 0.0)
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if (userInterfaceIdiom == 1)
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
  leadingAnchor = [(UIView *)v5 leadingAnchor];
  leadingAnchor2 = [(AXUIPlatterContainerView *)v17 leadingAnchor];
  v93 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:32.0];
  v107[0] = v93;
  trailingAnchor = [(UIView *)v5 trailingAnchor];
  trailingAnchor2 = [(AXUIPlatterContainerView *)v17 trailingAnchor];
  v87 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-32.0];
  v107[1] = v87;
  topAnchor = [(UIView *)v5 topAnchor];
  topAnchor2 = [(AXUIPlatterContainerView *)v17 topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v31];
  v107[2] = v41;
  bottomAnchor = [(UIView *)v5 bottomAnchor];
  bottomAnchor2 = [(AXUIPlatterContainerView *)v17 bottomAnchor];
  v44 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v31];
  v107[3] = v44;
  centerXAnchor = [(UIView *)v5 centerXAnchor];
  v99 = v17;
  centerXAnchor2 = [(AXUIPlatterContainerView *)v17 centerXAnchor];
  v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v107[4] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:5];
  v102 = [v48 mutableCopy];

  v49 = v103;
  v3 = v104;
  [(AXUIPlatterContainerView *)v104 platterWidth];
  if (v50 > 0.0)
  {
    v51 = v50;
    widthAnchor = [(UIView *)v103 widthAnchor];
    v53 = [widthAnchor constraintEqualToConstant:v51];

    LODWORD(v54) = 1144766464;
    [v53 setPriority:v54];
    [v102 addObject:v53];
  }

  v55 = objc_opt_new();
  [(UIView *)v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(AXUIPlatterContainerView *)v104 allowsScrolling])
  {
    contentView4 = objc_opt_new();
    [contentView4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView4 addSubview:v55];
    contentView = [(UIView *)v103 contentView];
    [contentView addSubview:contentView4];

    heightAnchor = [contentView4 heightAnchor];
    heightAnchor2 = [(UIView *)v55 heightAnchor];
    v60 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

    LODWORD(v61) = 1132003328;
    v62 = v60;
    v86 = v60;
    [v60 setPriority:v61];
    topAnchor3 = [(UIView *)v55 topAnchor];
    topAnchor4 = [contentView4 topAnchor];
    v94 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v106[0] = v94;
    bottomAnchor3 = [(UIView *)v55 bottomAnchor];
    bottomAnchor4 = [contentView4 bottomAnchor];
    v88 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v106[1] = v88;
    leadingAnchor3 = [(UIView *)v55 leadingAnchor];
    leadingAnchor4 = [contentView4 leadingAnchor];
    v83 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v106[2] = v83;
    trailingAnchor3 = [(UIView *)v55 trailingAnchor];
    trailingAnchor4 = [contentView4 trailingAnchor];
    v65 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v106[3] = v65;
    widthAnchor2 = [(UIView *)v55 widthAnchor];
    widthAnchor3 = [contentView4 widthAnchor];
    v68 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v106[4] = v68;
    v106[5] = v62;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:6];
    v70 = v102;
    [v102 addObjectsFromArray:v69];

    v49 = v103;
    v3 = v104;

    v71 = MEMORY[0x1E696ACD8];
    contentView2 = [(UIView *)v103 contentView];
    v73 = [v71 ax_constraintsToMakeView:contentView4 sameDimensionsAsView:contentView2];
    [v102 addObjectsFromArray:v73];

    v74 = v86;
  }

  else
  {
    contentView3 = [(UIView *)v103 contentView];
    [contentView3 addSubview:v55];

    v76 = MEMORY[0x1E696ACD8];
    contentView4 = [(UIView *)v103 contentView];
    v74 = [v76 ax_constraintsToMakeView:v55 sameDimensionsAsView:contentView4];
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
    platterView = [(AXUIPlatterContainerView *)self platterView];
    layer = [platterView layer];
    [layer setCornerRadius:v5];
  }
}

- (double)platterWidth
{
  v2 = MEMORY[0x1E69DCA40];
  primaryTextStyle = [(AXUIPlatterContainerView *)self primaryTextStyle];
  v4 = [v2 metricsForTextStyle:primaryTextStyle];

  [v4 scaledValueForValue:316.0];
  v6 = v5;

  return v6;
}

@end