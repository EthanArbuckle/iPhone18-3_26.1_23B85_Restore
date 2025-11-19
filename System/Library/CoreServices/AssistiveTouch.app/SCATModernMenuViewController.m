@interface SCATModernMenuViewController
- (BOOL)_menuFrameIsValid:(CGRect)a3;
- (BOOL)isElementTopLevelInMenu:(id)a3;
- (BOOL)isVisible;
- (BOOL)showsFooter;
- (CGPoint)_positionForMenuDockPosition:(int64_t)a3 size:(CGSize)a4;
- (CGPoint)_positionForMenuPopoverPosition:(int64_t)a3 size:(CGSize)a4;
- (CGRect)_rectToClearIfNeededForSheet:(id)a3;
- (CGRect)frame;
- (SCATMenu)menu;
- (SCATModernMenuViewController)initWithMenu:(id)a3;
- (SCATPointPicker)pointPicker;
- (id)contentViewContainer;
- (id)currentSheet;
- (id)currentSheetViewController;
- (id)exitActionElement;
- (id)extraProviderElements;
- (id)showMoreItemsPageControl;
- (void)_determineMenuOrigin:(CGPoint *)a3 anchorPosition:(double *)a4 anchorDirection:(BOOL *)a5 shouldUseTip:(BOOL *)a6 sheet:(id)a7;
- (void)_handleShowMoreItems:(id)a3;
- (void)_updateContentSizeForSheet:(id)a3;
- (void)_updateMenuLayoutForSheet:(id)a3 sheetViewController:(id)a4 animated:(BOOL)a5;
- (void)didFocusOnContext:(id)a3 oldContext:(id)a4;
- (void)didReloadSheet:(id)a3;
- (void)flashModernMenuItem:(id)a3;
- (void)hide;
- (void)loadView;
- (void)reloadMenuVisuals;
- (void)setShowsFooter:(BOOL)a3 numberOfPagesRequired:(unint64_t)a4;
- (void)setTipObject:(int64_t)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)transitionToMenuSheet:(id)a3 fromSheet:(id)a4;
- (void)updateForGeometryChange;
- (void)updateMenuLayout;
- (void)updateMenuSheetContentSize;
- (void)updateMenuSheetForOrientationChange;
- (void)updateModernMenuItem:(id)a3;
- (void)updateViewControllerStackForSheet:(id)a3 previousSheet:(id)a4;
- (void)willBePresentedWithElement:(id)a3 pointPicker:(id)a4 sheetToShow:(id)a5;
- (void)willUnfocusFromContext:(id)a3;
@end

@implementation SCATModernMenuViewController

- (SCATModernMenuViewController)initWithMenu:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCATModernMenuViewController;
  v5 = [(SCATModernMenuViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SCATModernMenuViewController *)v5 setMenu:v4];
    v7 = objc_alloc_init(NSMutableArray);
    [(SCATModernMenuViewController *)v6 setSheetViewControllerStack:v7];

    [(SCATModernMenuViewController *)v6 setOverrideUserInterfaceStyle:2];
    v8 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
    layoutMonitor = v6->_layoutMonitor;
    v6->_layoutMonitor = v8;

    [(SBSSystemApertureLayoutMonitor *)v6->_layoutMonitor addObserver:v6];
    v6->_foreheadRect.origin = 0u;
    v6->_foreheadRect.size = 0u;
  }

  return v6;
}

- (void)loadView
{
  v3 = [[SCATModernMenuView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SCATModernMenuViewController *)self setView:v3];
}

- (id)currentSheet
{
  v2 = [(SCATModernMenuViewController *)self menu];
  v3 = [v2 currentSheet];

  return v3;
}

- (void)setTipObject:(int64_t)a3
{
  if (self->_tipObject != a3)
  {
    self->_tipObject = a3;
    v4 = [(SCATModernMenuViewController *)self menu];
    [v4 menuTipObjectDidChange];
  }
}

- (BOOL)showsFooter
{
  v2 = [(SCATModernMenuViewController *)self menuView];
  v3 = [v2 backgroundView];
  v4 = [v3 containerView];
  v5 = [v4 isShowingFooterView];

  return v5;
}

- (void)setShowsFooter:(BOOL)a3 numberOfPagesRequired:(unint64_t)a4
{
  v5 = a3;
  v7 = [(SCATModernMenuViewController *)self menuView];
  v8 = [v7 backgroundView];
  v9 = [v8 containerView];
  [v9 setShowingFooterView:v5];

  v10 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
  [v10 setNumberOfPages:a4];
  v11 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [v10 setCurrentPage:{objc_msgSend(v11, "currentPage")}];

  [v10 setHidesForSinglePage:0];
  if (v5)
  {
    [v10 addTarget:self action:"_handleShowMoreItems:" forControlEvents:64];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v10 allTargets];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v10 removeTarget:*(*(&v17 + 1) + 8 * v16) action:0 forControlEvents:64];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (id)showMoreItemsPageControl
{
  v2 = [(SCATModernMenuViewController *)self menuView];
  v3 = [v2 backgroundView];
  v4 = [v3 containerView];
  v5 = [v4 footerView];
  v6 = [v5 moreItemsPageControl];

  return v6;
}

- (id)contentViewContainer
{
  v2 = [(SCATModernMenuViewController *)self menuView];
  v3 = [v2 backgroundView];
  v4 = [v3 containerView];
  v5 = [v4 contentViewContainer];

  return v5;
}

- (void)willBePresentedWithElement:(id)a3 pointPicker:(id)a4 sheetToShow:(id)a5
{
  [(SCATModernMenuViewController *)self setPointPicker:a4];
  v9 = [(SCATModernMenuViewController *)self menuView];
  v6 = +[SCATScannerManager sharedManager];
  v7 = [(SCATModernMenuViewController *)self menu];
  v8 = [v6 scatUIContextForDisplayID:{objc_msgSend(v7, "currentDisplayID")}];

  [v8 addSubview:v9];
}

- (void)didFocusOnContext:(id)a3 oldContext:(id)a4
{
  v35 = a3;
  v5 = [v35 element];
  v6 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];

  if (v5 == v6)
  {
    v7 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
    [v7 setScatMenuItemStyle:2];
  }

  v8 = [v35 shouldBeTrackedByZoom];
  v9 = v35;
  if (v8)
  {
    v10 = [v35 element];
    [v10 scatFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [v35 element];
    v20 = [v19 isGroup];

    if (v20)
    {
      v21 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
      [v21 convertRect:0 toView:{v12, v14, v16, v18}];
      v12 = v22;
      v14 = v23;
      v16 = v24;
      v18 = v25;
    }

    v26 = fabs(v14) != INFINITY;
    if (fabs(v12) == INFINITY || !v26)
    {
      v27 = [(SCATModernMenuViewController *)self menuView];
      [v27 frame];
      v12 = v28;
      v14 = v29;
    }

    v30 = +[ZoomServices sharedInstance];
    v31 = [(SCATModernMenuViewController *)self menuView];
    v32 = [v31 window];
    v33 = [v32 screen];
    v34 = [v33 displayIdentity];
    [v30 notifyZoomFocusDidChangeWithType:3 rect:0 contextId:objc_msgSend(v34 displayId:{"displayID"), v12, v14, v16, v18}];

    v9 = v35;
  }

  _objc_release_x1(v8, v9);
}

- (void)willUnfocusFromContext:(id)a3
{
  v4 = [a3 element];
  v5 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];

  if (v4 == v5)
  {
    v6 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
    [v6 setScatMenuItemStyle:0];
  }
}

- (id)exitActionElement
{
  v3 = [(SCATModernMenuViewController *)self tipObject];
  v4 = [(SCATModernMenuViewController *)self menu];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = [v4 delegate];
    v7 = [(SCATModernMenuViewController *)self menu];
    v8 = [v6 exitActionElementForFingersInMenu:v7];
  }

  else
  {
    v9 = [v4 element];

    if (v9)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v5 = [(SCATModernMenuViewController *)self menuView];
    v8 = [v5 backgroundView];
  }

LABEL_7:

  return v8;
}

- (id)extraProviderElements
{
  if ([(SCATModernMenuViewController *)self showsFooter]&& ([(SCATModernMenuViewController *)self showMoreItemsPageControl], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateForGeometryChange
{
  [(SCATModernMenuViewController *)self updateMenuSheetContentSize];

  [(SCATModernMenuViewController *)self updateMenuLayout];
}

- (void)hide
{
  v2 = [(SCATModernMenuViewController *)self view];
  [v2 removeFromSuperview];
}

- (CGRect)frame
{
  v2 = [(SCATModernMenuViewController *)self view];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateMenuLayout
{
  v4 = [(SCATModernMenuViewController *)self currentSheet];
  v3 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self _updateMenuLayoutForSheet:v4 sheetViewController:v3 animated:1];
}

- (void)updateMenuSheetForOrientationChange
{
  v4 = [(SCATModernMenuViewController *)self menuView];
  v2 = [v4 backgroundView];
  v3 = [v2 containerView];
  [v3 orientationDidChange];
}

- (void)updateMenuSheetContentSize
{
  v3 = [(SCATModernMenuViewController *)self currentSheet];
  [(SCATModernMenuViewController *)self _updateContentSizeForSheet:v3];
}

- (void)_handleShowMoreItems:(id)a3
{
  v4 = [(SCATModernMenuViewController *)self currentSheet];
  v5 = [(SCATModernMenuViewController *)self menu];
  [v5 willTransitionToSheet:v4];

  v6 = [(SCATModernMenuViewController *)self currentSheetViewController];
  v7 = [v6 collectionViewController];
  [v7 showMoreItemsButtonWasActivated];

  [(SCATModernMenuViewController *)self _updateContentSizeForSheet:v4];
  v8 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self _updateMenuLayoutForSheet:v4 sheetViewController:v8 animated:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v4 menuItems];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * i) setStyle:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = [(SCATModernMenuViewController *)self currentSheetViewController];
  v15 = [v14 currentPage];
  v16 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
  [v16 setCurrentPage:v15];

  v17 = v4;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (id)currentSheetViewController
{
  v2 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  v3 = [v2 lastObject];

  return v3;
}

- (void)updateViewControllerStackForSheet:(id)a3 previousSheet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(SCATModernMenuViewController *)self currentSheetViewController];
    [v8 willMoveToParentViewController:0];
    [v8 removeFromParentViewController];
  }

  else
  {
    v9 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    [v9 enumerateObjectsUsingBlock:&stru_1001D5A38];

    v8 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    [v8 removeAllObjects];
  }

  v10 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007A984;
  v20[3] = &unk_1001D5A60;
  v11 = v6;
  v21 = v11;
  v12 = [v10 axFilterObjectsUsingBlock:v20];
  v13 = [v12 firstObject];

  v14 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  v15 = v14;
  if (!v13)
  {
    v19 = [[SCATMenuSheetViewController alloc] initWithSheet:v11];
    [v15 addObject:v19];
    goto LABEL_8;
  }

  v16 = [v14 lastObject];

  if (v13 != v16)
  {
    v17 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    v18 = [v17 indexOfObject:v13];

    v15 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    v19 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    [v15 removeObjectsInRange:{v18 + 1, -[SCATMenuSheetViewController count](v19, "count") - (v18 + 1)}];
LABEL_8:
  }
}

- (BOOL)isVisible
{
  v2 = [(SCATModernMenuViewController *)self view];
  v3 = [v2 window];
  if (v3 && ([v2 alpha], v4 > 0.0))
  {
    v5 = [v2 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)didReloadSheet:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007AB08;
  v9[3] = &unk_1001D5A60;
  v10 = v4;
  v6 = v4;
  v7 = [v5 axFilterObjectsUsingBlock:v9];
  v8 = [v7 firstObject];
  [v8 reload];
}

- (void)reloadMenuVisuals
{
  v4 = [(SCATModernMenuViewController *)self currentSheetViewController];
  v2 = [v4 collectionViewController];
  v3 = [v2 collectionView];
  [v3 reloadData];
}

- (BOOL)isElementTopLevelInMenu:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];

  return v5 == v4;
}

- (void)updateModernMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [v5 updateCellForMenuItem:v4];
}

- (void)flashModernMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [v5 flashCellForMenuItem:v4];
}

- (void)transitionToMenuSheet:(id)a3 fromSheet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATModernMenuViewController *)self menu];
  [v8 willTransitionToSheet:v6];

  [(SCATModernMenuViewController *)self _updateContentSizeForSheet:v6];
  [(SCATModernMenuViewController *)self updateViewControllerStackForSheet:v6 previousSheet:v7];

  v9 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self addChildViewController:v9];

  v10 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [v10 didMoveToParentViewController:self];

  v11 = [(SCATModernMenuViewController *)self contentViewContainer];
  v12 = [(SCATModernMenuViewController *)self currentSheetViewController];
  v13 = [v12 collectionViewController];
  v14 = [v13 view];
  [v11 setContentView:v14];

  v15 = [(SCATModernMenuViewController *)self menu];
  -[SCATModernMenuViewController setTipObject:](self, "setTipObject:", [v15 tipObjectForPresentingSheet:v6]);

  v16 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self _updateMenuLayoutForSheet:v6 sheetViewController:v16 animated:0];

  v17 = v6;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_updateContentSizeForSheet:(id)a3
{
  v6 = [(SCATModernMenuViewController *)self currentSheetViewController];
  v3 = [v6 collectionViewController];
  v4 = [v3 view];
  v5 = [v4 superview];
  [v5 invalidateIntrinsicContentSize];
}

- (void)_updateMenuLayoutForSheet:(id)a3 sheetViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(SCATModernMenuViewController *)self menuView];
  if ([v7 presentationMode])
  {
    if ([v7 presentationMode] == 1)
    {
      v10 = [(SCATModernMenuViewController *)self menuView];
      v11 = [v10 backgroundView];
      [v11 setShouldRoundMenuCorners:0];

      [(SCATModernMenuViewController *)self setShowsFooter:0 numberOfPagesRequired:1];
      v12 = [(SCATModernMenuViewController *)self menuView];
      v13 = [v12 backgroundView];
      v14 = [v13 containerView];
      [v14 setShouldUseDockContentPadding:1];

      v15 = [(SCATModernMenuViewController *)self menu];
      v16 = [v15 dockPosition];
      v17 = [(SCATModernMenuViewController *)self menuView];
      v18 = [v17 backgroundView];
      v19 = [v18 containerView];
      [v19 setDockPosition:v16];

      v20 = [(SCATModernMenuViewController *)self menuView];
      v21 = [v20 backgroundView];
      [v21 setTip:0];

      [v9 sizeToFit];
      [v9 bounds];
      v23 = v22;
      v24 = +[SCATScannerManager sharedManager];
      v25 = [(SCATModernMenuViewController *)self menu];
      v26 = [v24 scatUIContextForDisplayID:{objc_msgSend(v25, "currentDisplayID")}];

      [v26 bounds];
      v28 = v27;
      v29 = [(SCATModernMenuViewController *)self menu];
      -[SCATModernMenuViewController _positionForMenuDockPosition:size:](self, "_positionForMenuDockPosition:size:", [v29 dockPosition], v28, v23);
      v31 = v30;
      v33 = v32;

      [v9 setFrame:{v31, v33, v28, v23}];
    }
  }

  else
  {
    v34 = [(SCATModernMenuViewController *)self menuView];
    v35 = [v34 backgroundView];
    [v35 setShouldRoundMenuCorners:1];

    v36 = [v8 numberOfPagesRequired];
    [(SCATModernMenuViewController *)self setShowsFooter:v36 > 1 numberOfPagesRequired:v36];
    v37 = [(SCATModernMenuViewController *)self menuView];
    v38 = [v37 backgroundView];
    v39 = [v38 containerView];
    [v39 setShouldUseDockContentPadding:0];

    v54 = 0.0;
    v55 = 0.0;
    v53 = 0.0;
    v52 = 0;
    [(SCATModernMenuViewController *)self _determineMenuOrigin:&v54 anchorPosition:&v53 anchorDirection:&v52 + 1 shouldUseTip:&v52 sheet:v7];
    if (v52)
    {
      v40 = HIBYTE(v52);
      v41 = [v9 backgroundView];
      v42 = v41;
      if (v40 == 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }
    }

    else
    {
      v41 = [v9 backgroundView];
      v42 = v41;
      v43 = 0;
    }

    [v41 setTip:v43];

    [v9 sizeToFit];
    v44 = v53 - v54;
    [v9 frame];
    v46 = v44 / v45;
    v47 = [v9 backgroundView];
    [v47 setNormalizedHorizontalTipCenter:v46];

    p_foreheadRect = &self->_foreheadRect;
    v49 = p_foreheadRect->origin.y + p_foreheadRect->size.height;
    v50 = v55;
    [v9 frame];
    [v9 frame];
    if (v49 > v50 && AXDeviceHasJindo())
    {
      [v9 frame];
      v51 = v55 + p_foreheadRect->origin.y + p_foreheadRect->size.height + 5.0;
    }

    else
    {
      [v9 frame];
      v51 = v55;
    }

    [v9 setFrame:{v54, v51}];
  }
}

- (CGRect)_rectToClearIfNeededForSheet:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _AXAssert();
  }

  [v4 rectToClear];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsNull(v20) && [(SCATModernMenuViewController *)self tipObject]== 1)
  {
    v9 = [(SCATModernMenuViewController *)self menu];
    v10 = [v9 delegate];
    v11 = [(SCATModernMenuViewController *)self menu];
    [v10 menu:v11 rectToClearForFingersWithGestureSheet:1];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_determineMenuOrigin:(CGPoint *)a3 anchorPosition:(double *)a4 anchorDirection:(BOOL *)a5 shouldUseTip:(BOOL *)a6 sheet:(id)a7
{
  v111 = a7;
  v12 = [(SCATModernMenuViewController *)self menuView];
  v13 = v111;
  if (!v111)
  {
    v13 = [(SCATModernMenuViewController *)self currentSheet];
  }

  v112 = v13;
  height = CGSizeZero.height;
  [v12 sizeThatFits:1 includeTip:{CGSizeZero.width, height}];
  v16 = v15;
  v18 = v17;
  [v12 sizeThatFits:0 includeTip:{CGSizeZero.width, height}];
  v20 = v19;
  v22 = v21;
  if (![v112 presentationMode])
  {
    v38 = [(SCATModernMenuViewController *)self menu];
    v39 = [v38 popoverPosition];

    if (v39)
    {
      v23 = [(SCATModernMenuViewController *)self menu];
      -[SCATModernMenuViewController _positionForMenuPopoverPosition:size:](self, "_positionForMenuPopoverPosition:size:", [v23 popoverPosition], v20, v22);
      goto LABEL_12;
    }
  }

  if ([v112 presentationMode] == 1)
  {
    v23 = [(SCATModernMenuViewController *)self menu];
    -[SCATModernMenuViewController _positionForMenuDockPosition:size:](self, "_positionForMenuDockPosition:size:", [v23 dockPosition], v20, v22);
LABEL_12:
    v40 = v24;
    v41 = v25;
    v32 = 0;
    v42 = 0.0;
    LOBYTE(v43) = 1;
    goto LABEL_81;
  }

  [(SCATModernMenuViewController *)self _rectToClearIfNeededForSheet:v112];
  v27 = v26;
  v29 = v28;
  v109 = v30;
  v110 = v31;
  v105 = [(SCATModernMenuViewController *)self tipObject];
  v32 = v105 != 0;
  v33 = [(SCATModernMenuViewController *)self menu];
  v23 = [v33 element];

  v34 = [(SCATModernMenuViewController *)self pointPicker];
  v106 = a6;
  if (v34)
  {
    v35 = v34;
    if ([v23 scatIsAXElement])
    {
      v36 = [v23 uiElement];
      v37 = [v36 BOOLWithAXAttribute:2150];

      if (v37)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v23 = 0;
  }

LABEL_15:
  v102 = v29;
  v103 = v27;
  v104 = v18;
  v101 = a4;
  if (-[SCATModernMenuViewController tipObject](self, "tipObject") == 2 && ([v112 alternateTipElement], v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
  {
    v45 = a5;
    v46 = [v112 alternateTipElement];

    v23 = v46;
  }

  else
  {
    v45 = a5;
  }

  v47 = [(SCATModernMenuViewController *)self menu];
  v48 = [v47 screenPoint];

  v49 = +[SCATScannerManager sharedManager];
  v50 = [(SCATModernMenuViewController *)self menu];
  v51 = [v49 scatUIContextForDisplayID:{objc_msgSend(v50, "currentDisplayID")}];

  v107 = v51;
  v52 = v51;
  v53 = v48;
  [v52 bounds];
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v98 = v22;
  v99 = v16;
  if (v105)
  {
    v62 = v104;
  }

  else
  {
    v62 = v22;
  }

  if (v105)
  {
    v63 = v16;
  }

  else
  {
    v63 = v20;
  }

  MidX = CGRectGetMidX(*&v54);
  v114.origin.x = v58;
  v114.origin.y = v59;
  v114.size.width = v60;
  v114.size.height = v61;
  rect2 = v63;
  v65 = v63 * 0.5;
  v40 = MidX - v63 * 0.5;
  v108 = CGRectGetMidY(v114) - v62 * 0.5;
  v66 = (v23 | v48) != 0;
  if (v23 && ([v23 scatFrame], v115.origin.x = sub_1000427AC(v67, v68, v69, v70), !CGRectIsEmpty(v115)))
  {
    [v23 scatFrame];
    [HNDScreen convertRect:v107 toView:sub_1000427AC(v75, v76, v77, v78)];
    v73 = v71 + v79;
    v74 = v72 + v80;
  }

  else if (v48)
  {
    [v48 pointValue];
    [HNDScreen convertPoint:v107 toView:?];
    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = v40 + v60;
    v72 = v108;
    v74 = v61 + v108;
    v71 = MidX - v63 * 0.5;
  }

  a6 = v106;
  a5 = v45;
  a4 = v101;
  if (!v66)
  {
    v43 = 1;
    v42 = MidX - v63 * 0.5;
    goto LABEL_51;
  }

  v81 = v62 + v74;
  v82 = (v72 + v74) * 0.5;
  if (v62 + v82 > v61)
  {
    v82 = 0.0;
  }

  v83 = v72 <= v62;
  if (v72 > v62)
  {
    v84 = v72 - v62;
  }

  else
  {
    v84 = v82;
  }

  v43 = v81 <= v61 || v83;
  if (v81 <= v61)
  {
    v84 = v74;
  }

  v108 = v84;
  v42 = (v71 + v73) * 0.5;
  if (v42 - v65 >= 0.0 && v65 + v42 <= v60)
  {
    v40 = v42 - v65;
LABEL_51:
    v86 = v103;
    v87 = v109;
    goto LABEL_52;
  }

  v86 = v103;
  v87 = v109;
  if (v63 + v71 <= v60)
  {
    v40 = v71;
  }

  else if (v73 > v63)
  {
    v40 = v60 - (v60 - v73) - v63;
  }

LABEL_52:
  v116.origin.x = v86;
  v116.origin.y = v102;
  v116.size.width = v87;
  v88 = v110;
  v116.size.height = v110;
  if (!CGRectIsNull(v116))
  {
    v117.origin.x = v86;
    v117.origin.y = v102;
    v117.size.width = v87;
    v117.size.height = v110;
    v119.origin.x = v40;
    v119.origin.y = v108;
    v119.size.width = rect2;
    v119.size.height = v62;
    if (CGRectIntersectsRect(v117, v119))
    {
      if (v105)
      {
        v89 = v43;
      }

      else
      {
        v89 = 0;
      }

      if (v89)
      {
        v90 = v102 + v110;
        if ([(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v102 + v110, v99, v104])
        {
LABEL_59:
          v32 = 1;
LABEL_69:
          v92 = v40;
          a6 = v106;
LABEL_79:
          v41 = v90;
          v40 = v92;
          goto LABEL_80;
        }

        v90 = v102 - v104;
        v91 = [(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v102 - v104, v99, v104];
        v88 = v110;
        if ((v43 || v105 == 0) | v91 & 1)
        {
          if (v91)
          {
            goto LABEL_59;
          }

LABEL_70:
          v93 = 0;
          v92 = v40;
          do
          {
            if (v93)
            {
              [(SCATModernMenuViewController *)self _positionForMenuPopoverPosition:v93 size:v20, v98];
              v92 = v94;
              v90 = v95;
              v118.origin.x = v86;
              v118.origin.y = v102;
              v118.size.width = v109;
              v118.size.height = v110;
              v120.origin.x = v92;
              v120.origin.y = v90;
              v120.size.width = v20;
              v120.size.height = v98;
              v96 = CGRectIntersectsRect(v118, v120);
              v97 = !v96;
              v32 &= v96;
            }

            else
            {
              v97 = 0;
            }

            if (v93 > 7)
            {
              break;
            }

            ++v93;
          }

          while (!v97);
          if (!v97)
          {
            v90 = v108;
          }

          v41 = v90;
          a6 = v106;
          if (!v97)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }
      }

      else
      {
        v90 = v108;
        if (v43 || v105 == 0)
        {
          goto LABEL_70;
        }
      }

      v90 = v102 - v104;
      if ([(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v102 - v104, v99, v104])
      {
        goto LABEL_69;
      }

      v90 = v102 + v88;
      if ([(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v102 + v88, v99, v104])
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    }
  }

  v41 = v108;
LABEL_80:

LABEL_81:
  if (a3)
  {
    a3->x = floor(v40);
    a3->y = floor(v41);
  }

  if (a4)
  {
    *a4 = floor(v42);
  }

  if (a5)
  {
    *a5 = v43;
  }

  if (a6)
  {
    *a6 = v32 & 1;
  }
}

- (BOOL)_menuFrameIsValid:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[SCATScannerManager sharedManager];
  v9 = [(SCATModernMenuViewController *)self menu];
  v10 = [v8 scatUIContextForDisplayID:{objc_msgSend(v9, "currentDisplayID")}];

  [v10 bounds];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  LOBYTE(v9) = CGRectContainsRect(v12, v13);

  return v9;
}

- (CGPoint)_positionForMenuPopoverPosition:(int64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = +[SCATScannerManager sharedManager];
  v9 = [(SCATModernMenuViewController *)self menu];
  v10 = [v8 scatUIContextForDisplayID:{objc_msgSend(v9, "currentDisplayID")}];

  [v10 bounds];
  x = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 safeAreaInsets];
  y = v14 + v19;
  v22 = v18 - v21;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 != 7)
      {
        if (a3 == 8)
        {
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = v16;
          v29.size.height = v22;
          y = floor(CGRectGetMidY(v29) + height * -0.5);
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (a3 == 5)
    {
      x = v16 - width;
    }

    else
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = v16;
      v27.size.height = v22;
      x = floor(CGRectGetMidX(v27) + width * -0.5);
    }

    y = v22 - height;
    goto LABEL_19;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = v16;
      v28.size.height = v22;
      y = floor(CGRectGetMidY(v28) + height * -0.5);
    }

    x = v16 - width;
  }

  else if (a3 != 1)
  {
    if (a3 == 2)
    {
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = v16;
      v26.size.height = v22;
      x = floor(CGRectGetMidX(v26) + width * -0.5);
      goto LABEL_19;
    }

LABEL_18:
    x = CGPointZero.x;
    y = CGPointZero.y;
    _AXAssert();
  }

LABEL_19:

  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)_positionForMenuDockPosition:(int64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  if (a4.width == CGSizeZero.width && a4.height == CGSizeZero.height)
  {
    v8 = [(SCATModernMenuViewController *)self view];
    [v8 frame];
    height = v9;
  }

  v10 = +[SCATScannerManager sharedManager];
  v11 = [(SCATModernMenuViewController *)self menu];
  v12 = [v10 scatUIContextForDisplayID:{objc_msgSend(v11, "currentDisplayID")}];

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SCATModernMenuViewController *)self view];
  [v19 frame];

  if (a3 == 1)
  {
    v20 = v16;
  }

  else
  {
    v20 = v18 - height;
  }

  v21 = v14;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v24 = a3;
  if ([v24 count] == 1)
  {
    p_foreheadRect = &self->_foreheadRect;
    v5 = [v24 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    p_foreheadRect->origin.x = v6;
    p_foreheadRect->origin.y = v7;
    p_foreheadRect->size.width = v8;
    p_foreheadRect->size.height = v9;
  }

  else
  {
    if ([v24 count] != 2)
    {
      goto LABEL_6;
    }

    v10 = &self->_foreheadRect;
    v5 = [v24 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v24 objectAtIndexedSubscript:1];
    [v19 CGRectValue];
    v27.origin.x = v20;
    v27.origin.y = v21;
    v27.size.width = v22;
    v27.size.height = v23;
    v26.origin.x = v12;
    v26.origin.y = v14;
    v26.size.width = v16;
    v26.size.height = v18;
    *v10 = CGRectUnion(v26, v27);
  }

LABEL_6:
}

- (SCATMenu)menu
{
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  return WeakRetained;
}

- (SCATPointPicker)pointPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_pointPicker);

  return WeakRetained;
}

@end