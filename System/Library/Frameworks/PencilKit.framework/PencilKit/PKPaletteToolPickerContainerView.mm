@interface PKPaletteToolPickerContainerView
- (PKPaletteToolPickerContainerView)init;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateUI;
- (void)setCornerLocation:(unint64_t)location;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setScalingFactor:(double)factor;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPaletteToolPickerContainerView

- (PKPaletteToolPickerContainerView)init
{
  v37.receiver = self;
  v37.super_class = PKPaletteToolPickerContainerView;
  v2 = [(PKPaletteToolPickerContainerView *)&v37 init];
  v3 = v2;
  if (v2)
  {
    v2->_scalingFactor = 1.0;
    v4 = objc_alloc_init(PKPaletteToolPickerView);
    toolPickerView = v3->_toolPickerView;
    v3->_toolPickerView = v4;

    [(PKPaletteToolPickerView *)v3->_toolPickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerContainerView *)v3 addSubview:v3->_toolPickerView];
    toolPickerView = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    topAnchor = [toolPickerView topAnchor];
    topAnchor2 = [(PKPaletteToolPickerContainerView *)v3 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    toolPickerViewTopConstraint = v3->_toolPickerViewTopConstraint;
    v3->_toolPickerViewTopConstraint = v9;

    toolPickerView2 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    bottomAnchor = [toolPickerView2 bottomAnchor];
    bottomAnchor2 = [(PKPaletteToolPickerContainerView *)v3 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    toolPickerViewBottomConstraint = v3->_toolPickerViewBottomConstraint;
    v3->_toolPickerViewBottomConstraint = v14;

    toolPickerView3 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    leftAnchor = [toolPickerView3 leftAnchor];
    leftAnchor2 = [(PKPaletteToolPickerContainerView *)v3 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    toolPickerViewLeftConstraint = v3->_toolPickerViewLeftConstraint;
    v3->_toolPickerViewLeftConstraint = v19;

    toolPickerView4 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    rightAnchor = [toolPickerView4 rightAnchor];
    rightAnchor2 = [(PKPaletteToolPickerContainerView *)v3 rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    toolPickerViewRightConstraint = v3->_toolPickerViewRightConstraint;
    v3->_toolPickerViewRightConstraint = v24;

    toolPickerView5 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    centerXAnchor = [toolPickerView5 centerXAnchor];
    centerXAnchor2 = [(PKPaletteToolPickerContainerView *)v3 centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    toolPickerViewCenterXConstraint = v3->_toolPickerViewCenterXConstraint;
    v3->_toolPickerViewCenterXConstraint = v29;

    toolPickerView6 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    centerYAnchor = [toolPickerView6 centerYAnchor];
    centerYAnchor2 = [(PKPaletteToolPickerContainerView *)v3 centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    toolPickerViewCenterYConstraint = v3->_toolPickerViewCenterYConstraint;
    v3->_toolPickerViewCenterYConstraint = v34;

    [(PKPaletteToolPickerContainerView *)v3 _updateUI];
  }

  return v3;
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPickerContainerView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteToolPickerContainerView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)location
{
  if (self->_cornerLocation != location)
  {
    self->_cornerLocation = location;
    [(PKPaletteToolPickerContainerView *)self _updateUI];
  }
}

- (void)_updateUI
{
  v50[6] = *MEMORY[0x1E69E9840];
  [(PKPaletteToolPickerContainerView *)self scalingFactor];
  v4 = v3;
  toolPickerView = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [toolPickerView setScalingFactor:v4];

  edgeLocation = [(PKPaletteToolPickerContainerView *)self edgeLocation];
  toolPickerView2 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [toolPickerView2 setEdgeLocation:edgeLocation];

  cornerLocation = [(PKPaletteToolPickerContainerView *)self cornerLocation];
  toolPickerView3 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [toolPickerView3 setCornerLocation:cornerLocation];

  v10 = MEMORY[0x1E696ACD8];
  toolPickerViewTopConstraint = [(PKPaletteToolPickerContainerView *)self toolPickerViewTopConstraint];
  v50[0] = toolPickerViewTopConstraint;
  toolPickerViewBottomConstraint = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
  v50[1] = toolPickerViewBottomConstraint;
  toolPickerViewLeftConstraint = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  v50[2] = toolPickerViewLeftConstraint;
  toolPickerViewRightConstraint = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  v50[3] = toolPickerViewRightConstraint;
  toolPickerViewCenterXConstraint = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterXConstraint];
  v50[4] = toolPickerViewCenterXConstraint;
  toolPickerViewCenterYConstraint = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterYConstraint];
  v50[5] = toolPickerViewCenterYConstraint;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  [v10 deactivateConstraints:v17];

  toolPickerViewLeftConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  [toolPickerViewLeftConstraint2 setConstant:0.0];

  toolPickerViewRightConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  [toolPickerViewRightConstraint2 setConstant:0.0];

  toolPickerViewBottomConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
  [toolPickerViewBottomConstraint2 setConstant:0.0];

  traitCollection = [(PKPaletteToolPickerContainerView *)self traitCollection];
  window = [(PKPaletteToolPickerContainerView *)self window];
  windowScene = [window windowScene];
  LODWORD(v10) = PKUseCompactSize(traitCollection, windowScene);

  if (!v10)
  {
    [(PKPaletteToolPickerContainerView *)self scalingFactor];
    v33 = v32 * 19.0;
    edgeLocation2 = [(PKPaletteToolPickerContainerView *)self edgeLocation];
    if (edgeLocation2 != 8 && edgeLocation2 != 2)
    {
      [(PKPaletteToolPickerContainerView *)self scalingFactor];
      v44 = v43 * -4.0;
      toolPickerViewCenterXConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterXConstraint];
      [toolPickerViewCenterXConstraint2 setConstant:v44];

      toolPickerViewBottomConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
      [toolPickerViewBottomConstraint3 setConstant:v33];

      v40 = MEMORY[0x1E696ACD8];
      toolPickerViewTopConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewTopConstraint];
      toolPickerViewBottomConstraint4 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
      v47[1] = toolPickerViewBottomConstraint4;
      toolPickerViewCenterXConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterXConstraint];
      v47[2] = toolPickerViewCenterXConstraint3;
      v41 = MEMORY[0x1E695DEC8];
      v42 = v47;
      goto LABEL_12;
    }

    [(PKPaletteToolPickerContainerView *)self scalingFactor];
    v36 = v35 * 0.0;
    toolPickerViewCenterYConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterYConstraint];
    [toolPickerViewCenterYConstraint2 setConstant:v36];

    if ([(PKPaletteToolPickerContainerView *)self edgeLocation]== 2)
    {
      v33 = -v33;
      toolPickerViewLeftConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
    }

    else
    {
      if ([(PKPaletteToolPickerContainerView *)self edgeLocation]!= 8)
      {
LABEL_10:
        v40 = MEMORY[0x1E696ACD8];
        toolPickerViewTopConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
        v48[0] = toolPickerViewTopConstraint2;
        toolPickerViewBottomConstraint4 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
        v48[1] = toolPickerViewBottomConstraint4;
        toolPickerViewCenterXConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterYConstraint];
        v48[2] = toolPickerViewCenterXConstraint3;
        v41 = MEMORY[0x1E695DEC8];
        v42 = v48;
LABEL_12:
        toolPickerViewRightConstraint4 = [v41 arrayWithObjects:v42 count:3];
        [v40 activateConstraints:toolPickerViewRightConstraint4];
        goto LABEL_13;
      }

      toolPickerViewLeftConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
    }

    v39 = toolPickerViewLeftConstraint3;
    [toolPickerViewLeftConstraint3 setConstant:v33];

    goto LABEL_10;
  }

  toolPickerViewLeftConstraint4 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  [toolPickerViewLeftConstraint4 setConstant:0.0];

  toolPickerViewRightConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  [toolPickerViewRightConstraint3 setConstant:-0.0];

  v26 = MEMORY[0x1E696ACD8];
  toolPickerViewTopConstraint2 = [(PKPaletteToolPickerContainerView *)self toolPickerViewTopConstraint];
  v49[0] = toolPickerViewTopConstraint2;
  toolPickerViewBottomConstraint4 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
  v49[1] = toolPickerViewBottomConstraint4;
  toolPickerViewCenterXConstraint3 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  v49[2] = toolPickerViewCenterXConstraint3;
  toolPickerViewRightConstraint4 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  v49[3] = toolPickerViewRightConstraint4;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v26 activateConstraints:v31];

LABEL_13:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  toolPickerView = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [(PKPaletteToolPickerContainerView *)self convertPoint:toolPickerView toView:x, y];
  v10 = v9;
  v12 = v11;

  toolPickerView2 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  v14 = [toolPickerView2 hitTest:eventCopy withEvent:{v10, v12}];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PKPaletteToolPickerContainerView;
    v15 = [(PKPaletteToolPickerContainerView *)&v18 hitTest:eventCopy withEvent:x, y];
  }

  v16 = v15;

  return v16;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteToolPickerContainerView;
  [(PKPaletteToolPickerContainerView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteToolPickerContainerView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteToolPickerContainerView *)self traitCollection];
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

  [(PKPaletteToolPickerContainerView *)self _updateUI];
LABEL_6:
}

@end