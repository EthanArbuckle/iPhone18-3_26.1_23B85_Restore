@interface MKSmallCalloutView
- (CGSize)preferredContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MKSmallCalloutView)initWithFrame:(CGRect)frame;
- (MKSmallCalloutView)initWithFrame:(CGRect)frame metrics:(id *)metrics;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_updatePreferredContentSize;
- (void)_updatePreferredContentSizeIfNeeded;
- (void)beginMapsTransitionMovingSideways;
- (void)dealloc;
- (void)reset;
- (void)setCalloutSubtitle:(id)subtitle animated:(BOOL)animated;
- (void)setCalloutTitle:(id)title;
- (void)setDetailView:(id)view animated:(BOOL)animated;
- (void)setLeftView:(id)view animated:(BOOL)animated;
- (void)setMaximumWidth:(double)width;
- (void)setMinimumWidth:(double)width;
- (void)setRightView:(id)view animated:(BOOL)animated;
@end

@implementation MKSmallCalloutView

- (void)setDetailView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (!viewCopy)
  {
    text = [(_MKUILabel *)self->_subtitleLabel text];
    v8 = [text length];

    if (v8)
    {
      viewCopy = self->_subtitleLabel;
    }

    else
    {
      viewCopy = 0;
    }
  }

  if (viewCopy != self->_externalDetailView)
  {
    v9 = self->_detailView;
    v10 = self->_detailViewBottomConstraint;
    v11 = self->_detailViewTrailingConstraint;
    objc_storeStrong(&self->_externalDetailView, viewCopy);
    objc_storeStrong(&self->_detailView, viewCopy);
    [(_MKCalloutAccessoryView *)self->_detailView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1132068864;
    [(_MKCalloutAccessoryView *)self->_detailView _mapkit_setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(_MKCalloutAccessoryView *)self->_detailView _mapkit_setContentCompressionResistancePriority:1 forAxis:v13];
    if (self->_detailView)
    {
      [(UIView *)self->_unmaskedContainerView addSubview:?];
      [(_MKCalloutAccessoryView *)self->_detailView updateConstraintsIfNeeded];
      detailView = self->_detailView;
    }

    else
    {
      detailView = 0;
    }

    v15 = 1.0;
    if (animatedCopy)
    {
      v15 = 0.0;
    }

    [(_MKCalloutAccessoryView *)detailView setAlpha:v15];
    if (self->_detailView)
    {
      v42 = animatedCopy;
      v43 = v11;
      v44 = v10;
      v45 = v9;
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      v17 = MEMORY[0x1E696ACD8];
      v18 = self->_detailView;
      titleLabel = self->_titleLabel;
      v41 = v16;
      [(NSLayoutConstraint *)v16 _scaledValueForValue:18.0];
      v21 = [v17 constraintWithItem:v18 attribute:12 relatedBy:0 toItem:titleLabel attribute:11 multiplier:1.0 constant:v20];
      LODWORD(v22) = 1148813312;
      [v21 setPriority:v22];
      [(MKSmallCalloutView *)self addConstraint:v21];
      v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_detailView attribute:3 relatedBy:1 toItem:self->_titleLabel attribute:11 multiplier:1.0 constant:5.0];
      LODWORD(v24) = 1148829696;
      [v23 setPriority:v24];
      [(MKSmallCalloutView *)self addConstraint:v23];
      if (self->_metrics.scaleVerticalPaddingForDynamicType)
      {
        v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [v25 _scaledValueForValue:self->_metrics.padding.top];
        top = v26;
      }

      else
      {
        top = self->_metrics.padding.top;
      }

      v30 = MEMORY[0x1E696ACD8];
      v31 = self->_detailView;
      layoutMarginsGuide = [(MKSmallCalloutView *)self layoutMarginsGuide];
      v33 = [v30 constraintWithItem:v31 attribute:3 relatedBy:1 toItem:layoutMarginsGuide attribute:3 multiplier:1.0 constant:top];
      detailViewMinTopConstraint = self->_detailViewMinTopConstraint;
      self->_detailViewMinTopConstraint = v33;

      [(MKSmallCalloutView *)self addConstraint:self->_detailViewMinTopConstraint];
      v35 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_detailView attribute:5 relatedBy:0 toItem:self->_centerContentLeadingGuide attribute:6 multiplier:1.0 constant:0.0];
      [(MKSmallCalloutView *)self addConstraint:v35];

      v36 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_detailView attribute:6 relatedBy:-1 toItem:self->_centerContentTrailingGuide attribute:5 multiplier:1.0 constant:0.0];
      detailViewTrailingConstraint = self->_detailViewTrailingConstraint;
      self->_detailViewTrailingConstraint = v36;

      [(MKSmallCalloutView *)self addConstraint:self->_detailViewTrailingConstraint];
      animatedCopy = v42;
      if (v42)
      {
        [(MKSmallCalloutView *)self updateConstraintsIfNeeded];
        [(MKSmallCalloutView *)self layoutIfNeeded];
      }

      v10 = v44;
      v9 = v45;
      v11 = v43;
      v29 = v41;
    }

    else
    {
      v28 = self->_detailViewMinTopConstraint;
      self->_detailViewMinTopConstraint = 0;

      v29 = self->_detailViewTrailingConstraint;
      self->_detailViewTrailingConstraint = 0;
    }

    [(UIView *)self _mapkit_setNeedsLayout];
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __45__MKSmallCalloutView_setDetailView_animated___block_invoke;
    v54[3] = &unk_1E76CDB38;
    v54[4] = self;
    v38 = MEMORY[0x1A58E9F30](v54);
    v39 = v38;
    if (animatedCopy)
    {
      v40 = MEMORY[0x1E69DD250];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __45__MKSmallCalloutView_setDetailView_animated___block_invoke_2;
      v49[3] = &unk_1E76CDB60;
      v49[4] = self;
      v50 = v9;
      v51 = v10;
      v52 = v11;
      v53 = v39;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __45__MKSmallCalloutView_setDetailView_animated___block_invoke_3;
      v46[3] = &unk_1E76CDB88;
      v47 = v50;
      selfCopy = self;
      [v40 _mapkit_animateWithDuration:v49 animations:v46 completion:0.349999994];
    }

    else
    {
      (*(v38 + 16))(v38);
      [(_MKCalloutAccessoryView *)v9 removeFromSuperview];
    }

    [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
  }
}

void __45__MKSmallCalloutView_setDetailView_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v15 = v2;
  if (*(*(a1 + 32) + 464))
  {
    [v2 _scaledValueForValue:22.0];
    [*(*(a1 + 32) + 664) setConstant:?];
    [*(*(a1 + 32) + 664) constant];
    [*(*(a1 + 32) + 656) setConstant:?];
    v3 = *(a1 + 32);
    if (*(v3 + 568))
    {
      v4 = 11;
    }

    else
    {
      v4 = 4;
    }

    v5 = MEMORY[0x1E696ACD8];
    v6 = *(v3 + 464);
    v7 = *(v3 + 504);
    v8 = *(v3 + 592);
    if (*(v3 + 569) == 1)
    {
      [v15 _scaledValueForValue:v8];
    }

    v9 = [v5 constraintWithItem:v6 attribute:v4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:-v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 792);
    *(v10 + 792) = v9;

    LODWORD(v12) = 1148813312;
    [*(*(a1 + 32) + 792) setPriority:v12];
    [*(a1 + 32) addConstraint:*(*(a1 + 32) + 792)];
  }

  else
  {
    [v2 _scaledValueForValue:30.0];
    [*(*(a1 + 32) + 664) setConstant:?];
    [*(*(a1 + 32) + 664) constant];
    [*(*(a1 + 32) + 656) setConstant:?];
    v13 = *(a1 + 32);
    v14 = *(v13 + 792);
    *(v13 + 792) = 0;
  }
}

uint64_t __45__MKSmallCalloutView_setDetailView_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 464) setAlpha:1.0];
  [*(a1 + 40) setAlpha:0.0];
  if (*(a1 + 40))
  {
    [*(a1 + 32) removeConstraint:*(a1 + 48)];
    [*(a1 + 32) removeConstraint:*(a1 + 56)];
  }

  (*(*(a1 + 64) + 16))();
  [*(a1 + 32) _mapkit_updateConstraintsIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _mapkit_layoutIfNeeded];
}

uint64_t __45__MKSmallCalloutView_setDetailView_animated___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _mapkit_isDescendantOfView:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (void)setRightView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v78[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_externalRightView != viewCopy)
  {
    v57 = animatedCopy;
    v64 = self->_rightView;
    v63 = self->_rightViewHorizontalPositionConstraint;
    v61 = self->_rightViewCenterContentMarginConstraint;
    v60 = self->_rightViewTopSpacerBottomConstraint;
    v8 = self->_rightViewTopSpacer;
    v59 = self->_rightViewRightSpacer;
    objc_storeStrong(&self->_externalRightView, view);
    if (viewCopy)
    {
      v9 = [[_MKCalloutAccessoryWrapperView alloc] initWithView:self->_externalRightView];
      rightView = self->_rightView;
      self->_rightView = v9;

      [(_MKCalloutAccessoryView *)self->_rightView setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v11 = self->_rightView;
      self->_rightView = 0;
    }

    _mapkit_accessoryControlToExtendWithCallout = [(_MKCalloutAccessoryView *)self->_rightView _mapkit_accessoryControlToExtendWithCallout];
    v58 = _mapkit_accessoryControlToExtendWithCallout;
    if (_mapkit_accessoryControlToExtendWithCallout)
    {
      v13 = _mapkit_accessoryControlToExtendWithCallout;
    }

    else
    {
      v13 = 0;
    }

    [(_MKSmallCalloutPassthroughButton *)self->_maskedContainerView setTargetControl:v13];
    v14 = self->_rightView;
    if (v14)
    {
      v55 = v8;
      v56 = viewCopy;
      [(_MKCalloutAccessoryView *)v14 frame];
      if ((50.0 - v15) * 0.5 > 0.0)
      {
        [(_MKCalloutAccessoryView *)self->_rightView frame];
      }

      UIRoundToViewScale();
      v16 = &OBJC_IVAR___MKSmallCalloutView__maskedContainerView;
      if (v17 != 0.0)
      {
        v16 = &OBJC_IVAR___MKSmallCalloutView__unmaskedContainerView;
      }

      v54 = *(&self->super.super.super.isa + *v16);
      [v54 addSubview:self->_rightView];
      v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightView attribute:10 relatedBy:1 toItem:self->_unmaskedContainerView attribute:10 multiplier:1.0 constant:0.0];
      LODWORD(v19) = 1144750080;
      [v18 setPriority:v19];
      v20 = MEMORY[0x1E696ACD8];
      v21 = self->_rightView;
      layoutMarginsGuide = [(MKSmallCalloutView *)self layoutMarginsGuide];
      v23 = [v20 constraintWithItem:v21 attribute:3 relatedBy:1 toItem:layoutMarginsGuide attribute:3 multiplier:1.0 constant:0.0];

      LODWORD(v24) = 1148846080;
      [v23 setPriority:v24];
      [(MKSmallCalloutView *)self addConstraint:v18];
      v53 = v23;
      [(MKSmallCalloutView *)self addConstraint:v23];
      v25 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      rightViewTopSpacer = self->_rightViewTopSpacer;
      self->_rightViewTopSpacer = v25;

      [(MKSmallCalloutView *)self addLayoutGuide:self->_rightViewTopSpacer];
      v27 = MEMORY[0x1E696ACD8];
      v28 = self->_rightViewTopSpacer;
      layoutMarginsGuide2 = [(MKSmallCalloutView *)self layoutMarginsGuide];
      v30 = [v27 constraintWithItem:v28 attribute:3 relatedBy:0 toItem:layoutMarginsGuide2 attribute:3 multiplier:1.0 constant:0.0];
      [(MKSmallCalloutView *)self addConstraint:v30];

      v31 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightViewTopSpacer attribute:4 relatedBy:0 toItem:self->_rightView attribute:3 multiplier:1.0 constant:0.0];
      rightViewTopSpacerBottomConstraint = self->_rightViewTopSpacerBottomConstraint;
      self->_rightViewTopSpacerBottomConstraint = v31;

      [(MKSmallCalloutView *)self addConstraint:self->_rightViewTopSpacerBottomConstraint];
      v33 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      rightViewRightSpacer = self->_rightViewRightSpacer;
      self->_rightViewRightSpacer = v33;

      [(MKSmallCalloutView *)self addLayoutGuide:self->_rightViewRightSpacer];
      v35 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightViewRightSpacer attribute:6 relatedBy:0 toItem:self->_unmaskedContainerView attribute:6 multiplier:1.0 constant:0.0];
      [(MKSmallCalloutView *)self addConstraint:v35];

      v36 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightViewRightSpacer attribute:7 relatedBy:0 toItem:self->_rightViewTopSpacer attribute:8 multiplier:1.0 constant:0.0];
      LODWORD(v37) = 1144733696;
      [v36 setPriority:v37];
      [(MKSmallCalloutView *)self addConstraint:v36];
      v38 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightViewRightSpacer attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:16.0];
      [(MKSmallCalloutView *)self addConstraint:v38];

      v39 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightView attribute:6 relatedBy:0 toItem:self->_rightViewRightSpacer attribute:5 multiplier:1.0 constant:0.0];
      [(MKSmallCalloutView *)self addConstraint:v39];
      v40 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_centerContentTrailingGuide attribute:5 relatedBy:-1 toItem:self->_rightView attribute:5 multiplier:1.0 constant:-self->_metrics.padding.right];
      [(MKSmallCalloutView *)self addConstraint:v40];
      v41 = self->_rightViewTopSpacerBottomConstraint;
      v78[0] = v39;
      v78[1] = v41;
      v78[2] = v40;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];
      objc_storeStrong(&self->_rightViewHorizontalPositionConstraint, v39);
      objc_storeStrong(&self->_rightViewCenterContentMarginConstraint, v40);
      v43 = self->_rightView;
      v44 = v57;
      if (v57)
      {
        [(_MKCalloutAccessoryView *)v43 setAlpha:0.0];
        [MEMORY[0x1E696ACD8] deactivateConstraints:v42];
        v45 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_rightView attribute:5 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
        [(MKSmallCalloutView *)self addConstraint:v45];
        v77 = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
        [(UIView *)self _mapkit_updateConstraintsIfNeeded];
        [(UIView *)self _mapkit_layoutIfNeeded];
      }

      else
      {
        [(_MKCalloutAccessoryView *)v43 setAlpha:1.0];
        v46 = 0;
      }

      v51 = v61;

      v8 = v55;
      viewCopy = v56;
    }

    else
    {
      rightViewHorizontalPositionConstraint = self->_rightViewHorizontalPositionConstraint;
      self->_rightViewHorizontalPositionConstraint = 0;

      rightViewCenterContentMarginConstraint = self->_rightViewCenterContentMarginConstraint;
      self->_rightViewCenterContentMarginConstraint = 0;

      v49 = self->_rightViewTopSpacer;
      self->_rightViewTopSpacer = 0;

      v50 = self->_rightViewRightSpacer;
      self->_rightViewRightSpacer = 0;

      v42 = 0;
      v46 = 0;
      v51 = v61;
      v44 = v57;
    }

    [(UIView *)self _mapkit_setNeedsLayout];
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
    if (v44)
    {
      v62 = MEMORY[0x1E69DD250];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __44__MKSmallCalloutView_setRightView_animated___block_invoke;
      v70[3] = &unk_1E76CDB10;
      v70[4] = self;
      v71 = v64;
      v72 = v46;
      v73 = v42;
      v74 = v63;
      v75 = v51;
      v76 = v60;
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __44__MKSmallCalloutView_setRightView_animated___block_invoke_2;
      v65[3] = &unk_1E76CDAE8;
      v66 = v71;
      selfCopy = self;
      v68 = v8;
      v52 = v59;
      v69 = v59;
      [v62 _mapkit_animateWithDuration:v70 animations:v65 completion:0.349999994];
    }

    else
    {
      [(_MKCalloutAccessoryView *)v64 removeFromSuperview];
      if (v8)
      {
        [(MKSmallCalloutView *)self removeLayoutGuide:v8];
      }

      v52 = v59;
      if (v59)
      {
        [(MKSmallCalloutView *)self removeLayoutGuide:v59];
      }
    }

    [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
  }
}

uint64_t __44__MKSmallCalloutView_setRightView_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  [*(a1 + 40) setAlpha:0.0];
  if (*(a1 + 48))
  {
    [*(a1 + 32) removeConstraints:?];
  }

  if (*(a1 + 56))
  {
    [MEMORY[0x1E696ACD8] activateConstraints:?];
  }

  if (*(a1 + 40))
  {
    [*(a1 + 64) setActive:0];
    [*(a1 + 72) setActive:0];
    [*(a1 + 80) setActive:0];
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696ACD8] constraintWithItem:*(a1 + 40) attribute:5 relatedBy:0 toItem:v2 attribute:6 multiplier:1.0 constant:0.0];
    [v2 addConstraint:v3];
  }

  [*(a1 + 32) _mapkit_updateConstraintsIfNeeded];
  v4 = *(a1 + 32);

  return [v4 _mapkit_layoutIfNeeded];
}

uint64_t __44__MKSmallCalloutView_setRightView_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _mapkit_isDescendantOfView:*(a1 + 40)];
  if (result)
  {
    result = [*(a1 + 32) removeFromSuperview];
  }

  if (*(a1 + 48))
  {
    result = [*(a1 + 40) removeLayoutGuide:?];
  }

  if (*(a1 + 56))
  {
    v3 = *(a1 + 40);

    return [v3 removeLayoutGuide:?];
  }

  return result;
}

- (void)setLeftView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v85[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_externalLeftView != viewCopy)
  {
    v8 = self->_leftView;
    v68 = self->_leftViewMinCalloutWidthConstraint;
    v67 = self->_leftViewHorizontalPositionConstraint;
    v66 = self->_leftViewCenterContentMarginConstraint;
    v70 = self->_leftViewTopSpacerBottomConstraint;
    v65 = self->_leftViewLeftSpacer;
    v64 = self->_leftViewTopSpacer;
    objc_storeStrong(&self->_externalLeftView, view);
    if (viewCopy)
    {
      v9 = [[_MKCalloutAccessoryWrapperView alloc] initWithView:self->_externalLeftView];
      leftView = self->_leftView;
      self->_leftView = v9;

      [(_MKCalloutAccessoryView *)self->_leftView setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v11 = self->_leftView;
      self->_leftView = 0;
    }

    v12 = self->_leftView;
    if (v12)
    {
      v62 = animatedCopy;
      v63 = v8;
      [(_MKCalloutAccessoryView *)v12 frame];
      if ((50.0 - v13) * 0.5 > 0.0)
      {
        [(_MKCalloutAccessoryView *)self->_leftView frame];
      }

      UIRoundToViewScale();
      v14 = &OBJC_IVAR___MKSmallCalloutView__maskedContainerView;
      if (v15 != 0.0)
      {
        v14 = &OBJC_IVAR___MKSmallCalloutView__unmaskedContainerView;
      }

      v61 = *(&self->super.super.super.isa + *v14);
      [v61 addSubview:self->_leftView];
      v16 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_leftView attribute:10 relatedBy:1 toItem:self->_unmaskedContainerView attribute:10 multiplier:1.0 constant:0.0];
      LODWORD(v17) = 1144750080;
      [v16 setPriority:v17];
      v18 = MEMORY[0x1E696ACD8];
      v19 = self->_leftView;
      layoutMarginsGuide = [(MKSmallCalloutView *)self layoutMarginsGuide];
      v21 = [v18 constraintWithItem:v19 attribute:3 relatedBy:1 toItem:layoutMarginsGuide attribute:3 multiplier:1.0 constant:0.0];

      LODWORD(v22) = 1148846080;
      [v21 setPriority:v22];
      v60 = v16;
      [(MKSmallCalloutView *)self addConstraint:v16];
      v59 = v21;
      [(MKSmallCalloutView *)self addConstraint:v21];
      v23 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      leftViewTopSpacer = self->_leftViewTopSpacer;
      self->_leftViewTopSpacer = v23;

      [(MKSmallCalloutView *)self addLayoutGuide:self->_leftViewTopSpacer];
      v25 = MEMORY[0x1E696ACD8];
      v26 = self->_leftViewTopSpacer;
      layoutMarginsGuide2 = [(MKSmallCalloutView *)self layoutMarginsGuide];
      v28 = [v25 constraintWithItem:v26 attribute:3 relatedBy:0 toItem:layoutMarginsGuide2 attribute:3 multiplier:1.0 constant:0.0];
      [(MKSmallCalloutView *)self addConstraint:v28];

      v29 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_leftViewTopSpacer attribute:4 relatedBy:0 toItem:self->_leftView attribute:3 multiplier:1.0 constant:0.0];
      leftViewTopSpacerBottomConstraint = self->_leftViewTopSpacerBottomConstraint;
      self->_leftViewTopSpacerBottomConstraint = v29;

      [(MKSmallCalloutView *)self addConstraint:self->_leftViewTopSpacerBottomConstraint];
      v31 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      leftViewLeftSpacer = self->_leftViewLeftSpacer;
      self->_leftViewLeftSpacer = v31;

      [(MKSmallCalloutView *)self addLayoutGuide:self->_leftViewLeftSpacer];
      v33 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_leftViewLeftSpacer attribute:5 relatedBy:0 toItem:self->_unmaskedContainerView attribute:5 multiplier:1.0 constant:0.0];
      [(MKSmallCalloutView *)self addConstraint:v33];

      v34 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_leftViewLeftSpacer attribute:7 relatedBy:0 toItem:self->_leftViewTopSpacer attribute:8 multiplier:1.0 constant:0.0];
      LODWORD(v35) = 1144733696;
      [v34 setPriority:v35];
      [(MKSmallCalloutView *)self addConstraint:v34];
      v36 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_leftViewLeftSpacer attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:16.0];
      [(MKSmallCalloutView *)self addConstraint:v36];

      leadingAnchor = [(_MKCalloutAccessoryView *)self->_leftView leadingAnchor];
      trailingAnchor = [(UILayoutGuide *)self->_leftViewLeftSpacer trailingAnchor];
      v39 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];

      [(MKSmallCalloutView *)self addConstraint:v39];
      trailingAnchor2 = [(UILayoutGuide *)self->_centerContentLeadingGuide trailingAnchor];
      trailingAnchor3 = [(_MKCalloutAccessoryView *)self->_leftView trailingAnchor];
      v42 = [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:self->_metrics.padding.left];

      [(MKSmallCalloutView *)self addConstraint:v42];
      v43 = self->_leftViewTopSpacerBottomConstraint;
      v85[0] = v39;
      v85[1] = v43;
      v85[2] = v42;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
      objc_storeStrong(&self->_leftViewHorizontalPositionConstraint, v39);
      objc_storeStrong(&self->_leftViewCenterContentMarginConstraint, v42);
      v45 = self->_leftView;
      animatedCopy = v62;
      v69 = v44;
      if (v62)
      {
        [(_MKCalloutAccessoryView *)v45 setAlpha:0.0];
        [MEMORY[0x1E696ACD8] deactivateConstraints:v44];
        [(NSLayoutConstraint *)self->_leftViewMinCalloutWidthConstraint setActive:0];
        trailingAnchor4 = [(_MKCalloutAccessoryView *)self->_leftView trailingAnchor];
        leadingAnchor2 = [(MKSmallCalloutView *)self leadingAnchor];
        v48 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor2];

        [v48 setActive:1];
        v84 = v48;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
        [(UIView *)self _mapkit_updateConstraintsIfNeeded];
        [(UIView *)self _mapkit_layoutIfNeeded];
      }

      else
      {
        [(_MKCalloutAccessoryView *)v45 setAlpha:1.0];
        v49 = 0;
      }

      v8 = v63;
      v55 = v68;
    }

    else
    {
      leftViewMinCalloutWidthConstraint = self->_leftViewMinCalloutWidthConstraint;
      self->_leftViewMinCalloutWidthConstraint = 0;

      leftViewHorizontalPositionConstraint = self->_leftViewHorizontalPositionConstraint;
      self->_leftViewHorizontalPositionConstraint = 0;

      leftViewCenterContentMarginConstraint = self->_leftViewCenterContentMarginConstraint;
      self->_leftViewCenterContentMarginConstraint = 0;

      v53 = self->_leftViewTopSpacer;
      self->_leftViewTopSpacer = 0;

      v54 = self->_leftViewLeftSpacer;
      self->_leftViewLeftSpacer = 0;

      v69 = 0;
      v49 = 0;
      v55 = v68;
    }

    [(UIView *)self _mapkit_setNeedsLayout];
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
    if (animatedCopy)
    {
      v56 = MEMORY[0x1E69DD250];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __43__MKSmallCalloutView_setLeftView_animated___block_invoke;
      v76[3] = &unk_1E76CDAC0;
      v76[4] = self;
      v77 = v8;
      v78 = v49;
      v79 = v69;
      v80 = v67;
      v81 = v70;
      v82 = v66;
      v83 = v55;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __43__MKSmallCalloutView_setLeftView_animated___block_invoke_2;
      v71[3] = &unk_1E76CDAE8;
      v72 = v77;
      selfCopy = self;
      v57 = v65;
      v74 = v65;
      v58 = v64;
      v75 = v64;
      [v56 _mapkit_animateWithDuration:v76 animations:v71 completion:0.349999994];
    }

    else
    {
      [(_MKCalloutAccessoryView *)v8 removeFromSuperview];
      v57 = v65;
      if (v65)
      {
        [(MKSmallCalloutView *)self removeLayoutGuide:v65];
      }

      v58 = v64;
      if (v64)
      {
        [(MKSmallCalloutView *)self removeLayoutGuide:v64];
      }
    }

    [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
  }
}

uint64_t __43__MKSmallCalloutView_setLeftView_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:1.0];
  [*(a1 + 40) setAlpha:0.0];
  if (*(a1 + 48))
  {
    [*(a1 + 32) removeConstraints:?];
  }

  if (*(a1 + 56))
  {
    [MEMORY[0x1E696ACD8] activateConstraints:?];
  }

  [*(*(a1 + 32) + 696) setActive:1];
  if (*(a1 + 40))
  {
    [*(a1 + 64) setActive:0];
    [*(a1 + 72) setActive:0];
    [*(a1 + 80) setActive:0];
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696ACD8] constraintWithItem:*(a1 + 40) attribute:6 relatedBy:0 toItem:v2 attribute:5 multiplier:1.0 constant:0.0];
    [v2 addConstraint:v3];
  }

  if (*(a1 + 88))
  {
    [*(a1 + 32) removeConstraint:?];
  }

  [*(a1 + 32) _mapkit_updateConstraintsIfNeeded];
  v4 = *(a1 + 32);

  return [v4 _mapkit_layoutIfNeeded];
}

uint64_t __43__MKSmallCalloutView_setLeftView_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _mapkit_isDescendantOfView:*(a1 + 40)];
  if (result)
  {
    result = [*(a1 + 32) removeFromSuperview];
  }

  if (*(a1 + 48))
  {
    result = [*(a1 + 40) removeLayoutGuide:?];
  }

  if (*(a1 + 56))
  {
    v3 = *(a1 + 40);

    return [v3 removeLayoutGuide:?];
  }

  return result;
}

- (void)setCalloutSubtitle:(id)subtitle animated:(BOOL)animated
{
  animatedCopy = animated;
  subtitleCopy = subtitle;
  text = [(_MKUILabel *)self->_subtitleLabel text];
  if ([subtitleCopy isEqualToString:text])
  {

    goto LABEL_17;
  }

  if (self->_subtitleLabel)
  {
  }

  else
  {
    v7 = [subtitleCopy length];

    if (!v7)
    {
      goto LABEL_17;
    }
  }

  detailView = self->_detailView;
  if (detailView)
  {
    v9 = detailView != self->_subtitleLabel;
  }

  else
  {
    v9 = 0;
  }

  if (![subtitleCopy length])
  {
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = 0;

    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!animatedCopy)
  {
    v10 = self->_subtitleLabel;
    if (v10)
    {
      if (self->_detailView == v10)
      {
        [(_MKUILabel *)v10 setText:subtitleCopy];
        [(UIView *)self _mapkit_setNeedsUpdateConstraints];
        [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
        goto LABEL_17;
      }
    }
  }

  v11 = [_MKUILabel alloc];
  v12 = [(_MKUILabel *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = self->_subtitleLabel;
  self->_subtitleLabel = v12;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)self->_subtitleLabel setBackgroundColor:clearColor];

  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(_MKUILabel *)self->_subtitleLabel setFont:v15];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(_MKUILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

  [(_MKUILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_subtitleLabel setLineBreakMode:4];
  LODWORD(v17) = 1132068864;
  [(UIView *)self->_subtitleLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v17];
  [(_MKUILabel *)self->_subtitleLabel setText:subtitleCopy];
  if (!v9)
  {
LABEL_16:
    [(MKSmallCalloutView *)self setDetailView:0 animated:animatedCopy];
  }

LABEL_17:
}

- (void)setCalloutTitle:(id)title
{
  titleCopy = title;
  text = [(_MKUILabel *)self->_titleLabel text];
  if ([titleCopy isEqualToString:text])
  {

    goto LABEL_10;
  }

  text2 = [(_MKUILabel *)self->_titleLabel text];
  if (text2)
  {

LABEL_6:
    [(_MKUILabel *)self->_titleLabel setText:titleCopy];
    text3 = [(_MKUILabel *)self->_titleLabel text];
    v8 = [text3 length];

    titleLabelConstraints = self->_titleLabelConstraints;
    if (v8)
    {
      [MEMORY[0x1E696ACD8] activateConstraints:titleLabelConstraints];
      v10 = 1.0;
    }

    else
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:titleLabelConstraints];
      v10 = 0.0;
    }

    [(_MKUILabel *)self->_titleLabel setAlpha:v10];
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
    [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
    goto LABEL_10;
  }

  v6 = [titleCopy length];

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_10:
}

- (CGSize)preferredContentSize
{
  [(MKSmallCalloutView *)self _updatePreferredContentSizeIfNeeded];
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updatePreferredContentSize
{
  self->_needsPreferredContentSizeUpdate = 0;
  [(UIView *)self _mapkit_updateConstraintsIfNeeded];
  LODWORD(v3) = 1112014848;
  LODWORD(v4) = 1112014848;
  [(MKSmallCalloutView *)self systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090] withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:v3, v4];
  self->_preferredContentSize.width = v5;
  self->_preferredContentSize.height = v6;
}

- (void)_updatePreferredContentSizeIfNeeded
{
  if (self->_needsPreferredContentSizeUpdate)
  {
    [(MKSmallCalloutView *)self _updatePreferredContentSize];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(MKSmallCalloutView *)self _updatePreferredContentSizeIfNeeded:fits.width];
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)beginMapsTransitionMovingSideways
{
  [(_MKUILabel *)self->_titleLabel setAlpha:0.0];
  [(_MKCalloutAccessoryView *)self->_leftView setAlpha:0.0];
  [(_MKCalloutAccessoryView *)self->_rightView setAlpha:0.0];
  [(_MKUILabel *)self->_subtitleLabel setAlpha:0.0];
  [(_MKCalloutAccessoryView *)self->_detailView setAlpha:0.0];
  self->_shouldPositionTitleForMapsTransitionMovingSideways = 1;
}

- (void)reset
{
  [(MKSmallCalloutView *)self setLeftView:0];
  [(MKSmallCalloutView *)self setRightView:0];
  [(MKSmallCalloutView *)self setDetailView:0];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = 0;

  self->_shouldPositionTitleForMapsTransitionMovingSideways = 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKSmallCalloutView;
  [(MKSmallCalloutView *)&v4 dealloc];
}

- (void)setMaximumWidth:(double)width
{
  [(NSLayoutConstraint *)self->_maxWidthConstraint setConstant:width];

  [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
}

- (void)setMinimumWidth:(double)width
{
  [(NSLayoutConstraint *)self->_minWidthConstraint setConstant:width];

  [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v7 = [v4 fontWithDescriptor:v6 size:0.0];
  [(_MKUILabel *)self->_titleLabel setFont:v7];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(_MKUILabel *)self->_subtitleLabel setFont:v8];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  [v11 _scaledValueForValue:30.0];
  [(NSLayoutConstraint *)self->_titleBaselineFromTopConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_titleBaselineFromTopConstraint constant];
  [(NSLayoutConstraint *)self->_titleBaselineFromTopMinimumConstraint setConstant:?];
  top = self->_metrics.padding.top;
  if (self->_metrics.scaleVerticalPaddingForDynamicType)
  {
    [v11 _scaledValueForValue:top];
  }

  [(NSLayoutConstraint *)self->_detailViewMinTopConstraint setConstant:top];
  bottom = self->_metrics.padding.bottom;
  if (self->_metrics.scaleVerticalPaddingForDynamicType)
  {
    [v11 _scaledValueForValue:bottom];
  }

  [(NSLayoutConstraint *)self->_detailViewBottomConstraint setConstant:-bottom];
  [(MKSmallCalloutView *)self setNeedsUpdateConstraints];
  [(MKSmallCalloutView *)self _setNeedsUpdatePreferredContentSize];
}

- (MKSmallCalloutView)initWithFrame:(CGRect)frame metrics:(id *)metrics
{
  v135.receiver = self;
  v135.super_class = MKSmallCalloutView;
  v5 = [(MKSmallCalloutView *)&v135 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v7 = *&metrics->var2;
    *&v5->_metrics.margin = *&metrics->var0;
    *&v5->_metrics.arrowBase = v7;
    v8 = *&metrics->var8.bottom;
    v10 = *&metrics->var4;
    v9 = *&metrics->var5.var1.var1;
    *&v5->_metrics.padding.top = *&metrics->var8.top;
    *&v5->_metrics.padding.bottom = v8;
    *&v5->_metrics.useRadialSmoothing = v10;
    *&v5->_metrics.var0.nonRadialSmoothing.arrowPointFactor = v9;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MKSmallCalloutView *)v6 setBackgroundColor:clearColor];

    [(MKSmallCalloutView *)v6 setClipsToBounds:0];
    v12 = [_MKSmallCalloutPassthroughButton alloc];
    [(MKSmallCalloutView *)v6 bounds];
    v13 = [(_MKSmallCalloutPassthroughButton *)v12 initWithFrame:?];
    maskedContainerView = v6->_maskedContainerView;
    v6->_maskedContainerView = v13;

    [(_MKSmallCalloutPassthroughButton *)v6->_maskedContainerView setClipsToBounds:0];
    [(_MKSmallCalloutPassthroughButton *)v6->_maskedContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKSmallCalloutView *)v6 addSubview:v6->_maskedContainerView];
    v15 = [_MKSmallCalloutContainerView alloc];
    [(MKSmallCalloutView *)v6 bounds];
    v16 = [(_MKSmallCalloutContainerView *)v15 initWithFrame:0.0, 0.0];
    unmaskedContainerView = v6->_unmaskedContainerView;
    v6->_unmaskedContainerView = v16;

    [(UIView *)v6->_unmaskedContainerView setClipsToBounds:1];
    cornerRadius = v6->_metrics.cornerRadius;
    layer = [(UIView *)v6->_unmaskedContainerView layer];
    [layer setCornerRadius:cornerRadius];

    [(UIView *)v6->_unmaskedContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKSmallCalloutView *)v6 addSubview:v6->_unmaskedContainerView];
    v20 = MEMORY[0x1E696ACD8];
    v21 = v6->_unmaskedContainerView;
    layoutMarginsGuide = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v23 = [v20 constraintWithItem:v21 attribute:1 relatedBy:0 toItem:layoutMarginsGuide attribute:1 multiplier:1.0 constant:0.0];
    unmaskedContainerLeadingConstraint = v6->_unmaskedContainerLeadingConstraint;
    v6->_unmaskedContainerLeadingConstraint = v23;

    [(MKSmallCalloutView *)v6 addConstraint:v6->_unmaskedContainerLeadingConstraint];
    v25 = MEMORY[0x1E696ACD8];
    v26 = v6->_unmaskedContainerView;
    layoutMarginsGuide2 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v28 = [v25 constraintWithItem:v26 attribute:3 relatedBy:0 toItem:layoutMarginsGuide2 attribute:3 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v28];

    v29 = MEMORY[0x1E696ACD8];
    v30 = v6->_unmaskedContainerView;
    layoutMarginsGuide3 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v32 = [v29 constraintWithItem:v30 attribute:2 relatedBy:0 toItem:layoutMarginsGuide3 attribute:2 multiplier:1.0 constant:0.0];
    unmaskedContainerTrailingConstraint = v6->_unmaskedContainerTrailingConstraint;
    v6->_unmaskedContainerTrailingConstraint = v32;

    [(MKSmallCalloutView *)v6 addConstraint:v6->_unmaskedContainerTrailingConstraint];
    v34 = MEMORY[0x1E696ACD8];
    v35 = v6->_unmaskedContainerView;
    layoutMarginsGuide4 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v37 = [v34 constraintWithItem:v35 attribute:4 relatedBy:0 toItem:layoutMarginsGuide4 attribute:4 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v37];

    v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_maskedContainerView attribute:5 relatedBy:0 toItem:v6 attribute:5 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v38];

    v39 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_maskedContainerView attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v39];

    v40 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_maskedContainerView attribute:6 relatedBy:0 toItem:v6 attribute:6 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v40];

    v41 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_maskedContainerView attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v41];

    v42 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    centerContentLeadingGuide = v6->_centerContentLeadingGuide;
    v6->_centerContentLeadingGuide = v42;

    [(MKSmallCalloutView *)v6 addLayoutGuide:v6->_centerContentLeadingGuide];
    v44 = MEMORY[0x1E696ACD8];
    v45 = v6->_centerContentLeadingGuide;
    layoutMarginsGuide5 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v47 = [v44 constraintWithItem:v45 attribute:3 relatedBy:0 toItem:layoutMarginsGuide5 attribute:3 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v47];

    v48 = MEMORY[0x1E696ACD8];
    v49 = v6->_centerContentLeadingGuide;
    layoutMarginsGuide6 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v51 = [v48 constraintWithItem:v49 attribute:4 relatedBy:0 toItem:layoutMarginsGuide6 attribute:4 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v51];

    v52 = MEMORY[0x1E696ACD8];
    v53 = v6->_centerContentLeadingGuide;
    layoutMarginsGuide7 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v55 = [v52 constraintWithItem:v53 attribute:5 relatedBy:0 toItem:layoutMarginsGuide7 attribute:5 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v55];

    v56 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_centerContentLeadingGuide attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v56];

    v57 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_centerContentLeadingGuide attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v6->_metrics.padding.left];
    LODWORD(v58) = 1148829696;
    [v57 setPriority:v58];
    [(MKSmallCalloutView *)v6 addConstraint:v57];
    v59 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    centerContentTrailingGuide = v6->_centerContentTrailingGuide;
    v6->_centerContentTrailingGuide = v59;

    [(MKSmallCalloutView *)v6 addLayoutGuide:v6->_centerContentTrailingGuide];
    v61 = MEMORY[0x1E696ACD8];
    v62 = v6->_centerContentTrailingGuide;
    layoutMarginsGuide8 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v64 = [v61 constraintWithItem:v62 attribute:3 relatedBy:0 toItem:layoutMarginsGuide8 attribute:3 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v64];

    v65 = MEMORY[0x1E696ACD8];
    v66 = v6->_centerContentTrailingGuide;
    layoutMarginsGuide9 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v68 = [v65 constraintWithItem:v66 attribute:4 relatedBy:0 toItem:layoutMarginsGuide9 attribute:4 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v68];

    v69 = MEMORY[0x1E696ACD8];
    v70 = v6->_centerContentTrailingGuide;
    layoutMarginsGuide10 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    v72 = [v69 constraintWithItem:v70 attribute:6 relatedBy:0 toItem:layoutMarginsGuide10 attribute:6 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v72];

    v73 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_centerContentTrailingGuide attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(MKSmallCalloutView *)v6 addConstraint:v73];

    v74 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_centerContentTrailingGuide attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v6->_metrics.padding.right];

    LODWORD(v75) = 1148829696;
    [v74 setPriority:v75];
    [(MKSmallCalloutView *)v6 addConstraint:v74];
    v76 = [_MKUILabel alloc];
    v77 = [(_MKUILabel *)v76 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v77;

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v6->_titleLabel setBackgroundColor:clearColor2];

    v80 = MEMORY[0x1E69DB878];
    v81 = *MEMORY[0x1E69DDCF8];
    v82 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
    v83 = [v80 fontWithDescriptor:v82 size:0.0];
    [(_MKUILabel *)v6->_titleLabel setFont:v83];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(_MKUILabel *)v6->_titleLabel setTextColor:labelColor];

    [(_MKUILabel *)v6->_titleLabel setLineBreakMode:4];
    [(_MKUILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v85) = 1132068864;
    [(UIView *)v6->_titleLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v85];
    LODWORD(v86) = 1148829696;
    [(UIView *)v6->_titleLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v86];
    [(MKSmallCalloutView *)v6 addSubview:v6->_titleLabel];
    array = [MEMORY[0x1E695DF70] array];
    v88 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_titleLabel attribute:5 relatedBy:0 toItem:v6->_centerContentLeadingGuide attribute:6 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v88];

    v89 = [MEMORY[0x1E696ACD8] constraintWithItem:v6->_titleLabel attribute:6 relatedBy:-1 toItem:v6->_centerContentTrailingGuide attribute:5 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v89];

    v90 = MEMORY[0x1E696ACD8];
    v91 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel_0.isa, v6->_titleLabel, 0);
    v92 = [v90 constraintsWithVisualFormat:@"V:|-(>=0)-[_titleLabel]-(>=0)-|" options:0 metrics:0 views:v91];
    [(NSArray *)array addObjectsFromArray:v92];

    v93 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v81];
    v94 = MEMORY[0x1E696ACD8];
    v95 = v6->_titleLabel;
    layoutMarginsGuide11 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    [v93 _scaledValueForValue:30.0];
    v98 = [v94 constraintWithItem:v95 attribute:12 relatedBy:1 toItem:layoutMarginsGuide11 attribute:3 multiplier:1.0 constant:v97];
    titleBaselineFromTopMinimumConstraint = v6->_titleBaselineFromTopMinimumConstraint;
    v6->_titleBaselineFromTopMinimumConstraint = v98;

    LODWORD(v100) = 1148829696;
    [(NSLayoutConstraint *)v6->_titleBaselineFromTopMinimumConstraint setPriority:v100];
    [(NSArray *)array addObject:v6->_titleBaselineFromTopMinimumConstraint];
    v101 = MEMORY[0x1E696ACD8];
    v102 = v6->_titleLabel;
    layoutMarginsGuide12 = [(MKSmallCalloutView *)v6 layoutMarginsGuide];
    [v93 _scaledValueForValue:30.0];
    v105 = [v101 constraintWithItem:v102 attribute:12 relatedBy:0 toItem:layoutMarginsGuide12 attribute:3 multiplier:1.0 constant:v104];
    titleBaselineFromTopConstraint = v6->_titleBaselineFromTopConstraint;
    v6->_titleBaselineFromTopConstraint = v105;

    LODWORD(v107) = 1144750080;
    [(NSLayoutConstraint *)v6->_titleBaselineFromTopConstraint setPriority:v107];
    [(NSArray *)array addObject:v6->_titleBaselineFromTopConstraint];
    v108 = MEMORY[0x1E696ACD8];
    v109 = v6->_titleLabel;
    v110 = v6->_unmaskedContainerView;
    [v93 _scaledValueForValue:20.0];
    v112 = [v108 constraintWithItem:v109 attribute:11 relatedBy:-1 toItem:v110 attribute:4 multiplier:1.0 constant:-v111];
    titleMinimumBaselineToBottomConstraint = v6->_titleMinimumBaselineToBottomConstraint;
    v6->_titleMinimumBaselineToBottomConstraint = v112;

    LODWORD(v114) = 1148829696;
    [(NSLayoutConstraint *)v6->_titleMinimumBaselineToBottomConstraint setPriority:v114];
    [(NSArray *)array addObject:v6->_titleMinimumBaselineToBottomConstraint];
    [(MKSmallCalloutView *)v6 addConstraints:array];
    titleLabelConstraints = v6->_titleLabelConstraints;
    v6->_titleLabelConstraints = array;
    v116 = array;

    [MEMORY[0x1E696ACD8] deactivateConstraints:v6->_titleLabelConstraints];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;

    v136.origin.x = v119;
    v136.origin.y = v121;
    v136.size.width = v123;
    v136.size.height = v125;
    Width = CGRectGetWidth(v136);
    v137.origin.x = v119;
    v137.origin.y = v121;
    v137.size.width = v123;
    v137.size.height = v125;
    if (Width >= CGRectGetHeight(v137))
    {
      v139.origin.x = v119;
      v139.origin.y = v121;
      v139.size.width = v123;
      v139.size.height = v125;
      Height = CGRectGetHeight(v139);
    }

    else
    {
      v138.origin.x = v119;
      v138.origin.y = v121;
      v138.size.width = v123;
      v138.size.height = v125;
      Height = CGRectGetWidth(v138);
    }

    v128 = fmin(Height + v6->_metrics.margin * -2.0, 390.0);
    v129 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:39.0];
    minWidthConstraint = v6->_minWidthConstraint;
    v6->_minWidthConstraint = v129;

    [(MKSmallCalloutView *)v6 addConstraint:v6->_minWidthConstraint];
    v131 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:v128];
    maxWidthConstraint = v6->_maxWidthConstraint;
    v6->_maxWidthConstraint = v131;

    [(MKSmallCalloutView *)v6 addConstraint:v6->_maxWidthConstraint];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v6;
}

- (MKSmallCalloutView)initWithFrame:(CGRect)frame
{
  v4[0] = xmmword_1A30F6E90;
  v4[1] = xmmword_1A30F6EA0;
  v5 = 0;
  v6 = xmmword_1A30F7340;
  v7 = 257;
  v8 = xmmword_1A30F6E80;
  v9 = xmmword_1A30F6E80;
  return [(MKSmallCalloutView *)self initWithFrame:v4 metrics:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end