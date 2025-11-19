@interface RCSplitViewController
- (BOOL)_canHandleCustomAction:(SEL)a3 withSender:(id)a4;
- (BOOL)_willSidebarExceedMaximumAllowedWidthForTotalViewWidth:(double)a3;
- (BOOL)areAllColumnsVisible;
- (BOOL)canDelete;
- (BOOL)canDuplicateRecording;
- (BOOL)canEditRecording;
- (BOOL)canHandleCancel;
- (BOOL)canHandleDone;
- (BOOL)canJumpBackward;
- (BOOL)canJumpForward;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPlayRecording;
- (BOOL)canRenameRecording;
- (BOOL)canShareRecording;
- (BOOL)canStartNewRecording;
- (BOOL)canToggleEnhance;
- (BOOL)canToggleFavorite;
- (BOOL)canToggleRemoveSilence;
- (BOOL)canToggleSidebar;
- (BOOL)canToggleSpeechIsolator;
- (BOOL)canTrimRecording;
- (BOOL)currentSelectionHasSpatialRecording;
- (BOOL)isCollapsedAndShowingPrimary;
- (RCMainViewController)mainViewController;
- (RCSplitViewResizingDelegate)resizingDelegate;
- (double)_primaryColumnWidth;
- (double)_supplementaryColumnWidth;
- (double)_totalSidebarWidth;
- (double)_totalViewWidth;
- (id)playbackViewNavigationItem;
- (int64_t)_displayModeForPrimaryColumnVisible;
- (void)_doRestyle;
- (void)_setPreferredSplitBehaviorForViewWidth:(double)a3 needsRestyle:(BOOL)a4;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)delete:(id)a3;
- (void)duplicateRecording:(id)a3;
- (void)editRecording:(id)a3;
- (void)handleCancel:(id)a3;
- (void)handleDone:(id)a3;
- (void)hidePrimaryColumnForEnteringEditModeIfNeeded;
- (void)hidePrimaryColumnIfNeeded;
- (void)jumpSelectionBackward:(id)a3;
- (void)jumpSelectionForward:(id)a3;
- (void)loadView;
- (void)playRecording:(id)a3;
- (void)registerAppIntentsInteractions;
- (void)renameRecording:(id)a3;
- (void)setViewController:(id)a3 forColumn:(int64_t)a4;
- (void)shareRecording:(id)a3;
- (void)showPrimaryColumnForExitingEditModeIfNeeded;
- (void)startNewRecording:(id)a3;
- (void)toggleEnhance:(id)a3;
- (void)toggleFavorite:(id)a3;
- (void)toggleRemoveSilence:(id)a3;
- (void)toggleSpeechIsolator:(id)a3;
- (void)trimRecording:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RCSplitViewController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = RCSplitViewController;
  [(RCSplitViewController *)&v7 loadView];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(RCSplitViewController *)self setPrimaryBackgroundStyle:1];
  [v3 splitViewSeparatorWidth];
  *&v4 = v4;
  [(RCSplitViewController *)self setGutterWidth:v4];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"currentLocaleDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];

  v6 = [(RCSplitViewController *)self traitCollection];
  [v3 setSplitViewHorizontalSizeClass:{objc_msgSend(v6, "horizontalSizeClass")}];

  [(RCSplitViewController *)self setPreferredDisplayMode:2];
  [(RCSplitViewController *)self _totalViewWidth];
  [(RCSplitViewController *)self _setPreferredSplitBehaviorForViewWidth:0 needsRestyle:?];
}

- (double)_totalViewWidth
{
  v2 = [(RCSplitViewController *)self view];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = RCSplitViewController;
  [(RCSplitViewController *)&v9 viewDidLoad];
  v3 = objc_opt_self();
  v10[0] = v3;
  v4 = objc_opt_self();
  v10[1] = v4;
  v5 = objc_opt_self();
  v10[2] = v5;
  v6 = objc_opt_self();
  v10[3] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:4];
  v8 = [(RCSplitViewController *)self registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
}

- (void)registerAppIntentsInteractions
{
  v2 = self;
  sub_1000125B4();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = RCSplitViewController;
  v7 = a4;
  [(RCSplitViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B2470;
  v8[3] = &unk_10028C440;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = RCSplitViewController;
  [(RCSplitViewController *)&v16 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v8 = [(RCSplitViewController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10 = [v6 horizontalSizeClass];
  if (v9 != v10)
  {
    v11 = v10;
    v12 = [(RCSplitViewController *)self resizingDelegate];
    [v12 splitViewController:self willTransitionFromHorizontalSizeClass:v9 toHorizontalSizeClass:v11];
  }

  v13 = +[RCRecorderStyleProvider sharedStyleProvider];
  v14 = [v13 setSplitViewHorizontalSizeClass:{objc_msgSend(v6, "horizontalSizeClass")}];

  if (v14)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B25DC;
    v15[3] = &unk_10028A488;
    v15[4] = self;
    [v7 animateAlongsideTransition:v15 completion:0];
  }
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(RCSplitViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {

    [(RCSplitViewController *)self _doRestyle];
  }
}

- (void)_doRestyle
{
  v3 = [(RCSplitViewController *)self resizingDelegate];
  [v3 handleRestyleRequest];

  [(RCSplitViewController *)self restyle];
}

- (BOOL)_canHandleCustomAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  LOBYTE(a3) = [WeakRetained canHandleCustomAction:a3 withSender:v6];

  return a3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("startNewRecording:" == a3)
  {
    if ([(RCSplitViewController *)self canStartNewRecording])
    {
      goto LABEL_21;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  if ("duplicateRecording:" == a3)
  {
    if ([(RCSplitViewController *)self canDuplicateRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("editRecording:" == a3)
  {
    if ([(RCSplitViewController *)self canEditRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("trimRecording:" == a3)
  {
    if ([(RCSplitViewController *)self canTrimRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("toggleFavorite:" == a3 || "toggleEnhance:" == a3 || "toggleRemoveSilence:" == a3 || "toggleSpeechIsolator:" == a3)
  {
    goto LABEL_21;
  }

  if ("renameRecording:" == a3)
  {
    if ([(RCSplitViewController *)self canRenameRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("playRecording:" == a3)
  {
    if ([(RCSplitViewController *)self canPlayRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("jumpSelectionBackward:" == a3)
  {
    if ([(RCSplitViewController *)self canJumpBackward])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("jumpSelectionForward:" == a3)
  {
    if ([(RCSplitViewController *)self canJumpForward])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("delete:" == a3)
  {
    if ([(RCSplitViewController *)self canDelete])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("handleDone:" == a3)
  {
    if ([(RCSplitViewController *)self canHandleDone])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("handleCancel:" == a3)
  {
    if ([(RCSplitViewController *)self canHandleCancel])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("shareRecording:" == a3)
  {
    if (![(RCSplitViewController *)self canShareRecording])
    {
      goto LABEL_24;
    }

LABEL_21:
    v7 = [(RCSplitViewController *)self _canHandleCustomAction:a3 withSender:v6];
    goto LABEL_22;
  }

  if ("toggleSidebar:" != a3 || ![(RCSplitViewController *)self canToggleSidebar])
  {
    goto LABEL_24;
  }

  v10.receiver = self;
  v10.super_class = RCSplitViewController;
  v7 = [(RCSplitViewController *)&v10 canPerformAction:a3 withSender:v6];
LABEL_22:
  v8 = v7;
LABEL_25:

  return v8;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  if ([v4 action] == "toggleFavorite:")
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
    v6 = [WeakRetained currentSelectionIsFavorite];

    [v4 setState:v6];
    if ([(RCSplitViewController *)self canToggleFavorite])
    {
      goto LABEL_13;
    }

    v7 = v4;
    v8 = 1;
LABEL_12:
    [v7 setAttributes:v8];
    goto LABEL_13;
  }

  if ([v4 action] == "toggleEnhance:")
  {
    v9 = objc_loadWeakRetained(&self->_mainViewController);
    v10 = [v9 currentSelectionIsEnhanced];

    [v4 setState:v10];
    if ([(RCSplitViewController *)self canToggleEnhance])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v4 action] == "toggleRemoveSilence:")
  {
    v11 = objc_loadWeakRetained(&self->_mainViewController);
    v12 = [v11 currentSelectionHasSilenceRemoved];

    [v4 setState:v12];
    if ([(RCSplitViewController *)self canToggleRemoveSilence])
    {
LABEL_10:
      if (![(RCSplitViewController *)self currentSelectionHasSpatialRecording])
      {
        goto LABEL_13;
      }

LABEL_11:
      v7 = v4;
      v8 = 4;
      goto LABEL_12;
    }

LABEL_9:
    [v4 setAttributes:1];
    goto LABEL_10;
  }

  if ([v4 action] != "toggleSpeechIsolator:")
  {
    v15.receiver = self;
    v15.super_class = RCSplitViewController;
    [(RCSplitViewController *)&v15 validateCommand:v4];
    goto LABEL_13;
  }

  v13 = objc_loadWeakRetained(&self->_mainViewController);
  v14 = [v13 currentSelectionHasSpeechIsolatorEnabled];

  [v4 setState:v14];
  if (![(RCSplitViewController *)self canToggleSpeechIsolator])
  {
    [v4 setAttributes:1];
  }

  if (![(RCSplitViewController *)self currentSelectionHasSpatialRecording])
  {
    goto LABEL_11;
  }

LABEL_13:
}

- (BOOL)canStartNewRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canStartNewRecording];

  return v3;
}

- (void)startNewRecording:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained startNewRecordingAction];
}

- (BOOL)canPlayRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canPlayRecording];

  return v3;
}

- (void)playRecording:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained playRecording];
}

- (BOOL)canDuplicateRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canDuplicateRecording];

  return v3;
}

- (void)duplicateRecording:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained duplicateRecording];
}

- (BOOL)canRenameRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canRenameRecording];

  return v3;
}

- (void)renameRecording:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained renameRecording];
}

- (BOOL)canEditRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canEditRecording];

  return v3;
}

- (void)editRecording:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained editRecording];
}

- (BOOL)canTrimRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canTrimRecording];

  return v3;
}

- (void)trimRecording:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained trimRecording];
}

- (BOOL)canToggleFavorite
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canToggleFavoriteRecording];

  return v3;
}

- (void)toggleFavorite:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleFavoriteRecording];
}

- (BOOL)canToggleEnhance
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canToggleEnhanceRecording];

  return v3;
}

- (void)toggleEnhance:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleEnhanceRecording];
}

- (BOOL)canToggleRemoveSilence
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canToggleRemoveSilence];

  return v3;
}

- (void)toggleRemoveSilence:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleRemoveSilence];
}

- (BOOL)currentSelectionHasSpatialRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained currentSelectionHasSpatialRecording];

  return v3;
}

- (BOOL)canToggleSpeechIsolator
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canToggleSpeechIsolator];

  return v3;
}

- (void)toggleSpeechIsolator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleSpeechIsolator];
}

- (BOOL)canDelete
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canDelete];

  return v3;
}

- (void)delete:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained delete:v4];
}

- (BOOL)canJumpForward
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canJumpForward];

  return v3;
}

- (void)jumpSelectionForward:(id)a3
{
  if ([(RCSplitViewController *)self canJumpForward])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
    [WeakRetained jumpSelectionForward];
  }
}

- (BOOL)canJumpBackward
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canJumpBackward];

  return v3;
}

- (void)jumpSelectionBackward:(id)a3
{
  if ([(RCSplitViewController *)self canJumpBackward])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
    [WeakRetained jumpSelectionBackward];
  }
}

- (BOOL)canShareRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canShareRecording];

  return v3;
}

- (void)shareRecording:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained shareRecording:v4];
}

- (BOOL)canHandleDone
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canHandleDone];

  return v3;
}

- (void)handleDone:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained handleDone];
}

- (BOOL)canHandleCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canHandleCancel];

  return v3;
}

- (void)handleCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained handleCancel];
}

- (BOOL)canToggleSidebar
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  v3 = [WeakRetained canToggleSidebar];

  return v3;
}

- (void)setViewController:(id)a3 forColumn:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1001BACE4(v7);
      }
    }

    v8 = [(RCSplitViewController *)self viewControllerForColumn:1];
    if (-[RCSplitViewController isCollapsed](self, "isCollapsed") && (-[RCSplitViewController viewControllers](self, "viewControllers"), v9 = objc_claimAutoreleasedReturnValue(), [v9 firstObject], v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "viewControllers"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v8), v11, v10, v12))
    {
      v16 = v6;
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      [v8 setViewControllers:v13 animated:0];
    }

    else
    {
      v13 = [[UINavigationController alloc] initWithRootViewController:v6];
      v15.receiver = self;
      v15.super_class = RCSplitViewController;
      [(RCSplitViewController *)&v15 setViewController:v13 forColumn:1];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = RCSplitViewController;
    [(RCSplitViewController *)&v14 setViewController:v6 forColumn:a4];
  }
}

- (BOOL)areAllColumnsVisible
{
  if (([(RCSplitViewController *)self isCollapsed]& 1) != 0)
  {
    return 0;
  }

  return [(RCSplitViewController *)self _isPrimaryColumnVisible];
}

- (BOOL)isCollapsedAndShowingPrimary
{
  if (![(RCSplitViewController *)self isCollapsed])
  {
    return 0;
  }

  v3 = 1;
  v4 = [(RCSplitViewController *)self viewControllerForColumn:1];
  if ([v4 isViewLoaded])
  {
    v5 = [v4 view];
    v6 = [v5 window];
    v3 = v6 == 0;
  }

  return v3;
}

- (void)hidePrimaryColumnIfNeeded
{
  v3 = [(RCSplitViewController *)self _isPrimaryColumnVisible];
  v4 = [(RCSplitViewController *)self splitBehavior];
  if (v3 && v4 == 3)
  {

    [(RCSplitViewController *)self hideColumn:0];
  }
}

- (void)hidePrimaryColumnForEnteringEditModeIfNeeded
{
  if ([(RCSplitViewController *)self areAllColumnsVisible])
  {
    [(RCSplitViewController *)self hideColumn:0];
    self->_didHidePrimaryColumnForEditMode = 1;
  }
}

- (void)showPrimaryColumnForExitingEditModeIfNeeded
{
  if (self->_didHidePrimaryColumnForEditMode)
  {
    [(RCSplitViewController *)self showColumn:0];
    self->_didHidePrimaryColumnForEditMode = 0;
  }
}

- (id)playbackViewNavigationItem
{
  v2 = [(RCSplitViewController *)self viewControllerForColumn:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 viewControllers];
    v4 = [v3 firstObject];

    v5 = [v4 navigationItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setPreferredSplitBehaviorForViewWidth:(double)a3 needsRestyle:(BOOL)a4
{
  v4 = a4;
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v9 usesSplitBehavior])
  {
    v7 = [(RCSplitViewController *)self _willSidebarExceedMaximumAllowedWidthForTotalViewWidth:a3];
    v8 = (([v9 supportsDisplaceSplitBehavior] & v7) != 0 ? 3 : 1);
    if ([(RCSplitViewController *)self preferredSplitBehavior]!= v8)
    {
      [(RCSplitViewController *)self setPreferredSplitBehavior:v8];
      if (v4)
      {
        [(RCSplitViewController *)self _doRestyle];
      }
    }
  }
}

- (BOOL)_willSidebarExceedMaximumAllowedWidthForTotalViewWidth:(double)a3
{
  [(RCSplitViewController *)self _totalSidebarWidth];
  if (a3 <= 0.0)
  {
    return 0;
  }

  v5 = v4;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v6 minimumSecondaryColumnWidth];
  v8 = v7;

  return a3 - v5 < v8;
}

- (int64_t)_displayModeForPrimaryColumnVisible
{
  if ([(RCSplitViewController *)self splitBehavior]== 1)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

- (double)_totalSidebarWidth
{
  [(RCSplitViewController *)self _primaryColumnWidth];
  v4 = v3;
  [(RCSplitViewController *)self _supplementaryColumnWidth];
  return v4 + v5;
}

- (double)_primaryColumnWidth
{
  v3 = [(RCSplitViewController *)self viewControllerForColumn:0];
  v4 = [v3 view];
  v5 = [v4 window];
  if (v5)
  {
    v6 = ![(RCSplitViewController *)self _isPrimaryColumnVisible];
  }

  else
  {
    v6 = 1;
  }

  [(RCSplitViewController *)self primaryColumnWidth];
  if (v6)
  {
    [(RCSplitViewController *)self minimumPrimaryColumnWidth];
    v9 = v8;
    [(RCSplitViewController *)self primaryColumnWidth];
    if (v9 < v10)
    {
      v9 = v10;
    }

    [(RCSplitViewController *)self maximumPrimaryColumnWidth];
    if (v11 < v9)
    {
      v9 = v11;
    }
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (double)_supplementaryColumnWidth
{
  v3 = [(RCSplitViewController *)self viewControllerForColumn:1];
  v4 = [v3 view];
  v5 = [v4 window];

  [(RCSplitViewController *)self supplementaryColumnWidth];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    [(RCSplitViewController *)self minimumSupplementaryColumnWidth];
    v7 = v8;
    [(RCSplitViewController *)self supplementaryColumnWidth];
    if (v7 < v9)
    {
      v7 = v9;
    }

    [(RCSplitViewController *)self maximumSupplementaryColumnWidth];
    if (v10 < v7)
    {
      v7 = v10;
    }
  }

  return v7;
}

- (RCSplitViewResizingDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

- (RCMainViewController)mainViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

@end