@interface AVMobileGlassControlsView
- (AVMobileGlassControlsLayoutConfiguration)layoutConfiguration;
- (AVMobileGlassControlsView)init;
- (AVMobileGlassControlsViewDelegate)delegate;
- (NSArray)detachedViews;
- (double)_controlsExpansionYOffset;
- (double)_layoutContentTabsInFrame:(_BYTE *)frame withConfiguration:(double)configuration canFitState:(double)state;
- (void)_attachViews:(uint64_t)views;
- (void)_detachViews:(uint64_t)views;
- (void)_setUpContentTabsContainerViewIfNeeded;
- (void)_setUpPlaybackControlsContainerViewIfNeeded;
- (void)_setUpTopControlsContainerViewIfNeeded;
- (void)_setUpTransportControlsContainerViewIfNeeded;
- (void)_setUpTransportControlsViewIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)didMoveToWindow;
- (void)glassTransportControlsView:(id)view didAttachControlsViews:(id)views;
- (void)glassTransportControlsView:(id)view didDetachControlsViews:(id)views;
- (void)layoutSubviews;
- (void)setAuxiliaryControlsView:(id)view;
- (void)setBackgroundView:(id)view;
- (void)setContentTabsView:(id)view;
- (void)setDisplayModeControlsView:(id)view;
- (void)setLayoutAllowed:(BOOL)allowed;
- (void)setLayoutConfiguration:(AVMobileGlassControlsLayoutConfiguration *)configuration;
- (void)setLiveEdgeContentTagView:(id)view;
- (void)setPlaybackControlsView:(id)view;
- (void)setStyleSheet:(id)sheet;
- (void)setTimelineView:(id)view;
- (void)setTitlebarView:(id)view;
- (void)setVolumeControlsView:(id)view;
- (void)updateForContentIntersection;
@end

@implementation AVMobileGlassControlsView

- (AVMobileGlassControlsViewDelegate)delegate
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

- (void)_setUpTransportControlsContainerViewIfNeeded
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (!self->_transportControlsContainerView)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    cGColor = [v3 CGColor];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{1.0, cGColor}];
    v15[1] = [v5 CGColor];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    v15[2] = [v6 CGColor];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

    v8 = objc_alloc_init(MEMORY[0x1E6979380]);
    [(CAGradientLayer *)v8 setColors:v7];
    [(CAGradientLayer *)v8 setLocations:&unk_1EFF12E00];
    [(CAGradientLayer *)v8 setStartPoint:0.5, 0.0];
    [(CAGradientLayer *)v8 setEndPoint:0.5, 1.0];
    v9 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v9 setIgnoresTouches:1];
    [(AVView *)v9 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v9 setAutoresizingMask:0];
    layer = [(AVGlassBackedGroupView *)v9 layer];
    [layer setMask:v8];

    transportControlsContainerMask = self->_transportControlsContainerMask;
    self->_transportControlsContainerMask = v8;
    v12 = v8;

    transportControlsContainerView = self->_transportControlsContainerView;
    self->_transportControlsContainerView = v9;
    v14 = v9;

    [(AVMobileGlassControlsView *)self addSubview:v14];
  }
}

- (void)_setUpTopControlsContainerViewIfNeeded
{
  if (!self->_topControlsContainerView)
  {
    v3 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v3 setAutoresizingMask:0];
    topControlsContainerView = self->_topControlsContainerView;
    self->_topControlsContainerView = v3;
    v5 = v3;

    [(AVMobileGlassControlsView *)self addSubview:v5];
  }
}

- (void)_setUpPlaybackControlsContainerViewIfNeeded
{
  if (!self->_playbackControlsContainerView)
  {
    v3 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v3 setAutoresizingMask:0];
    playbackControlsContainerView = self->_playbackControlsContainerView;
    self->_playbackControlsContainerView = v3;
    v5 = v3;

    [(AVMobileGlassControlsView *)self addSubview:v5];
  }
}

- (void)_setUpContentTabsContainerViewIfNeeded
{
  if (!self->_contentTabsContainerView)
  {
    v3 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v3 setAutoresizingMask:0];
    contentTabsContainerView = self->_contentTabsContainerView;
    self->_contentTabsContainerView = v3;
    v5 = v3;

    [(AVMobileGlassControlsView *)self addSubview:v5];
  }
}

- (void)updateForContentIntersection
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassControlsView;
  [(AVView *)&v5 updateForContentIntersection];
  traitCollection = [(AVMobileGlassControlsView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (self->_displayModeControlsView == invalidatedCopy || self->_volumeControlsView == invalidatedCopy || self->_auxiliaryControlsView == invalidatedCopy || self->_titlebarView == invalidatedCopy || self->_transportControlsView == invalidatedCopy)
  {
    v5 = invalidatedCopy;
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    invalidatedCopy = v5;
  }
}

- (void)layoutSubviews
{
  v247 = *MEMORY[0x1E69E9840];
  if (![(AVMobileGlassControlsView *)self layoutAllowed])
  {
    goto LABEL_114;
  }

  [(AVMobileGlassControlsView *)self bounds];
  v213 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(AVView *)self contentIntersection];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  traitCollection = [(AVMobileGlassControlsView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    v248.origin.x = v11;
    v248.origin.y = v13;
    v248.size.width = v15;
    v248.size.height = v17;
    IsNull = CGRectIsNull(v248);

    if (IsNull)
    {
      v15 = v7;
      v20 = v213;
    }

    else
    {
      v20 = v11;
    }

    if (IsNull)
    {
      v13 = v5;
      v21 = v9;
    }

    else
    {
      v21 = v17;
    }
  }

  else
  {

    v15 = v7;
    v20 = v213;
    v13 = v5;
    v21 = v9;
  }

  layoutMarginsGuide = [(AVMobileGlassControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v215 = v24;
  v216 = v23;
  v210 = v25;
  v212 = v26;

  includedControls = self->_layoutConfiguration.includedControls;
  v219 = *&self->_layoutConfiguration.excludedControls;
  controlsPadding = self->_layoutConfiguration.controlsPadding;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  v28 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  contentTabPresented = self->_layoutConfiguration.contentTabPresented;
  contentTabsDismissing = self->_layoutConfiguration.contentTabsDismissing;
  contentTabTransitioning = self->_layoutConfiguration.contentTabTransitioning;
  v31 = *(&self->_layoutConfiguration.timelineSliderInsets.left + 3);
  v242 = *(&self->_layoutConfiguration.contentTabTransitioning + 1);
  v243[0] = v31;
  *(v243 + 13) = *&self->_layoutConfiguration.timelineSliderInsets.right;
  bottom = self->_layoutConfiguration.volumeSliderInsets.bottom;
  left = self->_layoutConfiguration.volumeSliderInsets.left;
  right = self->_layoutConfiguration.volumeSliderInsets.right;
  contentTabsPresentationLayout = self->_layoutConfiguration.contentTabsPresentationLayout;
  contentTabsLayout = self->_layoutConfiguration.contentTabsLayout;
  contentTabPresentationHeight = self->_layoutConfiguration.contentTabPresentationHeight;
  [(AVMobileGlassBackgroundView *)self->_backgroundView setFrame:v20, v13, v15, v21];
  [(AVGlassBackedGroupView *)self->_contentTabsContainerView setFrame:v213, v5, v7, v9];
  v218 = v219;
  v34 = v28;
  v240 = v242;
  v241[0] = v243[0];
  *(v241 + 13) = *(v243 + 13);
  v236 = 0;
  v35 = v210;
  v36 = v212;
  if (contentTabPresented)
  {
    v36 = v212;
    if (contentTabsPresentationLayout == 1)
    {
      v38 = v215;
      v37 = v216;
      v39 = v212;
      v36 = v212 - (contentTabPresentationHeight - CGRectGetMinY(*(&v35 - 1)));
    }
  }

  v200 = contentTabTransitioning;
  v214 = v34;
  v40 = self->_playbackControlsView;
  effectiveUserInterfaceLayoutDirection = [(AVMobileGlassControlsView *)self effectiveUserInterfaceLayoutDirection];
  [(AVMobileGlassPlaybackControlsView *)v40 intrinsicContentSize];
  v43 = v42;
  [(AVMobileGlassControlsView *)self layoutMargins];
  v45 = v44;
  v47 = v46;
  [(AVMobileGlassControlsView *)self bounds];
  if ((includedControls & 8) != 0)
  {
    v57 = v49;
    v58 = v51;
    v59 = v43;
    v60 = v36;
    v207 = *(MEMORY[0x1E695F058] + 8);
    rect = *MEMORY[0x1E695F058];
    v205 = *(MEMORY[0x1E695F058] + 24);
    v206 = *(MEMORY[0x1E695F058] + 16);
    if (v59 < v60 || vabds_f32(v59, v60) < 0.00000011921)
    {
      v56 = 0.0;
      v196 = v50;
      v198 = v48;
      if (contentTabPresented)
      {
        v54 = (v47 + v210 + v36 + v45 - v43) * 0.5 - controlsPadding;
        if (!contentTabsPresentationLayout)
        {
          v61 = v54 - vabdd_f64(v43 + v54, v36 - contentTabPresentationHeight);
          v56 = contentTabPresentationHeight <= v43 + v54 ? v43 + v54 - (v36 - contentTabPresentationHeight) : 0.0;
          if (contentTabPresentationHeight <= v43 + v54)
          {
            v54 = v61;
          }
        }
      }

      else
      {
        v54 = v57 + (v58 - v43) * 0.5;
      }

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      [currentDevice userInterfaceIdiom];

      v249.size.width = v215;
      v249.origin.x = v216;
      v249.origin.y = v54;
      v249.size.height = v43;
      MinX = CGRectGetMinX(v249);
      v250.size.width = v215;
      v250.origin.x = v216;
      v250.origin.y = v54;
      v250.size.height = v43;
      CGRectGetWidth(v250);
      v251.size.width = v196;
      v251.origin.x = v198;
      v251.origin.y = v57;
      v251.size.height = v58;
      CGRectGetHeight(v251);
      [(AVGlassBackedGroupView *)self->_playbackControlsContainerView setFrame:MinX];
      [(AVGlassBackedGroupView *)self->_playbackControlsContainerView bounds];
      x = v252.origin.x;
      v64 = CGRectGetMidY(v252) + v43 * -0.5;
      v65 = x;
      v55 = v215;
      [(UIView *)v40 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:v65, v64, v215, v43];
      v52 = 1;
      v53 = v216;
    }

    else
    {
      v52 = 0;
      v56 = 0.0;
      v43 = *(MEMORY[0x1E695F058] + 24);
      v55 = *(MEMORY[0x1E695F058] + 16);
      v54 = *(MEMORY[0x1E695F058] + 8);
      v53 = *MEMORY[0x1E695F058];
    }
  }

  else
  {
    v52 = 0;
    v53 = *MEMORY[0x1E695F058];
    v54 = *(MEMORY[0x1E695F058] + 8);
    v55 = *(MEMORY[0x1E695F058] + 16);
    v43 = *(MEMORY[0x1E695F058] + 24);
    v56 = 0.0;
    v205 = v43;
    v206 = v55;
    v207 = v54;
    rect = *MEMORY[0x1E695F058];
  }

  if (contentTabPresented && contentTabsPresentationLayout == 0)
  {
    v66 = v56 + v54;
  }

  else
  {
    v66 = v54;
  }

  BYTE2(v236) = v52;

  v253.origin.x = v53;
  v253.origin.y = v66;
  v253.size.width = v55;
  v253.size.height = v43;
  MaxY = CGRectGetMaxY(v253);
  if (BYTE2(v236) == 1)
  {
    [(AVMobileGlassControlsView *)self bounds];
    v185 = v67;
    v254.origin.x = v216;
    v254.origin.y = v210;
    v254.size.width = v215;
    v254.size.height = v212;
    MinY = CGRectGetMinY(v254);
    v255.origin.x = v216;
    v255.origin.y = v210;
    v255.size.width = v215;
    v255.size.height = v212;
    v68 = CGRectGetMaxY(v255);
    v256.origin.x = v53;
    v256.origin.y = v66;
    v256.size.width = v55;
    v256.size.height = v43;
    v69 = CGRectGetMinY(v256);
    v257.origin.x = v53;
    v257.origin.y = v66;
    v257.size.width = v55;
    v257.size.height = v43;
    v70 = CGRectGetMaxY(v257);
    v71 = v68 - v70;
    v258.origin.x = v216;
    v258.origin.y = v70;
    v258.size.width = v215;
    v258.size.height = v71;
    v184 = CGRectGetMinY(v258);
    v72 = contentTabsPresentationLayout;
    v192 = contentTabsLayout;
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView sizeThatFits:v215, v212];
    v186 = v73;
    v211 = v214;
    v74 = self->_displayModeControlsView;
    v75 = self->_volumeControlsView;
    effectiveUserInterfaceLayoutDirection2 = [(AVMobileGlassControlsView *)self effectiveUserInterfaceLayoutDirection];
    v259.origin.x = v216;
    v259.origin.y = MinY;
    v259.size.width = v215;
    v259.size.height = v69 - MinY - controlsPadding;
    Height = CGRectGetHeight(v259);
    v188 = v70;
    v260.origin.x = v216;
    v260.origin.y = MinY;
    v260.size.width = v215;
    v260.size.height = v69 - MinY - controlsPadding;
    Width = CGRectGetWidth(v260);
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsFullscreenInternalSpacing];
    v80 = v79;
    [(AVMobileGlassVolumeControlsView *)v75 intrinsicContentSize];
    v82 = v81;
    v84 = v83;
    [(AVMobileGlassDisplayModeControlsView *)v74 intrinsicContentSize];
    v86 = Width * 0.5;
    if (v85 >= v84)
    {
      v84 = v85;
    }

    if (v82 >= v86)
    {
      v87 = Width * 0.5;
    }

    else
    {
      v87 = v82;
    }

    if (v87 < v84)
    {
      v87 = v84;
    }

    v190 = v87;
    v88 = Width - v87 - v80;
    if (v86 >= v88)
    {
      v86 = v88;
    }

    [(AVMobileGlassDisplayModeControlsView *)v74 sizeThatFits:v86, v84];
    v90 = v89;
    _controlsExpansionYOffset = [(AVMobileGlassControlsView *)self _controlsExpansionYOffset];
    v187 = v71;
    v91 = 0;
    v92 = v84 < Height;
    if (vabdd_f64(v84, Height) < 2.22044605e-16)
    {
      v92 = 1;
    }

    v93 = v92 & (includedControls >> 1);
    if ((includedControls & 4) != 0)
    {
      v94 = v205;
      v95 = v206;
      y = v207;
      v97 = rect;
      if (!v92)
      {
        goto LABEL_51;
      }

      v98 = Width - (v80 + v90);
      v99 = v98 <= v190;
      if (vabdd_f64(v98, v190) < 2.22044605e-16)
      {
        v99 = 1;
      }

      if (!v93 || !v99)
      {
        [(UIView *)v74 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:v216, MinY - _controlsExpansionYOffset, v90, v84];
        v263.origin.y = v207;
        v263.origin.x = rect;
        v263.size.height = v205;
        v263.size.width = v206;
        v278.origin.x = v216;
        v278.origin.y = MinY - _controlsExpansionYOffset;
        v278.size.width = v90;
        v278.size.height = v84;
        v264 = CGRectUnion(v263, v278);
        v97 = v264.origin.x;
        y = v264.origin.y;
        v95 = v264.size.width;
        v94 = v264.size.height;
        v91 = 1;
        if (v93)
        {
          goto LABEL_52;
        }

        goto LABEL_57;
      }

      v91 = 0;
    }

    v94 = v205;
    v95 = v206;
    y = v207;
    v97 = rect;
LABEL_51:
    if (v93)
    {
LABEL_52:
      if (fabs(left) <= fabs(right))
      {
        v100 = right;
      }

      else
      {
        v100 = left;
      }

      v101 = v216 + Width - v190 + v100;
      [(UIView *)v75 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:v101, MinY - _controlsExpansionYOffset, v190, v84];
      v261.origin.x = v97;
      v261.origin.y = y;
      v261.size.width = v95;
      v261.size.height = v94;
      v277.origin.x = v101;
      v277.origin.y = MinY - _controlsExpansionYOffset;
      v277.size.width = v190;
      v277.size.height = v84;
      v262 = CGRectUnion(v261, v277);
      v97 = v262.origin.x;
      y = v262.origin.y;
      v102 = v262.size.width;
      v103 = v262.size.height;
      v104 = v72;
      goto LABEL_58;
    }

LABEL_57:
    v104 = v72;
    v102 = v95;
    v103 = v94;
LABEL_58:
    v265.origin.x = v97;
    v265.origin.y = y;
    v265.size.width = v102;
    v265.size.height = v103;
    v279.origin.y = v207;
    v279.origin.x = rect;
    v279.size.height = v205;
    v279.size.width = v206;
    v105 = v97;
    v106 = v102;
    v107 = v103;
    if (!CGRectEqualToRect(v265, v279))
    {
      [(AVMobileGlassControlsView *)self bounds];
      v105 = CGRectGetMinX(v266);
      [(AVMobileGlassControlsView *)self bounds];
      v106 = CGRectGetWidth(v267);
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];
      v110 = 50.0;
      if (userInterfaceIdiom == 1)
      {
        v110 = 70.0;
      }

      v107 = v103 + v110;
    }

    [(AVGlassBackedGroupView *)self->_topControlsContainerView setFrame:v105, y, v106, v107];
    BYTE1(v236) = v91;
    HIBYTE(v236) = v93;

    v111 = v211;
    if ((contentTabPresented || v200) && self->_contentTabsView && (includedControls & 0x40) != 0)
    {
      v268.origin.x = v97;
      v268.origin.y = y;
      recta = v102;
      v268.size.width = v102;
      v268.size.height = v103;
      v112 = controlsPadding + CGRectGetMaxY(v268);
      v220 = includedControls;
      v221 = v218;
      v222 = controlsPadding;
      v223 = auxiliaryControlsPlacement;
      v228 = v240;
      v224 = v211;
      v225 = contentTabPresented;
      v226 = contentTabsDismissing;
      v227 = v200;
      *v229 = v241[0];
      *&v229[13] = *(v241 + 13);
      v230 = left;
      v231 = bottom;
      v232 = right;
      v233 = v104;
      v234 = v192;
      v235 = contentTabPresentationHeight;
      v103 = [(AVMobileGlassControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v236 withConfiguration:v216 canFitState:v112, v215, v212 - v103];
      v115 = v114;
      v117 = v116;
      v119 = v118;
      v269.origin.x = v97;
      v269.origin.y = y;
      v269.size.width = recta;
      v269.size.height = v103;
      v120 = CGRectGetMaxY(v269);
      v270.origin.x = v103;
      v270.origin.y = v115;
      v270.size.width = v117;
      v270.size.height = v119;
      v121 = CGRectGetMinY(v270);
      v271.origin.x = v97;
      v271.origin.y = y;
      v271.size.width = recta;
      v271.size.height = v103;
      v122 = v121 - CGRectGetMaxY(v271) - controlsPadding;
      v123 = v185 - contentTabPresentationHeight;
    }

    else
    {
      v123 = 0.0;
      if ((includedControls & 0x40) != 0)
      {
        v122 = v187;
        if (v186 >= v187)
        {
          v120 = v188;
        }

        else
        {
          v220 = includedControls;
          v221 = v218;
          v222 = controlsPadding;
          v223 = auxiliaryControlsPlacement;
          v228 = v240;
          v224 = v211;
          v225 = contentTabPresented;
          v226 = contentTabsDismissing;
          v227 = v200;
          *v229 = v241[0];
          *&v229[13] = *(v241 + 13);
          v230 = left;
          v231 = bottom;
          v232 = right;
          v233 = v104;
          v234 = v192;
          v235 = contentTabPresentationHeight;
          v120 = v188;
          v272.origin.x = [(AVMobileGlassControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v236 withConfiguration:v216 canFitState:v188, v215, v187];
          v124 = v272.origin.x;
          v125 = v272.origin.y;
          v126 = v272.size.width;
          v127 = v272.size.height;
          v128 = v236;
          if (v128 == CGRectEqualToRect(v272, *MEMORY[0x1E695F050]))
          {
            v129 = _AVLog();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              v182 = v236;
              v276.origin.x = v124;
              v276.origin.y = v125;
              v276.size.width = v126;
              v276.size.height = v127;
              v183 = NSStringFromCGRect(v276);
              *buf = 67109378;
              *&buf[4] = v182;
              LOWORD(v245) = 2112;
              *(&v245 + 2) = v183;
              _os_log_error_impl(&dword_18B49C000, v129, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Fitting state and layout rect for content tabs UI does not match. canFitContentTabs: %d  contentTabsLayoutFrame: %@", buf, 0x12u);

              v111 = v211;
            }
          }

          if (v236 == 1)
          {
            v273.origin.x = v124;
            v273.origin.y = v125;
            v273.size.width = v126;
            v273.size.height = v127;
            v120 = v184;
            v122 = CGRectGetMinY(v273) - v184 - controlsPadding;
          }
        }
      }

      else
      {
        v122 = v187;
        v120 = v188;
      }
    }

    v130 = v111;
    if (v123 >= MaxY)
    {
      v131 = v123;
    }

    else
    {
      v131 = MaxY;
    }

    v132 = self->_transportControlsContainerView;
    v133 = self->_transportControlsView;
    [(AVMobileGlassControlsView *)self bounds];
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    _controlsExpansionYOffset2 = [(AVMobileGlassControlsView *)self _controlsExpansionYOffset];
    effectiveUserInterfaceLayoutDirection3 = [(AVMobileGlassControlsView *)self effectiveUserInterfaceLayoutDirection];
    [(AVGlassBackedGroupView *)v132 setFrame:v135, v137, v139, v141];
    [(UIView *)v133 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:v216, v120 + _controlsExpansionYOffset2, v215, v122];
    v144 = v130;
    [(AVMobileGlassControlsView *)self bounds];
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v153 = self->_layoutConfiguration.contentTabPresented || self->_layoutConfiguration.contentTabTransitioning;
    [(AVMobileGlassControlsView *)self bounds];
    v156 = 0.0;
    v157 = 0.0;
    if (v153)
    {
      if (v154 <= v155)
      {
        v158 = 200.0;
      }

      else
      {
        v158 = 20.0;
      }

      v159 = 60.0;
      if (v154 > v155)
      {
        v159 = -30.0;
      }

      v160 = v131 + v159;
      v274.origin.x = v216;
      v274.origin.y = v160;
      v274.size.width = v215;
      v274.size.height = v158;
      v161 = CGRectGetMaxY(v274);
      v275.origin.x = v216;
      v275.origin.y = v160;
      v275.size.width = v215;
      v275.size.height = v158;
      v156 = v161 / v152;
      v157 = CGRectGetMinY(v275) / v152;
    }

    v162 = [MEMORY[0x1E696AD98] numberWithDouble:v157];
    *buf = v162;
    v163 = [MEMORY[0x1E696AD98] numberWithDouble:v156];
    *&v245 = v163;
    *(&v245 + 1) = &unk_1EFF130E0;
    v164 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(CAGradientLayer *)self->_transportControlsContainerMask setFrame:v146, v148, v150, v152];
    [(CAGradientLayer *)self->_transportControlsContainerMask setLocations:v164];
    [MEMORY[0x1E6979518] commit];
  }

  v165 = v236;
  *buf = self->_contentTabsView;
  *&v245 = self->_displayModeControlsView;
  *(&v245 + 1) = self->_playbackControlsView;
  v246 = self->_volumeControlsView;
  v237 = v165 & 0x101;
  v238 = BYTE2(v165) & 1;
  v239 = HIBYTE(v165) & 1;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 4; ++i)
  {
    v169 = *&buf[8 * i];
    v170 = v169;
    if (v169)
    {
      v171 = *(&v237 + i);
      if ([v169 isHidden] == v171)
      {
        [v170 setHidden:v171 ^ 1u];
        if (v171)
        {
          v172 = array2;
        }

        else
        {
          v172 = array;
        }

        [v172 addObject:v170];
      }
    }
  }

  if ([array count])
  {
    v173 = array;
    [(AVMobileGlassControlsView *)self _detachViews:v173];
    if (v173)
    {
      if ([v173 count])
      {
        delegate = [(AVMobileGlassControlsView *)self delegate];
        v175 = objc_opt_respondsToSelector();

        if (v175)
        {
          delegate2 = [(AVMobileGlassControlsView *)self delegate];
          [delegate2 glassControlsView:self didDetachControlsViews:v173];
        }
      }
    }
  }

  if ([array2 count])
  {
    v177 = array2;
    [(AVMobileGlassControlsView *)self _attachViews:v177];
    if (v177)
    {
      if ([v177 count])
      {
        delegate3 = [(AVMobileGlassControlsView *)self delegate];
        v179 = objc_opt_respondsToSelector();

        if (v179)
        {
          delegate4 = [(AVMobileGlassControlsView *)self delegate];
          [delegate4 glassControlsView:self didAttachControlsViews:v177];
        }
      }
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
  }

LABEL_114:
  v217.receiver = self;
  v217.super_class = AVMobileGlassControlsView;
  [(AVView *)&v217 layoutSubviews];
}

- (double)_layoutContentTabsInFrame:(_BYTE *)frame withConfiguration:(double)configuration canFitState:(double)state
{
  v13 = self[69];
  v14 = *(a2 + 24);
  [self layoutMargins];
  v56 = v16;
  v57 = v15;
  v18 = v17;
  v20 = v19;
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  _controlsExpansionYOffset = [(AVMobileGlassControlsView *)self _controlsExpansionYOffset];
  [v13 intrinsicContentSize];
  v24 = v23;
  v58 = v14 + v23 + 50.0;
  v25 = state + a7;
  v26 = *(a2 + 128);
  v55 = a6;
  if (v26 == 1 && (*(a2 + 50) & 1) == 0)
  {
    v27 = *(a2 + 48);
  }

  else
  {
    v27 = 1;
  }

  v28 = *&v27 & ((*a2 & 0x40) >> 6);
  if (v13)
  {
    v29 = *&v27 & ((*a2 & 0x40) >> 6);
  }

  else
  {
    v29 = 0;
  }

  if (a7 >= v58)
  {
    v30 = 1;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = v30 & v28;
  if ((v30 & v28) != 0)
  {
    v32 = v25 - v23;
  }

  else
  {
    v32 = state + a7;
  }

  configurationCopy = configuration;
  if (v26 == 1)
  {
    v34 = v25 + v14;
    if (*(a2 + 49))
    {
      v32 = v34;
    }
  }

  v35 = _controlsExpansionYOffset;
  v54 = v20;
  if (!v29)
  {
    v37 = v23;
    goto LABEL_34;
  }

  v36 = *(a2 + 136) - v23 - v14 - v20;
  if (v36 <= 0.0)
  {
    v36 = a7 - v23 - v14;
  }

  if (v36 >= a7 - v23 - v14)
  {
    v36 = a7 - v23 - v14;
  }

  if (v36 >= 50.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 50.0;
  }

  if ((*(a2 + 50) & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (*(a2 + 48))
  {
LABEL_30:
    [self bounds];
    v39 = 0.0;
    if (v40 > v41)
    {
      v39 = v18;
    }

    v32 = v32 - (v37 - v20 + v39);
    v38 = v14 + v20 + v20 + v24;
    goto LABEL_33;
  }

  v32 = v32 - (v14 - v18);
  v38 = v14 - v20;
LABEL_33:
  v37 = v38 + v37;
LABEL_34:
  v42 = configurationCopy - v57;
  v43 = v35 + v32;
  [self[69] avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{configurationCopy - v57, v35 + v32, v56 + v55 + v57, v37}];
  v45 = *MEMORY[0x1E695F050];
  v44 = *(MEMORY[0x1E695F050] + 8);
  v47 = *(MEMORY[0x1E695F050] + 16);
  v46 = *(MEMORY[0x1E695F050] + 24);
  if (v31)
  {
    [self safeAreaInsets];
    if (v48 < v57)
    {
      v48 = v57;
    }

    if (v49 < v56)
    {
      v49 = v56;
    }

    [self[69] setLayoutMargins:{v18, v48, v54, v49}];
    v62.origin.x = v45;
    v62.origin.y = v44;
    v62.size.width = v47;
    v62.size.height = v46;
    v64.origin.x = v42;
    v64.origin.y = v43;
    v64.size.width = v56 + v55 + v57;
    v64.size.height = v37;
    *&v45 = CGRectUnion(v62, v64);
    if (*(a2 + 48) == 1)
    {
      [self bounds];
      MaxY = CGRectGetMaxY(v63);
      if (*(a2 + 48) == 1 && MaxY - v43 != *(a2 + 136))
      {
        v51 = _AVLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *v61 = 0;
          _os_log_error_impl(&dword_18B49C000, v51, OS_LOG_TYPE_ERROR, "The content tabs layout frame height does not match the given contentTabsPresentationHeight.", v61, 2u);
        }
      }
    }
  }

  if (frame)
  {
    *frame = (a7 >= v58) & v28;
  }

  else
  {
    v52 = _AVLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v52, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. AVMobileGlassControlsViewCanFitState cannot be nil.", buf, 2u);
    }
  }

  return v45;
}

- (void)_attachViews:(uint64_t)views
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (views)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([*(views + 520) containsObject:v9])
          {
            [*(views + 520) removeObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_detachViews:(uint64_t)views
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (views)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if (([*(views + 520) containsObject:v9] & 1) == 0)
          {
            [*(views + 520) addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (double)_controlsExpansionYOffset
{
  [self layoutConfiguration];

  return 0.0;
}

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = AVMobileGlassControlsView;
  [(AVMobileGlassControlsView *)&v2 didMoveToWindow];
}

- (void)glassTransportControlsView:(id)view didDetachControlsViews:(id)views
{
  viewsCopy = views;
  [(AVMobileGlassControlsView *)self _detachViews:viewsCopy];
  delegate = [(AVMobileGlassControlsView *)self delegate];
  [delegate glassControlsView:self didDetachControlsViews:viewsCopy];
}

- (void)glassTransportControlsView:(id)view didAttachControlsViews:(id)views
{
  viewsCopy = views;
  [(AVMobileGlassControlsView *)self _attachViews:viewsCopy];
  delegate = [(AVMobileGlassControlsView *)self delegate];
  [delegate glassControlsView:self didAttachControlsViews:viewsCopy];
}

- (void)setVolumeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassVolumeControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: volumeControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_volumeControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: volumeControlsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    volumeControlsView = self->_volumeControlsView;
  }

  else
  {
    volumeControlsView = 0;
  }

  if (volumeControlsView != viewCopy)
  {
    [(AVMobileGlassVolumeControlsView *)volumeControlsView removeFromSuperview];
    objc_storeStrong(&self->_volumeControlsView, view);
    [(AVView *)self->_volumeControlsView setHidden:1];
    [(AVMobileGlassControlsView *)self _setUpTopControlsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_topControlsContainerView addSubview:self->_volumeControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setTitlebarView:(id)view
{
  viewCopy = view;
  if (self->_titlebarView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_titlebarView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setTitlebarView:self->_titlebarView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)_setUpTransportControlsViewIfNeeded
{
  if (self)
  {
    v2 = !*(self + 536) && !*(self + 568) && !*(self + 584) && *(self + 592) == 0;
    if (*(self + 528) == 1 && !v2 && !*(self + 624))
    {
      [self _setUpTransportControlsContainerViewIfNeeded];
      v5 = *(self + 504);
      v3 = objc_alloc_init(AVMobileGlassTransportControlsView);
      [(AVMobileGlassTransportControlsView *)v3 setDelegate:self];
      [(AVMobileGlassTransportControlsView *)v3 setAutoresizingMask:0];
      [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
      [(AVMobileGlassTransportControlsView *)v3 setLayoutAllowed:1];
      [(AVView *)v3 setIgnoresTouches:1];
      [(AVMobileGlassTransportControlsView *)v3 setStyleSheet:*(self + 608)];
      [v5 addSubview:v3];
      v4 = *(self + 624);
      *(self + 624) = v3;
    }
  }
}

- (void)setTimelineView:(id)view
{
  viewCopy = view;
  if (self->_timelineView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_timelineView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setTimelineView:self->_timelineView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setPlaybackControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassPlaybackControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: playbackControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_playbackControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: playbackControlsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    playbackControlsView = self->_playbackControlsView;
  }

  else
  {
    playbackControlsView = 0;
  }

  if (playbackControlsView != viewCopy)
  {
    [(AVMobileGlassPlaybackControlsView *)playbackControlsView removeFromSuperview];
    objc_storeStrong(&self->_playbackControlsView, view);
    [(AVView *)self->_playbackControlsView setHidden:1];
    [(AVMobileGlassControlsView *)self _setUpPlaybackControlsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_playbackControlsContainerView addSubview:self->_playbackControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveEdgeContentTagView:(id)view
{
  viewCopy = view;
  if (self->_liveEdgeContentTagView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_liveEdgeContentTagView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setLiveEdgeContentTagView:self->_liveEdgeContentTagView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setDisplayModeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassDisplayModeControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_displayModeControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    displayModeControlsView = self->_displayModeControlsView;
  }

  else
  {
    displayModeControlsView = 0;
  }

  if (displayModeControlsView != viewCopy)
  {
    [(AVMobileGlassDisplayModeControlsView *)displayModeControlsView removeFromSuperview];
    objc_storeStrong(&self->_displayModeControlsView, view);
    [(AVView *)self->_displayModeControlsView setHidden:1];
    [(AVMobileGlassControlsView *)self _setUpTopControlsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_topControlsContainerView addSubview:self->_displayModeControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setContentTabsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassContentTabsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: contentTabView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_contentTabsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: contentTabsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    contentTabsView = self->_contentTabsView;
  }

  else
  {
    contentTabsView = 0;
  }

  if (contentTabsView != viewCopy)
  {
    [(AVMobileGlassContentTabsView *)contentTabsView removeFromSuperview];
    objc_storeStrong(&self->_contentTabsView, view);
    [(AVMobileGlassControlsView *)self _setUpContentTabsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_contentTabsContainerView addSubview:self->_contentTabsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassBackgroundView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: backgroundView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_backgroundView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: backgroundView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  if (backgroundView != viewCopy)
  {
    [(AVMobileGlassBackgroundView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    [(AVMobileGlassControlsView *)self insertSubview:self->_backgroundView atIndex:0];
  }
}

- (void)setAuxiliaryControlsView:(id)view
{
  viewCopy = view;
  if (self->_auxiliaryControlsView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_auxiliaryControlsView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setAuxiliaryControlsView:self->_auxiliaryControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setLayoutConfiguration:(AVMobileGlassControlsLayoutConfiguration *)configuration
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v6 = *&self->_layoutConfiguration.expanded;
  v49[0] = *&self->_layoutConfiguration.includedControls;
  v49[1] = v6;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  p_pinnedAuxiliaryControls = &self->_layoutConfiguration.pinnedAuxiliaryControls;
  v51 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  pinnedAuxiliaryControls = configuration->pinnedAuxiliaryControls;
  v41 = configuration->auxiliaryControlsPlacement;
  v9 = *&p_layoutConfiguration->volumeSliderInsets.left;
  v54 = *&p_layoutConfiguration->timelineSliderInsets.right;
  v55 = v9;
  v10 = *&p_layoutConfiguration->contentTabsLayout;
  v56 = *&p_layoutConfiguration->volumeSliderInsets.right;
  v57 = v10;
  v11 = *&p_layoutConfiguration->timelineSliderInsets.left;
  v52 = *&p_layoutConfiguration->contentTabPresented;
  v53 = v11;
  v12 = *&configuration->expanded;
  v39 = *&configuration->includedControls;
  v40 = v12;
  v42 = pinnedAuxiliaryControls;
  v13 = *&configuration->volumeSliderInsets.left;
  v45 = *&configuration->timelineSliderInsets.right;
  v46 = v13;
  v14 = *&configuration->contentTabsLayout;
  v47 = *&configuration->volumeSliderInsets.right;
  v48 = v14;
  v15 = *&configuration->timelineSliderInsets.left;
  v43 = *&configuration->contentTabPresented;
  v44 = v15;
  if (!AVMobileGlassControlsLayoutConfigurationsEqual(v49, &v39))
  {
    v16 = *&configuration->includedControls;
    v17 = *&configuration->expanded;
    p_layoutConfiguration->auxiliaryControlsPlacement = configuration->auxiliaryControlsPlacement;
    *&p_layoutConfiguration->includedControls = v16;
    *&p_layoutConfiguration->expanded = v17;
    objc_storeStrong(p_pinnedAuxiliaryControls, configuration->pinnedAuxiliaryControls);
    v18 = *&configuration->timelineSliderInsets.left;
    *&p_layoutConfiguration->contentTabPresented = *&configuration->contentTabPresented;
    *&p_layoutConfiguration->timelineSliderInsets.left = v18;
    v19 = *&configuration->timelineSliderInsets.right;
    v20 = *&configuration->volumeSliderInsets.left;
    v21 = *&configuration->contentTabsLayout;
    *&p_layoutConfiguration->volumeSliderInsets.right = *&configuration->volumeSliderInsets.right;
    *&p_layoutConfiguration->contentTabsLayout = v21;
    *&p_layoutConfiguration->timelineSliderInsets.right = v19;
    *&p_layoutConfiguration->volumeSliderInsets.left = v20;
    v22 = configuration->pinnedAuxiliaryControls;
    v31 = configuration->auxiliaryControlsPlacement;
    transportControlsView = self->_transportControlsView;
    v24 = *&configuration->expanded;
    v29 = *&configuration->includedControls;
    v30 = v24;
    v25 = v22;
    v32 = v25;
    v26 = *&configuration->volumeSliderInsets.left;
    v35 = *&configuration->timelineSliderInsets.right;
    v36 = v26;
    v27 = *&configuration->contentTabsLayout;
    v37 = *&configuration->volumeSliderInsets.right;
    v38 = v27;
    v28 = *&configuration->timelineSliderInsets.left;
    v33 = *&configuration->contentTabPresented;
    v34 = v28;
    if (transportControlsView)
    {
      [(AVMobileGlassTransportControlsView *)transportControlsView setLayoutConfiguration:&v29];
    }

    else
    {
    }

    [(AVMobileGlassControlsView *)self setNeedsLayout:v29];
  }
}

- (void)setLayoutAllowed:(BOOL)allowed
{
  if (self->_layoutAllowed != allowed)
  {
    self->_layoutAllowed = allowed;
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setLayoutAllowed:?];
    if (self->_layoutAllowed)
    {
      [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];

      [(AVMobileGlassControlsView *)self setNeedsLayout];
    }
  }
}

- (NSArray)detachedViews
{
  v2 = [(NSMutableArray *)self->_detachedViews copy];

  return v2;
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v13 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    auxiliaryControlsView = [(AVMobileGlassControlsView *)self auxiliaryControlsView];
    displayModeControlsView = [(AVMobileGlassControlsView *)self displayModeControlsView];
    liveEdgeContentTagView = [(AVMobileGlassControlsView *)self liveEdgeContentTagView];
    playbackControlsView = [(AVMobileGlassControlsView *)self playbackControlsView];
    timelineView = [(AVMobileGlassControlsView *)self timelineView];
    titlebarView = [(AVMobileGlassControlsView *)self titlebarView];
    transportControlsView = [(AVMobileGlassControlsView *)self transportControlsView];
    [auxiliaryControlsView setStyleSheet:self->_styleSheet];
    [displayModeControlsView setStyleSheet:self->_styleSheet];
    [liveEdgeContentTagView setStyleSheet:self->_styleSheet];
    [playbackControlsView setStyleSheet:self->_styleSheet];
    [timelineView setStyleSheet:self->_styleSheet];
    [titlebarView setStyleSheet:self->_styleSheet];
    [transportControlsView setStyleSheet:self->_styleSheet];

    [(AVMobileGlassControlsView *)self setNeedsLayout];
    sheetCopy = v13;
  }
}

- (AVMobileGlassControlsView)init
{
  v8.receiver = self;
  v8.super_class = AVMobileGlassControlsView;
  v2 = [(AVMobileGlassControlsView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 632) = 0u;
    *(v2 + 648) = 0u;
    v4 = *(v2 + 84);
    *(v2 + 83) = 0;
    *(v2 + 84) = 0;

    *(v3 + 744) = 0u;
    *(v3 + 760) = 0u;
    *(v3 + 712) = 0u;
    *(v3 + 728) = 0u;
    *(v3 + 680) = 0u;
    *(v3 + 696) = 0u;
    v3[528] = 1;
    array = [MEMORY[0x1E695DF70] array];
    v6 = *(v3 + 65);
    *(v3 + 65) = array;
  }

  return v3;
}

@end