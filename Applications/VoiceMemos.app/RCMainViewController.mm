@interface RCMainViewController
- (BOOL)_canDelete;
- (BOOL)_canDuplicate;
- (BOOL)_isRecordingOrBlockedByModal;
- (BOOL)_libraryIsEditing;
- (BOOL)canDelete;
- (BOOL)canDuplicateRecording;
- (BOOL)canEditRecording;
- (BOOL)canHandleCancel;
- (BOOL)canHandleCustomAction:(SEL)action withSender:(id)sender;
- (BOOL)canHandleDone;
- (BOOL)canJumpBackward;
- (BOOL)canJumpForward;
- (BOOL)canMoveRecordingsWithUUIDs:(id)ds toFolderWithUUID:(id)d toFolderType:(int64_t)type fromFolderUUID:(id)iD;
- (BOOL)canMoveSelectedRecordingsFromFolderWithUUID:(id)d toFolderWithDisplayModel:(id)model excludedFolderUUIDsForSelection:(id)selection;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
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
- (BOOL)isEditingInFlightForUUID:(id)d;
- (BOOL)isFavoriteForUUID:(id)d;
- (BOOL)isPlayingForUUID:(id)d;
- (BOOL)isQuickRecordingWorkflowDismissal;
- (BOOL)isRecording;
- (BOOL)isShowingRecentlyDeleted;
- (BOOL)isSilencing;
- (BOOL)remoteToggleShouldPauseRecording;
- (BOOL)toggleRecording;
- (NSString)selectedUUID;
- (RCFolderSelectionContainerViewController)presentedSelectFolderViewController;
- (RCMainViewController)initWithCoder:(id)coder;
- (RCMainViewController)initWithNibName:(id)name bundle:(id)bundle;
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
- (id)_stringForAudioEditingStatus:(int)status;
- (id)_uuidOfRecordingForPlaybackActivities;
- (id)activeFolderViewController;
- (id)availableQuickActions;
- (id)contentScrollView;
- (id)folderUUIDsToExcludeWhenMovingRecordingUUIDs:(id)ds;
- (id)moveToFolderContainerViewControllerWithUUIDs:(id)ds;
- (id)overviewWaveformViewController;
- (id)platterViewControllerForPresentationStyle:(unint64_t)style;
- (id)recordingCardNavigationController;
- (id)recordingCardNavigationItem;
- (id)recordingInProgressUUID;
- (id)selectedComposition;
- (id)waveformViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_axAnnounceDidSetEnhanced:(BOOL)enhanced;
- (void)_commonInit;
- (void)_dismissCardView:(id)view;
- (void)_dismissShareMemoVCIfNeededForDeletedUUIDs:(id)ds;
- (void)_displayMultiLayerAlertIfNeeded;
- (void)_endDescriptionViewTextEditing;
- (void)_hideNavigationItemTitle;
- (void)_myPresentViewController:(id)controller sourceController:(id)sourceController animated:(BOOL)animated completion:(id)completion;
- (void)_newFolderTextDidChange:(id)change;
- (void)_openForModifyRecordingWithUUID:(id)d enterTrim:(BOOL)trim;
- (void)_prepareToDisplayCardViewWithCompletionBlock:(id)block;
- (void)_presentCardViewWithOptions:(unint64_t)options completion:(id)completion;
- (void)_presentMoveToFolderUIForRecordingWithUUID:(id)d;
- (void)_presentMoveToFolderUIForRecordingsWithUUIDs:(id)ds;
- (void)_presentNameTakenAlertWithName:(id)name sourceController:(id)controller;
- (void)_presentPlaybackSettingsUIWithSource:(id)source UUID:(id)d;
- (void)_presentViewController:(id)controller fromViewController:(id)viewController animated:(BOOL)animated widthHeightConstraintConstant:(double)constant completion:(id)completion;
- (void)_processMoveOfUUID:(id)d toBuiltInFolderOfType:(int64_t)type;
- (void)_removeFromUserFolderRecordingsWithUUIDs:(id)ds;
- (void)_renamingTextDidChange:(id)change;
- (void)_restyleCardViewAndReparentIfNeeded;
- (void)_selectRecordingWithUUID:(id)d inRecordingsCollectionViewController:(id)controller;
- (void)_setCorrectOriginalFolderForRecordingWithUUID:(id)d folderType:(int64_t)type userFolderName:(id)name;
- (void)_showNavigationItemTitle;
- (void)_startCapturing:(id)capturing completion:(id)completion;
- (void)_styleView;
- (void)_switchToCapturingFromPreviousActivityType:(int64_t)type displayModel:(id)model waveformDataSource:(id)source isReplaceOrAppend:(BOOL)append;
- (void)_switchToEditingFromPreviousActivityType:(int64_t)type displayModel:(id)model withComposition:(id)composition enterTrim:(BOOL)trim;
- (void)_switchToIdleFromPreviousActivityType:(int64_t)type fromSubActivityType:(int64_t)activityType toSubActivityType:(int64_t)subActivityType displayModel:(id)model withUUID:(id)d;
- (void)_switchToPlayingBackFromPreviousActivityType:(int64_t)type withUUID:(id)d;
- (void)_transitionToBrowsing:(id)browsing;
- (void)_transitionToCaptureAndModifyWithOptions:(unint64_t)options completion:(id)completion;
- (void)_updateControllersToEditingInFlight:(BOOL)flight progress:(float)progress forUUID:(id)d;
- (void)backupTimerFiredForUUID:(id)d;
- (void)cancelTrimMode;
- (void)captureFailedWithError:(id)error;
- (void)closeSidebar;
- (void)confirmEraseAllWithSourceController:(id)controller source:(id)source eraseAllDeleted:(BOOL)deleted;
- (void)confirmEraseSelectedWithSourceController:(id)controller source:(id)source eraseAllDeleted:(BOOL)deleted;
- (void)confirmEraseWithUUIDs:(id)ds sourceController:(id)controller source:(id)source eraseAllDeleted:(BOOL)deleted;
- (void)confirmRecoverAllWithSourceController:(id)controller source:(id)source;
- (void)confirmRecoverSelectedWithSourceController:(id)controller source:(id)source;
- (void)confirmRecoverWithUUIDs:(id)ds sourceController:(id)controller source:(id)source force:(BOOL)force;
- (void)copyTranscript:(id)transcript;
- (void)delete:(id)delete;
- (void)deleteFolder:(id)folder controller:(id)controller completionBlock:(id)block;
- (void)deleteRecordingsWithUUIDs:(id)ds sourceController:(id)controller source:(id)source showInfo:(BOOL)info;
- (void)didEndDragSession;
- (void)didExitTrimMode;
- (void)didHidePlaybackSettingsViewController;
- (void)didReturnToFoldersList;
- (void)didSelectFolderOfType:(int64_t)type;
- (void)didSelectForUUID:(id)d resetPosition:(BOOL)position force:(BOOL)force;
- (void)didTransitionWithTransitionInfo:(id)info;
- (void)didUpdateCurrentRecordingDisplayModel;
- (void)didUpdateNavigationBarVisibility;
- (void)didUpdateRecordingViewDisplayStyle;
- (void)didUpdateToStatus:(int)status progress:(float)progress forRecordingWithUUID:(id)d;
- (void)duplicateRecording;
- (void)editRecording;
- (void)enableUndoFirstResponder;
- (void)endEditing;
- (void)endRecording;
- (void)eraseRecording;
- (void)exitTrimMode;
- (void)finishInitialSetup:(id)setup goToAllRecordings:(BOOL)recordings;
- (void)finishedEditingWithNewRecordingUUID:(id)d;
- (void)goToAllRecordingsIfNeeded:(BOOL)needed completion:(id)completion;
- (void)goToFolderOfType:(int64_t)type withName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)goToRecentlyDeletedIfNeededWithCompletion:(id)completion;
- (void)handleCancel;
- (void)handleDone;
- (void)handleEndOfWelcome;
- (void)hideFolderSelectionViewController;
- (void)hidePlaybackSettingsViewController;
- (void)jumpSelectionBackward;
- (void)jumpSelectionForward;
- (void)libraryWillChangeEditingState:(BOOL)state;
- (void)loadView;
- (void)moveFolder:(id)folder toDestinationIndexPath:(id)path;
- (void)moveRecordingsWithUUIDs:(id)ds fromFolderOfType:(int64_t)type toBuiltInFolderOfType:(int64_t)ofType;
- (void)moveRecordingsWithUUIDs:(id)ds toBuiltInFolderOfType:(int64_t)type source:(id)source;
- (void)moveRecordingsWithUUIDs:(id)ds toFolderWithUUID:(id)d;
- (void)moveRecordingsWithUUIDs:(id)ds toUserFolderNamed:(id)named source:(id)source;
- (void)openSidebar;
- (void)pauseRecording;
- (void)performAction:(int64_t)action atPosition:(double)position forUUID:(id)d sourceController:(id)controller source:(id)source trackIndex:(unint64_t)index;
- (void)performClearAllRecentlyDeleted;
- (void)performDelayedSetup;
- (void)performRenameWithNewTitle:(id)title forUUID:(id)d;
- (void)playRecording;
- (void)playRecordingWithUUID:(id)d;
- (void)playbackSettingsViewController:(id)controller contentSizeChanged:(CGSize)changed;
- (void)recordingDidEnd;
- (void)recordingDurationUpdated:(double)updated;
- (void)recoverRecording;
- (void)recoverRecordingsWithUUIDs:(id)ds sourceController:(id)controller source:(id)source force:(BOOL)force;
- (void)refreshDisplayWithDisplayModel:(id)model;
- (void)reloadWaveformsFromComposition:(id)composition;
- (void)renameDescriptionViewTitleTextField:(id)field withUUID:(id)d;
- (void)renameFolder:(id)folder toName:(id)name;
- (void)renameRecording;
- (void)replaceRecording:(unint64_t)recording;
- (void)restyle;
- (void)resumeRecording:(unint64_t)recording;
- (void)saveAsNewDoneButtonAction:(BOOL)action;
- (void)selectNewRecordingForDismiss;
- (void)selectRecordingWithUUID:(id)d returnToBrowse:(BOOL)browse;
- (void)separateRecordingLayers:(id)layers;
- (void)setCurrentTime:(double)time withUUID:(id)d;
- (void)setEnhanced:(BOOL)enhanced forUUID:(id)d;
- (void)setFavorite:(BOOL)favorite forRecordingWithUUID:(id)d;
- (void)setFavorite:(BOOL)favorite forRecordingsWithUUIDs:(id)ds;
- (void)setForegroundCompletionBlock:(id)block;
- (void)setIsInForeground:(BOOL)foreground;
- (void)setLayerMix:(double)mix forUUID:(id)d;
- (void)setPlaybackSpeed:(double)speed forUUID:(id)d;
- (void)setRemoveSilence:(BOOL)silence forUUID:(id)d;
- (void)setSpeechIsolatorEnabled:(BOOL)enabled forUUID:(id)d;
- (void)setSpeechIsolatorValue:(float)value forUUID:(id)d;
- (void)setState:(int64_t)state withOptions:(unint64_t)options completion:(id)completion;
- (void)shareRecording:(id)recording;
- (void)shouldEnableTrimSave:(BOOL)save;
- (void)showNewFolderUIFromController:(id)controller;
- (void)showRenamingControllerWithFolderName:(id)name controller:(id)controller;
- (void)startNewRecordingAction;
- (void)stopPlayback;
- (void)toggleEnhanceRecording;
- (void)toggleEnhanceRecordingForUUID:(id)d;
- (void)toggleFavoriteForUUID:(id)d;
- (void)toggleFavoriteRecording;
- (void)toggleRemoveSilence;
- (void)toggleRemoveSilenceForUUID:(id)d;
- (void)toggleSpeechIsolator;
- (void)toggleSpeechIsolatorEnabledForUUID:(id)d;
- (void)toggleSpeechIsolatorForUUID:(id)d;
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
- (void)userDidDeleteRecordingsWithUUIDs:(id)ds;
- (void)userDidEraseRecordingsWithUUIDs:(id)ds;
- (void)userDidRecoverRecordingsWithUUIDs:(id)ds;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wasDeselectedForUUID:(id)d;
- (void)waveformTimeUpdated:(double)updated;
- (void)willBeginDragSession;
- (void)willTransitionFromHorizontalSizeClass:(int64_t)class toHorizontalSizeClass:(int64_t)sizeClass;
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
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  collectionViewIfLoaded = [browseFoldersViewController collectionViewIfLoaded];

  return collectionViewIfLoaded;
}

- (void)stopPlayback
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper stopPlayback];
}

- (RCPlaybackViewController)playbackViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackViewController);

  return WeakRetained;
}

- (void)updatePlaybackContentUnavailableViewIfNeeded
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];

  if (playbackViewController)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

    recordingsDataCoordinator = [activeRecordingsCollectionViewController recordingsDataCoordinator];
    recordingDataArray = [recordingsDataCoordinator recordingDataArray];
    v7 = [recordingDataArray count];
    v8 = v7 == 0;

    playbackViewController2 = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController2 uuidBeingDisplayed];

    if (!uuidBeingDisplayed)
    {
      if ([activeRecordingsCollectionViewController isEditing])
      {
        v8 = 1;
      }

      else
      {
        willSelectRecordingAfterExitingEditMode = [activeRecordingsCollectionViewController willSelectRecordingAfterExitingEditMode];
        if (v7)
        {
          v8 = willSelectRecordingAfterExitingEditMode;
        }

        else
        {
          v8 = 1;
        }
      }
    }

    if (uuidBeingDisplayed)
    {
      v12 = -1;
    }

    else
    {
      v12 = !v8;
    }

    playbackViewController3 = [(RCMainViewController *)self playbackViewController];
    [playbackViewController3 updateContentUnavailableViewState:v12];

    [(RCMainViewController *)self updateMenuBarWindowTitle];
  }
}

- (void)handleEndOfWelcome
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController becomeFirstResponder];

  [(RCMainViewController *)self updateQuickActions];
}

- (void)updateQuickActions
{
  v4 = +[UIApplication sharedApplication];
  availableQuickActions = [(RCMainViewController *)self availableQuickActions];
  [v4 setShortcutItems:availableQuickActions];
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
    recordings = [v18 recordings];
    for (i = 0; i != 3; ++i)
    {
      if (i >= [recordings count])
      {
        break;
      }

      v10 = [recordings objectAtIndexedSubscript:i];
      title = [v10 title];
      uuid = [v10 uuid];
      if ([title length] && objc_msgSend(uuid, "length"))
      {
        v13 = [UIApplicationShortcutIcon iconWithSystemImageName:@"play.circle"];
        v14 = [UIApplicationShortcutItem alloc];
        v19 = @"uniqueID";
        v20 = uuid;
        v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v16 = [v14 initWithType:@"com.apple.VoiceMemos.PlayRecording" localizedTitle:title localizedSubtitle:0 icon:v13 userInfo:v15];

        [v3 addObject:v16];
      }
    }
  }

  return v3;
}

- (BOOL)_isRecordingOrBlockedByModal
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  isRecording = [mainControllerHelper isRecording];

  mainViewControllerDelegate = [(RCMainViewController *)self mainViewControllerDelegate];
  LOBYTE(mainControllerHelper) = [mainViewControllerDelegate modalMustShowOrIsShowing];

  return (isRecording | mainControllerHelper) & 1;
}

- (RCMainViewControllerDelegate)mainViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewControllerDelegate);

  return WeakRetained;
}

- (BOOL)_libraryIsEditing
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  isEditing = [activeRecordingsCollectionViewController isEditing];

  return isEditing;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportedInterfaceOrientations = [v2 supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (double)currentTime
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper currentTime];
  v4 = v3;

  return v4;
}

- (void)performDelayedSetup
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController performDelayedSetup];

  navigationItem = [(RCMainViewController *)self navigationItem];
  [navigationItem setBackButtonDisplayMode:2];

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper startMonitoringFinalizingRecordings];
}

- (void)updateNavigationItemForCurrentState
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];

  viewIfLoaded = [currentActiveFolderViewController viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    [currentActiveFolderViewController updateNavigationItemForCurrentState];
  }
}

- (VMAudioRecorder)audioRecorder
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  audioRecorder = [mainControllerHelper audioRecorder];

  return audioRecorder;
}

- (VMAudioPlayer)audioPlayer
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  audioPlayer = [mainControllerHelper audioPlayer];

  return audioPlayer;
}

- (id)recordingInProgressUUID
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  recordingInProgressUUID = [mainControllerHelper recordingInProgressUUID];

  return recordingInProgressUUID;
}

- (void)openSidebar
{
  splitViewController = [(RCMainViewController *)self splitViewController];
  [splitViewController showColumn:0];
}

- (void)closeSidebar
{
  splitViewController = [(RCMainViewController *)self splitViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    splitViewController2 = [(RCMainViewController *)self splitViewController];
    if ([splitViewController2 isCollapsedAndShowingPrimary])
    {
      [(RCMainViewController *)self goToAllRecordingsIfNeeded:1 completion:0];
    }

    else if (([splitViewController2 isCollapsed] & 1) == 0)
    {
      splitViewController3 = [(RCMainViewController *)self splitViewController];
      [splitViewController3 hideColumn:0];
    }
  }
}

- (void)goToFolderOfType:(int64_t)type withName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  nameCopy = name;
  completionCopy = completion;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  v12 = browseFoldersViewController;
  if (type == 4)
  {
    [browseFoldersViewController goToUserFolderWithName:nameCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    [browseFoldersViewController goToBuiltInFolderOfType:type animated:animatedCopy completion:completionCopy];
  }
}

- (id)activeFolderViewController
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];

  return currentActiveFolderViewController;
}

- (RCPlaybackSettings)playbackSettings
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];
  uUID = [currentRecordingDisplayModel UUID];

  if (uUID)
  {
    v5 = [mainControllerHelper playbackSettingsForUUID:uUID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setState:(int64_t)state withOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  if (self->_state != state)
  {
    self->_state = state;
    if (state == 1)
    {
      v9 = completionCopy;
      [(RCMainViewController *)self _transitionToCaptureAndModifyWithOptions:options completion:completionCopy];
    }

    else
    {
      if (state)
      {
        goto LABEL_7;
      }

      v9 = completionCopy;
      [(RCMainViewController *)self _transitionToBrowsing:completionCopy];
    }

    completionCopy = v9;
  }

LABEL_7:
}

- (void)setIsInForeground:(BOOL)foreground
{
  if (self->_isInForeground != foreground)
  {
    self->_isInForeground = foreground;
    if (foreground)
    {
      foregroundCompletionBlock = [(RCMainViewController *)self foregroundCompletionBlock];

      if (foregroundCompletionBlock)
      {
        foregroundCompletionBlock2 = [(RCMainViewController *)self foregroundCompletionBlock];
        foregroundCompletionBlock2[2]();

        foregroundCompletionBlock = self->_foregroundCompletionBlock;
        self->_foregroundCompletionBlock = 0;
      }
    }
  }
}

- (void)setForegroundCompletionBlock:(id)block
{
  blockCopy = block;
  if (self->_foregroundCompletionBlock)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA710(v5);
    }
  }

  v6 = [blockCopy copy];
  foregroundCompletionBlock = self->_foregroundCompletionBlock;
  self->_foregroundCompletionBlock = v6;

  isInForeground = [(RCMainViewController *)self isInForeground];
  if (blockCopy && isInForeground)
  {
    blockCopy[2](blockCopy);
    v9 = self->_foregroundCompletionBlock;
    self->_foregroundCompletionBlock = 0;
  }
}

- (BOOL)isRecording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  isRecording = [mainControllerHelper isRecording];

  return isRecording;
}

- (BOOL)isSilencing
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  isSilencing = [mainControllerHelper isSilencing];

  return isSilencing;
}

- (RCMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = RCMainViewController;
  v4 = [(RCMainViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(RCMainViewController *)v4 _commonInit];
  }

  return v5;
}

- (RCMainViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RCMainViewController;
  v3 = [(RCMainViewController *)&v6 initWithCoder:coder];
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
  navigationItem = [(RCMainViewController *)self navigationItem];
  [navigationItem setBackButtonDisplayMode:2];

  view = [(RCMainViewController *)self view];
  [view setNeedsUpdateConstraints];

  view2 = [(RCMainViewController *)self view];
  [view2 setAccessibilityIdentifier:@"BrowseFoldersView"];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  view = [browseFoldersViewController view];
  view2 = [(RCMainViewController *)self view];
  [view2 setBrowseFoldersView:view];

  self->_viewIsAppearingOrDisappearing = 1;
  v9.receiver = self;
  v9.super_class = RCMainViewController;
  [(RCMainViewController *)&v9 viewWillAppear:appearCopy];
  [(RCMainViewController *)self _styleView];
  navigationController = [(RCMainViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RCMainViewController;
  [(RCMainViewController *)&v4 viewDidAppear:appear];
  self->_viewIsAppearingOrDisappearing = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  self->_viewIsAppearingOrDisappearing = 1;
  v3.receiver = self;
  v3.super_class = RCMainViewController;
  [(RCMainViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RCMainViewController;
  [(RCMainViewController *)&v4 viewDidDisappear:disappear];
  self->_viewIsAppearingOrDisappearing = 0;
}

- (void)finishInitialSetup:(id)setup goToAllRecordings:(BOOL)recordings
{
  recordingsCopy = recordings;
  setupCopy = setup;
  if (recordingsCopy)
  {
    v8 = setupCopy;
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    [browseFoldersViewController goToBuiltInFolderOfType:0 animated:0 completion:v8];
  }

  else
  {
    if (!setupCopy)
    {
      goto LABEL_6;
    }

    v8 = setupCopy;
    setupCopy[2]();
  }

  setupCopy = v8;
LABEL_6:
}

- (void)restyle
{
  [(RCMainViewController *)self _restyleCardViewAndReparentIfNeeded];
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController restyle];

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  [browseFoldersViewController restyle];

  [(RCMainViewController *)self _styleView];

  [(RCMainViewController *)self updateLibraryViewInEditModeForMedusa];
}

- (void)willTransitionFromHorizontalSizeClass:(int64_t)class toHorizontalSizeClass:(int64_t)sizeClass
{
  [(RCMainViewController *)self updatePlaybackSettings];
  presentedPlaybackSettingsViewController = [(RCMainViewController *)self presentedPlaybackSettingsViewController];

  if (presentedPlaybackSettingsViewController)
  {
    [(RCMainViewController *)self hidePlaybackSettingsViewController];
  }

  v7 = +[RCShareMemoViewController presentedController];

  if (v7)
  {
    presentedViewController = [(RCMainViewController *)self presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }

  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedViewController2 = [recordingCardPresentationHelper presentedViewController];

  if (sizeClass == 1 && presentedViewController2)
  {
    recordingCardPresentationHelper2 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [recordingCardPresentationHelper2 selectLargeDetent];
  }
}

- (void)updateLibraryViewInEditModeForMedusa
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  isEditing = [recordingViewController isEditing];

  if (isEditing)
  {
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController2 activeRecordingsCollectionViewController];
    [activeRecordingsCollectionViewController updateToolbarAndFooterView];
  }
}

- (void)_restyleCardViewAndReparentIfNeeded
{
  v3 = +[UIApplication sharedApplication];
  applicationState = [v3 applicationState];

  if (applicationState != 2)
  {
    recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
    [recordingCardPresentationHelper restyleRecordingCardSheetPresentationController];

    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];
    [recordingViewController restyle];
  }
}

- (void)_showNavigationItemTitle
{
  navigationItem = [(RCMainViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:1];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DEFAULT_NAVIGATION_TITLE" value:&stru_100295BB8 table:0];
  [navigationItem setTitle:v3];

  [navigationItem _setSupportsTwoLineLargeTitles:1];
}

- (void)_hideNavigationItemTitle
{
  navigationItem = [(RCMainViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
  [navigationItem setTitle:0];
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

  view = [(RCMainViewController *)self view];
  [view restyle];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = RCMainViewController;
  coordinatorCopy = coordinator;
  [(RCMainViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009F000;
  v8[3] = &unk_10028A488;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (id)selectedComposition
{
  currentRecordingDisplayModel = [(RCMainControllerHelper *)self->_mainControllerHelper currentRecordingDisplayModel];
  uUID = [currentRecordingDisplayModel UUID];

  v5 = [(RCMainControllerHelper *)self->_mainControllerHelper compositionForUUID:uUID];

  return v5;
}

- (void)saveAsNewDoneButtonAction:(BOOL)action
{
  actionCopy = action;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper doneButtonShouldSaveAsNew:actionCopy];
}

- (void)_transitionToBrowsing:(id)browsing
{
  browsingCopy = browsing;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper exitEditMode];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10009F2D0;
  v19 = &unk_10028BC38;
  selfCopy = self;
  v21 = browsingCopy;
  v6 = browsingCopy;
  [(RCMainViewController *)self _dismissCardView:&v16];
  v7 = [(RCMainViewController *)self browseFoldersViewController:v16];
  recordingViewController = [v7 recordingViewController];

  uuidBeingDisplayed = [recordingViewController uuidBeingDisplayed];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController2 = [browseFoldersViewController recordingViewController];
  [recordingViewController2 reset];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  selectedRecording = [browseFoldersViewController2 selectedRecording];
  uuid = [selectedRecording uuid];

  if (!uuid)
  {
    mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
    uuid = [mainControllerHelper2 uuidOfPlayingRecording];

    if (!uuid)
    {
      uuid = uuidBeingDisplayed;
    }
  }

  [(RCMainViewController *)self didSelectForUUID:uuid resetPosition:0 force:1];
}

- (void)_transitionToCaptureAndModifyWithOptions:(unint64_t)options completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009F3BC;
  v7[3] = &unk_10028A510;
  completionCopy = completion;
  v6 = completionCopy;
  [(RCMainViewController *)self _presentCardViewWithOptions:options completion:v7];
}

- (void)_presentCardViewWithOptions:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedViewController = [recordingCardPresentationHelper presentedViewController];

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  rootSplitViewController = [defaultSceneDelegate rootSplitViewController];

  if (!presentedViewController && rootSplitViewController)
  {
    v12 = [_TtC10VoiceMemos33RCRecordingCardPresentationHelper alloc];
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    v15 = [(RCRecordingCardPresentationHelper *)v12 initWithSplitViewController:rootSplitViewController browseFoldersViewController:browseFoldersViewController playbackViewController:playbackViewController];
    [(RCMainViewController *)self setRecordingCardPresentationHelper:v15];

    recordingCardPresentationHelper2 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [recordingCardPresentationHelper2 presentCardFrom:rootSplitViewController isEditMode:optionsCopy & 1 completion:completionCopy];

    undoManager = [(RCMainViewController *)self undoManager];
    [(RCMainViewController *)self setMainUndoManager:undoManager];

    recordingCardPresentationHelper3 = [(RCMainViewController *)self recordingCardPresentationHelper];
    presentedCardViewController = [recordingCardPresentationHelper3 presentedCardViewController];
    undoManager2 = [presentedCardViewController undoManager];
    currentUndoManager = self->_currentUndoManager;
    self->_currentUndoManager = undoManager2;

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
      mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
      willMigrateFromSingleLayerToMultiLayer = [mainControllerHelper willMigrateFromSingleLayerToMultiLayer];

      if (willMigrateFromSingleLayerToMultiLayer)
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
        selfCopy = self;
        v11 = [UIAlertController rc_OKAlertControllerWithTitle:v8 message:v10 handler:&v12];
        [v11 rc_showInMainWindow];
      }
    }
  }
}

- (void)goToAllRecordingsIfNeeded:(BOOL)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];
  v8 = currentActiveFolderViewController;
  if (!currentActiveFolderViewController)
  {
    goto LABEL_8;
  }

  supportsRecording = [currentActiveFolderViewController supportsRecording];
  folderType = [v8 folderType];
  v11 = !neededCopy;
  if (!folderType)
  {
    v11 = 1;
  }

  if (supportsRecording && v11)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
LABEL_8:
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    [browseFoldersViewController2 goToBuiltInFolderOfType:0 animated:0 completion:completionCopy];
  }
}

- (void)goToRecentlyDeletedIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];
  folderType = [currentActiveFolderViewController folderType];
  if (currentActiveFolderViewController && folderType == 3)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    [browseFoldersViewController2 goToBuiltInFolderOfType:3 animated:0 completion:completionCopy];
  }
}

- (BOOL)toggleRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];
  recordingsCollectionViewController = [currentActiveFolderViewController recordingsCollectionViewController];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  if ([browseFoldersViewController2 isShowingRecentlyDeleted])
  {

LABEL_4:
    v8 = UIAccessibilityAnnouncementNotification;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"AX_RECORDING_UNAVAILABLE" value:&stru_100295BB8 table:0];
    UIAccessibilityPostNotification(v8, v10);

    v11 = 0;
    goto LABEL_9;
  }

  isEditing = [recordingsCollectionViewController isEditing];

  if (isEditing)
  {
    goto LABEL_4;
  }

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  isRecording = [mainControllerHelper isRecording];

  if (isRecording)
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

- (void)_startCapturing:(id)capturing completion:(id)completion
{
  capturingCopy = capturing;
  completionCopy = completion;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  isRecording = [mainControllerHelper isRecording];

  if (isRecording)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009FBC8;
    v10[3] = &unk_10028A538;
    v10[4] = self;
    v11 = capturingCopy;
    v12 = completionCopy;
    [(RCMainViewController *)self goToAllRecordingsIfNeeded:0 completion:v10];
  }
}

- (void)pauseRecording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper pauseCapturing];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
}

- (void)resumeRecording:(unint64_t)recording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper resumeCapturing:recording];
}

- (void)replaceRecording:(unint64_t)recording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper replaceCapturing:recording];
}

- (void)endRecording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper stopCapturing];
}

- (void)endEditing
{
  if ([(RCMainViewController *)self state]== 1)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];
    view = [recordingViewController view];
    recordingViewState = [view recordingViewState];

    if (recordingViewState == 8)
    {
      [(RCMainViewController *)self cancelTrimMode];
    }
  }

  [(RCMainViewController *)self setState:0];
}

- (void)playRecordingWithUUID:(id)d
{
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  uuidBeingDisplayed = [recordingViewController uuidBeingDisplayed];
  v8 = [uuidBeingDisplayed isEqualToString:dCopy];

  if ((v8 & 1) == 0)
  {
    [(RCMainViewController *)self endEditing];
  }

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper playbackForUUID:dCopy];

  [(RCMainViewController *)self setShouldStopPlaybackBeforeNavigating:0];
  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A00B4;
  v29[3] = &unk_10028B0D0;
  objc_copyWeak(&v31, &location);
  v10 = dCopy;
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
  selfCopy = self;
  v14 = v10;
  v24 = v14;
  v15 = v13;
  v25 = v15;
  v16 = objc_retainBlock(&v19);
  v17 = [(RCMainViewController *)self recordingCardPresentationHelper:v19];
  presentedViewController = [v17 presentedViewController];

  if (presentedViewController)
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
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper exitTrimMode];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
}

- (void)didExitTrimMode
{
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  [recordingCardPresentationHelper restyleRecordingCardSheetPresentationController];
}

- (void)shouldEnableTrimSave:(BOOL)save
{
  saveCopy = save;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController updateTrimSaveState:saveCopy];
}

- (void)enableUndoFirstResponder
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsMainViewControllerUndo = [v3 supportsMainViewControllerUndo];

  if (supportsMainViewControllerUndo)
  {

    [(RCMainViewController *)self becomeFirstResponder];
  }

  else
  {
    recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
    presentedViewController = [recordingCardPresentationHelper presentedViewController];
    [presentedViewController becomeFirstResponder];
  }
}

- (void)didUpdateToStatus:(int)status progress:(float)progress forRecordingWithUUID:(id)d
{
  dCopy = d;
  v9 = dCopy;
  if (status == 1)
  {
    v18 = dCopy;
    editingProgressItems = [(RCMainViewController *)self editingProgressItems];
    v11 = [editingProgressItems objectForKeyedSubscript:v18];

    if (!v11)
    {
      v11 = objc_opt_new();
      [v11 setDelegate:self];
      [v11 setUUID:v18];
      editingProgressItems2 = [(RCMainViewController *)self editingProgressItems];
      [editingProgressItems2 setObject:v11 forKeyedSubscript:v18];

      mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
      [mainControllerHelper stopForUUID:v18];
    }

    *&v12 = progress;
    [v11 setProgress:v12];
    if ([v11 hasMetTimeThreshold])
    {
      *&v15 = progress;
      [(RCMainViewController *)self _updateControllersToEditingInFlight:1 progress:v18 forUUID:v15];
    }
  }

  else
  {
    if (!dCopy)
    {
      goto LABEL_10;
    }

    v18 = dCopy;
    editingProgressItems3 = [(RCMainViewController *)self editingProgressItems];
    [editingProgressItems3 removeObjectForKey:v18];

    LODWORD(v17) = 1.0;
    [(RCMainViewController *)self _updateControllersToEditingInFlight:0 progress:v18 forUUID:v17];
  }

  v9 = v18;
LABEL_10:
}

- (void)didUpdateCurrentRecordingDisplayModel
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];

  if (currentRecordingDisplayModel)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];
    view = [recordingViewController view];
    [view setupSubviews];

    playbackViewController = [(RCMainViewController *)self playbackViewController];
    view2 = [playbackViewController view];
    [view2 setupSubviews];
  }

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (BOOL)isQuickRecordingWorkflowDismissal
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  view = [recordingViewController view];
  v5 = [view displayStyle] == 2;

  return v5;
}

- (void)backupTimerFiredForUUID:(id)d
{
  dCopy = d;
  editingProgressItems = [(RCMainViewController *)self editingProgressItems];
  v10 = [editingProgressItems objectForKeyedSubscript:dCopy];

  if (v10)
  {
    [v10 progress];
    v7 = v6;
    uUID = [v10 UUID];
    LODWORD(v9) = v7;
    [(RCMainViewController *)self _updateControllersToEditingInFlight:1 progress:uUID forUUID:v9];
  }
}

- (void)_updateControllersToEditingInFlight:(BOOL)flight progress:(float)progress forUUID:(id)d
{
  flightCopy = flight;
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  *&v11 = progress;
  [activeRecordingsCollectionViewController editingIsInFlight:flightCopy progress:dCopy forUUID:v11];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController2 recordingViewController];
  *&v14 = progress;
  [recordingViewController updateToEditingInFlight:flightCopy progress:dCopy forUUID:v14];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  *&v15 = progress;
  [playbackViewController updateToEditingInFlight:flightCopy progress:dCopy forUUID:v15];
}

- (id)_stringForAudioEditingStatus:(int)status
{
  if (status > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_10028C310 + status);
  }
}

- (BOOL)isShowingRecentlyDeleted
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  isShowingRecentlyDeleted = [browseFoldersViewController isShowingRecentlyDeleted];

  return isShowingRecentlyDeleted;
}

- (BOOL)canSwipeToNavigateBack
{
  state = [(RCMainViewController *)self state];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];

  if (state)
  {
    v6 = 1;
  }

  else
  {
    v6 = currentActiveFolderViewController == 0;
  }

  return !v6;
}

- (void)updateUndoButtonStateFromUndoManager
{
  canUndo = [(RCUndoManager *)self->_currentUndoManager canUndo];
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  audioRecorder = [mainControllerHelper audioRecorder];
  isNewRecording = [audioRecorder isNewRecording];

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController updateUndoState:canUndo isNewRecording:isNewRecording];
}

- (void)willBeginDragSession
{
  activeDragSessionCount = self->_activeDragSessionCount;
  if (!activeDragSessionCount)
  {
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    [playbackViewController enableWaveformScrolling:0];

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
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    [playbackViewController enableWaveformScrolling:1];
  }
}

- (void)cancelTrimMode
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper cancelTrimModeWithDismissal:1];

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController cleanupAfterExitTrim];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  [recordingCardPresentationHelper restyleRecordingCardSheetPresentationController];
}

- (id)waveformViewController
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  waveformContainerViewControllers = [recordingViewController waveformContainerViewControllers];
  v5 = [waveformContainerViewControllers objectAtIndexedSubscript:0];

  return v5;
}

- (id)overviewWaveformViewController
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  overviewWaveformViewController = [recordingViewController overviewWaveformViewController];

  return overviewWaveformViewController;
}

- (BOOL)remoteToggleShouldPauseRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  v4 = [recordingViewController recordingControlState] == 1;

  return v4;
}

- (void)recordingDidEnd
{
  [(RCMainViewController *)self setRecordingStartTimeInfo:0];

  [(RCMainViewController *)self saveAsNewDoneButtonAction:0];
}

- (void)finishedEditingWithNewRecordingUUID:(id)d
{
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  [activeRecordingsCollectionViewController prepareForAdditionOfNewRecordingWithUUID:dCopy];
}

- (void)updatePlaybackSettings
{
  playbackSettings = [(RCMainViewController *)self playbackSettings];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController updateWithPlaybackSettings:playbackSettings];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController updateWithPlaybackSettings:playbackSettings];

  presentedPlaybackSettingsViewController = [(RCMainViewController *)self presentedPlaybackSettingsViewController];
  v7 = presentedPlaybackSettingsViewController;
  if (presentedPlaybackSettingsViewController)
  {
    [presentedPlaybackSettingsViewController setPlaybackSettings:playbackSettings];
  }
}

- (void)waveformTimeUpdated:(double)updated
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  view = [recordingViewController view];
  [view setCurrentTime:updated];
}

- (void)didUpdateRecordingViewDisplayStyle
{
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  [recordingCardPresentationHelper updateSelectedDetent];
}

- (void)didUpdateNavigationBarVisibility
{
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  sheetPresentationController = [recordingCardPresentationHelper sheetPresentationController];

  [sheetPresentationController invalidateDetents];
}

- (id)recordingCardNavigationController
{
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedCardViewController = [recordingCardPresentationHelper presentedCardViewController];
  navigationController = [presentedCardViewController navigationController];

  return navigationController;
}

- (id)recordingCardNavigationItem
{
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedCardViewController = [recordingCardPresentationHelper presentedCardViewController];
  navigationItem = [presentedCardViewController navigationItem];

  return navigationItem;
}

- (BOOL)isPlayingForUUID:(id)d
{
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  v6 = [mainControllerHelper isPlayingForUUID:dCopy];

  return v6;
}

- (void)setFavorite:(BOOL)favorite forRecordingWithUUID:(id)d
{
  favoriteCopy = favorite;
  dCopy = d;
  dCopy2 = d;
  v7 = [NSArray arrayWithObjects:&dCopy count:1];

  [(RCMainViewController *)self setFavorite:favoriteCopy forRecordingsWithUUIDs:v7, dCopy];
}

- (void)setFavorite:(BOOL)favorite forRecordingsWithUUIDs:(id)ds
{
  favoriteCopy = favorite;
  dsCopy = ds;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper setFavorite:favoriteCopy forRecordingsWithUUIDs:dsCopy];
}

- (BOOL)isFavoriteForUUID:(id)d
{
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  v6 = [mainControllerHelper isFavoriteForUUID:dCopy];

  return v6;
}

- (void)toggleFavoriteForUUID:(id)d
{
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper toggleFavoriteForUUID:dCopy];
}

- (void)_dismissCardView:(id)view
{
  viewCopy = view;
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedViewController = [recordingCardPresentationHelper presentedViewController];

  if (presentedViewController)
  {
    recordingCardPresentationHelper2 = [(RCMainViewController *)self recordingCardPresentationHelper];
    [recordingCardPresentationHelper2 dismissCardWithCompletion:viewCopy];

    [(RCMainViewController *)self selectNewRecordingForDismiss];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSUndoManagerDidUndoChangeNotification object:self->_currentUndoManager];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NSUndoManagerDidRedoChangeNotification object:self->_currentUndoManager];

    view = [(RCMainViewController *)self view];
    [view setNeedsUpdateConstraints];

    mainUndoManager = [(RCMainViewController *)self mainUndoManager];
    currentUndoManager = self->_currentUndoManager;
    self->_currentUndoManager = mainUndoManager;
  }
}

- (void)selectRecordingWithUUID:(id)d returnToBrowse:(BOOL)browse
{
  browseCopy = browse;
  dCopy = d;
  if (![(RCMainViewController *)self isRecording])
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];

    recordingsCollectionViewController = [currentActiveFolderViewController recordingsCollectionViewController];
    v10 = recordingsCollectionViewController;
    if (recordingsCollectionViewController)
    {
      v11 = [recordingsCollectionViewController presentsRecordingWithUUID:dCopy];
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
    v13 = dCopy;
    v14 = v11;
    [CATransaction setCompletionBlock:v12];
    if (browseCopy)
    {
      [(RCMainViewController *)self setState:0];
    }

    +[CATransaction commit];
  }
}

- (void)_selectRecordingWithUUID:(id)d inRecordingsCollectionViewController:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  uuidOfSelectedItem = [controllerCopy uuidOfSelectedItem];
  if (([uuidOfSelectedItem isEqualToString:dCopy] & 1) == 0)
  {
    [controllerCopy selectItemWithUUID:dCopy animated:0];
    [(RCMainViewController *)self didSelectForUUID:dCopy resetPosition:1 force:0];
  }
}

- (void)undo
{
  undoManager = [(RCMainViewController *)self undoManager];
  [undoManager undo];

  [(RCMainViewController *)self updateUndoButtonStateFromUndoManager];
}

- (void)performRenameWithNewTitle:(id)title forUUID:(id)d
{
  dCopy = d;
  titleCopy = title;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  collectionView = [activeRecordingsCollectionViewController collectionView];
  [collectionView becomeFirstResponder];

  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor performRenameWithNewTitle:titleCopy forUUID:dCopy];
  v11 = [RCRecordingDisplayModel recordingDisplayModelForUUID:dCopy];
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper setCurrentRecordingDisplayModel:v11];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController2 recordingViewController];
  [recordingViewController renameForUUID:dCopy toNewTitle:titleCopy];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController renameForUUID:dCopy toNewTitle:titleCopy];

  [(RCMainViewController *)self updateQuickActions];

  [(RCMainViewController *)self updateMenuBarWindowTitle];
}

- (void)refreshDisplayWithDisplayModel:(id)model
{
  modelCopy = model;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];
  uUID = [currentRecordingDisplayModel UUID];
  uUID2 = [modelCopy UUID];
  v8 = [uUID isEqualToString:uUID2];

  if (v8)
  {
    mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
    [mainControllerHelper2 setCurrentRecordingDisplayModel:modelCopy];
  }

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController updateWithRecordingModel:modelCopy requireMatchingUUID:1];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController updateWithRecordingModel:modelCopy requireMatchingUUID:1];
}

- (void)performClearAllRecentlyDeleted
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper performClearAllRecentlyDeleted];
}

- (void)didSelectForUUID:(id)d resetPosition:(BOOL)position force:(BOOL)force
{
  forceCopy = force;
  positionCopy = position;
  dCopy = d;
  v8 = [RCRecordingDisplayModel recordingDisplayModelForUUID:dCopy];
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController stopScrolling];
  if (dCopy)
  {
    if (v8)
    {
      uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
      v11 = [uuidBeingDisplayed isEqualToString:dCopy];

      if (!v11 || forceCopy)
      {
        contentUnavailableConfiguration = [playbackViewController contentUnavailableConfiguration];
        v13 = contentUnavailableConfiguration != 0;

        mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
        [mainControllerHelper prepareForPlaybackForUUID:dCopy force:v13];
        uuidBeingDisplayed2 = [playbackViewController uuidBeingDisplayed];
        if (uuidBeingDisplayed2 && ([dCopy isEqualToString:uuidBeingDisplayed2] & 1) == 0)
        {
          [mainControllerHelper stopForUUID:uuidBeingDisplayed2];
        }

        v27 = [mainControllerHelper compositionForUUID:dCopy];
        browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
        selectedRecording = [browseFoldersViewController selectedRecording];

        [playbackViewController updateWithRecordingModel:v8];
        if (selectedRecording)
        {
          currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];

          if (currentRecordingDisplayModel != v8)
          {
            [mainControllerHelper setCurrentRecordingDisplayModel:v8];
          }
        }

        +[CATransaction begin];
        [CATransaction setDisableActions:1];
        recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
        presentedViewController = [recordingCardPresentationHelper presentedViewController];

        if (!presentedViewController)
        {
          mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
          timeController = [mainControllerHelper2 timeController];
          [playbackViewController enablePlaybackWithComposition:v27 displayModel:v8 timeController:timeController];
        }

        +[CATransaction commit];
        [(RCMainViewController *)self updatePlaybackContentUnavailableViewIfNeeded];
        if (([mainControllerHelper isPlayingForUUID:dCopy] & 1) == 0)
        {
          if (positionCopy)
          {
            [mainControllerHelper setCurrentTime:0.0];
          }

          else
          {
            timeController2 = [mainControllerHelper timeController];
            [timeController2 currentTime];
            v25 = v24;
            timeController3 = [mainControllerHelper timeController];
            [timeController3 setTargetTime:v25];
          }
        }
      }
    }
  }
}

- (void)updateMenuBarWindowTitle
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  v5 = +[RecorderAppDelegate sharedAppDelegate];
  defaultSceneDelegate = [v5 defaultSceneDelegate];
  window = [defaultSceneDelegate window];
  windowScene = [window windowScene];

  if (uuidBeingDisplayed)
  {
    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];
    title = [currentRecordingDisplayModel title];

    [windowScene setTitle:title];
  }

  else
  {
    title = +[NSBundle mainBundle];
    v11 = [title localizedStringForKey:@"VOICE_MEMOS_APP_NAME" value:&stru_100295BB8 table:0];
    [windowScene setTitle:v11];
  }
}

- (void)wasDeselectedForUUID:(id)d
{
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController showIdleForItemWithUUID:dCopy];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController showIdleForUUID:dCopy];

  playbackViewController2 = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController2 uuidBeingDisplayed];
  v9 = [uuidBeingDisplayed isEqualToString:dCopy];

  if (v9)
  {
    playbackViewController3 = [(RCMainViewController *)self playbackViewController];
    [playbackViewController3 clear];
  }

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper stopForUUID:dCopy];
}

- (void)performAction:(int64_t)action atPosition:(double)position forUUID:(id)d sourceController:(id)controller source:(id)source trackIndex:(unint64_t)index
{
  dCopy = d;
  controllerCopy = controller;
  sourceCopy = source;
  if (action <= 0x1D && ((1 << action) & 0x203680FE) != 0)
  {
    v17 = dCopy == 0;
LABEL_4:
    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];

    recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
    [(RCMainViewController *)self saveAsNewDoneButtonAction:0];
    [(RCMainViewController *)self setShouldOpenTranscriptAfterNavigatingToEdit:0];
    switch(action)
    {
      case 0:
        [mainControllerHelper playbackForUUID:dCopy];
        break;
      case 1:
        if (v17)
        {
          [mainControllerHelper stopPlayback];
        }

        else
        {
          [mainControllerHelper pauseForUUID:dCopy];
        }

        break;
      case 2:
        if (v17)
        {
          [mainControllerHelper togglePlayback];
        }

        else
        {
          [mainControllerHelper toggleForUUID:dCopy];
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
        [(RCMainViewController *)self resumeRecording:index];
        goto LABEL_44;
      case 7:
        [(RCMainViewController *)self saveAsNewDoneButtonAction:1];
        [(RCMainViewController *)self replaceRecording:index];
LABEL_44:
        +[RCAnalyticsUtilities sendDidCaptureModifyExistingRecording];
        break;
      case 8:
        [mainControllerHelper startScrubbingForUUID:dCopy atPosition:position];
        break;
      case 9:
        [mainControllerHelper updateScrubbingForUUID:dCopy atPosition:position];
        break;
      case 10:
        [mainControllerHelper endScrubbingForUUID:dCopy atPosition:position];
        break;
      case 11:
        [mainControllerHelper jumpForwardForUUID:dCopy];
        break;
      case 12:
        [mainControllerHelper jumpBackwardForUUID:dCopy];
        break;
      case 13:
        v38 = [recordingsModelInteractor duplicateRecordingWithUUID:dCopy];
        break;
      case 14:
        v50 = dCopy;
        browseFoldersViewController2 = [NSArray arrayWithObjects:&v50 count:1];
        [(RCMainViewController *)self deleteRecordingsWithUUIDs:browseFoldersViewController2 sourceController:controllerCopy source:sourceCopy showInfo:1];
        goto LABEL_54;
      case 15:
        browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
        activeRecordingsCollectionViewController = [browseFoldersViewController2 activeRecordingsCollectionViewController];
        selectedUUIDs = [activeRecordingsCollectionViewController selectedUUIDs];
        [(RCMainViewController *)self deleteRecordingsWithUUIDs:selectedUUIDs sourceController:controllerCopy source:sourceCopy showInfo:1];

        goto LABEL_54;
      case 16:
        v49 = dCopy;
        browseFoldersViewController2 = [NSArray arrayWithObjects:&v49 count:1];
        [(RCMainViewController *)self confirmEraseWithUUIDs:browseFoldersViewController2 sourceController:controllerCopy source:sourceCopy eraseAllDeleted:0];
        goto LABEL_54;
      case 17:
        [(RCMainViewController *)self confirmEraseSelectedWithSourceController:controllerCopy source:sourceCopy eraseAllDeleted:0];
        break;
      case 18:
        [(RCMainViewController *)self confirmEraseAllWithSourceController:controllerCopy source:sourceCopy eraseAllDeleted:1];
        break;
      case 19:
        v48 = dCopy;
        browseFoldersViewController2 = [NSArray arrayWithObjects:&v48 count:1];
        [(RCMainViewController *)self confirmRecoverWithUUIDs:browseFoldersViewController2 sourceController:controllerCopy source:sourceCopy force:0];
LABEL_54:

        break;
      case 20:
        [(RCMainViewController *)self confirmRecoverSelectedWithSourceController:controllerCopy source:sourceCopy];
        break;
      case 21:
        [(RCMainViewController *)self confirmRecoverAllWithSourceController:controllerCopy source:sourceCopy];
        break;
      case 22:
        goto LABEL_60;
      case 23:
        [(RCMainViewController *)self setShouldOpenTranscriptAfterNavigatingToEdit:1];
        goto LABEL_60;
      case 24:
        selfCopy2 = self;
        v34 = 0;
        goto LABEL_28;
      case 25:
        selfCopy2 = self;
        v34 = 1;
LABEL_28:
        [(RCMainViewController *)selfCopy2 saveAsNewDoneButtonAction:v34];
        [recordingViewController handleDone];
        break;
      case 26:
        [recordingViewController handleCancel];
        break;
      case 27:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        v52 = dCopy;
        v26 = [NSArray arrayWithObjects:&v52 count:1];
        v27 = mainControllerHelper;
        v28 = v26;
        v29 = controllerCopy;
        v30 = sourceCopy;
        v31 = 0;
        goto LABEL_58;
      case 28:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        v51 = dCopy;
        v26 = [NSArray arrayWithObjects:&v51 count:1];
        v27 = mainControllerHelper;
        v28 = v26;
        v29 = controllerCopy;
        v30 = sourceCopy;
        v31 = 1;
LABEL_58:
        [v27 shareRecordingsWithUUIDs:v28 inViewController:v29 source:v30 isShareButton:v31 completionWithItemsHandler:0];

        break;
      case 29:
        browseFoldersViewController3 = [(RCMainViewController *)self browseFoldersViewController];
        activeRecordingsCollectionViewController2 = [browseFoldersViewController3 activeRecordingsCollectionViewController];
        selectedUUIDs2 = [activeRecordingsCollectionViewController2 selectedUUIDs];

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000A26F4;
        v47[3] = &unk_10028C0F0;
        v47[4] = self;
        [mainControllerHelper shareRecordingsWithUUIDs:selectedUUIDs2 inViewController:controllerCopy source:sourceCopy isShareButton:1 completionWithItemsHandler:v47];

LABEL_60:
        selfCopy4 = self;
        v40 = dCopy;
        v41 = 0;
        goto LABEL_61;
      case 30:
        selfCopy4 = self;
        v40 = dCopy;
        v41 = 1;
LABEL_61:
        [(RCMainViewController *)selfCopy4 _openForModifyRecordingWithUUID:v40 enterTrim:v41];
        break;
      case 31:
        [mainControllerHelper performTrimByKeepingSelectedRangeForRecordingWithUUID:dCopy source:sourceCopy];
        break;
      case 32:
        [mainControllerHelper performTrimByDeletingSelectedRangeForRecordingWithUUID:dCopy source:sourceCopy];
        break;
      case 33:
        [(RCMainViewController *)self undo];
        break;
      case 34:
        selfCopy6 = self;
        v25 = 1;
        goto LABEL_17;
      case 35:
        selfCopy6 = self;
        v25 = 0;
LABEL_17:
        [(RCMainViewController *)selfCopy6 setSpeechIsolatorEnabled:v25 forUUID:dCopy];
        break;
      case 36:
        selfCopy8 = self;
        v23 = 1;
        goto LABEL_14;
      case 37:
        selfCopy8 = self;
        v23 = 0;
LABEL_14:
        [(RCMainViewController *)selfCopy8 setFavorite:v23 forRecordingWithUUID:dCopy];
        break;
      case 38:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        [recordingsModelInteractor setEnhanced:1 forUUID:dCopy];
        selfCopy10 = self;
        v43 = 1;
        goto LABEL_63;
      case 39:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        [recordingsModelInteractor setEnhanced:0 forUUID:dCopy];
        selfCopy10 = self;
        v43 = 0;
LABEL_63:
        [(RCMainViewController *)selfCopy10 _axAnnounceDidSetEnhanced:v43];
        break;
      case 40:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        [(RCMainViewController *)self _presentMoveToFolderUIForRecordingWithUUID:dCopy];
        break;
      case 41:
        [(RCMainViewController *)self _endDescriptionViewTextEditing];
        view = [recordingViewController view];
        [view setTranscriptViewState:0];

        [(RCMainViewController *)self _presentPlaybackSettingsUIWithSource:sourceCopy UUID:dCopy];
        break;
      case 42:
        [(RCMainViewController *)self toggleTranscriptView];
        break;
      case 43:
        [(RCMainViewController *)self copyTranscript:dCopy];
        break;
      case 44:
        goto LABEL_51;
      case 45:
        [(RCMainViewController *)self separateRecordingLayers:dCopy];
LABEL_51:
        [(RCMainViewController *)self renameDescriptionViewTitleTextField:sourceCopy withUUID:dCopy];
        break;
      default:
        break;
    }

    goto LABEL_68;
  }

  if (dCopy)
  {
    v17 = 0;
    goto LABEL_4;
  }

  mainControllerHelper = OSLogForCategory();
  if (os_log_type_enabled(mainControllerHelper, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BA794(mainControllerHelper);
  }

LABEL_68:
}

- (void)_openForModifyRecordingWithUUID:(id)d enterTrim:(BOOL)trim
{
  trimCopy = trim;
  dCopy = d;
  if (trimCopy && [(RCMainViewController *)self state]== 1)
  {
    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    [mainControllerHelper enterTrimMode];

    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];
    [recordingViewController updateForTrimMode];
  }

  else
  {
    browseFoldersViewController = [(RCMainViewController *)self mainControllerHelper];
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController2 activeRecordingsCollectionViewController];
    recordingViewController = [activeRecordingsCollectionViewController uuidOfSelectedItem];

    if (([recordingViewController isEqualToString:dCopy] & 1) == 0)
    {
      browseFoldersViewController3 = [(RCMainViewController *)self browseFoldersViewController];
      activeRecordingsCollectionViewController2 = [browseFoldersViewController3 activeRecordingsCollectionViewController];
      [activeRecordingsCollectionViewController2 selectItemWithUUID:dCopy];
    }

    [browseFoldersViewController openForModifyRecordingWithUUID:dCopy withSubActivityType:trimCopy];
  }

  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  [recordingCardPresentationHelper restyleRecordingCardSheetPresentationController];
}

- (void)deleteRecordingsWithUUIDs:(id)ds sourceController:(id)controller source:(id)source showInfo:(BOOL)info
{
  infoCopy = info;
  dsCopy = ds;
  controllerCopy = controller;
  sourceCopy = source;
  if (dsCopy && [dsCopy count])
  {
    v12 = +[NSUserDefaults sharedSettingsUserDefaults];
    v13 = v12;
    if (v12 && [v12 rc_deletionIsImmediate])
    {
      [(RCMainViewController *)self confirmEraseWithUUIDs:dsCopy sourceController:controllerCopy source:sourceCopy eraseAllDeleted:0];
    }

    else
    {
      mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
      v15 = [mainControllerHelper deleteWithUUIDs:dsCopy source:sourceCopy showInfo:infoCopy];

      if (v15)
      {
        v16 = +[RCShareMemoViewController presentedController];
        [v16 dismissViewControllerAnimated:0 completion:0];

        [v15 rc_configurePopoverControllerWithSource:sourceCopy];
        [(RCMainViewController *)self _myPresentViewController:v15 sourceController:controllerCopy animated:1 completion:0];
      }
    }

    [(RCMainViewController *)self updatePlaybackContentUnavailableViewIfNeeded];
  }
}

- (void)confirmEraseSelectedWithSourceController:(id)controller source:(id)source eraseAllDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  controllerCopy = controller;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = controllerCopy;
    selectedUUIDs = [v9 selectedUUIDs];
    [(RCMainViewController *)self confirmEraseWithUUIDs:selectedUUIDs sourceController:v9 source:sourceCopy eraseAllDeleted:deletedCopy];
  }
}

- (void)confirmEraseAllWithSourceController:(id)controller source:(id)source eraseAllDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  controllerCopy = controller;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = controllerCopy;
    allUUIDs = [v9 allUUIDs];
    [(RCMainViewController *)self confirmEraseWithUUIDs:allUUIDs sourceController:v9 source:sourceCopy eraseAllDeleted:deletedCopy];
  }
}

- (void)confirmEraseWithUUIDs:(id)ds sourceController:(id)controller source:(id)source eraseAllDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  dsCopy = ds;
  controllerCopy = controller;
  sourceCopy = source;
  if (dsCopy && [dsCopy count])
  {
    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    v13 = mainControllerHelper;
    if (deletedCopy)
    {
      v14 = [mainControllerHelper eraseAllRecordingsAndConfirmWithSource:sourceCopy];
    }

    else
    {
      browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
      activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
      v14 = [v13 eraseAndConfirmWithUUIDs:dsCopy source:sourceCopy collectionViewController:activeRecordingsCollectionViewController];
    }

    if (v14)
    {
      v17 = +[RCShareMemoViewController presentedController];
      [v17 dismissViewControllerAnimated:0 completion:0];

      [v14 rc_configurePopoverControllerWithSource:sourceCopy];
      [(RCMainViewController *)self _myPresentViewController:v14 sourceController:controllerCopy animated:1 completion:0];
    }
  }
}

- (void)recoverRecordingsWithUUIDs:(id)ds sourceController:(id)controller source:(id)source force:(BOOL)force
{
  forceCopy = force;
  dsCopy = ds;
  controllerCopy = controller;
  sourceCopy = source;
  if (dsCopy && [dsCopy count])
  {
    [(RCMainViewController *)self confirmRecoverWithUUIDs:dsCopy sourceController:controllerCopy source:sourceCopy force:forceCopy];
  }
}

- (void)confirmRecoverSelectedWithSourceController:(id)controller source:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = controllerCopy;
    selectedUUIDs = [v7 selectedUUIDs];
    [(RCMainViewController *)self confirmRecoverWithUUIDs:selectedUUIDs sourceController:v7 source:sourceCopy force:0];
  }
}

- (void)confirmRecoverAllWithSourceController:(id)controller source:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = controllerCopy;
    allUUIDs = [v7 allUUIDs];
    [(RCMainViewController *)self confirmRecoverWithUUIDs:allUUIDs sourceController:v7 source:sourceCopy force:0];
  }
}

- (void)confirmRecoverWithUUIDs:(id)ds sourceController:(id)controller source:(id)source force:(BOOL)force
{
  forceCopy = force;
  dsCopy = ds;
  controllerCopy = controller;
  sourceCopy = source;
  if (dsCopy && [dsCopy count])
  {
    v24 = forceCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = dsCopy;
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
          mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
          [mainControllerHelper pauseForUUID:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
    v23 = [mainControllerHelper2 restoreRecordingsWithUUIDs:v13 isRecover:1 source:sourceCopy force:v24 collectionViewController:activeRecordingsCollectionViewController];

    if (v23)
    {
      [v23 rc_configurePopoverControllerWithSource:sourceCopy];
      [(RCMainViewController *)self _myPresentViewController:v23 sourceController:controllerCopy animated:1 completion:0];
    }
  }
}

- (void)moveRecordingsWithUUIDs:(id)ds toUserFolderNamed:(id)named source:(id)source
{
  dsCopy = ds;
  namedCopy = named;
  sourceCopy = source;
  if (dsCopy)
  {
    v10 = [dsCopy count];
    if (namedCopy)
    {
      if (v10)
      {
        [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingsWithUUIDs:dsCopy toUserFolderNamed:namedCopy];
      }
    }
  }
}

- (void)moveRecordingsWithUUIDs:(id)ds toBuiltInFolderOfType:(int64_t)type source:(id)source
{
  dsCopy = ds;
  sourceCopy = source;
  if (dsCopy && [dsCopy count])
  {
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingsWithUUIDs:dsCopy toBuiltInFolderOfType:type];
  }
}

- (void)_myPresentViewController:(id)controller sourceController:(id)sourceController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  selfCopy = sourceController;
  completionCopy = completion;
  if (!selfCopy)
  {
    navigationController = [(RCMainViewController *)self navigationController];
    selfCopy = [navigationController presentedViewController];

    if (!selfCopy)
    {
      selfCopy = self;
    }
  }

  [(RCMainViewController *)self setPresentedConfirmationController:controllerCopy];
  [(RCMainViewController *)selfCopy presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)libraryWillChangeEditingState:(BOOL)state
{
  stateCopy = state;
  if (state)
  {
    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    [mainControllerHelper stopPlayback];
  }

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController updateActionButtonState:!stateCopy];
}

- (BOOL)isEditingInFlightForUUID:(id)d
{
  dCopy = d;
  editingProgressItems = [(RCMainViewController *)self editingProgressItems];
  v6 = [editingProgressItems objectForKeyedSubscript:dCopy];

  return v6 != 0;
}

- (void)selectNewRecordingForDismiss
{
  uuidToSelectAfterDismiss = [(RCMainViewController *)self uuidToSelectAfterDismiss];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  v5 = [activeRecordingsCollectionViewController presentsRecordingWithUUID:uuidToSelectAfterDismiss];

  if (![(RCMainViewController *)self state]&& v5)
  {
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController2 = [browseFoldersViewController2 activeRecordingsCollectionViewController];
    [activeRecordingsCollectionViewController2 selectItemWithUUID:uuidToSelectAfterDismiss];

    playbackViewController = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
    v10 = [uuidBeingDisplayed isEqualToString:uuidToSelectAfterDismiss];

    if ((v10 & 1) == 0)
    {
      [(RCMainViewController *)self didSelectForUUID:uuidToSelectAfterDismiss resetPosition:0 force:0];
    }

    [(RCMainViewController *)self setUuidToSelectAfterDismiss:0];
  }
}

- (void)_presentMoveToFolderUIForRecordingWithUUID:(id)d
{
  if (d)
  {
    dCopy = d;
    dCopy2 = d;
    v5 = [NSArray arrayWithObjects:&dCopy count:1];

    [(RCMainViewController *)self _presentMoveToFolderUIForRecordingsWithUUIDs:v5, dCopy];
  }
}

- (void)_presentMoveToFolderUIForRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(RCMainViewController *)self moveToFolderContainerViewControllerWithUUIDs:dsCopy];
  collectionViewController = [v5 collectionViewController];
  [collectionViewController setPresentingDelegate:self];

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

- (id)moveToFolderContainerViewControllerWithUUIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  [v5 setModalPresentationStyle:2];
  [v5 setSelectionDelegate:self];
  [v5 setUuidsToMove:dsCopy];

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController = [browseFoldersViewController currentActiveFolderViewController];
  folderUUID = [currentActiveFolderViewController folderUUID];
  [v5 setUuidOfSourceFolder:folderUUID];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  currentActiveFolderViewController2 = [browseFoldersViewController2 currentActiveFolderViewController];
  [v5 setFolderTypeOfSourceFolder:{objc_msgSend(currentActiveFolderViewController2, "folderType")}];

  v11 = [[RCFolderSelectionContainerViewController alloc] initWithCollectionViewController:v5];

  return v11;
}

- (id)folderUUIDsToExcludeWhenMovingRecordingUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = dsCopy;
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
      recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
      v15 = [recordingsModelInteractor isRecentlyDeletedForUUID:v13];
      v16 = [recordingsModelInteractor isFavoriteForUUID:v13];
      v17 = [recordingsModelInteractor uuidOfUserFolderForRecordingWithUUID:v13];
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
    recentlyDeletedRecordingsFolder = [v19 recentlyDeletedRecordingsFolder];
    goto LABEL_25;
  }

LABEL_29:
  if (v10)
  {
    v19 = +[RCApplicationModel sharedApplicationModel];
    recentlyDeletedRecordingsFolder = [v19 favoriteRecordingsFolder];
    goto LABEL_25;
  }

  if (![v4 count])
  {
    v19 = +[RCApplicationModel sharedApplicationModel];
    recentlyDeletedRecordingsFolder = [v19 voiceMemosRecordingsFolder];
LABEL_25:
    v21 = recentlyDeletedRecordingsFolder;
    uuid = [recentlyDeletedRecordingsFolder uuid];
    [v4 addObject:uuid];
  }

  v23 = [NSArray arrayWithArray:v4];

  return v23;
}

- (void)_presentPlaybackSettingsUIWithSource:(id)source UUID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  uuidOfSelectedItem = [activeRecordingsCollectionViewController uuidOfSelectedItem];

  if (([uuidOfSelectedItem isEqualToString:dCopy] & 1) == 0)
  {
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController2 = [browseFoldersViewController2 activeRecordingsCollectionViewController];
    [activeRecordingsCollectionViewController2 selectItemWithUUID:dCopy];
  }

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  v14 = [mainControllerHelper playbackSettingsForUUID:dCopy];

  if (v14)
  {
    presentedPlaybackSettingsViewController = [(RCMainViewController *)self presentedPlaybackSettingsViewController];

    if (!presentedPlaybackSettingsViewController)
    {
      v16 = objc_alloc_init(RCPlaybackSettingsViewController);
      [(RCPlaybackSettingsViewController *)v16 setDelegate:self];
      [(RCPlaybackSettingsViewController *)v16 setPlaybackSettings:v14];
      v35 = [[UINavigationController alloc] initWithRootViewController:v16];
      v34 = +[RCRecorderStyleProvider sharedStyleProvider];
      supportsPopoverPlaybackSettingsPresentation = [v34 supportsPopoverPlaybackSettingsPresentation];
      if (sourceCopy && ((v18 = supportsPopoverPlaybackSettingsPresentation, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass()) : (isKindOfClass = 1), (v18 & isKindOfClass) == 1))
      {
        [v35 setModalPresentationStyle:7];
        [v35 rc_configurePopoverControllerWithSource:sourceCopy];
      }

      else
      {
        [(RCPlaybackSettingsViewController *)v16 setNeedsDoneButton:1];
        presentationController = [v35 presentationController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = presentationController;
          v22 = +[UISheetPresentationControllerDetent largeDetent];
          v41 = v22;
          v23 = [NSArray arrayWithObjects:&v41 count:1];

          [v21 setDetents:v23];
        }
      }

      recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
      presentedViewController = [recordingCardPresentationHelper presentedViewController];
      v26 = presentedViewController;
      if (presentedViewController)
      {
        selfCopy = presentedViewController;
      }

      else
      {
        selfCopy = self;
      }

      v28 = selfCopy;

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

- (void)_presentViewController:(id)controller fromViewController:(id)viewController animated:(BOOL)animated widthHeightConstraintConstant:(double)constant completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  if (constant > 0.0)
  {
    view = [controllerCopy view];
    widthAnchor = [view widthAnchor];
    v15 = [widthAnchor constraintGreaterThanOrEqualToConstant:constant];
    [v15 setActive:1];

    view2 = [controllerCopy view];
    heightAnchor = [view2 heightAnchor];
    v18 = [heightAnchor constraintGreaterThanOrEqualToConstant:constant];
    [v18 setActive:1];

    v19 = +[UIApplication sharedApplication];
    delegate = [v19 delegate];
    window = [delegate window];

    if (window)
    {
      [window frame];
      v23 = v22 * 0.9;
      v25 = v24 * 0.9;
      if (v22 * 0.9 > constant && v25 > constant)
      {
        view3 = [controllerCopy view];
        widthAnchor2 = [view3 widthAnchor];
        v29 = [widthAnchor2 constraintLessThanOrEqualToConstant:v23];
        [v29 setActive:1];

        view4 = [controllerCopy view];
        heightAnchor2 = [view4 heightAnchor];
        v32 = [heightAnchor2 constraintLessThanOrEqualToConstant:v25];
        [v32 setActive:1];
      }
    }
  }

  [viewControllerCopy presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_endDescriptionViewTextEditing
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper endDescriptionViewTextEditing];
}

- (void)hideFolderSelectionViewController
{
  presentedSelectFolderViewController = [(RCMainViewController *)self presentedSelectFolderViewController];
  [presentedSelectFolderViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_processMoveOfUUID:(id)d toBuiltInFolderOfType:(int64_t)type
{
  dCopy = d;
  v7 = dCopy;
  switch(type)
  {
    case 3:
      v14 = dCopy;
      mainControllerHelper = [NSArray arrayWithObjects:&v14 count:1];
      browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
      [(RCMainViewController *)self deleteRecordingsWithUUIDs:mainControllerHelper sourceController:browseFoldersViewController source:0 showInfo:0];

LABEL_11:
      break;
    case 1:
      [(RCMainViewController *)self setFavorite:1 forRecordingWithUUID:dCopy];
      break;
    case 0:
      mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
      recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
      v10 = [recordingsModelInteractor uuidOfUserFolderForRecordingWithUUID:v7];
      if (v10)
      {
        [recordingsModelInteractor removeRecordingWithUUID:v7 fromUserFolderWithUUID:v10];
      }

      else
      {
        v15 = v7;
        v12 = [NSArray arrayWithObjects:&v15 count:1];
        v13 = [mainControllerHelper restoreRecordingsWithUUIDs:v12 isRecover:1 source:0 force:1 collectionViewController:0];
      }

      goto LABEL_11;
    default:
      [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingWithUUID:dCopy toBuiltInFolderOfType:type];
      break;
  }
}

- (void)showNewFolderUIFromController:(id)controller
{
  controllerCopy = controller;
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
  v12 = controllerCopy;
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

- (void)showRenamingControllerWithFolderName:(id)name controller:(id)controller
{
  nameCopy = name;
  controllerCopy = controller;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"RENAME" value:&stru_100295BB8 table:0];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:0 preferredStyle:1];

  [(RCMainViewController *)self setOldFolderName:nameCopy];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000A4AE0;
  v31[3] = &unk_10028C188;
  v11 = nameCopy;
  v32 = v11;
  selfCopy = self;
  [v10 addTextFieldWithConfigurationHandler:v31];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SAVE" value:&stru_100295BB8 table:0];

  textFields = [v10 textFields];
  v15 = [textFields objectAtIndexedSubscript:0];

  [v15 setText:v11];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000A4B54;
  v26 = &unk_10028C1B0;
  selfCopy2 = self;
  v28 = v15;
  v29 = controllerCopy;
  v30 = v11;
  v16 = v11;
  v17 = controllerCopy;
  v18 = v15;
  v19 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v23];
  [(RCMainViewController *)self setRenameFolderSaveAction:v19, v23, v24, v25, v26, selfCopy2];
  [(RCMainViewController *)self _renamingTextDidChange:v18];
  [v10 addAction:v19];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];

  v22 = [UIAlertAction actionWithTitle:v21 style:1 handler:0];
  [v10 addAction:v22];
  [v10 rc_configurePopoverControllerWithSource:v17];
  [(RCMainViewController *)self presentViewController:v10 sourceController:self animated:1 completion:0];
}

- (void)_presentNameTakenAlertWithName:(id)name sourceController:(id)controller
{
  controllerCopy = controller;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"NEW_FOLDER_NAME_EXISTS" value:&stru_100295BB8 table:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"NEW_FOLDER_CHOOSE_DIFFERENT" value:&stru_100295BB8 table:0];
  v14 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];

  [v14 addAction:v12];
  [(RCMainViewController *)self _myPresentViewController:v14 sourceController:controllerCopy animated:1 completion:0];

  LODWORD(self) = UIAccessibilityScreenChangedNotification;
  view = [v14 view];
  UIAccessibilityPostNotification(self, view);
}

- (void)_newFolderTextDidChange:(id)change
{
  text = [change text];
  v4 = [text length] != 0;
  createNewFolderSaveAction = [(RCMainViewController *)self createNewFolderSaveAction];
  [createNewFolderSaveAction setEnabled:v4];
}

- (void)_renamingTextDidChange:(id)change
{
  text = [change text];
  if ([text length])
  {
    oldFolderName = [(RCMainViewController *)self oldFolderName];
    v5 = [text isEqualToString:oldFolderName] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  renameFolderSaveAction = [(RCMainViewController *)self renameFolderSaveAction];
  [renameFolderSaveAction setEnabled:v5];
}

- (void)moveFolder:(id)folder toDestinationIndexPath:(id)path
{
  pathCopy = path;
  folderCopy = folder;
  recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
  [recordingsModelInteractor moveFolder:folderCopy toDestinationIndexPath:pathCopy];
}

- (void)deleteFolder:(id)folder controller:(id)controller completionBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  folderCopy = folder;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  v11 = [mainControllerHelper deleteFolder:folderCopy source:controllerCopy completionBlock:blockCopy];

  if (v11)
  {
    [(RCMainViewController *)self _myPresentViewController:v11 sourceController:controllerCopy animated:1 completion:0];
  }
}

- (void)setEnhanced:(BOOL)enhanced forUUID:(id)d
{
  if (enhanced)
  {
    v4 = 38;
  }

  else
  {
    v4 = 39;
  }

  [(RCMainViewController *)self performAction:v4 atPosition:d forUUID:0 sourceController:0 source:0.0];
}

- (void)setRemoveSilence:(BOOL)silence forUUID:(id)d
{
  silenceCopy = silence;
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper setRemoveSilence:silenceCopy forUUID:dCopy];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setPlaybackSpeed:(double)speed forUUID:(id)d
{
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper setPlaybackSpeed:dCopy forUUID:speed];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setLayerMix:(double)mix forUUID:(id)d
{
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper setLayerMix:dCopy forUUID:mix];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setSpeechIsolatorEnabled:(BOOL)enabled forUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  [mainControllerHelper setSpeechIsolatorEnabled:enabledCopy forUUID:dCopy];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)setSpeechIsolatorValue:(float)value forUUID:(id)d
{
  dCopy = d;
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  *&v8 = value;
  [mainControllerHelper setSpeechIsolatorValue:dCopy forUUID:v8];

  [(RCMainViewController *)self updatePlaybackSettings];
}

- (void)toggleSpeechIsolatorEnabledForUUID:(id)d
{
  dCopy = d;
  playbackSettings = [(RCMainViewController *)self playbackSettings];
  uuid = [playbackSettings uuid];
  v7 = [uuid isEqual:dCopy];

  if (v7)
  {
    playbackSettings2 = [(RCMainViewController *)self playbackSettings];
    speechIsolatorEnabled = [playbackSettings2 speechIsolatorEnabled];

    [(RCMainViewController *)self setSpeechIsolatorEnabled:speechIsolatorEnabled ^ 1 forUUID:dCopy];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA818(dCopy, self);
    }
  }
}

- (void)hidePlaybackSettingsViewController
{
  presentedPlaybackSettingsViewController = [(RCMainViewController *)self presentedPlaybackSettingsViewController];
  navigationController = [presentedPlaybackSettingsViewController navigationController];

  v3 = navigationController;
  if (navigationController)
  {
    isBeingDismissed = [navigationController isBeingDismissed];
    v3 = navigationController;
    if ((isBeingDismissed & 1) == 0)
    {
      [navigationController dismissViewControllerAnimated:1 completion:0];
      v3 = navigationController;
    }
  }
}

- (void)didHidePlaybackSettingsViewController
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  selectedUUID = [(RCMainViewController *)self selectedUUID];
  [mainControllerHelper setLooping:0 forUUID:selectedUUID];
}

- (void)playbackSettingsViewController:(id)controller contentSizeChanged:(CGSize)changed
{
  height = changed.height;
  width = changed.width;
  controllerCopy = controller;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 shouldSetPreferredContentSizeOnPlaybackSettingsView])
  {
    [v6 playbackSettingsPopoverBottomPadding];
    v8 = height + v7;
    navigationController = [controllerCopy navigationController];
    [navigationController setPreferredContentSize:{width, v8}];
  }
}

- (void)didReturnToFoldersList
{
  [(RCMainViewController *)self stopPlayback];
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController clear];
}

- (void)didSelectFolderOfType:(int64_t)type
{
  if ([(RCMainViewController *)self shouldStopPlaybackBeforeNavigating])
  {
    [(RCMainViewController *)self stopPlayback];
  }

  else
  {
    [(RCMainViewController *)self setShouldStopPlaybackBeforeNavigating:1];
  }

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController clear];

  [(RCMainViewController *)self updatePlaybackContentUnavailableViewIfNeeded];
}

- (void)renameFolder:(id)folder toName:(id)name
{
  nameCopy = name;
  folderCopy = folder;
  recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
  [recordingsModelInteractor renameFolder:folderCopy toName:nameCopy];
}

- (BOOL)canMoveRecordingsWithUUIDs:(id)ds toFolderWithUUID:(id)d toFolderType:(int64_t)type fromFolderUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  v13 = +[RCApplicationModel sharedApplicationModel];
  v14 = v13;
  v15 = 0;
  if (type <= 1)
  {
    if (!type)
    {
      voiceMemosRecordingsFolder = [v13 voiceMemosRecordingsFolder];
      goto LABEL_12;
    }

    if (type == 1)
    {
      voiceMemosRecordingsFolder = [v13 favoriteRecordingsFolder];
      goto LABEL_12;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        voiceMemosRecordingsFolder = [v13 capturedOnWatchRecordingsFolder];
        goto LABEL_12;
      case 3:
        voiceMemosRecordingsFolder = [v13 recentlyDeletedRecordingsFolder];
        goto LABEL_12;
      case 4:
        voiceMemosRecordingsFolder = [v13 existingFolderWithUUID:dCopy];
LABEL_12:
        v15 = voiceMemosRecordingsFolder;
        break;
    }
  }

  v17 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v15];
  v18 = [(RCMainViewController *)self folderUUIDsToExcludeWhenMovingRecordingUUIDs:dsCopy];

  v19 = [(RCMainViewController *)self canMoveSelectedRecordingsFromFolderWithUUID:iDCopy toFolderWithDisplayModel:v17 excludedFolderUUIDsForSelection:v18];
  return v19;
}

- (BOOL)canMoveSelectedRecordingsFromFolderWithUUID:(id)d toFolderWithDisplayModel:(id)model excludedFolderUUIDsForSelection:(id)selection
{
  dCopy = d;
  modelCopy = model;
  selectionCopy = selection;
  uUID = [modelCopy UUID];
  v11 = [selectionCopy containsObject:uUID];

  if (v11 & 1) != 0 || ([uUID isEqualToString:dCopy])
  {
    representsPossibleMoveDestination = 0;
  }

  else
  {
    representsPossibleMoveDestination = [modelCopy representsPossibleMoveDestination];
  }

  return representsPossibleMoveDestination;
}

- (void)moveRecordingsWithUUIDs:(id)ds toFolderWithUUID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
  firstObject = [dsCopy firstObject];
  v10 = [recordingsModelInteractor uuidOfUserFolderForRecordingWithUUID:firstObject];

  undoManager = [(RCMainViewController *)self undoManager];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  v15 = [mainControllerHelper restoreRecordingsWithUUIDs:dsCopy isRecover:1 source:0 force:1 collectionViewController:activeRecordingsCollectionViewController];

  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor addRecordingsWithUUIDs:dsCopy toUserFolderWithUUID:dCopy];
  [activeRecordingsCollectionViewController endEditing];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000A59F8;
  v23 = &unk_10028C1D8;
  v24 = v10;
  v25 = dsCopy;
  v16 = dsCopy;
  v17 = v10;
  [undoManager registerUndoWithTarget:self handler:&v20];
  v18 = [NSBundle mainBundle:v20];
  v19 = [v18 localizedStringForKey:@"TITLE_FOR_MOVE_RECORDING_UNDO" value:&stru_100295BB8 table:0];

  [undoManager setActionName:v19];
}

- (void)moveRecordingsWithUUIDs:(id)ds fromFolderOfType:(int64_t)type toBuiltInFolderOfType:(int64_t)ofType
{
  dsCopy = ds;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  if (type == 3)
  {
    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    v12 = [mainControllerHelper restoreRecordingsWithUUIDs:dsCopy isRecover:1 source:0 force:1 collectionViewController:activeRecordingsCollectionViewController];
  }

  if (ofType)
  {
    if (ofType == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = dsCopy;
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

    else if (ofType == 3)
    {
      [(RCMainViewController *)self deleteRecordingsWithUUIDs:dsCopy sourceController:activeRecordingsCollectionViewController source:0 showInfo:0];
    }
  }

  else if (type == 4)
  {
    [(RCMainViewController *)self _removeFromUserFolderRecordingsWithUUIDs:dsCopy];
  }

  else if (type == 1)
  {
    [(RCMainViewController *)self setFavorite:0 forRecordingsWithUUIDs:dsCopy];
  }

  [activeRecordingsCollectionViewController endEditing];
}

- (void)_removeFromUserFolderRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  recordingsModelInteractor = [(RCMainViewController *)self recordingsModelInteractor];
  firstObject = [dsCopy firstObject];
  v7 = [recordingsModelInteractor uuidOfUserFolderForRecordingWithUUID:firstObject];

  undoManager = [(RCMainViewController *)self undoManager];
  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor removeRecordingsWithUUIDs:dsCopy fromUserFolderWithUUID:0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000A5D58;
  v16 = &unk_10028C1D8;
  v17 = dsCopy;
  v18 = v7;
  v9 = v7;
  v10 = dsCopy;
  [undoManager registerUndoWithTarget:self handler:&v13];
  v11 = [NSBundle mainBundle:v13];
  v12 = [v11 localizedStringForKey:@"TITLE_FOR_MOVE_RECORDING_UNDO" value:&stru_100295BB8 table:0];

  [undoManager setActionName:v12];
}

- (void)reloadWaveformsFromComposition:(id)composition
{
  compositionCopy = composition;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController reloadWaveformsFromComposition:compositionCopy];
}

- (void)didTransitionWithTransitionInfo:(id)info
{
  infoCopy = info;
  toActivityType = [infoCopy toActivityType];
  toSubType = [infoCopy toSubType];
  fromActivityType = [infoCopy fromActivityType];
  fromSubType = [infoCopy fromSubType];
  displayModel = [infoCopy displayModel];
  waveformDataSource = [infoCopy waveformDataSource];
  composition = [infoCopy composition];

  if (toActivityType > 1)
  {
    if (toActivityType == 2)
    {
      uUID = [displayModel UUID];
      [(RCMainViewController *)self _switchToPlayingBackFromPreviousActivityType:fromActivityType withUUID:uUID];
    }

    else if (toActivityType == 3)
    {
      [(RCMainViewController *)self _switchToEditingFromPreviousActivityType:fromActivityType displayModel:displayModel withComposition:composition enterTrim:toSubType == 1];
    }
  }

  else if (toActivityType)
  {
    if (toActivityType == 1)
    {
      [(RCMainViewController *)self _switchToCapturingFromPreviousActivityType:fromActivityType displayModel:displayModel waveformDataSource:waveformDataSource isReplaceOrAppend:toSubType != 2];
    }
  }

  else
  {
    uUID2 = [displayModel UUID];
    [(RCMainViewController *)self _switchToIdleFromPreviousActivityType:fromActivityType fromSubActivityType:fromSubType toSubActivityType:toSubType displayModel:displayModel withUUID:uUID2];
  }

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController setCaptureIsUnderway:toActivityType == 1];
}

- (void)_switchToPlayingBackFromPreviousActivityType:(int64_t)type withUUID:(id)d
{
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController showPlayingForItemWithUUID:dCopy];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController2 recordingViewController];
  [recordingViewController showPlayingForUUID:dCopy];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController showPlayingForUUID:dCopy];

  [(RCMainViewController *)self updateQuickActions];
}

- (void)_switchToEditingFromPreviousActivityType:(int64_t)type displayModel:(id)model withComposition:(id)composition enterTrim:(BOOL)trim
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A611C;
  v12[3] = &unk_10028C248;
  modelCopy = model;
  selfCopy = self;
  compositionCopy = composition;
  typeCopy = type;
  trimCopy = trim;
  v10 = compositionCopy;
  v11 = modelCopy;
  [(RCMainViewController *)self _prepareToDisplayCardViewWithCompletionBlock:v12];
}

- (id)platterViewControllerForPresentationStyle:(unint64_t)style
{
  v4 = [[RCPlatterViewController alloc] initWithPresentationStyle:style];
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  timeController = [mainControllerHelper timeController];
  [(RCPlatterViewController *)v4 setActiveTimeController:timeController];

  mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
  activityWaveformProcessor = [mainControllerHelper2 activityWaveformProcessor];
  [(RCPlatterViewController *)v4 setActivityWaveformProcessor:activityWaveformProcessor];

  mainControllerHelper3 = [(RCMainViewController *)self mainControllerHelper];
  timeController2 = [mainControllerHelper3 timeController];
  [timeController2 addTimeObserver:v4];

  return v4;
}

- (void)_switchToCapturingFromPreviousActivityType:(int64_t)type displayModel:(id)model waveformDataSource:(id)source isReplaceOrAppend:(BOOL)append
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A66D8;
  v9[3] = &unk_10028B7F8;
  appendCopy = append;
  selfCopy = self;
  modelCopy = model;
  sourceCopy = source;
  v7 = sourceCopy;
  v8 = modelCopy;
  [(RCMainViewController *)selfCopy _prepareToDisplayCardViewWithCompletionBlock:v9];
}

- (void)_prepareToDisplayCardViewWithCompletionBlock:(id)block
{
  blockCopy = block;
  presentedViewController = [(RCMainViewController *)self presentedViewController];
  if (presentedViewController && (v5 = presentedViewController, -[RCMainViewController presentedViewController](self, "presentedViewController"), v6 = objc_claimAutoreleasedReturnValue(), -[RCMainViewController recordingCardPresentationHelper](self, "recordingCardPresentationHelper"), v7 = objc_claimAutoreleasedReturnValue(), [v7 presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqual:", v8), v8, v7, v6, v5, (v9 & 1) == 0))
  {
    [(RCMainViewController *)self dismissViewControllerAnimated:0 completion:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)_setCorrectOriginalFolderForRecordingWithUUID:(id)d folderType:(int64_t)type userFolderName:(id)name
{
  dCopy = d;
  nameCopy = name;
  if (dCopy && type)
  {
    if (type == 1)
    {
      [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor setFavorite:1 forUUID:dCopy];
    }

    else if (type == 4)
    {
      v13 = dCopy;
      v10 = [NSArray arrayWithObjects:&v13 count:1];
      [(RCMainViewController *)self moveRecordingsWithUUIDs:v10 toUserFolderNamed:nameCopy source:0];
    }

    else
    {
      v12 = dCopy;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [(RCMainViewController *)self moveRecordingsWithUUIDs:v11 toBuiltInFolderOfType:type source:0];
    }
  }
}

- (void)_switchToIdleFromPreviousActivityType:(int64_t)type fromSubActivityType:(int64_t)activityType toSubActivityType:(int64_t)subActivityType displayModel:(id)model withUUID:(id)d
{
  modelCopy = model;
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController showIdleForUUID:dCopy];

  if (type == 1)
  {
    if ([(RCMainViewController *)self _cardDismissalRequiredForSwitchToIdleFromActivityType:1 subActivityType:activityType])
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

    [recordingViewController updateForRecordingEnd:{activityType == 3, v21, v22, v23, v24}];
  }

  else if (subActivityType != 5)
  {
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController2 activeRecordingsCollectionViewController];
    [activeRecordingsCollectionViewController showIdleForItemWithUUID:dCopy];

    mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
    uuidOfPlayingRecording = [mainControllerHelper uuidOfPlayingRecording];
    [recordingViewController showIdleForUUID:uuidOfPlayingRecording];
  }

  [(RCMainViewController *)self updateQuickActions];
}

- (void)captureFailedWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:RCVoiceMemosErrorDomain])
  {
    code = [errorCopy code];

    if (!code)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"ERROR_RECORDING_FAILED" value:&stru_100295BB8 table:0];
      localizedDescription = [errorCopy localizedDescription];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000A7204;
      v17[3] = &unk_10028A3B8;
      v17[4] = self;
      v10 = [UIAlertController rc_OKAlertControllerWithTitle:v8 message:localizedDescription handler:v17];

      browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
      activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
      [activeRecordingsCollectionViewController presentViewController:v10 animated:1 completion:0];
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:@"VMAudioServiceErrorDomain"] && objc_msgSend(errorCopy, "code") == 6)
  {
    state = [(RCMainViewController *)self state];

    if (state != 1)
    {
      goto LABEL_10;
    }

    domain2 = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [domain2 recordingViewController];
    [recordingViewController handleDone];
  }

LABEL_10:
  selectedUUID = [(RCMainViewController *)self selectedUUID];
  if (selectedUUID)
  {
    [(RCMainViewController *)self didSelectForUUID:selectedUUID resetPosition:0 force:1];
  }
}

- (void)recordingDurationUpdated:(double)updated
{
  if ([(RCMainViewController *)self isRecording])
  {
    return;
  }

  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  view = [recordingViewController view];
  [view setRecordingDuration:updated];

  selectedComposition = [(RCMainViewController *)self selectedComposition];
  savedRecordingUUID = [selectedComposition savedRecordingUUID];
  v9 = [RCRecordingDisplayModel recordingDisplayModelForUUID:savedRecordingUUID];

  if (selectedComposition)
  {
    if (v9)
    {
      [v9 duration];
      if (v10 == updated || ([v9 title], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "creationDate"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "UUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v9, "recentlyDeleted"), v15 = objc_msgSend(v9, "isFavorite"), v16 = objc_msgSend(v9, "isEnhanced"), v17 = objc_msgSend(v9, "hasTranscription"), v18 = objc_msgSend(v9, "isSpatialRecording"), BYTE3(v31) = objc_msgSend(v9, "wasManuallyRenamed"), BYTE2(v31) = v18, BYTE1(v31) = v17, LOBYTE(v31) = v16, +[RCRecordingDisplayModel recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:](RCRecordingDisplayModel, "recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:", v11, v12, v13, v14, 0, v15, updated, v31), v19 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v9, (v9 = v19) != 0))
      {
        mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
        currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];

        if (currentRecordingDisplayModel != v9)
        {
          mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
          [mainControllerHelper2 setCurrentRecordingDisplayModel:v9];
        }

        recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
        presentedViewController = [recordingCardPresentationHelper presentedViewController];
        if (presentedViewController)
        {
          mainControllerHelper3 = presentedViewController;
LABEL_12:

          goto LABEL_13;
        }

        playbackViewController = [(RCMainViewController *)self playbackViewController];
        uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
        uUID = [v9 UUID];
        v29 = [uuidBeingDisplayed isEqualToString:uUID];

        if (v29)
        {
          recordingCardPresentationHelper = [(RCMainViewController *)self playbackViewController];
          mainControllerHelper3 = [(RCMainViewController *)self mainControllerHelper];
          timeController = [mainControllerHelper3 timeController];
          [recordingCardPresentationHelper enablePlaybackWithComposition:selectedComposition displayModel:v9 timeController:timeController];

          goto LABEL_12;
        }
      }
    }
  }

LABEL_13:
}

- (NSString)selectedUUID
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  selectedRecording = [browseFoldersViewController selectedRecording];

  uuid = [selectedRecording uuid];

  return uuid;
}

- (void)setCurrentTime:(double)time withUUID:(id)d
{
  dCopy = d;
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController setCurrentTime:dCopy forItemWithUUID:time];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController2 recordingViewController];
  [recordingViewController updateCurrentTimeForUUID:dCopy toTime:time];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController updateCurrentTimeForUUID:dCopy toTime:time];
}

- (void)userDidDeleteRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  [(RCMainViewController *)self _dismissShareMemoVCIfNeededForDeletedUUIDs:dsCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dsCopy;
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
        browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
        activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
        [activeRecordingsCollectionViewController handleDeleteForUUID:v10];

        browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
        recordingViewController = [browseFoldersViewController2 recordingViewController];
        [recordingViewController handleRemovalOfUUID:v10];

        playbackViewController = [(RCMainViewController *)self playbackViewController];
        [playbackViewController handleRemovalOfUUID:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(RCMainViewController *)self updateQuickActions];
}

- (void)userDidRecoverRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        playbackViewController = [(RCMainViewController *)self playbackViewController];
        [playbackViewController handleRemovalOfUUID:v9];

        browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
        activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [activeRecordingsCollectionViewController handleRecoverForUUID:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)userDidEraseRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  [(RCMainViewController *)self _dismissShareMemoVCIfNeededForDeletedUUIDs:dsCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dsCopy;
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
        playbackViewController = [(RCMainViewController *)self playbackViewController];
        [playbackViewController handleRemovalOfUUID:v10];

        browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
        activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [activeRecordingsCollectionViewController handleEraseForUUID:v10];
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

- (void)_dismissShareMemoVCIfNeededForDeletedUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[RCShareMemoViewController presentedController];
  if (v4)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
    uuidOfSelectedItem = [activeRecordingsCollectionViewController uuidOfSelectedItem];

    if ([dsCopy containsObject:uuidOfSelectedItem])
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (BOOL)canHandleCustomAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([senderCopy modifierFlags] & 0x100000) != 0 || (-[RCMainViewController isFirstResponder](self, "isFirstResponder"))
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

  presentedViewController = [(RCMainViewController *)self presentedViewController];
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedViewController2 = [recordingCardPresentationHelper presentedViewController];
  v10 = [presentedViewController isEqual:presentedViewController2];

  if (v10)
  {
    recordingCardPresentationHelper2 = [(RCMainViewController *)self recordingCardPresentationHelper];
    presentedViewController3 = [recordingCardPresentationHelper2 presentedViewController];
    v12PresentedViewController = [presentedViewController3 presentedViewController];

    if (v12PresentedViewController)
    {
      recordingCardPresentationHelper3 = [(RCMainViewController *)self recordingCardPresentationHelper];
      presentedViewController4 = [recordingCardPresentationHelper3 presentedViewController];
      v15PresentedViewController = [presentedViewController4 presentedViewController];

      v17 = 0;
      presentedViewController = v15PresentedViewController;
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

  presentedViewController5 = [(RCMainViewController *)self presentedViewController];

  LOBYTE(presentedViewController5) = v17 | (presentedViewController5 == 0) | ([presentedViewController modalPresentationStyle] == 7);
  return v6 & presentedViewController5;
}

- (BOOL)canStartNewRecording
{
  _isRecordingOrBlockedByModal = [(RCMainViewController *)self _isRecordingOrBlockedByModal];
  activeFolderViewController = [(RCMainViewController *)self activeFolderViewController];
  if (activeFolderViewController)
  {
    activeFolderViewController2 = [(RCMainViewController *)self activeFolderViewController];
    supportsRecording = [activeFolderViewController2 supportsRecording];

    v7 = supportsRecording ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return ((_isRecordingOrBlockedByModal | v7) & 1) == 0 && !self->_viewIsAppearingOrDisappearing;
}

- (void)startNewRecordingAction
{
  selectedComposition = [(RCMainViewController *)self selectedComposition];
  if (!selectedComposition || ([selectedComposition savedRecordingUUID], v3 = objc_claimAutoreleasedReturnValue(), v3, v4 = selectedComposition, v3))
  {
    [(RCMainViewController *)self performAction:3 atPosition:0 forUUID:0 sourceController:0 source:0.0];
    v4 = selectedComposition;
  }
}

- (BOOL)canPlayRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  if ([mainControllerHelper isRecording])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    mainControllerHelper2 = [(RCMainViewController *)self mainControllerHelper];
    if ([mainControllerHelper2 readyForPlayback])
    {
      _uuidOfRecordingForPlaybackActivities = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
      if (_uuidOfRecordingForPlaybackActivities)
      {
        playbackViewController = [(RCMainViewController *)self playbackViewController];
        view = [playbackViewController view];
        if ([view textFieldIsBeingEdited] & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsEditingTitle") & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsInFlightEditing"))
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
          recordingViewController = [browseFoldersViewController2 recordingViewController];
          view2 = [recordingViewController view];
          v6 = [view2 textFieldIsBeingEdited] ^ 1;
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
  _uuidOfRecordingForPlaybackActivities = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
  [(RCMainViewController *)self performAction:2 atPosition:_uuidOfRecordingForPlaybackActivities forUUID:0 sourceController:0 source:0.0];
}

- (BOOL)canRenameRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  if (uuidBeingDisplayed)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];
    uuidBeingDisplayed2 = [recordingViewController uuidBeingDisplayed];
    v8 = uuidBeingDisplayed2 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)renameRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  [activeRecordingsCollectionViewController editSelectedItemTitle];
}

- (BOOL)canShareRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  if (uuidBeingDisplayed)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
    v7 = [activeRecordingsCollectionViewController selectedCellIsInFlightEditing] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)shareRecording:(id)recording
{
  recordingCopy = recording;
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController shareCurrentRecording:recordingCopy];
}

- (BOOL)canDuplicateRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  selectedUUIDs = [activeRecordingsCollectionViewController selectedUUIDs];

  if ([selectedUUIDs count] == 1)
  {
    _canDuplicate = [(RCMainViewController *)self _canDuplicate];
  }

  else
  {
    _canDuplicate = 0;
  }

  return _canDuplicate;
}

- (BOOL)canEditRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  if ([(RCMainViewController *)self state])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
    if (!uuidBeingDisplayed || ([activeRecordingsCollectionViewController selectedCellIsEditingTitle] & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsInFlightEditing") & 1) != 0)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
      v5 = [browseFoldersViewController2 isShowingRecentlyDeleted] ^ 1;
    }
  }

  return v5;
}

- (BOOL)canTrimRecording
{
  isRecording = [(RCMainViewController *)self isRecording];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  view = [recordingViewController view];
  recordingViewState = [view recordingViewState];

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController2 = [browseFoldersViewController2 recordingViewController];
  if ([recordingViewController2 isDisplayingTranscriptView])
  {
    isDisplayingTranscriptView = 1;
  }

  else
  {
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    isDisplayingTranscriptView = [playbackViewController isDisplayingTranscriptView];
  }

  browseFoldersViewController3 = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController3 activeRecordingsCollectionViewController];

  LOBYTE(browseFoldersViewController3) = 0;
  if (recordingViewState == 8)
  {
    v14 = 1;
  }

  else
  {
    v14 = isRecording;
  }

  if ((v14 & 1) == 0 && (isDisplayingTranscriptView & 1) == 0)
  {
    playbackViewController2 = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController2 uuidBeingDisplayed];
    if (!uuidBeingDisplayed || ([activeRecordingsCollectionViewController selectedCellIsEditingTitle] & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsInFlightEditing") & 1) != 0)
    {
      LOBYTE(browseFoldersViewController3) = 0;
    }

    else
    {
      browseFoldersViewController4 = [(RCMainViewController *)self browseFoldersViewController];
      LODWORD(browseFoldersViewController3) = [browseFoldersViewController4 isShowingRecentlyDeleted] ^ 1;
    }
  }

  return browseFoldersViewController3;
}

- (BOOL)canToggleFavoriteRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  if (uuidBeingDisplayed)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    v6 = [browseFoldersViewController isShowingRecentlyDeleted] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)currentSelectionHasSpatialRecording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  currentSelectionHasSpatialAudio = [mainControllerHelper currentSelectionHasSpatialAudio];

  return currentSelectionHasSpatialAudio;
}

- (BOOL)canToggleEnhanceRecording
{
  if ([(RCMainViewController *)self isRecording])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
    if (uuidBeingDisplayed)
    {
      browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
      v3 = [browseFoldersViewController isShowingRecentlyDeleted] ^ 1;
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
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
    if (uuidBeingDisplayed)
    {
      browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
      v3 = [browseFoldersViewController isShowingRecentlyDeleted] ^ 1;
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
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
    if (uuidBeingDisplayed)
    {
      browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
      v3 = [browseFoldersViewController isShowingRecentlyDeleted] ^ 1;
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
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  playbackSettings = [(RCMainViewController *)self playbackSettings];
  uuid = [playbackSettings uuid];
  v7 = [uuid isEqual:uuidBeingDisplayed];

  if (v7)
  {
    playbackSettings2 = [(RCMainViewController *)self playbackSettings];
    speechIsolatorEnabled = [playbackSettings2 speechIsolatorEnabled];
  }

  else
  {
    speechIsolatorEnabled = 0;
  }

  return speechIsolatorEnabled;
}

- (void)toggleSpeechIsolator
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  [(RCMainViewController *)self toggleSpeechIsolatorForUUID:uuidBeingDisplayed];
}

- (void)toggleSpeechIsolatorForUUID:(id)d
{
  dCopy = d;
  playbackSettings = [(RCMainViewController *)self playbackSettings];
  uuid = [playbackSettings uuid];
  v7 = [uuid isEqual:dCopy];

  if (v7)
  {
    playbackSettings2 = [(RCMainViewController *)self playbackSettings];
    speechIsolatorEnabled = [playbackSettings2 speechIsolatorEnabled];

    [(RCMainViewController *)self setSpeechIsolatorEnabled:speechIsolatorEnabled ^ 1 forUUID:dCopy];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA8C8(dCopy, self);
    }
  }
}

- (void)duplicateRecording
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  uuidOfSelectedRecording = [activeRecordingsCollectionViewController uuidOfSelectedRecording];
  [(RCMainViewController *)self performAction:13 atPosition:uuidOfSelectedRecording forUUID:0 sourceController:0 source:0.0];
}

- (void)editRecording
{
  mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
  currentRecordingDisplayModel = [mainControllerHelper currentRecordingDisplayModel];
  uUID = [currentRecordingDisplayModel UUID];

  if (uUID)
  {
    playbackViewController = [(RCMainViewController *)self playbackViewController];
    [playbackViewController stopScrolling];

    [(RCMainViewController *)self performAction:22 atPosition:uUID forUUID:0 sourceController:0 source:0.0];
  }
}

- (void)trimRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  if (uuidBeingDisplayed)
  {
    playbackViewController2 = [(RCMainViewController *)self playbackViewController];
    [playbackViewController2 stopScrolling];

    playbackViewController3 = [(RCMainViewController *)self playbackViewController];
    uuidBeingDisplayed2 = [playbackViewController3 uuidBeingDisplayed];
    [(RCMainViewController *)self performAction:30 atPosition:uuidBeingDisplayed2 forUUID:0 sourceController:0 source:0.0];
  }
}

- (BOOL)currentSelectionIsFavorite
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  if (uuidBeingDisplayed)
  {
    v5 = [(RCMainViewController *)self isFavoriteForUUID:uuidBeingDisplayed];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleFavoriteRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  v4 = uuidBeingDisplayed;
  if (uuidBeingDisplayed)
  {
    [(RCMainViewController *)self toggleFavoriteForUUID:uuidBeingDisplayed];
    v4 = uuidBeingDisplayed;
  }
}

- (BOOL)currentSelectionIsEnhanced
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  if (uuidBeingDisplayed)
  {
    v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:uuidBeingDisplayed];
    isEnhanced = [v4 isEnhanced];
  }

  else
  {
    isEnhanced = 0;
  }

  return isEnhanced;
}

- (void)toggleEnhanceRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  [(RCMainViewController *)self toggleEnhanceRecordingForUUID:uuidBeingDisplayed];
}

- (void)toggleEnhanceRecordingForUUID:(id)d
{
  dCopy = d;
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

    [(RCMainViewController *)self performAction:v6 atPosition:dCopy forUUID:0 sourceController:0 source:0.0];
  }
}

- (BOOL)currentSelectionHasSilenceRemoved
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];

  if (uuidBeingDisplayed && (-[RCMainViewController playbackSettings](self, "playbackSettings"), v5 = objc_claimAutoreleasedReturnValue(), [v5 uuid], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", uuidBeingDisplayed), v6, v5, v7))
  {
    playbackSettings = [(RCMainViewController *)self playbackSettings];
    silenceRemoved = [playbackSettings silenceRemoved];
  }

  else
  {
    silenceRemoved = 0;
  }

  return silenceRemoved;
}

- (void)toggleRemoveSilence
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  [(RCMainViewController *)self toggleRemoveSilenceForUUID:uuidBeingDisplayed];
}

- (void)toggleRemoveSilenceForUUID:(id)d
{
  dCopy = d;
  playbackSettings = [(RCMainViewController *)self playbackSettings];
  uuid = [playbackSettings uuid];
  v7 = [uuid isEqual:dCopy];

  if (v7)
  {
    playbackSettings2 = [(RCMainViewController *)self playbackSettings];
    silenceRemoved = [playbackSettings2 silenceRemoved];

    [(RCMainViewController *)self setRemoveSilence:silenceRemoved ^ 1 forUUID:dCopy];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA978(dCopy, self);
    }
  }
}

- (void)toggleTranscriptView
{
  recordingCardPresentationHelper = [(RCMainViewController *)self recordingCardPresentationHelper];
  presentedViewController = [recordingCardPresentationHelper presentedViewController];

  if (presentedViewController)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController recordingViewController];
    [recordingViewController toggleTranscriptView];
  }

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  [playbackViewController toggleTranscriptView];
}

- (void)copyTranscript:(id)transcript
{
  transcriptCopy = transcript;
  v4 = objc_opt_new();
  [v4 transcriptionStringForRecordingUUID:transcriptCopy completionHandler:&stru_10028C2F0];
}

- (void)renameDescriptionViewTitleTextField:(id)field withUUID:(id)d
{
  fieldCopy = field;
  dCopy = d;
  if (fieldCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
    activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
    uuidOfSelectedItem = [activeRecordingsCollectionViewController uuidOfSelectedItem];

    if (([uuidOfSelectedItem isEqualToString:dCopy] & 1) == 0)
    {
      browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
      activeRecordingsCollectionViewController2 = [browseFoldersViewController2 activeRecordingsCollectionViewController];
      [activeRecordingsCollectionViewController2 selectItemWithUUID:dCopy];
    }

    [fieldCopy beginEditingTitle];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (![(RCMainViewController *)self canHandleCustomAction:action withSender:sender]|| "delete:" != action)
  {
    return 0;
  }

  return [(RCMainViewController *)self canDelete];
}

- (BOOL)canDelete
{
  presentedConfirmationController = [(RCMainViewController *)self presentedConfirmationController];

  if (presentedConfirmationController)
  {
    return 0;
  }

  return [(RCMainViewController *)self _canDelete];
}

- (void)delete:(id)delete
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  selectedCellIsEditingTitle = [activeRecordingsCollectionViewController selectedCellIsEditingTitle];

  if (selectedCellIsEditingTitle)
  {
    return;
  }

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController2 = [browseFoldersViewController2 activeRecordingsCollectionViewController];

  browseFoldersViewController3 = [(RCMainViewController *)self browseFoldersViewController];
  if ([browseFoldersViewController3 isShowingRecentlyDeleted])
  {
    v10 = 17;
  }

  else
  {
    v10 = 15;
  }

  state = [(RCMainViewController *)self state];
  if (state == 1)
  {
    browseFoldersViewController4 = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController4 recordingViewController];

    v12 = recordingViewController;
    uuidBeingDisplayed = [v12 uuidBeingDisplayed];
    view = [v12 view];
    [(RCMainViewController *)self performAction:14 atPosition:uuidBeingDisplayed forUUID:v12 sourceController:view source:0.0];
  }

  else
  {
    if (state)
    {
      v12 = 0;
    }

    else
    {
      v12 = activeRecordingsCollectionViewController2;
      if (![v12 isEditing] || (objc_msgSend(v12, "selectedUUIDs"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        uuidBeingDisplayed = [v12 uuidOfSelectedItem];
        view2 = [v12 view];
        window = [view2 window];
        if (window)
        {
          v19 = [v12 cellForUUID:uuidBeingDisplayed];
        }

        else
        {
          v19 = 0;
        }

        [(RCMainViewController *)self performAction:v10 atPosition:uuidBeingDisplayed forUUID:v12 sourceController:v19 source:0.0];
        goto LABEL_17;
      }

      [v12 deleteSelectedItems];
    }

    uuidBeingDisplayed = 0;
  }

LABEL_17:
}

- (BOOL)canJumpForward
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  if (uuidBeingDisplayed)
  {
    view = [playbackViewController view];
    if ([view textFieldIsBeingEdited])
    {
      canJumpForward = 0;
    }

    else
    {
      browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
      recordingViewController = [browseFoldersViewController2 recordingViewController];
      view2 = [recordingViewController view];
      if ([view2 textFieldIsBeingEdited] & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsEditingTitle") & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsInFlightEditing"))
      {
        canJumpForward = 0;
      }

      else
      {
        mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
        canJumpForward = [mainControllerHelper canJumpForward];
      }
    }
  }

  else
  {
    canJumpForward = 0;
  }

  return canJumpForward;
}

- (void)jumpSelectionForward
{
  _uuidOfRecordingForPlaybackActivities = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
  [(RCMainViewController *)self performAction:11 atPosition:_uuidOfRecordingForPlaybackActivities forUUID:0 sourceController:0 source:0.0];
}

- (BOOL)canJumpBackward
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  if (uuidBeingDisplayed)
  {
    view = [playbackViewController view];
    if ([view textFieldIsBeingEdited])
    {
      canJumpBackward = 0;
    }

    else
    {
      browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
      recordingViewController = [browseFoldersViewController2 recordingViewController];
      view2 = [recordingViewController view];
      if ([view2 textFieldIsBeingEdited] & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsEditingTitle") & 1) != 0 || (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsInFlightEditing"))
      {
        canJumpBackward = 0;
      }

      else
      {
        mainControllerHelper = [(RCMainViewController *)self mainControllerHelper];
        canJumpBackward = [mainControllerHelper canJumpBackward];
      }
    }
  }

  else
  {
    canJumpBackward = 0;
  }

  return canJumpBackward;
}

- (void)jumpSelectionBackward
{
  _uuidOfRecordingForPlaybackActivities = [(RCMainViewController *)self _uuidOfRecordingForPlaybackActivities];
  [(RCMainViewController *)self performAction:12 atPosition:_uuidOfRecordingForPlaybackActivities forUUID:0 sourceController:0 source:0.0];
}

- (BOOL)canHandleDone
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  view = [recordingViewController view];
  recordingViewState = [view recordingViewState];

  if (!recordingViewState)
  {
    return 0;
  }

  browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController2 = [browseFoldersViewController2 recordingViewController];
  view2 = [recordingViewController2 view];
  recordingViewState2 = [view2 recordingViewState];

  if (recordingViewState2 != 8)
  {
    return 1;
  }

  browseFoldersViewController3 = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController3 = [browseFoldersViewController3 recordingViewController];
  view3 = [recordingViewController3 view];
  canSaveTrimChanges = [view3 canSaveTrimChanges];

  return canSaveTrimChanges;
}

- (void)handleDone
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController handleDone];
}

- (BOOL)canHandleCancel
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  view = [recordingViewController view];
  v5 = [view recordingViewState] == 8;

  return v5;
}

- (void)handleCancel
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  recordingViewController = [browseFoldersViewController recordingViewController];
  [recordingViewController handleCancel];
}

- (BOOL)canToggleSidebar
{
  state = [(RCMainViewController *)self state];
  presentedViewController = [(RCMainViewController *)self presentedViewController];
  v5 = state | presentedViewController;

  return v5 == 0;
}

- (void)recoverRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  [(RCMainViewController *)self performAction:19 atPosition:uuidBeingDisplayed forUUID:self sourceController:0 source:0.0];
}

- (void)eraseRecording
{
  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  [(RCMainViewController *)self performAction:16 atPosition:uuidBeingDisplayed forUUID:self sourceController:0 source:0.0];
}

- (id)_uuidOfRecordingForPlaybackActivities
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];
  selectedRecording = [activeRecordingsCollectionViewController selectedRecording];
  uuid = [selectedRecording uuid];

  if (!uuid)
  {
    browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
    recordingViewController = [browseFoldersViewController2 recordingViewController];
    uuid = [recordingViewController uuidBeingDisplayed];
  }

  return uuid;
}

- (BOOL)_canDuplicate
{
  _canDelete = [(RCMainViewController *)self _canDelete];
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  v5 = [browseFoldersViewController isShowingRecentlyDeleted] ^ 1;

  return _canDelete & v5;
}

- (BOOL)_canDelete
{
  browseFoldersViewController = [(RCMainViewController *)self browseFoldersViewController];
  activeRecordingsCollectionViewController = [browseFoldersViewController activeRecordingsCollectionViewController];

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

  playbackViewController = [(RCMainViewController *)self playbackViewController];
  uuidBeingDisplayed = [playbackViewController uuidBeingDisplayed];
  if (!uuidBeingDisplayed)
  {
    uuidOfSelectedItem = [activeRecordingsCollectionViewController uuidOfSelectedItem];
    if (!uuidOfSelectedItem)
    {
      LOBYTE(v14) = 0;
LABEL_17:

      v15 = v14;
      goto LABEL_18;
    }
  }

  if (!-[RCMainViewController state](self, "state") && ([activeRecordingsCollectionViewController selectedCellIsEditingTitle] & 1) == 0 && (objc_msgSend(activeRecordingsCollectionViewController, "selectedCellIsInFlightEditing") & 1) == 0)
  {
    searchController = [activeRecordingsCollectionViewController searchController];
    searchBar = [searchController searchBar];
    searchTextField = [searchBar searchTextField];
    if (([searchTextField isEditing] & 1) == 0)
    {
      playbackViewController2 = [(RCMainViewController *)self playbackViewController];
      view = [playbackViewController2 view];
      if ([view textFieldIsBeingEdited])
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        browseFoldersViewController2 = [(RCMainViewController *)self browseFoldersViewController];
        recordingViewController = [browseFoldersViewController2 recordingViewController];
        view2 = [recordingViewController view];
        if ([view2 textFieldIsBeingEdited])
        {
          LOBYTE(v14) = 0;
        }

        else
        {
          browseFoldersViewController3 = [(RCMainViewController *)self browseFoldersViewController];
          recordingViewController2 = [browseFoldersViewController3 recordingViewController];
          view3 = [recordingViewController2 view];
          v14 = ([view3 editingInFlight] ^ 1) & v6;
        }
      }

      v15 = v14;
      if (!uuidBeingDisplayed)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  LOBYTE(v14) = 0;
  v15 = 0;
  if (!uuidBeingDisplayed)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v15;
}

- (void)_axAnnounceDidSetEnhanced:(BOOL)enhanced
{
  enhancedCopy = enhanced;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (enhancedCopy)
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

- (void)separateRecordingLayers:(id)layers
{
  v4 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for MainActor();
  selfCopy = self;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v8;
  v14[5] = v10;
  v14[6] = selfCopy;
  sub_100194190(0, 0, v7, &unk_10024F220, v14);
}

@end