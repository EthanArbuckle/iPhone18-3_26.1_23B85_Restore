@interface LPCaptionBarView
- (BOOL)captionTextIsTruncated;
- (CGSize)_layoutCaptionBarForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPCaptionBarView)initWithHost:(id)a3 style:(id)a4 presentationProperties:(id)a5 captionType:(id)a6;
- (UIEdgeInsets)backgroundOutset;
- (UIEdgeInsets)textSafeAreaInset;
- (id)button;
- (id)layoutExclusionsForView:(id)a3;
- (id)primaryIconView;
- (id)secondaryButton;
- (void)_buildViewsForCaptionBarIfNeeded;
- (void)_createBackgroundViewIfNeeded;
- (void)addSubview:(id)a3;
- (void)animateInWithBaseAnimation:(id)a3 currentTime:(double)a4;
- (void)animateOut;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutComponentView;
- (void)setEmphasizedTextExpression:(id)a3;
- (void)setPlaybackInformation:(id)a3;
- (void)setUseProgressSpinner:(BOOL)a3;
- (void)updateDisclosureIndicators;
- (void)updateTextStack;
@end

@implementation LPCaptionBarView

- (LPCaptionBarView)initWithHost:(id)a3 style:(id)a4 presentationProperties:(id)a5 captionType:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = LPCaptionBarView;
  v14 = [(LPComponentView *)&v18 initWithHost:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_style, a4);
    objc_storeStrong(&v15->_presentationProperties, a5);
    objc_storeStrong(&v15->_captionType, a6);
    v16 = v15;
  }

  return v15;
}

- (void)setUseProgressSpinner:(BOOL)a3
{
  self->_useProgressSpinner = a3;
  if (self->_hasEverBuilt)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to update a caption bar after it has been laid out."];
  }
}

- (void)setPlaybackInformation:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inlinePlaybackInformation, a3);
  if (self->_hasEverBuilt)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to update a caption bar after it has been laid out."];
  }
}

- (void)animateOut
{
  v15 = [(LPCaptionBarView *)self layer];
  [v15 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  v16 = [MEMORY[0x1E69794A8] _lp_springWithMass:1.0 stiffness:600.0 damping:400.0];
  LODWORD(v5) = 1039918957;
  LODWORD(v6) = 1012202996;
  LODWORD(v7) = 1058256454;
  LODWORD(v8) = 1064682127;
  v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:v5 :v6 :v7 :v8];
  [v16 setTimingFunction:v9];

  [v16 setBeginTime:v4];
  [v16 setFromValue:&unk_1F2483680];
  v10 = [v16 copy];
  [v10 setKeyPath:@"opacity"];
  [v10 setDelegate:self];
  [v10 setRemovedOnCompletion:0];
  [v10 setFillMode:*MEMORY[0x1E69797E0]];
  [v10 setToValue:&unk_1F2483698];
  v11 = [(LPCaptionBarView *)self layer];
  [v11 addAnimation:v10 forKey:@"captionFadeOutSpring"];

  if (self->_useProgressSpinner)
  {
    v12 = [v16 copy];
    [v12 setKeyPath:@"transform.scale.xy"];
    [v12 setToValue:&unk_1F2483D98];
    v13 = [(LPComponentView *)self->_leftIconView layer];
    [v13 addAnimation:v12 forKey:@"spinnerShrinkOutSpring"];

    v14 = [(LPComponentView *)self->_rightIconView layer];
    [v14 addAnimation:v12 forKey:@"spinnerShrinkOutSpring"];
  }
}

- (void)animateInWithBaseAnimation:(id)a3 currentTime:(double)a4
{
  v20 = a3;
  [(LPCaptionBarView *)self _buildViewsForCaptionBarIfNeeded];
  v6 = [v20 _lp_copyWithBeginTime:a4 + 0.28];
  v7 = [v20 _lp_copyWithBeginTime:a4 + 0.4];
  v8 = [(LPTextStyleable *)self->_aboveTopCaptionView layer];
  [v8 addAnimation:v6 forKey:@"fadeIn"];

  v9 = [(LPTextStyleable *)self->_topCaptionView layer];
  [v9 addAnimation:v6 forKey:@"fadeIn"];

  v10 = [(LPTextStyleable *)self->_bottomCaptionView layer];
  [v10 addAnimation:v7 forKey:@"fadeIn"];

  v11 = [(LPTextStyleable *)self->_belowBottomCaptionView layer];
  [v11 addAnimation:v7 forKey:@"fadeIn"];

  v12 = [(LPComponentView *)self->_leftIconView layer];
  [v12 addAnimation:v7 forKey:@"fadeIn"];

  v13 = [(LPComponentView *)self->_rightIconView layer];
  [v13 addAnimation:v7 forKey:@"fadeIn"];

  v14 = [(LPComponentView *)self->_leftIconBadgeView layer];
  [v14 addAnimation:v7 forKey:@"fadeIn"];

  v15 = [(LPComponentView *)self->_rightIconBadgeView layer];
  [v15 addAnimation:v7 forKey:@"fadeIn"];

  v16 = [(LPPlayButtonView *)self->_playButton layer];
  [v16 addAnimation:v7 forKey:@"fadeIn"];

  v17 = [(LPCaptionBarButtonView *)self->_buttonView layer];
  [v17 addAnimation:v7 forKey:@"fadeIn"];

  v18 = [(LPCaptionBarButtonView *)self->_secondaryButtonView layer];
  [v18 addAnimation:v7 forKey:@"fadeIn"];

  v19 = [(LPCollaborationFooterView *)self->_collaborationFooterView layer];
  [v19 addAnimation:v7 forKey:@"fadeIn"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v7 = a3;
  v5 = [(LPCaptionBarView *)self layer];
  v6 = [v5 animationForKey:@"captionFadeOutSpring"];

  if (v6 == v7)
  {
    [(LPCaptionBarView *)self removeFromSuperview];
  }
}

- (void)layoutComponentView
{
  [(LPCaptionBarView *)self bounds];

  [(LPCaptionBarView *)self _layoutCaptionBarForSize:1 applyingLayout:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LPCaptionBarView *)self _layoutCaptionBarForSize:0 applyingLayout:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutCaptionBarForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  v431 = a4;
  height = a3.height;
  width = a3.width;
  [(LPCaptionBarView *)self _buildViewsForCaptionBarIfNeeded];
  v7 = [(UIView *)self _lp_isLTR];
  style = self->_style;
  if (v7)
  {
    v443 = [(LPCaptionBarStyle *)style leadingIcon];

    v442 = [(LPCaptionBarStyle *)self->_style trailingIcon];

    v404 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconProperties];

    [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconProperties];
  }

  else
  {
    v443 = [(LPCaptionBarStyle *)style trailingIcon];

    v442 = [(LPCaptionBarStyle *)self->_style leadingIcon];

    v404 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconProperties];

    [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconProperties];
  }
  v403 = ;

  if (self->_leftIconView)
  {
    v9 = [v443 margin];
    [v9 asInsetsForLTR:v7];
    rect1_8 = v10;
    v401 = v11;
    v397 = v12;
    v14 = v13;
  }

  else
  {
    v14 = *MEMORY[0x1E69DDCE0];
    rect1_8 = *(MEMORY[0x1E69DDCE0] + 8);
    v401 = *(MEMORY[0x1E69DDCE0] + 16);
    v397 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (self->_rightIconView)
  {
    v15 = [v442 margin];
    [v15 asInsetsForLTR:v7];
    v395 = v16;
    v400 = v17;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = *MEMORY[0x1E69DDCE0];
    v395 = *(MEMORY[0x1E69DDCE0] + 8);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    v400 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  if (self->_playButton)
  {
    v22 = [(LPCaptionBarStyle *)self->_style playButtonPadding];
    [v22 asInsetsForLTR:v7];
    v372 = v23;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v25 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v372 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  if (self->_buttonView)
  {
    v30 = [(LPCaptionBarStyle *)self->_style button];
    v31 = [v30 margin];
    [v31 asInsetsForLTR:v7];
    v387 = v32;
    v424 = v33;
    v393 = v34;
    v426 = v35;
  }

  else
  {
    v387 = *MEMORY[0x1E69DDCE0];
    v424 = *(MEMORY[0x1E69DDCE0] + 8);
    v393 = *(MEMORY[0x1E69DDCE0] + 16);
    v426 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (self->_secondaryButtonView)
  {
    v36 = [(LPCaptionBarStyle *)self->_style secondaryButton];
    v37 = [v36 margin];
    [v37 asInsetsForLTR:v7];
    v349 = v39;
    v351 = v38;
  }

  else
  {
    v349 = *(MEMORY[0x1E69DDCE0] + 24);
    v351 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  v412 = height;
  v380 = v19;
  v382 = v14;
  v371 = v25;
  v422 = v29;
  v428 = v21;
  if (self->_collaborationFooterView)
  {
    v40 = [(LPCaptionBarStyle *)self->_style collaborationFooter];
    v41 = [v40 margin];
    [v41 asInsetsForLTR:v7];
    v378 = v42;
    v377 = v43;
    v361 = v45;
    v362 = v44;
  }

  else
  {
    v378 = *MEMORY[0x1E69DDCE0];
    v377 = *(MEMORY[0x1E69DDCE0] + 16);
    v361 = *(MEMORY[0x1E69DDCE0] + 24);
    v362 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  left = self->_textSafeAreaInset.left;
  right = self->_textSafeAreaInset.right;
  v48 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties button];
  v49 = [v48 requiresInlineButton];
  if (v49)
  {
    v50 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties button];
    v51 = [v50 requiresInlineButton];
    v52 = [v51 BOOLValue];

    if (v52)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v54 = [(LPCaptionBarStyle *)self->_style usesOutOfLineButton];

    if (!v54)
    {
LABEL_24:
      v420 = 0;
      v53 = 0;
      if (v7)
      {
        v426 = v426 + self->_textSafeAreaInset.right;
      }

      else
      {
        v424 = v424 + self->_textSafeAreaInset.left;
      }

      goto LABEL_35;
    }
  }

  if (![(LPCaptionBarStyle *)self->_style buttonIgnoresTextSafeAreaInsets])
  {
    if (v7)
    {
      v426 = v426 + self->_textSafeAreaInset.right;
    }

    else
    {
      v424 = v424 + self->_textSafeAreaInset.left;
    }
  }

  if ([(LPCaptionBarStyle *)self->_style addFullWidthLineForButton])
  {
    v424 = v424 + self->_textSafeAreaInset.left;
    v426 = v426 + self->_textSafeAreaInset.right;
  }

  v420 = 1;
  v53 = 1;
LABEL_35:
  if (self->_collaborationFooterView && [(LPCaptionBarStyle *)self->_style positionButtonRelativeToTextStack])
  {
    v393 = 0.0;
    v400 = 0.0;
    v401 = 0.0;
  }

  v55 = self->_style;
  if (v7)
  {
    v56 = [(LPCaptionBarStyle *)v55 leadingAccessory];

    [(LPCaptionBarStyle *)self->_style trailingAccessory];
  }

  else
  {
    v56 = [(LPCaptionBarStyle *)v55 trailingAccessory];

    [(LPCaptionBarStyle *)self->_style leadingAccessory];
  }
  v379 = ;

  v373 = v56;
  v370 = v53;
  if (self->_leftAccessoryView)
  {
    v57 = [v56 margin];
    [v57 asInsetsForLTR:v7];
    v368 = v59;
    v369 = v58;
    v415 = v60;
    v62 = v61;
  }

  else
  {
    v62 = *(MEMORY[0x1E69DDCE0] + 8);
    v368 = *(MEMORY[0x1E69DDCE0] + 16);
    v369 = *MEMORY[0x1E69DDCE0];
    v415 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (self->_rightAccessoryView)
  {
    v63 = [v379 margin];
    [v63 asInsetsForLTR:v7];
    v366 = v64;
    v367 = v65;
    v413 = v66;
    v68 = v67;
  }

  else
  {
    v413 = *(MEMORY[0x1E69DDCE0] + 8);
    v68 = *(MEMORY[0x1E69DDCE0] + 24);
    v366 = *MEMORY[0x1E69DDCE0];
    v367 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  v69 = [(LPCaptionBarStyle *)self->_style textStack];
  v418 = [v69 captionTextPadding];

  v70 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIcon];
  if (v70 && ([(LPCaptionBarStyle *)self->_style trailingPaddingForPresenceOfLeadingIcon], v71 = objc_claimAutoreleasedReturnValue(), v71, v70, v71))
  {
    v72 = [v418 copy];

    v73 = [(LPCaptionBarStyle *)self->_style trailingPaddingForPresenceOfLeadingIcon];
    [v72 setTrailing:v73];
  }

  else
  {
    v72 = v418;
  }

  if (self->_playButton || (!self->_buttonView ? (v74 = 1) : (v74 = v420), (v74 & 1) == 0))
  {
    v76 = [v72 copy];

    v77 = +[LPPointUnit zero];
    [v76 setTrailing:v77];

    v75 = 1;
  }

  else
  {
    v75 = 0;
    v76 = v72;
  }

  v419 = v76;
  [v76 asInsetsForLTR:v7];
  v79 = v78;
  v81 = v80;
  v364 = v83 + self->_textSafeAreaInset.bottom;
  v365 = v82 + self->_textSafeAreaInset.top;
  [(LPVerticalTextStackView *)self->_textStackView setContentInset:?];
  v374 = v81;
  v375 = v79;
  v84 = MEMORY[0x1E695F058];
  leftAccessoryView = self->_leftAccessoryView;
  rect1_16 = *(MEMORY[0x1E695F058] + 24);
  v406 = rect1_16;
  v407 = *(MEMORY[0x1E695F058] + 16);
  rect1_24 = v407;
  rect1 = *MEMORY[0x1E695F058];
  v386 = *MEMORY[0x1E695F058];
  if (leftAccessoryView)
  {
    [(LPCaptionBarAccessoryView *)leftAccessoryView size];
    v406 = v87;
    v407 = v86;
    v386 = v62;
  }

  rightAccessoryView = self->_rightAccessoryView;
  v391 = rect1_16;
  v392 = rect1_24;
  v388 = rect1;
  if (rightAccessoryView)
  {
    [(LPCaptionBarAccessoryView *)rightAccessoryView size];
    v391 = v89;
    v392 = v90;
    v388 = width - v90 - v68;
  }

  v363 = v75;
  v440 = *(v84 + 8);
  v410 = rect1_8 + left;
  leftIconView = self->_leftIconView;
  v427 = width;
  if (leftIconView)
  {
    v92 = [v443 fixedSize];
    v93 = v27;
    [v92 asSize];
    [(LPComponentView *)leftIconView sizeThatFits:?];
    v417 = v94;
    rect = v95;

    v96 = [v404 verticalAlignment];
    if (!v96)
    {
      v96 = [v443 verticalAlignment];
    }

    v97 = [v443 fixedSize];

    if (v97)
    {
      if (v96 == 3 && [v443 canAdjustVerticalPaddingForFixedSize])
      {
        v98 = [v443 fixedSize];
        [v98 asSize];
        v100 = v99;
        v455.origin.x = rect1;
        v455.origin.y = v440;
        v455.size.width = v417;
        v455.size.height = rect;
        v101 = fmax((v100 - CGRectGetHeight(v455)) * 0.5, 0.0);

        v382 = v382 + v101;
        v401 = v401 + v101;
        width = v427;
      }

      if ([v404 canAdjustHorizontalPaddingForFixedSize])
      {
        v102 = [v443 fixedSize];
        [v102 asSize];
        v104 = v103;
        v456.origin.x = rect1;
        v456.origin.y = v440;
        v456.size.width = v417;
        v456.size.height = rect;
        v105 = fmax((v104 - CGRectGetWidth(v456)) * 0.5, 0.0);

        v410 = v410 + v105;
        v397 = v397 + v105;
        width = v427;
      }
    }

    v106 = [v443 widthForUsingRegularSize];
    if (v106)
    {
      v107 = [v443 widthForUsingRegularSize];
      [v107 value];
      v109 = v108;

      if (width < v109)
      {
        v110 = self->_leftIconView;
        v111 = [v443 reducedSize];
        [v111 asSize];
        [(LPComponentView *)v110 sizeThatFits:?];
        v417 = v112;
        rect = v113;
      }
    }

    if ([v443 scalesToFitParent])
    {
      v114 = [v443 preservesEdgeAlignmentWhenScaling];
      v115 = fmin(width - v410 - v397, v412 - v382 - v401);
      if (v114)
      {
        [(LPComponentView *)self->_leftIconView sizeThatFits:v115, v115];
        v417 = v116;
        rect = v117;
      }

      else
      {
        rect = v115;
        v417 = v115;
      }
    }

    if (self->_leftAccessoryView)
    {
      v457.origin.x = v386;
      v457.origin.y = v440;
      v457.size.height = v406;
      v457.size.width = v407;
      MaxX = CGRectGetMaxX(v457);
    }

    else
    {
      MaxX = 0.0;
    }

    v385 = v410 + MaxX;
  }

  else
  {
    rect = rect1_16;
    v417 = rect1_24;
    v385 = rect1;
    v93 = v27;
  }

  v119 = v428 + right;
  rightIconView = self->_rightIconView;
  if (rightIconView)
  {
    v121 = [v442 fixedSize];
    [v121 asSize];
    [(LPComponentView *)rightIconView sizeThatFits:?];
    v425 = v122;
    v124 = v123;

    v125 = [v403 verticalAlignment];
    if (!v125)
    {
      v125 = [v442 verticalAlignment];
    }

    v126 = [v442 fixedSize];

    if (v126)
    {
      if (v125 == 3 && [v442 canAdjustVerticalPaddingForFixedSize])
      {
        v127 = [v442 fixedSize];
        [v127 asSize];
        v129 = v128;
        v458.origin.x = rect1;
        v458.origin.y = v440;
        v458.size.width = v425;
        v458.size.height = v124;
        v130 = fmax((v129 - CGRectGetHeight(v458)) * 0.5, 0.0);

        v380 = v380 + v130;
        v400 = v400 + v130;
        width = v427;
      }

      if ([v403 canAdjustHorizontalPaddingForFixedSize])
      {
        v131 = [v442 fixedSize];
        [v131 asSize];
        v133 = v132;
        v459.origin.x = rect1;
        v459.origin.y = v440;
        v459.size.width = v425;
        v459.size.height = v124;
        v134 = fmax((v133 - CGRectGetWidth(v459)) * 0.5, 0.0);

        v395 = v395 + v134;
        v119 = v119 + v134;
        width = v427;
      }
    }

    v135 = [v442 widthForUsingRegularSize];
    if (v135)
    {
      v136 = [v442 widthForUsingRegularSize];
      [v136 value];
      v138 = v137;

      if (width < v138)
      {
        v139 = self->_rightIconView;
        v140 = [v442 reducedSize];
        [v140 asSize];
        [(LPComponentView *)v139 sizeThatFits:?];
        v425 = v141;
        v124 = v142;
      }
    }

    if ([v442 scalesToFitParent])
    {
      v124 = fmin(width - v395 - v119, v412 - v380 - v400);
      if ([v442 preservesEdgeAlignmentWhenScaling])
      {
        [(LPComponentView *)self->_rightIconView sizeThatFits:v124, v124];
        v425 = v143;
        v124 = v144;
      }

      else
      {
        v425 = v124;
      }
    }

    v148 = v388;
    if (!self->_rightAccessoryView)
    {
      v148 = width;
    }

    v389 = v119;
    v384 = v148 - v425 - v119;
    v147 = rect1;
    v146 = rect1_24;
    v145 = rect1_16;
  }

  else
  {
    v389 = v428 + right;
    v145 = rect1_16;
    v124 = rect1_16;
    v146 = rect1_24;
    v425 = rect1_24;
    v147 = rect1;
    v384 = rect1;
  }

  v149 = v422 + right;
  v405 = v145;
  v394 = v146;
  v150 = v147;
  if (self->_playButton)
  {
    v151 = [(LPCaptionBarStyle *)self->_style playButton];
    v152 = [v151 size];
    [v152 asSize];
    v394 = v153;
    v405 = v154;

    if (v7)
    {
      v150 = width - v394 - v149;
    }

    else
    {
      v150 = v93;
    }
  }

  v155 = self->_leftAccessoryView;
  if (v155)
  {
    [(LPCaptionBarAccessoryView *)v155 size];
    v406 = v157;
    v407 = v156;
    v386 = v62;
  }

  v158 = self->_rightAccessoryView;
  if (v158)
  {
    [(LPCaptionBarAccessoryView *)v158 size];
    v391 = v159;
    v392 = v160;
    v388 = width - v160 - v68;
  }

  buttonView = self->_buttonView;
  v162 = MEMORY[0x1E695F060];
  rect1_8a = rect1_16;
  v429 = rect1_24;
  v421 = rect1;
  if (buttonView)
  {
    [(LPCaptionBarButtonView *)buttonView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v429 = v163;
    rect1_8a = v164;
    if (v7)
    {
      v165 = width - v163 - v426;
    }

    else
    {
      v165 = v424;
    }

    v421 = v165;
  }

  secondaryButtonView = self->_secondaryButtonView;
  v167 = rect1_16;
  v168 = rect1_24;
  if (secondaryButtonView)
  {
    [(LPCaptionBarButtonView *)secondaryButtonView sizeThatFits:*v162, v162[1]];
  }

  v359 = v168;
  v360 = v167;
  v399 = v124;
  v169 = 0.0;
  if (self->_leftIconView)
  {
    v170 = v397 + v410 + v417;
  }

  else
  {
    v170 = 0.0;
  }

  if (self->_rightIconView)
  {
    v171 = v389 + v395 + v425;
  }

  else
  {
    v171 = 0.0;
  }

  v172 = v149 + v93 + v394;
  if (!self->_playButton)
  {
    v172 = 0.0;
  }

  if (self->_buttonView)
  {
    v173 = v426 + v424 + v429;
  }

  else
  {
    v173 = 0.0;
  }

  v174 = v415 + v62 + v407;
  if (!self->_leftAccessoryView)
  {
    v174 = 0.0;
  }

  if (self->_rightAccessoryView)
  {
    v169 = v68 + v413 + v392;
  }

  v175 = v170 + v174;
  v176 = v171 + v169;
  v358 = v173;
  v177 = v172 + v173 + v175;
  v178 = v172 + v173 + v176;
  if (v7)
  {
    v177 = v175;
  }

  else
  {
    v178 = v176;
  }

  v179 = v172 + v175;
  v180 = v172 + v176;
  if (v7)
  {
    v181 = v175;
  }

  else
  {
    v180 = v176;
    v181 = v179;
  }

  if (v420)
  {
    v182 = v180;
  }

  else
  {
    v182 = v178;
  }

  if (v420)
  {
    v183 = v181;
  }

  else
  {
    v183 = v177;
  }

  if (v183 == 0.0)
  {
    v183 = self->_textSafeAreaInset.left;
  }

  v357 = v150;
  if (v182 == 0.0)
  {
    v182 = self->_textSafeAreaInset.right;
  }

  [(LPVerticalTextStackView *)self->_textStackView sizeThatFits:v427 - (v183 + v182), v412];
  v452[0] = MEMORY[0x1E69E9820];
  v452[1] = 3221225472;
  v452[2] = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_2;
  v452[3] = &unk_1E7A37630;
  v452[4] = self;
  v453 = v431;
  *&v452[5] = v427;
  *&v452[6] = v412;
  v423 = v182 + v183 + v184;
  *&v452[7] = v423;
  *&v452[8] = v184;
  *&v452[9] = v185;
  v414 = v183 + 0.0;
  v416 = v427 - (v183 + v182);
  *&v452[10] = v183 + 0.0;
  v452[11] = 0;
  *&v452[12] = v416;
  v186 = v185;
  *&v452[13] = v185;
  *&v452[14] = v421;
  *&v452[15] = v440;
  *&v452[16] = v429;
  *&v452[17] = rect1_8a;
  v187 = v389;
  v356 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_2(v452);
  if (v356)
  {
    [(LPCaptionBarButtonView *)self->_buttonView collapsedSizeThatFits:*v162, v162[1]];
    v189 = v188;
    v191 = v190;
    v192 = v427 - v188 - v426;
    if (!v7)
    {
      v192 = v424;
    }

    v421 = v192;
    if ((v420 & 1) == 0)
    {
      v193 = v426 + v424 + v189 - v358;
      if (v7)
      {
        v182 = v182 + v193;
      }

      else
      {
        v183 = v183 + v193;
      }
    }

    v198 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties button];
    v199 = [v198 collapsedButton];
    v200 = [v199 shouldHideIconsWhenCollapsed];

    if (v200)
    {
      v183 = v183 - v170;
      v187 = *(MEMORY[0x1E69DDCE0] + 24);
      v395 = *(MEMORY[0x1E69DDCE0] + 8);
      v397 = v187;
      v400 = *(MEMORY[0x1E69DDCE0] + 16);
      v401 = v400;
      v410 = v395;
      v380 = *MEMORY[0x1E69DDCE0];
      v382 = *MEMORY[0x1E69DDCE0];
      v399 = rect1_16;
      v425 = rect1_24;
      v182 = v182 - v171;
      v384 = rect1;
      v385 = rect1;
      v197 = rect1_16;
      v417 = rect1_24;
      v194 = v427;
    }

    else
    {
      v194 = v427;
      v197 = rect;
    }

    v429 = v189;
    if (v183 == 0.0)
    {
      v183 = self->_textSafeAreaInset.left;
    }

    rect1_8a = v191;
    v196 = v380;
    v195 = v382;
    if (v182 == 0.0)
    {
      v182 = self->_textSafeAreaInset.right;
    }

    v416 = v194 - (v183 + v182);
    [(LPVerticalTextStackView *)self->_textStackView sizeThatFits:?];
    v186 = v201;
    v414 = v183 + 0.0;
    v423 = v182 + v183 + v202;
  }

  else
  {
    v194 = v427;
    v196 = v380;
    v195 = v382;
    v197 = rect;
  }

  v203 = [(LPCaptionBarStyle *)self->_style collaborationFooter];
  v390 = v194;
  if ((([v203 useFullWidthDuringSizing] | v431) & 1) == 0)
  {
    v204 = [(LPCaptionBarStyle *)self->_style minimumWidth];
    [v204 value];
    v390 = fmax(v205, v423);
  }

  [(LPCollaborationFooterView *)self->_collaborationFooterView additionalPadding];
  v354 = v207;
  v355 = v206;
  v352 = v209;
  v353 = v208;
  v449[0] = MEMORY[0x1E69E9820];
  v449[1] = 3221225472;
  v449[2] = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_4;
  v449[3] = &unk_1E7A37658;
  v449[4] = self;
  v450 = v7;
  *&v449[5] = v365;
  *&v449[6] = v375;
  *&v449[7] = v364;
  *&v449[8] = v374;
  *&v449[9] = v195;
  *&v449[10] = v410;
  *&v449[11] = v401;
  *&v449[12] = v397;
  *&v449[13] = v196;
  *&v449[14] = v395;
  *&v449[15] = v400;
  *&v449[16] = v187;
  v451 = v363;
  *&v449[17] = v387;
  *&v449[18] = v424;
  *&v449[19] = v393;
  *&v449[20] = v426;
  *&v449[21] = v414;
  v449[22] = 0;
  *&v449[23] = v416;
  *&v449[24] = v186;
  *&v449[25] = v390;
  __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_4(v449);
  [(LPCollaborationFooterView *)self->_collaborationFooterView setAdditionalPadding:?];
  collaborationFooterView = self->_collaborationFooterView;
  if (collaborationFooterView)
  {
    [(LPCollaborationFooterView *)collaborationFooterView sizeThatFits:v390, 1.79769313e308];
    v411 = v211;
    v213 = v212;
  }

  else
  {
    v213 = v162[1];
    v411 = *v162;
  }

  v214 = v393 + v387 + rect1_8a;
  v381 = v213;
  v447[0] = MEMORY[0x1E69E9820];
  v447[1] = 3221225472;
  v447[2] = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_5;
  v447[3] = &unk_1E7A37680;
  v448 = v370;
  v447[4] = self;
  *&v447[5] = v214;
  *&v447[6] = v377 + v378 + v213;
  v215 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_5(v447);
  v216 = v401 + v195 + v197;
  v217 = v400 + v196 + v399;
  v445[0] = MEMORY[0x1E69E9820];
  v445[1] = 3221225472;
  v445[2] = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_6;
  v445[3] = &__block_descriptor_137_e5_d8__0l;
  v446 = v431;
  *&v445[4] = v194;
  *&v445[5] = v412;
  v398 = v215;
  *&v445[6] = v215;
  *&v445[7] = v414;
  v445[8] = 0;
  *&v445[9] = v416;
  *&v445[10] = v186;
  *&v445[11] = v216;
  *&v445[12] = v217;
  *&v445[13] = v372 + v371 + v405;
  *&v445[14] = v214;
  *&v445[15] = v368 + v369 + v406;
  *&v445[16] = v367 + v366 + v391;
  v218 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_6(v445);
  recta = v197;
  v396 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(v218, v216, v385, v440, v417, v197, v219, v443, v404);
  v383 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(v218, v217, v384, v440, v425, v399, v220, v442, v403);
  v221 = v218 * 0.5;
  if (v420)
  {
    if ([(LPCaptionBarStyle *)self->_style alignButtonWithCaptionTextLeadingEdge])
    {
      v222 = 0;
      v223 = v414;
      v224 = v416;
      v225 = v186;
      if (v7)
      {
        v226 = v375 + CGRectGetMinX(*&v223);
      }

      else
      {
        v226 = CGRectGetMaxX(*&v223) - v429 - v374;
      }

      v421 = v226;
    }

    v227 = v218 - rect1_8a - v393;
    if ([(LPCaptionBarStyle *)self->_style canAddLineForButton]&& ![(LPCaptionBarStyle *)self->_style addFullWidthLineForButton])
    {
      if ([(LPCaptionBarStyle *)self->_style positionButtonRelativeToTextStack])
      {
        v460.origin.y = 0.0;
        v460.origin.x = v414;
        v460.size.width = v416;
        v460.size.height = v186;
        v227 = v387 + CGRectGetMaxY(v460);
        v461.origin.x = v421;
        v461.origin.y = v227;
        v461.size.width = v429;
        v461.size.height = rect1_8a;
        v218 = fmax(v218, v393 + CGRectGetMaxY(v461));
        v396 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(v218, v216, v385, v396, v417, recta, v228, v443, v404);
        v383 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(v218, v217, v384, v383, v425, v399, v229, v442, v403);
        v221 = v218 * 0.5;
      }

      else
      {
        v476.origin.y = 0.0;
        v462.origin.x = v421;
        v462.origin.y = v218 - rect1_8a - v393;
        v462.size.width = v429;
        v462.size.height = rect1_8a;
        v476.origin.x = v414;
        v476.size.width = v416;
        v476.size.height = v186;
        if (CGRectIntersectsRect(v462, v476))
        {
          if ([(LPCaptionBarStyle *)self->_style buttonRespectsTextStackPadding])
          {
            v463.origin.y = 0.0;
            v463.origin.x = v414;
            v463.size.width = v416;
            v463.size.height = v186;
            v230 = recta;
            v214 = CGRectGetMaxY(v463) - v227;
          }

          else
          {
            v464.origin.y = 0.0;
            v464.origin.x = v414;
            v464.size.width = v416;
            v464.size.height = v186;
            v230 = recta;
            MaxY = CGRectGetMaxY(v464);
            if (MaxY < fmax(v216, v217))
            {
              v465.origin.x = v385;
              v465.origin.y = v396;
              v465.size.width = v417;
              v465.size.height = recta;
              v376 = CGRectGetMaxY(v465);
              v466.origin.y = v383;
              v466.origin.x = v384;
              v466.size.width = v425;
              v466.size.height = v399;
              v214 = v214 + fmax(MaxY - fmax(v376, CGRectGetMaxY(v466)), 0.0) - fmax(v401, v400);
            }
          }

          v218 = v218 + v214;
          v396 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(v218, v216, v385, v396, v417, v230, v231, v443, v404);
          v383 = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(v218, v217, v384, v383, v425, v399, v233, v442, v403);
          v221 = v218 * 0.5;
          v227 = v218 - rect1_8a - v393;
        }
      }
    }

    if (v7)
    {
      v467.origin.x = v421;
      v467.origin.y = v227;
      v467.size.width = v429;
      v467.size.height = rect1_8a;
      v234 = v426 + CGRectGetMaxX(v467);
    }

    else
    {
      v234 = v358 + v182;
    }

    v423 = fmax(v423, v234);
  }

  else
  {
    v227 = v221 + rect1_8a * -0.5;
  }

  if (!self->_collaborationFooterView)
  {
    goto LABEL_194;
  }

  v235 = [(LPCaptionBarStyle *)self->_style collaborationFooter];
  v236 = [v235 useFullWidth];
  v237 = v361 + v362 + v411;

  if (v236)
  {
    v423 = fmax(v423, v237);
LABEL_194:
    y = v440;
    goto LABEL_201;
  }

  if (!v7)
  {
    v237 = v182 + v237;
  }

  v238 = v429;
  if (self->_buttonView)
  {
    v239 = v421;
    v240 = v227;
    v241 = rect1_8a;
    v242 = CGRectGetMaxY(*(&v238 - 2));
  }

  else
  {
    v468.origin.y = 0.0;
    v468.origin.x = v414;
    v468.size.width = v416;
    v468.size.height = v186;
    v243 = CGRectGetMaxY(v468);
    v469.origin.x = v385;
    v469.origin.y = v396;
    v469.size.width = v417;
    v469.size.height = recta;
    v244 = CGRectGetMaxY(v469);
    v470.origin.y = v383;
    v470.origin.x = v384;
    v470.size.width = v425;
    v470.size.height = v399;
    v242 = fmax(fmax(v243, v244), CGRectGetMaxY(v470));
  }

  v471.origin.y = v378 + v242;
  v471.origin.x = rect1;
  y = v471.origin.y;
  v471.size.width = v411;
  v471.size.height = v381;
  v423 = fmax(v423, v237);
  v218 = fmax(v218, v377 + CGRectGetMaxY(v471));
LABEL_201:
  v245 = round((v394 - v218) * 0.5);
  v246 = round((v405 - v218) * 0.5);
  [(LPPlayButtonView *)self->_playButton setContentInset:-v245, -v246, -v246, -v245];
  if (!v431)
  {
    [(LPCollaborationFooterView *)self->_collaborationFooterView setAdditionalPadding:v355, v354, v353, v352];
    goto LABEL_254;
  }

  [(LPComponentView *)self->_leftIconView setFrame:v385, v396, v417, recta];
  [(LPComponentView *)self->_rightIconView setFrame:v384, v383, v425, v399];
  [(LPPlayButtonView *)self->_playButton setFrame:v357 + v245, round(v221 - v405 * 0.5) + v246, v218, v218];
  [(LPCaptionBarAccessoryView *)self->_leftAccessoryView setFrame:v386, v221 - v406 * 0.5, v407];
  [(LPCaptionBarAccessoryView *)self->_rightAccessoryView setFrame:v388, v221 - v391 * 0.5, v392];
  top = self->_backgroundOutset.top;
  v248 = self->_backgroundOutset.left;
  v249 = 0.0 - v248;
  v250 = 0.0 - top;
  v251 = v427 - (-self->_backgroundOutset.right - v248);
  v252 = v412 - (-self->_backgroundOutset.bottom - top);
  blurEffectView = self->_blurEffectView;
  if (blurEffectView)
  {
    [(UIVisualEffectView *)blurEffectView setFrame:v249, v250, v251, v252];
  }

  [(LPCaptionBarView *)self bounds];
  [(CAGradientLayer *)self->_maskLayer setFrame:?];
  backgroundColorView = self->_backgroundColorView;
  if (backgroundColorView)
  {
    [(LPBackgroundColorView *)backgroundColorView setFrame:v249, v250, v251, v252];
  }

  [(LPCaptionBarButtonView *)self->_buttonView setCollapsed:v356];
  if (v420)
  {
    if ([(LPCaptionBarStyle *)self->_style addFullWidthLineForButton])
    {
      v472.origin.x = v421;
      v472.origin.y = v227;
      v472.size.width = v429;
      v472.size.height = rect1_8a;
      v473.size.height = CGRectGetHeight(v472);
      v227 = v387 + v218;
      v473.origin.x = v424;
      v473.size.width = v427 - (v426 + v424);
      v473.origin.y = v387 + v218;
      rect1_8a = v473.size.height;
      v255 = v387 + v218 + CGRectGetHeight(v473);
      v256 = v424;
      v421 = v424;
      v257 = v427 - (v426 + v424);
      if (v7)
      {
        goto LABEL_216;
      }

LABEL_218:
      v270 = v256;
      v271 = v256;
      v272 = v227;
      v273 = v257;
      v274 = rect1_8a;
      MinX = CGRectGetMinX(*(&v257 - 2));
      v474.origin.x = rect1;
      v474.origin.y = v227;
      v474.size.width = v359;
      v474.size.height = v360;
      v259 = MinX - v350 - CGRectGetWidth(v474);
      v421 = v270;
      v258 = v227;
      v260 = v273;
      goto LABEL_219;
    }

    if ([(LPCaptionBarStyle *)self->_style expandButtonToCaptionEdge])
    {
      v261 = v429;
      if (!v7)
      {
        v266 = v421;
        v267 = v227;
        v268 = rect1_8a;
        v269 = CGRectGetMaxX(*(&v261 - 2));
        v256 = v424;
        v257 = v269 - v424;
        v255 = v218;
        goto LABEL_218;
      }

      v257 = v427 - v426 - v421;
      v255 = v218;
    }

    else
    {
      v255 = v218;
      v256 = v421;
      v257 = v429;
      if (!v7)
      {
        goto LABEL_218;
      }
    }

LABEL_216:
    v262 = v421;
    v263 = v227;
    v264 = v257;
    v265 = rect1_8a;
    v259 = v351 + CGRectGetMaxX(*(&v257 - 2));
    v258 = v227;
    v260 = v264;
    goto LABEL_219;
  }

  v258 = v227;
  v255 = v218;
  v227 = v440;
  v259 = rect1;
  v260 = v429;
LABEL_219:
  [(LPCaptionBarButtonView *)self->_buttonView setFrame:v421, v258, v260, rect1_8a];
  [(LPCaptionBarButtonView *)self->_secondaryButtonView setFrame:v259, v227, v359, v360];
  if (self->_collaborationFooterView)
  {
    v276 = [(LPCaptionBarStyle *)self->_style collaborationFooter];
    v277 = [v276 useFullWidth];

    v278 = y;
    if (v277)
    {
      v278 = v378 + v255;
    }

    y = v278;
    [(LPCollaborationFooterView *)self->_collaborationFooterView setFrame:rect1];
  }

  else
  {
    v390 = v411;
  }

  v279 = v420 ^ 1;
  if (!self->_buttonView)
  {
    v279 = 1;
  }

  v280 = rect1;
  if ((v279 & 1) != 0 || (v281 = [(LPCaptionBarStyle *)self->_style addFullWidthLineForButton], v282 = 0.0, v281))
  {
    MinY = v218;
    if (self->_collaborationFooterView)
    {
      v284 = [(LPCaptionBarStyle *)self->_style collaborationFooter];
      v285 = [v284 useFullWidth];

      MinY = v218;
      if ((v285 & 1) == 0)
      {
        v475.origin.x = rect1;
        v475.origin.y = y;
        v475.size.width = v390;
        v475.size.height = v381;
        MinY = CGRectGetMinY(v475);
      }
    }

    v286 = MinY > v186;
    if ([(LPCaptionBarStyle *)self->_style minimumNumberOfLinesToVerticallyCenter])
    {
      [(LPVerticalTextStackView *)self->_textStackView setFrame:v414, 0.0, v416, v186];
      [(UIView *)self->_textStackView _lp_layoutIfNeeded];
      v287 = [(LPVerticalTextStackView *)self->_textStackView computedNumberOfLines];
      v288 = [(LPCaptionBarStyle *)self->_style minimumNumberOfLinesToVerticallyCenter];
      v286 = MinY > v186 && v287 >= v288;
    }

    v282 = 0.0;
    if (v286)
    {
      v282 = (MinY - v186) * 0.5;
    }
  }

  [(LPVerticalTextStackView *)self->_textStackView setFrame:v414, v282, v416, v186];
  v290 = self->_style;
  if (v7)
  {
    v291 = [(LPCaptionBarStyle *)v290 leadingIconBadge];

    rect1_8b = v291;
    [(LPCaptionBarStyle *)self->_style trailingIconBadge];
  }

  else
  {
    v292 = [(LPCaptionBarStyle *)v290 trailingIconBadge];

    rect1_8b = v292;
    [(LPCaptionBarStyle *)self->_style leadingIconBadge];
  }
  v293 = ;

  v294 = [(LPComponentView *)self host];
  v295 = [v294 allowsBadgingIconEdgeForComponentView:self];

  if (v295)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_8;
    aBlock[3] = &unk_1E7A376C8;
    aBlock[4] = self;
    v296 = _Block_copy(aBlock);
    v297 = v296;
    v298 = rect1_16;
    v299 = rect1_24;
    v300 = v440;
    v301 = rect1;
    if (self->_leftIconBadgeView)
    {
      v301 = (*(v296 + 2))(v296, self->_leftIconView, rect1_8b);
      v300 = v302;
      v299 = v303;
      v298 = v304;
    }

    if (self->_rightIconBadgeView)
    {
      v305 = (v297)[2](v297, self->_rightIconView, v293);
      v440 = v306;
      rect1_24 = v307;
      rect1_16 = v308;
      v280 = v305;
    }
  }

  else
  {
    v298 = rect1_16;
    v299 = rect1_24;
    v300 = v440;
    v301 = rect1;
    if (self->_leftIconBadgeView)
    {
      v309 = self->_leftIconView;
      [rect1_8b offset];
      v311 = v310;
      [rect1_8b offset];
      v313 = v312;
      v314 = [rect1_8b fixedSize];
      v315 = [v314 width];
      [v315 value];
      v317 = v316;
      v318 = [rect1_8b fixedSize];
      v319 = [v318 height];
      [v319 value];
      [(LPComponentView *)v309 convertRect:self toView:v311, v313, v317, v320];
      v301 = v321;
      v300 = v322;
      v299 = v323;
      v298 = v324;
    }

    if (self->_rightIconBadgeView)
    {
      v325 = self->_rightIconView;
      [(LPComponentView *)v325 bounds];
      v441 = v326;
      rect1a = [v293 fixedSize];
      v430 = [rect1a width];
      [v430 value];
      rect1_24a = v327;
      [v293 offset];
      v329 = v328;
      [v293 offset];
      v331 = v330;
      v332 = [v293 fixedSize];
      v333 = [v332 width];
      [v333 value];
      v335 = v334;
      v336 = [v293 fixedSize];
      v337 = [v336 height];
      [v337 value];
      [(LPComponentView *)v325 convertRect:self toView:v441 - rect1_24a - v329, v331, v335, v338];
      v440 = v339;
      rect1_24 = v340;
      rect1_16 = v341;
      v280 = v342;
    }
  }

  [(LPComponentView *)self->_leftIconBadgeView setFrame:v301, v300, v299, v298];
  [(LPComponentView *)self->_rightIconBadgeView setFrame:v280, v440, rect1_24, rect1_16];

LABEL_254:
  v343 = [(LPCaptionBarStyle *)self->_style minimumWidth];
  [v343 value];
  if (v431)
  {
    v345 = v218;
  }

  else
  {
    v345 = v398 + v218;
  }

  v346 = fmin(fmax(v344, v423), v427);

  v347 = v346;
  v348 = v345;
  result.height = v348;
  result.width = v347;
  return result;
}

BOOL __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 472))
  {
    v3 = [*(v1 + 424) button];
    v4 = [v3 collapsedButton];

    if (v4)
    {
      if (+[LPTestingOverrides forceCollapseButtons])
      {
        goto LABEL_4;
      }

      if (*(a1 + 144) == 1)
      {
        v6 = *(a1 + 40);
      }

      else
      {
        v7 = [*(*(a1 + 32) + 416) minimumWidth];
        [v7 value];
        v6 = fmin(fmax(v8, *(a1 + 56)), *(a1 + 40));
      }

      if (v6 != 0.0)
      {
        if (![v4 shouldCollapseWhenCompressed] || *(a1 + 64) < *(a1 + 96))
        {
          Width = CGRectGetWidth(*(a1 + 112));
          [v4 layoutRatioThreshold];
          v5 = Width / v6 >= v10;
          goto LABEL_14;
        }

LABEL_4:
        v5 = 1;
LABEL_14:

        return v5;
      }
    }

    v5 = 0;
    goto LABEL_14;
  }

  return 0;
}

void __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 416) collaborationFooter];
  v3 = [v2 useFullWidth];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 416) collaborationFooter];
    v5 = [v4 ignoreSafeAreaInset];

    if (!v5)
    {
      v6 = [*(*(a1 + 32) + 416) collaborationFooter];
      [v6 useSafeAreaInsetWithPadding];
    }
  }

  else if (*(a1 + 208) == 1)
  {
    CGRectGetMinX(*(a1 + 168));
  }

  else
  {
    CGRectGetMaxX(*(a1 + 168));
  }
}

double __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_5(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 56) == 1 && [*(*(a1 + 32) + 416) addFullWidthLineForButton])
  {
    v2 = *(a1 + 40) + 0.0;
  }

  v3 = *(a1 + 32);
  if (*(v3 + 568))
  {
    v4 = [*(v3 + 416) collaborationFooter];
    v5 = [v4 useFullWidth];

    if (v5)
    {
      return v2 + *(a1 + 48);
    }
  }

  return v2;
}

double __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    return *(a1 + 40) - *(a1 + 48);
  }

  else
  {
    return fmax(fmax(fmax(fmax(fmax(fmax(CGRectGetMaxY(*(a1 + 56)), *(a1 + 88)), *(a1 + 96)), *(a1 + 104)), *(a1 + 112)), *(a1 + 120)), *(a1 + 128));
  }
}

double __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_7(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a8;
  v14 = a9;
  v15 = [v14 verticalAlignment];
  if (!v15)
  {
    v15 = [v13 verticalAlignment];
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = [v13 margin];
        v17 = [v16 top];
        [v17 value];
        a2 = v18;
LABEL_11:

        goto LABEL_12;
      }

      goto LABEL_12;
    }

LABEL_9:
    a2 = a1 * 0.5 + a6 * -0.5;
    goto LABEL_12;
  }

  if (v15 == 2)
  {
    v16 = [v13 margin];
    v17 = [v16 bottom];
    [v17 value];
    a2 = a1 - a2 - v19;
    goto LABEL_11;
  }

  if (v15 == 3)
  {
    goto LABEL_9;
  }

LABEL_12:

  return a2;
}

double __60__LPCaptionBarView__layoutCaptionBarForSize_applyingLayout___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 bounds];
  [v5 convertRect:*(a1 + 32) toView:?];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MaxX = CGRectGetMaxX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetMaxY(v23);
  [v6 offset];
  v13 = v12;
  v14 = [v6 fixedSize];
  v15 = [v14 width];
  [v15 value];
  v17 = v16;

  [v6 offset];
  v18 = [v6 fixedSize];
  v19 = [v18 height];
  [v19 value];

  v20 = [v6 fixedSize];
  [v20 asSize];

  return MaxX - (v13 + v17 * 0.5);
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  blurEffectView = self->_blurEffectView;
  if (blurEffectView)
  {
    v6 = blurEffectView == v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = LPCaptionBarView;
    [(LPCaptionBarView *)&v8 addSubview:v4];
  }

  else
  {
    v7 = [(UIVisualEffectView *)blurEffectView contentView];
    [v7 addSubview:v4];
  }
}

- (void)_createBackgroundViewIfNeeded
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!self->_blurEffectView && ([(LPCaptionBarPresentationProperties *)self->_presentationProperties usesBlurredBackground]|| [(LPCaptionBarPresentationProperties *)self->_presentationProperties usesBlurredBackgroundWithFadeOut]))
  {
    v9 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v10 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v9];
    blurEffectView = self->_blurEffectView;
    self->_blurEffectView = v10;

    [(LPCaptionBarView *)self addSubview:self->_blurEffectView];
    if ([(LPCaptionBarPresentationProperties *)self->_presentationProperties usesBlurredBackgroundWithFadeOut])
    {
      v12 = [MEMORY[0x1E6979380] layer];
      maskLayer = self->_maskLayer;
      self->_maskLayer = v12;

      v14 = [MEMORY[0x1E69DC888] clearColor];
      v19[0] = [v14 CGColor];
      v15 = [MEMORY[0x1E69DC888] blackColor];
      v19[1] = [v15 CGColor];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      [(CAGradientLayer *)self->_maskLayer setColors:v16];

      [(CAGradientLayer *)self->_maskLayer setLocations:&unk_1F2483C80];
      [(CAGradientLayer *)self->_maskLayer setStartPoint:0.5, 0.0];
      [(CAGradientLayer *)self->_maskLayer setEndPoint:0.5, 1.0];
      v17 = self->_maskLayer;
      v18 = [(LPCaptionBarView *)self layer];
      [v18 setMask:v17];
    }
  }

  else
  {
    v3 = [(LPCaptionBarStyle *)self->_style backgroundColor];

    if (v3)
    {
      v4 = [LPBackgroundColorView alloc];
      v5 = [(LPCaptionBarStyle *)self->_style backgroundColor];
      v6 = [(LPBackgroundColorView *)v4 initWithColor:v5];
      backgroundColorView = self->_backgroundColorView;
      self->_backgroundColorView = v6;

      v8 = self->_backgroundColorView;

      [(LPCaptionBarView *)self addSubview:v8];
    }
  }
}

- (void)_buildViewsForCaptionBarIfNeeded
{
  v120[1] = *MEMORY[0x1E69E9840];
  if (!self->_hasEverBuilt)
  {
    v3 = [(UIView *)self _lp_isLTR];
    [(LPCaptionBarView *)self _createBackgroundViewIfNeeded];
    if (self->_useProgressSpinner)
    {
      v4 = [LPIndeterminateProgressSpinnerView alloc];
      v5 = [(LPComponentView *)self host];
      v6 = objc_alloc_init(LPIndeterminateProgressSpinnerStyle);
      v7 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties spinner];
      v8 = [(LPIndeterminateProgressSpinnerView *)v4 initWithHost:v5 style:v6 properties:v7];

      [(LPCaptionBarView *)self addSubview:v8];
      v9 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIcon];

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }

      if (v9)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      if (v3)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v3)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      v14 = v12;
      leftIconView = self->_leftIconView;
      self->_leftIconView = v14;
      v16 = v8;

      objc_storeStrong(&self->_rightIconView, v13);
    }

    else
    {
      presentationProperties = self->_presentationProperties;
      if (v3)
      {
        v118 = [(LPCaptionBarPresentationProperties *)presentationProperties leadingIcon];
        v117 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIcon];
        v116 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconBadge];
        v115 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconBadge];
        v112 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties additionalLeadingIcons];
        v111 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties additionalTrailingIcons];
        v18 = [(LPCaptionBarStyle *)self->_style leadingIcon];
        v114 = [v18 copy];

        v19 = [(LPCaptionBarStyle *)self->_style trailingIcon];
        v113 = [v19 copy];

        v108 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconProperties];
        v107 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconProperties];
        v110 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconBadgeProperties];
        v109 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconBadgeProperties];
        v20 = [(LPCaptionBarStyle *)self->_style leadingIconBadge];
        v21 = [v20 copy];

        v22 = [(LPCaptionBarStyle *)self->_style trailingIconBadge];
        v23 = [v22 copy];

        [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconSize];
      }

      else
      {
        v118 = [(LPCaptionBarPresentationProperties *)presentationProperties trailingIcon];
        v117 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIcon];
        v116 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconBadge];
        v115 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconBadge];
        v112 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties additionalTrailingIcons];
        v111 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties additionalLeadingIcons];
        v26 = [(LPCaptionBarStyle *)self->_style trailingIcon];
        v114 = [v26 copy];

        v27 = [(LPCaptionBarStyle *)self->_style leadingIcon];
        v113 = [v27 copy];

        v108 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconProperties];
        v107 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconProperties];
        v110 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconBadgeProperties];
        v109 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingIconBadgeProperties];
        v28 = [(LPCaptionBarStyle *)self->_style trailingIconBadge];
        v21 = [v28 copy];

        v29 = [(LPCaptionBarStyle *)self->_style leadingIconBadge];
        v23 = [v29 copy];

        [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingIconSize];
      }

      v30 = v24;
      v31 = v25;
      v33 = *MEMORY[0x1E695F060];
      v32 = *(MEMORY[0x1E695F060] + 8);
      if (v24 != *MEMORY[0x1E695F060] || v25 != v32)
      {
        v34 = [[LPSize alloc] initWithSize:v24, v25];
        [v114 setFixedSize:v34];

        if ([v114 filter] == 3 && v30 != v31)
        {
          [v114 setFilter:1];
        }
      }

      v35 = self->_presentationProperties;
      if (v3)
      {
        [(LPCaptionBarPresentationProperties *)v35 trailingIconSize];
      }

      else
      {
        [(LPCaptionBarPresentationProperties *)v35 leadingIconSize];
      }

      v38 = v36;
      v39 = v37;
      if (v36 != v33 || v37 != v32)
      {
        v40 = [[LPSize alloc] initWithSize:v36, v37];
        [v113 setFixedSize:v40];

        if ([v113 filter] == 3 && v38 != v39)
        {
          [v113 setFilter:1];
        }
      }

      if (v118)
      {
        if (v112)
        {
          v41 = [LPImageStackView alloc];
          v42 = [(LPComponentView *)self host];
          v120[0] = v118;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:1];
          v44 = [v43 arrayByAddingObjectsFromArray:v112];
          v45 = [(LPImageStackView *)v41 initWithHost:v42 images:v44 style:v114];
          v46 = self->_leftIconView;
          self->_leftIconView = v45;
        }

        else
        {
          v47 = [LPImageView alloc];
          v48 = [(LPComponentView *)self host];
          v49 = [(LPImageView *)v47 initWithHost:v48 image:v118 properties:v108 style:v114];
          v50 = self->_leftIconView;
          self->_leftIconView = v49;
        }

        [(LPCaptionBarView *)self addSubview:self->_leftIconView];
      }

      if (v117)
      {
        if (v111)
        {
          v51 = [LPImageStackView alloc];
          v52 = [(LPComponentView *)self host];
          v119 = v117;
          v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
          v54 = [v53 arrayByAddingObjectsFromArray:v111];
          v55 = [(LPImageStackView *)v51 initWithHost:v52 images:v54 style:v113];
          rightIconView = self->_rightIconView;
          self->_rightIconView = v55;
        }

        else
        {
          v57 = [LPImageView alloc];
          v52 = [(LPComponentView *)self host];
          v58 = [(LPImageView *)v57 initWithHost:v52 image:v117 properties:v107 style:v113];
          v53 = self->_rightIconView;
          self->_rightIconView = v58;
        }

        [(LPCaptionBarView *)self addSubview:self->_rightIconView];
      }

      if (v116)
      {
        v59 = [LPImageView alloc];
        v60 = [(LPComponentView *)self host];
        v61 = [(LPImageView *)v59 initWithHost:v60 image:v116 properties:v110 style:v21];
        leftIconBadgeView = self->_leftIconBadgeView;
        self->_leftIconBadgeView = v61;

        [(LPCaptionBarView *)self addSubview:self->_leftIconBadgeView];
      }

      if (v115)
      {
        v63 = [LPImageView alloc];
        v64 = [(LPComponentView *)self host];
        v65 = [(LPImageView *)v63 initWithHost:v64 image:v115 properties:v109 style:v23];
        rightIconBadgeView = self->_rightIconBadgeView;
        self->_rightIconBadgeView = v65;

        [(LPCaptionBarView *)self addSubview:self->_rightIconBadgeView];
      }
    }

    [(LPCaptionBarView *)self updateTextStack];
    if (self->_inlinePlaybackInformation)
    {
      v67 = [LPPlayButtonView alloc];
      v68 = [(LPComponentView *)self host];
      inlinePlaybackInformation = self->_inlinePlaybackInformation;
      v70 = [(LPCaptionBarStyle *)self->_style playButton];
      v71 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties playButton];
      v72 = [(LPPlayButtonView *)v67 initWithHost:v68 playbackInformation:inlinePlaybackInformation style:v70 properties:v71];
      playButton = self->_playButton;
      self->_playButton = v72;

      [(LPCaptionBarView *)self addSubview:self->_playButton];
    }

    v74 = self->_presentationProperties;
    if (v3)
    {
      v75 = [(LPCaptionBarPresentationProperties *)v74 leadingAccessoryType];
      v76 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties trailingAccessoryType];
    }

    else
    {
      v75 = [(LPCaptionBarPresentationProperties *)v74 trailingAccessoryType];
      v76 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leadingAccessoryType];
    }

    v77 = v76;
    if (v75)
    {
      v78 = [LPCaptionBarAccessoryView alloc];
      v79 = [(LPComponentView *)self host];
      v80 = [(LPCaptionBarAccessoryView *)v78 initWithHost:v79 type:v75 side:0];
      leftAccessoryView = self->_leftAccessoryView;
      self->_leftAccessoryView = v80;

      [(LPCaptionBarView *)self addSubview:self->_leftAccessoryView];
    }

    if (v77)
    {
      v82 = [LPCaptionBarAccessoryView alloc];
      v83 = [(LPComponentView *)self host];
      v84 = [(LPCaptionBarAccessoryView *)v82 initWithHost:v83 type:v77 side:1];
      rightAccessoryView = self->_rightAccessoryView;
      self->_rightAccessoryView = v84;

      [(LPCaptionBarView *)self addSubview:self->_rightAccessoryView];
    }

    v86 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties button];

    if (v86)
    {
      v87 = [LPCaptionBarButtonView alloc];
      v88 = [(LPComponentView *)self host];
      v89 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties button];
      v90 = [(LPCaptionBarStyle *)self->_style button];
      v91 = [(LPCaptionBarButtonView *)v87 initWithHost:v88 properties:v89 style:v90];
      buttonView = self->_buttonView;
      self->_buttonView = v91;

      [(LPCaptionBarView *)self addSubview:self->_buttonView];
    }

    v93 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties secondaryButton];

    if (v93)
    {
      v94 = [LPCaptionBarButtonView alloc];
      v95 = [(LPComponentView *)self host];
      v96 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties secondaryButton];
      v97 = [(LPCaptionBarStyle *)self->_style secondaryButton];
      v98 = [(LPCaptionBarButtonView *)v94 initWithHost:v95 properties:v96 style:v97];
      secondaryButtonView = self->_secondaryButtonView;
      self->_secondaryButtonView = v98;

      [(LPCaptionBarView *)self addSubview:self->_secondaryButtonView];
    }

    v100 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties collaborationFooter];

    if (v100)
    {
      v101 = [LPCollaborationFooterView alloc];
      v102 = [(LPComponentView *)self host];
      v103 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties collaborationFooter];
      v104 = [(LPCaptionBarStyle *)self->_style collaborationFooter];
      v105 = [(LPCollaborationFooterView *)v101 initWithHost:v102 properties:v103 style:v104];
      collaborationFooterView = self->_collaborationFooterView;
      self->_collaborationFooterView = v105;
    }

    if (self->_collaborationFooterView)
    {
      [(LPCaptionBarView *)self addSubview:?];
    }

    self->_hasEverBuilt = 1;
  }
}

- (void)updateTextStack
{
  [(UIView *)self _lp_isLTR];
  textStackView = self->_textStackView;
  if (textStackView)
  {
    [(LPVerticalTextStackView *)textStackView removeFromSuperview];
    v4 = self->_textStackView;
    self->_textStackView = 0;
  }

  v5 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties aboveTop];
  v6 = [(LPCaptionBarStyle *)self->_style textStack];
  v7 = [v6 aboveTopCaption];
  emphasizedTextExpression = self->_emphasizedTextExpression;
  v9 = [(LPComponentView *)self host];
  v10 = createViewForRow(v5, v7, emphasizedTextExpression, v9);
  aboveTopCaptionView = self->_aboveTopCaptionView;
  self->_aboveTopCaptionView = v10;

  v12 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties top];
  v13 = [(LPCaptionBarStyle *)self->_style textStack];
  v14 = [v13 topCaption];
  v15 = self->_emphasizedTextExpression;
  v16 = [(LPComponentView *)self host];
  v17 = createViewForRow(v12, v14, v15, v16);
  topCaptionView = self->_topCaptionView;
  self->_topCaptionView = v17;

  v19 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties bottom];
  v20 = [(LPCaptionBarStyle *)self->_style textStack];
  v21 = [v20 bottomCaption];
  v22 = self->_emphasizedTextExpression;
  v23 = [(LPComponentView *)self host];
  v24 = createViewForRow(v19, v21, v22, v23);
  bottomCaptionView = self->_bottomCaptionView;
  self->_bottomCaptionView = v24;

  v26 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties belowBottom];
  v27 = [(LPCaptionBarStyle *)self->_style textStack];
  v28 = [v27 belowBottomCaption];
  v29 = self->_emphasizedTextExpression;
  v30 = [(LPComponentView *)self host];
  v31 = createViewForRow(v26, v28, v29, v30);
  belowBottomCaptionView = self->_belowBottomCaptionView;
  self->_belowBottomCaptionView = v31;

  if (self->_aboveTopCaptionView || self->_topCaptionView || self->_bottomCaptionView || self->_belowBottomCaptionView)
  {
    v33 = [LPVerticalTextStackView alloc];
    v34 = [(LPComponentView *)self host];
    v35 = [(LPCaptionBarStyle *)self->_style textStack];
    v36 = [(LPVerticalTextStackView *)v33 initWithHost:v34 style:v35];
    v37 = self->_textStackView;
    self->_textStackView = v36;

    if (self->_aboveTopCaptionView)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LP.%@.AboveTopCaption", self->_captionType];
      [(LPTextStyleable *)self->_aboveTopCaptionView setAccessibilityIdentifier:v38];

      [(LPVerticalTextStackView *)self->_textStackView addArrangedSubview:self->_aboveTopCaptionView];
    }

    if (self->_topCaptionView)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LP.%@.TopCaption", self->_captionType];
      [(LPTextStyleable *)self->_topCaptionView setAccessibilityIdentifier:v39];

      [(LPVerticalTextStackView *)self->_textStackView addArrangedSubview:self->_topCaptionView];
    }

    if (self->_bottomCaptionView)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LP.%@.BottomCaption", self->_captionType];
      [(LPTextStyleable *)self->_bottomCaptionView setAccessibilityIdentifier:v40];

      [(LPVerticalTextStackView *)self->_textStackView addArrangedSubview:self->_bottomCaptionView];
    }

    if (self->_belowBottomCaptionView)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LP.%@.BelowBottomCaption", self->_captionType];
      [(LPTextStyleable *)self->_belowBottomCaptionView setAccessibilityIdentifier:v41];

      [(LPVerticalTextStackView *)self->_textStackView addArrangedSubview:self->_belowBottomCaptionView];
    }

    v42 = self->_textStackView;

    [(LPCaptionBarView *)self addSubview:v42];
  }
}

- (void)updateDisclosureIndicators
{
  v3 = [(LPTextStyleable *)self->_bottomCaptionView subtitleButton];
  [v3 updateIndicator];

  collaborationFooterView = self->_collaborationFooterView;

  [(LPCollaborationFooterView *)collaborationFooterView updateIndicator];
}

- (id)button
{
  v3 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties button];

  if (v3)
  {
    [(LPCaptionBarView *)self _buildViewsForCaptionBarIfNeeded];
    v4 = self->_buttonView;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)secondaryButton
{
  v3 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties secondaryButton];

  if (v3)
  {
    [(LPCaptionBarView *)self _buildViewsForCaptionBarIfNeeded];
    v4 = self->_secondaryButtonView;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEmphasizedTextExpression:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_emphasizedTextExpression, a3);
  [(LPTextStyleable *)self->_aboveTopCaptionView setEmphasizedTextExpression:v5];
  [(LPTextStyleable *)self->_topCaptionView setEmphasizedTextExpression:v5];
  [(LPTextStyleable *)self->_bottomCaptionView setEmphasizedTextExpression:v5];
  [(LPTextStyleable *)self->_belowBottomCaptionView setEmphasizedTextExpression:v5];
}

- (id)primaryIconView
{
  leftIconView = self->_leftIconView;
  if (!leftIconView)
  {
    leftIconView = self->_rightIconView;
  }

  return leftIconView;
}

- (id)layoutExclusionsForView:(id)a3
{
  v4 = a3;
  if (*&self->_leftIconView == 0)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(LPCaptionBarView *)self frame];
    v6 = v5;
    v8 = v7;
    leftIconView = self->_leftIconView;
    if (leftIconView)
    {
      [(LPComponentView *)leftIconView frame];
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = 0.0;
      v22.size.height = v8;
      v19 = CGRectUnion(v18, v22);
      v10 = MEMORY[0x1E69DC728];
      [(LPCaptionBarView *)self convertRect:v4 toView:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
      v11 = [v10 bezierPathWithRect:?];
      [v15 addObject:v11];
    }

    rightIconView = self->_rightIconView;
    if (rightIconView)
    {
      [(LPComponentView *)rightIconView frame];
      v23.origin.y = 0.0;
      v23.size.width = 0.0;
      v23.origin.x = v6;
      v23.size.height = v8;
      v21 = CGRectUnion(v20, v23);
      v13 = MEMORY[0x1E69DC728];
      [(LPCaptionBarView *)self convertRect:v4 toView:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
      v14 = [v13 bezierPathWithRect:?];
      [v15 addObject:v14];
    }
  }

  return v15;
}

- (BOOL)captionTextIsTruncated
{
  if (([(LPTextStyleable *)self->_aboveTopCaptionView textIsTruncated]& 1) != 0 || ([(LPTextStyleable *)self->_topCaptionView textIsTruncated]& 1) != 0 || ([(LPTextStyleable *)self->_bottomCaptionView textIsTruncated]& 1) != 0)
  {
    return 1;
  }

  belowBottomCaptionView = self->_belowBottomCaptionView;

  return [(LPTextStyleable *)belowBottomCaptionView textIsTruncated];
}

- (UIEdgeInsets)textSafeAreaInset
{
  top = self->_textSafeAreaInset.top;
  left = self->_textSafeAreaInset.left;
  bottom = self->_textSafeAreaInset.bottom;
  right = self->_textSafeAreaInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)backgroundOutset
{
  top = self->_backgroundOutset.top;
  left = self->_backgroundOutset.left;
  bottom = self->_backgroundOutset.bottom;
  right = self->_backgroundOutset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end