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
- (BOOL)_shouldHandleKeyboardNotification:(id)a3;
- (BOOL)_shouldShowBottomBar;
- (BOOL)_shouldShowScreenshotViewAtIndex:(int64_t)a3;
- (BOOL)isCropped;
- (BOOL)isShowingVICard;
- (BOOL)isVICardFullScreen;
- (CGRect)_availableRectForContent;
- (CGRect)_effectiveBottomBarExtent;
- (CGRect)_frameForScreenshot:(id)a3 atIndex:(int64_t)a4 numberOfScreenshots:(int64_t)a5 maximumSize:(CGSize)a6 interScreenshotSpacing:(double)a7 rectToCenterAboveKeyboard:(CGRect)a8 state:(unint64_t)a9;
- (CGRect)_layoutBounds;
- (CGRect)_layoutBoundsForFullPageThumbnail;
- (CGRect)_scrollViewRectForPage:(int64_t)a3;
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
- (SSSScreenshotsView)initWithFrame:(CGRect)a3;
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
- (id)_screenshotAtIndex:(int64_t)a3;
- (id)_screenshotViewForScreenshot:(id)a3;
- (id)_screenshotsEligibleForSharing;
- (id)_viewForPage:(int64_t)a3;
- (id)createUndoMenu;
- (id)currentOmnibar;
- (id)currentScreenshotView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)previewForDragItem:(id)a3 inContainer:(id)a4;
- (id)redoItemTarget;
- (id)screenshotViewForScreenshot:(id)a3;
- (id)shareItemTarget;
- (id)targetForCancellingDragItem:(id)a3 inContainer:(id)a4;
- (id)undoItemTarget;
- (id)viewControllerForPresentationsFromScreenshotView:(id)a3;
- (id)viewsForScreenshots:(id)a3;
- (int64_t)_currentPage;
- (int64_t)_effectiveIndexForIndex:(int64_t)a3 inNumberOfScreenshots:(int64_t)a4;
- (int64_t)_pageForXOffsetInScrollView:(double)a3;
- (int64_t)_positioningIndexForIndex:(int64_t)a3 numberOfScreenshots:(int64_t)a4;
- (int64_t)currentPDFPage;
- (int64_t)editMode;
- (int64_t)positionForBar:(id)a3;
- (void)_addOrRemoveActionInfoView;
- (void)_dismissVISheetIfNecessary;
- (void)_layoutScreenshotView:(id)a3 forState:(unint64_t)a4 isFirstScreenshot:(BOOL)a5 isCurrentScreenshot:(BOOL)a6;
- (void)_layoutThumbnailView;
- (void)_removeHighlightedModeForScreenshotViewIfNecessary:(id)a3;
- (void)_scrollToPage:(int64_t)a3 animated:(BOOL)a4;
- (void)_setupPaletteIfNecessary;
- (void)_undo;
- (void)_undoAll;
- (void)_updateActiveScreenshotViewIfNecessary;
- (void)_updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:(BOOL)a3;
- (void)_updateDisplayedPage;
- (void)_updateFirstResponderForHidingToolPicker;
- (void)_updateForKeyboardNotification:(id)a3;
- (void)_updateInstructionLabelIfNecessaryAnimated:(BOOL)a3;
- (void)_updatePaletteVisibilityIfNecessary:(BOOL)a3;
- (void)_updateScrollPositionForCurrentPage;
- (void)_updateShadowViewAlpha;
- (void)_updateSubviewOrdering;
- (void)_updateThumbnailViewVisibilityIfNeededAnimated:(BOOL)a3;
- (void)_updateVisualSearchCornerViewPositioning;
- (void)aaButtonPressed:(id)a3;
- (void)addOrRemoveAAButtonIfNecessary;
- (void)addOrRemoveActionInfoViewIfNecessary;
- (void)analysisInfoButtonPressed:(id)a3;
- (void)bringOmnibarToFront;
- (void)cancelCrop;
- (void)commitInflightEdits;
- (void)dealloc;
- (void)didProcessDocumentUpdateForScreenshot:(id)a3;
- (void)dismissOverlayManagedViewControllers;
- (void)doneCrop;
- (void)endOpacityEditing;
- (void)enterCrop;
- (void)layoutSubviews;
- (void)parentScreenshotView:(id)a3 animated:(BOOL)a4;
- (void)removeScreenshots:(id)a3;
- (void)resetCrop;
- (void)safeAreaInsetsDidChange;
- (void)screenshotView:(id)a3 didUpdateInteraction:(id)a4 withAnalysis:(id)a5;
- (void)screenshotView:(id)a3 hasHighPriorityGesture:(id)a4;
- (void)screenshotView:(id)a3 isDraggingVISheetDidChange:(BOOL)a4;
- (void)screenshotView:(id)a3 noLongerHasHighPriorityGesture:(id)a4;
- (void)screenshotView:(id)a3 requestsUpdateToInteractionMode:(unint64_t)a4;
- (void)screenshotView:(id)a3 startEditingOpacityInAccessoryView:(id)a4;
- (void)screenshotViewCropDidChange:(id)a3;
- (void)screenshotViewDidInvokeVICard:(id)a3;
- (void)screenshotViewTapped:(id)a3;
- (void)screenshotViewUndoStackChanged:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActiveScreenshotView:(id)a3;
- (void)setBorderViewStyleOverride:(int64_t)a3 withAnimator:(id)a4;
- (void)setEditMode:(int64_t)a3;
- (void)setInteractionMode:(unint64_t)a3;
- (void)setIsSharing:(BOOL)a3;
- (void)setRedoItemAction:(SEL)a3;
- (void)setRedoItemTarget:(id)a3;
- (void)setShareItemAction:(SEL)a3;
- (void)setShareItemTarget:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)setUndoItemAction:(SEL)a3;
- (void)setUndoItemTarget:(id)a3;
- (void)toolbarDidSelectOpacityOptionWithAccessoryView:(id)a3;
- (void)updateBottomBarConstraintsForHorizontaliPhoneIfNecessary;
- (void)updateForFrame:(CGRect)a3;
@end

@implementation SSSScreenshotsView

- (void)layoutSubviews
{
  [(SSSScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(SSSScreenshotsView *)self state];
  [(SSSScreenshotsView *)self _layoutBounds];
  v11 = v10;
  v13 = v12;
  if (v4 == CGSizeZero.width && v6 == CGSizeZero.height)
  {
    return;
  }

  v15 = v8;
  v16 = v9;
  if (v7 != 1)
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
    v17 = [(SSSScreenshotsView *)self _currentPDFView];
    v18 = [v17 documentScrollView];

    if (v18)
    {
      v19 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:v18 edge:1];
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
    v22 = [*(&self->_isInStateTransition + 1) firstObject];
    v23 = [v22 screenshot];
    v24 = [v23 environmentDescription];
    [v24 screenshotsWindowSafeAreaInsets];
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

  v35 = [*(&self->super._ss_vi2EnabledCacheIsValid + 1) topItem];
  v36 = [v35 _bottomPalette];
  [v36 setPreferredHeight:v30];

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
      v49 = [(SSSScreenshotsView *)self currentScreenshotView];
      [v49 setNeedsLayout];
    }
  }

  v50 = [(SSSScreenshotsView *)self numberOfScreenshotImages]>= 2 && ![(SSSScreenshotsView *)self _shouldAvoidKeyboard]&& [(SSSScreenshotsView *)self editMode]!= 2;
  [*(&self->_toolPalette + 2) setScrollEnabled:v50];
  v51 = [*(&self->_toolPalette + 2) panGestureRecognizer];
  [v51 setAllowedTouchTypes:&off_1000BE7F8];

  v145 = [*(&self->_isInStateTransition + 1) count];
  v52 = [(SSSScreenshotsView *)self currentScreenshotView];
  v146 = [*(&self->_isInStateTransition + 1) firstObject];
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
        v60 = [v59 screenshot];
        [(SSSScreenshotsView *)self _screenshotMaximumSize];
        v62 = v61;
        v64 = v63;
        [(SSSScreenshotsView *)self _interScreenshotSpacing];
        v66 = v65;
        x = CGRectNull.origin.x;
        v68 = y;
        v69 = width;
        v70 = height;
        if (v59 == v52)
        {
          [v59 rectToCenterAboveKeyboard];
          x = v71;
          v68 = v72;
          v69 = v73;
          v70 = v74;
        }

        [(SSSScreenshotsView *)self _frameForScreenshot:v60 atIndex:v54 numberOfScreenshots:v145 maximumSize:v7 interScreenshotSpacing:v62 rectToCenterAboveKeyboard:v64 state:v66, x, v68, v69, v70];
        [v59 setFrame:?];
        [(SSSScreenshotsView *)self _layoutScreenshotView:v59 forState:v7 isFirstScreenshot:v59 == v146 isCurrentScreenshot:v59 == v52];
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
        v90 = v7 == 1 && v89;
        v53 |= v90;
        ++v54;
      }

      rect = [obj countByEnumeratingWithState:&v153 objects:v159 count:16];
    }

    while (rect);
  }

  if (v7 == 1)
  {
    v91 = [(SSSScreenshotsView *)self visibleScreenshots];
    if ([v91 count])
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
    v93 = 1;
    goto LABEL_61;
  }

  v92 = 0;
  if ((v53 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v93 = [(SSSScreenshotsView *)self _shouldBleedToBottom];
LABEL_61:
  v94 = 0.0;
  if ((v92 & v93) != 0)
  {
    v95 = 1.0;
  }

  else
  {
    v95 = 0.0;
  }

  [*(&self->super._ss_vi2EnabledCacheIsValid + 1) setAlpha:v95];
  if (v7 == 1)
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
    v96 = v52;
    v97 = [(SSSScreenshotsView *)self isSharing];
    v98 = [(SSSScreenshotsView *)self delegate];
    v99 = [v98 isShowingModalUI];

    v100 = [(SSSScreenshotsView *)self interactionMode];
    v101 = v92 & ~v97 & ([(SSSScreenshotsView *)self isShowingVICard]| ~v99);
    if (v100 == 1)
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
    v96 = v52;
LABEL_75:
    v102 = 0;
    goto LABEL_76;
  }

  v96 = v52;
  if ([(SSSScreenshotsView *)self isSharing])
  {
    goto LABEL_75;
  }

  v139 = [(SSSScreenshotsView *)self delegate];
  v140 = [v139 isShowingModalUI];

  if (v140)
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
  [v146 bounds];
  [(SSSScreenshotsView *)self convertRect:v146 fromView:?];
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
  v130 = [(SSSScreenshotsView *)self traitCollection];
  v131 = [v130 userInterfaceIdiom];

  if (v131 == 1)
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
  if (v7)
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
  v134 = [(SSSScreenshotsView *)self _rectsForShadowView];
  [*(&self->_countIndicator + 2) setRectsForShadow:v134];
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
    v5 = v4;
  }

  else
  {
    v5 = [v4 contentView];
  }

  return v5;
}

- (id)_omnibar
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    v3 = [(SSSScreenshotsView *)self currentOmnibar];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
      v10 = [(SSSScreenshotsView *)self traitCollection];
      v11 = [v10 userInterfaceIdiom];

      v3 = *(&self->_thumbnailBackgroundView + 2);
      if (!v11)
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
    v14 = [(SSSScreenshotsView *)self shareItemTarget];
    [v13 setShareButtonTarget:v14];

    [*(&self->_thumbnailBackgroundView + 2) setShareButtonAction:{-[SSSScreenshotsView shareItemAction](self, "shareItemAction")}];
    [*(&self->_thumbnailBackgroundView + 2) setAccessibilityIdentifier:@"annotation-bottom-bar"];
  }
}

- (void)setInteractionMode:(unint64_t)a3
{
  *(&self->_imageAnalyzer + 2) = a3;
  v5 = *(&self->_isInStateTransition + 1);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003F5A8;
  v22[3] = &unk_1000BADF8;
  v22[4] = self;
  v22[5] = a3;
  [v5 enumerateObjectsUsingBlock:v22];
  [*(&self->_instructionLabel + 2) setSelected:a3 == 3];
  [*(&self->_instructionLabel + 2) setHidden:*(&self->_imageAnalyzer + 2) == 4];
  [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:1];
  if (*(&self->_imageAnalyzer + 2) != 1)
  {
    v6 = [(SSSScreenshotsView *)self currentScreenshotView];
    [v6 deselectAllAnnotations];

    [*(&self->_thumbnailBackgroundView + 2) endAnnotationEditing];
  }

  if (a3 == 3)
  {
    v7 = [*(&self->_appearingScreenshotView + 2) _visualSearchCornerViewIfExists];
    v8 = *(&self->_liveTextButton + 2);
    *(&self->_liveTextButton + 2) = v7;

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
    if (a3 == 2 && [v10 isHidden])
    {
      [v11 setAlpha:0.0];
      [v11 setHidden:0];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003F620;
    v19[3] = &unk_1000BA0B8;
    v20 = v11;
    v21 = a3 != 2;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10003F63C;
    v16 = &unk_1000BA1E0;
    v17 = v20;
    v18 = a3 != 2;
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
  v11 = [(SSSScreenshotsView *)self window];
  [(SSSScreenshotsView *)self convertRect:v11 fromView:v4, v6, v8, v10];
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

- (void)_updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [(SSSScreenshotsView *)self activeScreenshotView];
  if ([v5 editMode])
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(_SSSVI2View *)self _ss_vi2Enabled];
  }

  v7 = [(SSSScreenshotsView *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = (v8 != 0) & v6;
  if (!v8 && ((v6 ^ 1) & 1) == 0)
  {
    v9 = [(SSSScreenshotsView *)self interactionMode]!= 0;
  }

  v10 = [(SSSScreenshotsView *)self activeScreenshotView];
  v11 = [v10 currentImageAnalysis];

  if (v11 && [v11 hasResultsForAnalysisTypes:16])
  {
    v12 = [(SSSScreenshotsView *)self activeScreenshotView];
    v13 = [v12 vsGlyph];
    v14 = v13;
    v15 = @"info.circle.and.sparkles";
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [(SSSScreenshotsView *)self activeScreenshotView];
    v18 = [v17 vsGlyphFilled];
    v19 = v18;
    v20 = @"info.circle.and.sparkles.fill";
    if (v18)
    {
      v20 = v18;
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

  v27 = [(SSSScreenshotsView *)self delegate];
  v28 = v9 & v26;
  [v27 updateAnalysisButtonStateToVisible:v28];

  if (v28)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  if (v3)
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

- (void)_removeHighlightedModeForScreenshotViewIfNecessary:(id)a3
{
  v3 = a3;
  if ([v3 interactionMode] == 4)
  {
    [v3 setInteractionMode:2];
  }
}

- (void)_updateInstructionLabelIfNecessaryAnimated:(BOOL)a3
{
  if ([(_SSSVI2View *)self _ss_vi2Enabled])
  {
    v15 = 0;
LABEL_9:
    v11 = (&self->_bottomBarSeparatorLine + 2);
    v14 = 0.0;
    goto LABEL_10;
  }

  v4 = [(SSSScreenshotsView *)self currentScreenshotView];
  v5 = [v4 currentImageAnalysis];
  v6 = [v5 countOfDataDetectorsWithTypes:-1];

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
  v12 = [*(&self->_bottomBarSeparatorLine + 2) text];
  v13 = [v12 isEqualToString:v15];

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
  v3 = [(SSSScreenshotsView *)self delegate];
  v6 = [v3 viewControllerForPresentationsFromScreenshotsView:self];

  v4 = [(SSSScreenshotsView *)self window];
  v5 = [v4 firstResponder];

  if (v5 != v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v6 becomeFirstResponder];
    }
  }
}

- (void)_updatePaletteVisibilityIfNecessary:(BOOL)a3
{
  v3 = a3;
  v9 = [(SSSScreenshotsView *)self currentScreenshotView];
  if (_os_feature_enabled_impl() && ![(SSSScreenshotsView *)self editMode]|| _os_feature_enabled_impl() && [(SSSScreenshotsView *)self editMode]== 1)
  {
    if (v3)
    {
      [v9 updatePaletteVisibilityIfNecessary:{objc_msgSend(v9, "isBeingRemoved") ^ 1}];
    }

    else
    {
      [v9 updatePaletteVisibilityIfNecessary:0];
      [(SSSScreenshotsView *)self _updateFirstResponderForHidingToolPicker];
    }
  }

  else if (*(&self->_thumbnailBackgroundView + 2) && BYTE2(self->_keyboardFrame.size.height) != v3)
  {
    v5 = [(SSSScreenshotsView *)self delegate];
    v6 = [v5 viewControllerForPresentationsFromScreenshotsView:self];

    v7 = [(SSSScreenshotsView *)self window];
    v8 = [v7 firstResponder];

    if (!v8 || v8 != v6 && ![(SSSScreenshotsView *)self _shouldAvoidKeyboard])
    {
      [v6 becomeFirstResponder];
    }

    if ([*(&self->_thumbnailBackgroundView + 2) setToolPickerVisible:v3 forFirstResponder:v6])
    {
      BYTE2(self->_keyboardFrame.size.height) = v3;
    }
  }
}

- (void)updateForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(SSSScreenshotsView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(SSSScreenshotsView *)self editMode];
  v6 = [(SSSScreenshotsView *)self editMode];
  if (v4)
  {
    return 0;
  }

  v8 = v6 == 0;
  v9 = v5 != 2;
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

  v3 = [(SSSScreenshotsView *)self visibleScreenshots];
  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(SSSScreenshotsView *)self traitCollection];
    v5 = [v4 userInterfaceIdiom] == 0;
  }

  return v5;
}

- (double)_toolPickerHeightOnPhone
{
  v2 = [(SSSScreenshotsView *)self window];
  [v2 safeAreaInsets];
  v4 = v3 + 75.0;

  return v4;
}

- (double)_bottomBarHeightIncludingSafeAreaInsets
{
  if ([(SSSScreenshotsView *)self _shouldShowBottomBar])
  {
    v3 = [(SSSScreenshotsView *)self editMode];
    v4 = [(SSSScreenshotsView *)self interactionMode];
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    [(SSSScreenshotsView *)self safeAreaInsets];
    v8 = v7;
    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = v7 + 40.0;
    }

    else if (!v3 || v4 == 1)
    {
      [(SSSScreenshotsView *)self _toolPickerHeightOnPhone];
      v8 = v11;
    }
  }

  else
  {
    v9 = [(SSSScreenshotsView *)self traitCollection];
    if ([v9 userInterfaceIdiom] == 1)
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

  v13 = [(SSSScreenshotsView *)self _shouldExtendBottomBarForPageDots];
  result = v8 + 26.0;
  if (!v13)
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

- (void)_layoutScreenshotView:(id)a3 forState:(unint64_t)a4 isFirstScreenshot:(BOOL)a5 isCurrentScreenshot:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v17 = v9;
  if (a4 == 1)
  {
    [v9 prepareForFullscreenExperience];
    if ((BYTE3(self->_layoutPositioningView) & 1) == 0)
    {
      [v17 finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:v6];
    }

    goto LABEL_6;
  }

  if (BYTE3(self->_layoutPositioningView) == 1)
  {
    [v9 prepareForMiniaturization];
LABEL_6:
    v9 = v17;
  }

  [v9 setState:a4];
  v10 = sub_100053AC4(a4, *(&self->_shadowView + 2));
  v11 = 0;
  if (a4 == 1 && v6)
  {
    v11 = [(SSSScreenshotsView *)self _screenshotEditsShouldBeSnapshottedForCurrentScreenshot]^ 1;
  }

  v12 = v17;
  if (a4 == 1 && v11 != 1)
  {
    [v17 commitInflightEdits];
    v12 = v17;
  }

  [v12 setBorderStyle:v10];
  if (![(SSSScreenshotsView *)self isDismissing])
  {
    [v17 setUsesOriginalImageAspectRatio:sub_100053ADC(a4)];
    [v17 setGesturesEnabled:a4 == 1];
    [v17 setAnnotationsEnabled:v11];
  }

  if (v6)
  {
    v13 = 1;
    [v17 setScreenshotEditsSnapshotted:v11 ^ 1 inTransition:BYTE3(self->_layoutPositioningView) currentScreenshot:1];
    if (![(SSSScreenshotsView *)self currentScreenshotCropHandlesFadedOut])
    {
      v13 = [(SSSScreenshotsView *)self _shouldAvoidKeyboard];
    }
  }

  else
  {
    if (([*(&self->_toolPalette + 2) isMoving] & 1) == 0)
    {
      [v17 deselectAllAnnotations];
    }

    [v17 setScreenshotEditsSnapshotted:v11 ^ 1 inTransition:BYTE3(self->_layoutPositioningView) currentScreenshot:0];
    v13 = 1;
  }

  if (![(SSSScreenshotsView *)self isDismissing])
  {
    [v17 setCropHandlesFadedOut:(a4 == 0) | (v13 & 1)];
    [v17 setUseTrilinearMinificationFilter:{-[SSSScreenshotsView screenshotViewsUseTrilinearMinificationFilter](self, "screenshotViewsUseTrilinearMinificationFilter")}];
  }

  v14 = [(SSSScreenshotsView *)self traitCollection];
  [v17 setGeometryMultiplier:1.0 / sub_10000F530()];

  if (v11)
  {
    v15 = [*(&self->_thumbnailBackgroundView + 2) annotationController];
    v16 = [v17 akController];
    if (v15 != v16)
    {
      [*(&self->_thumbnailBackgroundView + 2) setAnnotationController:v16];
    }
  }
}

- (void)setActiveScreenshotView:(id)a3
{
  v5 = a3;
  if (*&self->_screenshotViewsUseTrilinearMinificationFilter)
  {
    v6 = *(&self->_appearingScreenshotView + 2);
    if (v6 != v5)
    {
      v10 = v5;
      v7 = v6;
      [v7 setInteractionMode:0];
      objc_storeStrong((&self->_appearingScreenshotView + 2), a3);
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
      v9 = [(SSSScreenshotsView *)self delegate];
      [v9 activeScreenshotViewDidChangeToView:*(&self->_appearingScreenshotView + 2) fromView:v7];

      [(SSSScreenshotsView *)self _removeHighlightedModeForScreenshotViewIfNecessary:v7];
      v5 = v10;
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
  v3 = [(SSSScreenshotsView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(_SSSVI2View *)self _ss_vi2Enabled];
  if (!v4)
  {
    v6 = v5;
    v7 = [*(&self->_appearingScreenshotView + 2) _actionInfoViewIfExists];
    v8 = *(&self->_visualSearchCornerView + 2);
    if (v7 != v8)
    {
      [v8 removeFromSuperview];
      objc_storeStrong((&self->_visualSearchCornerView + 2), v7);
    }

    v9 = [*(&self->_appearingScreenshotView + 2) _omnibarContainerViewIfExists];
    v10 = *(&self->_actionInfoView + 2);
    if (v9 != v10)
    {
      [v10 removeFromSuperview];
      objc_storeStrong((&self->_actionInfoView + 2), v9);
    }

    v11 = [(SSSScreenshotsView *)self _bottomBarContentView];
    if ((v6 & 1) == 0)
    {
      v15 = *(&self->_visualSearchCornerView + 2);
      if (v15)
      {
        if (*(&self->_visualSearchButton + 2))
        {
          v16 = [v15 superview];

          if (v16 != v11)
          {
            [v11 addSubview:*(&self->_visualSearchCornerView + 2)];
            [v11 bringSubviewToFront:*(&self->_instructionLabel + 2)];
            [*(&self->_visualSearchCornerView + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
            v31 = [*(&self->_visualSearchButton + 2) leadingAnchor];
            v17 = [*(&self->_visualSearchCornerView + 2) leadingAnchor];
            v18 = [v11 leadingAnchor];
            v19 = [v17 constraintEqualToAnchor:v18 constant:20.0];
            [(SSSScreenshotsView *)self setActionInfoButtonConstraint:v19];

            v30 = [(SSSScreenshotsView *)self actionInfoButtonConstraint];
            v37[0] = v30;
            v29 = [*(&self->_visualSearchCornerView + 2) trailingAnchor];
            v28 = [v29 constraintEqualToAnchor:v31 constant:-10.0];
            v37[1] = v28;
            v20 = [*(&self->_visualSearchCornerView + 2) centerYAnchor];
            v21 = [*(&self->_instructionLabel + 2) centerYAnchor];
            v22 = [v20 constraintEqualToAnchor:v21];
            v37[2] = v22;
            v23 = [*(&self->_visualSearchCornerView + 2) heightAnchor];
            v24 = [v23 constraintEqualToConstant:35.0];
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
      v13 = [v12 superview];
      if (v13 == self)
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
          v33 = v11;
          v34 = self;
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
      v26 = [*(&self->_actionInfoView + 2) superview];

      if (v26)
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
    v3 = [*(&self->_appearingScreenshotView + 2) _imageAnalysisAaButtonIfExists];
    v4 = *(&self->_visualSearchButton + 2);
    if (v3 != v4)
    {
      [v4 removeFromSuperview];
      objc_storeStrong((&self->_visualSearchButton + 2), v3);
      if (*(&self->_visualSearchButton + 2))
      {
        v5 = [(SSSScreenshotsView *)self _bottomBarContentView];
        [v5 addSubview:*(&self->_visualSearchButton + 2)];
        [*(&self->_visualSearchButton + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
        v6 = [*(&self->_visualSearchButton + 2) trailingAnchor];
        v7 = [v5 trailingAnchor];
        v8 = [v6 constraintEqualToAnchor:v7 constant:-20.0];
        [(SSSScreenshotsView *)self setLiveTextButtonTrailingConstraint:v8];

        v9 = [(SSSScreenshotsView *)self liveTextButtonTrailingConstraint];
        v14[0] = v9;
        v10 = [*(&self->_visualSearchButton + 2) centerYAnchor];
        v11 = [*(&self->_instructionLabel + 2) centerYAnchor];
        v12 = [v10 constraintEqualToAnchor:v11];
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
    v3 = [(SSSScreenshotsView *)self liveTextButtonTrailingConstraint];
    [v3 setConstant:-38.0];

    v4 = [(SSSScreenshotsView *)self actionInfoButtonConstraint];
    [v4 setConstant:38.0];

    v5 = [(SSSScreenshotsView *)self vsButtonTrailingConstraint];
    [v5 setConstant:38.0];

    v6 = [(SSSScreenshotsView *)self vsButtonLeadingConstraint];
    [v6 setConstant:38.0];
  }
}

- (void)bringOmnibarToFront
{
  v3 = [*(&self->_appearingScreenshotView + 2) _omnibarContainerViewIfExists];
  if (v3 == *(&self->_actionInfoView + 2))
  {
    v5 = v3;
    v4 = [(UIView *)v3 superview];
    [v4 bringSubviewToFront:v5];

    v3 = v5;
  }
}

- (id)currentOmnibar
{
  v3 = [*(&self->_appearingScreenshotView + 2) _omnibarContainerViewIfExists];
  v4 = v3;
  if (v3 == *(&self->_actionInfoView + 2))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)_frameForScreenshot:(id)a3 atIndex:(int64_t)a4 numberOfScreenshots:(int64_t)a5 maximumSize:(CGSize)a6 interScreenshotSpacing:(double)a7 rectToCenterAboveKeyboard:(CGRect)a8 state:(unint64_t)a9
{
  width = a8.size.width;
  height = a8.size.height;
  y = a8.origin.y;
  x = a8.origin.x;
  v14 = [(SSSScreenshotsView *)self screenshotViewForScreenshot:a3];
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v15 = [v14 viewModificationInfo];
  v16 = v15;
  if (v15)
  {
    [v15 cropInfo];
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
  v17 = [(SSSScreenshotsView *)self traitCollection];
  sub_10000F490(v17, v68);

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
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_14:
    SSizeToFitSizeInAspectRatioOfSize();
    [*(&self->_toolPalette + 2) bounds];
    sub_10000F53C();
    v51 = [(SSSScreenshotsView *)self traitCollection];
    sub_10000F530();

    v52 = [(SSSScreenshotsView *)self traitCollection];
    sub_10000F530();

    [(SSSScreenshotsView *)self _positioningIndexForIndex:a4 numberOfScreenshots:a5];
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
  if (!a9)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (a9 == 1)
  {
    [(SSSScreenshotsView *)self _effectiveIndexForIndex:a4 inNumberOfScreenshots:a5];
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
  v8 = [(SSSScreenshotsView *)self state];
  [(SSSScreenshotsView *)self safeAreaInsets];
  if ([*(&self->_isInStateTransition + 1) count])
  {
    v9 = [*(&self->_isInStateTransition + 1) firstObject];
    v10 = [v9 screenshot];
    v11 = [v10 environmentDescription];
    [v11 screenshotsWindowSafeAreaInsets];
  }

  UIEdgeInsetsMax();
  if (v8 == 1)
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
  v11 = [(SSSScreenshotsView *)self state];
  [(SSSScreenshotsView *)self safeAreaInsets];
  if (v11 == 1)
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
    v16 = [(SSSScreenshotsView *)self visibleScreenshots];
    v17 = [v16 count] > 1;

    v18 = [(SSSScreenshotsView *)self traitCollection];
    v19 = [v18 userInterfaceIdiom];

    v20 = [(SSSScreenshotsView *)self window];
    [v20 bounds];
    [SSChromeHelper availableRectForFullscreenContent:[(SSSScreenshotsView *)self _shouldBleedToBottom] layoutBounds:v19 bleedToBottom:v17 topBarHeight:v21 bottomBarHeight:v22 userInterfaceIdiom:v23 multipleScreenshots:v24, v4, v6, v8, v34, v33, *&v15];
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
  v3 = [(SSSScreenshotsView *)self traitCollection];
  [v3 displayScale];
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
  v3 = [(SSSScreenshotsView *)self numberOfScreenshotImages];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
  v8 = [(SSSScreenshotsView *)self state];
  if (v3 < 1)
  {
    if (v8 == 1)
    {
      [(SSSScreenshotsView *)self _interScreenshotSpacing];
      left = v18 + v18;
      [(SSSScreenshotsView *)self _interScreenshotSpacing];
      right = v19 + v19;
    }
  }

  else if (v8 == 1)
  {
    v9 = [*(&self->_isInStateTransition + 1) firstObject];
    v10 = [*(&self->_isInStateTransition + 1) lastObject];
    v11 = v10;
    v12 = v7 == 0;
    if (v7)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
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

- (BOOL)_shouldShowScreenshotViewAtIndex:(int64_t)a3
{
  if ([(SSSScreenshotsView *)self editMode]== 2 && [(SSSScreenshotsView *)self _currentPage]!= a3)
  {
    return 0;
  }

  if ([(SSSScreenshotsView *)self _showAllScreenshotsForNumberOfScreenshots:[(SSSScreenshotsView *)self _numberOfPages]])
  {
    return 1;
  }

  v6 = [(SSSScreenshotsView *)self _numberOfPages];
  v7 = [(SSSScreenshotsView *)self _numberOfPages]- 1 == a3;
  v8 = v6 / 2 == a3 || v7;
  return !a3 || v8;
}

- (int64_t)_positioningIndexForIndex:(int64_t)a3 numberOfScreenshots:(int64_t)a4
{
  if (![(SSSScreenshotsView *)self _showAllScreenshotsForNumberOfScreenshots:a4])
  {
    return (a3 / a4 * 3.0);
  }

  return a3;
}

- (int64_t)_effectiveIndexForIndex:(int64_t)a3 inNumberOfScreenshots:(int64_t)a4
{
  if ([(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection])
  {
    return ~a3 + a4;
  }

  else
  {
    return a3;
  }
}

- (id)_rectsForShadowView
{
  v3 = +[NSMutableArray array];
  v4 = [(SSSScreenshotsView *)self visibleScreenshots];
  v5 = [v4 count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    do
    {
      v11 = [v4 objectAtIndex:v7];
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
  v7 = [(SSSScreenshotsView *)self traitCollection];
  v8 = [v7 userInterfaceIdiom] == 1;

  v9 = [(SSSScreenshotsView *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];
  v11 = fmax(v4, v6);
  v12 = fmin(v4, v6);
  if (v10 == 1)
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
    v6 = [(SSSScreenshotsView *)self _currentPDFView];
    [v5 setPdfView:v6];

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
    v19 = [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
    [(SSSScreenshotsView *)self _layoutBoundsForFullPageThumbnail];
    if (v19)
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
    v39 = [(SSSScreenshotsView *)self _currentPDFView];
    [v39 bounds];

    v40 = [(SSSScreenshotsView *)self _currentPDFView];
    [*(&self->super._ss_vi2EnabledCacheIsValid + 1) bounds];
    [v40 convertRect:*(&self->super._ss_vi2EnabledCacheIsValid + 1) fromView:?];
    SSRectSubtractingRect();

    v41 = [(SSSScreenshotsView *)self _currentPDFView];
    [*(&self->_borderViewStyleOverride + 2) bounds];
    [v41 convertRect:*(&self->_borderViewStyleOverride + 2) fromView:?];
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

- (void)_updateThumbnailViewVisibilityIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100042614;
  v6[3] = &unk_1000BA068;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (v3)
  {
    [UIView animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)aaButtonPressed:(id)a3
{
  [*(&self->_visualSearchButton + 2) setSelected:{objc_msgSend(*(&self->_visualSearchButton + 2), "isSelected", a3) ^ 1}];
  v5 = [(SSSScreenshotsView *)self delegate];
  v4 = [(SSSScreenshotsView *)self activeScreenshotView];
  [v5 aaButtonPressed:v4];
}

- (void)analysisInfoButtonPressed:(id)a3
{
  [*(&self->_instructionLabel + 2) setSelected:{objc_msgSend(*(&self->_instructionLabel + 2), "isSelected", a3) ^ 1}];
  v5 = [(SSSScreenshotsView *)self delegate];
  v4 = [(SSSScreenshotsView *)self activeScreenshotView];
  [v5 analysisButtonPressed:v4];
}

- (void)toolbarDidSelectOpacityOptionWithAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotsView *)self delegate];
  [v5 didTapOpacityOptionWithAttributeView:v4];
}

- (void)endOpacityEditing
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v3 = [(SSSScreenshotsView *)self window];
    v4 = [PKToolPicker activeToolPickerForWindow:v3];
    [v4 _endOpacityEditing];
  }

  v5 = *(&self->_thumbnailBackgroundView + 2);

  [v5 endOpacityEditing];
}

- (SSSScreenshot)currentScreenshot
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 screenshot];

  return v3;
}

- (id)currentScreenshotView
{
  v3 = [(SSSScreenshotsView *)self _currentPage];

  return [(SSSScreenshotsView *)self _viewForPage:v3];
}

- (void)parentScreenshotView:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  [(SSSScreenshotsView *)self layoutIfNeeded];
  [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
  [v5 setDelegate:self];
  [v5 setRulerHostingView:*(&self->_delegate + 2)];
  [*(&self->_isInStateTransition + 1) addObject:v5];
  v6 = [(SSSScreenshotsView *)self imageAnalyzer];
  [v5 setImageAnalyzer:v6];

  [*(&self->_toolPalette + 2) addSubview:v5];

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (id)_screenshotViewForScreenshot:(id)a3
{
  v4 = a3;
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
        v10 = [v9 screenshot];

        if (v10 == v4)
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

- (void)removeScreenshots:(id)a3
{
  v4 = a3;
  [(SSSScreenshotsView *)self layoutIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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
  v12 = [(SSSScreenshotsView *)self delegate];
  [v12 screenshotDidChangeForScreenshotsView:self];

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
  v3 = [(SSSScreenshotsView *)self currentScreenshotView];
  [(SSSScreenshotsView *)self setActiveScreenshotView:v3];
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

- (void)setState:(unint64_t)a3
{
  if (*&self->_screenshotViewsUseTrilinearMinificationFilter != a3)
  {
    BYTE3(self->_layoutPositioningView) = 1;
    [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
    if (!a3)
    {
      [*(&self->_thumbnailBackgroundView + 2) forceHideRuler];
      [(SSSScreenshotsView *)self setEditMode:0];
      size = CGRectNull.size;
      *(&self->_lastPageForSignificantChange + 2) = CGRectNull.origin;
      *(&self->_keyboardFrame.origin.y + 2) = size;
    }

    *&self->_screenshotViewsUseTrilinearMinificationFilter = a3;
    [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];

    [(SSSScreenshotsView *)self setNeedsLayout];
  }
}

- (void)_updateDisplayedPage
{
  if (*(&self->_screenshotViews + 2) == -1 || [(SSSScreenshotsView *)self _currentPage]== -1)
  {
    v3 = *(&self->_scrollView + 2);
    v4 = [(SSSScreenshotsView *)self _currentPage];

    [v3 setIndex:v4];
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
    v3 = [(SSSScreenshotsView *)self _currentPage];

    [(SSSScreenshotsView *)self _scrollToPage:v3 animated:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(SSSScreenshotsView *)self delegate];
  [v4 screenshotDidChangeForScreenshotsView:self];

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(SSSScreenshotsView *)self setNeedsLayout];

  [(SSSScreenshotsView *)self layoutIfNeeded];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  y = a5->y;
  v9 = [(SSSScreenshotsView *)self _pageForXOffsetInScrollView:a3, a5->x, a4.y];
  v10 = [(SSSScreenshotsView *)self effectiveUserInterfaceLayoutDirection];
  if (x != 0.0)
  {
    v11 = 1;
    if (v10)
    {
      v11 = -1;
    }

    if (x <= 0.0)
    {
      v11 = -v11;
    }

    v9 = (v11 + v9) & ~((v11 + v9) >> 63);
    v12 = [(SSSScreenshotsView *)self _numberOfPages];
    if (v9 >= v12 - 1)
    {
      v9 = v12 - 1;
    }
  }

  [(SSSScreenshotsView *)self _scrollViewRectForPage:v9];
  a5->x = v13;
  a5->y = y;

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (id)_viewForPage:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([*(&self->_isInStateTransition + 1) count] <= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [*(&self->_isInStateTransition + 1) objectAtIndex:a3];
    }
  }

  return v6;
}

- (CGRect)_scrollViewRectForPage:(int64_t)a3
{
  v4 = [(SSSScreenshotsView *)self _viewForPage:a3];
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

- (int64_t)_pageForXOffsetInScrollView:(double)a3
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

- (void)_scrollToPage:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(SSSScreenshotsView *)self _scrollViewRectForPage:a3];
  v6 = *(&self->_toolPalette + 2);

  [v6 setContentOffset:v4 animated:?];
}

- (id)viewsForScreenshots:(id)a3
{
  v3 = a3;
  v18 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
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
              v15 = [v14 screenshot];

              if (v15 == v8)
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

- (void)setIsSharing:(BOOL)a3
{
  BYTE6(self->_scrollPocketInteraction) = a3;
  HIBYTE(self->_scrollPocketInteraction) |= a3;
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

        v9 = [*(*(&v11 + 1) + 8 * i) screenshot];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_screenshotAtIndex:(int64_t)a3
{
  v3 = [*(&self->_isInStateTransition + 1) objectAtIndex:a3];
  v4 = [v3 screenshot];

  return v4;
}

- (id)screenshotViewForScreenshot:(id)a3
{
  v4 = a3;
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
        v10 = [v9 screenshot];
        v11 = [v10 isEqual:v4];

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

        v9 = [*(*(&v11 + 1) + 8 * i) screenshot];
        [v3 addObject:v9];
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
  v4 = [(SSSScreenshotsView *)self _screenshotsEligibleForSharing];
  v5 = [v4 count];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(SSSScreenshotsView *)self _screenshotsEligibleForSharing];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 lastViewEditMode];
        if (v12)
        {
          if (v12 != 1)
          {
            continue;
          }

          if (v5 == 1 && [v11 pdfCanBeConvertedToImage])
          {
            v13 = [v11 itemProviderPDFAsImage];
          }

          else
          {
            v13 = [v11 itemProviderPDF];
          }
        }

        else
        {
          v13 = [v11 itemProviderImage];
        }

        v14 = v13;
        [v3 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        v10 = [v9 screenshot];
        v11 = [v10 itemProviderForDragItems];
        v12 = [[UIDragItem alloc] initWithItemProvider:v11];
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
  v4 = [(SSSScreenshotsView *)self _screenshotsEligibleForSharing];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 imageGenerator];
        v12 = [v11 generateImageForScreenshot:v10 shouldApplyCrop:1 allowHDR:1 targetSize:{CGSizeZero.width, height}];
        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)previewForDragItem:(id)a3 inContainer:(id)a4
{
  v6 = a4;
  v7 = [(SSSScreenshotsView *)self _screenshotViewForDragItem:a3];
  v8 = [v7 screenshot];
  [v7 bounds];
  [v6 convertRect:v7 fromView:?];
  v10 = v9;
  v12 = v11;
  y = CGPointZero.y;
  v14 = [v8 imageProvider];
  v15 = [v14 requestOutputImageForUIBlocking];

  v16 = [[UIImageView alloc] initWithImage:v15];
  [v16 setFrame:{CGPointZero.x, y, v10, v12}];
  [v7 bounds];
  UIRectGetCenter();
  [v6 convertPoint:v7 fromView:?];
  v18 = v17;
  v20 = v19;

  v21 = [UIDragPreviewTarget alloc];
  v22 = [(SSSScreenshotsView *)self window];
  v23 = *&CGAffineTransformIdentity.c;
  v29[0] = *&CGAffineTransformIdentity.a;
  v29[1] = v23;
  v29[2] = *&CGAffineTransformIdentity.tx;
  v24 = [v21 initWithContainer:v22 center:v29 transform:{v18, v20}];

  v25 = objc_alloc_init(UIDragPreviewParameters);
  v26 = +[UIColor clearColor];
  [v25 setBackgroundColor:v26];

  v27 = [[UITargetedDragPreview alloc] initWithView:v16 parameters:v25 target:v24];

  return v27;
}

- (id)targetForCancellingDragItem:(id)a3 inContainer:(id)a4
{
  v6 = a4;
  v7 = [(SSSScreenshotsView *)self _screenshotViewForDragItem:a3];
  [v7 bounds];
  UIRectGetCenter();
  [v6 convertPoint:v7 fromView:?];
  v10 = [[UIDragPreviewTarget alloc] initWithContainer:v6 center:{v8, v9}];

  return v10;
}

- (void)_updateShadowViewAlpha
{
  v3 = [(SSSScreenshotsView *)self showsShadow];
  v4 = 0.0;
  if (v3)
  {
    v4 = 1.0;
  }

  v5 = *(&self->_countIndicator + 2);

  [v5 setAlpha:v4];
}

- (void)screenshotViewUndoStackChanged:(id)a3
{
  v4 = [(SSSScreenshotsView *)self delegate];
  [v4 undoStackChangedForScreenshotsView:self];
}

- (void)screenshotViewTapped:(id)a3
{
  v6 = a3;
  v4 = [(SSSScreenshotsView *)self currentScreenshotView];

  v5 = v6;
  if (v4 != v6)
  {
    -[SSSScreenshotsView _scrollToPage:animated:](self, "_scrollToPage:animated:", [*(&self->_isInStateTransition + 1) indexOfObject:v6], 1);
    v5 = v6;
    BYTE2(self->_cachedTopBarHeight) = 1;
  }
}

- (void)screenshotViewCropDidChange:(id)a3
{
  v4 = [(SSSScreenshotsView *)self delegate];
  [v4 cropDidChangeForScreenshotView:self];

  [(SSSScreenshotsView *)self _updateVisualSearchCornerViewPositioning];
}

- (id)viewControllerForPresentationsFromScreenshotView:(id)a3
{
  v4 = [(SSSScreenshotsView *)self delegate];
  v5 = [v4 viewControllerForPresentationsFromScreenshotsView:self];

  return v5;
}

- (void)screenshotView:(id)a3 hasHighPriorityGesture:(id)a4
{
  v4 = *(&self->_toolPalette + 2);
  v5 = a4;
  v6 = [v4 panGestureRecognizer];
  [v6 requireGestureRecognizerToFail:v5];
}

- (void)screenshotView:(id)a3 noLongerHasHighPriorityGesture:(id)a4
{
  v4 = *(&self->_toolPalette + 2);
  v5 = a4;
  v6 = [v4 panGestureRecognizer];
  [v6 removeFailureRequirement:v5];
}

- (void)screenshotView:(id)a3 didUpdateInteraction:(id)a4 withAnalysis:(id)a5
{
  v6 = a3;
  v7 = [(SSSScreenshotsView *)self activeScreenshotView];

  if (v7 == v6)
  {
    [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];

    [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:1];
  }
}

- (void)screenshotView:(id)a3 requestsUpdateToInteractionMode:(unint64_t)a4
{
  v6 = [(SSSScreenshotsView *)self delegate];
  [v6 screenshotsView:self requestsUpdateToInteractionMode:a4];

  [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];
}

- (void)screenshotView:(id)a3 startEditingOpacityInAccessoryView:(id)a4
{
  v5 = a4;
  v6 = [(SSSScreenshotsView *)self delegate];
  [v6 didTapOpacityOptionWithAttributeView:v5];
}

- (void)screenshotViewDidInvokeVICard:(id)a3
{
  v4 = [(SSSScreenshotsView *)self delegate];
  [v4 screenshotsViewDidInvokeVICard:self];
}

- (void)screenshotView:(id)a3 isDraggingVISheetDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(SSSScreenshotsView *)self delegate];
  [v6 screenshotsView:self isDraggingVISheetDidChange:v4];
}

- (CGRect)_effectiveBottomBarExtent
{
  [(SSSScreenshotsView *)self _toolPickerHeightOnPhone];
  height = v3;
  [(SSSScreenshotsView *)self bounds];
  v6 = v5;
  [(SSSScreenshotsView *)self bounds];
  width = v7;
  v9 = [(SSSScreenshotsView *)self traitCollection];
  if ([v9 userInterfaceIdiom] == 1)
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
  v3 = [(SSSScreenshotsView *)self window];
  v4 = [v3 firstResponder];

  [*(&self->_thumbnailBackgroundView + 2) setToolPickerVisible:0 forFirstResponder:v4];
}

- (int64_t)positionForBar:(id)a3
{
  if (*(&self->super._ss_vi2EnabledCacheIsValid + 1) == a3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)setShareItemTarget:(id)a3
{
  objc_storeWeak((&self->_interactionMode + 2), a3);

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setShareItemAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shareItemTarget + 2) = v3;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setUndoItemTarget:(id)a3
{
  objc_storeWeak((&self->_shareItemAction + 2), a3);

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setUndoItemAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_undoItemTarget + 2) = v3;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setRedoItemTarget:(id)a3
{
  objc_storeWeak((&self->_undoItemAction + 2), a3);

  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (void)setRedoItemAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_redoItemTarget + 2) = v3;
  [(SSSScreenshotsView *)self setNeedsLayout];
}

- (id)createUndoMenu
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 undoManager];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"UNDO_FORMAT" value:@"Undo %@" table:0];
  v6 = [v3 undoActionName];
  v7 = [NSString stringWithFormat:v5, v6];

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
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 undoManager];

  if ([v3 canUndo])
  {
    [v3 undo];
  }
}

- (void)_undoAll
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 undoManager];

  if ([v3 canUndo])
  {
    do
    {
      [v3 undo];
    }

    while (([v3 canUndo] & 1) != 0);
  }
}

- (void)setBorderViewStyleOverride:(int64_t)a3 withAnimator:(id)a4
{
  v6 = a4;
  *(&self->_shadowView + 2) = a3;
  [(SSSScreenshotsView *)self setNeedsLayout];
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100044FE0;
    v9[3] = &unk_1000BA068;
    v9[4] = self;
    [v6 addAnimations:v9];
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

- (BOOL)_shouldHandleKeyboardNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardIsLocalUserInfoKey];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    return 0;
  }

  v7 = [(SSSScreenshotsView *)self delegate];
  v8 = [v7 viewControllerForPresentationsFromScreenshotsView:self];

  v9 = [v8 presentedViewController];
  v10 = v9 == 0;

  return v10;
}

- (void)_updateForKeyboardNotification:(id)a3
{
  v4 = a3;
  if ([(SSSScreenshotsView *)self _shouldHandleKeyboardNotification:v4])
  {
    v5 = [v4 userInfo];
    v6 = [v5 valueForKey:UIKeyboardFrameEndUserInfoKey];

    v7 = [v4 userInfo];
    v8 = [v7 valueForKey:UIKeyboardAnimationDurationUserInfoKey];

    v9 = [v4 userInfo];
    v10 = [v9 valueForKey:UIKeyboardAnimationCurveUserInfoKey];

    [v6 CGRectValue];
    [(SSSScreenshotsView *)self convertRect:0 fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v8 doubleValue];
    v20 = v19;
    v21 = [v10 integerValue];
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
    [UIView animateWithDuration:v21 | 6 delay:v22 options:0 animations:v20 completion:0.0];
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

  v9 = [(SSSScreenshotsView *)self currentScreenshotView];
  [v9 rectToCenterAboveKeyboard];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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

  v10 = [(SSSScreenshotsView *)self _omnibar];

  if (v10)
  {
    v11 = [(SSSScreenshotsView *)self _omnibar];
    [v9 addObject:v11];
  }

  v12 = [(SSSScreenshotsView *)self _bottomBarContentView];

  if (v12)
  {
    v13 = [(SSSScreenshotsView *)self _bottomBarContentView];
    [v9 addObject:v13];
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
        v20 = [v19 hitTest:v7 withEvent:?];
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
  v20 = [(SSSScreenshotsView *)&v27 hitTest:v7 withEvent:x, y];
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
    [v25 screenshotsView:self didHitTestView:v20 point:v7 withEvent:{x, y}];
  }

  return v20;
}

- (void)setEditMode:(int64_t)a3
{
  if ([(SSSScreenshotsView *)self editMode]!= a3)
  {
    v8 = [(SSSScreenshotsView *)self currentScreenshotView];
    if ([v8 editMode] != a3)
    {
      [*(&self->_thumbnailBackgroundView + 2) forceHideRuler];
    }

    [v8 setEditMode:a3];
    [*(&self->_borderViewStyleOverride + 2) setShouldUpdate:a3 == 1];
    [(SSSScreenshotsView *)self _noteCurrentPageForSignificantChange];
    v5 = [(SSSScreenshotsView *)self delegate];
    v6 = [v5 viewControllerForPresentationsFromScreenshotsView:self];

    [v6 becomeFirstResponder];
    [(SSSScreenshotsView *)self setNeedsLayout];
    [(SSSScreenshotsView *)self layoutIfNeeded];
    [v8 adjustPDFPositioningToMatchImageIfNecessary];
    [(SSSScreenshotsView *)self _updateAnalysisButtonAndInstructionLabelOpacityIfNecessaryAnimated:0];
    [(SSSScreenshotsView *)self addOrRemoveAAButtonIfNecessary];
    v7 = [(SSSScreenshotsView *)self delegate];
    [v7 screenshotsViewEditModeDidChange:self];
  }
}

- (int64_t)editMode
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 editMode];

  return v3;
}

- (BOOL)isCropped
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 isCropped];

  return v3;
}

- (void)enterCrop
{
  [*(&self->_thumbnailBackgroundView + 2) forceHideRuler];
  v3 = [(SSSScreenshotsView *)self _viewForPage:[(SSSScreenshotsView *)self _currentPage]];
  [v3 enterCrop];
}

- (void)resetCrop
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  [v2 resetCrop];
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
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 currentPDFPage];

  return v3;
}

- (id)_currentPDFView
{
  if ([(SSSScreenshotsView *)self _isShowingPDFScreenshot])
  {
    v3 = [(SSSScreenshotsView *)self currentScreenshotView];
    v4 = [v3 _internalPDFView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isShowingPDFScreenshot
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 editMode] != 0;

  return v3;
}

- (BOOL)isShowingVICard
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 isShowingVICard];

  return v3;
}

- (BOOL)isVICardFullScreen
{
  v2 = [(SSSScreenshotsView *)self currentScreenshotView];
  v3 = [v2 isVICardFullScreen];

  return v3;
}

- (void)didProcessDocumentUpdateForScreenshot:(id)a3
{
  v6 = a3;
  v4 = [(SSSScreenshotsView *)self visibleScreenshots];
  v5 = [v4 containsObject:v6];

  if (v5)
  {
    [v6 didProcessDocumentUpdate];
  }
}

- (BOOL)_layoutShouldShowContentSwitcher
{
  v3 = [(SSSScreenshotsView *)self currentScreenshot];
  v4 = [(SSSScreenshotsView *)self currentScreenshotView];
  v5 = [v3 isWaitingForPDF];
  v6 = [v3 pdfData];

  v7 = [v4 didFailToWritePDFToURL];
  if (v6)
  {
    v5 = 1;
  }

  v8 = v7 ^ 1;

  return v5 & v8;
}

- (BOOL)_layoutShouldEnableContentSwitcher
{
  v2 = [(SSSScreenshotsView *)self currentScreenshot];
  v3 = [v2 pdfData];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_contentSwitcherShouldMoveDown
{
  v3 = [(SSSScreenshotsView *)self _isPortraitPhone];
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

  return (v3 | v6) & [(SSSScreenshotsView *)self _layoutShouldShowContentSwitcher]& 1;
}

- (BOOL)_isPortraitPhone
{
  v3 = [(SSSScreenshotsView *)self window];
  [v3 bounds];
  v5 = v4;
  v6 = [(SSSScreenshotsView *)self window];
  [v6 bounds];
  v8 = v7;

  v9 = [(SSSScreenshotsView *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];
  v12 = v5 > v8 && v10 == 0;

  return v12;
}

- (BOOL)_isLandscapePhone
{
  v3 = [(SSSScreenshotsView *)self window];
  [v3 bounds];
  v5 = v4;
  v6 = [(SSSScreenshotsView *)self window];
  [v6 bounds];
  v8 = v7;

  v9 = [(SSSScreenshotsView *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];
  v12 = v5 > v8 && v10 == 0;

  return v12;
}

- (SSSScreenshotsView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = SSSScreenshotsView;
  v3 = [(SSSScreenshotsView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

        v9 = [*(*(&v12 + 1) + 8 * i) screenshot];
        if (v9)
        {
          [v3 addObject:v9];
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

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  if (BYTE2(self->_cachedTopBarHeight) == 1)
  {
    BYTE2(self->_cachedTopBarHeight) = 0;
    v5 = [(SSSScreenshotsView *)self delegate];
    [v5 activityItemsChangedForScreenshotsView:self];
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