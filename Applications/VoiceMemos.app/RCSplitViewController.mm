@interface RCSplitViewController
- (BOOL)_canHandleCustomAction:(SEL)action withSender:(id)sender;
- (BOOL)_willSidebarExceedMaximumAllowedWidthForTotalViewWidth:(double)width;
- (BOOL)areAllColumnsVisible;
- (BOOL)canDelete;
- (BOOL)canDuplicateRecording;
- (BOOL)canEditRecording;
- (BOOL)canHandleCancel;
- (BOOL)canHandleDone;
- (BOOL)canJumpBackward;
- (BOOL)canJumpForward;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
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
- (void)_setPreferredSplitBehaviorForViewWidth:(double)width needsRestyle:(BOOL)restyle;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)delete:(id)delete;
- (void)duplicateRecording:(id)recording;
- (void)editRecording:(id)recording;
- (void)handleCancel:(id)cancel;
- (void)handleDone:(id)done;
- (void)hidePrimaryColumnForEnteringEditModeIfNeeded;
- (void)hidePrimaryColumnIfNeeded;
- (void)jumpSelectionBackward:(id)backward;
- (void)jumpSelectionForward:(id)forward;
- (void)loadView;
- (void)playRecording:(id)recording;
- (void)registerAppIntentsInteractions;
- (void)renameRecording:(id)recording;
- (void)setViewController:(id)controller forColumn:(int64_t)column;
- (void)shareRecording:(id)recording;
- (void)showPrimaryColumnForExitingEditModeIfNeeded;
- (void)startNewRecording:(id)recording;
- (void)toggleEnhance:(id)enhance;
- (void)toggleFavorite:(id)favorite;
- (void)toggleRemoveSilence:(id)silence;
- (void)toggleSpeechIsolator:(id)isolator;
- (void)trimRecording:(id)recording;
- (void)validateCommand:(id)command;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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

  traitCollection = [(RCSplitViewController *)self traitCollection];
  [v3 setSplitViewHorizontalSizeClass:{objc_msgSend(traitCollection, "horizontalSizeClass")}];

  [(RCSplitViewController *)self setPreferredDisplayMode:2];
  [(RCSplitViewController *)self _totalViewWidth];
  [(RCSplitViewController *)self _setPreferredSplitBehaviorForViewWidth:0 needsRestyle:?];
}

- (double)_totalViewWidth
{
  view = [(RCSplitViewController *)self view];
  [view frame];
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
  selfCopy = self;
  sub_1000125B4();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = RCSplitViewController;
  coordinatorCopy = coordinator;
  [(RCSplitViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B2470;
  v8[3] = &unk_10028C440;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = RCSplitViewController;
  [(RCSplitViewController *)&v16 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  traitCollection = [(RCSplitViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  horizontalSizeClass2 = [collectionCopy horizontalSizeClass];
  if (horizontalSizeClass != horizontalSizeClass2)
  {
    v11 = horizontalSizeClass2;
    resizingDelegate = [(RCSplitViewController *)self resizingDelegate];
    [resizingDelegate splitViewController:self willTransitionFromHorizontalSizeClass:horizontalSizeClass toHorizontalSizeClass:v11];
  }

  v13 = +[RCRecorderStyleProvider sharedStyleProvider];
  v14 = [v13 setSplitViewHorizontalSizeClass:{objc_msgSend(collectionCopy, "horizontalSizeClass")}];

  if (v14)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B25DC;
    v15[3] = &unk_10028A488;
    v15[4] = self;
    [coordinatorCopy animateAlongsideTransition:v15 completion:0];
  }
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(RCSplitViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(RCSplitViewController *)self _doRestyle];
  }
}

- (void)_doRestyle
{
  resizingDelegate = [(RCSplitViewController *)self resizingDelegate];
  [resizingDelegate handleRestyleRequest];

  [(RCSplitViewController *)self restyle];
}

- (BOOL)_canHandleCustomAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  LOBYTE(action) = [WeakRetained canHandleCustomAction:action withSender:senderCopy];

  return action;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("startNewRecording:" == action)
  {
    if ([(RCSplitViewController *)self canStartNewRecording])
    {
      goto LABEL_21;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  if ("duplicateRecording:" == action)
  {
    if ([(RCSplitViewController *)self canDuplicateRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("editRecording:" == action)
  {
    if ([(RCSplitViewController *)self canEditRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("trimRecording:" == action)
  {
    if ([(RCSplitViewController *)self canTrimRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("toggleFavorite:" == action || "toggleEnhance:" == action || "toggleRemoveSilence:" == action || "toggleSpeechIsolator:" == action)
  {
    goto LABEL_21;
  }

  if ("renameRecording:" == action)
  {
    if ([(RCSplitViewController *)self canRenameRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("playRecording:" == action)
  {
    if ([(RCSplitViewController *)self canPlayRecording])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("jumpSelectionBackward:" == action)
  {
    if ([(RCSplitViewController *)self canJumpBackward])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("jumpSelectionForward:" == action)
  {
    if ([(RCSplitViewController *)self canJumpForward])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("delete:" == action)
  {
    if ([(RCSplitViewController *)self canDelete])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("handleDone:" == action)
  {
    if ([(RCSplitViewController *)self canHandleDone])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("handleCancel:" == action)
  {
    if ([(RCSplitViewController *)self canHandleCancel])
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if ("shareRecording:" == action)
  {
    if (![(RCSplitViewController *)self canShareRecording])
    {
      goto LABEL_24;
    }

LABEL_21:
    v7 = [(RCSplitViewController *)self _canHandleCustomAction:action withSender:senderCopy];
    goto LABEL_22;
  }

  if ("toggleSidebar:" != action || ![(RCSplitViewController *)self canToggleSidebar])
  {
    goto LABEL_24;
  }

  v10.receiver = self;
  v10.super_class = RCSplitViewController;
  v7 = [(RCSplitViewController *)&v10 canPerformAction:action withSender:senderCopy];
LABEL_22:
  v8 = v7;
LABEL_25:

  return v8;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == "toggleFavorite:")
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
    currentSelectionIsFavorite = [WeakRetained currentSelectionIsFavorite];

    [commandCopy setState:currentSelectionIsFavorite];
    if ([(RCSplitViewController *)self canToggleFavorite])
    {
      goto LABEL_13;
    }

    v7 = commandCopy;
    v8 = 1;
LABEL_12:
    [v7 setAttributes:v8];
    goto LABEL_13;
  }

  if ([commandCopy action] == "toggleEnhance:")
  {
    v9 = objc_loadWeakRetained(&self->_mainViewController);
    currentSelectionIsEnhanced = [v9 currentSelectionIsEnhanced];

    [commandCopy setState:currentSelectionIsEnhanced];
    if ([(RCSplitViewController *)self canToggleEnhance])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([commandCopy action] == "toggleRemoveSilence:")
  {
    v11 = objc_loadWeakRetained(&self->_mainViewController);
    currentSelectionHasSilenceRemoved = [v11 currentSelectionHasSilenceRemoved];

    [commandCopy setState:currentSelectionHasSilenceRemoved];
    if ([(RCSplitViewController *)self canToggleRemoveSilence])
    {
LABEL_10:
      if (![(RCSplitViewController *)self currentSelectionHasSpatialRecording])
      {
        goto LABEL_13;
      }

LABEL_11:
      v7 = commandCopy;
      v8 = 4;
      goto LABEL_12;
    }

LABEL_9:
    [commandCopy setAttributes:1];
    goto LABEL_10;
  }

  if ([commandCopy action] != "toggleSpeechIsolator:")
  {
    v15.receiver = self;
    v15.super_class = RCSplitViewController;
    [(RCSplitViewController *)&v15 validateCommand:commandCopy];
    goto LABEL_13;
  }

  v13 = objc_loadWeakRetained(&self->_mainViewController);
  currentSelectionHasSpeechIsolatorEnabled = [v13 currentSelectionHasSpeechIsolatorEnabled];

  [commandCopy setState:currentSelectionHasSpeechIsolatorEnabled];
  if (![(RCSplitViewController *)self canToggleSpeechIsolator])
  {
    [commandCopy setAttributes:1];
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
  canStartNewRecording = [WeakRetained canStartNewRecording];

  return canStartNewRecording;
}

- (void)startNewRecording:(id)recording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained startNewRecordingAction];
}

- (BOOL)canPlayRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canPlayRecording = [WeakRetained canPlayRecording];

  return canPlayRecording;
}

- (void)playRecording:(id)recording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained playRecording];
}

- (BOOL)canDuplicateRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canDuplicateRecording = [WeakRetained canDuplicateRecording];

  return canDuplicateRecording;
}

- (void)duplicateRecording:(id)recording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained duplicateRecording];
}

- (BOOL)canRenameRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canRenameRecording = [WeakRetained canRenameRecording];

  return canRenameRecording;
}

- (void)renameRecording:(id)recording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained renameRecording];
}

- (BOOL)canEditRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canEditRecording = [WeakRetained canEditRecording];

  return canEditRecording;
}

- (void)editRecording:(id)recording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained editRecording];
}

- (BOOL)canTrimRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canTrimRecording = [WeakRetained canTrimRecording];

  return canTrimRecording;
}

- (void)trimRecording:(id)recording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained trimRecording];
}

- (BOOL)canToggleFavorite
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canToggleFavoriteRecording = [WeakRetained canToggleFavoriteRecording];

  return canToggleFavoriteRecording;
}

- (void)toggleFavorite:(id)favorite
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleFavoriteRecording];
}

- (BOOL)canToggleEnhance
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canToggleEnhanceRecording = [WeakRetained canToggleEnhanceRecording];

  return canToggleEnhanceRecording;
}

- (void)toggleEnhance:(id)enhance
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleEnhanceRecording];
}

- (BOOL)canToggleRemoveSilence
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canToggleRemoveSilence = [WeakRetained canToggleRemoveSilence];

  return canToggleRemoveSilence;
}

- (void)toggleRemoveSilence:(id)silence
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleRemoveSilence];
}

- (BOOL)currentSelectionHasSpatialRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  currentSelectionHasSpatialRecording = [WeakRetained currentSelectionHasSpatialRecording];

  return currentSelectionHasSpatialRecording;
}

- (BOOL)canToggleSpeechIsolator
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canToggleSpeechIsolator = [WeakRetained canToggleSpeechIsolator];

  return canToggleSpeechIsolator;
}

- (void)toggleSpeechIsolator:(id)isolator
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained toggleSpeechIsolator];
}

- (BOOL)canDelete
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canDelete = [WeakRetained canDelete];

  return canDelete;
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained delete:deleteCopy];
}

- (BOOL)canJumpForward
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canJumpForward = [WeakRetained canJumpForward];

  return canJumpForward;
}

- (void)jumpSelectionForward:(id)forward
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
  canJumpBackward = [WeakRetained canJumpBackward];

  return canJumpBackward;
}

- (void)jumpSelectionBackward:(id)backward
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
  canShareRecording = [WeakRetained canShareRecording];

  return canShareRecording;
}

- (void)shareRecording:(id)recording
{
  recordingCopy = recording;
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained shareRecording:recordingCopy];
}

- (BOOL)canHandleDone
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canHandleDone = [WeakRetained canHandleDone];

  return canHandleDone;
}

- (void)handleDone:(id)done
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained handleDone];
}

- (BOOL)canHandleCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canHandleCancel = [WeakRetained canHandleCancel];

  return canHandleCancel;
}

- (void)handleCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  [WeakRetained handleCancel];
}

- (BOOL)canToggleSidebar
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  canToggleSidebar = [WeakRetained canToggleSidebar];

  return canToggleSidebar;
}

- (void)setViewController:(id)controller forColumn:(int64_t)column
{
  controllerCopy = controller;
  if (column == 1)
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
      v16 = controllerCopy;
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      [v8 setViewControllers:v13 animated:0];
    }

    else
    {
      v13 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];
      v15.receiver = self;
      v15.super_class = RCSplitViewController;
      [(RCSplitViewController *)&v15 setViewController:v13 forColumn:1];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = RCSplitViewController;
    [(RCSplitViewController *)&v14 setViewController:controllerCopy forColumn:column];
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
    view = [v4 view];
    window = [view window];
    v3 = window == 0;
  }

  return v3;
}

- (void)hidePrimaryColumnIfNeeded
{
  _isPrimaryColumnVisible = [(RCSplitViewController *)self _isPrimaryColumnVisible];
  splitBehavior = [(RCSplitViewController *)self splitBehavior];
  if (_isPrimaryColumnVisible && splitBehavior == 3)
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
    viewControllers = [v2 viewControllers];
    firstObject = [viewControllers firstObject];

    navigationItem = [firstObject navigationItem];
  }

  else
  {
    navigationItem = 0;
  }

  return navigationItem;
}

- (void)_setPreferredSplitBehaviorForViewWidth:(double)width needsRestyle:(BOOL)restyle
{
  restyleCopy = restyle;
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v9 usesSplitBehavior])
  {
    v7 = [(RCSplitViewController *)self _willSidebarExceedMaximumAllowedWidthForTotalViewWidth:width];
    v8 = (([v9 supportsDisplaceSplitBehavior] & v7) != 0 ? 3 : 1);
    if ([(RCSplitViewController *)self preferredSplitBehavior]!= v8)
    {
      [(RCSplitViewController *)self setPreferredSplitBehavior:v8];
      if (restyleCopy)
      {
        [(RCSplitViewController *)self _doRestyle];
      }
    }
  }
}

- (BOOL)_willSidebarExceedMaximumAllowedWidthForTotalViewWidth:(double)width
{
  [(RCSplitViewController *)self _totalSidebarWidth];
  if (width <= 0.0)
  {
    return 0;
  }

  v5 = v4;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v6 minimumSecondaryColumnWidth];
  v8 = v7;

  return width - v5 < v8;
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
  view = [v3 view];
  window = [view window];
  if (window)
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
  view = [v3 view];
  window = [view window];

  [(RCSplitViewController *)self supplementaryColumnWidth];
  if (window)
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