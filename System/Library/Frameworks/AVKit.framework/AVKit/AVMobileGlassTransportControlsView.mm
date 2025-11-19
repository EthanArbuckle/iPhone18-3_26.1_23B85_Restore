@interface AVMobileGlassTransportControlsView
- (AVMobileGlassControlsLayoutConfiguration)layoutConfiguration;
- (AVMobileGlassTransportControlsView)init;
- (AVMobileGlassTransportControlsViewDelegate)delegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_setTransportControlView:(uint64_t)a3 frame:(double)a4 layoutDirection:(double)a5;
- (void)_setUpInlineTransportControlsBackgroundView;
- (void)_updateViewHiddenStatesWithCanFitState:(id *)a1;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAuxiliaryControlsView:(id)a3;
- (void)setLayoutAllowed:(BOOL)a3;
- (void)setLayoutConfiguration:(AVMobileGlassControlsLayoutConfiguration *)a3;
- (void)setLiveEdgeContentTagView:(id)a3;
- (void)setStyleSheet:(id)a3;
- (void)setTimelineBackgroundMaterialMode:(int64_t)a3;
- (void)setTimelineView:(id)a3;
- (void)setTitlebarView:(id)a3;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassTransportControlsView

- (AVMobileGlassTransportControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVMobileGlassControlsLayoutConfiguration)layoutConfiguration
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v5 = *&self->_layoutConfiguration.expanded;
  *&retstr->includedControls = *&self->_layoutConfiguration.includedControls;
  *&retstr->expanded = v5;
  pinnedAuxiliaryControls = self->_layoutConfiguration.pinnedAuxiliaryControls;
  retstr->auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  result = pinnedAuxiliaryControls;
  retstr->pinnedAuxiliaryControls = result;
  v8 = *&p_layoutConfiguration->volumeSliderInsets.left;
  *&retstr->timelineSliderInsets.right = *&p_layoutConfiguration->timelineSliderInsets.right;
  *&retstr->volumeSliderInsets.left = v8;
  v9 = *&p_layoutConfiguration->contentTabsLayout;
  *&retstr->volumeSliderInsets.right = *&p_layoutConfiguration->volumeSliderInsets.right;
  *&retstr->contentTabsLayout = v9;
  v10 = *&p_layoutConfiguration->timelineSliderInsets.left;
  *&retstr->contentTabPresented = *&p_layoutConfiguration->contentTabPresented;
  *&retstr->timelineSliderInsets.left = v10;
  return result;
}

- (void)_setUpInlineTransportControlsBackgroundView
{
  if (!self->_inlineTransportControlsBackgroundView)
  {
    v3 = objc_alloc_init(AVGlassBackedView);
    [(AVGlassBackedView *)v3 setAutoresizingMask:0];
    [(AVGlassBackedView *)v3 setBackgroundMaterialStyle:1];
    [(AVGlassBackedView *)v3 setWantsCapsuleShape:1];
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setHidden:1];
    [(AVMobileGlassTransportControlsView *)self addSubview:v3];
    inlineTransportControlsBackgroundView = self->_inlineTransportControlsBackgroundView;
    self->_inlineTransportControlsBackgroundView = v3;
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  if (self->_auxiliaryControlsView == a3 || self->_titlebarView == a3)
  {
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];

    [(AVMobileGlassTransportControlsView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self)
  {
    height = a3.height;
    width = a3.width;
    v6 = self->_auxiliaryControlsView;
    v7 = self->_timelineView;
    v8 = self->_titlebarView;
    includedControls = self->_layoutConfiguration.includedControls;
    excludedControls = self->_layoutConfiguration.excludedControls;
    controlsPadding = self->_layoutConfiguration.controlsPadding;
    auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
    v13 = self->_layoutConfiguration.pinnedAuxiliaryControls;
    v14 = (excludedControls & 8) == 0;
    if (auxiliaryControlsPlacement == 1)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
      v16 = v15;
    }

    else
    {
      [(AVMobileGlassTimelineView *)v7 sizeThatFits:width, height];
      v16 = v17;
    }

    [(AVMobileTitlebarView *)v8 intrinsicContentSize];
    v19 = v18;
    [(AVMobileGlassAuxiliaryControlsView *)v6 sizeFittingControls:v13];
    v21 = (includedControls & 0x10) == 0;
    if ((includedControls & v14) != 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = 0.0;
    }

    if (v22 >= v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v24 = auxiliaryControlsPlacement != 1 || (includedControls & 0x10) == 0;
    if (auxiliaryControlsPlacement == 1)
    {
      v21 = 1;
    }

    if (!v24)
    {
      v22 = v23;
    }

    if ((includedControls & 0x20) != 0)
    {
      v25 = v19;
    }

    else
    {
      v25 = 0.0;
    }

    if (v25 >= v20)
    {
      v20 = v25;
    }

    if (v21)
    {
      v20 = v25;
    }

    if (v20 == 0.0 || v22 == 0.0)
    {
      v27 = v22 + v20 + 0.0;
    }

    else
    {
      v27 = controlsPadding + v22 + v20 + 0.0;
    }
  }

  else
  {
    v27 = 0.0;
  }

  v28 = *MEMORY[0x1E69DE788];
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)layoutSubviews
{
  v105.receiver = self;
  v105.super_class = AVMobileGlassTransportControlsView;
  [(AVView *)&v105 layoutSubviews];
  if ([(AVMobileGlassTransportControlsView *)self layoutAllowed])
  {
    [(AVMobileGlassTransportControlsView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(AVMobileGlassTransportControlsView *)self layoutConfiguration];
    if (!self)
    {

LABEL_70:
      [(AVView *)self updateForContentIntersection];
      return;
    }

    v11 = self->_auxiliaryControlsView;
    v94 = self->_liveEdgeContentTagView;
    v12 = self->_timelineView;
    v13 = self->_titlebarView;
    v14 = [(AVMobileGlassTransportControlsView *)self effectiveUserInterfaceLayoutDirection];
    v93 = v102;
    v15 = [(AVMobileGlassTimelineView *)v12 isEmphasized];
    if (v101 == 1)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
      v17 = v18;
    }

    else
    {
      [(AVMobileGlassTimelineView *)v12 sizeThatFits:v8, v10];
      v17 = v16;
    }

    [(AVMobileTitlebarView *)v13 intrinsicContentSize];
    v91 = v19;
    [(AVMobileGlassContentTagView *)v94 intrinsicContentSize];
    v86 = v20;
    [(AVMobileGlassAuxiliaryControlsView *)v11 sizeFittingControls:v93];
    v96 = v22;
    v97 = v21;
    v23 = [(AVGlassBackedView *)v12 backgroundMaterialStyle];
    [(AVMobileGlassTransportControlsView *)self safeAreaInsets];
    v26 = v24;
    v27 = v25;
    if (v23)
    {
      v28 = 1.0;
      if (v14 == 1)
      {
        v24 = 1.0;
      }

      v81 = v24;
      if (v14 == 1)
      {
        v28 = v25;
      }
    }

    else
    {
      v81 = *(MEMORY[0x1E69DDCE0] + 8);
      v28 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v83 = v28;
    if (v101 == 1 || v8 < v10)
    {
      v31 = *(MEMORY[0x1E69DDCE0] + 8);
      v29 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet additionalLandscapeTimelineInsets];
      v31 = v30;
    }

    if (v14 == 1)
    {
      v32 = v27;
    }

    else
    {
      v32 = v26;
    }

    v33 = v4 + v32;
    if (v23)
    {
      v33 = v4;
    }

    v92 = v33;
    if (v23)
    {
      v34 = v8;
    }

    else
    {
      v34 = v8 - (v26 + v27);
    }

    v84 = v29 + v31;
    v85 = v31;
    v35 = *MEMORY[0x1E695F058];
    v82 = *(MEMORY[0x1E695F058] + 8);
    v87 = *(MEMORY[0x1E695F058] + 24);
    v89 = *(MEMORY[0x1E695F058] + 16);
    v36 = v6 + v10;
    v37 = v10 - (v17 - v100);
    if ((v98 & ((v99 & 8) == 0)) == 0)
    {
      v37 = v10;
    }

    v95 = v37;
    v76 = v6 + v10 - v17;
    if ((v98 & ((v99 & 8) == 0)) != 0)
    {
      v38 = v6 + v10 - v17;
    }

    else
    {
      v38 = v6 + v10;
    }

    if ((v98 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    if (v101 != 1 && v37 >= v96 && v34 >= v97)
    {
      v40 = v38 - v96 - v100;
      v77 = v34 - (v100 + v97);
LABEL_37:
      v41 = v95 < v91 || (v98 & 0x20) == 0;
      v42 = !v41;
      v79 = v38 - v100 - v91;
      if ((v98 & ((v99 & 8) == 0)) == 0)
      {
        v38 = v82;
        v60 = v92 + v34 - v83;
        v50 = 1;
        v17 = v87;
        v54 = v89;
        v49 = v35;
        v51 = v40;
        v52 = v96;
        v46 = v97;
        v53 = v60 - v97;
        v35 = v53;
        v45 = v85;
LABEL_61:
        [(AVGlassBackedView *)self->_inlineTransportControlsBackgroundView setFrame:v53, v51, v46, v52];
        [(AVMobileGlassTransportControlsView *)self _setTransportControlView:v11 frame:v14 layoutDirection:v35, v40, v97, v96];
        [(AVMobileGlassTransportControlsView *)self _setTransportControlView:v12 frame:v14 layoutDirection:v49, v38, v54, v17];
        if (!v41)
        {
          [(UIView *)v13 avkit_setFrame:v14 inLayoutDirection:v92 + v81 + v45, v79, v77 - (v83 + v81) - v84, v91];
        }

        v57 = 0x1000000;
        if (!v42)
        {
          v57 = 0;
        }

        v58 = 0x10000;
        if ((v98 & ((v99 & 8) == 0)) == 0)
        {
          v58 = 0;
        }

        v59 = 256;
        if ((v98 & ((v99 & 8) == 0) & (v95 >= v86)) == 0)
        {
          v59 = 0;
        }

        [(AVMobileGlassTransportControlsView *)&self->super.super.super.super.super.isa _updateViewHiddenStatesWithCanFitState:?];
        goto LABEL_70;
      }

      v43 = 1;
      goto LABEL_50;
    }

    if (v101 != 1)
    {
LABEL_43:
      v44 = (v101 != 1) & (v98 >> 4);
      if ((v98 & 0x20) == 0)
      {
        v44 = 1;
      }

      if (v95 < v91)
      {
        v41 = 1;
      }

      else
      {
        v41 = v44;
      }

      v42 = !v41;
      v79 = v38 - v100 - v91;
      if ((v98 & ((v99 & 8) == 0)) == 0)
      {
        v77 = v34;
        v17 = v87;
        v46 = v89;
        v40 = v82;
        v38 = v82;
        v49 = v35;
        v45 = v85;
        goto LABEL_57;
      }

      v43 = 0;
      v40 = 0.0;
      v77 = v34;
LABEL_50:
      v45 = v85;
      v46 = v34 - v84;
      v47 = v103;
      v48 = fabs(v104);
      if (fabs(v103) <= v48)
      {
        v47 = v48;
      }

      v49 = v85 + v92 + v47;
      if (v43)
      {
        v35 = v92 + v34 - v83 - v97;
        if (v101 == 1)
        {
          [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineEdgeInsets];
          v90 = v68;
          [(AVMobileGlassAuxiliaryControlsView *)v11 controlInsets];
          v88 = v69;
          v71 = v70;
          [(AVMobileGlassControlsStyleSheet *)self->_styleSheet timelineControlsPlatterInlineEdgeInsets];
          v35 = v35 - (v90 - v71);
          if (v46 >= v88 + v35 + v72 + -8.0 - v49)
          {
            v54 = v88 + v35 + v72 + -8.0 - v49;
          }

          else
          {
            v54 = v46;
          }

          v50 = 1;
          v51 = v38;
          v52 = v17;
          v53 = v49;
        }

        else
        {
          v50 = 1;
          v51 = v38;
          v52 = v17;
          v53 = v85 + v92 + v47;
          v54 = v34 - v84;
        }

        goto LABEL_61;
      }

      v40 = v82;
LABEL_57:
      if (v101 == 1)
      {
        [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineEdgeInsets];
        v56 = v55;
        v50 = 0;
        v51 = v38;
        v52 = v17;
        v53 = v49;
        v35 = v92 + v34 - v56;
        v54 = v46;
        v40 = v76;
      }

      else
      {
        v50 = 0;
        v51 = v38;
        v52 = v17;
        v53 = v49;
        v54 = v46;
      }

      v96 = v87;
      v97 = v89;
      goto LABEL_61;
    }

    v61 = !v15;
    HIDWORD(v62) = HIDWORD(v97);
    v78 = *(MEMORY[0x1E695F060] + 8);
    v80 = *MEMORY[0x1E695F060];
    v63 = v96 != v78 || v97 != *MEMORY[0x1E695F060];
    v64 = v34 + -150.0;
    v65 = v97;
    *&v62 = vabds_f32(v64, v65);
    if (v64 > v65 || *&v62 < 0.00000011921)
    {
      if ((v61 & v63 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      [(AVMobileGlassAuxiliaryControlsView *)v11 sizeFittingControls:MEMORY[0x1E695E0F0], 3.18618444e-58, v62, v96];
      v75 = v73;
      if (v64 <= v75 && vabds_f32(v64, v75) >= 0.00000011921)
      {
        goto LABEL_43;
      }

      if (v73 == v80 && v74 == v78)
      {
        goto LABEL_43;
      }

      v96 = v74;
      v97 = v73;
      if ((v61 & v63) != 1)
      {
        goto LABEL_43;
      }
    }

    if (v96 >= v17)
    {
      v67 = v96;
    }

    else
    {
      v67 = v17;
    }

    v95 = v10 - v67 - v100;
    v40 = v36 - v67 + (v67 - v96) * 0.5;
    v38 = v36 - v67 + (v67 - v17) * 0.5;
    v77 = v34;
    goto LABEL_37;
  }
}

- (void)_updateViewHiddenStatesWithCanFitState:(id *)a1
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v25[0] = a1[67];
    v25[1] = a1[68];
    v25[2] = a1[69];
    v25[3] = a1[70];
    v22 = a2 & 0x101;
    v23 = BYTE2(a2) & 1;
    v24 = HIBYTE(a2) & 1;
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 4; ++i)
    {
      v7 = v25[i];
      v8 = v7;
      if (v7)
      {
        v9 = *(&v22 + i);
        if ([v7 isHidden] == v9)
        {
          [v8 setHidden:v9 ^ 1u];
          if (v9)
          {
            v10 = v5;
          }

          else
          {
            v10 = v4;
          }

          [v10 addObject:v8];
        }
      }
    }

    if ([v4 count])
    {
      v11 = v4;
      v12 = v11;
      if (v11)
      {
        if ([v11 count])
        {
          v13 = [a1 delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            v15 = [a1 delegate];
            [v15 glassTransportControlsView:a1 didDetachControlsViews:v12];
          }
        }
      }
    }

    if ([v5 count])
    {
      v16 = v5;
      v17 = v16;
      if (v16)
      {
        if ([v16 count])
        {
          v18 = [a1 delegate];
          v19 = objc_opt_respondsToSelector();

          if (v19)
          {
            v20 = [a1 delegate];
            [v20 glassTransportControlsView:a1 didAttachControlsViews:v17];
          }
        }
      }
    }

    for (j = 3; j != -1; --j)
    {
    }
  }
}

- (void)_setTransportControlView:(uint64_t)a3 frame:(double)a4 layoutDirection:(double)a5
{
  v18 = a2;
  v13 = [v18 superview];
  if (v13 != a1)
  {
    [a1 convertRect:v13 toView:{a4, a5, a6, a7}];
    a4 = v14;
    a5 = v15;
    a6 = v16;
    a7 = v17;
  }

  [v18 avkit_setFrame:a3 inLayoutDirection:{a4, a5, a6, a7}];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassTransportControlsView;
  [(AVGlassBackedView *)&v3 didMoveToWindow];
  [(AVMobileGlassTransportControlsView *)self setClipsToBounds:0];
  [(AVMobileGlassTransportControlsView *)self _setUpInlineTransportControlsBackgroundView];
}

- (void)updateBackgroundMaterial
{
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  v9 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  v4 = [(AVGlassBackedView *)self backgroundMaterialStyle];
  if (self->_timelineBackgroundMaterialMode == 1)
  {
    v5 = [(AVGlassBackedView *)self backgroundMaterialStyle];
    if (!auxiliaryControlsPlacement)
    {
LABEL_3:
      [(AVMobileGlassTransportControlsView *)self addSubview:self->_timelineView];
      [(AVMobileGlassTransportControlsView *)self addSubview:self->_auxiliaryControlsView];
      [(AVMobileGlassTimelineView *)self->_timelineView setBackgroundMaterialStyle:v5];
      [(AVGlassBackedView *)self->_auxiliaryControlsView setBackgroundMaterialStyle:v4];
      [(AVGlassBackedView *)self->_inlineTransportControlsBackgroundView setBackgroundMaterialStyle:0];
      [(AVView *)self->_inlineTransportControlsBackgroundView setHidden:1];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (!auxiliaryControlsPlacement)
    {
      goto LABEL_3;
    }
  }

  [(AVGlassBackedView *)self->_inlineTransportControlsBackgroundView addSubview:self->_timelineView];
  [(AVGlassBackedView *)self->_inlineTransportControlsBackgroundView addSubview:self->_auxiliaryControlsView];
  [(AVMobileGlassTimelineView *)self->_timelineView setBackgroundMaterialStyle:0];
  [(AVGlassBackedView *)self->_auxiliaryControlsView setBackgroundMaterialStyle:0];
  [(AVGlassBackedView *)self->_inlineTransportControlsBackgroundView setBackgroundMaterialStyle:v4];
  [(AVView *)self->_inlineTransportControlsBackgroundView setHidden:0];
LABEL_6:
  v6 = [(AVGlassBackedView *)self backgroundMaterialized];
  if (v6)
  {
    v7 = [(AVGlassBackedView *)self->_timelineView backgroundMaterialized];
    v8 = [(AVGlassBackedView *)self->_auxiliaryControlsView backgroundMaterialized];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  [(AVGlassBackedView *)self->_timelineView setBackgroundMaterialized:v7];
  [(AVGlassBackedView *)self->_auxiliaryControlsView setBackgroundMaterialized:v8];
  [(AVGlassBackedView *)self->_inlineTransportControlsBackgroundView setBackgroundMaterialized:v6];
  [(AVMobileGlassTransportControlsView *)self setClipsToBounds:0];
}

- (void)setTitlebarView:(id)a3
{
  v5 = a3;
  v6 = [(AVMobileTitlebarView *)v5 superview];

  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: titlebarView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_titlebarView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: titlebarView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    titlebarView = self->_titlebarView;
  }

  else
  {
    titlebarView = 0;
  }

  if (titlebarView != v5)
  {
    [(AVMobileTitlebarView *)titlebarView removeFromSuperview];
    objc_storeStrong(&self->_titlebarView, a3);
    [(AVView *)self->_titlebarView setHidden:1];
    [(AVMobileGlassTransportControlsView *)self addSubview:self->_titlebarView];
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setTimelineView:(id)a3
{
  v5 = a3;
  v6 = [(AVMobileGlassTimelineView *)v5 superview];

  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: timelineView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_timelineView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: timelineView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    timelineView = self->_timelineView;
  }

  else
  {
    timelineView = 0;
  }

  if (timelineView != v5)
  {
    [(AVMobileGlassTimelineView *)timelineView removeFromSuperview];
    objc_storeStrong(&self->_timelineView, a3);
    [(AVView *)self->_timelineView setHidden:1];
    [(AVMobileGlassTransportControlsView *)self addSubview:self->_timelineView];
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveEdgeContentTagView:(id)a3
{
  v5 = a3;
  v6 = [(AVMobileGlassContentTagView *)v5 superview];

  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: liveEdgeContentTagView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_liveEdgeContentTagView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: liveEdgeContentTagView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    liveEdgeContentTagView = self->_liveEdgeContentTagView;
  }

  else
  {
    liveEdgeContentTagView = 0;
  }

  if (liveEdgeContentTagView != v5)
  {
    [(AVMobileGlassContentTagView *)liveEdgeContentTagView removeFromSuperview];
    objc_storeStrong(&self->_liveEdgeContentTagView, a3);
    [(AVView *)self->_liveEdgeContentTagView setHidden:1];
    [(AVMobileGlassTransportControlsView *)self addSubview:self->_liveEdgeContentTagView];
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryControlsView:(id)a3
{
  v5 = a3;
  v6 = [(AVMobileGlassAuxiliaryControlsView *)v5 superview];

  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: auxiliaryControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_auxiliaryControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: auxiliaryControlsView should only be set once on an AVMobileGlassLowerControlsContainerView.", v10, 2u);
    }

    auxiliaryControlsView = self->_auxiliaryControlsView;
  }

  else
  {
    auxiliaryControlsView = 0;
  }

  if (auxiliaryControlsView != v5)
  {
    [(AVMobileGlassAuxiliaryControlsView *)auxiliaryControlsView removeFromSuperview];
    objc_storeStrong(&self->_auxiliaryControlsView, a3);
    [(AVView *)self->_auxiliaryControlsView setHidden:1];
    [(AVMobileGlassTransportControlsView *)self addSubview:self->_auxiliaryControlsView];
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setTimelineBackgroundMaterialMode:(int64_t)a3
{
  if (self->_timelineBackgroundMaterialMode != a3)
  {
    self->_timelineBackgroundMaterialMode = a3;
    [(AVMobileGlassTransportControlsView *)self updateBackgroundMaterial];
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setLayoutConfiguration:(AVMobileGlassControlsLayoutConfiguration *)a3
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v6 = *&self->_layoutConfiguration.expanded;
  v33[0] = *&self->_layoutConfiguration.includedControls;
  v33[1] = v6;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  p_pinnedAuxiliaryControls = &self->_layoutConfiguration.pinnedAuxiliaryControls;
  v35 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  pinnedAuxiliaryControls = a3->pinnedAuxiliaryControls;
  v25 = a3->auxiliaryControlsPlacement;
  v9 = *&p_layoutConfiguration->volumeSliderInsets.left;
  v38 = *&p_layoutConfiguration->timelineSliderInsets.right;
  v39 = v9;
  v10 = *&p_layoutConfiguration->contentTabsLayout;
  v40 = *&p_layoutConfiguration->volumeSliderInsets.right;
  v41 = v10;
  v11 = *&p_layoutConfiguration->timelineSliderInsets.left;
  v36 = *&p_layoutConfiguration->contentTabPresented;
  v37 = v11;
  v12 = *&a3->expanded;
  v23 = *&a3->includedControls;
  v24 = v12;
  v26 = pinnedAuxiliaryControls;
  v13 = *&a3->volumeSliderInsets.left;
  v29 = *&a3->timelineSliderInsets.right;
  v30 = v13;
  v14 = *&a3->contentTabsLayout;
  v31 = *&a3->volumeSliderInsets.right;
  v32 = v14;
  v15 = *&a3->timelineSliderInsets.left;
  v27 = *&a3->contentTabPresented;
  v28 = v15;
  if (!AVMobileGlassControlsLayoutConfigurationsEqual(v33, &v23))
  {
    v16 = *&a3->includedControls;
    v17 = *&a3->expanded;
    p_layoutConfiguration->auxiliaryControlsPlacement = a3->auxiliaryControlsPlacement;
    *&p_layoutConfiguration->includedControls = v16;
    *&p_layoutConfiguration->expanded = v17;
    objc_storeStrong(p_pinnedAuxiliaryControls, a3->pinnedAuxiliaryControls);
    v18 = *&a3->timelineSliderInsets.left;
    *&p_layoutConfiguration->contentTabPresented = *&a3->contentTabPresented;
    *&p_layoutConfiguration->timelineSliderInsets.left = v18;
    v19 = *&a3->timelineSliderInsets.right;
    v20 = *&a3->volumeSliderInsets.left;
    v21 = *&a3->contentTabsLayout;
    *&p_layoutConfiguration->volumeSliderInsets.right = *&a3->volumeSliderInsets.right;
    *&p_layoutConfiguration->contentTabsLayout = v21;
    *&p_layoutConfiguration->timelineSliderInsets.right = v19;
    *&p_layoutConfiguration->volumeSliderInsets.left = v20;
    [(AVMobileGlassTransportControlsView *)self updateBackgroundMaterial:v23];
    [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
  }

  v22 = a3->pinnedAuxiliaryControls;
}

- (void)setLayoutAllowed:(BOOL)a3
{
  if (self->_layoutAllowed != a3)
  {
    self->_layoutAllowed = a3;
    if (a3)
    {
      [(AVMobileGlassTransportControlsView *)self setNeedsLayout];
    }
  }
}

- (AVMobileGlassTransportControlsView)init
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassTransportControlsView;
  result = [(AVMobileGlassTransportControlsView *)&v3 init];
  if (result)
  {
    result->_timelineBackgroundMaterialMode = 1;
    result->_layoutAllowed = 1;
  }

  return result;
}

@end