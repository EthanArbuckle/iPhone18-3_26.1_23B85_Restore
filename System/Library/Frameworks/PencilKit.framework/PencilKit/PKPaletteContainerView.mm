@interface PKPaletteContainerView
- (PKPaletteContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_installAccessoryView;
- (void)_installContentView;
- (void)_updateUI;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setScalingFactor:(double)factor;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation PKPaletteContainerView

- (PKPaletteContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPaletteContainerView;
  v3 = [(PKPaletteContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    [(PKPaletteContainerView *)v3 _installAccessoryView];
    [(PKPaletteContainerView *)v4 _installContentView];
    [(PKPaletteContainerView *)v4 _updateUI];
  }

  return v4;
}

- (void)_installAccessoryView
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKAccessoryView);
  accessoryView = self->_accessoryView;
  self->_accessoryView = v3;

  [(PKAccessoryView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKAccessoryView *)self->_accessoryView setUserInteractionEnabled:0];
  [(PKPaletteContainerView *)self addSubview:self->_accessoryView];
  topAnchor = [(PKAccessoryView *)self->_accessoryView topAnchor];
  topAnchor2 = [(PKPaletteContainerView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  accessoryViewTopConstraint = self->_accessoryViewTopConstraint;
  self->_accessoryViewTopConstraint = v7;

  bottomAnchor = [(PKAccessoryView *)self->_accessoryView bottomAnchor];
  bottomAnchor2 = [(PKPaletteContainerView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  accessoryViewBottomConstraint = self->_accessoryViewBottomConstraint;
  self->_accessoryViewBottomConstraint = v11;

  leftAnchor = [(PKAccessoryView *)self->_accessoryView leftAnchor];
  leftAnchor2 = [(PKPaletteContainerView *)self leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  accessoryViewLeftConstraint = self->_accessoryViewLeftConstraint;
  self->_accessoryViewLeftConstraint = v15;

  rightAnchor = [(PKAccessoryView *)self->_accessoryView rightAnchor];
  rightAnchor2 = [(PKPaletteContainerView *)self rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  accessoryViewRightConstraint = self->_accessoryViewRightConstraint;
  self->_accessoryViewRightConstraint = v19;

  widthAnchor = [(PKAccessoryView *)self->_accessoryView widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:19.0];
  accessoryViewWidthConstraint = self->_accessoryViewWidthConstraint;
  self->_accessoryViewWidthConstraint = v22;

  heightAnchor = [(PKAccessoryView *)self->_accessoryView heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:19.0];
  accessoryViewHeightConstraint = self->_accessoryViewHeightConstraint;
  self->_accessoryViewHeightConstraint = v25;

  v27 = MEMORY[0x1E696ACD8];
  v28 = self->_accessoryViewLeftConstraint;
  v31[0] = self->_accessoryViewTopConstraint;
  v31[1] = v28;
  v29 = self->_accessoryViewHeightConstraint;
  v31[2] = self->_accessoryViewRightConstraint;
  v31[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v27 activateConstraints:v30];
}

- (void)_installContentView
{
  v25[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView = self->_contentView;
  self->_contentView = v3;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKPaletteContainerView *)self addSubview:self->_contentView];
  topAnchor = [(UIView *)self->_contentView topAnchor];
  topAnchor2 = [(PKPaletteContainerView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  contentViewTopConstraint = self->_contentViewTopConstraint;
  self->_contentViewTopConstraint = v7;

  bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor2 = [(PKPaletteContainerView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;
  self->_contentViewBottomConstraint = v11;

  leftAnchor = [(UIView *)self->_contentView leftAnchor];
  leftAnchor2 = [(PKPaletteContainerView *)self leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  contentViewLeftConstraint = self->_contentViewLeftConstraint;
  self->_contentViewLeftConstraint = v15;

  rightAnchor = [(UIView *)self->_contentView rightAnchor];
  rightAnchor2 = [(PKPaletteContainerView *)self rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  contentViewRightConstraint = self->_contentViewRightConstraint;
  self->_contentViewRightConstraint = v19;

  v21 = MEMORY[0x1E696ACD8];
  v22 = self->_contentViewBottomConstraint;
  v25[0] = self->_contentViewTopConstraint;
  v25[1] = v22;
  v23 = self->_contentViewRightConstraint;
  v25[2] = self->_contentViewLeftConstraint;
  v25[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v21 activateConstraints:v24];
}

- (void)updateConstraints
{
  accessoryViewHeightConstraint = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
  [accessoryViewHeightConstraint setConstant:0.0];

  accessoryViewWidthConstraint = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
  [accessoryViewWidthConstraint setConstant:0.0];

  contentViewTopConstraint = [(PKPaletteContainerView *)self contentViewTopConstraint];
  [contentViewTopConstraint setConstant:0.0];

  contentViewBottomConstraint = [(PKPaletteContainerView *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setConstant:0.0];

  contentViewLeftConstraint = [(PKPaletteContainerView *)self contentViewLeftConstraint];
  [contentViewLeftConstraint setConstant:0.0];

  contentViewRightConstraint = [(PKPaletteContainerView *)self contentViewRightConstraint];
  [contentViewRightConstraint setConstant:0.0];

  traitCollection = [(PKPaletteContainerView *)self traitCollection];
  window = [(PKPaletteContainerView *)self window];
  windowScene = [window windowScene];
  v12 = PKUseCompactSize(traitCollection, windowScene);

  if (!v12)
  {
    [(PKPaletteContainerView *)self scalingFactor];
    v14 = v13;
    [(PKPaletteContainerView *)self scalingFactor];
    v16 = v15;
    edgeLocation = [(PKPaletteContainerView *)self edgeLocation];
    if (edgeLocation <= 0xF)
    {
      v18 = v14 * 19.0;
      v19 = v16 * 19.0;
      if (((1 << edgeLocation) & 0x8013) != 0)
      {
        contentViewTopConstraint2 = [(PKPaletteContainerView *)self contentViewTopConstraint];
        [contentViewTopConstraint2 setConstant:v19];

        contentViewBottomConstraint2 = [(PKPaletteContainerView *)self contentViewBottomConstraint];
        [contentViewBottomConstraint2 setConstant:-v19];

        accessoryViewHeightConstraint2 = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
LABEL_7:
        v25 = accessoryViewHeightConstraint2;
        [accessoryViewHeightConstraint2 setConstant:v18];

        goto LABEL_8;
      }

      if (((1 << edgeLocation) & 0x104) != 0)
      {
        accessoryViewWidthConstraint2 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
        [accessoryViewWidthConstraint2 setConstant:v18];

        contentViewLeftConstraint2 = [(PKPaletteContainerView *)self contentViewLeftConstraint];
        [contentViewLeftConstraint2 setConstant:v19];

        v18 = -v19;
        accessoryViewHeightConstraint2 = [(PKPaletteContainerView *)self contentViewRightConstraint];
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v26.receiver = self;
  v26.super_class = PKPaletteContainerView;
  [(PKPaletteContainerView *)&v26 updateConstraints];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v35 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  contentView = [(PKPaletteContainerView *)self contentView];
  [(PKPaletteContainerView *)self convertPoint:contentView toView:x, y];
  v10 = v9;
  v12 = v11;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  contentView2 = [(PKPaletteContainerView *)self contentView];
  subviews = [contentView2 subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];

  v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        contentView3 = [(PKPaletteContainerView *)self contentView];
        [contentView3 convertPoint:v20 toView:{v10, v12}];
        v23 = v22;
        v25 = v24;

        v26 = [v20 hitTest:eventCopy withEvent:{v23, v25}];
        if (v26)
        {
          v27 = v26;

          goto LABEL_11;
        }
      }

      v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v29.receiver = self;
  v29.super_class = PKPaletteContainerView;
  v27 = [(PKPaletteContainerView *)&v29 hitTest:eventCopy withEvent:x, y];
LABEL_11:

  return v27;
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteContainerView *)self _updateUI];

    [(PKPaletteContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteContainerView *)self _updateUI];

    [(PKPaletteContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteContainerView;
  [(PKPaletteContainerView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteContainerView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteContainerView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKPaletteContainerView *)self _updateUI];
  [(PKPaletteContainerView *)self setNeedsUpdateConstraints];
LABEL_6:
}

- (void)_updateUI
{
  v33[6] = *MEMORY[0x1E69E9840];
  traitCollection = [(PKPaletteContainerView *)self traitCollection];
  window = [(PKPaletteContainerView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  if (!v6)
  {
    v7 = MEMORY[0x1E696ACD8];
    accessoryViewTopConstraint = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
    v33[0] = accessoryViewTopConstraint;
    accessoryViewLeftConstraint = [(PKPaletteContainerView *)self accessoryViewLeftConstraint];
    v33[1] = accessoryViewLeftConstraint;
    accessoryViewRightConstraint = [(PKPaletteContainerView *)self accessoryViewRightConstraint];
    v33[2] = accessoryViewRightConstraint;
    accessoryViewBottomConstraint = [(PKPaletteContainerView *)self accessoryViewBottomConstraint];
    v33[3] = accessoryViewBottomConstraint;
    accessoryViewHeightConstraint = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
    v33[4] = accessoryViewHeightConstraint;
    accessoryViewWidthConstraint = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
    v33[5] = accessoryViewWidthConstraint;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
    [v7 deactivateConstraints:v14];

    edgeLocation = [(PKPaletteContainerView *)self edgeLocation];
    if (edgeLocation <= 0xF)
    {
      if (((1 << edgeLocation) & 0x8013) != 0)
      {
        v16 = MEMORY[0x1E696ACD8];
        accessoryViewTopConstraint2 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
        v32[0] = accessoryViewTopConstraint2;
        accessoryViewLeftConstraint2 = [(PKPaletteContainerView *)self accessoryViewLeftConstraint];
        v32[1] = accessoryViewLeftConstraint2;
        accessoryViewRightConstraint2 = [(PKPaletteContainerView *)self accessoryViewRightConstraint];
        v32[2] = accessoryViewRightConstraint2;
        accessoryViewHeightConstraint2 = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
        v32[3] = accessoryViewHeightConstraint2;
        v21 = v32;
      }

      else if (edgeLocation == 2)
      {
        v16 = MEMORY[0x1E696ACD8];
        accessoryViewTopConstraint2 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
        v31[0] = accessoryViewTopConstraint2;
        accessoryViewLeftConstraint2 = [(PKPaletteContainerView *)self accessoryViewRightConstraint];
        v31[1] = accessoryViewLeftConstraint2;
        accessoryViewRightConstraint2 = [(PKPaletteContainerView *)self accessoryViewBottomConstraint];
        v31[2] = accessoryViewRightConstraint2;
        accessoryViewHeightConstraint2 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
        v31[3] = accessoryViewHeightConstraint2;
        v21 = v31;
      }

      else
      {
        if (edgeLocation != 8)
        {
          goto LABEL_6;
        }

        v16 = MEMORY[0x1E696ACD8];
        accessoryViewTopConstraint2 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
        accessoryViewLeftConstraint2 = [(PKPaletteContainerView *)self accessoryViewLeftConstraint];
        v30[1] = accessoryViewLeftConstraint2;
        accessoryViewRightConstraint2 = [(PKPaletteContainerView *)self accessoryViewBottomConstraint];
        v30[2] = accessoryViewRightConstraint2;
        accessoryViewHeightConstraint2 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
        v30[3] = accessoryViewHeightConstraint2;
        v21 = v30;
      }

      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      [v16 activateConstraints:v22];
    }
  }

LABEL_6:
  edgeLocation2 = [(PKPaletteContainerView *)self edgeLocation];
  accessoryView = [(PKPaletteContainerView *)self accessoryView];
  [accessoryView setEdgeLocation:edgeLocation2];

  [(PKPaletteContainerView *)self scalingFactor];
  v26 = v25;
  accessoryView2 = [(PKPaletteContainerView *)self accessoryView];
  [accessoryView2 setScalingFactor:v26];

  v28 = PKIsVisionDevice() || v6;
  accessoryView3 = [(PKPaletteContainerView *)self accessoryView];
  [accessoryView3 setHidden:v28];
}

@end