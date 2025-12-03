@interface AVPlayerViewControllerContentView
- (AVCatalystGlassPlaybackControlsView)glassPlaybackControlsView;
- (AVPlaybackControlsView)chromePlaybackControlsView;
- (AVPlayerViewControllerContentView)initWithFrame:(CGRect)frame playbackContentContainerView:(id)view targetVideoGravities:(id)gravities;
- (AVPlayerViewControllerContentViewDelegate)delegate;
- (BOOL)avkit_hasFullScreenLayoutClass;
- (BOOL)isCoveringWindow;
- (BOOL)isViewDescendantOfPlaybackControlsSubview:(id)subview;
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
- (void)_applyVideoGravityIfNeeded:(void *)needed;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_clearCustomControlsViewConstraintsIfNeeded;
- (void)_insertViewIntoHierarchy:(id *)hierarchy;
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
- (void)scrollingObserverDidChangeScrollingState:(id)state;
- (void)setAutomaticVideoGravity:(id)gravity;
- (void)setContentOverlayView:(id)view;
- (void)setContentOverlayViewPlacement:(unint64_t)placement;
- (void)setControlsViewController:(id)controller;
- (void)setCustomControlsView:(id)view;
- (void)setExternalPlaybackIndicatorTitle:(id)title subtitle:(id)subtitle;
- (void)setFrame:(CGRect)frame;
- (void)setInteractiveContentOverlayView:(id)view;
- (void)setPlaybackContentContainerView:(id)view;
- (void)setShowsAudioOnlyIndicator:(BOOL)indicator;
- (void)setShowsExternalPlaybackIndicator:(BOOL)indicator;
- (void)setShowsPlaybackControls:(BOOL)controls;
- (void)setShowsUnsupportedContentIndicator:(BOOL)indicator;
- (void)setStyleSheetShouldUseCompactFullScreenItemSize:(BOOL)size;
- (void)setTargetVideoGravity:(id)gravity forLayoutClass:(unint64_t)class;
- (void)setWantsBackdropView:(BOOL)view;
- (void)willMoveToWindow:(id)window;
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

- (void)scrollingObserverDidChangeScrollingState:(id)state
{
  [(AVCABackdropLayerView *)self->_backdropLayerView updateActiveBackdropEffectIfGroupLeader];
  gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [gen1Delegate playerViewControllerContentViewDidUpdateScrollingStatus:self];

  chromePlaybackControlsView = [(AVPlayerViewControllerContentView *)self chromePlaybackControlsView];
  volumeButton = [chromePlaybackControlsView volumeButton];
  [volumeButton setNeedsUpdateGlyphRenderingMode];

  glassPlaybackControlsView = [(AVPlayerViewControllerContentView *)self glassPlaybackControlsView];
  volumeButton2 = [glassPlaybackControlsView volumeButton];
  [volumeButton2 setNeedsUpdateGlyphRenderingMode];

  volumeButton3 = [(AVTurboModePlaybackControlsPlaceholderView *)self->_turboModePlaybackControlsPlaceholderView volumeButton];
  [volumeButton3 setNeedsUpdateGlyphRenderingMode];
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  [(AVCacheLargestInscribedRectInBoundingPath *)self->_cacheLargestInscribedRect clearCache:view];

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
  layoutClass = [(AVPlayerViewControllerContentView *)self layoutClass];
  v3 = [layoutClass unsignedIntegerValue] == 1 || objc_msgSend(layoutClass, "unsignedIntegerValue") == 2;

  return v3;
}

- (id)avkit_backdropGroupLeader
{
  v3 = self->_backdropLayerView;
  if (![(AVPlayerViewControllerContentView *)self wantsBackdropView])
  {
    v6.receiver = self;
    v6.super_class = AVPlayerViewControllerContentView;
    avkit_backdropGroupLeader = [(UIView *)&v6 avkit_backdropGroupLeader];

    v3 = avkit_backdropGroupLeader;
  }

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
    [gen1Delegate playerViewControllerContentViewDidChangeSize:self];
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

  delegate = [(AVPlayerViewControllerContentView *)self delegate];
  [delegate playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:self];
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
      playbackContentContainerView = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
      activeContentView = [playbackContentContainerView activeContentView];

      [activeContentView frame];
      if (activeContentView)
      {
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = v22;
        superview = [activeContentView superview];

        if (superview)
        {
          superview2 = [activeContentView superview];
          [(AVPlayerViewControllerContentView *)self convertRect:superview2 fromView:v23, v24, v25, v26];
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
    playbackContentContainerView2 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
    v7 = v165;
    if (![playbackContentContainerView2 isDescendantOfView:self])
    {
      goto LABEL_35;
    }

    [(AVPlayerViewControllerContentView *)self bounds];
    v35 = v34;
    v153 = v36;
    v38 = v37;
    v40 = v39;
    controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    contentTabPresentationContext = [controlsViewControllerIfChromeless contentTabPresentationContext];
    viewIfLoaded = [controlsViewControllerIfChromeless viewIfLoaded];
    [controlsViewControllerIfChromeless unobscuredContentArea];
    v156 = v44;
    v149 = v46;
    rect = v45;
    v148 = v47;
    v48 = controlsViewControllerIfChromeless;
    v49 = v48;
    if (v48)
    {
      controlsViewControllerIfGlass = v48;
    }

    else
    {
      controlsViewControllerIfGlass = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
      contentTabPresentationContext2 = [controlsViewControllerIfGlass contentTabPresentationContext];

      viewIfLoaded2 = [controlsViewControllerIfGlass viewIfLoaded];

      [controlsViewControllerIfGlass unobscuredContentArea];
      v156 = v53;
      v149 = v55;
      rect = v54;
      v148 = v56;
      viewIfLoaded = viewIfLoaded2;
      contentTabPresentationContext = contentTabPresentationContext2;
    }

    playbackContentContainerView3 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
    activeContentView2 = [playbackContentContainerView3 activeContentView];
    playerLayerView = [activeContentView2 playerLayerView];

    if (!controlsViewControllerIfGlass)
    {
      goto LABEL_33;
    }

    if (!viewIfLoaded)
    {
      goto LABEL_33;
    }

    if (!playerLayerView)
    {
      goto LABEL_33;
    }

    if (!contentTabPresentationContext)
    {
      goto LABEL_33;
    }

    state = [contentTabPresentationContext state];
    if (state)
    {
      if (state != 2)
      {
        goto LABEL_33;
      }

      transitionContext = [contentTabPresentationContext transitionContext];
      direction = [transitionContext direction];

      if (direction)
      {
        goto LABEL_33;
      }
    }

    v146 = v35;
    v147 = v38;
    v159 = v6;
    v161 = x;
    [contentTabPresentationContext presentationHeight];
    [(AVPlayerViewControllerContentView *)self convertPoint:viewIfLoaded fromView:0.0, v63];
    v145 = v64;
    [(AVPlayerViewControllerContentView *)self convertRect:viewIfLoaded fromView:v156, rect, v149, v148];
    v66 = v65;
    v68 = v67;
    recta = v69;
    v71 = v70;
    [playerLayerView videoDisplaySize];
    v74 = v73;
    if (v73 != 0.0)
    {
      v75 = v72;
      if (v72 != 0.0)
      {
        v157 = v5;
        videoGravity = [playerLayerView videoGravity];
        v77 = v40;
        if ((videoGravity - 2) < 2)
        {
          goto LABEL_26;
        }

        if (videoGravity == 1)
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
            [playbackContentContainerView2 setFrame:{v146, v154, v147, v40}];
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
    [playbackContentContainerView2 setFrame:{v35, v153, v38, v40}];
    goto LABEL_34;
  }

LABEL_36:
  controlsViewController = [(AVPlayerViewControllerContentView *)self controlsViewController];
  viewIfLoaded3 = [controlsViewController viewIfLoaded];
  [viewIfLoaded3 setFrame:{x, y, width, height}];

  [(AVExternalPlaybackIndicatorView *)self->_externalPlaybackIndicatorView setFrame:x, y, width, height];
  iAdPreRollViewIfLoaded = [(AVPlayerViewControllerContentView *)self iAdPreRollViewIfLoaded];
  [iAdPreRollViewIfLoaded setFrame:{x, y, width, height}];

  interactiveContentOverlayView = [(AVPlayerViewControllerContentView *)self interactiveContentOverlayView];
  [interactiveContentOverlayView setFrame:{x, y, width, height}];

  [(AVCABackdropLayerView *)self->_backdropLayerView setFrame:x, y, width, height];
  [(UIImageView *)self->_audioOnlyIndicatorView setFrame:v4, v5, v6, v7];
  [(UIImageView *)self->_unsupportedContentIndicatorView setFrame:v4, v5, v6, v7];
  audioOnlyIndicatorView = self->_audioOnlyIndicatorView;
  v172.origin.x = v4;
  v172.origin.y = v5;
  v172.size.width = v6;
  v172.size.height = v7;
  v88 = CGRectGetWidth(v172);
  image = [(UIImageView *)self->_audioOnlyIndicatorView image];
  [image size];
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
    image2 = [(UIImageView *)self->_audioOnlyIndicatorView image];
    [image2 size];
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
  image3 = [(UIImageView *)self->_unsupportedContentIndicatorView image];
  [image3 size];
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
    image4 = [(UIImageView *)self->_unsupportedContentIndicatorView image];
    [image4 size];
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
    layoutClass = [(AVPlayerViewControllerContentView *)self layoutClass];

    if (layoutClass)
    {
      layoutClass2 = [(AVPlayerViewControllerContentView *)self layoutClass];
      unsignedIntegerValue = [layoutClass2 unsignedIntegerValue];

      gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
      if ([gen1Delegate playerViewControllerContentViewShouldApplyAutomaticVideoGravity:self])
      {
        automaticVideoGravity = [(AVPlayerViewControllerContentView *)self automaticVideoGravity];
        v108 = AVVideoGravityFromString(automaticVideoGravity);
      }

      else
      {
        automaticVideoGravity = [(AVPlayerViewControllerContentView *)self targetVideoGravities];
        v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
        v110 = [automaticVideoGravity objectForKeyedSubscript:v109];
        v108 = AVVideoGravityFromString(v110);
      }

      v111 = *MEMORY[0x1E69DDCE0];
      v112 = *(MEMORY[0x1E69DDCE0] + 8);
      v113 = *(MEMORY[0x1E69DDCE0] + 16);
      v114 = *(MEMORY[0x1E69DDCE0] + 24);
      if ([(AVPlayerViewControllerContentView *)self isCoveringWindow])
      {
        gen1Delegate2 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
        v116 = [gen1Delegate2 playerViewControllerContentViewIsBeingTransitionedFromFullScreen:self];

        if ((v116 & 1) == 0)
        {
          v117 = MEMORY[0x1E69DDA98];
          if (![*MEMORY[0x1E69DDA98] _isClassic] || objc_msgSend(*v117, "_classicMode") == 5)
          {
            traitCollection = [(AVPlayerViewControllerContentView *)self traitCollection];
            [traitCollection displayCornerRadius];
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
      gen1Delegate3 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
      v125 = [gen1Delegate3 playerViewControllerContentViewHasActiveTransition:self];

      if (v125 && [MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
      {
        [(AVPlayerViewControllerContentView *)self _applyVideoGravityIfNeeded:v108];
      }

      v126 = *MEMORY[0x1E695EFF8];
      v127 = *(MEMORY[0x1E695EFF8] + 8);
      playbackContentContainerView4 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
      [playbackContentContainerView4 bounds];
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
      playbackContentContainerView5 = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
      [playbackContentContainerView5 setVideoContentFrame:{v137, v138, v139, v140}];

      gen1Delegate4 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
      v143 = [gen1Delegate4 playerViewControllerContentViewHasActiveTransition:self];

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
  gen1Delegate5 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [gen1Delegate5 playerViewControllerContentViewDidLayoutSubviews:self];

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
  if (self)
  {
    playbackContentContainerView = [self playbackContentContainerView];
    activeContentView = [playbackContentContainerView activeContentView];
    playerLayerView = [activeContentView playerLayerView];
  }

  else
  {
    playerLayerView = 0;
  }

  return playerLayerView;
}

- (void)_applyVideoGravityIfNeeded:(void *)needed
{
  _playerLayerView = [(AVPlayerViewControllerContentView *)needed _playerLayerView];
  if ([_playerLayerView videoGravity] != a2)
  {
    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      [MEMORY[0x1E6979518] begin];
      v4 = MEMORY[0x1E6979518];
      [MEMORY[0x1E69DD250] _currentAnimationDuration];
      [v4 setAnimationDuration:?];
      v5 = MEMORY[0x1E6979518];
      _currentAnimationCurve = [MEMORY[0x1E69DD250] _currentAnimationCurve];
      if (_currentAnimationCurve > 3)
      {
        v7 = MEMORY[0x1E6979EA0];
      }

      else
      {
        v7 = qword_1E7209D38[_currentAnimationCurve];
      }

      v9 = *v7;
      v10 = [MEMORY[0x1E69793D0] functionWithName:v9];

      [v5 setAnimationTimingFunction:v10];
      playbackContentContainerView = [needed playbackContentContainerView];
      gen1Delegate = [needed gen1Delegate];
      v13 = [gen1Delegate playerViewControllerContentViewHasActiveTransition:needed];

      [playbackContentContainerView setVideoGravity:a2 removingAllSublayerTransformAnimations:v13];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      [_playerLayerView setVideoGravity:a2];
      layer = [_playerLayerView layer];
      [layer removeAllAnimations];
    }

    gen1Delegate2 = [needed gen1Delegate];
    [gen1Delegate2 playerViewControllerContentViewDidChangeVideoGravity:needed];
  }
}

- (void)willMoveToWindow:(id)window
{
  window = [(AVPlayerViewControllerContentView *)self window];
  if (window)
  {
    v5 = window;
    [window _removeBoundingPathChangeObserver:self];
    window = v5;
  }
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = AVPlayerViewControllerContentView;
  [(AVPlayerViewControllerContentView *)&v5 didMoveToSuperview];
  [(AVScrollingObserver *)self->_scrollingObserver update];
  gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [gen1Delegate playerViewControllerContentViewDidMoveToSuperviewOrWindow:self];

  delegate = [(AVPlayerViewControllerContentView *)self delegate];
  [delegate playerViewControllerContentViewDidMoveToSuperview:self];
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = AVPlayerViewControllerContentView;
  [(AVPlayerViewControllerContentView *)&v11 didMoveToWindow];
  [(AVScrollingObserver *)self->_scrollingObserver update];
  [(AVPlayerViewControllerContentView *)self loadPlaybackControlsViewIfNeeded];
  [(AVPlayerViewControllerContentView *)self avkit_needsUpdateBackdropCaptureViewHidden];
  delegate = [(AVPlayerViewControllerContentView *)self delegate];
  window = [(AVPlayerViewControllerContentView *)self window];
  [delegate playerViewControllerContentView:self didMoveToWindow:window];

  gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  [gen1Delegate playerViewControllerContentViewDidMoveToSuperviewOrWindow:self];

  window2 = [(AVPlayerViewControllerContentView *)self window];
  v7 = window2;
  if (window2)
  {
    [window2 _addBoundingPathChangeObserver:self];
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
  if (!self || !*(self + 592))
  {
    return;
  }

  [(AVPlayerViewControllerContentView *)self _clearCustomControlsViewConstraintsIfNeeded];
  array = [MEMORY[0x1E695DF70] array];
  v3 = *(self + 576);
  transportControlsAreaLayoutGuideProvidingView = [*(self + 592) transportControlsAreaLayoutGuideProvidingView];
  volumeControlsAreaLayoutGuideProvidingView = [*(self + 592) volumeControlsAreaLayoutGuideProvidingView];
  displayModeControlsAreaLayoutGuideProvidingView = [*(self + 592) displayModeControlsAreaLayoutGuideProvidingView];
  if (!v3 || ![v3 isViewLoaded])
  {
    goto LABEL_14;
  }

  transportControlsLayoutItem = [v3 transportControlsLayoutItem];
  volumeControlsLayoutItem = [v3 volumeControlsLayoutItem];
  displayModeControlsLayoutItem = [v3 displayModeControlsLayoutItem];
  v8 = displayModeControlsLayoutItem;
  if (transportControlsLayoutItem)
  {
    v9 = volumeControlsLayoutItem == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || displayModeControlsLayoutItem == 0)
  {

LABEL_14:
    leadingAnchor = [transportControlsAreaLayoutGuideProvidingView leadingAnchor];
    leadingAnchor2 = [self leadingAnchor];
    v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v53;
    trailingAnchor = [transportControlsAreaLayoutGuideProvidingView trailingAnchor];
    trailingAnchor2 = [self trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[1] = v12;
    topAnchor = [transportControlsAreaLayoutGuideProvidingView topAnchor];
    bottomAnchor = [self bottomAnchor];
    [topAnchor constraintEqualToAnchor:bottomAnchor];
    v15 = v66 = array;
    v74[2] = v15;
    bottomAnchor2 = [transportControlsAreaLayoutGuideProvidingView bottomAnchor];
    [self bottomAnchor];
    v17 = v63 = v3;
    [bottomAnchor2 constraintEqualToAnchor:v17];
    v18 = v62 = transportControlsAreaLayoutGuideProvidingView;
    v74[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [v66 addObjectsFromArray:v19];

    leadingAnchor3 = [volumeControlsAreaLayoutGuideProvidingView leadingAnchor];
    trailingAnchor3 = [self trailingAnchor];
    v54 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
    v73[0] = v54;
    trailingAnchor4 = [volumeControlsAreaLayoutGuideProvidingView trailingAnchor];
    trailingAnchor5 = [self trailingAnchor];
    v21 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v73[1] = v21;
    topAnchor2 = [volumeControlsAreaLayoutGuideProvidingView topAnchor];
    topAnchor3 = [self topAnchor];
    v24 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v73[2] = v24;
    bottomAnchor3 = [volumeControlsAreaLayoutGuideProvidingView bottomAnchor];
    topAnchor4 = [self topAnchor];
    v27 = [bottomAnchor3 constraintEqualToAnchor:topAnchor4];
    v73[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [v66 addObjectsFromArray:v28];

    leadingAnchor4 = [displayModeControlsAreaLayoutGuideProvidingView leadingAnchor];
    leadingAnchor5 = [self leadingAnchor];
    v55 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v72[0] = v55;
    trailingAnchor6 = [displayModeControlsAreaLayoutGuideProvidingView trailingAnchor];
    leadingAnchor6 = [self leadingAnchor];
    v30 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor6];
    v72[1] = v30;
    topAnchor5 = [displayModeControlsAreaLayoutGuideProvidingView topAnchor];
    topAnchor6 = [self topAnchor];
    v33 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v72[2] = v33;
    bottomAnchor4 = [displayModeControlsAreaLayoutGuideProvidingView bottomAnchor];
    topAnchor7 = [self topAnchor];
    v36 = [bottomAnchor4 constraintEqualToAnchor:topAnchor7];
    v72[3] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:4];
    [v66 addObjectsFromArray:v37];

    transportControlsAreaLayoutGuideProvidingView = v62;
    v3 = v63;

    array = v66;
    goto LABEL_15;
  }

  v47 = [transportControlsAreaLayoutGuideProvidingView avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:transportControlsLayoutItem];
  [array addObjectsFromArray:v47];

  v48 = [volumeControlsAreaLayoutGuideProvidingView avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:volumeControlsLayoutItem];
  [array addObjectsFromArray:v48];

  v49 = [displayModeControlsAreaLayoutGuideProvidingView avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v8];
  [array addObjectsFromArray:v49];

LABEL_15:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = array;
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

  v44 = [*(self + 592) avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:self];
  [v38 addObjectsFromArray:v44];

  [MEMORY[0x1E696ACD8] activateConstraints:v38];
  v45 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v38];
  v46 = *(self + 520);
  *(self + 520) = v45;

  [*(self + 592) setNeedsUpdateConstraints];
}

- (void)_clearCustomControlsViewConstraintsIfNeeded
{
  if (self && *(self + 520))
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v2 = *(self + 520);
    *(self + 520) = 0;
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
  controlsViewController = [(AVPlayerViewControllerContentView *)self controlsViewController];
  if (controlsViewController)
  {
    window = [(AVPlayerViewControllerContentView *)self window];
    if (window)
    {
      v4 = window;
      showsPlaybackControls = [(AVPlayerViewControllerContentView *)self showsPlaybackControls];

      if (showsPlaybackControls)
      {
        [controlsViewController loadViewIfNeeded];
        [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:?];
        view = [controlsViewController view];
        [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:view];

        [(AVPlayerViewControllerContentView *)self _updateCustomControlsViewConstraints];
        [(AVPlayerViewControllerContentView *)self avkit_needsUpdateBackdropCaptureViewHidden];
        chromeControlsViewController = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

        if (chromeControlsViewController)
        {
          [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
        }

        else
        {
          [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
        }
        v8 = ;
        playbackControlsView = [v8 playbackControlsView];
        [playbackControlsView setCustomControlsView:self->_customControlsView];

        [(AVPlayerViewControllerContentView *)self _updateControlsViewContentIntersectionIfNeeded];
      }
    }
  }
}

- (void)_insertViewIntoHierarchy:(id *)hierarchy
{
  v12[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (hierarchy)
  {
    if (v3)
    {
      superview = [v3 superview];

      if (superview != hierarchy)
      {
        v12[0] = hierarchy[78];
        v12[1] = hierarchy[60];
        v12[2] = hierarchy[62];
        v12[3] = hierarchy[64];
        v12[4] = hierarchy[61];
        v12[5] = hierarchy[66];
        v12[6] = [hierarchy[72] viewIfLoaded];
        v6 = 0;
        v7 = 0;
        v12[7] = hierarchy[74];
        while (1)
        {
          v8 = v12[v6];
          v9 = v8;
          if (v8 == v4)
          {
            break;
          }

          superview2 = [v8 superview];
          if (superview2 == hierarchy)
          {
            ++v7;
          }

          if (++v6 == 8)
          {
            goto LABEL_11;
          }
        }

        [v4 removeFromSuperview];
        [hierarchy insertSubview:v4 atIndex:v7];

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
  gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  v4 = [gen1Delegate playerViewControllerContentViewOverrideLayoutClass:self];

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
  window = [(AVPlayerViewControllerContentView *)self window];

  if (!window)
  {
    return 0;
  }

  window2 = [(AVPlayerViewControllerContentView *)self window];
  [(AVPlayerViewControllerContentView *)self bounds];
  [window2 convertRect:self fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  rect = v6;
  UIPointRoundToScale();
  UISizeRoundToScale();
  v48 = v13;
  v49 = v14;
  window3 = [(AVPlayerViewControllerContentView *)self window];
  windowScene = [window3 windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
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

  gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
  v42 = [gen1Delegate playerViewControllerContentViewHasActiveTransition:self];

  if (!v42)
  {
    return 0;
  }

  window4 = [(AVPlayerViewControllerContentView *)self window];
  [window4 bounds];

  window5 = [(AVPlayerViewControllerContentView *)self window];
  [window5 bounds];
  Height = CGRectGetHeight(v58);
  window6 = [(AVPlayerViewControllerContentView *)self window];
  [window6 bounds];
  v47 = CGRectGetWidth(v59);

  return v47 == v49 && Height == v32;
}

- (void)setWantsBackdropView:(BOOL)view
{
  if (self->_wantsBackdropView != view)
  {
    self->_wantsBackdropView = view;
    if (view && !self->_backdropLayerView)
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

- (void)setTargetVideoGravity:(id)gravity forLayoutClass:(unint64_t)class
{
  gravityCopy = gravity;
  _playerLayerView = [(AVPlayerViewControllerContentView *)self _playerLayerView];
  v8 = *MEMORY[0x1E69874E8];
  if (gravityCopy)
  {
    v8 = gravityCopy;
  }

  v9 = v8;

  v10 = [v9 copy];
  targetVideoGravities = [(AVPlayerViewControllerContentView *)self targetVideoGravities];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:class];
  [targetVideoGravities setObject:v10 forKeyedSubscript:v12];

  layoutClass = [(AVPlayerViewControllerContentView *)self layoutClass];
  if (layoutClass)
  {
    v14 = layoutClass;
    layoutClass2 = [(AVPlayerViewControllerContentView *)self layoutClass];
    if ([layoutClass2 unsignedIntegerValue] == class)
    {
      videoGravity = [_playerLayerView videoGravity];
      v17 = AVVideoGravityFromString(v9);

      if (videoGravity != v17)
      {
        gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
        v19 = [gen1Delegate playerViewControllerContentViewShouldApplyAutomaticVideoGravity:self];

        if (v19)
        {
          [(AVPlayerViewControllerContentView *)self setAutomaticVideoGravity:v9];
        }

        window = [(AVPlayerViewControllerContentView *)self window];

        if (window)
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
          [_playerLayerView setVideoGravity:AVVideoGravityFromString(v9)];
          gen1Delegate2 = [(AVPlayerViewControllerContentView *)self gen1Delegate];
          [gen1Delegate2 playerViewControllerContentViewDidChangeVideoGravity:self];
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

- (void)setShowsExternalPlaybackIndicator:(BOOL)indicator
{
  if (indicator)
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

- (void)setShowsAudioOnlyIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v22 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *buf = 136315650;
    v17 = "[AVPlayerViewControllerContentView setShowsAudioOnlyIndicator:]";
    v19 = "showsAudioOnlyIndicator";
    v18 = 2080;
    if (indicatorCopy)
    {
      v6 = "YES";
    }

    v20 = 2080;
    v21 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if (indicatorCopy)
  {
    if (self)
    {
      if (!self->_audioOnlyIndicatorView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v8 = MEMORY[0x1E69DCAB8];
        v9 = AVBundle();
        v10 = [v8 imageNamed:@"AudioOnlyIndicator" inBundle:v9];
        aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
        v12 = [v10 _flatImageWithColor:aV_indicatorForegroundColor];
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

- (void)setShowsUnsupportedContentIndicator:(BOOL)indicator
{
  if (indicator)
  {
    if (self && !self->_unsupportedContentIndicatorView)
    {
      v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v5 = MEMORY[0x1E69DCAB8];
      v6 = AVBundle();
      v7 = [v5 imageNamed:@"UnsupportedContentIndicator" inBundle:v6];
      aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
      v9 = [v7 _flatImageWithColor:aV_indicatorForegroundColor];
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

- (void)setShowsPlaybackControls:(BOOL)controls
{
  if (self->_showsPlaybackControls != controls)
  {
    self->_showsPlaybackControls = controls;
    [(AVPlayerViewControllerContentView *)self loadPlaybackControlsViewIfNeeded];
  }
}

- (BOOL)isViewDescendantOfPlaybackControlsSubview:(id)subview
{
  subviewCopy = subview;
  viewIfLoaded = [(AVMobileControlsViewController *)self->_controlsViewController viewIfLoaded];
  if (([(AVPlayerViewControllerCustomControlsView *)subviewCopy isDescendantOfView:viewIfLoaded]& 1) != 0)
  {
    viewIfLoaded2 = [(AVMobileControlsViewController *)self->_controlsViewController viewIfLoaded];

    if (viewIfLoaded2 != subviewCopy)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([(AVPlayerViewControllerCustomControlsView *)subviewCopy isDescendantOfView:self->_customControlsView])
  {
    v7 = self->_customControlsView != subviewCopy;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (void)setPlaybackContentContainerView:(id)view
{
  viewCopy = view;
  playbackContentContainerView = self->_playbackContentContainerView;
  if (playbackContentContainerView != viewCopy)
  {
    v11 = viewCopy;
    v6 = viewCopy;
    v7 = self->_playbackContentContainerView;
    self->_playbackContentContainerView = v6;
    v8 = playbackContentContainerView;

    v9 = self->_playbackContentContainerView;
    [(AVPlaybackContentContainer *)v8 frame];
    [(AVPlaybackContentContainer *)v9 setFrame:?];

    [(AVPlayerViewControllerContentView *)self addPlaybackContentContainerViewIfNeeded];
    gen1Delegate = [(AVPlayerViewControllerContentView *)self gen1Delegate];
    [gen1Delegate playerViewControllerContentViewPlaybackContentContainerViewChanged:self];

    viewCopy = v11;
  }
}

- (AVCatalystGlassPlaybackControlsView)glassPlaybackControlsView
{
  catalystGlassControlsViewController = [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
  playbackControlsView = [catalystGlassControlsViewController playbackControlsView];

  return playbackControlsView;
}

- (AVPlaybackControlsView)chromePlaybackControlsView
{
  chromeControlsViewController = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
  playbackControlsView = [chromeControlsViewController playbackControlsView];

  return playbackControlsView;
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

- (void)setExternalPlaybackIndicatorTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  [(AVPlayerViewControllerContentView *)self setExternalPlaybackIndicatorTitle:titleCopy];
  [(AVPlayerViewControllerContentView *)self setExternalPlaybackIndicatorSubtitle:subtitleCopy];
  [(AVExternalPlaybackIndicatorView *)self->_externalPlaybackIndicatorView setTitleString:titleCopy subtitleString:subtitleCopy];
}

- (void)setCustomControlsView:(id)view
{
  viewCopy = view;
  customControlsView = self->_customControlsView;
  if (customControlsView != viewCopy)
  {
    v10 = viewCopy;
    [(AVPlayerViewControllerCustomControlsView *)customControlsView removeFromSuperview];
    [(AVPlayerViewControllerContentView *)self _clearCustomControlsViewConstraintsIfNeeded];
    objc_storeStrong(&self->_customControlsView, view);
    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:v10];
    [(AVPlayerViewControllerContentView *)self _updateCustomControlsViewConstraints];
    chromeControlsViewController = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

    if (chromeControlsViewController)
    {
      [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    }

    else
    {
      [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
    }
    v8 = ;
    playbackControlsView = [v8 playbackControlsView];
    [playbackControlsView setCustomControlsView:v10];

    viewCopy = v10;
  }

  MEMORY[0x1EEE66BB8](customControlsView, viewCopy);
}

- (void)setContentOverlayViewPlacement:(unint64_t)placement
{
  if (self->_contentOverlayViewPlacement != placement)
  {
    self->_contentOverlayViewPlacement = placement;
    [(AVPlayerViewControllerContentView *)self setNeedsLayout];
  }
}

- (void)setContentOverlayView:(id)view
{
  viewCopy = view;
  contentOverlayView = self->_contentOverlayView;
  if (contentOverlayView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)contentOverlayView superview];

    if (superview == self)
    {
      [(UIView *)self->_contentOverlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentOverlayView, view);
    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:v8];
    contentOverlayView = [(AVPlayerViewControllerContentView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](contentOverlayView, viewCopy);
}

- (void)setControlsViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_controlsViewController != controllerCopy)
  {
    v11 = controllerCopy;
    objc_storeStrong(&self->_controlsViewController, controller);
    chromeControlsViewController = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    turboModeControlsView = [chromeControlsViewController turboModeControlsView];
    turboModePlaybackControlsPlaceholderView = self->_turboModePlaybackControlsPlaceholderView;
    self->_turboModePlaybackControlsPlaceholderView = turboModeControlsView;

    chromeControlsViewController2 = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

    if (chromeControlsViewController2)
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
    controllerCopy = v11;
  }
}

- (id)catalystGlassControlsViewController
{
  controlsViewController = [(AVPlayerViewControllerContentView *)self controlsViewController];
  controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];

  return controlsViewControllerIfCatalystGlass;
}

- (id)chromeControlsViewController
{
  controlsViewController = [(AVPlayerViewControllerContentView *)self controlsViewController];
  controlsViewControllerIfChromed = [controlsViewController controlsViewControllerIfChromed];

  return controlsViewControllerIfChromed;
}

- (void)addPlaybackContentContainerViewIfNeeded
{
  delegate = [(AVPlayerViewControllerContentView *)self delegate];
  v4 = [delegate playerViewControllerContentViewIsPlayingOnSecondScreen:self];

  playbackContentContainerView = [(AVPlayerViewControllerContentView *)self playbackContentContainerView];
  superview = [playbackContentContainerView superview];

  if (superview != self && (v4 & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(AVPlayerViewControllerContentView *)&self->super.super.super.super.isa _insertViewIntoHierarchy:playbackContentContainerView];
    [(AVPlayerViewControllerContentView *)self bounds];
    [playbackContentContainerView setFrame:?];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setInteractiveContentOverlayView:(id)view
{
  viewCopy = view;
  if (self->_interactiveContentOverlayView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_interactiveContentOverlayView, view);
    if (v6)
    {
      [(AVPlayerViewControllerContentView *)self addSubview:v6];
      [(AVPlayerViewControllerContentView *)self setNeedsLayout];
      viewCopy = [(AVPlayerViewControllerContentView *)self layoutIfNeeded];
    }
  }

  MEMORY[0x1EEE66BE0](viewCopy);
}

- (void)setStyleSheetShouldUseCompactFullScreenItemSize:(BOOL)size
{
  if (self->_styleSheetShouldUseCompactFullScreenItemSize != size)
  {
    sizeCopy = size;
    self->_styleSheetShouldUseCompactFullScreenItemSize = size;
    chromeControlsViewController = [(AVPlayerViewControllerContentView *)self chromeControlsViewController];

    if (chromeControlsViewController)
    {
      [(AVPlayerViewControllerContentView *)self chromeControlsViewController];
    }

    else
    {
      [(AVPlayerViewControllerContentView *)self catalystGlassControlsViewController];
    }
    v7 = ;
    [v7 setPrefersCompactFullScreenControls:sizeCopy];
  }
}

- (void)setAutomaticVideoGravity:(id)gravity
{
  gravityCopy = gravity;
  v5 = [gravityCopy copy];
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
  remoteObjectProxy = [v8 remoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__AVPlayerViewControllerContentView_setAutomaticVideoGravity___block_invoke;
  v12[3] = &unk_1E720A090;
  v13 = v8;
  v11 = v8;
  [remoteObjectProxy setAutomaticVideoGravity:gravityCopy completion:v12];
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

- (AVPlayerViewControllerContentView)initWithFrame:(CGRect)frame playbackContentContainerView:(id)view targetVideoGravities:(id)gravities
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  gravitiesCopy = gravities;
  v23.receiver = self;
  v23.super_class = AVPlayerViewControllerContentView;
  height = [(AVView *)&v23 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    height->_wantsBackdropView = 0;
    height->_canAutomaticallyZoomLetterboxVideos = 1;
    height->_needsInitialLayout = 1;
    v16 = [gravitiesCopy mutableCopy];
    targetVideoGravities = v15->_targetVideoGravities;
    v15->_targetVideoGravities = v16;

    objc_storeStrong(&v15->_playbackContentContainerView, view);
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