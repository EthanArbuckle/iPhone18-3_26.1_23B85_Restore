@interface AVMobileChromelessControlsView
- (AVMobileChromelessControlsLayoutConfiguration)layoutConfiguration;
- (AVMobileChromelessControlsView)init;
- (AVMobileChromelessControlsViewDelegate)delegate;
- (CGRect)contentIntersection;
- (double)_controlsExpansionYOffset;
- (double)_layoutContentTabsInFrame:(uint64_t)frame withConfiguration:(double)configuration canFitState:(double)state;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)layoutSubviews;
- (void)setAuxiliaryControlsView:(id)view;
- (void)setBackgroundView:(id)view;
- (void)setContentIntersection:(CGRect)intersection;
- (void)setContentTabsView:(id)view;
- (void)setDisplayModeControlsView:(id)view;
- (void)setLayoutAllowed:(BOOL)allowed;
- (void)setLayoutConfiguration:(AVMobileChromelessControlsLayoutConfiguration *)configuration;
- (void)setLiveEdgeContentTagView:(id)view;
- (void)setPlaybackControlsView:(id)view;
- (void)setTimelineView:(id)view;
- (void)setTitlebarView:(id)view;
- (void)setVolumeControlsView:(id)view;
@end

@implementation AVMobileChromelessControlsView

- (AVMobileChromelessControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVMobileChromelessControlsLayoutConfiguration)layoutConfiguration
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v5 = *&self->_layoutConfiguration.controlsPadding;
  *&retstr->includedControls = *&self->_layoutConfiguration.includedControls;
  *&retstr->controlsPadding = v5;
  result = self->_layoutConfiguration.pinnedAuxiliaryControls;
  retstr->pinnedAuxiliaryControls = result;
  *&retstr->contentTabPresented = *&p_layoutConfiguration->contentTabPresented;
  *&retstr->timelineSliderInsets.left = *&p_layoutConfiguration->timelineSliderInsets.left;
  *&retstr->timelineSliderInsets.right = *&p_layoutConfiguration->timelineSliderInsets.right;
  retstr->contentTabPresentationHeight = p_layoutConfiguration->contentTabPresentationHeight;
  return result;
}

- (CGRect)contentIntersection
{
  x = self->_contentIntersection.origin.x;
  y = self->_contentIntersection.origin.y;
  width = self->_contentIntersection.size.width;
  height = self->_contentIntersection.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContentIntersection:(CGRect)intersection
{
  height = intersection.size.height;
  width = intersection.size.width;
  y = intersection.origin.y;
  x = intersection.origin.x;
  p_contentIntersection = &self->_contentIntersection;
  if (!CGRectEqualToRect(self->_contentIntersection, intersection))
  {
    p_contentIntersection->origin.x = x;
    p_contentIntersection->origin.y = y;
    p_contentIntersection->size.width = width;
    p_contentIntersection->size.height = height;
    traitCollection = [(AVMobileChromelessControlsView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {

      [(AVMobileChromelessControlsView *)self setNeedsLayout];
    }
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  if (self->_displayModeControlsView == invalidated || self->_volumeControlsView == invalidated)
  {
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v214 = *MEMORY[0x1E69E9840];
  if (![(AVMobileChromelessControlsView *)self layoutAllowed])
  {
    goto LABEL_140;
  }

  traitCollection = [(AVMobileChromelessControlsView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1 && !CGRectIsNull(self->_contentIntersection))
  {
    y = self->_contentIntersection.origin.y;
    x = self->_contentIntersection.origin.x;
    height = self->_contentIntersection.size.height;
    width = self->_contentIntersection.size.width;
  }

  else
  {
    [(AVMobileChromelessControlsView *)self bounds];
    y = v5;
    x = v4;
    height = v7;
    width = v6;
  }

  layoutMarginsGuide = [(AVMobileChromelessControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  rect.origin.x = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  includedControls = self->_layoutConfiguration.includedControls;
  v17 = *&self->_layoutConfiguration.expanded;
  controlsPadding = self->_layoutConfiguration.controlsPadding;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  v19 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  contentTabPresented = self->_layoutConfiguration.contentTabPresented;
  contentTabTransitioning = self->_layoutConfiguration.contentTabTransitioning;
  v200 = *(&self->_layoutConfiguration.contentTabTransitioning + 1);
  *v201 = *(&self->_layoutConfiguration.timelineSliderInsets.left + 2);
  contentTabsPresentationLayout = self->_layoutConfiguration.contentTabsPresentationLayout;
  *&v201[14] = self->_layoutConfiguration.timelineSliderInsets.right;
  contentTabPresentationHeight = self->_layoutConfiguration.contentTabPresentationHeight;
  v23 = v19;
  v199 = 0;
  v24 = v15;
  if (contentTabPresented)
  {
    v24 = v15;
    if (contentTabsPresentationLayout == 1)
    {
      v215.origin.x = rect.origin.x;
      v215.origin.y = v11;
      v215.size.width = v13;
      v215.size.height = v15;
      v24 = v15 - (contentTabPresentationHeight - CGRectGetMinY(v215));
    }
  }

  v177 = v17;
  *&rect.origin.y = v23;
  v25 = self->_playbackControlsView;
  effectiveUserInterfaceLayoutDirection = [(AVMobileChromelessControlsView *)self effectiveUserInterfaceLayoutDirection];
  [(AVMobileChromelessPlaybackControlsView *)v25 intrinsicContentSize];
  if ((includedControls & 8) != 0)
  {
    v28 = v27;
    v29 = v27;
    v30 = v24;
    v31 = vabds_f32(v29, v30);
    if (v29 < v30 || v31 < 0.00000011921)
    {
      v33 = v11 + (v24 - v28) * 0.5;
      v179 = v13;
      [(UIView *)v25 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:rect.origin.x, v33, v13, v28];
      BYTE4(v199) = 1;

      v216.origin.x = rect.origin.x;
      v216.origin.y = v11;
      v216.size.width = v13;
      v216.size.height = v15;
      MinY = CGRectGetMinY(v216);
      v217.origin.x = rect.origin.x;
      v217.origin.y = v11;
      v217.size.width = v13;
      v217.size.height = v15;
      MaxY = CGRectGetMaxY(v217);
      v218.origin.x = rect.origin.x;
      v218.origin.y = v33;
      v218.size.width = v13;
      v218.size.height = v28;
      r1 = CGRectGetMinY(v218);
      v219.origin.x = rect.origin.x;
      v219.origin.y = v33;
      v219.size.width = v13;
      v219.size.height = v28;
      v36 = CGRectGetMaxY(v219);
      v168 = contentTabTransitioning;
      v220.origin.y = controlsPadding + v36;
      v220.size.height = MaxY - v36 - controlsPadding;
      v220.origin.x = rect.origin.x;
      v173 = v220.origin.y;
      v174 = v220.size.height;
      v220.size.width = v13;
      v164 = CGRectGetMinY(v220);
      v170 = *&rect.origin.y;
      v37 = self->_displayModeControlsView;
      v38 = self->_volumeControlsView;
      effectiveUserInterfaceLayoutDirection2 = [(AVMobileChromelessControlsView *)self effectiveUserInterfaceLayoutDirection];
      [(AVMobileChromelessDisplayModeControlsView *)v37 intrinsicContentSize];
      v41 = v40;
      v172 = MinY;
      [(AVMobileChromelessVolumeControlsView *)v38 intrinsicContentSize];
      if (v41 >= v42)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      [(AVMobileChromelessDisplayModeControlsView *)v37 sizeThatFits:v13 * 0.5, v43];
      v45 = v44;
      v169 = auxiliaryControlsPlacement;
      v171 = v13;
      _controlsExpansionYOffset = [(AVMobileChromelessControlsView *)self _controlsExpansionYOffset];
      v46 = *MEMORY[0x1E695F058];
      v175 = *(MEMORY[0x1E695F058] + 8);
      v48 = *(MEMORY[0x1E695F058] + 16);
      v47 = *(MEMORY[0x1E695F058] + 24);
      v49 = v43 <= r1 - v172 - controlsPadding;
      v50 = v49 & (includedControls >> 2);
      if (v50 == 1)
      {
        r1a = *(MEMORY[0x1E695F058] + 24);
        [(UIView *)v37 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:rect.origin.x, v172 - _controlsExpansionYOffset, v45, v43];
        v221.origin.x = v46;
        v221.origin.y = v175;
        v221.size.width = v48;
        v221.size.height = r1a;
        v233.origin.x = rect.origin.x;
        v233.origin.y = v172 - _controlsExpansionYOffset;
        v233.size.width = v45;
        v233.size.height = v43;
        v222 = CGRectUnion(v221, v233);
        v175 = v222.origin.y;
        v46 = v222.origin.x;
        v48 = v222.size.width;
        v47 = v222.size.height;
      }

      v51 = v49 & (includedControls >> 1);
      if (v51)
      {
        v52 = v46;
        [(AVMobileChromelessVolumeControlsView *)v38 intrinsicContentSize];
        if (v53 >= v171 - v45)
        {
          v54 = v171 - v45;
        }

        else
        {
          v54 = v53;
        }

        [(UIView *)v38 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:rect.origin.x + v171 - v54, v172 - _controlsExpansionYOffset, v54, v43];
        v223.origin.x = v52;
        v223.origin.y = v175;
        v223.size.width = v48;
        v223.size.height = v47;
        v234.origin.x = rect.origin.x + v171 - v54;
        v234.origin.y = v172 - _controlsExpansionYOffset;
        v234.size.width = v54;
        v234.size.height = v43;
        v224 = CGRectUnion(v223, v234);
        v175 = v224.origin.y;
        v46 = v224.origin.x;
        v48 = v224.size.width;
        v47 = v224.size.height;
      }

      BYTE2(v199) = v50;
      HIBYTE(v199) = v51;

      v55 = v170;
      if ((contentTabPresented || v168) && self->_contentTabsView && (includedControls & 0x40) != 0)
      {
        v56 = v46;
        v225.origin.x = v46;
        v225.origin.y = v175;
        v225.size.width = v48;
        v225.size.height = v47;
        v57 = controlsPadding + CGRectGetMaxY(v225);
        v188 = includedControls;
        v189 = v177;
        v190 = controlsPadding;
        v191 = v169;
        v192 = v170;
        v193 = contentTabPresented;
        v194 = v168;
        v195 = v200;
        *v196 = *v201;
        *&v196[14] = *&v201[14];
        v197 = contentTabsPresentationLayout;
        v198 = contentTabPresentationHeight;
        v58 = [(AVMobileChromelessControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v199 withConfiguration:rect.origin.x canFitState:v57, v179, v15 - v47];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v65 = v56;
        v226.origin.x = v56;
        v226.origin.y = v175;
        v226.size.width = v48;
        v226.size.height = v47;
        v66 = CGRectGetMaxY(v226);
        v227.origin.x = v58;
        v227.origin.y = v60;
        v227.size.width = v62;
        v227.size.height = v64;
        v67 = CGRectGetMinY(v227);
        v228.origin.x = v65;
        v228.origin.y = v175;
        v228.size.width = v48;
        v228.size.height = v47;
        v173 = controlsPadding + v66;
        v174 = v67 - controlsPadding - CGRectGetMaxY(v228) - controlsPadding;
      }

      else if ((includedControls & 0x40) != 0)
      {
        v68 = self->_auxiliaryControlsView;
        v69 = self->_timelineView;
        v70 = self->_titlebarView;
        v71 = self->_layoutConfiguration.includedControls;
        v72 = self->_layoutConfiguration.controlsPadding;
        v176 = self->_layoutConfiguration.auxiliaryControlsPlacement;
        v73 = self->_layoutConfiguration.pinnedAuxiliaryControls;
        [(AVMobileChromelessTimelineView *)v69 intrinsicContentSize];
        v75 = v74;
        [(AVMobileTitlebarView *)v70 intrinsicContentSize];
        v77 = v76;
        [(AVMobileAuxiliaryControlsView *)v68 sizeFittingControls:v73];
        v79 = v78;

        v80 = (v71 & 0x10) == 0;
        if (v71)
        {
          v81 = v75;
        }

        else
        {
          v81 = 0.0;
        }

        if (v81 >= v79)
        {
          v82 = v81;
        }

        else
        {
          v82 = v79;
        }

        v83 = v176 != 1 || (v71 & 0x10) == 0;
        if (v176 == 1)
        {
          v80 = 1;
        }

        if (!v83)
        {
          v81 = v82;
        }

        if ((v71 & 0x20) != 0)
        {
          v84 = v77;
        }

        else
        {
          v84 = 0.0;
        }

        if (v84 >= v79)
        {
          v85 = v84;
        }

        else
        {
          v85 = v79;
        }

        if (!v80)
        {
          v84 = v85;
        }

        v86 = v84 == 0.0 || v81 == 0.0;
        v87 = v81 + v84 + 0.0;
        if (!v86)
        {
          v87 = v72 + v87;
        }

        if (v87 >= v174)
        {
          v55 = v170;
        }

        else
        {
          v188 = includedControls;
          v189 = v177;
          v190 = controlsPadding;
          v55 = v170;
          v191 = v169;
          v192 = v170;
          v193 = contentTabPresented;
          v194 = v168;
          v195 = v200;
          *v196 = *v201;
          *&v196[14] = *&v201[14];
          v197 = contentTabsPresentationLayout;
          v198 = contentTabPresentationHeight;
          v229.origin.x = [(AVMobileChromelessControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v199 withConfiguration:rect.origin.x canFitState:v173, v179, v174];
          v88 = v229.origin.x;
          v89 = v229.origin.y;
          v90 = v229.size.width;
          v91 = v229.size.height;
          v92 = BYTE1(v199);
          if (v92 == CGRectEqualToRect(v229, *MEMORY[0x1E695F050]))
          {
            v93 = _AVLog();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              v162 = BYTE1(v199);
              v232.origin.x = v88;
              v232.origin.y = v89;
              v232.size.width = v90;
              v232.size.height = v91;
              v163 = NSStringFromCGRect(v232);
              *buf = 67109378;
              *&buf[4] = v162;
              LOWORD(v208) = 2112;
              *(&v208 + 2) = v163;
              _os_log_error_impl(&dword_18B49C000, v93, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Fitting state and layout rect for content tabs UI does not match. canFitContentTabs: %d  contentTabsLayoutFrame: %@", buf, 0x12u);
            }
          }

          if (BYTE1(v199) == 1)
          {
            v230.origin.x = v88;
            v230.origin.y = v89;
            v230.size.width = v90;
            v230.size.height = v91;
            v173 = v164;
            v174 = CGRectGetMinY(v230) - v164 - controlsPadding;
          }
        }
      }

      v94 = v55;
      v95 = self->_auxiliaryControlsView;
      v96 = self->_liveEdgeContentTagView;
      v97 = self->_timelineView;
      v98 = self->_titlebarView;
      effectiveUserInterfaceLayoutDirection3 = [(AVMobileChromelessControlsView *)self effectiveUserInterfaceLayoutDirection];
      v100 = v94;
      [(AVMobileChromelessTimelineView *)v97 intrinsicContentSize];
      if (v174 >= v101)
      {
        v102 = v101;
      }

      else
      {
        v102 = v174;
      }

      [(AVMobileTitlebarView *)v98 intrinsicContentSize];
      v104 = v103;
      [(AVMobileContentTagView *)v96 intrinsicContentSize];
      v106 = v105;
      _controlsExpansionYOffset2 = [(AVMobileChromelessControlsView *)self _controlsExpansionYOffset];
      v178 = v106;
      [(AVMobileAuxiliaryControlsView *)v95 sizeFittingControls:v100];
      v109 = v107;
      v110 = v108;
      v111 = includedControls & 1;
      v112 = v173 + v174;
      if (includedControls)
      {
        v113 = v173 + v174 - v102;
      }

      else
      {
        v113 = v173 + v174;
      }

      if (includedControls)
      {
        v114 = v174 - (v102 - controlsPadding);
      }

      else
      {
        v114 = v174;
      }

      v115 = 0.0;
      if ((includedControls & 0x10) == 0)
      {
LABEL_76:
        v116 = 0;
        v117 = 1;
LABEL_77:
        v118 = v179;
LABEL_104:
        v138 = v117 & (includedControls >> 5);
        if (v114 >= v104)
        {
          v139 = v138;
        }

        else
        {
          v139 = 0;
        }

        if (v111)
        {
          [(UIView *)v97 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:rect.origin.x, _controlsExpansionYOffset2 + v113, v118, v102];
        }

        if (v116)
        {
          [(UIView *)v95 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:rect.origin.x + v171 - v109, _controlsExpansionYOffset2 + v115, v109, v110];
        }

        if (v139)
        {
          [(UIView *)v98 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:rect.origin.x, _controlsExpansionYOffset2 + v113 - controlsPadding - v104, v179, v104];
        }

        LOBYTE(v199) = v116;
        if (v114 >= v178)
        {
          v140 = v111;
        }

        else
        {
          v140 = 0;
        }

        BYTE3(v199) = v140;
        BYTE5(v199) = v111;
        BYTE6(v199) = v139;

        goto LABEL_117;
      }

      if (v169 == 1 || (v114 >= v108 ? (v119 = v179 < v107) : (v119 = 1), v119))
      {
        if (v169 != 1)
        {
          v116 = 0;
          v117 = 0;
          goto LABEL_77;
        }

        v127 = v171 + -150.0;
        v128 = v107;
        if ((v127 > v128 || vabds_f32(v127, v128) < 0.00000011921) && ((v129 = v174, v130 = v108, v129 > v130) || vabds_f32(v129, v130) < 0.00000011921))
        {
          v132 = v110;
          v131 = v109;
        }

        else
        {
          [(AVMobileAuxiliaryControlsView *)v95 sizeFittingControls:MEMORY[0x1E695E0F0]];
          v133 = v131;
          if (v127 <= v133 && vabds_f32(v127, v133) >= 0.00000011921 || ((v134 = v114, v135 = v132, v136 = vabds_f32(v134, v135), v134 <= v135) ? (v137 = v136 < 0.00000011921) : (v137 = 1), !v137))
          {
            v116 = 0;
            v117 = 1;
            v118 = v179;
            v115 = 0.0;
            goto LABEL_104;
          }

          v115 = 0.0;
          if (v131 == *MEMORY[0x1E695F060] && v132 == *(MEMORY[0x1E695F060] + 8))
          {
            goto LABEL_76;
          }
        }

        if (v132 >= v102)
        {
          v161 = v132;
        }

        else
        {
          v161 = v102;
        }

        v114 = v174 - v161 - controlsPadding;
        v118 = v171 - (controlsPadding + v131);
        v115 = v112 - v161 + (v161 - v132) * 0.5;
        v113 = v112 - v161 + (v161 - v102) * 0.5;
        v116 = 1;
        v109 = v131;
        v110 = v132;
      }

      else
      {
        v120 = [(AVMobileTitlebarView *)v98 title:v179];

        if (v120)
        {
          [(AVMobileTitlebarView *)v98 intrinsicContentSize];
          v122 = v121;
          [(AVMobileTitlebarView *)v98 titleLabelCenterYOffset];
          v124 = v123;
          v231.origin.x = 0.0;
          v231.origin.y = 0.0;
          v231.size.width = v109;
          v231.size.height = v110;
          MidY = CGRectGetMidY(v231);
          v126 = controlsPadding;
          v115 = v113 - controlsPadding - (v122 - v124) - MidY;
        }

        else
        {
          v126 = controlsPadding;
          v115 = v113 - v110 - controlsPadding;
        }

        v118 = v179;
        v116 = 1;
        v179 = v171 - (v109 + v126 * 1.5);
      }

      v117 = 1;
      goto LABEL_104;
    }
  }

  BYTE4(v199) = 0;

LABEL_117:
  v141 = v199;
  *buf = self->_auxiliaryControlsView;
  *&v208 = self->_contentTabsView;
  *(&v208 + 1) = self->_displayModeControlsView;
  v209 = self->_liveEdgeContentTagView;
  v210 = self->_playbackControlsView;
  v211 = self->_timelineView;
  v212 = self->_titlebarView;
  v213 = self->_volumeControlsView;
  v202 = v141 & 1;
  v142 = vdupq_n_s64(v141);
  *v142.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v142, xmmword_18B6EC430), vshlq_u64(v142, xmmword_18B6EC420))), 0x1000100010001);
  v203 = vuzp1_s8(*v142.i8, *v142.i8).u32[0];
  v204 = BYTE5(v141) & 1;
  v205 = BYTE6(v141) & 1;
  v206 = HIBYTE(v141) & 1;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 8; ++i)
  {
    v146 = *&buf[8 * i];
    v147 = v146;
    if (v146)
    {
      v148 = *(&v202 + i);
      if ([v146 isHidden] == v148)
      {
        [v147 setHidden:v148 ^ 1u];
        if (v148)
        {
          v149 = array2;
        }

        else
        {
          v149 = array;
        }

        [v149 addObject:v147];
      }
    }
  }

  if ([array count])
  {
    v150 = array;
    v151 = v150;
    if (v150)
    {
      if ([v150 count])
      {
        delegate = [(AVMobileChromelessControlsView *)self delegate];
        v153 = objc_opt_respondsToSelector();

        if (v153)
        {
          delegate2 = [(AVMobileChromelessControlsView *)self delegate];
          [delegate2 chromelessControlsView:self didDetachControlsViews:v151];
        }
      }
    }
  }

  if ([array2 count])
  {
    v155 = array2;
    v156 = v155;
    if (v155)
    {
      if ([v155 count])
      {
        delegate3 = [(AVMobileChromelessControlsView *)self delegate];
        v158 = objc_opt_respondsToSelector();

        if (v158)
        {
          delegate4 = [(AVMobileChromelessControlsView *)self delegate];
          [delegate4 chromelessControlsView:self didAttachControlsViews:v156];
        }
      }
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
  }

  [(AVMobileChromelessBackgroundGradientView *)self->_backgroundView setFrame:x, y, width, height];
LABEL_140:
  *&rect.size.width = self;
  *&rect.size.height = AVMobileChromelessControlsView;
  [(CGSize *)&rect.size layoutSubviews];
}

- (double)_layoutContentTabsInFrame:(uint64_t)frame withConfiguration:(double)configuration canFitState:(double)state
{
  v14 = self[63];
  v15 = a2[2];
  [self layoutMargins];
  v47 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  _controlsExpansionYOffset = [(AVMobileChromelessControlsView *)self _controlsExpansionYOffset];
  configurationCopy = configuration;
  v45 = v22;
  v43 = a6;
  v49.origin.y = a7;
  [v14 intrinsicContentSize];
  v25 = v24;
  v26 = *(MEMORY[0x1E695F050] + 8);
  v48 = v15 + v24 + 50.0;
  v49.origin.x = *MEMORY[0x1E695F050];
  v27 = *(MEMORY[0x1E695F050] + 16);
  v28 = *a2;
  if (v49.origin.y < v48)
  {
    goto LABEL_15;
  }

  r1 = *(MEMORY[0x1E695F050] + 24);
  v29 = state + v49.origin.y;
  v30 = state + v49.origin.y - v24;
  if ((LOBYTE(v28) & 0x40) != 0)
  {
    v29 = v29 - v24;
  }

  v42 = v29;
  if ((LOBYTE(v28) & 0x40) != 0 && v14)
  {
    v31 = a2[11] - v24 - v15 - v20;
    if (v31 >= v49.origin.y - v24 - v15)
    {
      v31 = v49.origin.y - v24 - v15;
    }

    if (v31 >= 50.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 50.0;
    }

    [self layoutMargins];
    if (*(a2 + 41))
    {
      if ((a2[5] & 1) == 0)
      {
        v42 = v30 - (v15 - v47);
        v32 = v15 - v20 + v32;
LABEL_18:
        [v14 setFadeDistance:v33];
        goto LABEL_19;
      }
    }

    else if ((a2[5] & 1) == 0)
    {
      goto LABEL_18;
    }

    v42 = v30 - (v15 + v32 - v47);
    v32 = v15 + v20 + v25 + v32;
    v33 = 0.0;
    goto LABEL_18;
  }

  v32 = v24;
  if ((LOBYTE(v28) & 0x40) == 0)
  {
LABEL_15:
    v34 = *MEMORY[0x1E695F050];
    goto LABEL_25;
  }

LABEL_19:
  [self[63] setLayoutMargins:{v47, v18, v20, v45, r1}];
  [self[63] avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{configurationCopy - v18, _controlsExpansionYOffset + v42, v45 + v43 + v18, v32}];
  v51.origin.x = v49.origin.x;
  v51.origin.y = v26;
  v51.size.width = v27;
  v51.size.height = r1a;
  v53.origin.x = configurationCopy - v18;
  v53.origin.y = _controlsExpansionYOffset + v42;
  v53.size.width = v45 + v43 + v18;
  v53.size.height = v32;
  *&v34 = CGRectUnion(v51, v53);
  if (*(a2 + 40) == 1)
  {
    [self bounds];
    MaxY = CGRectGetMaxY(v52);
    if (*(a2 + 40) == 1 && MaxY - (_controlsExpansionYOffset + v42) != a2[11])
    {
      v36 = _AVLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v36, OS_LOG_TYPE_ERROR, "The content tabs layout frame height does not match the given contentTabsPresentationHeight.", buf, 2u);
      }
    }
  }

LABEL_25:
  if (frame)
  {
    v37 = (LODWORD(v28) >> 6) & 1;
    if (v49.origin.y < v48)
    {
      LOBYTE(v37) = 0;
    }

    *(frame + 1) = v37;
  }

  else
  {
    v38 = _AVLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49.size.width) = 0;
      _os_log_error_impl(&dword_18B49C000, v38, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. AVMobileChromelessControlsViewCanFitState cannot be nil.", &v49.size, 2u);
    }
  }

  return v34;
}

- (double)_controlsExpansionYOffset
{
  [self layoutConfiguration];

  return 0.0;
}

- (void)setVolumeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessVolumeControlsView *)viewCopy superview];

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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: volumeControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    volumeControlsView = self->_volumeControlsView;
  }

  else
  {
    volumeControlsView = 0;
  }

  if (volumeControlsView != viewCopy)
  {
    [(AVMobileChromelessVolumeControlsView *)volumeControlsView removeFromSuperview];
    objc_storeStrong(&self->_volumeControlsView, view);
    [(AVView *)self->_volumeControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_volumeControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setTitlebarView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileTitlebarView *)viewCopy superview];

  if (superview)
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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: titlebarView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    titlebarView = self->_titlebarView;
  }

  else
  {
    titlebarView = 0;
  }

  if (titlebarView != viewCopy)
  {
    [(AVMobileTitlebarView *)titlebarView removeFromSuperview];
    objc_storeStrong(&self->_titlebarView, view);
    [(AVView *)self->_titlebarView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_titlebarView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setTimelineView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessTimelineView *)viewCopy superview];

  if (superview)
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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: timelineView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    timelineView = self->_timelineView;
  }

  else
  {
    timelineView = 0;
  }

  if (timelineView != viewCopy)
  {
    [(AVMobileChromelessTimelineView *)timelineView removeFromSuperview];
    objc_storeStrong(&self->_timelineView, view);
    [(AVView *)self->_timelineView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_timelineView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setPlaybackControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessPlaybackControlsView *)viewCopy superview];

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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: playbackControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    playbackControlsView = self->_playbackControlsView;
  }

  else
  {
    playbackControlsView = 0;
  }

  if (playbackControlsView != viewCopy)
  {
    [(AVMobileChromelessPlaybackControlsView *)playbackControlsView removeFromSuperview];
    objc_storeStrong(&self->_playbackControlsView, view);
    [(AVView *)self->_playbackControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_playbackControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveEdgeContentTagView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileContentTagView *)viewCopy superview];

  if (superview)
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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: liveEdgeContentTagView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    liveEdgeContentTagView = self->_liveEdgeContentTagView;
  }

  else
  {
    liveEdgeContentTagView = 0;
  }

  if (liveEdgeContentTagView != viewCopy)
  {
    [(AVMobileContentTagView *)liveEdgeContentTagView removeFromSuperview];
    objc_storeStrong(&self->_liveEdgeContentTagView, view);
    [(AVMobileContentTagView *)self->_liveEdgeContentTagView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_liveEdgeContentTagView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setDisplayModeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessDisplayModeControlsView *)viewCopy superview];

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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    displayModeControlsView = self->_displayModeControlsView;
  }

  else
  {
    displayModeControlsView = 0;
  }

  if (displayModeControlsView != viewCopy)
  {
    [(AVMobileChromelessDisplayModeControlsView *)displayModeControlsView removeFromSuperview];
    objc_storeStrong(&self->_displayModeControlsView, view);
    [(AVView *)self->_displayModeControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_displayModeControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setContentTabsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessContentTabsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: contentTabView is already a subview of another view.", v9, 2u);
    }
  }

  contentTabsView = self->_contentTabsView;
  if (contentTabsView != viewCopy)
  {
    [(AVMobileChromelessContentTabsView *)contentTabsView removeFromSuperview];
    objc_storeStrong(&self->_contentTabsView, view);
    [(AVMobileChromelessControlsView *)self addSubview:self->_contentTabsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessBackgroundGradientView *)viewCopy superview];

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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: backgroundView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  if (backgroundView != viewCopy)
  {
    [(AVMobileChromelessBackgroundGradientView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    [(AVMobileChromelessControlsView *)self addSubview:self->_backgroundView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileAuxiliaryControlsView *)viewCopy superview];

  if (superview)
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
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: auxiliaryControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    auxiliaryControlsView = self->_auxiliaryControlsView;
  }

  else
  {
    auxiliaryControlsView = 0;
  }

  if (auxiliaryControlsView != viewCopy)
  {
    [(AVMobileAuxiliaryControlsView *)auxiliaryControlsView removeFromSuperview];
    objc_storeStrong(&self->_auxiliaryControlsView, view);
    [(AVView *)self->_auxiliaryControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_auxiliaryControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setLayoutConfiguration:(AVMobileChromelessControlsLayoutConfiguration *)configuration
{
  includedControls = self->_layoutConfiguration.includedControls;
  expanded = self->_layoutConfiguration.expanded;
  controlsPadding = self->_layoutConfiguration.controlsPadding;
  p_layoutConfiguration = &self->_layoutConfiguration;
  pinnedAuxiliaryControls = self->_layoutConfiguration.pinnedAuxiliaryControls;
  p_pinnedAuxiliaryControls = &self->_layoutConfiguration.pinnedAuxiliaryControls;
  v10 = pinnedAuxiliaryControls;
  p_contentTabPresented = &p_layoutConfiguration->contentTabPresented;
  v13 = configuration->pinnedAuxiliaryControls;
  v14 = &configuration->contentTabPresented;
  v19 = expanded == configuration->expanded && includedControls == configuration->includedControls && p_layoutConfiguration->auxiliaryControlsPlacement == configuration->auxiliaryControlsPlacement && controlsPadding == configuration->controlsPadding && v10 == v13 && p_layoutConfiguration->contentTabPresented == configuration->contentTabPresented;
  if (!v19 || p_layoutConfiguration->contentTabPresentationHeight != configuration->contentTabPresentationHeight)
  {
    v20 = *&configuration->controlsPadding;
    *&p_layoutConfiguration->includedControls = *&configuration->includedControls;
    *&p_layoutConfiguration->controlsPadding = v20;
    objc_storeStrong(p_pinnedAuxiliaryControls, configuration->pinnedAuxiliaryControls);
    v21 = *v14;
    v22 = *(v14 + 1);
    v23 = *(v14 + 2);
    *(p_contentTabPresented + 6) = *(v14 + 6);
    *(p_contentTabPresented + 1) = v22;
    *(p_contentTabPresented + 2) = v23;
    *p_contentTabPresented = v21;
    p_pinnedAuxiliaryControls = [(AVMobileChromelessControlsView *)self setNeedsLayout];
    v13 = configuration->pinnedAuxiliaryControls;
  }

  MEMORY[0x1EEE66BB8](p_pinnedAuxiliaryControls, v13);
}

- (void)setLayoutAllowed:(BOOL)allowed
{
  if (self->_layoutAllowed != allowed)
  {
    self->_layoutAllowed = allowed;
    if (allowed)
    {
      [(AVMobileChromelessControlsView *)self setNeedsLayout];
    }
  }
}

- (AVMobileChromelessControlsView)init
{
  v6.receiver = self;
  v6.super_class = AVMobileChromelessControlsView;
  v2 = [(AVMobileChromelessControlsView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 600) = 0u;
    *(v2 + 616) = 0u;
    v4 = *(v2 + 79);
    *(v2 + 79) = 0;

    v3->_layoutConfiguration.contentTabPresentationHeight = 0.0;
    *&v3->_layoutConfiguration.timelineSliderInsets.right = 0u;
    *&v3->_layoutConfiguration.timelineSliderInsets.left = 0u;
    *&v3->_layoutConfiguration.contentTabPresented = 0u;
    v3->_layoutAllowed = 1;
  }

  return v3;
}

@end