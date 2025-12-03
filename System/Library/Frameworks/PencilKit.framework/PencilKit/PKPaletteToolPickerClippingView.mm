@interface PKPaletteToolPickerClippingView
- (PKPaletteToolPickerClippingView)init;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setScalingFactor:(double)factor;
- (void)setupBackdropViewsWithScrollView:(uint64_t)view;
@end

@implementation PKPaletteToolPickerClippingView

- (PKPaletteToolPickerClippingView)init
{
  v102[4] = *MEMORY[0x1E69E9840];
  v95.receiver = self;
  v95.super_class = PKPaletteToolPickerClippingView;
  v2 = [(PKPaletteToolPickerClippingView *)&v95 init];
  v3 = v2;
  if (v2)
  {
    v2->_scalingFactor = 1.0;
    v4 = objc_alloc_init(PKPaletteToolPickerBackgroundContentView);
    backgroundContentView = v3->_backgroundContentView;
    v3->_backgroundContentView = v4;

    [(PKPaletteToolPickerBackgroundContentView *)v3->_backgroundContentView setSemanticContentAttribute:3];
    [(PKPaletteToolPickerClippingView *)v3 addSubview:v3->_backgroundContentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v3->_contentView;
    v3->_contentView = v6;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerClippingView *)v3 addSubview:v3->_contentView];
    v85 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v3->_contentView topAnchor];
    topAnchor2 = [(PKPaletteToolPickerClippingView *)v3 topAnchor];
    v89 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v102[0] = v89;
    leadingAnchor = [(UIView *)v3->_contentView leadingAnchor];
    leadingAnchor2 = [(PKPaletteToolPickerClippingView *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v102[1] = v9;
    trailingAnchor = [(UIView *)v3->_contentView trailingAnchor];
    trailingAnchor2 = [(PKPaletteToolPickerClippingView *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v102[2] = v12;
    bottomAnchor = [(UIView *)v3->_contentView bottomAnchor];
    bottomAnchor2 = [(PKPaletteToolPickerClippingView *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v102[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
    [v85 activateConstraints:v16];

    v17 = objc_alloc_init(PKPalettePassthroughView);
    contentOverlayView = v3->_contentOverlayView;
    v3->_contentOverlayView = v17;

    [(PKPalettePassthroughView *)v3->_contentOverlayView setSemanticContentAttribute:3];
    [(PKPaletteToolPickerClippingView *)v3 addSubview:v3->_contentOverlayView];
    v3->_layoutAxis = 0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v19 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      leadingEdgeView = v3->_leadingEdgeView;
      v3->_leadingEdgeView = v19;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_leadingEdgeView];
      widthAnchor = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView widthAnchor];
      v94 = [widthAnchor constraintEqualToConstant:0.0];

      topAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView topAnchor];
      topAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView topAnchor];
      v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      leadingEdgeViewTopConstraint = v3->_leadingEdgeViewTopConstraint;
      v3->_leadingEdgeViewTopConstraint = v24;

      v90 = MEMORY[0x1E696ACD8];
      v101[0] = v3->_leadingEdgeViewTopConstraint;
      leadingAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView leadingAnchor];
      leadingAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView leadingAnchor];
      v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v101[1] = v28;
      bottomAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView bottomAnchor];
      bottomAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView bottomAnchor];
      v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v101[2] = v31;
      v101[3] = v94;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
      [v90 activateConstraints:v32];

      v33 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      trailingEdgeView = v3->_trailingEdgeView;
      v3->_trailingEdgeView = v33;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_trailingEdgeView];
      widthAnchor2 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView widthAnchor];
      v91 = [widthAnchor2 constraintEqualToConstant:0.0];

      topAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView topAnchor];
      topAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView topAnchor];
      v38 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      trailingEdgeViewTopConstraint = v3->_trailingEdgeViewTopConstraint;
      v3->_trailingEdgeViewTopConstraint = v38;

      v86 = MEMORY[0x1E696ACD8];
      v100[0] = v3->_trailingEdgeViewTopConstraint;
      trailingAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView trailingAnchor];
      trailingAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView trailingAnchor];
      v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v100[1] = v42;
      bottomAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView bottomAnchor];
      bottomAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView bottomAnchor];
      v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v100[2] = v45;
      v100[3] = v91;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
      [v86 activateConstraints:v46];

      v47 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      topEdgeView = v3->_topEdgeView;
      v3->_topEdgeView = v47;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_topEdgeView];
      heightAnchor = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView heightAnchor];
      v87 = [heightAnchor constraintEqualToConstant:0.0];

      trailingAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView trailingAnchor];
      trailingAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView trailingAnchor];
      v52 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      topEdgeViewTrailingConstraint = v3->_topEdgeViewTrailingConstraint;
      v3->_topEdgeViewTrailingConstraint = v52;

      leadingAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView leadingAnchor];
      leadingAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView leadingAnchor];
      v56 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      topEdgeViewLeadingConstraint = v3->_topEdgeViewLeadingConstraint;
      v3->_topEdgeViewLeadingConstraint = v56;

      v58 = MEMORY[0x1E696ACD8];
      topAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView topAnchor];
      topAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView topAnchor];
      v61 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      v99[0] = v61;
      v99[1] = v3->_topEdgeViewLeadingConstraint;
      v99[2] = v3->_topEdgeViewTrailingConstraint;
      v99[3] = v87;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:4];
      [v58 activateConstraints:v62];

      v63 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      bottomEdgeView = v3->_bottomEdgeView;
      v3->_bottomEdgeView = v63;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_bottomEdgeView];
      heightAnchor2 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView heightAnchor];
      v66 = [heightAnchor2 constraintEqualToConstant:0.0];

      trailingAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView trailingAnchor];
      trailingAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView trailingAnchor];
      v69 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      bottomEdgeViewTrailingConstraint = v3->_bottomEdgeViewTrailingConstraint;
      v3->_bottomEdgeViewTrailingConstraint = v69;

      leadingAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView leadingAnchor];
      leadingAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView leadingAnchor];
      v73 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      bottomEdgeViewLeadingConstraint = v3->_bottomEdgeViewLeadingConstraint;
      v3->_bottomEdgeViewLeadingConstraint = v73;

      v75 = MEMORY[0x1E696ACD8];
      v98[0] = v3->_bottomEdgeViewLeadingConstraint;
      v98[1] = v3->_bottomEdgeViewTrailingConstraint;
      bottomAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView bottomAnchor];
      bottomAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView bottomAnchor];
      v78 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
      v98[2] = v78;
      v98[3] = v66;
      v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:4];
      [v75 activateConstraints:v79];

      v97[0] = v3->_leadingEdgeView;
      v97[1] = v3->_trailingEdgeView;
      v97[2] = v3->_topEdgeView;
      v97[3] = v3->_bottomEdgeView;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:4];
      edgeViews = v3->_edgeViews;
      v3->_edgeViews = v80;

      v96[0] = v94;
      v96[1] = v91;
      v96[2] = v87;
      v96[3] = v66;
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
      edgeViewThicknessConstraints = v3->_edgeViewThicknessConstraints;
      v3->_edgeViewThicknessConstraints = v82;
    }

    [(PKPaletteToolPickerClippingView *)v3 _updateUI];
  }

  return v3;
}

- (void)_updateUI
{
  v72 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = *(self + 408);
  if (v2)
  {
    v3 = *(self + 544);
    if (*(v2 + 448) == v3 || (*(v2 + 448) = v3, [(PKPaletteToolPickerBackgroundContentView *)v2 _updateUI], (v2 = *(self + 408)) != 0))
    {
      v4 = *(self + 521);
      if (*(v2 + 441) == v4 || (*(v2 + 441) = v4, [(PKPaletteToolPickerBackgroundContentView *)v2 _updateUI], (v2 = *(self + 408)) != 0))
      {
        v5 = *(self + 522);
        if (*(v2 + 442) == v5 || (*(v2 + 442) = v5, [(PKPaletteToolPickerBackgroundContentView *)v2 _updateUI], (v2 = *(self + 408)) != 0))
        {
          v6 = *(self + 520);
          if (*(v2 + 440) != v6)
          {
            *(v2 + 440) = v6;
            [(PKPaletteToolPickerBackgroundContentView *)v2 _updateUI];
          }
        }
      }
    }
  }

  v7 = *(self + 544);
  if (_UISolariumEnabled())
  {
    if (v7)
    {
      v8 = *(self + 424);
      if (v8 && (*(v8 + 441) & 1) == 0)
      {
        *(v8 + 441) = 1;
        [(PKPaletteToolPickerClippingEdgeView *)v8 _updateUI];
      }

      v9 = *(self + 432);
      if (v9 && (*(v9 + 441) & 1) == 0)
      {
        *(v9 + 441) = 1;
        [(PKPaletteToolPickerClippingEdgeView *)v9 _updateUI];
      }

      if (v7 == 1)
      {
        v10 = *(self + 523);
        v11 = *(self + 440);
        if (v11 && *(v11 + 441) != v10)
        {
          *(v11 + 441) = v10;
          [(PKPaletteToolPickerClippingEdgeView *)v11 _updateUI];
          LOBYTE(v10) = *(self + 523);
        }

LABEL_47:
        v28 = *(self + 448);
        if (v28 && *(v28 + 441) != (v10 & 1))
        {
          *(v28 + 441) = v10 & 1;

          [(PKPaletteToolPickerClippingEdgeView *)v28 _updateUI];
        }

        return;
      }
    }

    else
    {
      v24 = *(self + 523);
      v25 = *(self + 424);
      if (v25 && *(v25 + 441) != v24)
      {
        *(v25 + 441) = v24;
        [(PKPaletteToolPickerClippingEdgeView *)v25 _updateUI];
        v24 = *(self + 523);
      }

      v26 = *(self + 432);
      if (v26 && *(v26 + 441) != v24)
      {
        *(v26 + 441) = v24;
        [(PKPaletteToolPickerClippingEdgeView *)v26 _updateUI];
      }
    }

    v27 = *(self + 440);
    if (v27)
    {
      LOBYTE(v10) = 1;
      if ((*(v27 + 441) & 1) == 0)
      {
        *(v27 + 441) = 1;
        [(PKPaletteToolPickerClippingEdgeView *)v27 _updateUI];
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    goto LABEL_47;
  }

  v56 = v7;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v12 = *(self + 456);
  v13 = [v12 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v66;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v65 + 1) + 8 * i);
        if (v17)
        {
          v18 = *(self + 544);
          if (*(v17 + 456) != v18)
          {
            *(v17 + 456) = v18;
            [(PKPaletteToolPickerClippingEdgeView *)v17 _updateUI];
          }

          v19 = *(self + 520);
          if (*(v17 + 440) != v19)
          {
            *(v17 + 440) = v19;
            [(PKPaletteToolPickerClippingEdgeView *)v17 _updateUI];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v14);
  }

  v20 = _UISolariumEnabled();
  v21 = 1;
  if (v20)
  {
    v22 = v56;
    v23 = &OBJC_IVAR___PKLiveMathVariable__scrubbedVariableImageView;
  }

  else
  {
    v22 = v56;
    v23 = &OBJC_IVAR___PKLiveMathVariable__scrubbedVariableImageView;
    if (!v56)
    {
      v21 = *(self + 521) ^ 1;
    }
  }

  [*(self + 424) setHidden:v21 & 1];
  v29 = _UISolariumEnabled();
  v30 = 1;
  if ((v29 & 1) == 0 && !v22)
  {
    v30 = *(self + v23[771]) ^ 1;
  }

  [*(self + 432) setHidden:v30 & 1];
  v31 = _UISolariumEnabled();
  v32 = 1;
  if ((v31 & 1) == 0 && v22 == 1)
  {
    v32 = *(self + 521) ^ 1;
  }

  [*(self + 440) setHidden:v32 & 1];
  v33 = _UISolariumEnabled();
  v34 = 1;
  if ((v33 & 1) == 0 && v22 == 1)
  {
    v34 = *(self + v23[771]) ^ 1;
  }

  [*(self + 448) setHidden:v34 & 1];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v35 = *(self + 464);
  v36 = [v35 countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v62;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v61 + 1) + 8 * j);
        [self scalingFactor];
        UIRoundToViewScale();
        [v40 setConstant:?];
      }

      v37 = [v35 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v37);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v41 = *(self + 464);
  v42 = [v41 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v58;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v57 + 1) + 8 * k);
        [self scalingFactor];
        UIRoundToViewScale();
        [v46 setConstant:?];
      }

      v43 = [v41 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v43);
  }

  [self scalingFactor];
  v48 = v47;
  v49 = -(v47 * 6.0);
  v50 = 0.0;
  if (v22)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = -(v47 * 6.0);
  }

  [*(self + 472) setConstant:v51];
  [*(self + 480) setConstant:v51];
  if (v22 == 1)
  {
    v52 = v48 * 6.0;
    if (*(self + 520))
    {
      v53 = 0.0;
    }

    else
    {
      v53 = v52;
    }

    [*(self + 496) setConstant:v53];
    if (!*(self + 520))
    {
      v50 = v52;
    }
  }

  else
  {
    [*(self + 496) setConstant:0.0];
  }

  [*(self + 512) setConstant:v50];
  if (*(self + 520))
  {
    v54 = v49;
  }

  else
  {
    v54 = 0.0;
  }

  [*(self + 488) setConstant:v54];
  if (*(self + 520))
  {
    v55 = v49;
  }

  else
  {
    v55 = 0.0;
  }

  [*(self + 504) setConstant:v55];
}

- (void)setupBackdropViewsWithScrollView:(uint64_t)view
{
  v11 = a2;
  if (view && _UISolariumEnabled())
  {
    v3 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v4 = *(view + 424);
    *(view + 424) = v3;

    v5 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v6 = *(view + 432);
    *(view + 432) = v5;

    v7 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v8 = *(view + 440);
    *(view + 440) = v7;

    v9 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v10 = *(view + 448);
    *(view + 448) = v9;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaletteToolPickerClippingView;
  [(PKPaletteToolPickerClippingView *)&v3 layoutSubviews];
  [(PKPaletteToolPickerClippingView *)self bounds];
  [(PKPaletteToolPickerBackgroundContentView *)self->_backgroundContentView setFrame:?];
  [(PKPaletteToolPickerClippingView *)self bounds];
  [(PKPalettePassthroughView *)self->_contentOverlayView setFrame:?];
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPickerClippingView *)self _updateUI];
  }
}

@end