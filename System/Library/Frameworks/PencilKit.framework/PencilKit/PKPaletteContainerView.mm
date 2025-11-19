@interface PKPaletteContainerView
- (PKPaletteContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_installAccessoryView;
- (void)_installContentView;
- (void)_updateUI;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setScalingFactor:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation PKPaletteContainerView

- (PKPaletteContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKPaletteContainerView;
  v3 = [(PKPaletteContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v5 = [(PKAccessoryView *)self->_accessoryView topAnchor];
  v6 = [(PKPaletteContainerView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  accessoryViewTopConstraint = self->_accessoryViewTopConstraint;
  self->_accessoryViewTopConstraint = v7;

  v9 = [(PKAccessoryView *)self->_accessoryView bottomAnchor];
  v10 = [(PKPaletteContainerView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  accessoryViewBottomConstraint = self->_accessoryViewBottomConstraint;
  self->_accessoryViewBottomConstraint = v11;

  v13 = [(PKAccessoryView *)self->_accessoryView leftAnchor];
  v14 = [(PKPaletteContainerView *)self leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  accessoryViewLeftConstraint = self->_accessoryViewLeftConstraint;
  self->_accessoryViewLeftConstraint = v15;

  v17 = [(PKAccessoryView *)self->_accessoryView rightAnchor];
  v18 = [(PKPaletteContainerView *)self rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  accessoryViewRightConstraint = self->_accessoryViewRightConstraint;
  self->_accessoryViewRightConstraint = v19;

  v21 = [(PKAccessoryView *)self->_accessoryView widthAnchor];
  v22 = [v21 constraintEqualToConstant:19.0];
  accessoryViewWidthConstraint = self->_accessoryViewWidthConstraint;
  self->_accessoryViewWidthConstraint = v22;

  v24 = [(PKAccessoryView *)self->_accessoryView heightAnchor];
  v25 = [v24 constraintEqualToConstant:19.0];
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
  v5 = [(UIView *)self->_contentView topAnchor];
  v6 = [(PKPaletteContainerView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  contentViewTopConstraint = self->_contentViewTopConstraint;
  self->_contentViewTopConstraint = v7;

  v9 = [(UIView *)self->_contentView bottomAnchor];
  v10 = [(PKPaletteContainerView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;
  self->_contentViewBottomConstraint = v11;

  v13 = [(UIView *)self->_contentView leftAnchor];
  v14 = [(PKPaletteContainerView *)self leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  contentViewLeftConstraint = self->_contentViewLeftConstraint;
  self->_contentViewLeftConstraint = v15;

  v17 = [(UIView *)self->_contentView rightAnchor];
  v18 = [(PKPaletteContainerView *)self rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
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
  v3 = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
  [v3 setConstant:0.0];

  v4 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
  [v4 setConstant:0.0];

  v5 = [(PKPaletteContainerView *)self contentViewTopConstraint];
  [v5 setConstant:0.0];

  v6 = [(PKPaletteContainerView *)self contentViewBottomConstraint];
  [v6 setConstant:0.0];

  v7 = [(PKPaletteContainerView *)self contentViewLeftConstraint];
  [v7 setConstant:0.0];

  v8 = [(PKPaletteContainerView *)self contentViewRightConstraint];
  [v8 setConstant:0.0];

  v9 = [(PKPaletteContainerView *)self traitCollection];
  v10 = [(PKPaletteContainerView *)self window];
  v11 = [v10 windowScene];
  v12 = PKUseCompactSize(v9, v11);

  if (!v12)
  {
    [(PKPaletteContainerView *)self scalingFactor];
    v14 = v13;
    [(PKPaletteContainerView *)self scalingFactor];
    v16 = v15;
    v17 = [(PKPaletteContainerView *)self edgeLocation];
    if (v17 <= 0xF)
    {
      v18 = v14 * 19.0;
      v19 = v16 * 19.0;
      if (((1 << v17) & 0x8013) != 0)
      {
        v20 = [(PKPaletteContainerView *)self contentViewTopConstraint];
        [v20 setConstant:v19];

        v21 = [(PKPaletteContainerView *)self contentViewBottomConstraint];
        [v21 setConstant:-v19];

        v22 = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
LABEL_7:
        v25 = v22;
        [v22 setConstant:v18];

        goto LABEL_8;
      }

      if (((1 << v17) & 0x104) != 0)
      {
        v23 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
        [v23 setConstant:v18];

        v24 = [(PKPaletteContainerView *)self contentViewLeftConstraint];
        [v24 setConstant:v19];

        v18 = -v19;
        v22 = [(PKPaletteContainerView *)self contentViewRightConstraint];
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v26.receiver = self;
  v26.super_class = PKPaletteContainerView;
  [(PKPaletteContainerView *)&v26 updateConstraints];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(PKPaletteContainerView *)self contentView];
  [(PKPaletteContainerView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [(PKPaletteContainerView *)self contentView];
  v14 = [v13 subviews];
  v15 = [v14 reverseObjectEnumerator];

  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [(PKPaletteContainerView *)self contentView];
        [v21 convertPoint:v20 toView:{v10, v12}];
        v23 = v22;
        v25 = v24;

        v26 = [v20 hitTest:v7 withEvent:{v23, v25}];
        if (v26)
        {
          v27 = v26;

          goto LABEL_11;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v29.receiver = self;
  v29.super_class = PKPaletteContainerView;
  v27 = [(PKPaletteContainerView *)&v29 hitTest:v7 withEvent:x, y];
LABEL_11:

  return v27;
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteContainerView *)self _updateUI];

    [(PKPaletteContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteContainerView *)self _updateUI];

    [(PKPaletteContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteContainerView;
  [(PKPaletteContainerView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteContainerView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteContainerView *)self traitCollection];
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

  [(PKPaletteContainerView *)self _updateUI];
  [(PKPaletteContainerView *)self setNeedsUpdateConstraints];
LABEL_6:
}

- (void)_updateUI
{
  v33[6] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteContainerView *)self traitCollection];
  v4 = [(PKPaletteContainerView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  if (!v6)
  {
    v7 = MEMORY[0x1E696ACD8];
    v8 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
    v33[0] = v8;
    v9 = [(PKPaletteContainerView *)self accessoryViewLeftConstraint];
    v33[1] = v9;
    v10 = [(PKPaletteContainerView *)self accessoryViewRightConstraint];
    v33[2] = v10;
    v11 = [(PKPaletteContainerView *)self accessoryViewBottomConstraint];
    v33[3] = v11;
    v12 = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
    v33[4] = v12;
    v13 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
    v33[5] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
    [v7 deactivateConstraints:v14];

    v15 = [(PKPaletteContainerView *)self edgeLocation];
    if (v15 <= 0xF)
    {
      if (((1 << v15) & 0x8013) != 0)
      {
        v16 = MEMORY[0x1E696ACD8];
        v17 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
        v32[0] = v17;
        v18 = [(PKPaletteContainerView *)self accessoryViewLeftConstraint];
        v32[1] = v18;
        v19 = [(PKPaletteContainerView *)self accessoryViewRightConstraint];
        v32[2] = v19;
        v20 = [(PKPaletteContainerView *)self accessoryViewHeightConstraint];
        v32[3] = v20;
        v21 = v32;
      }

      else if (v15 == 2)
      {
        v16 = MEMORY[0x1E696ACD8];
        v17 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
        v31[0] = v17;
        v18 = [(PKPaletteContainerView *)self accessoryViewRightConstraint];
        v31[1] = v18;
        v19 = [(PKPaletteContainerView *)self accessoryViewBottomConstraint];
        v31[2] = v19;
        v20 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
        v31[3] = v20;
        v21 = v31;
      }

      else
      {
        if (v15 != 8)
        {
          goto LABEL_6;
        }

        v16 = MEMORY[0x1E696ACD8];
        v17 = [(PKPaletteContainerView *)self accessoryViewTopConstraint];
        v18 = [(PKPaletteContainerView *)self accessoryViewLeftConstraint];
        v30[1] = v18;
        v19 = [(PKPaletteContainerView *)self accessoryViewBottomConstraint];
        v30[2] = v19;
        v20 = [(PKPaletteContainerView *)self accessoryViewWidthConstraint];
        v30[3] = v20;
        v21 = v30;
      }

      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      [v16 activateConstraints:v22];
    }
  }

LABEL_6:
  v23 = [(PKPaletteContainerView *)self edgeLocation];
  v24 = [(PKPaletteContainerView *)self accessoryView];
  [v24 setEdgeLocation:v23];

  [(PKPaletteContainerView *)self scalingFactor];
  v26 = v25;
  v27 = [(PKPaletteContainerView *)self accessoryView];
  [v27 setScalingFactor:v26];

  v28 = PKIsVisionDevice() || v6;
  v29 = [(PKPaletteContainerView *)self accessoryView];
  [v29 setHidden:v28];
}

@end