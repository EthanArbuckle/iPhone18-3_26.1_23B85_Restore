@interface PKPaletteToolPickerContainerView
- (PKPaletteToolPickerContainerView)init;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateUI;
- (void)setCornerLocation:(unint64_t)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setScalingFactor:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
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
    v6 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    v7 = [v6 topAnchor];
    v8 = [(PKPaletteToolPickerContainerView *)v3 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    toolPickerViewTopConstraint = v3->_toolPickerViewTopConstraint;
    v3->_toolPickerViewTopConstraint = v9;

    v11 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    v12 = [v11 bottomAnchor];
    v13 = [(PKPaletteToolPickerContainerView *)v3 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    toolPickerViewBottomConstraint = v3->_toolPickerViewBottomConstraint;
    v3->_toolPickerViewBottomConstraint = v14;

    v16 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    v17 = [v16 leftAnchor];
    v18 = [(PKPaletteToolPickerContainerView *)v3 leftAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    toolPickerViewLeftConstraint = v3->_toolPickerViewLeftConstraint;
    v3->_toolPickerViewLeftConstraint = v19;

    v21 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    v22 = [v21 rightAnchor];
    v23 = [(PKPaletteToolPickerContainerView *)v3 rightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    toolPickerViewRightConstraint = v3->_toolPickerViewRightConstraint;
    v3->_toolPickerViewRightConstraint = v24;

    v26 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    v27 = [v26 centerXAnchor];
    v28 = [(PKPaletteToolPickerContainerView *)v3 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    toolPickerViewCenterXConstraint = v3->_toolPickerViewCenterXConstraint;
    v3->_toolPickerViewCenterXConstraint = v29;

    v31 = [(PKPaletteToolPickerContainerView *)v3 toolPickerView];
    v32 = [v31 centerYAnchor];
    v33 = [(PKPaletteToolPickerContainerView *)v3 centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    toolPickerViewCenterYConstraint = v3->_toolPickerViewCenterYConstraint;
    v3->_toolPickerViewCenterYConstraint = v34;

    [(PKPaletteToolPickerContainerView *)v3 _updateUI];
  }

  return v3;
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteToolPickerContainerView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteToolPickerContainerView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)a3
{
  if (self->_cornerLocation != a3)
  {
    self->_cornerLocation = a3;
    [(PKPaletteToolPickerContainerView *)self _updateUI];
  }
}

- (void)_updateUI
{
  v50[6] = *MEMORY[0x1E69E9840];
  [(PKPaletteToolPickerContainerView *)self scalingFactor];
  v4 = v3;
  v5 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [v5 setScalingFactor:v4];

  v6 = [(PKPaletteToolPickerContainerView *)self edgeLocation];
  v7 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [v7 setEdgeLocation:v6];

  v8 = [(PKPaletteToolPickerContainerView *)self cornerLocation];
  v9 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [v9 setCornerLocation:v8];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(PKPaletteToolPickerContainerView *)self toolPickerViewTopConstraint];
  v50[0] = v11;
  v12 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
  v50[1] = v12;
  v13 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  v50[2] = v13;
  v14 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  v50[3] = v14;
  v15 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterXConstraint];
  v50[4] = v15;
  v16 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterYConstraint];
  v50[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  [v10 deactivateConstraints:v17];

  v18 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  [v18 setConstant:0.0];

  v19 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  [v19 setConstant:0.0];

  v20 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
  [v20 setConstant:0.0];

  v21 = [(PKPaletteToolPickerContainerView *)self traitCollection];
  v22 = [(PKPaletteToolPickerContainerView *)self window];
  v23 = [v22 windowScene];
  LODWORD(v10) = PKUseCompactSize(v21, v23);

  if (!v10)
  {
    [(PKPaletteToolPickerContainerView *)self scalingFactor];
    v33 = v32 * 19.0;
    v34 = [(PKPaletteToolPickerContainerView *)self edgeLocation];
    if (v34 != 8 && v34 != 2)
    {
      [(PKPaletteToolPickerContainerView *)self scalingFactor];
      v44 = v43 * -4.0;
      v45 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterXConstraint];
      [v45 setConstant:v44];

      v46 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
      [v46 setConstant:v33];

      v40 = MEMORY[0x1E696ACD8];
      v27 = [(PKPaletteToolPickerContainerView *)self toolPickerViewTopConstraint];
      v28 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
      v47[1] = v28;
      v29 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterXConstraint];
      v47[2] = v29;
      v41 = MEMORY[0x1E695DEC8];
      v42 = v47;
      goto LABEL_12;
    }

    [(PKPaletteToolPickerContainerView *)self scalingFactor];
    v36 = v35 * 0.0;
    v37 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterYConstraint];
    [v37 setConstant:v36];

    if ([(PKPaletteToolPickerContainerView *)self edgeLocation]== 2)
    {
      v33 = -v33;
      v38 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
    }

    else
    {
      if ([(PKPaletteToolPickerContainerView *)self edgeLocation]!= 8)
      {
LABEL_10:
        v40 = MEMORY[0x1E696ACD8];
        v27 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
        v48[0] = v27;
        v28 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
        v48[1] = v28;
        v29 = [(PKPaletteToolPickerContainerView *)self toolPickerViewCenterYConstraint];
        v48[2] = v29;
        v41 = MEMORY[0x1E695DEC8];
        v42 = v48;
LABEL_12:
        v30 = [v41 arrayWithObjects:v42 count:3];
        [v40 activateConstraints:v30];
        goto LABEL_13;
      }

      v38 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
    }

    v39 = v38;
    [v38 setConstant:v33];

    goto LABEL_10;
  }

  v24 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  [v24 setConstant:0.0];

  v25 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  [v25 setConstant:-0.0];

  v26 = MEMORY[0x1E696ACD8];
  v27 = [(PKPaletteToolPickerContainerView *)self toolPickerViewTopConstraint];
  v49[0] = v27;
  v28 = [(PKPaletteToolPickerContainerView *)self toolPickerViewBottomConstraint];
  v49[1] = v28;
  v29 = [(PKPaletteToolPickerContainerView *)self toolPickerViewLeftConstraint];
  v49[2] = v29;
  v30 = [(PKPaletteToolPickerContainerView *)self toolPickerViewRightConstraint];
  v49[3] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v26 activateConstraints:v31];

LABEL_13:
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  [(PKPaletteToolPickerContainerView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(PKPaletteToolPickerContainerView *)self toolPickerView];
  v14 = [v13 hitTest:v7 withEvent:{v10, v12}];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PKPaletteToolPickerContainerView;
    v15 = [(PKPaletteToolPickerContainerView *)&v18 hitTest:v7 withEvent:x, y];
  }

  v16 = v15;

  return v16;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteToolPickerContainerView;
  [(PKPaletteToolPickerContainerView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteToolPickerContainerView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteToolPickerContainerView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
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