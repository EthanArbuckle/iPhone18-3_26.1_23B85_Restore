@interface AVPlayerViewControllerContentView
- (AVCatalystGlassPlaybackControlsView)glassPlaybackControlsView;
- (AVPlaybackControlsView)chromePlaybackControlsView;
- (AVPlayerViewControllerContentView)initWithFrame:(CGRect)a3 playbackContentContainerView:(id)a4 targetVideoGravities:(id)a5;
- (AVPlayerViewControllerContentViewDelegate)delegate;
- (BOOL)avkit_hasFullScreenLayoutClass;
- (BOOL)isCoveringWindow;
- (BOOL)isViewDescendantOfPlaybackControlsSubview:(id)a3;
- (NSNumber)layoutClass;
- (NSString)automaticVideoGravity;
- (UIEdgeInsets)edgeInsetsForLetterboxedContent;
- (UIEdgeInsets)videoContentInset;
- (UIView)iAdPreRollView;
- (id)_playerLayerView;
- (id)avkit_backdropGroupLeader;
- (id)catalystGlassControlsViewController;
- (id)chromeControlsViewController;
- (id)gen1Delegate;
- (void)_applyVideoGravityIfNeeded:(void *)a1;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_clearCustomControlsViewConstraintsIfNeeded;
- (void)_insertViewIntoHierarchy:(id *)a1;
- (void)_updateControlsViewContentIntersectionIfNeeded;
- (void)_updateCustomControlsViewConstraints;
- (void)addPlaybackContentContainerViewIfNeeded;
- (void)avkit_needsUpdateBackdropCaptureViewHidden;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)loadPlaybackControlsViewIfNeeded;
- (void)removeTurboModePlaybackControlsPlaceholderViewIfNeeded;
- (void)scrollingObserverDidChangeScrollingState:(id)a3;
- (void)setAutomaticVideoGravity:(id)a3;
- (void)setContentOverlayView:(id)a3;
- (void)setContentOverlayViewPlacement:(unint64_t)a3;
- (void)setControlsViewController:(id)a3;
- (void)setCustomControlsView:(id)a3;
- (void)setExternalPlaybackIndicatorTitle:(id)a3 subtitle:(id)a4;
- (void)setFrame:(CGRect)a3;
- (void)setInteractiveContentOverlayView:(id)a3;
- (void)setPlaybackContentContainerView:(id)a3;
- (void)setShowsAudioOnlyIndicator:(BOOL)a3;
- (void)setShowsExternalPlaybackIndicator:(BOOL)a3;
- (void)setShowsPlaybackControls:(BOOL)a3;
- (void)setShowsUnsupportedContentIndicator:(BOOL)a3;
- (void)setStyleSheetShouldUseCompactFullScreenItemSize:(BOOL)a3;
- (void)setTargetVideoGravity:(id)a3 forLayoutClass:(unint64_t)a4;
- (void)setWantsBackdropView:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation AVPlayerViewControllerContentView

- (UIEdgeInsets)videoContentInset
{
  top = self->_videoContentInset.top;
  left = self->_videoContentInset.left;
  bottom = self->_videoContentInset.bottom;
  right = self->_videoContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)edgeInsetsForLetterboxedContent
{
  top = self->_edgeInsetsForLetterboxedContent.top;
  left = self->_edgeInsetsForLetterboxedContent.left;
  bottom = self->_edgeInsetsForLetterboxedContent.bottom;
  right = self->_edgeInsetsForLetterboxedContent.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (AVPlayerViewControllerContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollingObserverDidChangeScrollingState:(id)a3
{
  [(AVCABackdropLayerView *)self->_backdropLayerView updateActiveBackdropEffectIfGroupLeader];
  v4 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [v4 playerViewControllerContentViewDidUpdateScrollingStatus:self];

  v5 = [(AVPlayerViewControllerContentView *)self chromePlaybackControlsView];
  v6 = [v5 volumeButton];
  [v6 setNeedsUpdateGlyphRenderingMode];

  v7 = [(AVPlayerViewControllerContentView *)self glassPlaybackControlsView];
  v8 = [v7 volumeButton];
  [v8 setNeedsUpdateGlyphRenderingMode];

  v9 = [(AVTurboModePlaybackControlsPlaceholderView *)self->_turboModePlaybackControlsPlaceholderView volumeButton];
  [v9 setNeedsUpdateGlyphRenderingMode];
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  [(AVCacheLargestInscribedRectInBoundingPath *)self->_cacheLargestInscribedRect clearCache:a3];

  [(AVPlayerViewControllerContentView *)self setNeedsLayout];
}

- (void)avkit_needsUpdateBackdropCaptureViewHidden
{
  backdropLayerView = self->_backdropLayerView;
  if (backdropLayerView)
  {
    if (self->_wantsBackdropView)
    {
      [(AVCABackdropLayerView *)backdropLayerView updateActiveBackdropEffectIfGroupLeader];
    }
  }
}

- (BOOL)avkit_hasFullScreenLayoutClass
{
  v2 = [(AVPlayerViewControllerContentView *)self layoutClass];
  v3 = [v2 unsignedIntegerValue] == 1 || objc_msgSend(v2, "unsignedIntegerValue") == 2;

  return v3;
}

- (id)avkit_backdropGroupLeader
{
  v3 = self->_backdropLayerView;
  if (![(AVPlayerViewControllerContentView *)self wantsBackdropView])
  {
    v6.receiver = self;
    v6.super_class = AVPlayerViewControllerContentView;
    v4 = [(UIView *)&v6 avkit_backdropGroupLeader];

    v3 = v4;
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVPlayerViewControllerContentView *)self frame];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v12 = CGRectEqualToRect(v15, v16);
  v14.receiver = self;
  v14.super_class = AVPlayerViewControllerContentView;
  [(AVPlayerViewControllerContentView *)&v14 setFrame:x, y, width, height];
  if (!v12)
  {
    v13 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
    [v13 playerViewControllerContentViewDidChangeSize:self];
  }
}

- (void)layoutSubviews
{
  kdebug_trace();
  [(AVPlayerViewControllerContentView *)self bounds];
  x = v167.origin.x;
  width = v167.size.width;
  y = v167.origin.y;
  height = v167.size.height;
  v168 = CGRectInset(v167, 10.0, 43.0);
  v4 = v168.origin.x;
  v5 = v168.origin.y;
  v6 = v168.size.width;
  v7 = v168.size.height;
  if (CGRectGetWidth(v168) < 49.0 || (v169.origin.x = v4, v169.origin.y = v5, v169.size.width = v6, v169.size.height = v7, CGRectGetHeight(v169) < 37.0))
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  v8 = [(AVPlayerViewControllerContentView *)self delegate];
  [v8 playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:self];
  [(AVPlayerViewControllerContentView *)self setEdgeInsetsForLetterboxedContent:?];

  [(AVPlayerViewControllerContentView *)self addPlaybackContentContainerViewIfNeeded];
  if (self)
  {
    v165 = v7;
    [(AVPlayerViewControllerContentView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if (self->_contentOverlayViewPlacement == 1)
    {
      v158 = v6;
      v160 = x;
      v152 = v4;
      v155 = v5;
      v17 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
      v18 = [v17 activeContentView];

      [v18 frame];
      if (v18)
      {
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = v22;
        v27 = [v18 superview];

        if (v27)
        {
          v28 = [v18 superview];
          [(AVPlayerViewControllerContentView *)self convertRect:v28 fromView:v23, v24, v25, v26];
          v10 = v29;
          v12 = v30;
          v14 = v31;
          v16 = v32;
        }
      }

      v4 = v152;
      v5 = v155;
      v6 = v158;
      x = v160;
    }

    [(UIView *)self->_contentOverlayView setFrame:v10, v12, v14, v16];
    v33 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
    v7 = v165;
    if (![v33 isDescendantOfView:self])
    {
      goto LABEL_35;
    }

    [(AVPlayerViewControllerContentView *)self bounds];
    v35 = v34;
    v153 = v36;
    v38 = v37;
    v40 = v39;
    v41 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    v42 = [v41 contentTabPresentationContext];
    v43 = [v41 viewIfLoaded];
    [v41 unobscuredContentArea];
    v156 = v44;
    v149 = v46;
    rect = v45;
    v148 = v47;
    v48 = v41;
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
      v51 = [v50 contentTabPresentationContext];

      v52 = [v50 viewIfLoaded];

      [v50 unobscuredContentArea];
      v156 = v53;
      v149 = v55;
      rect = v54;
      v148 = v56;
      v43 = v52;
      v42 = v51;
    }

    v57 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
    v58 = [v57 activeContentView];
    v59 = [v58 playerLayerView];

    if (!v50)
    {
      goto LABEL_33;
    }

    if (!v43)
    {
      goto LABEL_33;
    }

    if (!v59)
    {
      goto LABEL_33;
    }

    if (!v42)
    {
      goto LABEL_33;
    }

    v60 = [v42 state];
    if (v60)
    {
      if (v60 != 2)
      {
        goto LABEL_33;
      }

      v61 = [v42 transitionContext];
      v62 = [v61 direction];

      if (v62)
      {
        goto LABEL_33;
      }
    }

    v146 = v35;
    v147 = v38;
    v159 = v6;
    v161 = x;
    [v42 presentationHeight];
    [(AVPlayerViewControllerContentView *)self convertPoint:v43 fromView:0.0, v63];
    v145 = v64;
    [(AVPlayerViewControllerContentView *)self convertRect:v43 fromView:v156, rect, v149, v148];
    v66 = v65;
    v68 = v67;
    recta = v69;
    v71 = v70;
    [v59 videoDisplaySize];
    v74 = v73;
    if (v73 != 0.0)
    {
      v75 = v72;
      if (v72 != 0.0)
      {
        v157 = v5;
        v76 = [v59 videoGravity];
        v77 = v40;
        if ((v76 - 2) < 2)
        {
          goto LABEL_26;
        }

        if (v76 == 1)
        {
          v77 = v147 / (v74 / v75);
LABEL_26:
          v170.origin.x = v66;
          v170.origin.y = v68;
          v170.size.width = recta;
          v170.size.height = v71;
          MinY = CGRectGetMinY(v170);
          v79 = v40 - MinY - v145;
          v80 = v79;
          v81 = v77;
          v6 = v159;
          if (v80 > v81 || vabds_f32(v80, v81) < 0.00000011921)
          {
            v82 = MinY + v79 * 0.5;
            v171.origin.x = v146;
            v171.origin.y = v153;
            v171.size.width = v147;
            v171.size.height = v40;
            v154 = v153 + v82 - CGRectGetMidY(v171);
            v5 = v157;
            v7 = v165;
            x = v161;
            [v33 setFrame:{v146, v154, v147, v40}];
LABEL_34:

LABEL_35:
            goto LABEL_36;
          }

          v5 = v157;
          goto LABEL_32;
        }

        v5 = v157;
      }
    }

    v6 = v159;
LABEL_32:
    v7 = v165;
    x = v161;
    v35 = v146;
    v38 = v147;
LABEL_33:
    [v33 setFrame:{v35, v153, v38, v40}];
    goto LABEL_34;
  }

LABEL_36:
  v83 = [(AVPlayerViewControllerContentView *)self controlsViewController];
  v84 = [v83 viewIfLoaded];
  [v84 setFrame:{x, y, width, height}];

  [(AVExternalPlaybackIndicatorView *)self->_externalPlaybackIndicatorView setFrame:x, y, width, height];
  v85 = [(AVPlayerViewControllerContentView *)self iAdPreRollViewIfLoaded];
  [v85 setFrame:{x, y, width, height}];

  v86 = [(AVPlayerViewControllerContentView *)self interactiveContentOverlayView];
  [v86 setFrame:{x, y, width, height}];

  [(AVCABackdropLayerView *)self->_backdropLayerView setFrame:x, y, width, height];
  [(UIImageView *)self->_audioOnlyIndicatorView setFrame:v4, v5, v6, v7];
  [(UIImageView *)self->_unsupportedContentIndicatorView setFrame:v4, v5, v6, v7];
  audioOnlyIndicatorView = self->_audioOnlyIndicatorView;
  v172.origin.x = v4;
  v172.origin.y = v5;
  v172.size.width = v6;
  v172.size.height = v7;
  v88 = CGRectGetWidth(v172);
  v89 = [(UIImageView *)self->_audioOnlyIndicatorView image];
  [v89 size];
  if (v88 < v90)
  {
    [(UIImageView *)audioOnlyIndicatorView setContentMode:1];
  }

  else
  {
    v173.origin.x = v4;
    v173.origin.y = v5;
    v173.size.width = v6;
    v173.size.height = v7;
    v91 = CGRectGetHeight(v173);
    v92 = [(UIImageView *)self->_audioOnlyIndicatorView image];
    [v92 size];
    if (v91 < v93)
    {
      v94 = 1;
    }

    else
    {
      v94 = 4;
    }

    [(UIImageView *)audioOnlyIndicatorView setContentMode:v94];
  }

  unsupportedContentIndicatorView = self->_unsupportedContentIndicatorView;
  v174.origin.x = v4;
  v174.origin.y = v5;
  v174.size.width = v6;
  v174.size.height = v7;
  v96 = CGRectGetWidth(v174);
  v97 = [(UIImageView *)self->_unsupportedContentIndicatorView image];
  [v97 size];
  if (v96 < v98)
  {
    [(UIImageView *)unsupportedContentIndicatorView setContentMode:1];
  }

  else
  {
    v175.origin.x = v4;
    v175.origin.y = v5;
    v175.size.width = v6;
    v175.size.height = v7;
    v99 = CGRectGetHeight(v175);
    v100 = [(UIImageView *)self->_unsupportedContentIndicatorView image];
    [v100 size];
    if (v99 < v101)
    {
      v102 = 1;
    }

    else
    {
      v102 = 4;
    }

    [(UIImageView *)unsupportedContentIndicatorView setContentMode:v102];
  }

  if (![(UIView *)self avkit_isVideoGravityFrozen])
  {
    v103 = [(AVPlayerViewControllerContentView *)self layoutClass];

    if (v103)
    {
      v104 = [(AVPlayerViewControllerContentView *)self layoutClass];
      v105 = [v104 unsignedIntegerValue];

      v106 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
      if ([v106 playerViewControllerContentViewShouldApplyAutomaticVideoGravity:self])
      {
        v107 = [(AVPlayerViewControllerContentView *)self automaticVideoGravity];
        v108 = AVVideoGravityFromString(v107);
      }

      else
      {
        v107 = [(AVPlayerViewControllerContentView *)self targetVideoGravities];
        v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
        v110 = [v107 objectForKeyedSubscript:v109];
        v108 = AVVideoGravityFromString(v110);
      }

      v111 = *MEMORY[0x1E69DDCE0];
      v112 = *(MEMORY[0x1E69DDCE0] + 8);
      v113 = *(MEMORY[0x1E69DDCE0] + 16);
      v114 = *(MEMORY[0x1E69DDCE0] + 24);
      if ([(AVPlayerViewControllerContentView *)self isCoveringWindow])
      {
        v115 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
        v116 = [v115 playerViewControllerContentViewIsBeingTransitionedFromFullScreen:self];

        if ((v116 & 1) == 0)
        {
          v117 = MEMORY[0x1E69DDA98];
          if (![*MEMORY[0x1E69DDA98] _isClassic] || objc_msgSend(*v117, "_classicMode") == 5)
          {
            v118 = [(AVPlayerViewControllerContentView *)self traitCollection];
            [v118 displayCornerRadius];
            if (v119 <= 0.0)
            {
            }

            else
            {

              if (v108 == 1)
              {
                [(AVPlayerViewControllerContentView *)self edgeInsetsForLetterboxedContent];
                v111 = v120;
                v112 = v121;
                v113 = v122;
                v114 = v123;
              }
            }
          }
        }
      }

      [(AVPlayerViewControllerContentView *)self setVideoContentInset:v111, v112, v113, v114];
      v124 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
      v125 = [v124 playerViewControllerContentViewHasActiveTransition:self];

      if (v125 && [MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
      {
        [(AVPlayerViewControllerContentView *)self _applyVideoGravityIfNeeded:v108];
      }

      v126 = *MEMORY[0x1E695EFF8];
      v127 = *(MEMORY[0x1E695EFF8] + 8);
      v128 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
      [v128 bounds];
      v130 = v129;
      v132 = v131;

      [(AVPlayerViewControllerContentView *)self videoContentInset];
      v178.origin.x = v126 + v133;
      v178.origin.y = v127 + v134;
      v178.size.width = v130 - (v133 + v135);
      v178.size.height = v132 - (v134 + v136);
      v176.origin.x = v126;
      v176.origin.y = v127;
      v176.size.width = v130;
      v176.size.height = v132;
      v177 = CGRectIntersection(v176, v178);
      v137 = v177.origin.x;
      v138 = v177.origin.y;
      v139 = v177.size.width;
      v140 = v177.size.height;
      v141 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
      [v141 setVideoContentFrame:{v137, v138, v139, v140}];

      v142 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
      v143 = [v142 playerViewControllerContentViewHasActiveTransition:self];

      if ((v143 & 1) == 0)
      {
        [(AVPlayerViewControllerContentView *)self _applyVideoGravityIfNeeded:v108];
      }
    }
  }

  [(AVPlayerViewControllerContentView *)self _updateControlsViewContentIntersectionIfNeeded];
  v166.receiver = self;
  v166.super_class = AVPlayerViewControllerContentView;
  [(AVView *)&v166 layoutSubviews];
  v144 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [v144 playerViewControllerContentViewDidLayoutSubviews:self];

  kdebug_trace();
}

- (void)_updateControlsViewContentIntersectionIfNeeded
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __83__AVPlayerViewControllerContentView__updateControlsViewContentIntersectionIfNeeded__block_invoke;
    v1[3] = &unk_1E7209EA8;
    objc_copyWeak(&v2, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v1);
    objc_destroyWeak(&v2);
    objc_destroyWeak(&location);
  }
}

void __83__AVPlayerViewControllerContentView__updateControlsViewContentIntersectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v2 = [WeakRetained controlsViewController];
    v3 = [v2 viewIfLoaded];

    if (objc_opt_respondsToSelector())
    {
      v4 = [(AVPlayerViewControllerContentView *)v14 _playerLayerView];
      v5 = v4;
      if (v3 && v4)
      {
        [v4 videoBounds];
        [v3 convertRect:v5 fromView:?];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [v3 bounds];
        v18.origin.x = v7;
        v18.origin.y = v9;
        v18.size.width = v11;
        v18.size.height = v13;
        v17 = CGRectIntersection(v16, v18);
        [v3 setContentIntersection:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
      }
    }

    WeakRetained = v14;
  }
}

- (id)_playerLayerView
{
  if (a1)
  {
    v1 = [a1 playbackContentContainerView];
    v2 = [v1 activeContentView];
    v3 = [v2 playerLayerView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_applyVideoGravityIfNeeded:(void *)a1
{
  v15 = [(AVPlayerViewControllerContentView *)a1 _playerLayerView];
  if ([v15 videoGravity] != a2)
  {
    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      [MEMORY[0x1E6979518] begin];
      v4 = MEMORY[0x1E6979518];
      [MEMORY[0x1E69DD250] _currentAnimationDuration];
      [v4 setAnimationDuration:?];
      v5 = MEMORY[0x1E6979518];
      v6 = [MEMORY[0x1E69DD250] _currentAnimationCurve];
      if (v6 > 3)
      {
        v7 = MEMORY[0x1E6979EA0];
      }

      else
      {
        v7 = qword_1E7209D38[v6];
      }

      v9 = *v7;
      v10 = [MEMORY[0x1E69793D0] functionWithName:v9];

      [v5 setAnimationTimingFunction:v10];
      v11 = [a1 playbackContentContainerView];
      v12 = [a1 gen1Delegate];
      v13 = [v12 playerViewControllerContentViewHasActiveTransition:a1];

      [v11 setVideoGravity:a2 removingAllSublayerTransformAnimations:v13];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      [v15 setVideoGravity:a2];
      v8 = [v15 layer];
      [v8 removeAllAnimations];
    }

    v14 = [a1 gen1Delegate];
    [v14 playerViewControllerContentViewDidChangeVideoGravity:a1];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = [(AVPlayerViewControllerContentView *)self window];
  if (v4)
  {
    v5 = v4;
    [v4 _removeBoundingPathChangeObserver:self];
    v4 = v5;
  }
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = AVPlayerViewControllerContentView;
  [(AVPlayerViewControllerContentView *)&v5 didMoveToSuperview];
  [(AVScrollingObserver *)self->_scrollingObserver update];
  v3 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [v3 playerViewControllerContentViewDidMoveToSuperviewOrWindow:self];

  v4 = [(AVPlayerViewControllerContentView *)self delegate];
  [v4 playerViewControllerContentViewDidMoveToSuperview:self];
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = AVPlayerViewControllerContentView;
  [(AVPlayerViewControllerContentView *)&v11 didMoveToWindow];
  [(AVScrollingObserver *)self->_scrollingObserver update];
  [(AVPlayerViewControllerContentView *)self loadPlaybackControlsViewIfNeeded];
  [(AVPlayerViewControllerContentView *)self avkit_needsUpdateBackdropCaptureViewHidden];
  v3 = [(AVPlayerViewControllerContentView *)self delegate];
  v4 = [(AVPlayerViewControllerContentView *)self window];
  [v3 playerViewControllerContentView:self didMoveToWindow:v4];

  v5 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [v5 playerViewControllerContentViewDidMoveToSuperviewOrWindow:self];

  v6 = [(AVPlayerViewControllerContentView *)self window];
  v7 = v6;
  if (v6)
  {
    [v6 _addBoundingPathChangeObserver:self];
  }

  if (!self->_observationController)
  {
    v8 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v8;

    v10 = [(AVObservationController *)self->_observationController startObserving:self keyPath:@"playbackContentContainerView.activeContentView.playerLayerView.videoBounds" includeInitialValue:0 observationHandler:&__block_literal_global_31692];
    [(AVObservationController *)self->_observationController startObservingNotificationForName:@"AVPlayerViewControllerContentViewUpdateContentIntersectionNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_64_31694];
  }
}

- (void)_updateCustomControlsViewConstraints
{
  v74[4] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a1 + 592))
  {
    return;
  }

  [(AVPlayerViewControllerContentView *)a1 _clearCustomControlsViewConstraintsIfNeeded];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *(a1 + 576);
  v4 = [*(a1 + 592) transportControlsAreaLayoutGuideProvidingView];
  v65 = [*(a1 + 592) volumeControlsAreaLayoutGuideProvidingView];
  v64 = [*(a1 + 592) displayModeControlsAreaLayoutGuideProvidingView];
  if (!v3 || ![v3 isViewLoaded])
  {
    goto LABEL_14;
  }

  v5 = [v3 transportControlsLayoutItem];
  v6 = [v3 volumeControlsLayoutItem];
  v7 = [v3 displayModeControlsLayoutItem];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {

LABEL_14:
    v59 = [v4 leadingAnchor];
    v56 = [a1 leadingAnchor];
    v53 = [v59 constraintEqualToAnchor:v56];
    v74[0] = v53;
    v50 = [v4 trailingAnchor];
    v11 = [a1 trailingAnchor];
    v12 = [v50 constraintEqualToAnchor:v11];
    v74[1] = v12;
    v13 = [v4 topAnchor];
    v14 = [a1 bottomAnchor];
    [v13 constraintEqualToAnchor:v14];
    v15 = v66 = v2;
    v74[2] = v15;
    v16 = [v4 bottomAnchor];
    [a1 bottomAnchor];
    v17 = v63 = v3;
    [v16 constraintEqualToAnchor:v17];
    v18 = v62 = v4;
    v74[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [v66 addObjectsFromArray:v19];

    v60 = [v65 leadingAnchor];
    v57 = [a1 trailingAnchor];
    v54 = [v60 constraintEqualToAnchor:v57];
    v73[0] = v54;
    v51 = [v65 trailingAnchor];
    v20 = [a1 trailingAnchor];
    v21 = [v51 constraintEqualToAnchor:v20];
    v73[1] = v21;
    v22 = [v65 topAnchor];
    v23 = [a1 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v73[2] = v24;
    v25 = [v65 bottomAnchor];
    v26 = [a1 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v73[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [v66 addObjectsFromArray:v28];

    v61 = [v64 leadingAnchor];
    v58 = [a1 leadingAnchor];
    v55 = [v61 constraintEqualToAnchor:v58];
    v72[0] = v55;
    v52 = [v64 trailingAnchor];
    v29 = [a1 leadingAnchor];
    v30 = [v52 constraintEqualToAnchor:v29];
    v72[1] = v30;
    v31 = [v64 topAnchor];
    v32 = [a1 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v72[2] = v33;
    v34 = [v64 bottomAnchor];
    v35 = [a1 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v72[3] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:4];
    [v66 addObjectsFromArray:v37];

    v4 = v62;
    v3 = v63;

    v2 = v66;
    goto LABEL_15;
  }

  v47 = [v4 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v5];
  [v2 addObjectsFromArray:v47];

  v48 = [v65 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v6];
  [v2 addObjectsFromArray:v48];

  v49 = [v64 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v8];
  [v2 addObjectsFromArray:v49];

LABEL_15:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = v2;
  v39 = [v38 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v39)
  {
    v41 = v39;
    v42 = *v68;
    do
    {
      v43 = 0;
      do
      {
        if (*v68 != v42)
        {
          objc_enumerationMutation(v38);
        }

        LODWORD(v40) = 1148813312;
        [*(*(&v67 + 1) + 8 * v43++) setPriority:v40];
      }

      while (v41 != v43);
      v41 = [v38 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v41);
  }

  v44 = [*(a1 + 592) avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:a1];
  [v38 addObjectsFromArray:v44];

  [MEMORY[0x1E696ACD8] activateConstraints:v38];
  v45 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v38];
  v46 = *(a1 + 520);
  *(a1 + 520) = v45;

  [*(a1 + 592) setNeedsUpdateConstraints];
}

- (void)_clearCustomControlsViewConstraintsIfNeeded
{
  if (a1 && *(a1 + 520))
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v2 = *(a1 + 520);
    *(a1 + 520) = 0;
  }
}

- (void)removeTurboModePlaybackControlsPlaceholderViewIfNeeded
{
  [(AVTurboModePlaybackControlsPlaceholderView *)self->_turboModePlaybackControlsPlaceholderView removeFromSuperview];
  [(AVTurboModePlaybackControlsPlaceholderView *)self->_turboModePlaybackControlsPlaceholderView setPlayerController:0];
  backdropLayerView = self->_backdropLayerView;

  [(AVCABackdropLayerView *)backdropLayerView setForceLowQualityEffect:0];
}

- (void)loadPlaybackControlsViewIfNeeded
{
  v10 = [(AVPlayerViewControllerContentView *)self controlsViewController];
  if (v10)
  {
    v3 = [(AVPlayerViewControllerContentView *)self window];
    if (v3)
    {
      v4 = v3;
      v5 = [(AVPlayerViewControllerContentView *)self showsPlaybackControls];

      if (v5)
      {
        [v10 loadViewIfNeeded];
        [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:?];
        v6 = [v10 view];
        [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:v6];

        [(AVPlayerViewControllerContentView *)self _updateCustomControlsViewConstraints];
        [(AVPlayerViewControllerContentView *)self avkit_needsUpdateBackdropCaptureViewHidden];
        v7 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

        if (v7)
        {
          [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
        }

        else
        {
          [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
        }
        v8 = ;
        v9 = [v8 playbackControlsView];
        [v9 setCustomControlsView:self->_customControlsView];

        [(AVPlayerViewControllerContentView *)self _updateControlsViewContentIntersectionIfNeeded];
      }
    }
  }
}

- (void)_insertViewIntoHierarchy:(id *)a1
{
  v12[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 superview];

      if (v5 != a1)
      {
        v12[0] = a1[78];
        v12[1] = a1[60];
        v12[2] = a1[62];
        v12[3] = a1[64];
        v12[4] = a1[61];
        v12[5] = a1[66];
        v12[6] = [a1[72] viewIfLoaded];
        v6 = 0;
        v7 = 0;
        v12[7] = a1[74];
        while (1)
        {
          v8 = v12[v6];
          v9 = v8;
          if (v8 == v4)
          {
            break;
          }

          v10 = [v8 superview];
          if (v10 == a1)
          {
            ++v7;
          }

          if (++v6 == 8)
          {
            goto LABEL_11;
          }
        }

        [v4 removeFromSuperview];
        [a1 insertSubview:v4 atIndex:v7];

LABEL_11:
        for (i = 7; i != -1; --i)
        {
        }
      }
    }
  }
}

- (NSNumber)layoutClass
{
  v3 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  v4 = [v3 playerViewControllerContentViewOverrideLayoutClass:self];

  if (!v4)
  {
    if ([(AVPlayerViewControllerContentView *)self isCoveringWindow])
    {
      v5 = MEMORY[0x1E696AD98];
      [(AVPlayerViewControllerContentView *)self bounds];
      Width = CGRectGetWidth(v10);
      [(AVPlayerViewControllerContentView *)self bounds];
      if (Width <= CGRectGetHeight(v11))
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      v4 = [v5 numberWithUnsignedInteger:v7];
    }

    else if ([(AVPlayerViewControllerContentView *)self _isInAWindow])
    {
      v4 = &unk_1EFF12D58;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)isCoveringWindow
{
  v3 = [(AVPlayerViewControllerContentView *)self window];

  if (!v3)
  {
    return 0;
  }

  v4 = [(AVPlayerViewControllerContentView *)self window];
  [(AVPlayerViewControllerContentView *)self bounds];
  [v4 convertRect:self fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  rect = v6;
  UIPointRoundToScale();
  UISizeRoundToScale();
  v48 = v13;
  v49 = v14;
  v15 = [(AVPlayerViewControllerContentView *)self window];
  v16 = [v15 windowScene];
  v17 = [v16 statusBarManager];
  [v17 statusBarFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(AVPlayerViewControllerContentView *)self bounds];
  Width = CGRectGetWidth(v51);
  v52.origin.x = v19;
  v52.origin.y = v21;
  v52.size.width = v23;
  v52.size.height = v25;
  MaxY = CGRectGetWidth(v52);
  if (Width == MaxY && (v53.origin.x = rect, v53.origin.y = v8, v53.size.width = v10, v53.size.height = v12, MinX = CGRectGetMinX(v53), v54.origin.x = v19, v54.origin.y = v21, v54.size.width = v23, v54.size.height = v25, MaxY = CGRectGetMinX(v54), MinX == MaxY))
  {
    v55.origin.x = rect;
    v55.origin.y = v8;
    v55.size.width = v10;
    v55.size.height = v12;
    MinY = CGRectGetMinY(v55);
    v56.origin.x = v19;
    v56.origin.y = v21;
    v56.size.width = v23;
    v56.size.height = v25;
    MaxY = CGRectGetMaxY(v56);
    v31 = MinY > MaxY;
    v32 = v48;
    if (!v31)
    {
      v57.origin.x = rect;
      v57.origin.y = v8;
      v57.size.width = v10;
      v57.size.height = v12;
      v60.origin.x = v19;
      v60.origin.y = v21;
      v60.size.width = v23;
      v60.size.height = v25;
      *&MaxY = CGRectUnion(v57, v60);
      v32 = v33;
      v49 = v34;
    }
  }

  else
  {
    v32 = v48;
  }

  v35 = [(AVPlayerViewControllerContentView *)self window:MaxY];
  [v35 bounds];
  v37 = v36;
  v39 = v38;

  if (v32 == v37 && v49 == v39)
  {
    return 1;
  }

  v41 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  v42 = [v41 playerViewControllerContentViewHasActiveTransition:self];

  if (!v42)
  {
    return 0;
  }

  v43 = [(AVPlayerViewControllerContentView *)self window];
  [v43 bounds];

  v44 = [(AVPlayerViewControllerContentView *)self window];
  [v44 bounds];
  Height = CGRectGetHeight(v58);
  v46 = [(AVPlayerViewControllerContentView *)self window];
  [v46 bounds];
  v47 = CGRectGetWidth(v59);

  return v47 == v49 && Height == v32;
}

- (void)setWantsBackdropView:(BOOL)a3
{
  if (self->_wantsBackdropView != a3)
  {
    self->_wantsBackdropView = a3;
    if (a3 && !self->_backdropLayerView)
    {
      v4 = [AVCABackdropLayerView alloc];
      [(AVPlayerViewControllerContentView *)self bounds];
      v5 = [(AVCABackdropLayerView *)v4 initWithFrame:?];
      backdropLayerView = self->_backdropLayerView;
      self->_backdropLayerView = v5;

      [(AVCABackdropLayerView *)self->_backdropLayerView setAutoresizingMask:0];
      [(AVCABackdropLayerView *)self->_backdropLayerView setCaptureOnly:1];

      [(AVPlayerViewControllerContentView *)self setNeedsLayout];
    }
  }
}

- (void)setTargetVideoGravity:(id)a3 forLayoutClass:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVPlayerViewControllerContentView *)self _playerLayerView];
  v8 = *MEMORY[0x1E69874E8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 copy];
  v11 = [(AVPlayerViewControllerContentView *)self targetVideoGravities];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = [(AVPlayerViewControllerContentView *)self layoutClass];
  if (v13)
  {
    v14 = v13;
    v15 = [(AVPlayerViewControllerContentView *)self layoutClass];
    if ([v15 unsignedIntegerValue] == a4)
    {
      v16 = [v7 videoGravity];
      v17 = AVVideoGravityFromString(v9);

      if (v16 != v17)
      {
        v18 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
        v19 = [v18 playerViewControllerContentViewShouldApplyAutomaticVideoGravity:self];

        if (v19)
        {
          [(AVPlayerViewControllerContentView *)self setAutomaticVideoGravity:v9];
        }

        v20 = [(AVPlayerViewControllerContentView *)self window];

        if (v20)
        {
          if (([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled] & 1) == 0 && objc_msgSend(MEMORY[0x1E69DD250], "areAnimationsEnabled") && -[UIView avkit_wantsAnimatedViewTransitions](self, "avkit_wantsAnimatedViewTransitions"))
          {
            v21 = objc_alloc(MEMORY[0x1E69DD278]);
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __74__AVPlayerViewControllerContentView_setTargetVideoGravity_forLayoutClass___block_invoke;
            v24[3] = &unk_1E720A090;
            v24[4] = self;
            v22 = [v21 initWithDuration:5 curve:v24 animations:0.25];
            [v22 startAnimation];
          }

          else
          {
            [(AVPlayerViewControllerContentView *)self setNeedsLayout];
            [(AVPlayerViewControllerContentView *)self layoutIfNeeded];
          }
        }

        else
        {
          [v7 setVideoGravity:AVVideoGravityFromString(v9)];
          v23 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
          [v23 playerViewControllerContentViewDidChangeVideoGravity:self];
        }
      }
    }

    else
    {
    }
  }
}

uint64_t __74__AVPlayerViewControllerContentView_setTargetVideoGravity_forLayoutClass___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setShowsExternalPlaybackIndicator:(BOOL)a3
{
  if (a3)
  {
    if (self)
    {
      if (!self->_externalPlaybackIndicatorView)
      {
        v4 = [AVExternalPlaybackIndicatorView alloc];
        [(AVPlayerViewControllerContentView *)self bounds];
        v5 = [(AVExternalPlaybackIndicatorView *)v4 initWithFrame:?];
        externalPlaybackIndicatorView = self->_externalPlaybackIndicatorView;
        self->_externalPlaybackIndicatorView = v5;
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__AVPlayerViewControllerContentView_setShowsExternalPlaybackIndicator___block_invoke;
    v8[3] = &unk_1E720A090;
    v8[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  }

  else
  {
    v7 = self->_externalPlaybackIndicatorView;

    [(AVExternalPlaybackIndicatorView *)v7 removeFromSuperview];
  }
}

void __71__AVPlayerViewControllerContentView_setShowsExternalPlaybackIndicator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = v2[62];
  v3 = [v2 externalPlaybackIndicatorTitle];
  v4 = [*(a1 + 32) externalPlaybackIndicatorSubtitle];
  [v5 setTitleString:v3 subtitleString:v4];

  [(AVPlayerViewControllerContentView *)*(a1 + 32) _insertViewIntoHierarchy:v5];
  [*(a1 + 32) setNeedsLayout];
}

- (void)setShowsAudioOnlyIndicator:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *buf = 136315650;
    v17 = "[AVPlayerViewControllerContentView setShowsAudioOnlyIndicator:]";
    v19 = "showsAudioOnlyIndicator";
    v18 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v20 = 2080;
    v21 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if (v3)
  {
    if (self)
    {
      if (!self->_audioOnlyIndicatorView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v8 = MEMORY[0x1E69DCAB8];
        v9 = AVBundle();
        v10 = [v8 imageNamed:@"AudioOnlyIndicator" inBundle:v9];
        v11 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
        v12 = [v10 _flatImageWithColor:v11];
        v13 = [v7 initWithImage:v12];
        audioOnlyIndicatorView = self->_audioOnlyIndicatorView;
        self->_audioOnlyIndicatorView = v13;
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__AVPlayerViewControllerContentView_setShowsAudioOnlyIndicator___block_invoke;
    v15[3] = &unk_1E720A090;
    v15[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
  }

  else
  {
    [(UIImageView *)self->_audioOnlyIndicatorView removeFromSuperview];
  }
}

uint64_t __64__AVPlayerViewControllerContentView_setShowsAudioOnlyIndicator___block_invoke(uint64_t a1)
{
  [(AVPlayerViewControllerContentView *)*(a1 + 32) _insertViewIntoHierarchy:?];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

- (void)setShowsUnsupportedContentIndicator:(BOOL)a3
{
  if (a3)
  {
    if (self && !self->_unsupportedContentIndicatorView)
    {
      v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v5 = MEMORY[0x1E69DCAB8];
      v6 = AVBundle();
      v7 = [v5 imageNamed:@"UnsupportedContentIndicator" inBundle:v6];
      v8 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
      v9 = [v7 _flatImageWithColor:v8];
      v10 = [v4 initWithImage:v9];
      unsupportedContentIndicatorView = self->_unsupportedContentIndicatorView;
      self->_unsupportedContentIndicatorView = v10;
    }

    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:?];

    [(AVPlayerViewControllerContentView *)self setNeedsLayout];
  }

  else
  {
    v12 = self->_unsupportedContentIndicatorView;

    [(UIImageView *)v12 removeFromSuperview];
  }
}

- (void)setShowsPlaybackControls:(BOOL)a3
{
  if (self->_showsPlaybackControls != a3)
  {
    self->_showsPlaybackControls = a3;
    [(AVPlayerViewControllerContentView *)self loadPlaybackControlsViewIfNeeded];
  }
}

- (BOOL)isViewDescendantOfPlaybackControlsSubview:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileControlsViewController *)self->_controlsViewController viewIfLoaded];
  if (([(AVPlayerViewControllerCustomControlsView *)v4 isDescendantOfView:v5]& 1) != 0)
  {
    v6 = [(AVMobileControlsViewController *)self->_controlsViewController viewIfLoaded];

    if (v6 != v4)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([(AVPlayerViewControllerCustomControlsView *)v4 isDescendantOfView:self->_customControlsView])
  {
    v7 = self->_customControlsView != v4;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (void)setPlaybackContentContainerView:(id)a3
{
  v4 = a3;
  playbackContentContainerView = self->_playbackContentContainerView;
  if (playbackContentContainerView != v4)
  {
    v11 = v4;
    v6 = v4;
    v7 = self->_playbackContentContainerView;
    self->_playbackContentContainerView = v6;
    v8 = playbackContentContainerView;

    v9 = self->_playbackContentContainerView;
    [(AVPlaybackContentContainer *)v8 frame];
    [(AVPlaybackContentContainer *)v9 setFrame:?];

    [(AVPlayerViewControllerContentView *)self addPlaybackContentContainerViewIfNeeded];
    v10 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
    [v10 playerViewControllerContentViewPlaybackContentContainerViewChanged:self];

    v4 = v11;
  }
}

- (AVCatalystGlassPlaybackControlsView)glassPlaybackControlsView
{
  v2 = [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
  v3 = [v2 playbackControlsView];

  return v3;
}

- (AVPlaybackControlsView)chromePlaybackControlsView
{
  v2 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
  v3 = [v2 playbackControlsView];

  return v3;
}

- (UIView)iAdPreRollView
{
  iAdPreRollView = self->_iAdPreRollView;
  if (!iAdPreRollView)
  {
    v4 = [AVTouchIgnoringView alloc];
    [(AVPlayerViewControllerContentView *)self bounds];
    v5 = [(AVTouchIgnoringView *)v4 initWithFrame:?];
    v6 = self->_iAdPreRollView;
    self->_iAdPreRollView = v5;

    [(UIView *)self->_iAdPreRollView setEdgesInsettingLayoutMarginsFromSafeArea:0];
    [(AVPlayerViewControllerContentView *)self addSubview:self->_iAdPreRollView];
    iAdPreRollView = self->_iAdPreRollView;
  }

  return iAdPreRollView;
}

- (id)gen1Delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_gen1Delegate);

  return WeakRetained;
}

- (void)setExternalPlaybackIndicatorTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AVPlayerViewControllerContentView *)self setExternalPlaybackIndicatorTitle:v7];
  [(AVPlayerViewControllerContentView *)self setExternalPlaybackIndicatorSubtitle:v6];
  [(AVExternalPlaybackIndicatorView *)self->_externalPlaybackIndicatorView setTitleString:v7 subtitleString:v6];
}

- (void)setCustomControlsView:(id)a3
{
  v5 = a3;
  customControlsView = self->_customControlsView;
  if (customControlsView != v5)
  {
    v10 = v5;
    [(AVPlayerViewControllerCustomControlsView *)customControlsView removeFromSuperview];
    [(AVPlayerViewControllerContentView *)self _clearCustomControlsViewConstraintsIfNeeded];
    objc_storeStrong(&self->_customControlsView, a3);
    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:v10];
    [(AVPlayerViewControllerContentView *)self _updateCustomControlsViewConstraints];
    v7 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

    if (v7)
    {
      [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    }

    else
    {
      [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
    }
    v8 = ;
    v9 = [v8 playbackControlsView];
    [v9 setCustomControlsView:v10];

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](customControlsView, v5);
}

- (void)setContentOverlayViewPlacement:(unint64_t)a3
{
  if (self->_contentOverlayViewPlacement != a3)
  {
    self->_contentOverlayViewPlacement = a3;
    [(AVPlayerViewControllerContentView *)self setNeedsLayout];
  }
}

- (void)setContentOverlayView:(id)a3
{
  v5 = a3;
  contentOverlayView = self->_contentOverlayView;
  if (contentOverlayView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)contentOverlayView superview];

    if (v7 == self)
    {
      [(UIView *)self->_contentOverlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentOverlayView, a3);
    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:v8];
    contentOverlayView = [(AVPlayerViewControllerContentView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](contentOverlayView, v5);
}

- (void)setControlsViewController:(id)a3
{
  v5 = a3;
  if (self->_controlsViewController != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_controlsViewController, a3);
    v6 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    v7 = [v6 turboModeControlsView];
    turboModePlaybackControlsPlaceholderView = self->_turboModePlaybackControlsPlaceholderView;
    self->_turboModePlaybackControlsPlaceholderView = v7;

    v9 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

    if (v9)
    {
      [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    }

    else
    {
      [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
    }
    v10 = ;
    [v10 setPrefersCompactFullScreenControls:{-[AVPlayerViewControllerContentView styleSheetShouldUseCompactFullScreenItemSize](self, "styleSheetShouldUseCompactFullScreenItemSize")}];

    [(AVPlayerViewControllerContentView *)self loadPlaybackControlsViewIfNeeded];
    v5 = v11;
  }
}

- (id)catalystGlassControlsViewController
{
  v2 = [(AVPlayerViewControllerContentView *)self controlsViewController];
  v3 = [v2 controlsViewControllerIfCatalystGlass];

  return v3;
}

- (id)chromeControlsViewController
{
  v2 = [(AVPlayerViewControllerContentView *)self controlsViewController];
  v3 = [v2 controlsViewControllerIfChromed];

  return v3;
}

- (void)addPlaybackContentContainerViewIfNeeded
{
  v3 = [(AVPlayerViewControllerContentView *)self delegate];
  v4 = [v3 playerViewControllerContentViewIsPlayingOnSecondScreen:self];

  v6 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
  v5 = [v6 superview];

  if (v5 != self && (v4 & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:v6];
    [(AVPlayerViewControllerContentView *)self bounds];
    [v6 setFrame:?];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setInteractiveContentOverlayView:(id)a3
{
  v5 = a3;
  if (self->_interactiveContentOverlayView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_interactiveContentOverlayView, a3);
    if (v6)
    {
      [(AVPlayerViewControllerContentView *)self addSubview:v6];
      [(AVPlayerViewControllerContentView *)self setNeedsLayout];
      v5 = [(AVPlayerViewControllerContentView *)self layoutIfNeeded];
    }
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (void)setStyleSheetShouldUseCompactFullScreenItemSize:(BOOL)a3
{
  if (self->_styleSheetShouldUseCompactFullScreenItemSize != a3)
  {
    v4 = a3;
    self->_styleSheetShouldUseCompactFullScreenItemSize = a3;
    v6 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

    if (v6)
    {
      [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    }

    else
    {
      [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
    }
    v7 = ;
    [v7 setPrefersCompactFullScreenControls:v4];
  }
}

- (void)setAutomaticVideoGravity:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *MEMORY[0x1E69874F0];
  }

  objc_storeStrong(&self->_automaticVideoGravity, v7);

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avkit.SharedPreferences"];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88AB0];
  [v8 setRemoteObjectInterface:v9];

  [v8 resume];
  v10 = [v8 remoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__AVPlayerViewControllerContentView_setAutomaticVideoGravity___block_invoke;
  v12[3] = &unk_1E720A090;
  v13 = v8;
  v11 = v8;
  [v10 setAutomaticVideoGravity:v4 completion:v12];
}

- (NSString)automaticVideoGravity
{
  automaticVideoGravity = self->_automaticVideoGravity;
  if (!automaticVideoGravity)
  {
    v4 = CFPreferencesCopyValue(@"automaticVideoGravity", @"com.apple.avkit", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = *MEMORY[0x1E69874F0];
    }

    objc_storeStrong(&self->_automaticVideoGravity, v6);

    automaticVideoGravity = self->_automaticVideoGravity;
  }

  return automaticVideoGravity;
}

- (void)dealloc
{
  observationController = self->_observationController;
  if (observationController)
  {
    [(AVObservationController *)observationController stopAllObservation];
  }

  v4.receiver = self;
  v4.super_class = AVPlayerViewControllerContentView;
  [(AVPlayerViewControllerContentView *)&v4 dealloc];
}

- (AVPlayerViewControllerContentView)initWithFrame:(CGRect)a3 playbackContentContainerView:(id)a4 targetVideoGravities:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v23.receiver = self;
  v23.super_class = AVPlayerViewControllerContentView;
  v14 = [(AVView *)&v23 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    v14->_wantsBackdropView = 0;
    v14->_canAutomaticallyZoomLetterboxVideos = 1;
    v14->_needsInitialLayout = 1;
    v16 = [v13 mutableCopy];
    targetVideoGravities = v15->_targetVideoGravities;
    v15->_targetVideoGravities = v16;

    objc_storeStrong(&v15->_playbackContentContainerView, a4);
    v15->_contentOverlayViewPlacement = 0;
    v18 = objc_opt_new();
    cacheLargestInscribedRect = v15->_cacheLargestInscribedRect;
    v15->_cacheLargestInscribedRect = v18;

    v20 = [[AVScrollingObserver alloc] initWithView:v15];
    scrollingObserver = v15->_scrollingObserver;
    v15->_scrollingObserver = v20;

    [(AVScrollingObserver *)v15->_scrollingObserver addDelegate:v15];
  }

  return v15;
}

@end