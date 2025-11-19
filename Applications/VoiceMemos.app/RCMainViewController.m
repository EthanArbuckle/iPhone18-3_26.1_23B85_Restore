@interface RCMainViewController
- (BOOL)_canDelete;
- (BOOL)_canDuplicate;
- (BOOL)_isRecordingOrBlockedByModal;
- (BOOL)_libraryIsEditing;
- (BOOL)canDelete;
- (BOOL)canDuplicateRecording;
- (BOOL)canEditRecording;
- (BOOL)canHandleCancel;
- (BOOL)canHandleCustomAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canHandleDone;
- (BOOL)canJumpBackward;
- (BOOL)canJumpForward;
- (BOOL)canMoveRecordingsWithUUIDs:(id)a3 toFolderWithUUID:(id)a4 toFolderType:(int64_t)a5 fromFolderUUID:(id)a6;
- (BOOL)canMoveSelectedRecordingsFromFolderWithUUID:(id)a3 toFolderWithDisplayModel:(id)a4 excludedFolderUUIDsForSelection:(id)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPlayRecording;
- (BOOL)canRenameRecording;
- (BOOL)canShareRecording;
- (BOOL)canStartNewRecording;
- (BOOL)canSwipeToNavigateBack;
- (BOOL)canToggleEnhanceRecording;
- (BOOL)canToggleFavoriteRecording;
- (BOOL)canToggleRemoveSilence;
- (BOOL)canToggleSidebar;
- (BOOL)canToggleSpeechIsolator;
- (BOOL)canTrimRecording;
- (BOOL)currentSelectionHasSilenceRemoved;
- (BOOL)currentSelectionHasSpatialRecording;
- (BOOL)currentSelectionHasSpeechIsolatorEnabled;
- (BOOL)currentSelectionIsEnhanced;
- (BOOL)currentSelectionIsFavorite;
- (BOOL)isEditingInFlightForUUID:(id)a3;
- (BOOL)isFavoriteForUUID:(id)a3;
- (BOOL)isPlayingForUUID:(id)a3;
- (BOOL)isQuickRecordingWorkflowDismissal;
- (BOOL)isRecording;
- (BOOL)isShowingRecentlyDeleted;
- (BOOL)isSilencing;
- (BOOL)remoteToggleShouldPauseRecording;
- (BOOL)toggleRecording;
- (NSString)selectedUUID;
- (RCFolderSelectionContainerViewController)presentedSelectFolderViewController;
- (RCMainViewController)initWithCoder:(id)a3;
- (RCMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (RCMainViewControllerDelegate)mainViewControllerDelegate;
- (RCPlaybackSettings)playbackSettings;
- (RCPlaybackSettingsViewController)presentedPlaybackSettingsViewController;
- (RCPlaybackViewController)playbackViewController;
- (UIAlertAction)createNewFolderSaveAction;
- (UIAlertAction)renameFolderSaveAction;
- (UIViewController)presentedConfirmationController;
- (UIViewController)presentingPlaybackSettingsViewController;
- (VMAudioPlayer)audioPlayer;
- (VMAudioRecorder)audioRecorder;
- (double)currentTime;
- (id)_stringForAudioEditingStatus:(int)a3;
- (id)_uuidOfRecordingForPlaybackActivities;
- (id)activeFolderViewController;
- (id)availableQuickActions;
- (id)contentScrollView;
- (id)folderUUIDsToExcludeWhenMovingRecordingUUIDs:(id)a3;
- (id)moveToFolderContainerViewControllerWithUUIDs:(id)a3;
- (id)overviewWaveformViewController;
- (id)platterViewControllerForPresentationStyle:(unint64_t)a3;
- (id)recordingCardNavigationController;
- (id)recordingCardNavigationItem;
- (id)recordingInProgressUUID;
- (id)selectedComposition;
- (id)waveformViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_axAnnounceDidSetEnhanced:(BOOL)a3;
- (void)_commonInit;
- (void)_dismissCardView:(id)a3;
- (void)_dismissShareMemoVCIfNeededForDeletedUUIDs:(id)a3;
- (void)_displayMultiLayerAlertIfNeeded;
- (void)_endDescriptionViewTextEditing;
- (void)_hideNavigationItemTitle;
- (void)_myPresentViewController:(id)a3 sourceController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_newFolderTextDidChange:(id)a3;
- (void)_openForModifyRecordingWithUUID:(id)a3 enterTrim:(BOOL)a4;
- (void)_prepareToDisplayCardViewWithCompletionBlock:(id)a3;
- (void)_presentCardViewWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_presentMoveToFolderUIForRecordingWithUUID:(id)a3;
- (void)_presentMoveToFolderUIForRecordingsWithUUIDs:(id)a3;
- (void)_presentNameTakenAlertWithName:(id)a3 sourceController:(id)a4;
- (void)_presentPlaybackSettingsUIWithSource:(id)a3 UUID:(id)a4;
- (void)_presentViewController:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 widthHeightConstraintConstant:(double)a6 completion:(id)a7;
- (void)_processMoveOfUUID:(id)a3 toBuiltInFolderOfType:(int64_t)a4;
- (void)_removeFromUserFolderRecordingsWithUUIDs:(id)a3;
- (void)_renamingTextDidChange:(id)a3;
- (void)_restyleCardViewAndReparentIfNeeded;
- (void)_selectRecordingWithUUID:(id)a3 inRecordingsCollectionViewController:(id)a4;
- (void)_setCorrectOriginalFolderForRecordingWithUUID:(id)a3 folderType:(int64_t)a4 userFolderName:(id)a5;
- (void)_showNavigationItemTitle;
- (void)_startCapturing:(id)a3 completion:(id)a4;
- (void)_styleView;
- (void)_switchToCapturingFromPreviousActivityType:(int64_t)a3 displayModel:(id)a4 waveformDataSource:(id)a5 isReplaceOrAppend:(BOOL)a6;
- (void)_switchToEditingFromPreviousActivityType:(int64_t)a3 displayModel:(id)a4 withComposition:(id)a5 enterTrim:(BOOL)a6;
- (void)_switchToIdleFromPreviousActivityType:(int64_t)a3 fromSubActivityType:(int64_t)a4 toSubActivityType:(int64_t)a5 displayModel:(id)a6 withUUID:(id)a7;
- (void)_switchToPlayingBackFromPreviousActivityType:(int64_t)a3 withUUID:(id)a4;
- (void)_transitionToBrowsing:(id)a3;
- (void)_transitionToCaptureAndModifyWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_updateControllersToEditingInFlight:(BOOL)a3 progress:(float)a4 forUUID:(id)a5;
- (void)backupTimerFiredForUUID:(id)a3;
- (void)cancelTrimMode;
- (void)captureFailedWithError:(id)a3;
- (void)closeSidebar;
- (void)confirmEraseAllWithSourceController:(id)a3 source:(id)a4 eraseAllDeleted:(BOOL)a5;
- (void)confirmEraseSelectedWithSourceController:(id)a3 source:(id)a4 eraseAllDeleted:(BOOL)a5;
- (void)confirmEraseWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 eraseAllDeleted:(BOOL)a6;
- (void)confirmRecoverAllWithSourceController:(id)a3 source:(id)a4;
- (void)confirmRecoverSelectedWithSourceController:(id)a3 source:(id)a4;
- (void)confirmRecoverWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 force:(BOOL)a6;
- (void)copyTranscript:(id)a3;
- (void)delete:(id)a3;
- (void)deleteFolder:(id)a3 controller:(id)a4 completionBlock:(id)a5;
- (void)deleteRecordingsWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 showInfo:(BOOL)a6;
- (void)didEndDragSession;
- (void)didExitTrimMode;
- (void)didHidePlaybackSettingsViewController;
- (void)didReturnToFoldersList;
- (void)didSelectFolderOfType:(int64_t)a3;
- (void)didSelectForUUID:(id)a3 resetPosition:(BOOL)a4 force:(BOOL)a5;
- (void)didTransitionWithTransitionInfo:(id)a3;
- (void)didUpdateCurrentRecordingDisplayModel;
- (void)didUpdateNavigationBarVisibility;
- (void)didUpdateRecordingViewDisplayStyle;
- (void)didUpdateToStatus:(int)a3 progress:(float)a4 forRecordingWithUUID:(id)a5;
- (void)duplicateRecording;
- (void)editRecording;
- (void)enableUndoFirstResponder;
- (void)endEditing;
- (void)endRecording;
- (void)eraseRecording;
- (void)exitTrimMode;
- (void)finishInitialSetup:(id)a3 goToAllRecordings:(BOOL)a4;
- (void)finishedEditingWithNewRecordingUUID:(id)a3;
- (void)goToAllRecordingsIfNeeded:(BOOL)a3 completion:(id)a4;
- (void)goToFolderOfType:(int64_t)a3 withName:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)goToRecentlyDeletedIfNeededWithCompletion:(id)a3;
- (void)handleCancel;
- (void)handleDone;
- (void)handleEndOfWelcome;
- (void)hideFolderSelectionViewController;
- (void)hidePlaybackSettingsViewController;
- (void)jumpSelectionBackward;
- (void)jumpSelectionForward;
- (void)libraryWillChangeEditingState:(BOOL)a3;
- (void)loadView;
- (void)moveFolder:(id)a3 toDestinationIndexPath:(id)a4;
- (void)moveRecordingsWithUUIDs:(id)a3 fromFolderOfType:(int64_t)a4 toBuiltInFolderOfType:(int64_t)a5;
- (void)moveRecordingsWithUUIDs:(id)a3 toBuiltInFolderOfType:(int64_t)a4 source:(id)a5;
- (void)moveRecordingsWithUUIDs:(id)a3 toFolderWithUUID:(id)a4;
- (void)moveRecordingsWithUUIDs:(id)a3 toUserFolderNamed:(id)a4 source:(id)a5;
- (void)openSidebar;
- (void)pauseRecording;
- (void)performAction:(int64_t)a3 atPosition:(double)a4 forUUID:(id)a5 sourceController:(id)a6 source:(id)a7 trackIndex:(unint64_t)a8;
- (void)performClearAllRecentlyDeleted;
- (void)performDelayedSetup;
- (void)performRenameWithNewTitle:(id)a3 forUUID:(id)a4;
- (void)playRecording;
- (void)playRecordingWithUUID:(id)a3;
- (void)playbackSettingsViewController:(id)a3 contentSizeChanged:(CGSize)a4;
- (void)recordingDidEnd;
- (void)recordingDurationUpdated:(double)a3;
- (void)recoverRecording;
- (void)recoverRecordingsWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 force:(BOOL)a6;
- (void)refreshDisplayWithDisplayModel:(id)a3;
- (void)reloadWaveformsFromComposition:(id)a3;
- (void)renameDescriptionViewTitleTextField:(id)a3 withUUID:(id)a4;
- (void)renameFolder:(id)a3 toName:(id)a4;
- (void)renameRecording;
- (void)replaceRecording:(unint64_t)a3;
- (void)restyle;
- (void)resumeRecording:(unint64_t)a3;
- (void)saveAsNewDoneButtonAction:(BOOL)a3;
- (void)selectNewRecordingForDismiss;
- (void)selectRecordingWithUUID:(id)a3 returnToBrowse:(BOOL)a4;
- (void)separateRecordingLayers:(id)a3;
- (void)setCurrentTime:(double)a3 withUUID:(id)a4;
- (void)setEnhanced:(BOOL)a3 forUUID:(id)a4;
- (void)setFavorite:(BOOL)a3 forRecordingWithUUID:(id)a4;
- (void)setFavorite:(BOOL)a3 forRecordingsWithUUIDs:(id)a4;
- (void)setForegroundCompletionBlock:(id)a3;
- (void)setIsInForeground:(BOOL)a3;
- (void)setLayerMix:(double)a3 forUUID:(id)a4;
- (void)setPlaybackSpeed:(double)a3 forUUID:(id)a4;
- (void)setRemoveSilence:(BOOL)a3 forUUID:(id)a4;
- (void)setSpeechIsolatorEnabled:(BOOL)a3 forUUID:(id)a4;
- (void)setSpeechIsolatorValue:(float)a3 forUUID:(id)a4;
- (void)setState:(int64_t)a3 withOptions:(unint64_t)a4 completion:(id)a5;
- (void)shareRecording:(id)a3;
- (void)shouldEnableTrimSave:(BOOL)a3;
- (void)showNewFolderUIFromController:(id)a3;
- (void)showRenamingControllerWithFolderName:(id)a3 controller:(id)a4;
- (void)startNewRecordingAction;
- (void)stopPlayback;
- (void)toggleEnhanceRecording;
- (void)toggleEnhanceRecordingForUUID:(id)a3;
- (void)toggleFavoriteForUUID:(id)a3;
- (void)toggleFavoriteRecording;
- (void)toggleRemoveSilence;
- (void)toggleRemoveSilenceForUUID:(id)a3;
- (void)toggleSpeechIsolator;
- (void)toggleSpeechIsolatorEnabledForUUID:(id)a3;
- (void)toggleSpeechIsolatorForUUID:(id)a3;
- (void)toggleTranscriptView;
- (void)trimRecording;
- (void)undo;
- (void)updateLibraryViewInEditModeForMedusa;
- (void)updateMenuBarWindowTitle;
- (void)updateNavigationItemForCurrentState;
- (void)updatePlaybackContentUnavailableViewIfNeeded;
- (void)updatePlaybackSettings;
- (void)updateQuickActions;
- (void)updateUndoButtonStateFromUndoManager;
- (void)userDidDeleteRecordingsWithUUIDs:(id)a3;
- (void)userDidEraseRecordingsWithUUIDs:(id)a3;
- (void)userDidRecoverRecordingsWithUUIDs:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wasDeselectedForUUID:(id)a3;
- (void)waveformTimeUpdated:(double)a3;
- (void)willBeginDragSession;
- (void)willTransitionFromHorizontalSizeClass:(int64_t)a3 toHorizontalSizeClass:(int64_t)a4;
@end

@implementation RCMainViewController

- (void)_commonInit
{
  v11 = objc_opt_new();
  [v11 setLibraryActionHandler:self];
  [v11 setRecordingViewControllerDelegate:self];
  [v11 setSelectionDelegate:self];
  [v11 setBrowsingDelegate:self];
  [(RCMainViewController *)self setBrowseFoldersViewController:v11];
  [(RCMainViewController *)self addChildViewController:v11];
  [v11 didMoveToParentViewController:self];
  v3 = objc_opt_new();
  mainControllerHelper = self->_mainControllerHelper;
  self->_mainControllerHelper = v3;

  [(RCMainControllerHelper *)self->_mainControllerHelper setDelegate:self];
  v5 = +[RCRecordingsModelInteractor sharedRecordingsModelInteractor];
  recordingsModelInteractor = self->_recordingsModelInteractor;
  self->_recordingsModelInteractor = v5;

  v7 = objc_opt_new();
  currentUndoManager = self->_currentUndoManager;
  self->_currentUndoManager = v7;

  [v11 setUndoManager:self->_currentUndoManager];
  v9 = objc_opt_new();
  editingProgressItems = self->_editingProgressItems;
  self->_editingProgressItems = v9;

  self->_shouldStopPlaybackBeforeNavigating = 1;
}

- (id)contentScrollView
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 collectionViewIfLoaded];

  return v3;
}

- (void)stopPlayback
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  [v2 stopPlayback];
}

- (RCPlaybackViewController)playbackViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackViewController);

  return WeakRetained;
}

- (void)updatePlaybackContentUnavailableViewIfNeeded
{
  v3 = [(RCMainViewController *)self playbackViewController];

  if (v3)
  {
    v4 = [(RCMainViewController *)self browseFoldersViewController];
    v14 = [v4 activeRecordingsCollectionViewController];

    v5 = [v14 recordingsDataCoordinator];
    v6 = [v5 recordingDataArray];
    v7 = [v6 count];
    v8 = v7 == 0;

    v9 = [(RCMainViewController *)self playbackViewController];
    v10 = [v9 uuidBeingDisplayed];

    if (!v10)
    {
      if ([v14 isEditing])
      {
        v8 = 1;
      }

      else
      {
        v11 = [v14 willSelectRecordingAfterExitingEditMode];
        if (v7)
        {
          v8 = v11;
        }

        else
        {
          v8 = 1;
        }
      }
    }

    if (v10)
    {
      v12 = -1;
    }

    else
    {
      v12 = !v8;
    }

    v13 = [(RCMainViewController *)self playbackViewController];
    [v13 updateContentUnavailableViewState:v12];

    [(RCMainViewController *)self updateMenuBarWindowTitle];
  }
}

- (void)handleEndOfWelcome
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  [v4 becomeFirstResponder];

  [(RCMainViewController *)self updateQuickActions];
}

- (void)updateQuickActions
{
  v4 = +[UIApplication sharedApplication];
  v3 = [(RCMainViewController *)self availableQuickActions];
  [v4 setShortcutItems:v3];
}

- (id)availableQuickActions
{
  v3 = +[NSMutableArray array];
  if (![(RCMainViewController *)self _isRecordingOrBlockedByModal])
  {
    v4 = [UIApplicationShortcutIcon iconWithSystemImageName:@"largecircle.fill.circle"];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"START_RECORDING_QUICK_ACTION_TITLE" value:&stru_100295BB8 table:@"Localizable-OrbHW"];

    v7 = [[UIApplicationShortcutItem alloc] initWithType:@"com.apple.VoiceMemos.NewRecording" localizedTitle:v6 localizedSubtitle:0 icon:v4 userInfo:0];
    [v3 addObject:v7];
  }

  if ([(RCMainViewController *)self _shouldPresentPlaybackQuickActions])
  {
    v18 = +[RCApplicationModel sharedApplicationModel];
    v8 = [v18 recordings];
    for (i = 0; i != 3; ++i)
    {
      if (i >= [v8 count])
      {
        break;
      }

      v10 = [v8 objectAtIndexedSubscript:i];
      v11 = [v10 title];
      v12 = [v10 uuid];
      if ([v11 length] && objc_msgSend(v12, "length"))
      {
        v13 = [UIApplicationShortcutIcon iconWithSystemImageName:@"play.circle"];
        v14 = [UIApplicationShortcutItem alloc];
        v19 = @"uniqueID";
        v20 = v12;
        v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v16 = [v14 initWithType:@"com.apple.VoiceMemos.PlayRecording" localizedTitle:v11 localizedSubtitle:0 icon:v13 userInfo:v15];

        [v3 addObject:v16];
      }
    }
  }

  return v3;
}

- (BOOL)_isRecordingOrBlockedByModal
{
  v3 = [(RCMainViewController *)self mainControllerHelper];
  v4 = [v3 isRecording];

  v5 = [(RCMainViewController *)self mainViewControllerDelegate];
  LOBYTE(v3) = [v5 modalMustShowOrIsShowing];

  return (v4 | v3) & 1;
}

- (RCMainViewControllerDelegate)mainViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewControllerDelegate);

  return WeakRetained;
}

- (BOOL)_libraryIsEditing
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 activeRecordingsCollectionViewController];
  v4 = [v3 isEditing];

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (double)currentTime
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)performDelayedSetup
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  [v4 performDelayedSetup];

  v5 = [(RCMainViewController *)self navigationItem];
  [v5 setBackButtonDisplayMode:2];

  v6 = [(RCMainViewController *)self mainControllerHelper];
  [v6 startMonitoringFinalizingRecordings];
}

- (void)updateNavigationItemForCurrentState
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v2 currentActiveFolderViewController];

  v3 = [v5 viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {
    [v5 updateNavigationItemForCurrentState];
  }
}

- (VMAudioRecorder)audioRecorder
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 audioRecorder];

  return v3;
}

- (VMAudioPlayer)audioPlayer
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 audioPlayer];

  return v3;
}

- (id)recordingInProgressUUID
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 recordingInProgressUUID];

  return v3;
}

- (void)openSidebar
{
  v2 = [(RCMainViewController *)self splitViewController];
  [v2 showColumn:0];
}

- (void)closeSidebar
{
  v3 = [(RCMainViewController *)self splitViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(RCMainViewController *)self splitViewController];
    if ([v6 isCollapsedAndShowingPrimary])
    {
      [(RCMainViewController *)self goToAllRecordingsIfNeeded:1 completion:0];
    }

    else if (([v6 isCollapsed] & 1) == 0)
    {
      v5 = [(RCMainViewController *)self splitViewController];
      [v5 hideColumn:0];
    }
  }
}

- (void)goToFolderOfType:(int64_t)a3 withName:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v13 = a4;
  v10 = a6;
  v11 = [(RCMainViewController *)self browseFoldersViewController];
  v12 = v11;
  if (a3 == 4)
  {
    [v11 goToUserFolderWithName:v13 animated:v7 completion:v10];
  }

  else
  {
    [v11 goToBuiltInFolderOfType:a3 animated:v7 completion:v10];
  }
}

- (id)activeFolderViewController
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 currentActiveFolderViewController];

  return v3;
}

- (RCPlaybackSettings)playbackSettings
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 currentRecordingDisplayModel];
  v4 = [v3 UUID];

  if (v4)
  {
    v5 = [v2 playbackSettingsForUUID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setState:(int64_t)a3 withOptions:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3 == 1)
    {
      v9 = v8;
      [(RCMainViewController *)self _transitionToCaptureAndModifyWithOptions:a4 completion:v8];
    }

    else
    {
      if (a3)
      {
        goto LABEL_7;
      }

      v9 = v8;
      [(RCMainViewController *)self _transitionToBrowsing:v8];
    }

    v8 = v9;
  }

LABEL_7:
}

- (void)setIsInForeground:(BOOL)a3
{
  if (self->_isInForeground != a3)
  {
    self->_isInForeground = a3;
    if (a3)
    {
      v4 = [(RCMainViewController *)self foregroundCompletionBlock];

      if (v4)
      {
        v5 = [(RCMainViewController *)self foregroundCompletionBlock];
        v5[2]();

        foregroundCompletionBlock = self->_foregroundCompletionBlock;
        self->_foregroundCompletionBlock = 0;
      }
    }
  }
}

- (void)setForegroundCompletionBlock:(id)a3
{
  v4 = a3;
  if (self->_foregroundCompletionBlock)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA710(v5);
    }
  }

  v6 = [v4 copy];
  foregroundCompletionBlock = self->_foregroundCompletionBlock;
  self->_foregroundCompletionBlock = v6;

  v8 = [(RCMainViewController *)self isInForeground];
  if (v4 && v8)
  {
    v4[2](v4);
    v9 = self->_foregroundCompletionBlock;
    self->_foregroundCompletionBlock = 0;
  }
}

- (BOOL)isRecording
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 isRecording];

  return v3;
}

- (BOOL)isSilencing
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 isSilencing];

  return v3;
}

- (RCMainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = RCMainViewController;
  v4 = [(RCMainViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(RCMainViewController *)v4 _commonInit];
  }

  return v5;
}

- (RCMainViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCMainViewController;
  v3 = [(RCMainViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RCMainViewController *)v3 _commonInit];
  }

  return v4;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = RCMainViewController;
  [(RCMainViewController *)&v7 loadView];
  v3 = objc_opt_new();
  [(RCMainViewController *)self setView:v3];
  [(RCMainViewController *)self _styleView];
  v4 = [(RCMainViewController *)self navigationItem];
  [v4 setBackButtonDisplayMode:2];

  v5 = [(RCMainViewController *)self view];
  [v5 setNeedsUpdateConstraints];

  v6 = [(RCMainViewController *)self view];
  [v6 setAccessibilityIdentifier:@"BrowseFoldersView"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCMainViewController *)self browseFoldersViewController];
  v6 = [v5 view];
  v7 = [(RCMainViewController *)self view];
  [v7 setBrowseFoldersView:v6];

  self->_viewIsAppearingOrDisappearing = 1;
  v9.receiver = self;
  v9.super_class = RCMainViewController;
  [(RCMainViewController *)&v9 viewWillAppear:v3];
  [(RCMainViewController *)self _styleView];
  v8 = [(RCMainViewController *)self navigationController];
  [v8 setToolbarHidden:0 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCMainViewController;
  [(RCMainViewController *)&v4 viewDidAppear:a3];
  self->_viewIsAppearingOrDisappearing = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  self->_viewIsAppearingOrDisappearing = 1;
  v3.receiver = self;
  v3.super_class = RCMainViewController;
  [(RCMainViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCMainViewController;
  [(RCMainViewController *)&v4 viewDidDisappear:a3];
  self->_viewIsAppearingOrDisappearing = 0;
}

- (void)finishInitialSetup:(id)a3 goToAllRecordings:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = [(RCMainViewController *)self browseFoldersViewController];
    [v7 goToBuiltInFolderOfType:0 animated:0 completion:v8];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v6;
    v6[2]();
  }

  v6 = v8;
LABEL_6:
}

- (void)restyle
{
  [(RCMainViewController *)self _restyleCardViewAndReparentIfNeeded];
  v3 = [(RCMainViewController *)self playbackViewController];
  [v3 restyle];

  v4 = [(RCMainViewController *)self browseFoldersViewController];
  [v4 restyle];

  [(RCMainViewController *)self _styleView];

  [(RCMainViewController *)self updateLibraryViewInEditModeForMedusa];
}

- (void)willTransitionFromHorizontalSizeClass:(int64_t)a3 toHorizontalSizeClass:(int64_t)a4
{
  [(RCMainViewController *)self updatePlaybackSettings];
  v6 = [(RCMainViewController *)self presentedPlaybackSettingsViewController];

  if (v6)
  {
    [(RCMainViewController *)self hidePlaybackSettingsViewController];
  }

  v7 = +[RCShareMemoViewController presentedController];

  if (v7)
  {
    v8 = [(RCMainViewController *)self presentedViewController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  v9 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v10 = [v9 presentedViewController];

  if (a4 == 1 && v10)
  {
    v11 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [v11 selectLargeDetent];
  }
}

- (void)updateLibraryViewInEditModeForMedusa
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 recordingViewController];
  v5 = [v4 isEditing];

  if (v5)
  {
    v7 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v7 activeRecordingsCollectionViewController];
    [v6 updateToolbarAndFooterView];
  }
}

- (void)_restyleCardViewAndReparentIfNeeded
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    v5 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [v5 restyleRecordingCardSheetPresentationController];

    v7 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v7 recordingViewController];
    [v6 restyle];
  }
}

- (void)_showNavigationItemTitle
{
  v4 = [(RCMainViewController *)self navigationItem];
  [v4 setLargeTitleDisplayMode:1];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DEFAULT_NAVIGATION_TITLE" value:&stru_100295BB8 table:0];
  [v4 setTitle:v3];

  [v4 _setSupportsTwoLineLargeTitles:1];
}

- (void)_hideNavigationItemTitle
{
  v2 = [(RCMainViewController *)self navigationItem];
  [v2 setLargeTitleDisplayMode:2];
  [v2 setTitle:0];
}

- (void)_styleView
{
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v4 usesLargeTitles] && objc_msgSend(v4, "showsNavigationItemTitle"))
  {
    [(RCMainViewController *)self _showNavigationItemTitle];
  }

  else
  {
    [(RCMainViewController *)self _hideNavigationItemTitle];
  }

  v3 = [(RCMainViewController *)self view];
  [v3 restyle];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = RCMainViewController;
  v7 = a4;
  [(RCMainViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009F000;
  v8[3] = &unk_10028A488;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (id)selectedComposition
{
  v3 = [(RCMainControllerHelper *)self->_mainControllerHelper currentRecordingDisplayModel];
  v4 = [v3 UUID];

  v5 = [(RCMainControllerHelper *)self->_mainControllerHelper compositionForUUID:v4];

  return v5;
}

- (void)saveAsNewDoneButtonAction:(BOOL)a3
{
  v3 = a3;
  v4 = [(RCMainViewController *)self mainControllerHelper];
  [v4 doneButtonShouldSaveAsNew:v3];
}

- (void)_transitionToBrowsing:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self mainControllerHelper];
  [v5 exitEditMode];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10009F2D0;
  v19 = &unk_10028BC38;
  v20 = self;
  v21 = v4;
  v6 = v4;
  [(RCMainViewController *)self _dismissCardView:&v16];
  v7 = [(RCMainViewController *)self browseFoldersViewController:v16];
  v8 = [v7 recordingViewController];

  v9 = [v8 uuidBeingDisplayed];
  v10 = [(RCMainViewController *)self browseFoldersViewController];
  v11 = [v10 recordingViewController];
  [v11 reset];

  v12 = [(RCMainViewController *)self browseFoldersViewController];
  v13 = [v12 selectedRecording];
  v14 = [v13 uuid];

  if (!v14)
  {
    v15 = [(RCMainViewController *)self mainControllerHelper];
    v14 = [v15 uuidOfPlayingRecording];

    if (!v14)
    {
      v14 = v9;
    }
  }

  [(RCMainViewController *)self didSelectForUUID:v14 resetPosition:0 force:1];
}

- (void)_transitionToCaptureAndModifyWithOptions:(unint64_t)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009F3BC;
  v7[3] = &unk_10028A510;
  v8 = a4;
  v6 = v8;
  [(RCMainViewController *)self _presentCardViewWithOptions:a3 completion:v7];
}

- (void)_presentCardViewWithOptions:(unint64_t)a3 completion:(id)a4
{
  v4 = a3;
  v24 = a4;
  v6 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v7 = [v6 presentedViewController];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];

  v10 = [v9 defaultSceneDelegate];
  v11 = [v10 rootSplitViewController];

  if (!v7 && v11)
  {
    v12 = [_TtC10VoiceMemos33RCRecordingCardPresentationHelper alloc];
    v13 = [(RCMainViewController *)self browseFoldersViewController];
    v14 = [(RCMainViewController *)self playbackViewController];
    v15 = [(RCRecordingCardPresentationHelper *)v12 initWithSplitViewController:v11 browseFoldersViewController:v13 playbackViewController:v14];
    [(RCMainViewController *)self setRecordingCardPresentationHelper:v15];

    v16 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [v16 presentCardFrom:v11 isEditMode:v4 & 1 completion:v24];

    v17 = [(RCMainViewController *)self undoManager];
    [(RCMainViewController *)self setMainUndoManager:v17];

    v18 = [(RCMainViewController *)self recordingCardPresentationHelper];
    v19 = [v18 presentedCardViewController];
    v20 = [v19 undoManager];
    currentUndoManager = self->_currentUndoManager;
    self->_currentUndoManager = v20;

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:self selector:"updateUndoButtonStateFromUndoManager" name:NSUndoManagerDidUndoChangeNotification object:self->_currentUndoManager];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:self selector:"updateUndoButtonStateFromUndoManager" name:NSUndoManagerDidRedoChangeNotification object:self->_currentUndoManager];
  }
}

- (void)_displayMultiLayerAlertIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"RCLayeredRecordingsSyncAlertWasDismissed"];
  if (RCOverdubRecordingIsEnabled())
  {
    if ((v4 & 1) == 0)
    {
      v5 = [(RCMainViewController *)self mainControllerHelper];
      v6 = [v5 willMigrateFromSingleLayerToMultiLayer];

      if (v6)
      {
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"NEW_LAYERED_RECORDING_ALERT_TITLE" value:&stru_100295BB8 table:0];

        v9 = +[NSBundle mainBundle];
        v10 = [v9 localizedStringForKey:@"NEW_LAYERED_RECORDING_ALERT_MESSAGE" value:&stru_100295BB8 table:0];

        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = sub_10009F77C;
        v15 = &unk_10028A650;
        v16 = v3;
        v17 = self;
        v11 = [UIAlertController rc_OKAlertControllerWithTitle:v8 message:v10 handler:&v12];
        [v11 rc_showInMainWindow];
      }
    }
  }
}

- (void)goToAllRecordingsIfNeeded:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v13 = a4;
  v6 = [(RCMainViewController *)self browseFoldersViewController];
  v7 = [v6 currentActiveFolderViewController];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = [v7 supportsRecording];
  v10 = [v8 folderType];
  v11 = !v4;
  if (!v10)
  {
    v11 = 1;
  }

  if (v9 && v11)
  {
    if (v13)
    {
      v13[2]();
    }
  }

  else
  {
LABEL_8:
    v12 = [(RCMainViewController *)self browseFoldersViewController];
    [v12 goToBuiltInFolderOfType:0 animated:0 completion:v13];
  }
}

- (void)goToRecentlyDeletedIfNeededWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 currentActiveFolderViewController];
  v6 = [v5 folderType];
  if (v5 && v6 == 3)
  {
    if (v8)
    {
      v8[2]();
    }
  }

  else
  {
    v7 = [(RCMainViewController *)self browseFoldersViewController];
    [v7 goToBuiltInFolderOfType:3 animated:0 completion:v8];
  }
}

- (BOOL)toggleRecording
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 currentActiveFolderViewController];
  v5 = [v4 recordingsCollectionViewController];

  v6 = [(RCMainViewController *)self browseFoldersViewController];
  if ([v6 isShowingRecentlyDeleted])
  {

LABEL_4:
    v8 = UIAccessibilityAnnouncementNotification;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"AX_RECORDING_UNAVAILABLE" value:&stru_100295BB8 table:0];
    UIAccessibilityPostNotification(v8, v10);

    v11 = 0;
    goto LABEL_9;
  }

  v7 = [v5 isEditing];

  if (v7)
  {
    goto LABEL_4;
  }

  v12 = [(RCMainViewController *)self mainControllerHelper];
  v13 = [v12 isRecording];

  if (v13)
  {
    [(RCMainViewController *)self endRecording];
  }

  else
  {
    [(RCMainViewController *)self performAction:3 atPosition:0 forUUID:0 sourceController:0 source:0.0];
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)_startCapturing:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCMainViewController *)self mainControllerHelper];
  v9 = [v8 isRecording];

  if (v9)
  {
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009FBC8;
    v10[3] = &unk_10028A538;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    [(RCMainViewController *)self goToAllRecordingsIfNeeded:0 completion:v10];
  }
}

- (void)pauseRecording
{
  v3 = [(RCMainViewController *)self mainControllerHelper];
  [v3 pauseCapturing];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
}

- (void)resumeRecording:(unint64_t)a3
{
  v4 = [(RCMainViewController *)self mainControllerHelper];
  [v4 resumeCapturing:a3];
}

- (void)replaceRecording:(unint64_t)a3
{
  v4 = [(RCMainViewController *)self mainControllerHelper];
  [v4 replaceCapturing:a3];
}

- (void)endRecording
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  [v2 stopCapturing];
}

- (void)endEditing
{
  if ([(RCMainViewController *)self state]== 1)
  {
    v3 = [(RCMainViewController *)self browseFoldersViewController];
    v4 = [v3 recordingViewController];
    v5 = [v4 view];
    v6 = [v5 recordingViewState];

    if (v6 == 8)
    {
      [(RCMainViewController *)self cancelTrimMode];
    }
  }

  [(RCMainViewController *)self setState:0];
}

- (void)playRecordingWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self browseFoldersViewController];
  v6 = [v5 recordingViewController];
  v7 = [v6 uuidBeingDisplayed];
  v8 = [v7 isEqualToString:v4];

  if ((v8 & 1) == 0)
  {
    [(RCMainViewController *)self endEditing];
  }

  v9 = [(RCMainViewController *)self mainControllerHelper];
  [v9 playbackForUUID:v4];

  [(RCMainViewController *)self setShouldStopPlaybackBeforeNavigating:0];
  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A00B4;
  v29[3] = &unk_10028B0D0;
  objc_copyWeak(&v31, &location);
  v10 = v4;
  v30 = v10;
  v11 = objc_retainBlock(v29);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000A01E8;
  v26[3] = &unk_10028C0A0;
  objc_copyWeak(&v28, &location);
  v12 = v11;
  v27 = v12;
  v13 = objc_retainBlock(v26);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000A0304;
  v22 = &unk_10028A538;
  v23 = self;
  v14 = v10;
  v24 = v14;
  v15 = v13;
  v25 = v15;
  v16 = objc_retainBlock(&v19);
  v17 = [(RCMainViewController *)self recordingCardPresentationHelper:v19];
  v18 = [v17 presentedViewController];

  if (v18)
  {
    (v16[2])(v16);
  }

  else
  {
    [(RCMainViewController *)self dismissViewControllerAnimated:0 completion:v16];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)exitTrimMode
{
  v3 = [(RCMainViewController *)self mainControllerHelper];
  [v3 exitTrimMode];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
}

- (void)didExitTrimMode
{
  v2 = [(RCMainViewController *)self recordingCardPresentationHelper];
  [v2 restyleRecordingCardSheetPresentationController];
}

- (void)shouldEnableTrimSave:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v5 recordingViewController];
  [v4 updateTrimSaveState:v3];
}

- (void)enableUndoFirstResponder
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 supportsMainViewControllerUndo];

  if (v4)
  {

    [(RCMainViewController *)self becomeFirstResponder];
  }

  else
  {
    v6 = [(RCMainViewController *)self recordingCardPresentationHelper];
    v5 = [v6 presentedViewController];
    [v5 becomeFirstResponder];
  }
}

- (void)didUpdateToStatus:(int)a3 progress:(float)a4 forRecordingWithUUID:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a3 == 1)
  {
    v18 = v8;
    v10 = [(RCMainViewController *)self editingProgressItems];
    v11 = [v10 objectForKeyedSubscript:v18];

    if (!v11)
    {
      v11 = objc_opt_new();
      [v11 setDelegate:self];
      [v11 setUUID:v18];
      v13 = [(RCMainViewController *)self editingProgressItems];
      [v13 setObject:v11 forKeyedSubscript:v18];

      v14 = [(RCMainViewController *)self mainControllerHelper];
      [v14 stopForUUID:v18];
    }

    *&v12 = a4;
    [v11 setProgress:v12];
    if ([v11 hasMetTimeThreshold])
    {
      *&v15 = a4;
      [(RCMainViewController *)self _updateControllersToEditingInFlight:1 progress:v18 forUUID:v15];
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    v18 = v8;
    v16 = [(RCMainViewController *)self editingProgressItems];
    [v16 removeObjectForKey:v18];

    LODWORD(v17) = 1.0;
    [(RCMainViewController *)self _updateControllersToEditingInFlight:0 progress:v18 forUUID:v17];
  }

  v9 = v18;
LABEL_10:
}

- (void)didUpdateCurrentRecordingDisplayModel
{
  v3 = [(RCMainViewController *)self mainControllerHelper];
  v4 = [v3 currentRecordingDisplayModel];

  if (v4)
  {
    v5 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v5 recordingViewController];
    v7 = [v6 view];
    [v7 setupSubviews];

    v8 = [(RCMainViewController *)self playbackViewController];
    v9 = [v8 view];
    [v9 setupSubviews];
  }

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (BOOL)isQuickRecordingWorkflowDismissal
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 recordingViewController];
  v4 = [v3 view];
  v5 = [v4 displayStyle] == 2;

  return v5;
}

- (void)backupTimerFiredForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self editingProgressItems];
  v10 = [v5 objectForKeyedSubscript:v4];

  if (v10)
  {
    [v10 progress];
    v7 = v6;
    v8 = [v10 UUID];
    LODWORD(v9) = v7;
    [(RCMainViewController *)self _updateControllersToEditingInFlight:1 progress:v8 forUUID:v9];
  }
}

- (void)_updateControllersToEditingInFlight:(BOOL)a3 progress:(float)a4 forUUID:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(RCMainViewController *)self browseFoldersViewController];
  v10 = [v9 activeRecordingsCollectionViewController];
  *&v11 = a4;
  [v10 editingIsInFlight:v6 progress:v8 forUUID:v11];

  v12 = [(RCMainViewController *)self browseFoldersViewController];
  v13 = [v12 recordingViewController];
  *&v14 = a4;
  [v13 updateToEditingInFlight:v6 progress:v8 forUUID:v14];

  v16 = [(RCMainViewController *)self playbackViewController];
  *&v15 = a4;
  [v16 updateToEditingInFlight:v6 progress:v8 forUUID:v15];
}

- (id)_stringForAudioEditingStatus:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_10028C310 + a3);
  }
}

- (BOOL)isShowingRecentlyDeleted
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 isShowingRecentlyDeleted];

  return v3;
}

- (BOOL)canSwipeToNavigateBack
{
  v3 = [(RCMainViewController *)self state];
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 currentActiveFolderViewController];

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  return !v6;
}

- (void)updateUndoButtonStateFromUndoManager
{
  v3 = [(RCUndoManager *)self->_currentUndoManager canUndo];
  v4 = [(RCMainViewController *)self mainControllerHelper];
  v5 = [v4 audioRecorder];
  v6 = [v5 isNewRecording];

  v8 = [(RCMainViewController *)self browseFoldersViewController];
  v7 = [v8 recordingViewController];
  [v7 updateUndoState:v3 isNewRecording:v6];
}

- (void)willBeginDragSession
{
  activeDragSessionCount = self->_activeDragSessionCount;
  if (!activeDragSessionCount)
  {
    v4 = [(RCMainViewController *)self playbackViewController];
    [v4 enableWaveformScrolling:0];

    activeDragSessionCount = self->_activeDragSessionCount;
  }

  self->_activeDragSessionCount = activeDragSessionCount + 1;
}

- (void)didEndDragSession
{
  v3 = self->_activeDragSessionCount - 1;
  self->_activeDragSessionCount = v3;
  if (!v3)
  {
    v4 = [(RCMainViewController *)self playbackViewController];
    [v4 enableWaveformScrolling:1];
  }
}

- (void)cancelTrimMode
{
  v3 = [(RCMainViewController *)self mainControllerHelper];
  [v3 cancelTrimModeWithDismissal:1];

  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 recordingViewController];
  [v5 cleanupAfterExitTrim];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
  v6 = [(RCMainViewController *)self recordingCardPresentationHelper];
  [v6 restyleRecordingCardSheetPresentationController];
}

- (id)waveformViewController
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 recordingViewController];
  v4 = [v3 waveformContainerViewControllers];
  v5 = [v4 objectAtIndexedSubscript:0];

  return v5;
}

- (id)overviewWaveformViewController
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 recordingViewController];
  v4 = [v3 overviewWaveformViewController];

  return v4;
}

- (BOOL)remoteToggleShouldPauseRecording
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 recordingViewController];
  v4 = [v3 recordingControlState] == 1;

  return v4;
}

- (void)recordingDidEnd
{
  [(RCMainViewController *)self setRecordingStartTimeInfo:0];

  [(RCMainViewController *)self saveAsNewDoneButtonAction:0];
}

- (void)finishedEditingWithNewRecordingUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self browseFoldersViewController];
  v6 = [v5 activeRecordingsCollectionViewController];

  [v6 prepareForAdditionOfNewRecordingWithUUID:v4];
}

- (void)updatePlaybackSettings
{
  v8 = [(RCMainViewController *)self playbackSettings];
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 recordingViewController];
  [v4 updateWithPlaybackSettings:v8];

  v5 = [(RCMainViewController *)self playbackViewController];
  [v5 updateWithPlaybackSettings:v8];

  v6 = [(RCMainViewController *)self presentedPlaybackSettingsViewController];
  v7 = v6;
  if (v6)
  {
    [v6 setPlaybackSettings:v8];
  }
}

- (void)waveformTimeUpdated:(double)a3
{
  v6 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v6 recordingViewController];
  v5 = [v4 view];
  [v5 setCurrentTime:a3];
}

- (void)didUpdateRecordingViewDisplayStyle
{
  v2 = [(RCMainViewController *)self recordingCardPresentationHelper];
  [v2 updateSelectedDetent];
}

- (void)didUpdateNavigationBarVisibility
{
  v2 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v3 = [v2 sheetPresentationController];

  [v3 invalidateDetents];
}

- (id)recordingCardNavigationController
{
  v2 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v3 = [v2 presentedCardViewController];
  v4 = [v3 navigationController];

  return v4;
}

- (id)recordingCardNavigationItem
{
  v2 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v3 = [v2 presentedCardViewController];
  v4 = [v3 navigationItem];

  return v4;
}

- (BOOL)isPlayingForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self mainControllerHelper];
  v6 = [v5 isPlayingForUUID:v4];

  return v6;
}

- (void)setFavorite:(BOOL)a3 forRecordingWithUUID:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = a4;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [(RCMainViewController *)self setFavorite:v4 forRecordingsWithUUIDs:v7, v8];
}

- (void)setFavorite:(BOOL)a3 forRecordingsWithUUIDs:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainViewController *)self mainControllerHelper];
  [v7 setFavorite:v4 forRecordingsWithUUIDs:v6];
}

- (BOOL)isFavoriteForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self mainControllerHelper];
  v6 = [v5 isFavoriteForUUID:v4];

  return v6;
}

- (void)toggleFavoriteForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self mainControllerHelper];
  [v5 toggleFavoriteForUUID:v4];
}

- (void)_dismissCardView:(id)a3
{
  v12 = a3;
  v4 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v5 = [v4 presentedViewController];

  if (v5)
  {
    v6 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [v6 dismissCardWithCompletion:v12];

    [(RCMainViewController *)self selectNewRecordingForDismiss];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSUndoManagerDidUndoChangeNotification object:self->_currentUndoManager];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NSUndoManagerDidRedoChangeNotification object:self->_currentUndoManager];

    v9 = [(RCMainViewController *)self view];
    [v9 setNeedsUpdateConstraints];

    v10 = [(RCMainViewController *)self mainUndoManager];
    currentUndoManager = self->_currentUndoManager;
    self->_currentUndoManager = v10;
  }
}

- (void)selectRecordingWithUUID:(id)a3 returnToBrowse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(RCMainViewController *)self isRecording])
  {
    v7 = [(RCMainViewController *)self browseFoldersViewController];
    v8 = [v7 currentActiveFolderViewController];

    v9 = [v8 recordingsCollectionViewController];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 presentsRecordingWithUUID:v6];
    }

    else
    {
      v11 = 0;
    }

    +[CATransaction begin];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A1548;
    v12[3] = &unk_10028C0C8;
    v12[4] = self;
    v13 = v6;
    v14 = v11;
    [CATransaction setCompletionBlock:v12];
    if (v4)
    {
      [(RCMainViewController *)self setState:0];
    }

    +[CATransaction commit];
  }
}

- (void)_selectRecordingWithUUID:(id)a3 inRecordingsCollectionViewController:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v6 uuidOfSelectedItem];
  if (([v7 isEqualToString:v8] & 1) == 0)
  {
    [v6 selectItemWithUUID:v8 animated:0];
    [(RCMainViewController *)self didSelectForUUID:v8 resetPosition:1 force:0];
  }
}

- (void)undo
{
  v3 = [(RCMainViewController *)self undoManager];
  [v3 undo];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
}

- (void)performRenameWithNewTitle:(id)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCMainViewController *)self browseFoldersViewController];
  v9 = [v8 activeRecordingsCollectionViewController];
  v10 = [v9 collectionView];
  [v10 becomeFirstResponder];

  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor performRenameWithNewTitle:v7 forUUID:v6];
  v11 = [RCRecordingDisplayModel recordingDisplayModelForUUID:v6];
  v12 = [(RCMainViewController *)self mainControllerHelper];
  [v12 setCurrentRecordingDisplayModel:v11];

  v13 = [(RCMainViewController *)self browseFoldersViewController];
  v14 = [v13 recordingViewController];
  [v14 renameForUUID:v6 toNewTitle:v7];

  v15 = [(RCMainViewController *)self playbackViewController];
  [v15 renameForUUID:v6 toNewTitle:v7];

  [(RCMainViewController *)self updateQuickActions];

  [(RCMainViewController *)self updateMenuBarWindowTitle];
}

- (void)refreshDisplayWithDisplayModel:(id)a3
{
  v13 = a3;
  v4 = [(RCMainViewController *)self mainControllerHelper];
  v5 = [v4 currentRecordingDisplayModel];
  v6 = [v5 UUID];
  v7 = [v13 UUID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(RCMainViewController *)self mainControllerHelper];
    [v9 setCurrentRecordingDisplayModel:v13];
  }

  v10 = [(RCMainViewController *)self browseFoldersViewController];
  v11 = [v10 recordingViewController];
  [v11 updateWithRecordingModel:v13 requireMatchingUUID:1];

  v12 = [(RCMainViewController *)self playbackViewController];
  [v12 updateWithRecordingModel:v13 requireMatchingUUID:1];
}

- (void)performClearAllRecentlyDeleted
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  [v2 performClearAllRecentlyDeleted];
}

- (void)didSelectForUUID:(id)a3 resetPosition:(BOOL)a4 force:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v28 = a3;
  v8 = [RCRecordingDisplayModel recordingDisplayModelForUUID:v28];
  v9 = [(RCMainViewController *)self playbackViewController];
  [v9 stopScrolling];
  if (v28)
  {
    if (v8)
    {
      v10 = [v9 uuidBeingDisplayed];
      v11 = [v10 isEqualToString:v28];

      if (!v11 || v5)
      {
        v12 = [v9 contentUnavailableConfiguration];
        v13 = v12 != 0;

        v14 = [(RCMainViewController *)self mainControllerHelper];
        [v14 prepareForPlaybackForUUID:v28 force:v13];
        v15 = [v9 uuidBeingDisplayed];
        if (v15 && ([v28 isEqualToString:v15] & 1) == 0)
        {
          [v14 stopForUUID:v15];
        }

        v27 = [v14 compositionForUUID:v28];
        v16 = [(RCMainViewController *)self browseFoldersViewController];
        v17 = [v16 selectedRecording];

        [v9 updateWithRecordingModel:v8];
        if (v17)
        {
          v18 = [v14 currentRecordingDisplayModel];

          if (v18 != v8)
          {
            [v14 setCurrentRecordingDisplayModel:v8];
          }
        }

        +[CATransaction begin];
        [CATransaction setDisableActions:1];
        v19 = [(RCMainViewController *)self recordingCardPresentationHelper];
        v20 = [v19 presentedViewController];

        if (!v20)
        {
          v21 = [(RCMainViewController *)self mainControllerHelper];
          v22 = [v21 timeController];
          [v9 enablePlaybackWithComposition:v27 displayModel:v8 timeController:v22];
        }

        +[CATransaction commit];
        [(RCMainViewController *)self updatePlaybackContentUnavailableViewIfNeeded];
        if (([v14 isPlayingForUUID:v28] & 1) == 0)
        {
          if (v6)
          {
            [v14 setCurrentTime:0.0];
          }

          else
          {
            v23 = [v14 timeController];
            [v23 currentTime];
            v25 = v24;
            v26 = [v14 timeController];
            [v26 setTargetTime:v25];
          }
        }
      }
    }
  }
}

- (void)updateMenuBarWindowTitle
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];

  v5 = +[RecorderAppDelegate sharedAppDelegate];
  v6 = [v5 defaultSceneDelegate];
  v7 = [v6 window];
  v12 = [v7 windowScene];

  if (v4)
  {
    v8 = [(RCMainViewController *)self mainControllerHelper];
    v9 = [v8 currentRecordingDisplayModel];
    v10 = [v9 title];

    [v12 setTitle:v10];
  }

  else
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"VOICE_MEMOS_APP_NAME" value:&stru_100295BB8 table:0];
    [v12 setTitle:v11];
  }
}

- (void)wasDeselectedForUUID:(id)a3
{
  v12 = a3;
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 activeRecordingsCollectionViewController];
  [v5 showIdleForItemWithUUID:v12];

  v6 = [(RCMainViewController *)self playbackViewController];
  [v6 showIdleForUUID:v12];

  v7 = [(RCMainViewController *)self playbackViewController];
  v8 = [v7 uuidBeingDisplayed];
  v9 = [v8 isEqualToString:v12];

  if (v9)
  {
    v10 = [(RCMainViewController *)self playbackViewController];
    [v10 clear];
  }

  v11 = [(RCMainViewController *)self mainControllerHelper];
  [v11 stopForUUID:v12];
}

- (void)performAction:(int64_t)a3 atPosition:(double)a4 forUUID:(id)a5 sourceController:(id)a6 source:(id)a7 trackIndex:(unint64_t)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a3 <= 0x1D && ((1 << a3) & 0x203680FE) != 0)
  {
    v17 = v14 == 0;
LABEL_4:
    v18 = [(RCMainViewController *)self mainControllerHelper];
    v19 = [(RCMainViewController *)self browseFoldersViewController];
    v20 = [v19 recordingViewController];

    v21 = [(RCMainViewController *)self recordingsModelInteractor];
    [(RCMainViewController *)self saveAsNewDoneButtonAction:0];
    [(RCMainViewController *)self setShouldOpenTranscriptAfterNavigatingToEdit:0];
    switch(a3)
    {
      case 0:
        [v18 playbackForUUID:v14];
        break;
      case 1:
        if (v17)
        {
          [v18 stopPlayback];
        }

        else
        {
          [v18 pauseForUUID:v14];
        }

        break;
      case 2:
        if (v17)
        {
          [v18 togglePlayback];
        }

        else
        {
          [v18 toggleForUUID:v14];
        }

        break;
      case 3:
        [(RCMainViewController *)self _startCapturing:0 completion:0];
        +[RCAnalyticsUtilities sendDidCaptureNewRecording];
        break;
      case 4:
        [(RCMainViewController *)self endRecording];
        break;
      case 5:
        [(RCMainViewController *)self pauseRecording];
        break;
      case 6:
        [(RCMainViewController *)self saveAsNewDoneButtonAction:1];
        [(RCMainViewController *)self resumeRecording:a8];
        goto LABEL_44;
      case 7:
        [(RCMainViewController *)self saveAsNewDoneButtonAction:1];
        [(RCMainViewController *)self replaceRecording:a8];
LABEL_44:
        +[RCAnalyticsUtilities sendDidCaptureModifyExistingRecording];
        break;
      case 8:
        [v18 startScrubbingForUUID:v14 atPosition:a4];
        break;
      case 9:
        [v18 updateScrubbingForUUID:v14 atPosition:a4];
        break;
      case 10:
        [v18 endScrubbingForUUID:v14 atPosition:a4];
        break;
      case 11:
        [v18 jumpForwardForUUID:v14];
        break;
      case 12:
        [v18 jumpBackwardForUUID:v14];
        break;
      case 13:
        v38 = [v21 duplicateRecordingWithUUID:v14];
        break;
      case 14:
        v50 = v14;
        v32 = [NSArray arrayWithObjects:&v50 count:1];
        [(RCMainViewController *)self deleteRecordingsWithUUIDs:v32 sourceController:v15 source:v16 showInfo:1];
        goto LABEL_54;
      case 15:
        v32 = [(RCMainViewController *)self browseFoldersViewController];
        v35 = [v32 activeRecordingsCollectionViewController];
        v36 = [v35 selectedUUIDs];
        [(RCMainViewController *)self deleteRecordingsWithUUIDs:v36 sourceController:v15 source:v16 showInfo:1];

        goto LABEL_54;
      case 16:
        v49 = v14;
        v32 = [NSArray arrayWithObjects:&v49 count:1];
        [(RCMainViewController *)self confirmEraseWithUUIDs:v32 sourceController:v15 source:v16 eraseAllDeleted:0];
        goto LABEL_54;
      case 17:
        [(RCMainViewController *)self confirmEraseSelectedWithSourceController:v15 source:v16 eraseAllDeleted:0];
        break;
      case 18:
        [(RCMainViewController *)self confirmEraseAllWithSourceController:v15 source:v16 eraseAllDeleted:1];
        break;
      case 19:
        v48 = v14;
        v32 = [NSArray arrayWithObjects:&v48 count:1];
        [(RCMainViewController *)self confirmRecoverWithUUIDs:v32 sourceController:v15 source:v16 force:0];
LABEL_54:

        break;
      case 20:
        [(RCMainViewController *)self confirmRecoverSelectedWithSourceController:v15 source:v16];
        break;
      case 21:
        [(RCMainViewController *)self confirmRecoverAllWithSourceController:v15 source:v16];
        break;
      case 22:
        goto LABEL_60;
      case 23:
        [(RCMainViewController *)self setShouldOpenTranscriptAfterNavigatingToEdit:1];
        goto LABEL_60;
      case 24:
        v33 = self;
        v34 = 0;
        goto LABEL_28;
      case 25:
        v33 = self;
        v34 = 1;
LABEL_28:
        [(RCMainViewController *)v33 saveAsNewDoneButtonAction:v34];
        [v20 handleDone];
        break;
      case 26:
        [v20 handleCancel];
        break;
      case 27:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        v52 = v14;
        v26 = [NSArray arrayWithObjects:&v52 count:1];
        v27 = v18;
        v28 = v26;
        v29 = v15;
        v30 = v16;
        v31 = 0;
        goto LABEL_58;
      case 28:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        v51 = v14;
        v26 = [NSArray arrayWithObjects:&v51 count:1];
        v27 = v18;
        v28 = v26;
        v29 = v15;
        v30 = v16;
        v31 = 1;
LABEL_58:
        [v27 shareRecordingsWithUUIDs:v28 inViewController:v29 source:v30 isShareButton:v31 completionWithItemsHandler:0];

        break;
      case 29:
        v44 = [(RCMainViewController *)self browseFoldersViewController];
        v45 = [v44 activeRecordingsCollectionViewController];
        v46 = [v45 selectedUUIDs];

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000A26F4;
        v47[3] = &unk_10028C0F0;
        v47[4] = self;
        [v18 shareRecordingsWithUUIDs:v46 inViewController:v15 source:v16 isShareButton:1 completionWithItemsHandler:v47];

LABEL_60:
        v39 = self;
        v40 = v14;
        v41 = 0;
        goto LABEL_61;
      case 30:
        v39 = self;
        v40 = v14;
        v41 = 1;
LABEL_61:
        [(RCMainViewController *)v39 _openForModifyRecordingWithUUID:v40 enterTrim:v41];
        break;
      case 31:
        [v18 performTrimByKeepingSelectedRangeForRecordingWithUUID:v14 source:v16];
        break;
      case 32:
        [v18 performTrimByDeletingSelectedRangeForRecordingWithUUID:v14 source:v16];
        break;
      case 33:
        [(RCMainViewController *)self undo];
        break;
      case 34:
        v24 = self;
        v25 = 1;
        goto LABEL_17;
      case 35:
        v24 = self;
        v25 = 0;
LABEL_17:
        [(RCMainViewController *)v24 setSpeechIsolatorEnabled:v25 forUUID:v14];
        break;
      case 36:
        v22 = self;
        v23 = 1;
        goto LABEL_14;
      case 37:
        v22 = self;
        v23 = 0;
LABEL_14:
        [(RCMainViewController *)v22 setFavorite:v23 forRecordingWithUUID:v14];
        break;
      case 38:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        [v21 setEnhanced:1 forUUID:v14];
        v42 = self;
        v43 = 1;
        goto LABEL_63;
      case 39:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        [v21 setEnhanced:0 forUUID:v14];
        v42 = self;
        v43 = 0;
LABEL_63:
        [(RCMainViewController *)v42 _axAnnounceDidSetEnhanced:v43];
        break;
      case 40:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        [(RCMainViewController *)self _presentMoveToFolderUIForRecordingWithUUID:v14];
        break;
      case 41:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        v37 = [v20 view];
        [v37 setTranscriptViewState:0];

        [(RCMainViewController *)self _presentPlaybackSettingsUIWithSource:v16 UUID:v14];
        break;
      case 42:
        [(RCMainViewController *)self toggleTranscriptView];
        break;
      case 43:
        [(RCMainViewController *)self copyTranscript:v14];
        break;
      case 44:
        goto LABEL_51;
      case 45:
        [(RCMainViewController *)self separateRecordingLayers:v14];
LABEL_51:
        [(RCMainViewController *)self renameDescriptionViewTitleTextField:v16 withUUID:v14];
        break;
      default:
        break;
    }

    goto LABEL_68;
  }

  if (v14)
  {
    v17 = 0;
    goto LABEL_4;
  }

  v18 = OSLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BA794(v18);
  }

LABEL_68:
}

- (void)_openForModifyRecordingWithUUID:(id)a3 enterTrim:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  if (v4 && [(RCMainViewController *)self state]== 1)
  {
    v6 = [(RCMainViewController *)self mainControllerHelper];
    [v6 enterTrimMode];

    v7 = [(RCMainViewController *)self browseFoldersViewController];
    v8 = [v7 recordingViewController];
    [v8 updateForTrimMode];
  }

  else
  {
    v7 = [(RCMainViewController *)self mainControllerHelper];
    v9 = [(RCMainViewController *)self browseFoldersViewController];
    v10 = [v9 activeRecordingsCollectionViewController];
    v8 = [v10 uuidOfSelectedItem];

    if (([v8 isEqualToString:v14] & 1) == 0)
    {
      v11 = [(RCMainViewController *)self browseFoldersViewController];
      v12 = [v11 activeRecordingsCollectionViewController];
      [v12 selectItemWithUUID:v14];
    }

    [v7 openForModifyRecordingWithUUID:v14 withSubActivityType:v4];
  }

  v13 = [(RCMainViewController *)self recordingCardPresentationHelper];
  [v13 restyleRecordingCardSheetPresentationController];
}

- (void)deleteRecordingsWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 showInfo:(BOOL)a6
{
  v6 = a6;
  v17 = a3;
  v10 = a4;
  v11 = a5;
  if (v17 && [v17 count])
  {
    v12 = +[NSUserDefaults sharedSettingsUserDefaults];
    v13 = v12;
    if (v12 && [v12 rc_deletionIsImmediate])
    {
      [(RCMainViewController *)self confirmEraseWithUUIDs:v17 sourceController:v10 source:v11 eraseAllDeleted:0];
    }

    else
    {
      v14 = [(RCMainViewController *)self mainControllerHelper];
      v15 = [v14 deleteWithUUIDs:v17 source:v11 showInfo:v6];

      if (v15)
      {
        v16 = +[RCShareMemoViewController presentedController];
        [v16 dismissViewControllerAnimated:0 completion:0];

        [v15 rc_configurePopoverControllerWithSource:v11];
        [(RCMainViewController *)self _myPresentViewController:v15 sourceController:v10 animated:1 completion:0];
      }
    }

    [(RCMainViewController *)self updatePlaybackContentUnavailableViewIfNeeded];
  }
}

- (void)confirmEraseSelectedWithSourceController:(id)a3 source:(id)a4 eraseAllDeleted:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
    v10 = [v9 selectedUUIDs];
    [(RCMainViewController *)self confirmEraseWithUUIDs:v10 sourceController:v9 source:v8 eraseAllDeleted:v5];
  }
}

- (void)confirmEraseAllWithSourceController:(id)a3 source:(id)a4 eraseAllDeleted:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
    v10 = [v9 allUUIDs];
    [(RCMainViewController *)self confirmEraseWithUUIDs:v10 sourceController:v9 source:v8 eraseAllDeleted:v5];
  }
}

- (void)confirmEraseWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 eraseAllDeleted:(BOOL)a6
{
  v6 = a6;
  v18 = a3;
  v10 = a4;
  v11 = a5;
  if (v18 && [v18 count])
  {
    v12 = [(RCMainViewController *)self mainControllerHelper];
    v13 = v12;
    if (v6)
    {
      v14 = [v12 eraseAllRecordingsAndConfirmWithSource:v11];
    }

    else
    {
      v15 = [(RCMainViewController *)self browseFoldersViewController];
      v16 = [v15 activeRecordingsCollectionViewController];
      v14 = [v13 eraseAndConfirmWithUUIDs:v18 source:v11 collectionViewController:v16];
    }

    if (v14)
    {
      v17 = +[RCShareMemoViewController presentedController];
      [v17 dismissViewControllerAnimated:0 completion:0];

      [v14 rc_configurePopoverControllerWithSource:v11];
      [(RCMainViewController *)self _myPresentViewController:v14 sourceController:v10 animated:1 completion:0];
    }
  }
}

- (void)recoverRecordingsWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 force:(BOOL)a6
{
  v6 = a6;
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (v12 && [v12 count])
  {
    [(RCMainViewController *)self confirmRecoverWithUUIDs:v12 sourceController:v10 source:v11 force:v6];
  }
}

- (void)confirmRecoverSelectedWithSourceController:(id)a3 source:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
    v8 = [v7 selectedUUIDs];
    [(RCMainViewController *)self confirmRecoverWithUUIDs:v8 sourceController:v7 source:v6 force:0];
  }
}

- (void)confirmRecoverAllWithSourceController:(id)a3 source:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
    v8 = [v7 allUUIDs];
    [(RCMainViewController *)self confirmRecoverWithUUIDs:v8 sourceController:v7 source:v6 force:0];
  }
}

- (void)confirmRecoverWithUUIDs:(id)a3 sourceController:(id)a4 source:(id)a5 force:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && [v10 count])
  {
    v24 = v6;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          v19 = [(RCMainViewController *)self mainControllerHelper];
          [v19 pauseForUUID:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    v20 = [(RCMainViewController *)self mainControllerHelper];
    v21 = [(RCMainViewController *)self browseFoldersViewController];
    v22 = [v21 activeRecordingsCollectionViewController];
    v23 = [v20 restoreRecordingsWithUUIDs:v13 isRecover:1 source:v12 force:v24 collectionViewController:v22];

    if (v23)
    {
      [v23 rc_configurePopoverControllerWithSource:v12];
      [(RCMainViewController *)self _myPresentViewController:v23 sourceController:v11 animated:1 completion:0];
    }
  }
}

- (void)moveRecordingsWithUUIDs:(id)a3 toUserFolderNamed:(id)a4 source:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v11)
  {
    v10 = [v11 count];
    if (v8)
    {
      if (v10)
      {
        [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingsWithUUIDs:v11 toUserFolderNamed:v8];
      }
    }
  }
}

- (void)moveRecordingsWithUUIDs:(id)a3 toBuiltInFolderOfType:(int64_t)a4 source:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (v9 && [v9 count])
  {
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingsWithUUIDs:v9 toBuiltInFolderOfType:a4];
  }
}

- (void)_myPresentViewController:(id)a3 sourceController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v13 = a3;
  v10 = a4;
  v11 = a6;
  if (!v10)
  {
    v12 = [(RCMainViewController *)self navigationController];
    v10 = [v12 presentedViewController];

    if (!v10)
    {
      v10 = self;
    }
  }

  [(RCMainViewController *)self setPresentedConfirmationController:v13];
  [(RCMainViewController *)v10 presentViewController:v13 animated:v7 completion:v11];
}

- (void)libraryWillChangeEditingState:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(RCMainViewController *)self mainControllerHelper];
    [v5 stopPlayback];
  }

  v6 = [(RCMainViewController *)self playbackViewController];
  [v6 updateActionButtonState:!v3];
}

- (BOOL)isEditingInFlightForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self editingProgressItems];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)selectNewRecordingForDismiss
{
  v11 = [(RCMainViewController *)self uuidToSelectAfterDismiss];
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  v5 = [v4 presentsRecordingWithUUID:v11];

  if (![(RCMainViewController *)self state]&& v5)
  {
    v6 = [(RCMainViewController *)self browseFoldersViewController];
    v7 = [v6 activeRecordingsCollectionViewController];
    [v7 selectItemWithUUID:v11];

    v8 = [(RCMainViewController *)self playbackViewController];
    v9 = [v8 uuidBeingDisplayed];
    v10 = [v9 isEqualToString:v11];

    if ((v10 & 1) == 0)
    {
      [(RCMainViewController *)self didSelectForUUID:v11 resetPosition:0 force:0];
    }

    [(RCMainViewController *)self setUuidToSelectAfterDismiss:0];
  }
}

- (void)_presentMoveToFolderUIForRecordingWithUUID:(id)a3
{
  if (a3)
  {
    v6 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v6 count:1];

    [(RCMainViewController *)self _presentMoveToFolderUIForRecordingsWithUUIDs:v5, v6];
  }
}

- (void)_presentMoveToFolderUIForRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self moveToFolderContainerViewControllerWithUUIDs:v4];
  v6 = [v5 collectionViewController];
  [v6 setPresentingDelegate:self];

  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v7 presentedViewsMinimumWidth];
  v9 = v8;

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A368C;
  v11[3] = &unk_10028B0D0;
  objc_copyWeak(&v13, &location);
  v10 = v5;
  v12 = v10;
  [(RCMainViewController *)self _presentViewController:v10 fromViewController:self animated:1 widthHeightConstraintConstant:v11 completion:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)moveToFolderContainerViewControllerWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setModalPresentationStyle:2];
  [v5 setSelectionDelegate:self];
  [v5 setUuidsToMove:v4];

  v6 = [(RCMainViewController *)self browseFoldersViewController];
  v7 = [v6 currentActiveFolderViewController];
  v8 = [v7 folderUUID];
  [v5 setUuidOfSourceFolder:v8];

  v9 = [(RCMainViewController *)self browseFoldersViewController];
  v10 = [v9 currentActiveFolderViewController];
  [v5 setFolderTypeOfSourceFolder:{objc_msgSend(v10, "folderType")}];

  v11 = [[RCFolderSelectionContainerViewController alloc] initWithCollectionViewController:v5];

  return v11;
}

- (id)folderUUIDsToExcludeWhenMovingRecordingUUIDs:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {

    v27 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v25 = v4;
  obj = v5;
  v8 = 0;
  v27 = 0;
  v9 = *v30;
  v10 = 1;
  v11 = 1;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v29 + 1) + 8 * i);
      v14 = [(RCMainViewController *)self recordingsModelInteractor];
      v15 = [v14 isRecentlyDeletedForUUID:v13];
      v16 = [v14 isFavoriteForUUID:v13];
      v17 = [v14 uuidOfUserFolderForRecordingWithUUID:v13];
      if (v8)
      {
LABEL_7:
        v8 = 1;
        goto LABEL_14;
      }

      if (v27)
      {
        if (!v17 || ([v27 isEqualToString:v17] & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v27 = v17;
      }

      v8 = 0;
LABEL_14:
      v11 &= v15;
      v10 &= v16;
    }

    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v7);
  v5 = obj;

  if (v27)
  {
    v18 = v8;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v4 = v25;
    [v25 addObject:?];
    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v4 = v25;
  if (v11)
  {
LABEL_24:
    v19 = +[RCApplicationModel sharedApplicationModel];
    v20 = [v19 recentlyDeletedRecordingsFolder];
    goto LABEL_25;
  }

LABEL_29:
  if (v10)
  {
    v19 = +[RCApplicationModel sharedApplicationModel];
    v20 = [v19 favoriteRecordingsFolder];
    goto LABEL_25;
  }

  if (![v4 count])
  {
    v19 = +[RCApplicationModel sharedApplicationModel];
    v20 = [v19 voiceMemosRecordingsFolder];
LABEL_25:
    v21 = v20;
    v22 = [v20 uuid];
    [v4 addObject:v22];
  }

  v23 = [NSArray arrayWithArray:v4];

  return v23;
}

- (void)_presentPlaybackSettingsUIWithSource:(id)a3 UUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCMainViewController *)self browseFoldersViewController];
  v9 = [v8 activeRecordingsCollectionViewController];
  v10 = [v9 uuidOfSelectedItem];

  if (([v10 isEqualToString:v7] & 1) == 0)
  {
    v11 = [(RCMainViewController *)self browseFoldersViewController];
    v12 = [v11 activeRecordingsCollectionViewController];
    [v12 selectItemWithUUID:v7];
  }

  v13 = [(RCMainViewController *)self mainControllerHelper];
  v14 = [v13 playbackSettingsForUUID:v7];

  if (v14)
  {
    v15 = [(RCMainViewController *)self presentedPlaybackSettingsViewController];

    if (!v15)
    {
      v16 = objc_alloc_init(RCPlaybackSettingsViewController);
      [(RCPlaybackSettingsViewController *)v16 setDelegate:self];
      [(RCPlaybackSettingsViewController *)v16 setPlaybackSettings:v14];
      v35 = [[UINavigationController alloc] initWithRootViewController:v16];
      v34 = +[RCRecorderStyleProvider sharedStyleProvider];
      v17 = [v34 supportsPopoverPlaybackSettingsPresentation];
      if (v6 && ((v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass()) : (isKindOfClass = 1), (v18 & isKindOfClass) == 1))
      {
        [v35 setModalPresentationStyle:7];
        [v35 rc_configurePopoverControllerWithSource:v6];
      }

      else
      {
        [(RCPlaybackSettingsViewController *)v16 setNeedsDoneButton:1];
        v20 = [v35 presentationController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          v22 = +[UISheetPresentationControllerDetent largeDetent];
          v41 = v22;
          v23 = [NSArray arrayWithObjects:&v41 count:1];

          [v21 setDetents:v23];
        }
      }

      v24 = [(RCMainViewController *)self recordingCardPresentationHelper];
      v25 = [v24 presentedViewController];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = self;
      }

      v28 = v27;

      v29 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v29 presentedViewsMinimumWidth];
      v31 = v30;

      objc_initWeak(&location, self);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000A3E8C;
      v36[3] = &unk_10028A390;
      objc_copyWeak(&v39, &location);
      v32 = v16;
      v37 = v32;
      v33 = v28;
      v38 = v33;
      [(RCMainViewController *)self _presentViewController:v35 fromViewController:v33 animated:1 widthHeightConstraintConstant:v36 completion:v31];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_presentViewController:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 widthHeightConstraintConstant:(double)a6 completion:(id)a7
{
  v9 = a5;
  v33 = a3;
  v11 = a4;
  v12 = a7;
  if (a6 > 0.0)
  {
    v13 = [v33 view];
    v14 = [v13 widthAnchor];
    v15 = [v14 constraintGreaterThanOrEqualToConstant:a6];
    [v15 setActive:1];

    v16 = [v33 view];
    v17 = [v16 heightAnchor];
    v18 = [v17 constraintGreaterThanOrEqualToConstant:a6];
    [v18 setActive:1];

    v19 = +[UIApplication sharedApplication];
    v20 = [v19 delegate];
    v21 = [v20 window];

    if (v21)
    {
      [v21 frame];
      v23 = v22 * 0.9;
      v25 = v24 * 0.9;
      if (v22 * 0.9 > a6 && v25 > a6)
      {
        v27 = [v33 view];
        v28 = [v27 widthAnchor];
        v29 = [v28 constraintLessThanOrEqualToConstant:v23];
        [v29 setActive:1];

        v30 = [v33 view];
        v31 = [v30 heightAnchor];
        v32 = [v31 constraintLessThanOrEqualToConstant:v25];
        [v32 setActive:1];
      }
    }
  }

  [v11 presentViewController:v33 animated:v9 completion:v12];
}

- (void)_endDescriptionViewTextEditing
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  [v2 endDescriptionViewTextEditing];
}

- (void)hideFolderSelectionViewController
{
  v2 = [(RCMainViewController *)self presentedSelectFolderViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_processMoveOfUUID:(id)a3 toBuiltInFolderOfType:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 3:
      v14 = v6;
      v8 = [NSArray arrayWithObjects:&v14 count:1];
      v11 = [(RCMainViewController *)self browseFoldersViewController];
      [(RCMainViewController *)self deleteRecordingsWithUUIDs:v8 sourceController:v11 source:0 showInfo:0];

LABEL_11:
      break;
    case 1:
      [(RCMainViewController *)self setFavorite:1 forRecordingWithUUID:v6];
      break;
    case 0:
      v8 = [(RCMainViewController *)self mainControllerHelper];
      v9 = [(RCMainViewController *)self recordingsModelInteractor];
      v10 = [v9 uuidOfUserFolderForRecordingWithUUID:v7];
      if (v10)
      {
        [v9 removeRecordingWithUUID:v7 fromUserFolderWithUUID:v10];
      }

      else
      {
        v15 = v7;
        v12 = [NSArray arrayWithObjects:&v15 count:1];
        v13 = [v8 restoreRecordingsWithUUIDs:v12 isRecover:1 source:0 force:1 collectionViewController:0];
      }

      goto LABEL_11;
    default:
      [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingWithUUID:v6 toBuiltInFolderOfType:a4];
      break;
  }
}

- (void)showNewFolderUIFromController:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"NEW_FOLDER" value:&stru_100295BB8 table:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"ENTER_NEW_FOLDER_NAME" value:&stru_100295BB8 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A465C;
  v21[3] = &unk_10028C118;
  v21[4] = self;
  [v9 addTextFieldWithConfigurationHandler:v21];
  objc_initWeak(&location, v9);
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SAVE" value:&stru_100295BB8 table:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A4718;
  v17[3] = &unk_10028C140;
  objc_copyWeak(&v19, &location);
  v17[4] = self;
  v12 = v4;
  v18 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v17];

  [v13 setEnabled:0];
  [(RCMainViewController *)self setCreateNewFolderSaveAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:&stru_10028C160];

  [v9 addAction:v13];
  [v9 addAction:v16];
  [(RCMainViewController *)self _myPresentViewController:v9 sourceController:v12 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)showRenamingControllerWithFolderName:(id)a3 controller:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"RENAME" value:&stru_100295BB8 table:0];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:0 preferredStyle:1];

  [(RCMainViewController *)self setOldFolderName:v6];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000A4AE0;
  v31[3] = &unk_10028C188;
  v11 = v6;
  v32 = v11;
  v33 = self;
  [v10 addTextFieldWithConfigurationHandler:v31];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SAVE" value:&stru_100295BB8 table:0];

  v14 = [v10 textFields];
  v15 = [v14 objectAtIndexedSubscript:0];

  [v15 setText:v11];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000A4B54;
  v26 = &unk_10028C1B0;
  v27 = self;
  v28 = v15;
  v29 = v7;
  v30 = v11;
  v16 = v11;
  v17 = v7;
  v18 = v15;
  v19 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v23];
  [(RCMainViewController *)self setRenameFolderSaveAction:v19, v23, v24, v25, v26, v27];
  [(RCMainViewController *)self _renamingTextDidChange:v18];
  [v10 addAction:v19];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];

  v22 = [UIAlertAction actionWithTitle:v21 style:1 handler:0];
  [v10 addAction:v22];
  [v10 rc_configurePopoverControllerWithSource:v17];
  [(RCMainViewController *)self presentViewController:v10 sourceController:self animated:1 completion:0];
}

- (void)_presentNameTakenAlertWithName:(id)a3 sourceController:(id)a4
{
  v5 = a4;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"NEW_FOLDER_NAME_EXISTS" value:&stru_100295BB8 table:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"NEW_FOLDER_CHOOSE_DIFFERENT" value:&stru_100295BB8 table:0];
  v14 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];

  [v14 addAction:v12];
  [(RCMainViewController *)self _myPresentViewController:v14 sourceController:v5 animated:1 completion:0];

  LODWORD(self) = UIAccessibilityScreenChangedNotification;
  v13 = [v14 view];
  UIAccessibilityPostNotification(self, v13);
}

- (void)_newFolderTextDidChange:(id)a3
{
  v6 = [a3 text];
  v4 = [v6 length] != 0;
  v5 = [(RCMainViewController *)self createNewFolderSaveAction];
  [v5 setEnabled:v4];
}

- (void)_renamingTextDidChange:(id)a3
{
  v7 = [a3 text];
  if ([v7 length])
  {
    v4 = [(RCMainViewController *)self oldFolderName];
    v5 = [v7 isEqualToString:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(RCMainViewController *)self renameFolderSaveAction];
  [v6 setEnabled:v5];
}

- (void)moveFolder:(id)a3 toDestinationIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCMainViewController *)self recordingsModelInteractor];
  [v8 moveFolder:v7 toDestinationIndexPath:v6];
}

- (void)deleteFolder:(id)a3 controller:(id)a4 completionBlock:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(RCMainViewController *)self mainControllerHelper];
  v11 = [v10 deleteFolder:v9 source:v12 completionBlock:v8];

  if (v11)
  {
    [(RCMainViewController *)self _myPresentViewController:v11 sourceController:v12 animated:1 completion:0];
  }
}

- (void)setEnhanced:(BOOL)a3 forUUID:(id)a4
{
  if (a3)
  {
    v4 = 38;
  }

  else
  {
    v4 = 39;
  }

  [(RCMainViewController *)self performAction:v4 atPosition:a4 forUUID:0 sourceController:0 source:0.0];
}

- (void)setRemoveSilence:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainViewController *)self mainControllerHelper];
  [v7 setRemoveSilence:v4 forUUID:v6];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setPlaybackSpeed:(double)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainViewController *)self mainControllerHelper];
  [v7 setPlaybackSpeed:v6 forUUID:a3];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setLayerMix:(double)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainViewController *)self mainControllerHelper];
  [v7 setLayerMix:v6 forUUID:a3];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setSpeechIsolatorEnabled:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainViewController *)self mainControllerHelper];
  [v7 setSpeechIsolatorEnabled:v4 forUUID:v6];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setSpeechIsolatorValue:(float)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainViewController *)self mainControllerHelper];
  *&v8 = a3;
  [v7 setSpeechIsolatorValue:v6 forUUID:v8];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)toggleSpeechIsolatorEnabledForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self playbackSettings];
  v6 = [v5 uuid];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(RCMainViewController *)self playbackSettings];
    v9 = [v8 speechIsolatorEnabled];

    [(RCMainViewController *)self setSpeechIsolatorEnabled:v9 ^ 1 forUUID:v4];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA818(v4, self);
    }
  }
}

- (void)hidePlaybackSettingsViewController
{
  v2 = [(RCMainViewController *)self presentedPlaybackSettingsViewController];
  v5 = [v2 navigationController];

  v3 = v5;
  if (v5)
  {
    v4 = [v5 isBeingDismissed];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      [v5 dismissViewControllerAnimated:1 completion:0];
      v3 = v5;
    }
  }
}

- (void)didHidePlaybackSettingsViewController
{
  v4 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [(RCMainViewController *)self selectedUUID];
  [v4 setLooping:0 forUUID:v3];
}

- (void)playbackSettingsViewController:(id)a3 contentSizeChanged:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 shouldSetPreferredContentSizeOnPlaybackSettingsView])
  {
    [v6 playbackSettingsPopoverBottomPadding];
    v8 = height + v7;
    v9 = [v10 navigationController];
    [v9 setPreferredContentSize:{width, v8}];
  }
}

- (void)didReturnToFoldersList
{
  [(RCMainViewController *)self stopPlayback];
  v3 = [(RCMainViewController *)self playbackViewController];
  [v3 clear];
}

- (void)didSelectFolderOfType:(int64_t)a3
{
  if ([(RCMainViewController *)self shouldStopPlaybackBeforeNavigating])
  {
    [(RCMainViewController *)self stopPlayback];
  }

  else
  {
    [(RCMainViewController *)self setShouldStopPlaybackBeforeNavigating:1];
  }

  v4 = [(RCMainViewController *)self playbackViewController];
  [v4 clear];

  [(RCMainViewController *)self updatePlaybackContentUnavailableViewIfNeeded];
}

- (void)renameFolder:(id)a3 toName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCMainViewController *)self recordingsModelInteractor];
  [v8 renameFolder:v7 toName:v6];
}

- (BOOL)canMoveRecordingsWithUUIDs:(id)a3 toFolderWithUUID:(id)a4 toFolderType:(int64_t)a5 fromFolderUUID:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = +[RCApplicationModel sharedApplicationModel];
  v14 = v13;
  v15 = 0;
  if (a5 <= 1)
  {
    if (!a5)
    {
      v16 = [v13 voiceMemosRecordingsFolder];
      goto LABEL_12;
    }

    if (a5 == 1)
    {
      v16 = [v13 favoriteRecordingsFolder];
      goto LABEL_12;
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        v16 = [v13 capturedOnWatchRecordingsFolder];
        goto LABEL_12;
      case 3:
        v16 = [v13 recentlyDeletedRecordingsFolder];
        goto LABEL_12;
      case 4:
        v16 = [v13 existingFolderWithUUID:v10];
LABEL_12:
        v15 = v16;
        break;
    }
  }

  v17 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v15];
  v18 = [(RCMainViewController *)self folderUUIDsToExcludeWhenMovingRecordingUUIDs:v12];

  v19 = [(RCMainViewController *)self canMoveSelectedRecordingsFromFolderWithUUID:v11 toFolderWithDisplayModel:v17 excludedFolderUUIDsForSelection:v18];
  return v19;
}

- (BOOL)canMoveSelectedRecordingsFromFolderWithUUID:(id)a3 toFolderWithDisplayModel:(id)a4 excludedFolderUUIDsForSelection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 UUID];
  v11 = [v9 containsObject:v10];

  if (v11 & 1) != 0 || ([v10 isEqualToString:v7])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v8 representsPossibleMoveDestination];
  }

  return v12;
}

- (void)moveRecordingsWithUUIDs:(id)a3 toFolderWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCMainViewController *)self recordingsModelInteractor];
  v9 = [v6 firstObject];
  v10 = [v8 uuidOfUserFolderForRecordingWithUUID:v9];

  v11 = [(RCMainViewController *)self undoManager];
  v12 = [(RCMainViewController *)self browseFoldersViewController];
  v13 = [v12 activeRecordingsCollectionViewController];

  v14 = [(RCMainViewController *)self mainControllerHelper];
  v15 = [v14 restoreRecordingsWithUUIDs:v6 isRecover:1 source:0 force:1 collectionViewController:v13];

  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingsWithUUIDs:v6 toUserFolderWithUUID:v7];
  [v13 endEditing];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000A59F8;
  v23 = &unk_10028C1D8;
  v24 = v10;
  v25 = v6;
  v16 = v6;
  v17 = v10;
  [v11 registerUndoWithTarget:self handler:&v20];
  v18 = [NSBundle mainBundle:v20];
  v19 = [v18 localizedStringForKey:@"TITLE_FOR_MOVE_RECORDING_UNDO" value:&stru_100295BB8 table:0];

  [v11 setActionName:v19];
}

- (void)moveRecordingsWithUUIDs:(id)a3 fromFolderOfType:(int64_t)a4 toBuiltInFolderOfType:(int64_t)a5
{
  v8 = a3;
  v9 = [(RCMainViewController *)self browseFoldersViewController];
  v10 = [v9 activeRecordingsCollectionViewController];

  if (a4 == 3)
  {
    v11 = [(RCMainViewController *)self mainControllerHelper];
    v12 = [v11 restoreRecordingsWithUUIDs:v8 isRecover:1 source:0 force:1 collectionViewController:v10];
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(RCMainViewController *)self setFavorite:1 forRecordingWithUUID:*(*(&v18 + 1) + 8 * v17), v18];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }

    else if (a5 == 3)
    {
      [(RCMainViewController *)self deleteRecordingsWithUUIDs:v8 sourceController:v10 source:0 showInfo:0];
    }
  }

  else if (a4 == 4)
  {
    [(RCMainViewController *)self _removeFromUserFolderRecordingsWithUUIDs:v8];
  }

  else if (a4 == 1)
  {
    [(RCMainViewController *)self setFavorite:0 forRecordingsWithUUIDs:v8];
  }

  [v10 endEditing];
}

- (void)_removeFromUserFolderRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self recordingsModelInteractor];
  v6 = [v4 firstObject];
  v7 = [v5 uuidOfUserFolderForRecordingWithUUID:v6];

  v8 = [(RCMainViewController *)self undoManager];
  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor removeRecordingsWithUUIDs:v4 fromUserFolderWithUUID:0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000A5D58;
  v16 = &unk_10028C1D8;
  v17 = v4;
  v18 = v7;
  v9 = v7;
  v10 = v4;
  [v8 registerUndoWithTarget:self handler:&v13];
  v11 = [NSBundle mainBundle:v13];
  v12 = [v11 localizedStringForKey:@"TITLE_FOR_MOVE_RECORDING_UNDO" value:&stru_100295BB8 table:0];

  [v8 setActionName:v12];
}

- (void)reloadWaveformsFromComposition:(id)a3
{
  v4 = a3;
  v6 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v6 recordingViewController];
  [v5 reloadWaveformsFromComposition:v4];
}

- (void)didTransitionWithTransitionInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 toActivityType];
  v6 = [v4 toSubType];
  v7 = [v4 fromActivityType];
  v8 = [v4 fromSubType];
  v15 = [v4 displayModel];
  v9 = [v4 waveformDataSource];
  v10 = [v4 composition];

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v12 = [v15 UUID];
      [(RCMainViewController *)self _switchToPlayingBackFromPreviousActivityType:v7 withUUID:v12];
    }

    else if (v5 == 3)
    {
      [(RCMainViewController *)self _switchToEditingFromPreviousActivityType:v7 displayModel:v15 withComposition:v10 enterTrim:v6 == 1];
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      [(RCMainViewController *)self _switchToCapturingFromPreviousActivityType:v7 displayModel:v15 waveformDataSource:v9 isReplaceOrAppend:v6 != 2];
    }
  }

  else
  {
    v11 = [v15 UUID];
    [(RCMainViewController *)self _switchToIdleFromPreviousActivityType:v7 fromSubActivityType:v8 toSubActivityType:v6 displayModel:v15 withUUID:v11];
  }

  v13 = [(RCMainViewController *)self browseFoldersViewController];
  v14 = [v13 activeRecordingsCollectionViewController];
  [v14 setCaptureIsUnderway:v5 == 1];
}

- (void)_switchToPlayingBackFromPreviousActivityType:(int64_t)a3 withUUID:(id)a4
{
  v5 = a4;
  v6 = [(RCMainViewController *)self browseFoldersViewController];
  v7 = [v6 activeRecordingsCollectionViewController];
  [v7 showPlayingForItemWithUUID:v5];

  v8 = [(RCMainViewController *)self browseFoldersViewController];
  v9 = [v8 recordingViewController];
  [v9 showPlayingForUUID:v5];

  v10 = [(RCMainViewController *)self playbackViewController];
  [v10 showPlayingForUUID:v5];

  [(RCMainViewController *)self updateQuickActions];
}

- (void)_switchToEditingFromPreviousActivityType:(int64_t)a3 displayModel:(id)a4 withComposition:(id)a5 enterTrim:(BOOL)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A611C;
  v12[3] = &unk_10028C248;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v16 = a3;
  v17 = a6;
  v10 = v15;
  v11 = v13;
  [(RCMainViewController *)self _prepareToDisplayCardViewWithCompletionBlock:v12];
}

- (id)platterViewControllerForPresentationStyle:(unint64_t)a3
{
  v4 = [[RCPlatterViewController alloc] initWithPresentationStyle:a3];
  v5 = [(RCMainViewController *)self mainControllerHelper];
  v6 = [v5 timeController];
  [(RCPlatterViewController *)v4 setActiveTimeController:v6];

  v7 = [(RCMainViewController *)self mainControllerHelper];
  v8 = [v7 activityWaveformProcessor];
  [(RCPlatterViewController *)v4 setActivityWaveformProcessor:v8];

  v9 = [(RCMainViewController *)self mainControllerHelper];
  v10 = [v9 timeController];
  [v10 addTimeObserver:v4];

  return v4;
}

- (void)_switchToCapturingFromPreviousActivityType:(int64_t)a3 displayModel:(id)a4 waveformDataSource:(id)a5 isReplaceOrAppend:(BOOL)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A66D8;
  v9[3] = &unk_10028B7F8;
  v13 = a6;
  v10 = self;
  v11 = a4;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  [(RCMainViewController *)v10 _prepareToDisplayCardViewWithCompletionBlock:v9];
}

- (void)_prepareToDisplayCardViewWithCompletionBlock:(id)a3
{
  v10 = a3;
  v4 = [(RCMainViewController *)self presentedViewController];
  if (v4 && (v5 = v4, -[RCMainViewController presentedViewController](self, "presentedViewController"), v6 = objc_claimAutoreleasedReturnValue(), -[RCMainViewController recordingCardPresentationHelper](self, "recordingCardPresentationHelper"), v7 = objc_claimAutoreleasedReturnValue(), [v7 presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqual:", v8), v8, v7, v6, v5, (v9 & 1) == 0))
  {
    [(RCMainViewController *)self dismissViewControllerAnimated:0 completion:v10];
  }

  else
  {
    v10[2]();
  }
}

- (void)_setCorrectOriginalFolderForRecordingWithUUID:(id)a3 folderType:(int64_t)a4 userFolderName:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8 && a4)
  {
    if (a4 == 1)
    {
      [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor setFavorite:1 forUUID:v8];
    }

    else if (a4 == 4)
    {
      v13 = v8;
      v10 = [NSArray arrayWithObjects:&v13 count:1];
      [(RCMainViewController *)self moveRecordingsWithUUIDs:v10 toUserFolderNamed:v9 source:0];
    }

    else
    {
      v12 = v8;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [(RCMainViewController *)self moveRecordingsWithUUIDs:v11 toBuiltInFolderOfType:a4 source:0];
    }
  }
}

- (void)_switchToIdleFromPreviousActivityType:(int64_t)a3 fromSubActivityType:(int64_t)a4 toSubActivityType:(int64_t)a5 displayModel:(id)a6 withUUID:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [(RCMainViewController *)self browseFoldersViewController];
  v15 = [v14 recordingViewController];

  v16 = [(RCMainViewController *)self playbackViewController];
  [v16 showIdleForUUID:v13];

  if (a3 == 1)
  {
    if ([(RCMainViewController *)self _cardDismissalRequiredForSwitchToIdleFromActivityType:1 subActivityType:a4])
    {
      objc_initWeak(&location, self);
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000A6ED8;
      v24 = &unk_10028A6A0;
      objc_copyWeak(&v25, &location);
      [(RCMainViewController *)self setState:0 withOptions:0 completion:&v21];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    [v15 updateForRecordingEnd:{a4 == 3, v21, v22, v23, v24}];
  }

  else if (a5 != 5)
  {
    v17 = [(RCMainViewController *)self browseFoldersViewController];
    v18 = [v17 activeRecordingsCollectionViewController];
    [v18 showIdleForItemWithUUID:v13];

    v19 = [(RCMainViewController *)self mainControllerHelper];
    v20 = [v19 uuidOfPlayingRecording];
    [v15 showIdleForUUID:v20];
  }

  [(RCMainViewController *)self updateQuickActions];
}

- (void)captureFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:RCVoiceMemosErrorDomain])
  {
    v6 = [v4 code];

    if (!v6)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"ERROR_RECORDING_FAILED" value:&stru_100295BB8 table:0];
      v9 = [v4 localizedDescription];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000A7204;
      v17[3] = &unk_10028A3B8;
      v17[4] = self;
      v10 = [UIAlertController rc_OKAlertControllerWithTitle:v8 message:v9 handler:v17];

      v11 = [(RCMainViewController *)self browseFoldersViewController];
      v12 = [v11 activeRecordingsCollectionViewController];
      [v12 presentViewController:v10 animated:1 completion:0];
    }
  }

  else
  {
  }

  v13 = [v4 domain];
  if ([v13 isEqualToString:@"VMAudioServiceErrorDomain"] && objc_msgSend(v4, "code") == 6)
  {
    v14 = [(RCMainViewController *)self state];

    if (v14 != 1)
    {
      goto LABEL_10;
    }

    v13 = [(RCMainViewController *)self browseFoldersViewController];
    v15 = [v13 recordingViewController];
    [v15 handleDone];
  }

LABEL_10:
  v16 = [(RCMainViewController *)self selectedUUID];
  if (v16)
  {
    [(RCMainViewController *)self didSelectForUUID:v16 resetPosition:0 force:1];
  }
}

- (void)recordingDurationUpdated:(double)a3
{
  if ([(RCMainViewController *)self isRecording])
  {
    return;
  }

  v5 = [(RCMainViewController *)self browseFoldersViewController];
  v6 = [v5 recordingViewController];
  v7 = [v6 view];
  [v7 setRecordingDuration:a3];

  v32 = [(RCMainViewController *)self selectedComposition];
  v8 = [v32 savedRecordingUUID];
  v9 = [RCRecordingDisplayModel recordingDisplayModelForUUID:v8];

  if (v32)
  {
    if (v9)
    {
      [v9 duration];
      if (v10 == a3 || ([v9 title], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "creationDate"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "UUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v9, "recentlyDeleted"), v15 = objc_msgSend(v9, "isFavorite"), v16 = objc_msgSend(v9, "isEnhanced"), v17 = objc_msgSend(v9, "hasTranscription"), v18 = objc_msgSend(v9, "isSpatialRecording"), BYTE3(v31) = objc_msgSend(v9, "wasManuallyRenamed"), BYTE2(v31) = v18, BYTE1(v31) = v17, LOBYTE(v31) = v16, +[RCRecordingDisplayModel recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:](RCRecordingDisplayModel, "recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:", v11, v12, v13, v14, 0, v15, a3, v31), v19 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v9, (v9 = v19) != 0))
      {
        v20 = [(RCMainViewController *)self mainControllerHelper];
        v21 = [v20 currentRecordingDisplayModel];

        if (v21 != v9)
        {
          v22 = [(RCMainViewController *)self mainControllerHelper];
          [v22 setCurrentRecordingDisplayModel:v9];
        }

        v23 = [(RCMainViewController *)self recordingCardPresentationHelper];
        v24 = [v23 presentedViewController];
        if (v24)
        {
          v25 = v24;
LABEL_12:

          goto LABEL_13;
        }

        v26 = [(RCMainViewController *)self playbackViewController];
        v27 = [v26 uuidBeingDisplayed];
        v28 = [v9 UUID];
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {
          v23 = [(RCMainViewController *)self playbackViewController];
          v25 = [(RCMainViewController *)self mainControllerHelper];
          v30 = [v25 timeController];
          [v23 enablePlaybackWithComposition:v32 displayModel:v9 timeController:v30];

          goto LABEL_12;
        }
      }
    }
  }

LABEL_13:
}

- (NSString)selectedUUID
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 selectedRecording];

  v4 = [v3 uuid];

  return v4;
}

- (void)setCurrentTime:(double)a3 withUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainViewController *)self browseFoldersViewController];
  v8 = [v7 activeRecordingsCollectionViewController];
  [v8 setCurrentTime:v6 forItemWithUUID:a3];

  v9 = [(RCMainViewController *)self browseFoldersViewController];
  v10 = [v9 recordingViewController];
  [v10 updateCurrentTimeForUUID:v6 toTime:a3];

  v11 = [(RCMainViewController *)self playbackViewController];
  [v11 updateCurrentTimeForUUID:v6 toTime:a3];
}

- (void)userDidDeleteRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  [(RCMainViewController *)self _dismissShareMemoVCIfNeededForDeletedUUIDs:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(RCMainViewController *)self browseFoldersViewController];
        v12 = [v11 activeRecordingsCollectionViewController];
        [v12 handleDeleteForUUID:v10];

        v13 = [(RCMainViewController *)self browseFoldersViewController];
        v14 = [v13 recordingViewController];
        [v14 handleRemovalOfUUID:v10];

        v15 = [(RCMainViewController *)self playbackViewController];
        [v15 handleRemovalOfUUID:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(RCMainViewController *)self updateQuickActions];
}

- (void)userDidRecoverRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(RCMainViewController *)self playbackViewController];
        [v10 handleRemovalOfUUID:v9];

        v11 = [(RCMainViewController *)self browseFoldersViewController];
        v12 = [v11 activeRecordingsCollectionViewController];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 handleRecoverForUUID:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)userDidEraseRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  [(RCMainViewController *)self _dismissShareMemoVCIfNeededForDeletedUUIDs:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(RCMainViewController *)self playbackViewController];
        [v11 handleRemovalOfUUID:v10];

        v12 = [(RCMainViewController *)self browseFoldersViewController];
        v13 = [v12 activeRecordingsCollectionViewController];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 handleEraseForUUID:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(RCMainViewController *)self updateQuickActions];
}

- (void)_dismissShareMemoVCIfNeededForDeletedUUIDs:(id)a3
{
  v8 = a3;
  v4 = +[RCShareMemoViewController presentedController];
  if (v4)
  {
    v5 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v5 activeRecordingsCollectionViewController];
    v7 = [v6 uuidOfSelectedItem];

    if ([v8 containsObject:v7])
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (BOOL)canHandleCustomAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([v5 modifierFlags] & 0x100000) != 0 || (-[RCMainViewController isFirstResponder](self, "isFirstResponder"))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v20 = +[UIResponder currentFirstResponder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v20 isEditing] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  v7 = [(RCMainViewController *)self presentedViewController];
  v8 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v9 = [v8 presentedViewController];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [(RCMainViewController *)self recordingCardPresentationHelper];
    v12 = [v11 presentedViewController];
    v13 = [v12 presentedViewController];

    if (v13)
    {
      v14 = [(RCMainViewController *)self recordingCardPresentationHelper];
      v15 = [v14 presentedViewController];
      v16 = [v15 presentedViewController];

      v17 = 0;
      v7 = v16;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [(RCMainViewController *)self presentedViewController];

  LOBYTE(v18) = v17 | (v18 == 0) | ([v7 modalPresentationStyle] == 7);
  return v6 & v18;
}

- (BOOL)canStartNewRecording
{
  v3 = [(RCMainViewController *)self _isRecordingOrBlockedByModal];
  v4 = [(RCMainViewController *)self activeFolderViewController];
  if (v4)
  {
    v5 = [(RCMainViewController *)self activeFolderViewController];
    v6 = [v5 supportsRecording];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return ((v3 | v7) & 1) == 0 && !self->_viewIsAppearingOrDisappearing;
}

- (void)startNewRecordingAction
{
  v5 = [(RCMainViewController *)self selectedComposition];
  if (!v5 || ([v5 savedRecordingUUID], v3 = objc_claimAutoreleasedReturnValue(), v3, v4 = v5, v3))
  {
    [(RCMainViewController *)self performAction:3 atPosition:0 forUUID:0 sourceController:0 source:0.0];
    v4 = v5;
  }
}

- (BOOL)canPlayRecording
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];

  v5 = [(RCMainViewController *)self mainControllerHelper];
  if ([v5 isRecording])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [(RCMainViewController *)self mainControllerHelper];
    if ([v7 readyForPlayback])
    {
      v8 = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
      if (v8)
      {
        v9 = [(RCMainViewController *)self playbackViewController];
        v10 = [v9 view];
        if ([v10 textFieldIsBeingEdited] & 1) != 0 || (objc_msgSend(v4, "selectedCellIsEditingTitle") & 1) != 0 || (objc_msgSend(v4, "selectedCellIsInFlightEditing"))
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          v12 = [(RCMainViewController *)self browseFoldersViewController];
          v13 = [v12 recordingViewController];
          v14 = [v13 view];
          v6 = [v14 textFieldIsBeingEdited] ^ 1;
        }
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)playRecording
{
  v3 = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
  [(RCMainViewController *)self performAction:2 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
}

- (BOOL)canRenameRecording
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];
  if (v4)
  {
    v5 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v5 recordingViewController];
    v7 = [v6 uuidBeingDisplayed];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)renameRecording
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v2 = [v3 activeRecordingsCollectionViewController];
  [v2 editSelectedItemTitle];
}

- (BOOL)canShareRecording
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];
  if (v4)
  {
    v5 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v5 activeRecordingsCollectionViewController];
    v7 = [v6 selectedCellIsInFlightEditing] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)shareRecording:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self playbackViewController];
  [v5 shareCurrentRecording:v4];
}

- (BOOL)canDuplicateRecording
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  v5 = [v4 selectedUUIDs];

  if ([v5 count] == 1)
  {
    v6 = [(RCMainViewController *)self _canDuplicate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canEditRecording
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];

  if ([(RCMainViewController *)self state])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(RCMainViewController *)self playbackViewController];
    v7 = [v6 uuidBeingDisplayed];
    if (!v7 || ([v4 selectedCellIsEditingTitle] & 1) != 0 || (objc_msgSend(v4, "selectedCellIsInFlightEditing") & 1) != 0)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v9 = [(RCMainViewController *)self browseFoldersViewController];
      v5 = [v9 isShowingRecentlyDeleted] ^ 1;
    }
  }

  return v5;
}

- (BOOL)canTrimRecording
{
  v3 = [(RCMainViewController *)self isRecording];
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 recordingViewController];
  v6 = [v5 view];
  v7 = [v6 recordingViewState];

  v8 = [(RCMainViewController *)self browseFoldersViewController];
  v9 = [v8 recordingViewController];
  if ([v9 isDisplayingTranscriptView])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(RCMainViewController *)self playbackViewController];
    v10 = [v11 isDisplayingTranscriptView];
  }

  v13 = [(RCMainViewController *)self browseFoldersViewController];
  v12 = [v13 activeRecordingsCollectionViewController];

  LOBYTE(v13) = 0;
  if (v7 == 8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v3;
  }

  if ((v14 & 1) == 0 && (v10 & 1) == 0)
  {
    v15 = [(RCMainViewController *)self playbackViewController];
    v16 = [v15 uuidBeingDisplayed];
    if (!v16 || ([v12 selectedCellIsEditingTitle] & 1) != 0 || (objc_msgSend(v12, "selectedCellIsInFlightEditing") & 1) != 0)
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      v18 = [(RCMainViewController *)self browseFoldersViewController];
      LODWORD(v13) = [v18 isShowingRecentlyDeleted] ^ 1;
    }
  }

  return v13;
}

- (BOOL)canToggleFavoriteRecording
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];
  if (v4)
  {
    v5 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v5 isShowingRecentlyDeleted] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)currentSelectionHasSpatialRecording
{
  v2 = [(RCMainViewController *)self mainControllerHelper];
  v3 = [v2 currentSelectionHasSpatialAudio];

  return v3;
}

- (BOOL)canToggleEnhanceRecording
{
  if ([(RCMainViewController *)self isRecording])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(RCMainViewController *)self playbackViewController];
    v5 = [v4 uuidBeingDisplayed];
    if (v5)
    {
      v6 = [(RCMainViewController *)self browseFoldersViewController];
      v3 = [v6 isShowingRecentlyDeleted] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)canToggleRemoveSilence
{
  if ([(RCMainViewController *)self isRecording])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(RCMainViewController *)self playbackViewController];
    v5 = [v4 uuidBeingDisplayed];
    if (v5)
    {
      v6 = [(RCMainViewController *)self browseFoldersViewController];
      v3 = [v6 isShowingRecentlyDeleted] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)canToggleSpeechIsolator
{
  if ([(RCMainViewController *)self isRecording])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(RCMainViewController *)self playbackViewController];
    v5 = [v4 uuidBeingDisplayed];
    if (v5)
    {
      v6 = [(RCMainViewController *)self browseFoldersViewController];
      v3 = [v6 isShowingRecentlyDeleted] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)currentSelectionHasSpeechIsolatorEnabled
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];

  v5 = [(RCMainViewController *)self playbackSettings];
  v6 = [v5 uuid];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(RCMainViewController *)self playbackSettings];
    v9 = [v8 speechIsolatorEnabled];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)toggleSpeechIsolator
{
  v4 = [(RCMainViewController *)self playbackViewController];
  v3 = [v4 uuidBeingDisplayed];
  [(RCMainViewController *)self toggleSpeechIsolatorForUUID:v3];
}

- (void)toggleSpeechIsolatorForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self playbackSettings];
  v6 = [v5 uuid];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(RCMainViewController *)self playbackSettings];
    v9 = [v8 speechIsolatorEnabled];

    [(RCMainViewController *)self setSpeechIsolatorEnabled:v9 ^ 1 forUUID:v4];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA8C8(v4, self);
    }
  }
}

- (void)duplicateRecording
{
  v5 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v5 activeRecordingsCollectionViewController];
  v4 = [v3 uuidOfSelectedRecording];
  [(RCMainViewController *)self performAction:13 atPosition:v4 forUUID:0 sourceController:0 source:0.0];
}

- (void)editRecording
{
  v3 = [(RCMainViewController *)self mainControllerHelper];
  v4 = [v3 currentRecordingDisplayModel];
  v6 = [v4 UUID];

  if (v6)
  {
    v5 = [(RCMainViewController *)self playbackViewController];
    [v5 stopScrolling];

    [(RCMainViewController *)self performAction:22 atPosition:v6 forUUID:0 sourceController:0 source:0.0];
  }
}

- (void)trimRecording
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];

  if (v4)
  {
    v5 = [(RCMainViewController *)self playbackViewController];
    [v5 stopScrolling];

    v7 = [(RCMainViewController *)self playbackViewController];
    v6 = [v7 uuidBeingDisplayed];
    [(RCMainViewController *)self performAction:30 atPosition:v6 forUUID:0 sourceController:0 source:0.0];
  }
}

- (BOOL)currentSelectionIsFavorite
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];

  if (v4)
  {
    v5 = [(RCMainViewController *)self isFavoriteForUUID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleFavoriteRecording
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v5 = [v3 uuidBeingDisplayed];

  v4 = v5;
  if (v5)
  {
    [(RCMainViewController *)self toggleFavoriteForUUID:v5];
    v4 = v5;
  }
}

- (BOOL)currentSelectionIsEnhanced
{
  v2 = [(RCMainViewController *)self playbackViewController];
  v3 = [v2 uuidBeingDisplayed];

  if (v3)
  {
    v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:v3];
    v5 = [v4 isEnhanced];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleEnhanceRecording
{
  v4 = [(RCMainViewController *)self playbackViewController];
  v3 = [v4 uuidBeingDisplayed];
  [(RCMainViewController *)self toggleEnhanceRecordingForUUID:v3];
}

- (void)toggleEnhanceRecordingForUUID:(id)a3
{
  v7 = a3;
  v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:?];
  v5 = v4;
  if (v4)
  {
    if ([v4 isEnhanced])
    {
      v6 = 39;
    }

    else
    {
      v6 = 38;
    }

    [(RCMainViewController *)self performAction:v6 atPosition:v7 forUUID:0 sourceController:0 source:0.0];
  }
}

- (BOOL)currentSelectionHasSilenceRemoved
{
  v3 = [(RCMainViewController *)self playbackViewController];
  v4 = [v3 uuidBeingDisplayed];

  if (v4 && (-[RCMainViewController playbackSettings](self, "playbackSettings"), v5 = objc_claimAutoreleasedReturnValue(), [v5 uuid], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", v4), v6, v5, v7))
  {
    v8 = [(RCMainViewController *)self playbackSettings];
    v9 = [v8 silenceRemoved];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)toggleRemoveSilence
{
  v4 = [(RCMainViewController *)self playbackViewController];
  v3 = [v4 uuidBeingDisplayed];
  [(RCMainViewController *)self toggleRemoveSilenceForUUID:v3];
}

- (void)toggleRemoveSilenceForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainViewController *)self playbackSettings];
  v6 = [v5 uuid];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(RCMainViewController *)self playbackSettings];
    v9 = [v8 silenceRemoved];

    [(RCMainViewController *)self setRemoveSilence:v9 ^ 1 forUUID:v4];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA978(v4, self);
    }
  }
}

- (void)toggleTranscriptView
{
  v3 = [(RCMainViewController *)self recordingCardPresentationHelper];
  v4 = [v3 presentedViewController];

  if (v4)
  {
    v5 = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [v5 recordingViewController];
    [v6 toggleTranscriptView];
  }

  v7 = [(RCMainViewController *)self playbackViewController];
  [v7 toggleTranscriptView];
}

- (void)copyTranscript:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 transcriptionStringForRecordingUUID:v3 completionHandler:&stru_10028C2F0];
}

- (void)renameDescriptionViewTitleTextField:(id)a3 withUUID:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(RCMainViewController *)self browseFoldersViewController];
    v8 = [v7 activeRecordingsCollectionViewController];
    v9 = [v8 uuidOfSelectedItem];

    if (([v9 isEqualToString:v6] & 1) == 0)
    {
      v10 = [(RCMainViewController *)self browseFoldersViewController];
      v11 = [v10 activeRecordingsCollectionViewController];
      [v11 selectItemWithUUID:v6];
    }

    [v12 beginEditingTitle];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (![(RCMainViewController *)self canHandleCustomAction:a3 withSender:a4]|| "delete:" != a3)
  {
    return 0;
  }

  return [(RCMainViewController *)self canDelete];
}

- (BOOL)canDelete
{
  v3 = [(RCMainViewController *)self presentedConfirmationController];

  if (v3)
  {
    return 0;
  }

  return [(RCMainViewController *)self _canDelete];
}

- (void)delete:(id)a3
{
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 activeRecordingsCollectionViewController];
  v6 = [v5 selectedCellIsEditingTitle];

  if (v6)
  {
    return;
  }

  v7 = [(RCMainViewController *)self browseFoldersViewController];
  v8 = [v7 activeRecordingsCollectionViewController];

  v9 = [(RCMainViewController *)self browseFoldersViewController];
  if ([v9 isShowingRecentlyDeleted])
  {
    v10 = 17;
  }

  else
  {
    v10 = 15;
  }

  v11 = [(RCMainViewController *)self state];
  if (v11 == 1)
  {
    v14 = [(RCMainViewController *)self browseFoldersViewController];
    v15 = [v14 recordingViewController];

    v12 = v15;
    v20 = [v12 uuidBeingDisplayed];
    v16 = [v12 view];
    [(RCMainViewController *)self performAction:14 atPosition:v20 forUUID:v12 sourceController:v16 source:0.0];
  }

  else
  {
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
      if (![v12 isEditing] || (objc_msgSend(v12, "selectedUUIDs"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        v20 = [v12 uuidOfSelectedItem];
        v17 = [v12 view];
        v18 = [v17 window];
        if (v18)
        {
          v19 = [v12 cellForUUID:v20];
        }

        else
        {
          v19 = 0;
        }

        [(RCMainViewController *)self performAction:v10 atPosition:v20 forUUID:v12 sourceController:v19 source:0.0];
        goto LABEL_17;
      }

      [v12 deleteSelectedItems];
    }

    v20 = 0;
  }

LABEL_17:
}

- (BOOL)canJumpForward
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];

  v5 = [(RCMainViewController *)self playbackViewController];
  v6 = [v5 uuidBeingDisplayed];
  if (v6)
  {
    v7 = [v5 view];
    if ([v7 textFieldIsBeingEdited])
    {
      v8 = 0;
    }

    else
    {
      v9 = [(RCMainViewController *)self browseFoldersViewController];
      v10 = [v9 recordingViewController];
      v11 = [v10 view];
      if ([v11 textFieldIsBeingEdited] & 1) != 0 || (objc_msgSend(v4, "selectedCellIsEditingTitle") & 1) != 0 || (objc_msgSend(v4, "selectedCellIsInFlightEditing"))
      {
        v8 = 0;
      }

      else
      {
        v13 = [(RCMainViewController *)self mainControllerHelper];
        v8 = [v13 canJumpForward];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)jumpSelectionForward
{
  v3 = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
  [(RCMainViewController *)self performAction:11 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
}

- (BOOL)canJumpBackward
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];

  v5 = [(RCMainViewController *)self playbackViewController];
  v6 = [v5 uuidBeingDisplayed];
  if (v6)
  {
    v7 = [v5 view];
    if ([v7 textFieldIsBeingEdited])
    {
      v8 = 0;
    }

    else
    {
      v9 = [(RCMainViewController *)self browseFoldersViewController];
      v10 = [v9 recordingViewController];
      v11 = [v10 view];
      if ([v11 textFieldIsBeingEdited] & 1) != 0 || (objc_msgSend(v4, "selectedCellIsEditingTitle") & 1) != 0 || (objc_msgSend(v4, "selectedCellIsInFlightEditing"))
      {
        v8 = 0;
      }

      else
      {
        v13 = [(RCMainViewController *)self mainControllerHelper];
        v8 = [v13 canJumpBackward];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)jumpSelectionBackward
{
  v3 = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
  [(RCMainViewController *)self performAction:12 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
}

- (BOOL)canHandleDone
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 recordingViewController];
  v5 = [v4 view];
  v6 = [v5 recordingViewState];

  if (!v6)
  {
    return 0;
  }

  v7 = [(RCMainViewController *)self browseFoldersViewController];
  v8 = [v7 recordingViewController];
  v9 = [v8 view];
  v10 = [v9 recordingViewState];

  if (v10 != 8)
  {
    return 1;
  }

  v11 = [(RCMainViewController *)self browseFoldersViewController];
  v12 = [v11 recordingViewController];
  v13 = [v12 view];
  v14 = [v13 canSaveTrimChanges];

  return v14;
}

- (void)handleDone
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v2 = [v3 recordingViewController];
  [v2 handleDone];
}

- (BOOL)canHandleCancel
{
  v2 = [(RCMainViewController *)self browseFoldersViewController];
  v3 = [v2 recordingViewController];
  v4 = [v3 view];
  v5 = [v4 recordingViewState] == 8;

  return v5;
}

- (void)handleCancel
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v2 = [v3 recordingViewController];
  [v2 handleCancel];
}

- (BOOL)canToggleSidebar
{
  v3 = [(RCMainViewController *)self state];
  v4 = [(RCMainViewController *)self presentedViewController];
  v5 = v3 | v4;

  return v5 == 0;
}

- (void)recoverRecording
{
  v4 = [(RCMainViewController *)self playbackViewController];
  v3 = [v4 uuidBeingDisplayed];
  [(RCMainViewController *)self performAction:19 atPosition:v3 forUUID:self sourceController:0 source:0.0];
}

- (void)eraseRecording
{
  v4 = [(RCMainViewController *)self playbackViewController];
  v3 = [v4 uuidBeingDisplayed];
  [(RCMainViewController *)self performAction:16 atPosition:v3 forUUID:self sourceController:0 source:0.0];
}

- (id)_uuidOfRecordingForPlaybackActivities
{
  v3 = [(RCMainViewController *)self browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  v5 = [v4 selectedRecording];
  v6 = [v5 uuid];

  if (!v6)
  {
    v7 = [(RCMainViewController *)self browseFoldersViewController];
    v8 = [v7 recordingViewController];
    v6 = [v8 uuidBeingDisplayed];
  }

  return v6;
}

- (BOOL)_canDuplicate
{
  v3 = [(RCMainViewController *)self _canDelete];
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 isShowingRecentlyDeleted] ^ 1;

  return v3 & v5;
}

- (BOOL)_canDelete
{
  v4 = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [v4 activeRecordingsCollectionViewController];

  if (([(RCMainViewController *)self isFirstResponder]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[UIResponder currentFirstResponder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 selectedRange];
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }
  }

  v9 = [(RCMainViewController *)self playbackViewController];
  v10 = [v9 uuidBeingDisplayed];
  if (!v10)
  {
    v2 = [v5 uuidOfSelectedItem];
    if (!v2)
    {
      LOBYTE(v14) = 0;
LABEL_17:

      v15 = v14;
      goto LABEL_18;
    }
  }

  if (!-[RCMainViewController state](self, "state") && ([v5 selectedCellIsEditingTitle] & 1) == 0 && (objc_msgSend(v5, "selectedCellIsInFlightEditing") & 1) == 0)
  {
    v11 = [v5 searchController];
    v12 = [v11 searchBar];
    v13 = [v12 searchTextField];
    if (([v13 isEditing] & 1) == 0)
    {
      v24 = [(RCMainViewController *)self playbackViewController];
      v17 = [v24 view];
      if ([v17 textFieldIsBeingEdited])
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v23 = [(RCMainViewController *)self browseFoldersViewController];
        v22 = [v23 recordingViewController];
        v21 = [v22 view];
        if ([v21 textFieldIsBeingEdited])
        {
          LOBYTE(v14) = 0;
        }

        else
        {
          v20 = [(RCMainViewController *)self browseFoldersViewController];
          v19 = [v20 recordingViewController];
          v18 = [v19 view];
          v14 = ([v18 editingInFlight] ^ 1) & v6;
        }
      }

      v15 = v14;
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  LOBYTE(v14) = 0;
  v15 = 0;
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v15;
}

- (void)_axAnnounceDidSetEnhanced:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"AX_ENHANCE_ON_ANNOUNCE";
  }

  else
  {
    v6 = @"AX_ENHANCE_OFF_ANNOUNCE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100295BB8 table:0];

  v8 = dispatch_time(0, 800000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9F3C;
  block[3] = &unk_10028A3B8;
  v11 = v7;
  v9 = v7;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (UIViewController)presentedConfirmationController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedConfirmationController);

  return WeakRetained;
}

- (RCFolderSelectionContainerViewController)presentedSelectFolderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedSelectFolderViewController);

  return WeakRetained;
}

- (RCPlaybackSettingsViewController)presentedPlaybackSettingsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedPlaybackSettingsViewController);

  return WeakRetained;
}

- (UIViewController)presentingPlaybackSettingsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingPlaybackSettingsViewController);

  return WeakRetained;
}

- (UIAlertAction)createNewFolderSaveAction
{
  WeakRetained = objc_loadWeakRetained(&self->_createNewFolderSaveAction);

  return WeakRetained;
}

- (UIAlertAction)renameFolderSaveAction
{
  WeakRetained = objc_loadWeakRetained(&self->_renameFolderSaveAction);

  return WeakRetained;
}

- (void)separateRecordingLayers:(id)a3
{
  v4 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = self;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v8;
  v14[5] = v10;
  v14[6] = v12;
  sub_100194190(0, 0, v7, &unk_10024F220, v14);
}

@end