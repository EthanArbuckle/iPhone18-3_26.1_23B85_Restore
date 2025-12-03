@interface SSSScreenshotsView
- (BOOL)_contentSwitcherShouldMoveDown;
- (BOOL)_isLandscapePhone;
- (BOOL)_isPortraitPhone;
- (BOOL)_isShowingPDFScreenshot;
- (BOOL)_layoutShouldEnableContentSwitcher;
- (BOOL)_layoutShouldShowContentSwitcher;
- (BOOL)_screenshotEditsShouldBeSnapshottedForCurrentScreenshot;
- (BOOL)_shouldAvoidKeyboard;
- (BOOL)_shouldExtendBottomBarForPageDots;
- (BOOL)_shouldHandleKeyboardNotification:(id)notification;
- (BOOL)_shouldShowBottomBar;
- (BOOL)_shouldShowScreenshotViewAtIndex:(int64_t)index;
- (BOOL)isCropped;
- (BOOL)isShowingVICard;
- (BOOL)isVICardFullScreen;
- (CGRect)_availableRectForContent;
- (CGRect)_effectiveBottomBarExtent;
- (CGRect)_frameForScreenshot:(id)screenshot atIndex:(int64_t)index numberOfScreenshots:(int64_t)screenshots maximumSize:(CGSize)size interScreenshotSpacing:(double)spacing rectToCenterAboveKeyboard:(CGRect)keyboard state:(unint64_t)state;
- (CGRect)_layoutBounds;
- (CGRect)_layoutBoundsForFullPageThumbnail;
- (CGRect)_scrollViewRectForPage:(int64_t)page;
- (CGRect)screenshotsExtentRect;
- (CGSize)_screenshotMaximumSize;
- (CGSize)_scrollContentSize;
- (NSArray)activityItems;
- (NSArray)dragItems;
- (NSArray)imageItems;
- (NSArray)screenshots;
- (NSArray)visibleScreenshots;
- (SEL)redoItemAction;
- (SEL)shareItemAction;
- (SEL)undoItemAction;
- (SSSScreenshot)currentScreenshot;
- (SSSScreenshotView)appearingScreenshotView;
- (SSSScreenshotsView)initWithFrame:(CGRect)frame;
- (SSSScreenshotsViewDelegate)delegate;
- (UIEdgeInsets)_scrollContentInsets;
- (double)_bottomBarHeightIncludingSafeAreaInsets;
- (double)_interScreenshotSpacing;
- (double)_thumbnailTrayWidth;
- (double)_toolPickerHeightOnPhone;
- (id)_bottomBarContentView;
- (id)_currentPDFView;
- (id)_omnibar;
- (id)_rectsForShadowView;
- (id)_screenshotAtIndex:(int64_t)index;
- (id)_screenshotViewForScreenshot:(id)screenshot;
- (id)_screenshotsEligibleForSharing;
- (id)_viewForPage:(int64_t)page;
- (id)createUndoMenu;
- (id)currentOmnibar;
- (id)currentScreenshotView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)previewForDragItem:(id)item inContainer:(id)container;
- (id)redoItemTarget;
- (id)screenshotViewForScreenshot:(id)screenshot;
- (id)shareItemTarget;
- (id)targetForCancellingDragItem:(id)item inContainer:(id)container;
- (id)undoItemTarget;
- (id)viewControllerForPresentationsFromScreenshotView:(id)view;
- (id)viewsForScreenshots:(id)screenshots;
- (int64_t)_currentPage;
- (int64_t)_effectiveIndexForIndex:(int64_t)index inNumberOfScreenshots:(int64_t)screenshots;
- (int64_t)_pageForXOffsetInScrollView:(double)view;
- (int64_t)_positioningIndexForIndex:(int64_t)index numberOfScreenshots:(int64_t)screenshots;
- (int64_t)currentPDFPage;
- (int64_t)editMode;
- (int64_t)positionForBar:(id)bar;
- (void)_addOrRemoveActionInfoView;
- (void)_dismissVISheetIfNecessary;
- (void)_layoutScreenshotView:(id)view forState:(unint64_t)state isFirstScreenshot:(BOOL)screenshot isCurrentScreenshot:(BOOL)currentScreenshot;
- (void)_layoutThumbnailView;
- (void)_removeHighlightedModeForScreenshotViewIfNecessary:(id)necessary;
- (void)_scrollToPage:(int64_t)page animated:(BOOL)animated;
- (void)_setupPaletteIfNecessary;
- (void)_undo;
- (void)_undoAll;
- (void)_updateActiveScreenshotViewIfNecessary;
- (void)_updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:(BOOL)animated;
- (void)_updateDisplayedPage;
- (void)_updateFirstResponderForHidingToolPicker;
- (void)_updateForKeyboardNotification:(id)notification;
- (void)_updateInstructionLabelIfNecessaryAnimated:(BOOL)animated;
- (void)_updatePaletteVisibilityIfNecessary:(BOOL)necessary;
- (void)_updateScrollPositionForCurrentPage;
- (void)_updateShadowViewAlpha;
- (void)_updateSubviewOrdering;
- (void)_updateThumbnailViewVisibilityIfNeededAnimated:(BOOL)animated;
- (void)_updateVisualSearchCornerViewPositioning;
- (void)aaButtonPressed:(id)pressed;
- (void)addOrRemoveAAButtonIfNecessary;
- (void)addOrRemoveActionInfoViewIfNecessary;
- (void)analysisInfoButtonPressed:(id)pressed;
- (void)bringOmnibarToFront;
- (void)cancelCrop;
- (void)commitInflightEdits;
- (void)dealloc;
- (void)didProcessDocumentUpdateForScreenshot:(id)screenshot;
- (void)dismissOverlayManagedViewControllers;
- (void)doneCrop;
- (void)endOpacityEditing;
- (void)enterCrop;
- (void)layoutSubviews;
- (void)parentScreenshotView:(id)view animated:(BOOL)animated;
- (void)removeScreenshots:(id)screenshots;
- (void)resetCrop;
- (void)safeAreaInsetsDidChange;
- (void)screenshotView:(id)view didUpdateInteraction:(id)interaction withAnalysis:(id)analysis;
- (void)screenshotView:(id)view hasHighPriorityGesture:(id)gesture;
- (void)screenshotView:(id)view isDraggingVISheetDidChange:(BOOL)change;
- (void)screenshotView:(id)view noLongerHasHighPriorityGesture:(id)gesture;
- (void)screenshotView:(id)view requestsUpdateToInteractionMode:(unint64_t)mode;
- (void)screenshotView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView;
- (void)screenshotViewCropDidChange:(id)change;
- (void)screenshotViewDidInvokeVICard:(id)card;
- (void)screenshotViewTapped:(id)tapped;
- (void)screenshotViewUndoStackChanged:(id)changed;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActiveScreenshotView:(id)view;
- (void)setBorderViewStyleOverride:(int64_t)override withAnimator:(id)animator;
- (void)setEditMode:(int64_t)mode;
- (void)setInteractionMode:(unint64_t)mode;
- (void)setIsSharing:(BOOL)sharing;
- (void)setRedoItemAction:(SEL)action;
- (void)setRedoItemTarget:(id)target;
- (void)setShareItemAction:(SEL)action;
- (void)setShareItemTarget:(id)target;
- (void)setState:(unint64_t)state;
- (void)setUndoItemAction:(SEL)action;
- (void)setUndoItemTarget:(id)target;
- (void)toolbarDidSelectOpacityOptionWithAccessoryView:(id)view;
- (void)updateBottomBarConstraintsForHorizontaliPhoneIfNecessary;
- (void)updateForFrame:(CGRect)frame;
@end

@implementation SSSScreenshotsView

- (void)layoutSubviews
{
  [(SSSScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  state = [(SSSScreenshotsView *)self state];
  [(SSSScreenshotsView *)self _layoutBounds];
  v11 = v10;
  v13 = v12;
  if (v4 == CGSizeZero.width && v6 == CGSizeZero.height)
  {
    return;
  }

  v15 = v8;
  v16 = v9;
  if (state != 1)
  {
    _SSScreenshotsRedesign2025Enabled();
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if ((BYTE2(self->_layoutPositioningView) & 1) == 0)
  {
    BYTE2(self->_layoutPositioningView) = 1;
    v157[0] = _NSConcreteStackBlock;
    v157[1] = 3221225472;
    v157[2] = sub_10003E658;
    v157[3] = &unk_1000BA068;
    v157[4] = self;
    [UIView performWithoutAnimation:v157];
  }

  if (!_SSScreenshotsRedesign2025Enabled() || [(SSSScreenshotsView *)self editMode]!= 1)
  {
    goto LABEL_16;
  }

  if (!*(&self->_shouldUpdateActivityItemsAfterScrollAnimation + 2))
  {
    _currentPDFView = [(SSSScreenshotsView *)self _currentPDFView];
    documentScrollView = [_currentPDFView documentScrollView];

    if (documentScrollView)
    {
      v19 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:documentScrollView edge:1];
      v20 = *(&self->_shouldUpdateActivityItemsAfterScrollAnimation + 2);
      *(&self->_shouldUpdateActivityItemsAfterScrollAnimation + 2) = v19;

      [*(&self->super._ss_vi2EnabledCacheIsValid + 1) addInteraction:*(&self->_shouldUpdateActivityItemsAfterScrollAnimation + 2)];
    }
  }

  v21 = 1;
LABEL_17:
  v141 = v11;
  v142 = v15;
  [*(&self->_shouldUpdateActivityItemsAfterScrollAnimation + 2) _setActive:v21];
  [(SSSScreenshotsView *)self _setupPaletteIfNecessary];
  [(SSSScreenshotsView *)self safeAreaInsets];
  if ([*(&self->_isInStateTransition + 1) count])
  {
    firstObject = [*(&self->_isInStateTransition + 1) firstObject];
    screenshot = [firstObject screenshot];
    environmentDescription = [screenshot environmentDescription];
    [environmentDescription screenshotsWindowSafeAreaInsets];
  }

  UIEdgeInsetsMax();
  v26 = v25;
  if ([(SSSScreenshotsView *)self _isLandscapePhone])
  {
    v27 = 24.0;
  }

  else
  {
    v27 = v26;
  }

  [(SSSScreenshotsView *)self bounds];
  v29 = v28;
  v30 = 0.0;
  v32 = v31 + 0.0;
  v34 = v27 + v33;
  if ([(SSSScreenshotsView *)self _contentSwitcherShouldMoveDown])
  {
    if ([(SSSScreenshotsView *)self editMode]== 2)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 38.0;
    }
  }

  topItem = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) topItem];
  _bottomPalette = [topItem _bottomPalette];
  [_bottomPalette setPreferredHeight:v30];

  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) intrinsicContentSize];
  v38 = v37;
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) sss_setFrameUnanimatingLayingOut:{v32, v34, v29, v37}];
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setBarTintColor:0];
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setOpaque:0];
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setTranslucent:1];
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setBackgroundImage:*(&self->_topBar + 2) forBarMetrics:0];
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) bringSubviewToFront:*(&self->_bottomBar + 2)];
  }

  +[SSChromeHelper barSeparatorSize];
  v40 = v39;
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    v41 = *(&self->_bottomBar + 2);
    [(SSSScreenshotsView *)self bounds];
    [v41 sss_setFrameUnanimatingLayingOut:{0.0, v38 - v40}];
  }

  [(SSSScreenshotsView *)self bounds];
  v43 = v42;
  v45 = v44;
  [(SSSScreenshotsView *)self _bottomBarHeightIncludingSafeAreaInsets];
  v47 = v46;
  [(SSSScreenshotsView *)self bounds];
  [*(&self->_topBarEmptyBackgroundImage + 2) sss_setFrameUnanimatingLayingOut:{v43, CGRectGetMaxY(v160) - v47, v45, v47}];
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    v48 = *(&self->_topBarSeparatorLine + 2);
    [*(&self->_topBarEmptyBackgroundImage + 2) bounds];
    [v48 sss_setFrameUnanimatingLayingOut:{0.0, 0.0}];
  }

  [*(&self->_scrollView + 2) setHidden:{-[SSSScreenshotsView editMode](self, "editMode") != 0}];
  [*(&self->_scrollView + 2) setCount:{-[SSSScreenshotsView _numberOfPages](self, "_numberOfPages")}];
  [*(&self->_toolPalette + 2) frame];
  v174.origin.x = v141;
  v174.origin.y = v13;
  v174.size.width = v142;
  v174.size.height = v16;
  if (!CGRectEqualToRect(v161, v174))
  {
    [*(&self->_toolPalette + 2) setFrame:{v141, v13, v142, v16}];
    if ([(SSSScreenshotsView *)self _isLandscapePhone])
    {
      [(SSSScreenshotsView *)self _updateScrollPositionForCurrentPage];
      currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
      [currentScreenshotView setNeedsLayout];
    }
  }

  v50 = [(SSSScreenshotsView *)self numberOfScreenshotImages]>= 2 && ![(SSSScreenshotsView *)self _shouldAvoidKeyboard]&& [(SSSScreenshotsView *)self editMode]!= 2;
  [*(&self->_toolPalette + 2) setScrollEnabled:v50];
  panGestureRecognizer = [*(&self->_toolPalette + 2) panGestureRecognizer];
  [panGestureRecognizer setAllowedTouchTypes:&off_1000BE7F8];

  v145 = [*(&self->_isInStateTransition + 1) count];
  currentScreenshotView2 = [(SSSScreenshotsView *)self currentScreenshotView];
  firstObject2 = [*(&self->_isInStateTransition + 1) firstObject];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = *(&self->_isInStateTransition + 1);
  rect = [obj countByEnumeratingWithState:&v153 objects:v159 count:16];
  v53 = 0;
  if (rect)
  {
    v54 = 0;
    v144 = *v154;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    do
    {
      for (i = 0; i != rect; i = i + 1)
      {
        if (*v154 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v153 + 1) + 8 * i);
        screenshot2 = [v59 screenshot];
        [(SSSScreenshotsView *)self _screenshotMaximumSize];
        v62 = v61;
        v64 = v63;
        [(SSSScreenshotsView *)self _interScreenshotSpacing];
        v66 = v65;
        x = CGRectNull.origin.x;
        v68 = y;
        v69 = width;
        v70 = height;
        if (v59 == currentScreenshotView2)
        {
          [v59 rectToCenterAboveKeyboard];
          x = v71;
          v68 = v72;
          v69 = v73;
          v70 = v74;
        }

        [(SSSScreenshotsView *)self _frameForScreenshot:screenshot2 atIndex:v54 numberOfScreenshots:v145 maximumSize:state interScreenshotSpacing:v62 rectToCenterAboveKeyboard:v64 state:v66, x, v68, v69, v70];
        [v59 setFrame:?];
        [(SSSScreenshotsView *)self _layoutScreenshotView:v59 forState:state isFirstScreenshot:v59 == firstObject2 isCurrentScreenshot:v59 == currentScreenshotView2];
        v75 = [(SSSScreenshotsView *)self _shouldShowScreenshotViewAtIndex:v54];
        v76 = 0.0;
        if (v75)
        {
          v76 = 1.0;
        }

        [v59 setAlpha:v76];
        [v59 bounds];
        [(SSSScreenshotsView *)self convertRect:v59 fromView:?];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        [*(&self->super._ss_vi2EnabledCacheIsValid + 1) frame];
        v175.origin.x = v85;
        v175.origin.y = v86;
        v175.size.width = v87;
        v175.size.height = v88;
        v162.origin.x = v78;
        v162.origin.y = v80;
        v162.size.width = v82;
        v162.size.height = v84;
        v89 = CGRectIntersectsRect(v162, v175);
        v90 = state == 1 && v89;
        v53 |= v90;
        ++v54;
      }

      rect = [obj countByEnumeratingWithState:&v153 objects:v159 count:16];
    }

    while (rect);
  }

  if (state == 1)
  {
    visibleScreenshots = [(SSSScreenshotsView *)self visibleScreenshots];
    if ([visibleScreenshots count])
    {
      v92 = ![(SSSScreenshotsView *)self _shouldAvoidKeyboard];
    }

    else
    {
      v92 = 0;
    }

    if (v53)
    {
      goto LABEL_60;
    }

LABEL_57:
    _shouldBleedToBottom = 1;
    goto LABEL_61;
  }

  v92 = 0;
  if ((v53 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  _shouldBleedToBottom = [(SSSScreenshotsView *)self _shouldBleedToBottom];
LABEL_61:
  v94 = 0.0;
  if ((v92 & _shouldBleedToBottom) != 0)
  {
    v95 = 1.0;
  }

  else
  {
    v95 = 0.0;
  }

  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setAlpha:v95];
  if (state == 1)
  {
    if ([(SSSScreenshotsView *)self _shouldShowBottomBar])
    {
      v94 = 1.0;
    }

    else
    {
      v94 = 0.0;
    }
  }

  [*(&self->_topBarEmptyBackgroundImage + 2) setAlpha:v94];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v96 = currentScreenshotView2;
    isSharing = [(SSSScreenshotsView *)self isSharing];
    delegate = [(SSSScreenshotsView *)self delegate];
    isShowingModalUI = [delegate isShowingModalUI];

    interactionMode = [(SSSScreenshotsView *)self interactionMode];
    v101 = v92 & ~isSharing & ([(SSSScreenshotsView *)self isShowingVICard]| ~isShowingModalUI);
    if (interactionMode == 1)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    goto LABEL_76;
  }

  if (!v92 || [(SSSScreenshotsView *)self editMode]== 2)
  {
    v96 = currentScreenshotView2;
LABEL_75:
    v102 = 0;
    goto LABEL_76;
  }

  v96 = currentScreenshotView2;
  if ([(SSSScreenshotsView *)self isSharing])
  {
    goto LABEL_75;
  }

  delegate2 = [(SSSScreenshotsView *)self delegate];
  isShowingModalUI2 = [delegate2 isShowingModalUI];

  if (isShowingModalUI2)
  {
    goto LABEL_75;
  }

  v102 = [(SSSScreenshotsView *)self interactionMode]== 1;
LABEL_76:
  [(SSSScreenshotsView *)self _updatePaletteVisibilityIfNecessary:v102];
  [*(&self->_toolPalette + 2) contentSize];
  v104 = v103;
  v106 = v105;
  v107 = *(&self->_toolPalette + 2);
  [(SSSScreenshotsView *)self _scrollContentInsets];
  [v107 setContentInset:?];
  [(SSSScreenshotsView *)self _scrollContentSize];
  v109 = v108;
  [*(&self->_toolPalette + 2) bounds];
  v111 = v110;
  [*(&self->_toolPalette + 2) setContentSize:{v109, v110}];
  if (v104 != v109 || v106 != v111)
  {
    [(SSSScreenshotsView *)self _updateScrollPositionForCurrentPage];
  }

  [(SSSScreenshotsView *)self _updateDisplayedPage];
  [*(&self->_scrollView + 2) intrinsicContentSize];
  [firstObject2 bounds];
  [(SSSScreenshotsView *)self convertRect:firstObject2 fromView:?];
  v113 = v112;
  v115 = v114;
  v117 = v116;
  recta = v118;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v119 = *(&self->_isInStateTransition + 1);
  v120 = [v119 countByEnumeratingWithState:&v149 objects:v158 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v150;
    do
    {
      for (j = 0; j != v121; j = j + 1)
      {
        if (*v150 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v124 = *(*(&v149 + 1) + 8 * j);
        [v124 bounds];
        [(SSSScreenshotsView *)self convertRect:v124 fromView:?];
        v125 = v163.origin.x;
        v126 = v163.origin.y;
        v127 = v163.size.width;
        v128 = v163.size.height;
        MaxY = CGRectGetMaxY(v163);
        v164.origin.x = v113;
        v164.origin.y = v115;
        v164.size.width = v117;
        v164.size.height = recta;
        if (MaxY > CGRectGetMaxY(v164))
        {
          recta = v128;
          v117 = v127;
          v115 = v126;
          v113 = v125;
        }
      }

      v121 = [v119 countByEnumeratingWithState:&v149 objects:v158 count:16];
    }

    while (v121);
  }

  UIRectGetCenter();
  v165.origin.x = v113;
  v165.origin.y = v115;
  v165.size.width = v117;
  v165.size.height = recta;
  CGRectGetMaxY(v165);
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(SSSScreenshotsView *)self bounds];
    CGRectGetMaxY(v166);
    [*(&self->_topBarEmptyBackgroundImage + 2) bounds];
    [*(&self->_topBarEmptyBackgroundImage + 2) bounds];
    [(SSSScreenshotsView *)self safeAreaInsets];
  }

  else if ([(SSSScreenshotsView *)self _shouldExtendBottomBarForPageDots])
  {
    [(SSSScreenshotsView *)self bounds];
    CGRectGetMaxY(v167);
    [*(&self->_topBarEmptyBackgroundImage + 2) bounds];
    [*(&self->_topBarEmptyBackgroundImage + 2) bounds];
    [(SSSScreenshotsView *)self _effectiveBottomBarExtent];
  }

  else
  {
    [(SSSScreenshotsView *)self _effectiveBottomBarExtent];
    CGRectGetMinY(v168);
  }

  UIRectCenteredAboutPoint();
  [*(&self->_scrollView + 2) sss_setFrameUnanimating:?];
  [*(&self->_scrollView + 2) setCount:{-[SSSScreenshotsView _numberOfPages](self, "_numberOfPages")}];
  if (state)
  {
    v132 = 1.0;
  }

  else
  {
    v132 = 0.0;
  }

  if ([(SSSScreenshotsView *)self _numberOfPages]< 2 || [(SSSScreenshotsView *)self _shouldAvoidKeyboard]|| [(SSSScreenshotsView *)self editMode]== 2)
  {
    v132 = 0.0;
  }

  [*(&self->_scrollView + 2) setAlpha:v132];
  [(SSSScreenshotsView *)self _updateShadowViewAlpha];
  v133 = *(&self->_countIndicator + 2);
  [(SSSScreenshotsView *)self bounds];
  [v133 setFrame:?];
  _rectsForShadowView = [(SSSScreenshotsView *)self _rectsForShadowView];
  [*(&self->_countIndicator + 2) setRectsForShadow:_rectsForShadowView];
  if ([(SSSScreenshotsView *)self _shouldShowBottomBar])
  {
    [*(&self->_topBarEmptyBackgroundImage + 2) frame];
    MinY = CGRectGetMinY(v169);
  }

  else
  {
    [(SSSScreenshotsView *)self bounds];
    MinY = CGRectGetHeight(v170);
  }

  v136 = MinY;
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) frame];
  v137 = v136 - CGRectGetMaxY(v171);
  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) frame];
  v138 = CGRectGetMaxY(v172);
  [(SSSScreenshotsView *)self bounds];
  [*(&self->_delegate + 2) setFrame:{0.0, v138, CGRectGetWidth(v173), v137}];
  [(SSSScreenshotsView *)self _layoutThumbnailView];
  [(SSSScreenshotsView *)self setActiveScreenshotView:v96];
  [(SSSScreenshotsView *)self updateBottomBarConstraintsForHorizontaliPhoneIfNecessary];
}

- (id)_bottomBarContentView
{
  v3 = _SSScreenshotsRedesign2025Enabled();
  v4 = *(&self->_topBarEmptyBackgroundImage + 2);
  if (v3)
  {
    contentView = v4;
  }

  else
  {
    contentView = [v4 contentView];
  }

  return contentView;
}

- (id)_omnibar
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    currentOmnibar = [(SSSScreenshotsView *)self currentOmnibar];
  }

  else
  {
    currentOmnibar = 0;
  }

  return currentOmnibar;
}

- (void)_setupPaletteIfNecessary
{
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = *(&self->_thumbnailBackgroundView + 2);
    if (!v3)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v4 = qword_1000D4AC8;
      v19 = qword_1000D4AC8;
      if (!qword_1000D4AC8)
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100046AC4;
        v15[3] = &unk_1000B9FA8;
        v15[4] = &v16;
        sub_100046AC4(v15);
        v4 = v17[3];
      }

      v5 = v4;
      _Block_object_dispose(&v16, 8);
      v6 = objc_alloc_init(v4);
      v7 = *(&self->_thumbnailBackgroundView + 2);
      *(&self->_thumbnailBackgroundView + 2) = v6;

      [*(&self->_thumbnailBackgroundView + 2) setOpaque:0];
      v8 = *(&self->_thumbnailBackgroundView + 2);
      v9 = +[UIColor clearColor];
      [v8 setBackgroundColor:v9];

      [*(&self->_thumbnailBackgroundView + 2) setWantsClearBackgroundColorInCompactSize:1];
      traitCollection = [(SSSScreenshotsView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      v3 = *(&self->_thumbnailBackgroundView + 2);
      if (!userInterfaceIdiom)
      {
        [v3 setSupportsOpacityEditing:1];
        [*(&self->_thumbnailBackgroundView + 2) setOpacityEditingDelegate:self];
        v3 = *(&self->_thumbnailBackgroundView + 2);
      }
    }

    v12 = v3;
    [(SSSScreenshotsView *)self bounds];
    [v12 sss_setFrameUnanimatingLayingOut:?];
    [*(&self->_thumbnailBackgroundView + 2) setUndoRedoButtonsHidden:1];
    [*(&self->_thumbnailBackgroundView + 2) setShareButtonHidden:1];
    v13 = *(&self->_thumbnailBackgroundView + 2);
    shareItemTarget = [(SSSScreenshotsView *)self shareItemTarget];
    [v13 setShareButtonTarget:shareItemTarget];

    [*(&self->_thumbnailBackgroundView + 2) setShareButtonAction:{-[SSSScreenshotsView shareItemAction](self, "shareItemAction")}];
    [*(&self->_thumbnailBackgroundView + 2) setAccessibilityIdentifier:@"annotation-bottom-bar"];
  }
}

- (void)setInteractionMode:(unint64_t)mode
{
  *(&self->_imageAnalyzer + 2) = mode;
  v5 = *(&self->_isInStateTransition + 1);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003F5A8;
  v22[3] = &unk_1000BADF8;
  v22[4] = self;
  v22[5] = mode;
  [v5 enumerateObjectsUsingBlock:v22];
  [*(&self->_instructionLabel + 2) setSelected:mode == 3];
  [*(&self->_instructionLabel + 2) setHidden:*(&self->_imageAnalyzer + 2) == 4];
  [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:1];
  if (*(&self->_imageAnalyzer + 2) != 1)
  {
    currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
    [currentScreenshotView deselectAllAnnotations];

    [*(&self->_thumbnailBackgroundView + 2) endAnnotationEditing];
  }

  if (mode == 3)
  {
    _visualSearchCornerViewIfExists = [*(&self->_appearingScreenshotView + 2) _visualSearchCornerViewIfExists];
    v8 = *(&self->_liveTextButton + 2);
    *(&self->_liveTextButton + 2) = _visualSearchCornerViewIfExists;

    [(SSSScreenshotsView *)self addSubview:*(&self->_liveTextButton + 2)];
    [(SSSScreenshotsView *)self _updateVisualSearchCornerViewPositioning];
  }

  else
  {
    v9 = *(&self->_liveTextButton + 2);
    if (v9)
    {
      [v9 removeFromSuperview];
    }
  }

  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    v10 = *(&self->_visualSearchCornerView + 2);
    v11 = v10;
    if (mode == 2 && [v10 isHidden])
    {
      [v11 setAlpha:0.0];
      [v11 setHidden:0];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003F620;
    v19[3] = &unk_1000BA0B8;
    v20 = v11;
    v21 = mode != 2;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10003F63C;
    v16 = &unk_1000BA1E0;
    v17 = v20;
    v18 = mode != 2;
    v12 = v20;
    [UIView animateWithDuration:v19 animations:&v13 completion:0.25];
  }

  [(SSSScreenshotsView *)self setNeedsLayout:v13];
}

- (void)_updateVisualSearchCornerViewPositioning
{
  [*(&self->_appearingScreenshotView + 2) cropOverlayViewRectInWindow];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(SSSScreenshotsView *)self window];
  [(SSSScreenshotsView *)self convertRect:window fromView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  MaxX = CGRectGetMaxX(v30);
  [*(&self->_liveTextButton + 2) bounds];
  v22 = MaxX - v21 + -18.0;
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  MaxY = CGRectGetMaxY(v31);
  [*(&self->_liveTextButton + 2) bounds];
  v25 = MaxY - v24 + -18.0;
  v26 = *(&self->_liveTextButton + 2);
  [v26 bounds];
  v28 = v27;
  [*(&self->_liveTextButton + 2) bounds];

  [v26 setFrame:{v22, v25, v28}];
}

- (void)_updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  objc_initWeak(&location, self);
  activeScreenshotView = [(SSSScreenshotsView *)self activeScreenshotView];
  if ([activeScreenshotView editMode])
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(_SSSVI2View *)self _ss_vi2Enabled];
  }

  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v9 = (userInterfaceIdiom != 0) & v6;
  if (!userInterfaceIdiom && ((v6 ^ 1) & 1) == 0)
  {
    v9 = [(SSSScreenshotsView *)self interactionMode]!= 0;
  }

  activeScreenshotView2 = [(SSSScreenshotsView *)self activeScreenshotView];
  currentImageAnalysis = [activeScreenshotView2 currentImageAnalysis];

  if (currentImageAnalysis && [currentImageAnalysis hasResultsForAnalysisTypes:16])
  {
    activeScreenshotView3 = [(SSSScreenshotsView *)self activeScreenshotView];
    vsGlyph = [activeScreenshotView3 vsGlyph];
    v14 = vsGlyph;
    v15 = @"info.circle.and.sparkles";
    if (vsGlyph)
    {
      v15 = vsGlyph;
    }

    v16 = v15;

    activeScreenshotView4 = [(SSSScreenshotsView *)self activeScreenshotView];
    vsGlyphFilled = [activeScreenshotView4 vsGlyphFilled];
    v19 = vsGlyphFilled;
    v20 = @"info.circle.and.sparkles.fill";
    if (vsGlyphFilled)
    {
      v20 = vsGlyphFilled;
    }

    v21 = v20;

    v22 = [UIImageSymbolConfiguration configurationWithScale:3];
    v23 = [UIImage _systemImageNamed:v16 withConfiguration:v22];

    v24 = [UIImageSymbolConfiguration configurationWithScale:3];
    v25 = [UIImage _systemImageNamed:v21 withConfiguration:v24];

    [*(&self->_instructionLabel + 2) setImage:v23 forState:0];
    [*(&self->_instructionLabel + 2) setImage:v25 forState:4];

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  delegate = [(SSSScreenshotsView *)self delegate];
  v28 = v9 & v26;
  [delegate updateAnalysisButtonStateToVisible:v28];

  if (v28)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  if (animatedCopy)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003FAD8;
    v30[3] = &unk_1000BAE20;
    objc_copyWeak(v31, &location);
    v31[1] = *&v29;
    [UIView animateWithDuration:v30 animations:0.25];
    objc_destroyWeak(v31);
  }

  else
  {
    [*(&self->_instructionLabel + 2) setAlpha:v29];
    [(SSSScreenshotsView *)self _updateInstructionLabelIfNecessaryAnimated:0];
  }

  objc_destroyWeak(&location);
}

- (void)_removeHighlightedModeForScreenshotViewIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy interactionMode] == 4)
  {
    [necessaryCopy setInteractionMode:2];
  }
}

- (void)_updateInstructionLabelIfNecessaryAnimated:(BOOL)animated
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    v15 = 0;
LABEL_9:
    v11 = (&self->_bottomBarSeparatorLine + 2);
    v14 = 0.0;
    goto LABEL_10;
  }

  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  currentImageAnalysis = [currentScreenshotView currentImageAnalysis];
  v6 = [currentImageAnalysis countOfDataDetectorsWithTypes:-1];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v6)
  {
    v9 = @"CROP_AND_SCALE_OR_SELECT_TEXT_LABEL";
    v10 = @"Crop and scale or select text";
  }

  else
  {
    v9 = @"CROP_AND_SCALE_LABEL";
    v10 = @"Crop and scale";
  }

  v15 = [v7 localizedStringForKey:v9 value:v10 table:0];

  if (*(&self->_imageAnalyzer + 2) != 2)
  {
    goto LABEL_9;
  }

  v11 = (&self->_bottomBarSeparatorLine + 2);
  text = [*(&self->_bottomBarSeparatorLine + 2) text];
  v13 = [text isEqualToString:v15];

  v14 = 1.0;
  if ((v13 & 1) == 0)
  {
    [*v11 setAlpha:0.0];
    [*v11 setText:v15];
  }

LABEL_10:
  [*v11 setAlpha:v14];
}

- (void)_updateFirstResponderForHidingToolPicker
{
  delegate = [(SSSScreenshotsView *)self delegate];
  v6 = [delegate viewControllerForPresentationsFromScreenshotsView:self];

  window = [(SSSScreenshotsView *)self window];
  firstResponder = [window firstResponder];

  if (firstResponder != v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v6 becomeFirstResponder];
    }
  }
}

- (void)_updatePaletteVisibilityIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  if (_os_feature_enabled_impl() && ![(SSSScreenshotsView *)self editMode]|| _os_feature_enabled_impl() && [(SSSScreenshotsView *)self editMode]== 1)
  {
    if (necessaryCopy)
    {
      [currentScreenshotView updatePaletteVisibilityIfNecessary:{objc_msgSend(currentScreenshotView, "isBeingRemoved") ^ 1}];
    }

    else
    {
      [currentScreenshotView updatePaletteVisibilityIfNecessary:0];
      [(SSSScreenshotsView *)self _updateFirstResponderForHidingToolPicker];
    }
  }

  else if (*(&self->_thumbnailBackgroundView + 2) && BYTE2(self->_keyboardFrame.size.height) != necessaryCopy)
  {
    delegate = [(SSSScreenshotsView *)self delegate];
    v6 = [delegate viewControllerForPresentationsFromScreenshotsView:self];

    window = [(SSSScreenshotsView *)self window];
    firstResponder = [window firstResponder];

    if (!firstResponder || firstResponder != v6 && ![(SSSScreenshotsView *)self _shouldAvoidKeyboard])
    {
      [v6 becomeFirstResponder];
    }

    if ([*(&self->_thumbnailBackgroundView + 2) setToolPickerVisible:necessaryCopy forFirstResponder:v6])
    {
      BYTE2(self->_keyboardFrame.size.height) = necessaryCopy;
    }
  }
}

- (void)updateForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SSSScreenshotsView *)self setFrame:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(&self->_isInStateTransition + 1);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) updateForFrame:{x, y, width, height, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)_shouldShowBottomBar
{
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  editMode = [(SSSScreenshotsView *)self editMode];
  editMode2 = [(SSSScreenshotsView *)self editMode];
  if (userInterfaceIdiom)
  {
    return 0;
  }

  v8 = editMode2 == 0;
  v9 = editMode != 2;
  if (_SSScreenshotsRedesign2025Enabled())
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (BOOL)_shouldExtendBottomBarForPageDots
{
  if (![(SSSScreenshotsView *)self _anyScreenshotPDFViewNeedsBleedToBottom])
  {
    return 0;
  }

  visibleScreenshots = [(SSSScreenshotsView *)self visibleScreenshots];
  if ([visibleScreenshots count] < 2)
  {
    v5 = 0;
  }

  else
  {
    traitCollection = [(SSSScreenshotsView *)self traitCollection];
    v5 = [traitCollection userInterfaceIdiom] == 0;
  }

  return v5;
}

- (double)_toolPickerHeightOnPhone
{
  window = [(SSSScreenshotsView *)self window];
  [window safeAreaInsets];
  v4 = v3 + 75.0;

  return v4;
}

- (double)_bottomBarHeightIncludingSafeAreaInsets
{
  if ([(SSSScreenshotsView *)self _shouldShowBottomBar])
  {
    editMode = [(SSSScreenshotsView *)self editMode];
    interactionMode = [(SSSScreenshotsView *)self interactionMode];
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    [(SSSScreenshotsView *)self safeAreaInsets];
    v8 = v7;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = v7 + 40.0;
    }

    else if (!editMode || interactionMode == 1)
    {
      [(SSSScreenshotsView *)self _toolPickerHeightOnPhone];
      v8 = v11;
    }
  }

  else
  {
    traitCollection = [(SSSScreenshotsView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 1)
    {
      [(SSSScreenshotsView *)self safeAreaInsets];
      v8 = v10 + 40.0;
    }

    else
    {
      [(SSSScreenshotsView *)self _toolPickerHeightOnPhone];
      v8 = v12;
    }
  }

  _shouldExtendBottomBarForPageDots = [(SSSScreenshotsView *)self _shouldExtendBottomBarForPageDots];
  result = v8 + 26.0;
  if (!_shouldExtendBottomBarForPageDots)
  {
    return v8;
  }

  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SSSScreenshotsView;
  [(SSSScreenshotsView *)&v3 safeAreaInsetsDidChange];
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)_layoutScreenshotView:(id)view forState:(unint64_t)state isFirstScreenshot:(BOOL)screenshot isCurrentScreenshot:(BOOL)currentScreenshot
{
  currentScreenshotCopy = currentScreenshot;
  viewCopy = view;
  v17 = viewCopy;
  if (state == 1)
  {
    [viewCopy prepareForFullscreenExperience];
    if ((BYTE3(self->_layoutPositioningView) & 1) == 0)
    {
      [v17 finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:currentScreenshotCopy];
    }

    goto LABEL_6;
  }

  if (BYTE3(self->_layoutPositioningView) == 1)
  {
    [viewCopy prepareForMiniaturization];
LABEL_6:
    viewCopy = v17;
  }

  [viewCopy setState:state];
  v10 = sub_100053AC4(state, *(&self->_shadowView + 2));
  v11 = 0;
  if (state == 1 && currentScreenshotCopy)
  {
    v11 = [(SSSScreenshotsView *)self _screenshotEditsShouldBeSnapshottedForCurrentScreenshot]^ 1;
  }

  v12 = v17;
  if (state == 1 && v11 != 1)
  {
    [v17 commitInflightEdits];
    v12 = v17;
  }

  [v12 setBorderStyle:v10];
  if (![(SSSScreenshotsView *)self isDismissing])
  {
    [v17 setUsesOriginalImageAspectRatio:sub_100053ADC(state)];
    [v17 setGesturesEnabled:state == 1];
    [v17 setAnnotationsEnabled:v11];
  }

  if (currentScreenshotCopy)
  {
    _shouldAvoidKeyboard = 1;
    [v17 setScreenshotEditsSnapshotted:v11 ^ 1 inTransition:BYTE3(self->_layoutPositioningView) currentScreenshot:1];
    if (![(SSSScreenshotsView *)self currentScreenshotCropHandlesFadedOut])
    {
      _shouldAvoidKeyboard = [(SSSScreenshotsView *)self _shouldAvoidKeyboard];
    }
  }

  else
  {
    if (([*(&self->_toolPalette + 2) isMoving] & 1) == 0)
    {
      [v17 deselectAllAnnotations];
    }

    [v17 setScreenshotEditsSnapshotted:v11 ^ 1 inTransition:BYTE3(self->_layoutPositioningView) currentScreenshot:0];
    _shouldAvoidKeyboard = 1;
  }

  if (![(SSSScreenshotsView *)self isDismissing])
  {
    [v17 setCropHandlesFadedOut:(state == 0) | (_shouldAvoidKeyboard & 1)];
    [v17 setUseTrilinearMinificationFilter:{-[SSSScreenshotsView screenshotViewsUseTrilinearMinificationFilter](self, "screenshotViewsUseTrilinearMinificationFilter")}];
  }

  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  [v17 setGeometryMultiplier:1.0 / sub_10000F530()];

  if (v11)
  {
    annotationController = [*(&self->_thumbnailBackgroundView + 2) annotationController];
    akController = [v17 akController];
    if (annotationController != akController)
    {
      [*(&self->_thumbnailBackgroundView + 2) setAnnotationController:akController];
    }
  }
}

- (void)setActiveScreenshotView:(id)view
{
  viewCopy = view;
  if (*&self->_screenshotViewsUseTrilinearMinificationFilter)
  {
    v6 = *(&self->_appearingScreenshotView + 2);
    if (v6 != viewCopy)
    {
      v10 = viewCopy;
      v7 = v6;
      [v7 setInteractionMode:0];
      objc_storeStrong((&self->_appearingScreenshotView + 2), view);
      [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];
      if ([v10 editMode] || -[SSSScreenshotsView interactionMode](self, "interactionMode") == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [(SSSScreenshotsView *)self setInteractionMode:v8];
      [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:1];
      delegate = [(SSSScreenshotsView *)self delegate];
      [delegate activeScreenshotViewDidChangeToView:*(&self->_appearingScreenshotView + 2) fromView:v7];

      [(SSSScreenshotsView *)self _removeHighlightedModeForScreenshotViewIfNecessary:v7];
      viewCopy = v10;
    }
  }
}

- (void)addOrRemoveActionInfoViewIfNecessary
{
  if (BYTE2(self->_layoutPositioningView) == 1)
  {
    [(SSSScreenshotsView *)self _addOrRemoveActionInfoView];
  }
}

- (void)_addOrRemoveActionInfoView
{
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  _ss_vi2Enabled = [(_SSSVI2View *)self _ss_vi2Enabled];
  if (!userInterfaceIdiom)
  {
    v6 = _ss_vi2Enabled;
    _actionInfoViewIfExists = [*(&self->_appearingScreenshotView + 2) _actionInfoViewIfExists];
    v8 = *(&self->_visualSearchCornerView + 2);
    if (_actionInfoViewIfExists != v8)
    {
      [v8 removeFromSuperview];
      objc_storeStrong((&self->_visualSearchCornerView + 2), _actionInfoViewIfExists);
    }

    _omnibarContainerViewIfExists = [*(&self->_appearingScreenshotView + 2) _omnibarContainerViewIfExists];
    v10 = *(&self->_actionInfoView + 2);
    if (_omnibarContainerViewIfExists != v10)
    {
      [v10 removeFromSuperview];
      objc_storeStrong((&self->_actionInfoView + 2), _omnibarContainerViewIfExists);
    }

    _bottomBarContentView = [(SSSScreenshotsView *)self _bottomBarContentView];
    if ((v6 & 1) == 0)
    {
      v15 = *(&self->_visualSearchCornerView + 2);
      if (v15)
      {
        if (*(&self->_visualSearchButton + 2))
        {
          superview = [v15 superview];

          if (superview != _bottomBarContentView)
          {
            [_bottomBarContentView addSubview:*(&self->_visualSearchCornerView + 2)];
            [_bottomBarContentView bringSubviewToFront:*(&self->_instructionLabel + 2)];
            [*(&self->_visualSearchCornerView + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
            leadingAnchor = [*(&self->_visualSearchButton + 2) leadingAnchor];
            leadingAnchor2 = [*(&self->_visualSearchCornerView + 2) leadingAnchor];
            leadingAnchor3 = [_bottomBarContentView leadingAnchor];
            v19 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:20.0];
            [(SSSScreenshotsView *)self setActionInfoButtonConstraint:v19];

            actionInfoButtonConstraint = [(SSSScreenshotsView *)self actionInfoButtonConstraint];
            v37[0] = actionInfoButtonConstraint;
            trailingAnchor = [*(&self->_visualSearchCornerView + 2) trailingAnchor];
            v28 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-10.0];
            v37[1] = v28;
            centerYAnchor = [*(&self->_visualSearchCornerView + 2) centerYAnchor];
            centerYAnchor2 = [*(&self->_instructionLabel + 2) centerYAnchor];
            v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
            v37[2] = v22;
            heightAnchor = [*(&self->_visualSearchCornerView + 2) heightAnchor];
            v24 = [heightAnchor constraintEqualToConstant:35.0];
            v37[3] = v24;
            v25 = [NSArray arrayWithObjects:v37 count:4];
            [NSLayoutConstraint activateConstraints:v25];
          }
        }
      }

      goto LABEL_19;
    }

    v12 = *(&self->_actionInfoView + 2);
    if (v12)
    {
      superview2 = [v12 superview];
      if (superview2 == self)
      {
      }

      else
      {
        v14 = *&self->_screenshotViewsUseTrilinearMinificationFilter;

        if (v14 == 1)
        {
          [(SSSScreenshotsView *)self addSubview:*(&self->_actionInfoView + 2)];
          [*(&self->_actionInfoView + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
          objc_initWeak(&location, *(&self->_actionInfoView + 2));
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100040AE8;
          v32[3] = &unk_1000BA778;
          objc_copyWeak(&v35, &location);
          v33 = _bottomBarContentView;
          selfCopy = self;
          [UIView performWithoutAnimation:v32];

          objc_destroyWeak(&v35);
          objc_destroyWeak(&location);
LABEL_19:

          return;
        }
      }
    }

    if (!*&self->_screenshotViewsUseTrilinearMinificationFilter)
    {
      superview3 = [*(&self->_actionInfoView + 2) superview];

      if (superview3)
      {
        [*(&self->_actionInfoView + 2) removeFromSuperview];
        v27 = *(&self->_actionInfoView + 2);
        *(&self->_actionInfoView + 2) = 0;
      }
    }

    goto LABEL_19;
  }
}

- (void)addOrRemoveAAButtonIfNecessary
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {

    [(SSSScreenshotsView *)self addOrRemoveActionInfoViewIfNecessary];
  }

  else
  {
    _imageAnalysisAaButtonIfExists = [*(&self->_appearingScreenshotView + 2) _imageAnalysisAaButtonIfExists];
    v4 = *(&self->_visualSearchButton + 2);
    if (_imageAnalysisAaButtonIfExists != v4)
    {
      [v4 removeFromSuperview];
      objc_storeStrong((&self->_visualSearchButton + 2), _imageAnalysisAaButtonIfExists);
      if (*(&self->_visualSearchButton + 2))
      {
        _bottomBarContentView = [(SSSScreenshotsView *)self _bottomBarContentView];
        [_bottomBarContentView addSubview:*(&self->_visualSearchButton + 2)];
        [*(&self->_visualSearchButton + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
        trailingAnchor = [*(&self->_visualSearchButton + 2) trailingAnchor];
        trailingAnchor2 = [_bottomBarContentView trailingAnchor];
        v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
        [(SSSScreenshotsView *)self setLiveTextButtonTrailingConstraint:v8];

        liveTextButtonTrailingConstraint = [(SSSScreenshotsView *)self liveTextButtonTrailingConstraint];
        v14[0] = liveTextButtonTrailingConstraint;
        centerYAnchor = [*(&self->_visualSearchButton + 2) centerYAnchor];
        centerYAnchor2 = [*(&self->_instructionLabel + 2) centerYAnchor];
        v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v14[1] = v12;
        v13 = [NSArray arrayWithObjects:v14 count:2];
        [NSLayoutConstraint activateConstraints:v13];
      }
    }

    [(SSSScreenshotsView *)self addOrRemoveActionInfoViewIfNecessary];
  }
}

- (void)updateBottomBarConstraintsForHorizontaliPhoneIfNecessary
{
  if ([(SSSScreenshotsView *)self _isLandscapePhone])
  {
    liveTextButtonTrailingConstraint = [(SSSScreenshotsView *)self liveTextButtonTrailingConstraint];
    [liveTextButtonTrailingConstraint setConstant:-38.0];

    actionInfoButtonConstraint = [(SSSScreenshotsView *)self actionInfoButtonConstraint];
    [actionInfoButtonConstraint setConstant:38.0];

    vsButtonTrailingConstraint = [(SSSScreenshotsView *)self vsButtonTrailingConstraint];
    [vsButtonTrailingConstraint setConstant:38.0];

    vsButtonLeadingConstraint = [(SSSScreenshotsView *)self vsButtonLeadingConstraint];
    [vsButtonLeadingConstraint setConstant:38.0];
  }
}

- (void)bringOmnibarToFront
{
  _omnibarContainerViewIfExists = [*(&self->_appearingScreenshotView + 2) _omnibarContainerViewIfExists];
  if (_omnibarContainerViewIfExists == *(&self->_actionInfoView + 2))
  {
    v5 = _omnibarContainerViewIfExists;
    superview = [(UIView *)_omnibarContainerViewIfExists superview];
    [superview bringSubviewToFront:v5];

    _omnibarContainerViewIfExists = v5;
  }
}

- (id)currentOmnibar
{
  _omnibarContainerViewIfExists = [*(&self->_appearingScreenshotView + 2) _omnibarContainerViewIfExists];
  v4 = _omnibarContainerViewIfExists;
  if (_omnibarContainerViewIfExists == *(&self->_actionInfoView + 2))
  {
    v5 = _omnibarContainerViewIfExists;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)_frameForScreenshot:(id)screenshot atIndex:(int64_t)index numberOfScreenshots:(int64_t)screenshots maximumSize:(CGSize)size interScreenshotSpacing:(double)spacing rectToCenterAboveKeyboard:(CGRect)keyboard state:(unint64_t)state
{
  width = keyboard.size.width;
  height = keyboard.size.height;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  v14 = [(SSSScreenshotsView *)self screenshotViewForScreenshot:screenshot];
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  viewModificationInfo = [v14 viewModificationInfo];
  v16 = viewModificationInfo;
  if (viewModificationInfo)
  {
    [viewModificationInfo cropInfo];
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
  }

  SSizeToFitSizeInAspectRatioOfSize();
  [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  sub_10000F490(traitCollection, v68);

  if (![(SSSScreenshotsView *)self _currentUserInterfaceIdiom])
  {
    [(SSSScreenshotsView *)self _availableRectForContent];
    UIRectCenteredIntegralRect();
    v19 = v45;
    v47 = v46;
    v23 = v48;
    v25 = v49;
    [(SSSScreenshotsView *)self safeAreaInsets];
    v21 = v47 - v50;
    if (state)
    {
      goto LABEL_6;
    }

LABEL_14:
    SSizeToFitSizeInAspectRatioOfSize();
    [*(&self->_toolPalette + 2) bounds];
    sub_10000F53C();
    traitCollection2 = [(SSSScreenshotsView *)self traitCollection];
    sub_10000F530();

    traitCollection3 = [(SSSScreenshotsView *)self traitCollection];
    sub_10000F530();

    [(SSSScreenshotsView *)self _positioningIndexForIndex:index numberOfScreenshots:screenshots];
    SSRoundRectToScale();
    v19 = v53;
    v21 = v54;
    v23 = v55;
    v25 = v56;
    goto LABEL_15;
  }

  [*(&self->_toolPalette + 2) bounds];
  UIRectCenteredIntegralRect();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if (!state)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (state == 1)
  {
    [(SSSScreenshotsView *)self _effectiveIndexForIndex:index inNumberOfScreenshots:screenshots];
    SSRoundRectToScale();
    v19 = v26;
    v21 = v27;
    v23 = v28;
    v25 = v29;
    if (![(SSSScreenshotsView *)self editMode]&& !CGRectIsNull(*(&self->_lastPageForSignificantChange + 2)))
    {
      v81.origin.x = CGRectNull.origin.x;
      v81.origin.y = CGRectNull.origin.y;
      v81.size.width = CGRectNull.size.width;
      v81.size.height = CGRectNull.size.height;
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      if (!CGRectEqualToRect(v73, v81))
      {
        [*(&self->_pdfThumbnailView + 2) setFrame:{v19, v21, v23, v25}];
        [(SSSScreenshotsView *)self convertRect:*(&self->_pdfThumbnailView + 2) fromView:x, y, width, height];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        [(SSSScreenshotsView *)self safeAreaInsets];
        v39 = v38;
        v74.origin.x = v19;
        v74.origin.y = v21;
        v74.size.width = v23;
        v74.size.height = v25;
        v82 = CGRectOffset(v74, 0.0, v39);
        v75 = CGRectIntersection(*(&self->_lastPageForSignificantChange + 2), v82);
        v65 = v75.origin.y;
        v67 = v75.origin.x;
        v61 = v75.size.height;
        v63 = v75.size.width;
        v83.origin.x = v31;
        v83.origin.y = v33;
        v83.size.width = v35;
        v83.size.height = v37;
        v76 = CGRectIntersection(v75, v83);
        v40 = v76.origin.x;
        v41 = v76.origin.y;
        v42 = v76.size.width;
        v43 = v76.size.height;
        if (!CGRectIsEmpty(v76))
        {
          v77.origin.x = v40;
          v77.origin.y = v41;
          v77.size.width = v42;
          v77.size.height = v43;
          if (!CGRectIsNull(v77))
          {
            v78.origin.x = v40;
            v78.origin.y = v41;
            v78.size.width = v42;
            v78.size.height = v43;
            MaxY = CGRectGetMaxY(v78);
            v79.origin.y = v65;
            v79.origin.x = v67;
            v79.size.height = v61;
            v79.size.width = v63;
            v21 = v21 - (MaxY - CGRectGetMinY(v79));
          }
        }
      }
    }
  }

LABEL_15:

  v57 = v19;
  v58 = v21;
  v59 = v23;
  v60 = v25;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (CGRect)_layoutBounds
{
  [(SSSScreenshotsView *)self bounds];
  v4 = v3;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  state = [(SSSScreenshotsView *)self state];
  [(SSSScreenshotsView *)self safeAreaInsets];
  if ([*(&self->_isInStateTransition + 1) count])
  {
    firstObject = [*(&self->_isInStateTransition + 1) firstObject];
    screenshot = [firstObject screenshot];
    environmentDescription = [screenshot environmentDescription];
    [environmentDescription screenshotsWindowSafeAreaInsets];
  }

  UIEdgeInsetsMax();
  if (state == 1)
  {
    v4 = v4 + v13;
    v16 = v22 + v12;
    v17 = v23 - (v13 + v15);
    v18 = v24 - (v12 + v14);
  }

  else
  {
    v17 = v23;
    v18 = v24;
    v16 = v22;
  }

  v19 = v4;
  v20 = v16;
  v21 = v17;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_layoutBoundsForFullPageThumbnail
{
  [(SSSScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  state = [(SSSScreenshotsView *)self state];
  [(SSSScreenshotsView *)self safeAreaInsets];
  if (state == 1)
  {
    v4 = v4 + v13;
    v6 = v6 + v12;
    v8 = v8 - (v13 + v15);
    v10 = v10 - (v12 + v14);
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_availableRectForContent
{
  [(SSSScreenshotsView *)self _layoutBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SSSScreenshotsView *)self state]== 1 || [(SSSScreenshotsView *)self isDismissing])
  {
    v34 = v10;
    if (![(SSSScreenshotsView *)self _currentPage])
    {
      [*(&self->super._ss_vi2EnabledCacheIsValid + 1) bounds];
      *(&self->_isShowingToolPalette + 2) = v11;
      if ([(SSSScreenshotsView *)self _isLandscapePhone])
      {
        *(&self->_isShowingToolPalette + 2) = *(&self->_isShowingToolPalette + 2) + 24.0;
      }
    }

    v33 = *(&self->_isShowingToolPalette + 2);
    [(SSSScreenshotsView *)self _bottomBarHeightIncludingSafeAreaInsets];
    v13 = v12;
    [(SSSScreenshotsView *)self safeAreaInsets];
    v15 = fmax(v13 - v14, 0.0);
    visibleScreenshots = [(SSSScreenshotsView *)self visibleScreenshots];
    v17 = [visibleScreenshots count] > 1;

    traitCollection = [(SSSScreenshotsView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    window = [(SSSScreenshotsView *)self window];
    [window bounds];
    [SSChromeHelper availableRectForFullscreenContent:[(SSSScreenshotsView *)self _shouldBleedToBottom] layoutBounds:userInterfaceIdiom bleedToBottom:v17 topBarHeight:v21 bottomBarHeight:v22 userInterfaceIdiom:v23 multipleScreenshots:v24, v4, v6, v8, v34, v33, *&v15];
    v4 = v25;
    v6 = v26;
    v8 = v27;
    v10 = v28;
  }

  v29 = v4;
  v30 = v6;
  v31 = v8;
  v32 = v10;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGSize)_screenshotMaximumSize
{
  [(SSSScreenshotsView *)self _availableRectForContent];
  [(SSSScreenshotsView *)self bounds];
  SSizeToFitSizeInAspectRatioOfSize();
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  [traitCollection displayScale];
  SSRoundSizeToScale();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)_interScreenshotSpacing
{
  [(SSSScreenshotsView *)self _screenshotMaximumSize];
  v4 = v3;
  [(SSSScreenshotsView *)self bounds];
  return (v5 - v4) * 0.25;
}

- (UIEdgeInsets)_scrollContentInsets
{
  numberOfScreenshotImages = [(SSSScreenshotsView *)self numberOfScreenshotImages];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  effectiveUserInterfaceLayoutDirection = [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
  state = [(SSSScreenshotsView *)self state];
  if (numberOfScreenshotImages < 1)
  {
    if (state == 1)
    {
      [(SSSScreenshotsView *)self _interScreenshotSpacing];
      left = v18 + v18;
      [(SSSScreenshotsView *)self _interScreenshotSpacing];
      right = v19 + v19;
    }
  }

  else if (state == 1)
  {
    firstObject = [*(&self->_isInStateTransition + 1) firstObject];
    lastObject = [*(&self->_isInStateTransition + 1) lastObject];
    v11 = lastObject;
    v12 = effectiveUserInterfaceLayoutDirection == 0;
    if (effectiveUserInterfaceLayoutDirection)
    {
      v13 = lastObject;
    }

    else
    {
      v13 = firstObject;
    }

    if (v12)
    {
      v14 = lastObject;
    }

    else
    {
      v14 = firstObject;
    }

    v15 = v14;
    [v13 frame];
    [(SSSScreenshotsView *)self bounds];
    UIRectCenteredXInRect();
    left = v16;
    [v15 frame];

    [(SSSScreenshotsView *)self bounds];
    UIRectCenteredXInRect();
    right = v17;
  }

  top = UIEdgeInsetsZero.top;
  v21 = left;
  v22 = bottom;
  v23 = right;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = top;
  return result;
}

- (CGSize)_scrollContentSize
{
  [(SSSScreenshotsView *)self bounds];
  width = v3;
  if ([(SSSScreenshotsView *)self numberOfScreenshotImages]>= 1 && [(SSSScreenshotsView *)self state]== 1)
  {
    width = CGRectNull.size.width;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(&self->_isInStateTransition + 1);
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      height = CGRectNull.size.height;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v20 + 1) + 8 * v12) frame];
          v28.origin.x = v13;
          v28.origin.y = v14;
          v28.size.width = v15;
          v28.size.height = v16;
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectUnion(v26, v28);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
          v12 = v12 + 1;
        }

        while (v7 != v12);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  [*(&self->_toolPalette + 2) frame];
  v17 = width;
  v19 = v18;
  result.height = v19;
  result.width = v17;
  return result;
}

- (BOOL)_shouldShowScreenshotViewAtIndex:(int64_t)index
{
  if ([(SSSScreenshotsView *)self editMode]== 2 && [(SSSScreenshotsView *)self _currentPage]!= index)
  {
    return 0;
  }

  if ([(SSSScreenshotsView *)self _showAllScreenshotsForNumberOfScreenshots:[(SSSScreenshotsView *)self _numberOfPages]])
  {
    return 1;
  }

  _numberOfPages = [(SSSScreenshotsView *)self _numberOfPages];
  v7 = [(SSSScreenshotsView *)self _numberOfPages]- 1 == index;
  v8 = _numberOfPages / 2 == index || v7;
  return !index || v8;
}

- (int64_t)_positioningIndexForIndex:(int64_t)index numberOfScreenshots:(int64_t)screenshots
{
  if (![(SSSScreenshotsView *)self _showAllScreenshotsForNumberOfScreenshots:screenshots])
  {
    return (index / screenshots * 3.0);
  }

  return index;
}

- (int64_t)_effectiveIndexForIndex:(int64_t)index inNumberOfScreenshots:(int64_t)screenshots
{
  if ([(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection])
  {
    return ~index + screenshots;
  }

  else
  {
    return index;
  }
}

- (id)_rectsForShadowView
{
  v3 = +[NSMutableArray array];
  visibleScreenshots = [(SSSScreenshotsView *)self visibleScreenshots];
  v5 = [visibleScreenshots count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    do
    {
      v11 = [visibleScreenshots objectAtIndex:v7];
      [(SSSScreenshotsView *)self bounds];
      [(SSSScreenshotsView *)self _frameForScreenshot:v11 atIndex:v7 numberOfScreenshots:v6 maximumSize:0 interScreenshotSpacing:v12 rectToCenterAboveKeyboard:v13 state:0.0, CGRectNull.origin.x, y, width, height];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = sub_10000F53C();
      v23 = [NSValue valueWithCGRect:v15 - v22, v17 - v22, v19 + v22 * 2.0, v21 + v22 * 2.0];
      [v3 addObject:v23];

      ++v7;
    }

    while (v6 != v7);
  }

  return v3;
}

- (double)_thumbnailTrayWidth
{
  [(SSSScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  v8 = [traitCollection userInterfaceIdiom] == 1;

  traitCollection2 = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
  v11 = fmax(v4, v6);
  v12 = fmin(v4, v6);
  if (userInterfaceIdiom == 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = dbl_10008F570[v8];

  return v14 * v13;
}

- (void)_layoutThumbnailView
{
  if ([(SSSScreenshotsView *)self editMode]== 1)
  {
    v3 = [(SSSScreenshotsView *)self _viewForPage:[(SSSScreenshotsView *)self _currentPage]];
    [v3 setNeedsLayout];

    v4 = [(SSSScreenshotsView *)self _viewForPage:[(SSSScreenshotsView *)self _currentPage]];
    [v4 layoutIfNeeded];

    v5 = *(&self->_borderViewStyleOverride + 2);
    _currentPDFView = [(SSSScreenshotsView *)self _currentPDFView];
    [v5 setPdfView:_currentPDFView];

    [(SSSScreenshotsView *)self _updateThumbnailViewVisibilityIfNeededAnimated:0];
    [(SSSScreenshotsView *)self _thumbnailTrayWidth];
    v8 = v7;
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(SSSScreenshotsView *)self _bottomBarHeightIncludingSafeAreaInsets];
    if (v17 == 0.0)
    {
      [(SSSScreenshotsView *)self bounds];
      MaxY = CGRectGetMaxY(v54);
    }

    else
    {
      [*(&self->_topBarEmptyBackgroundImage + 2) frame];
      MaxY = CGRectGetMinY(v53);
    }

    v51 = MaxY;
    effectiveUserInterfaceLayoutDirection = [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
    [(SSSScreenshotsView *)self _layoutBoundsForFullPageThumbnail];
    if (effectiveUserInterfaceLayoutDirection)
    {
      MinX = CGRectGetMinX(*&v20);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v20) - v8;
    }

    v55.origin.x = v10;
    v55.origin.y = v12;
    v55.size.width = v14;
    v55.size.height = v16;
    v25 = CGRectGetMaxY(v55);
    v26 = _SSScreenshotsRedesign2025Enabled();
    v27 = v12;
    if (v26)
    {
      v28 = 16.0;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = v25 + v28;
    v30 = v10;
    v31 = v14;
    v32 = v16;
    v33 = v51 - CGRectGetMaxY(*(&v27 - 1));
    if (_SSScreenshotsRedesign2025Enabled())
    {
      v34 = 16.0;
    }

    else
    {
      v34 = 0.0;
    }

    v35 = v33 - v34;
    if (_SSScreenshotsRedesign2025Enabled())
    {
      v36 = 16.0;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = v35 - v36;
    [*(&self->_borderViewStyleOverride + 2) setFrame:{MinX, v29, v8, v37}];
    [(SSSScreenshotsView *)self safeAreaInsets];
    [*(&self->_omnibarContainerView + 2) setFrame:{MinX, v29, v8 + v38, v37}];
    _currentPDFView2 = [(SSSScreenshotsView *)self _currentPDFView];
    [_currentPDFView2 bounds];

    _currentPDFView3 = [(SSSScreenshotsView *)self _currentPDFView];
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) bounds];
    [_currentPDFView3 convertRect:*(&self->super._ss_vi2EnabledCacheIsValid + 1) fromView:?];
    SSRectSubtractingRect();

    _currentPDFView4 = [(SSSScreenshotsView *)self _currentPDFView];
    [*(&self->_borderViewStyleOverride + 2) bounds];
    [_currentPDFView4 convertRect:*(&self->_borderViewStyleOverride + 2) fromView:?];
    SSRectSubtractingRect();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = *(&self->_borderViewStyleOverride + 2);

    [v50 setScrollViewVisibleRectInPDFView:{v43, v45, v47, v49}];
  }

  else
  {

    [(SSSScreenshotsView *)self _updateThumbnailViewVisibilityIfNeededAnimated:0];
  }
}

- (CGRect)screenshotsExtentRect
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(&self->_isInStateTransition + 1);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 extent];
        [(SSSScreenshotsView *)self convertRect:v12 fromView:?];
        v29.origin.x = v13;
        v29.origin.y = v14;
        v29.size.width = v15;
        v29.size.height = v16;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_updateThumbnailViewVisibilityIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100042614;
  v6[3] = &unk_1000BA068;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)aaButtonPressed:(id)pressed
{
  [*(&self->_visualSearchButton + 2) setSelected:{objc_msgSend(*(&self->_visualSearchButton + 2), "isSelected", pressed) ^ 1}];
  delegate = [(SSSScreenshotsView *)self delegate];
  activeScreenshotView = [(SSSScreenshotsView *)self activeScreenshotView];
  [delegate aaButtonPressed:activeScreenshotView];
}

- (void)analysisInfoButtonPressed:(id)pressed
{
  [*(&self->_instructionLabel + 2) setSelected:{objc_msgSend(*(&self->_instructionLabel + 2), "isSelected", pressed) ^ 1}];
  delegate = [(SSSScreenshotsView *)self delegate];
  activeScreenshotView = [(SSSScreenshotsView *)self activeScreenshotView];
  [delegate analysisButtonPressed:activeScreenshotView];
}

- (void)toolbarDidSelectOpacityOptionWithAccessoryView:(id)view
{
  viewCopy = view;
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate didTapOpacityOptionWithAttributeView:viewCopy];
}

- (void)endOpacityEditing
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    window = [(SSSScreenshotsView *)self window];
    v4 = [PKToolPicker activeToolPickerForWindow:window];
    [v4 _endOpacityEditing];
  }

  v5 = *(&self->_thumbnailBackgroundView + 2);

  [v5 endOpacityEditing];
}

- (SSSScreenshot)currentScreenshot
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  screenshot = [currentScreenshotView screenshot];

  return screenshot;
}

- (id)currentScreenshotView
{
  _currentPage = [(SSSScreenshotsView *)self _currentPage];

  return [(SSSScreenshotsView *)self _viewForPage:_currentPage];
}

- (void)parentScreenshotView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  [(SSSScreenshotsView *)self layoutIfNeeded];
  [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
  [viewCopy setDelegate:self];
  [viewCopy setRulerHostingView:*(&self->_delegate + 2)];
  [*(&self->_isInStateTransition + 1) addObject:viewCopy];
  imageAnalyzer = [(SSSScreenshotsView *)self imageAnalyzer];
  [viewCopy setImageAnalyzer:imageAnalyzer];

  [*(&self->_toolPalette + 2) addSubview:viewCopy];

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (id)_screenshotViewForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(&self->_isInStateTransition + 1);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        screenshot = [v9 screenshot];

        if (screenshot == screenshotCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  [(SSSScreenshotsView *)self layoutIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = screenshotsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SSSScreenshotsView *)self _screenshotViewForScreenshot:*(*(&v13 + 1) + 8 * v9), v13];
        v11 = v10;
        if (v10)
        {
          [v10 setIsBeingRemoved:1];
          [v11 dismissVISheetIfNecessary];
          [v11 setScreenshotEditsSnapshotted:1 inTransition:0 currentScreenshot:1];
          [*(&self->_isInStateTransition + 1) removeObject:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate screenshotDidChangeForScreenshotsView:self];

  [(SSSScreenshotsView *)self _updateActiveScreenshotViewIfNecessary];
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)commitInflightEdits
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(&self->_isInStateTransition + 1);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) commitInflightEdits];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updateActiveScreenshotViewIfNecessary
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  [(SSSScreenshotsView *)self setActiveScreenshotView:currentScreenshotView];
}

- (void)_dismissVISheetIfNecessary
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(&self->_isInStateTransition + 1);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissVISheetIfNecessary];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setState:(unint64_t)state
{
  if (*&self->_screenshotViewsUseTrilinearMinificationFilter != state)
  {
    BYTE3(self->_layoutPositioningView) = 1;
    [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
    if (!state)
    {
      [*(&self->_thumbnailBackgroundView + 2) forceHideRuler];
      [(SSSScreenshotsView *)self setEditMode:0];
      size = CGRectNull.size;
      *(&self->_lastPageForSignificantChange + 2) = CGRectNull.origin;
      *(&self->_keyboardFrame.origin.y + 2) = size;
    }

    *&self->_screenshotViewsUseTrilinearMinificationFilter = state;
    [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];

    [(SSSScreenshotsView *)self setNeedsLayout];
  }
}

- (void)_updateDisplayedPage
{
  if (*(&self->_screenshotViews + 2) == -1 || [(SSSScreenshotsView *)self _currentPage]== -1)
  {
    v3 = *(&self->_scrollView + 2);
    _currentPage = [(SSSScreenshotsView *)self _currentPage];

    [v3 setIndex:_currentPage];
  }

  else
  {
    if ([(SSSScreenshotsView *)self state]== 1)
    {
      [(SSSScreenshotsView *)self _scrollToPage:*(&self->_screenshotViews + 2) animated:0];
      [*(&self->_scrollView + 2) setIndex:*(&self->_screenshotViews + 2)];
    }

    *(&self->_screenshotViews + 2) = -1;
  }
}

- (void)_updateScrollPositionForCurrentPage
{
  if ([(SSSScreenshotsView *)self state]== 1 && *(&self->_screenshotViews + 2) == -1 && [(SSSScreenshotsView *)self _currentPage]!= -1)
  {
    _currentPage = [(SSSScreenshotsView *)self _currentPage];

    [(SSSScreenshotsView *)self _scrollToPage:_currentPage animated:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate screenshotDidChangeForScreenshotsView:self];

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(SSSScreenshotsView *)self setNeedsLayout];

  [(SSSScreenshotsView *)self layoutIfNeeded];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  y = offset->y;
  v9 = [(SSSScreenshotsView *)self _pageForXOffsetInScrollView:dragging, offset->x, velocity.y];
  effectiveUserInterfaceLayoutDirection = [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
  if (x != 0.0)
  {
    v11 = 1;
    if (effectiveUserInterfaceLayoutDirection)
    {
      v11 = -1;
    }

    if (x <= 0.0)
    {
      v11 = -v11;
    }

    v9 = (v11 + v9) & ~((v11 + v9) >> 63);
    _numberOfPages = [(SSSScreenshotsView *)self _numberOfPages];
    if (v9 >= _numberOfPages - 1)
    {
      v9 = _numberOfPages - 1;
    }
  }

  [(SSSScreenshotsView *)self _scrollViewRectForPage:v9];
  offset->x = v13;
  offset->y = y;

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (id)_viewForPage:(int64_t)page
{
  if (page < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([*(&self->_isInStateTransition + 1) count] <= page)
    {
      v6 = 0;
    }

    else
    {
      v6 = [*(&self->_isInStateTransition + 1) objectAtIndex:page];
    }
  }

  return v6;
}

- (CGRect)_scrollViewRectForPage:(int64_t)page
{
  v4 = [(SSSScreenshotsView *)self _viewForPage:page];
  [v4 bounds];
  [*(&self->_toolPalette + 2) convertRect:v4 fromView:?];
  UIRectGetCenter();
  [*(&self->_toolPalette + 2) bounds];
  UIRectCenteredAboutPoint();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (int64_t)_pageForXOffsetInScrollView:(double)view
{
  [*(&self->_toolPalette + 2) bounds];
  UIRectGetCenter();
  v5 = v4;
  if ([(SSSScreenshotsView *)self _numberOfPages]< 1)
  {
    return -1;
  }

  v6 = 0;
  v7 = -1;
  v8 = 1.79769313e308;
  do
  {
    v9 = [*(&self->_isInStateTransition + 1) objectAtIndex:v6];
    WeakRetained = objc_loadWeakRetained((&self->_rulerHostingView + 2));

    if (v9 != WeakRetained && ([v9 isBeingRemoved] & 1) == 0)
    {
      v11 = *(&self->_toolPalette + 2);
      [v9 bounds];
      [v11 convertRect:v9 fromView:?];
      UIRectGetCenter();
      v13 = vabdd_f64(v12, v5);
      if (v13 < v8)
      {
        v7 = v6;
        v8 = v13;
      }
    }

    ++v6;
  }

  while (v6 < [(SSSScreenshotsView *)self _numberOfPages]);
  return v7;
}

- (int64_t)_currentPage
{
  result = [(SSSScreenshotsView *)self state];
  if (result)
  {
    [*(&self->_toolPalette + 2) contentOffset];

    return [(SSSScreenshotsView *)self _pageForXOffsetInScrollView:?];
  }

  return result;
}

- (void)_scrollToPage:(int64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SSSScreenshotsView *)self _scrollViewRectForPage:page];
  v6 = *(&self->_toolPalette + 2);

  [v6 setContentOffset:animatedCopy animated:?];
}

- (id)viewsForScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  v18 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = screenshotsCopy;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = *(&self->_isInStateTransition + 1);
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              screenshot = [v14 screenshot];

              if (screenshot == v8)
              {
                [v18 addObject:v14];
                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  return v18;
}

- (void)setIsSharing:(BOOL)sharing
{
  BYTE6(self->_scrollPocketInteraction) = sharing;
  HIBYTE(self->_scrollPocketInteraction) |= sharing;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (NSArray)visibleScreenshots
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(&self->_isInStateTransition + 1);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        screenshot = [*(*(&v11 + 1) + 8 * i) screenshot];
        [v3 addObject:screenshot];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_screenshotAtIndex:(int64_t)index
{
  v3 = [*(&self->_isInStateTransition + 1) objectAtIndex:index];
  screenshot = [v3 screenshot];

  return screenshot;
}

- (id)screenshotViewForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(&self->_isInStateTransition + 1);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        screenshot = [v9 screenshot];
        v11 = [screenshot isEqual:screenshotCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_screenshotsEligibleForSharing
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(&self->_isInStateTransition + 1);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        screenshot = [*(*(&v11 + 1) + 8 * i) screenshot];
        [v3 addObject:screenshot];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)activityItems
{
  v3 = +[NSMutableArray array];
  _screenshotsEligibleForSharing = [(SSSScreenshotsView *)self _screenshotsEligibleForSharing];
  v5 = [_screenshotsEligibleForSharing count];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  _screenshotsEligibleForSharing2 = [(SSSScreenshotsView *)self _screenshotsEligibleForSharing];
  v7 = [_screenshotsEligibleForSharing2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(_screenshotsEligibleForSharing2);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        lastViewEditMode = [v11 lastViewEditMode];
        if (lastViewEditMode)
        {
          if (lastViewEditMode != 1)
          {
            continue;
          }

          if (v5 == 1 && [v11 pdfCanBeConvertedToImage])
          {
            itemProviderPDFAsImage = [v11 itemProviderPDFAsImage];
          }

          else
          {
            itemProviderPDFAsImage = [v11 itemProviderPDF];
          }
        }

        else
        {
          itemProviderPDFAsImage = [v11 itemProviderImage];
        }

        v14 = itemProviderPDFAsImage;
        [v3 addObject:itemProviderPDFAsImage];
      }

      v8 = [_screenshotsEligibleForSharing2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v15 = +[UIPrintInfo printInfo];
    [v15 setOutputType:0];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"SCREENSHOTS_PRINT_JOB_FORMAT" value:&stru_1000BC350 table:0];
    v18 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v17, [v3 count]);

    [v15 setJobName:v18];
    [v3 addObject:v15];
  }

  return v3;
}

- (NSArray)dragItems
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(&self->_isInStateTransition + 1);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        screenshot = [v9 screenshot];
        itemProviderForDragItems = [screenshot itemProviderForDragItems];
        v12 = [[UIDragItem alloc] initWithItemProvider:itemProviderForDragItems];
        [v12 setLocalObject:v9];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)imageItems
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _screenshotsEligibleForSharing = [(SSSScreenshotsView *)self _screenshotsEligibleForSharing];
  v5 = [_screenshotsEligibleForSharing countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_screenshotsEligibleForSharing);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        imageGenerator = [v10 imageGenerator];
        v12 = [imageGenerator generateImageForScreenshot:v10 shouldApplyCrop:1 allowHDR:1 targetSize:{CGSizeZero.width, height}];
        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v6 = [_screenshotsEligibleForSharing countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)previewForDragItem:(id)item inContainer:(id)container
{
  containerCopy = container;
  v7 = [(SSSScreenshotsView *)self _screenshotViewForDragItem:item];
  screenshot = [v7 screenshot];
  [v7 bounds];
  [containerCopy convertRect:v7 fromView:?];
  v10 = v9;
  v12 = v11;
  y = CGPointZero.y;
  imageProvider = [screenshot imageProvider];
  requestOutputImageForUIBlocking = [imageProvider requestOutputImageForUIBlocking];

  v16 = [[UIImageView alloc] initWithImage:requestOutputImageForUIBlocking];
  [v16 setFrame:{CGPointZero.x, y, v10, v12}];
  [v7 bounds];
  UIRectGetCenter();
  [containerCopy convertPoint:v7 fromView:?];
  v18 = v17;
  v20 = v19;

  v21 = [UIDragPreviewTarget alloc];
  window = [(SSSScreenshotsView *)self window];
  v23 = *&CGAffineTransformIdentity.c;
  v29[0] = *&CGAffineTransformIdentity.a;
  v29[1] = v23;
  v29[2] = *&CGAffineTransformIdentity.tx;
  v24 = [v21 initWithContainer:window center:v29 transform:{v18, v20}];

  v25 = objc_alloc_init(UIDragPreviewParameters);
  v26 = +[UIColor clearColor];
  [v25 setBackgroundColor:v26];

  v27 = [[UITargetedDragPreview alloc] initWithView:v16 parameters:v25 target:v24];

  return v27;
}

- (id)targetForCancellingDragItem:(id)item inContainer:(id)container
{
  containerCopy = container;
  v7 = [(SSSScreenshotsView *)self _screenshotViewForDragItem:item];
  [v7 bounds];
  UIRectGetCenter();
  [containerCopy convertPoint:v7 fromView:?];
  v10 = [[UIDragPreviewTarget alloc] initWithContainer:containerCopy center:{v8, v9}];

  return v10;
}

- (void)_updateShadowViewAlpha
{
  showsShadow = [(SSSScreenshotsView *)self showsShadow];
  v4 = 0.0;
  if (showsShadow)
  {
    v4 = 1.0;
  }

  v5 = *(&self->_countIndicator + 2);

  [v5 setAlpha:v4];
}

- (void)screenshotViewUndoStackChanged:(id)changed
{
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate undoStackChangedForScreenshotsView:self];
}

- (void)screenshotViewTapped:(id)tapped
{
  tappedCopy = tapped;
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];

  v5 = tappedCopy;
  if (currentScreenshotView != tappedCopy)
  {
    -[SSSScreenshotsView _scrollToPage:animated:](self, "_scrollToPage:animated:", [*(&self->_isInStateTransition + 1) indexOfObject:tappedCopy], 1);
    v5 = tappedCopy;
    BYTE2(self->_cachedTopBarHeight) = 1;
  }
}

- (void)screenshotViewCropDidChange:(id)change
{
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate cropDidChangeForScreenshotView:self];

  [(SSSScreenshotsView *)self _updateVisualSearchCornerViewPositioning];
}

- (id)viewControllerForPresentationsFromScreenshotView:(id)view
{
  delegate = [(SSSScreenshotsView *)self delegate];
  v5 = [delegate viewControllerForPresentationsFromScreenshotsView:self];

  return v5;
}

- (void)screenshotView:(id)view hasHighPriorityGesture:(id)gesture
{
  v4 = *(&self->_toolPalette + 2);
  gestureCopy = gesture;
  panGestureRecognizer = [v4 panGestureRecognizer];
  [panGestureRecognizer requireGestureRecognizerToFail:gestureCopy];
}

- (void)screenshotView:(id)view noLongerHasHighPriorityGesture:(id)gesture
{
  v4 = *(&self->_toolPalette + 2);
  gestureCopy = gesture;
  panGestureRecognizer = [v4 panGestureRecognizer];
  [panGestureRecognizer removeFailureRequirement:gestureCopy];
}

- (void)screenshotView:(id)view didUpdateInteraction:(id)interaction withAnalysis:(id)analysis
{
  viewCopy = view;
  activeScreenshotView = [(SSSScreenshotsView *)self activeScreenshotView];

  if (activeScreenshotView == viewCopy)
  {
    [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];

    [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:1];
  }
}

- (void)screenshotView:(id)view requestsUpdateToInteractionMode:(unint64_t)mode
{
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate screenshotsView:self requestsUpdateToInteractionMode:mode];

  [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];
}

- (void)screenshotView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate didTapOpacityOptionWithAttributeView:accessoryViewCopy];
}

- (void)screenshotViewDidInvokeVICard:(id)card
{
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate screenshotsViewDidInvokeVICard:self];
}

- (void)screenshotView:(id)view isDraggingVISheetDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(SSSScreenshotsView *)self delegate];
  [delegate screenshotsView:self isDraggingVISheetDidChange:changeCopy];
}

- (CGRect)_effectiveBottomBarExtent
{
  [(SSSScreenshotsView *)self _toolPickerHeightOnPhone];
  height = v3;
  [(SSSScreenshotsView *)self bounds];
  v6 = v5;
  [(SSSScreenshotsView *)self bounds];
  width = v7;
  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    y = v6 - height;
    x = 0.0;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_screenshotEditsShouldBeSnapshottedForCurrentScreenshot
{
  if ([(SSSScreenshotsView *)self snapshotScreenshotEdits])
  {
    return 1;
  }

  v4 = *(&self->_toolPalette + 2);

  return [v4 isMoving];
}

- (void)dismissOverlayManagedViewControllers
{
  [*(&self->_thumbnailBackgroundView + 2) dismissPresentedPopovers];
  window = [(SSSScreenshotsView *)self window];
  firstResponder = [window firstResponder];

  [*(&self->_thumbnailBackgroundView + 2) setToolPickerVisible:0 forFirstResponder:firstResponder];
}

- (int64_t)positionForBar:(id)bar
{
  if (*(&self->super._ss_vi2EnabledCacheIsValid + 1) == bar)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)setShareItemTarget:(id)target
{
  objc_storeWeak((&self->_interactionMode + 2), target);

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setShareItemAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  *(&self->_shareItemTarget + 2) = actionCopy;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setUndoItemTarget:(id)target
{
  objc_storeWeak((&self->_shareItemAction + 2), target);

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setUndoItemAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  *(&self->_undoItemTarget + 2) = actionCopy;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setRedoItemTarget:(id)target
{
  objc_storeWeak((&self->_undoItemAction + 2), target);

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setRedoItemAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  *(&self->_redoItemTarget + 2) = actionCopy;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (id)createUndoMenu
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  undoManager = [currentScreenshotView undoManager];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"UNDO_FORMAT" value:@"Undo %@" table:0];
  undoActionName = [undoManager undoActionName];
  v7 = [NSString stringWithFormat:v5, undoActionName];

  v8 = [UICommand commandWithTitle:v7 image:0 action:"_undo" propertyList:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"UNDO_ALL" value:@"Undo All" table:0];
  v11 = [UICommand commandWithTitle:v10 image:0 action:"_undoAll" propertyList:0];

  v15[0] = v8;
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  v13 = [UIMenu menuWithTitle:&stru_1000BC350 image:0 identifier:@"SSSUndoMenuIdentifer" options:0 children:v12];

  return v13;
}

- (void)_undo
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  undoManager = [currentScreenshotView undoManager];

  if ([undoManager canUndo])
  {
    [undoManager undo];
  }
}

- (void)_undoAll
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  undoManager = [currentScreenshotView undoManager];

  if ([undoManager canUndo])
  {
    do
    {
      [undoManager undo];
    }

    while (([undoManager canUndo] & 1) != 0);
  }
}

- (void)setBorderViewStyleOverride:(int64_t)override withAnimator:(id)animator
{
  animatorCopy = animator;
  *(&self->_shadowView + 2) = override;
  [(SSSScreenshotsView *)self setNeedsLayout];
  if (animatorCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100044FE0;
    v9[3] = &unk_1000BA068;
    v9[4] = self;
    [animatorCopy addAnimations:v9];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100044FE8;
    v8[3] = &unk_1000BA068;
    v8[4] = self;
    v7 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:6 delay:v8 options:0 animations:0.3 completion:0.0];
  }
}

- (BOOL)_shouldHandleKeyboardNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardIsLocalUserInfoKey];
  bOOLValue = [v5 BOOLValue];

  if (!bOOLValue)
  {
    return 0;
  }

  delegate = [(SSSScreenshotsView *)self delegate];
  v8 = [delegate viewControllerForPresentationsFromScreenshotsView:self];

  presentedViewController = [v8 presentedViewController];
  v10 = presentedViewController == 0;

  return v10;
}

- (void)_updateForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  if ([(SSSScreenshotsView *)self _shouldHandleKeyboardNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v6 = [userInfo valueForKey:UIKeyboardFrameEndUserInfoKey];

    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 valueForKey:UIKeyboardAnimationDurationUserInfoKey];

    userInfo3 = [notificationCopy userInfo];
    v10 = [userInfo3 valueForKey:UIKeyboardAnimationCurveUserInfoKey];

    [v6 CGRectValue];
    [(SSSScreenshotsView *)self convertRect:0 fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v8 doubleValue];
    v20 = v19;
    integerValue = [v10 integerValue];
    [(SSSScreenshotsView *)self setNeedsLayout];
    [(SSSScreenshotsView *)self layoutIfNeeded];
    [(SSSScreenshotsView *)self setNeedsLayout];
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000452AC;
    v22[3] = &unk_1000BAE48;
    objc_copyWeak(v23, &location);
    v23[1] = v12;
    v23[2] = v14;
    v23[3] = v16;
    v23[4] = v18;
    [UIView animateWithDuration:integerValue | 6 delay:v22 options:0 animations:v20 completion:0.0];
    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_shouldAvoidKeyboard
{
  v3 = (&self->_lastPageForSignificantChange + 2);
  *&v12.origin.x = *(&self->_lastPageForSignificantChange + 2);
  v12.origin.y = *(&self->_keyboardFrame.origin.x + 2);
  v12.size.width = *(&self->_keyboardFrame.origin.y + 2);
  v12.size.height = *(&self->_keyboardFrame.size.width + 2);
  v15.origin.x = CGRectNull.origin.x;
  v15.origin.y = CGRectNull.origin.y;
  v15.size.width = CGRectNull.size.width;
  v15.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v12, v15))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    [(SSSScreenshotsView *)self bounds];
    v16.origin.x = v5;
    v16.origin.y = v6;
    v16.size.width = v7;
    v16.size.height = v8;
    v13 = CGRectIntersection(*v3, v16);
    v4 = !CGRectIsEmpty(v13);
  }

  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  [currentScreenshotView rectToCenterAboveKeyboard];
  v10 = !CGRectIsNull(v14);

  return v4 && v10;
}

- (void)_updateSubviewOrdering
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (*(&self->_thumbnailBackgroundView + 2))
  {
    [v3 addObject:?];
  }

  if (*(&self->_scrollView + 2))
  {
    [v4 addObject:?];
  }

  if (*(&self->_topBarEmptyBackgroundImage + 2))
  {
    [v4 addObject:?];
  }

  if (*(&self->_borderViewStyleOverride + 2))
  {
    [v4 addObject:?];
  }

  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0 && *(&self->_omnibarContainerView + 2))
  {
    [v4 addObject:?];
  }

  if (*(&self->super._ss_vi2EnabledCacheIsValid + 1))
  {
    [v4 addObject:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SSSScreenshotsView *)self insertSubview:*(*(&v10 + 1) + 8 * i) aboveSubview:*(&self->_toolPalette + 2), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = +[NSMutableArray array];
  v9 = v8;
  if (*(&self->super._ss_vi2EnabledCacheIsValid + 1))
  {
    [v8 addObject:?];
  }

  if (*(&self->_thumbnailBackgroundView + 2))
  {
    [v9 addObject:?];
  }

  _omnibar = [(SSSScreenshotsView *)self _omnibar];

  if (_omnibar)
  {
    _omnibar2 = [(SSSScreenshotsView *)self _omnibar];
    [v9 addObject:_omnibar2];
  }

  _bottomBarContentView = [(SSSScreenshotsView *)self _bottomBarContentView];

  if (_bottomBarContentView)
  {
    _bottomBarContentView2 = [(SSSScreenshotsView *)self _bottomBarContentView];
    [v9 addObject:_bottomBarContentView2];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        [v19 convertPoint:self fromView:{x, y}];
        v20 = [v19 hitTest:eventCopy withEvent:?];
        if (v20 && !UIViewIgnoresTouchEvents())
        {

          goto LABEL_20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v27.receiver = self;
  v27.super_class = SSSScreenshotsView;
  v20 = [(SSSScreenshotsView *)&v27 hitTest:eventCopy withEvent:x, y];
LABEL_20:
  if (v20 == *(&self->_scrollView + 2) || ([(SSSScreenshotsView *)self _bottomBarContentView], v21 = objc_claimAutoreleasedReturnValue(), v21, v20 == v21))
  {
    v22 = *(&self->_toolPalette + 2);

    v20 = v22;
  }

  WeakRetained = objc_loadWeakRetained((&self->_redoItemAction + 2));
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = objc_loadWeakRetained((&self->_redoItemAction + 2));
    [v25 screenshotsView:self didHitTestView:v20 point:eventCopy withEvent:{x, y}];
  }

  return v20;
}

- (void)setEditMode:(int64_t)mode
{
  if ([(SSSScreenshotsView *)self editMode]!= mode)
  {
    currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
    if ([currentScreenshotView editMode] != mode)
    {
      [*(&self->_thumbnailBackgroundView + 2) forceHideRuler];
    }

    [currentScreenshotView setEditMode:mode];
    [*(&self->_borderViewStyleOverride + 2) setShouldUpdate:mode == 1];
    [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
    delegate = [(SSSScreenshotsView *)self delegate];
    v6 = [delegate viewControllerForPresentationsFromScreenshotsView:self];

    [v6 becomeFirstResponder];
    [(SSSScreenshotsView *)self setNeedsLayout];
    [(SSSScreenshotsView *)self layoutIfNeeded];
    [currentScreenshotView adjustPDFPositioningToMatchImageIfNecessary];
    [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:0];
    [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];
    delegate2 = [(SSSScreenshotsView *)self delegate];
    [delegate2 screenshotsViewEditModeDidChange:self];
  }
}

- (int64_t)editMode
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  editMode = [currentScreenshotView editMode];

  return editMode;
}

- (BOOL)isCropped
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  isCropped = [currentScreenshotView isCropped];

  return isCropped;
}

- (void)enterCrop
{
  [*(&self->_thumbnailBackgroundView + 2) forceHideRuler];
  v3 = [(SSSScreenshotsView *)self _viewForPage:[(SSSScreenshotsView *)self _currentPage]];
  [v3 enterCrop];
}

- (void)resetCrop
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  [currentScreenshotView resetCrop];
}

- (void)doneCrop
{
  v2 = [(SSSScreenshotsView *)self _viewForPage:[(SSSScreenshotsView *)self _currentPage]];
  [v2 doneCrop];
}

- (void)cancelCrop
{
  v2 = [(SSSScreenshotsView *)self _viewForPage:[(SSSScreenshotsView *)self _currentPage]];
  [v2 cancelCrop];
}

- (int64_t)currentPDFPage
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  currentPDFPage = [currentScreenshotView currentPDFPage];

  return currentPDFPage;
}

- (id)_currentPDFView
{
  if ([(SSSScreenshotsView *)self _isShowingPDFScreenshot])
  {
    currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
    _internalPDFView = [currentScreenshotView _internalPDFView];
  }

  else
  {
    _internalPDFView = 0;
  }

  return _internalPDFView;
}

- (BOOL)_isShowingPDFScreenshot
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [currentScreenshotView editMode] != 0;

  return v3;
}

- (BOOL)isShowingVICard
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  isShowingVICard = [currentScreenshotView isShowingVICard];

  return isShowingVICard;
}

- (BOOL)isVICardFullScreen
{
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  isVICardFullScreen = [currentScreenshotView isVICardFullScreen];

  return isVICardFullScreen;
}

- (void)didProcessDocumentUpdateForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  visibleScreenshots = [(SSSScreenshotsView *)self visibleScreenshots];
  v5 = [visibleScreenshots containsObject:screenshotCopy];

  if (v5)
  {
    [screenshotCopy didProcessDocumentUpdate];
  }
}

- (BOOL)_layoutShouldShowContentSwitcher
{
  currentScreenshot = [(SSSScreenshotsView *)self currentScreenshot];
  currentScreenshotView = [(SSSScreenshotsView *)self currentScreenshotView];
  isWaitingForPDF = [currentScreenshot isWaitingForPDF];
  pdfData = [currentScreenshot pdfData];

  didFailToWritePDFToURL = [currentScreenshotView didFailToWritePDFToURL];
  if (pdfData)
  {
    isWaitingForPDF = 1;
  }

  v8 = didFailToWritePDFToURL ^ 1;

  return isWaitingForPDF & v8;
}

- (BOOL)_layoutShouldEnableContentSwitcher
{
  currentScreenshot = [(SSSScreenshotsView *)self currentScreenshot];
  pdfData = [currentScreenshot pdfData];
  v4 = pdfData != 0;

  return v4;
}

- (BOOL)_contentSwitcherShouldMoveDown
{
  _isPortraitPhone = [(SSSScreenshotsView *)self _isPortraitPhone];
  if ([(SSSScreenshotsView *)self _isLandscapePhone])
  {
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5 <= 568.0;
  }

  else
  {
    v6 = 0;
  }

  return (_isPortraitPhone | v6) & [(SSSScreenshotsView *)self _layoutShouldShowContentSwitcher]& 1;
}

- (BOOL)_isPortraitPhone
{
  window = [(SSSScreenshotsView *)self window];
  [window bounds];
  v5 = v4;
  window2 = [(SSSScreenshotsView *)self window];
  [window2 bounds];
  v8 = v7;

  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v12 = v5 > v8 && userInterfaceIdiom == 0;

  return v12;
}

- (BOOL)_isLandscapePhone
{
  window = [(SSSScreenshotsView *)self window];
  [window bounds];
  v5 = v4;
  window2 = [(SSSScreenshotsView *)self window];
  [window2 bounds];
  v8 = v7;

  traitCollection = [(SSSScreenshotsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v12 = v5 > v8 && userInterfaceIdiom == 0;

  return v12;
}

- (SSSScreenshotsView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = SSSScreenshotsView;
  v3 = [(SSSScreenshotsView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v3 setClipsToBounds:0];
  v4 = objc_alloc_init(UINavigationBar);
  v5 = *(v3 + 10);
  *(v3 + 10) = v4;

  *(v3 + 258) = 0;
  v6 = [SSSScrollView alloc];
  [v3 bounds];
  v7 = [(SSSScrollView *)v6 initWithFrame:?];
  v8 = *(v3 + 114);
  *(v3 + 114) = v7;

  [*(v3 + 114) setShowsHorizontalScrollIndicator:0];
  [*(v3 + 114) setShowsVerticalScrollIndicator:0];
  [*(v3 + 114) setPagingEnabled:0];
  [*(v3 + 114) setClipsToBounds:0];
  [*(v3 + 114) setHitTestsUsingSubviews:1];
  [*(v3 + 114) setDelegate:v3];
  [*(v3 + 114) setDecelerationRate:UIScrollViewDecelerationRateFast];
  [*(v3 + 114) setDelegate:v3];
  [v3 addSubview:*(v3 + 114)];
  v9 = objc_alloc_init(UIView);
  v10 = *(v3 + 154);
  *(v3 + 154) = v9;

  [*(v3 + 154) setHidden:1];
  [*(v3 + 114) addSubview:*(v3 + 154)];
  v11 = objc_alloc_init(SSSShadowView);
  v12 = *(v3 + 130);
  *(v3 + 130) = v11;

  [v3 insertSubview:*(v3 + 130) belowSubview:*(v3 + 114)];
  v13 = +[NSMutableArray array];
  v14 = *(v3 + 170);
  *(v3 + 170) = v13;

  size = CGRectNull.size;
  *(v3 + 186) = CGRectNull.origin;
  *(v3 + 202) = size;
  *(v3 + 178) = -1;
  v16 = objc_alloc_init(SSSPassthroughView);
  v17 = *(v3 + 338);
  *(v3 + 338) = v16;

  [*(v3 + 338) setClipsToBounds:1];
  [v3 addSubview:*(v3 + 338)];
  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:v3 selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v19 = +[NSNotificationCenter defaultCenter];
  [v19 addObserver:v3 selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  v20 = objc_alloc_init(_SSSPDFThumbnailView);
  v21 = *(v3 + 146);
  *(v3 + 146) = v20;

  return v3;
}

- (NSArray)screenshots
{
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(&self->_isInStateTransition + 1) count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(&self->_isInStateTransition + 1);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        screenshot = [*(*(&v12 + 1) + 8 * i) screenshot];
        if (screenshot)
        {
          [v3 addObject:screenshot];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSSScreenshotsView;
  [(SSSScreenshotsView *)&v4 dealloc];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  if (BYTE2(self->_cachedTopBarHeight) == 1)
  {
    BYTE2(self->_cachedTopBarHeight) = 0;
    delegate = [(SSSScreenshotsView *)self delegate];
    [delegate activityItemsChangedForScreenshotsView:self];
  }
}

- (id)shareItemTarget
{
  WeakRetained = objc_loadWeakRetained((&self->_interactionMode + 2));

  return WeakRetained;
}

- (SEL)shareItemAction
{
  if (*(&self->_shareItemTarget + 2))
  {
    return *(&self->_shareItemTarget + 2);
  }

  else
  {
    return 0;
  }
}

- (id)undoItemTarget
{
  WeakRetained = objc_loadWeakRetained((&self->_shareItemAction + 2));

  return WeakRetained;
}

- (SEL)undoItemAction
{
  if (*(&self->_undoItemTarget + 2))
  {
    return *(&self->_undoItemTarget + 2);
  }

  else
  {
    return 0;
  }
}

- (id)redoItemTarget
{
  WeakRetained = objc_loadWeakRetained((&self->_undoItemAction + 2));

  return WeakRetained;
}

- (SEL)redoItemAction
{
  if (*(&self->_redoItemTarget + 2))
  {
    return *(&self->_redoItemTarget + 2);
  }

  else
  {
    return 0;
  }
}

- (SSSScreenshotsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained((&self->_redoItemAction + 2));

  return WeakRetained;
}

- (SSSScreenshotView)appearingScreenshotView
{
  WeakRetained = objc_loadWeakRetained((&self->_rulerHostingView + 2));

  return WeakRetained;
}

@end