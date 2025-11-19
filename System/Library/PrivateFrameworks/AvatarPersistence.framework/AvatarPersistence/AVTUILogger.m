@interface AVTUILogger
- (AVTUILogger)init;
- (void)checkingAccountInfo:(id)a3;
- (void)checkingIn:(id)a3;
- (void)copyingStorageAside:(id)a3;
- (void)deletingRecords:(id)a3;
- (void)deletingStickerRecentsForRemoteChanges:(id)a3;
- (void)duplicatingRecords:(id)a3;
- (void)exportingRecords:(id)a3;
- (void)fetchingRecords:(id)a3;
- (void)importingRecords:(id)a3;
- (void)logAVTViewCancelingRenderingAvatar:(id)a3;
- (void)logAVTViewDidRenderAvatar:(id)a3 currentAvatar:(id)a4;
- (void)logAVTViewDidRenderCurrentAvatar:(id)a3;
- (void)logAVTViewSetAvatar:(id)a3;
- (void)logAccountInfo:(id)a3 status:(int64_t)a4 deviceToDeviceEncryption:(BOOL)a5;
- (void)logAnalysisServiceCheckingIn:(id)a3;
- (void)logAnalysisServiceDidNotProcessState:(id)a3;
- (void)logAnalysisServiceDidRun;
- (void)logAnalysisServiceWillRun;
- (void)logAvatarPreloadBeginForIdentifier:(id)a3;
- (void)logAvatarPreloadEnd;
- (void)logAvatarsDaemonClientChecksIn:(int)a3;
- (void)logAvatarsDaemonClientConnectionInterrupted;
- (void)logAvatarsDaemonClientConnectionInvalidated;
- (void)logAvatarsDaemonReceivesIncomingConnection;
- (void)logAvatarsdExitingWithReason:(id)a3;
- (void)logBackendVersionMismatch:(id)a3 actual:(id)a4;
- (void)logCancelTransition:(id)a3;
- (void)logCancelingPreLoadingTask:(id)a3;
- (void)logCancellingCleanupBlock;
- (void)logCarouselAddsTransitionToCoordinator:(id)a3;
- (void)logCarouselCellStartUsingLiveView:(id)a3 associatedTransition:(id)a4;
- (void)logCarouselCellStopUsingLiveView:(id)a3 associatedTransition:(id)a4;
- (void)logCarouselChangesCenterItemTo:(id)a3;
- (void)logCarouselChangingToMultiMode;
- (void)logCarouselChangingToSingleMode;
- (void)logCarouselDelegateDidFocusRecord:(id)a3;
- (void)logCarouselDelegateDidUpdateRecord:(id)a3;
- (void)logCarouselDelegateNearnessFactorDidChange:(double)a3 towardRecord:(BOOL)a4 editable:(BOOL)a5;
- (void)logCarouselDelegateWillEndFocusRecord:(id)a3;
- (void)logCarouselEndsDraggingWithVelocity:(double)a3 willSwitchIndexPathInsteadOfScrollBack:(BOOL)a4 forHighVelocity:(BOOL)a5;
- (void)logCarouselErrorGettingFrameForElementAtIndex:(unint64_t)a3;
- (void)logCarouselSnapshotForIndex:(unint64_t)a3 size:(CGSize)a4;
- (void)logCarouselStopsFocusingOnCenterItem:(id)a3 withCell:(id)a4;
- (void)logCarouselTransitionCenterItem:(id)a3 withCell:(id)a4;
- (void)logChangesRequireExport;
- (void)logChangesRequireThumbnailUpdate;
- (void)logCheckingIfMigrationNeeded;
- (void)logCleanupTimerComplete;
- (void)logCoalesceableEventOccured:(id)a3;
- (void)logCouldntFindRecordIdentifierForChangeType:(int64_t)a3 managedObjectID:(id)a4;
- (void)logCreatingBackendDBAtPath:(id)a3;
- (void)logCreatingBackendFolderAtPath:(id)a3;
- (void)logCreatingImageStoreForPath:(id)a3;
- (void)logCreatingStore:(id)a3;
- (void)logCurrentHistoryTokenFileDoesntExist:(id)a3;
- (void)logDebug:(id)a3;
- (void)logDecrementingRemoteRendererTransactionCount:(int64_t)a3;
- (void)logDeduplicateRecordWithIdentifier:(id)a3 toNewRecordWithIdentifier:(id)a4;
- (void)logDeletingImagesWithIdentifierPrefix:(id)a3;
- (void)logDeletingRecordWithIdentifier:(id)a3;
- (void)logDeletingStickerRecents;
- (void)logDidFinishEditingWithError:(id)a3;
- (void)logDidFinishEditingWithSuccess;
- (void)logDidResetZoneWithSuccess:(BOOL)a3 error:(id)a4;
- (void)logDiscoveredDuplicates:(id)a3 count:(unint64_t)a4;
- (void)logDispatchingRemoteChangeWithTransactionCount:(unint64_t)a3 handlersCount:(unint64_t)a4;
- (void)logDonePreLoadingPreset:(id)a3 task:(id)a4;
- (void)logDonePreLoadingThumbnailForPreLoadingTask:(id)a3;
- (void)logDroppingUnsupportedAvatarRecord:(id)a3;
- (void)logDuplicatingRecordWithIdentifier:(id)a3;
- (void)logErrorAddingPersistentStore:(id)a3;
- (void)logErrorCopyingStorageAside:(id)a3;
- (void)logErrorCreatingBackendContent:(id)a3;
- (void)logErrorDeletingMigratedContent:(id)a3;
- (void)logErrorDeletingSomeThumbnail:(id)a3;
- (void)logErrorDeletingThumbnailsForIdentifier:(id)a3 error:(id)a4;
- (void)logErrorDuplicatingThumbnailsForIdentifier:(id)a3 error:(id)a4;
- (void)logErrorFetchingChangeHistory:(id)a3;
- (void)logErrorFetchingRecentStickers:(id)a3;
- (void)logErrorFetchingRecords:(id)a3;
- (void)logErrorGettingAccountInfo:(id)a3;
- (void)logErrorGettingAvatarsDaemonClientProxy:(id)a3;
- (void)logErrorGettingChangedRecordsContentForIdentifiers:(id)a3 error:(id)a4;
- (void)logErrorLoadingTemplates:(id)a3;
- (void)logErrorMergingCopiedAsideContent:(id)a3;
- (void)logErrorMigratingBackupInclusionStatus:(id)a3;
- (void)logErrorMitigatingDuplicates:(id)a3;
- (void)logErrorPinningContextToCurrentQueryGenerationToken:(id)a3;
- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:(id)a3;
- (void)logErrorReadingCurrentHistoryToken:(id)a3;
- (void)logErrorRemovingStoreFolder:(id)a3;
- (void)logErrorSandboxInit:(char *)a3;
- (void)logErrorSavingChangeToken:(id)a3 location:(id)a4;
- (void)logErrorSavingRecentSticker:(id)a3;
- (void)logErrorSettingUpStore:(id)a3;
- (void)logErrorSettingUserDirSuffixForSandbox:(int)a3;
- (void)logErrorSnapshottingAVTView:(id)a3;
- (void)logErrorStartingServer:(id)a3;
- (void)logErrorTearingDownCoreDataStack:(id)a3;
- (void)logErrorUpdatingBackupInclusionStatus:(id)a3;
- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:(id)a3;
- (void)logErrorUpdatingRecordsForMigration:(id)a3;
- (void)logErrorUpdatingVersion:(id)a3;
- (void)logErrorWhileMigratingBackend:(id)a3;
- (void)logExportRequestResult:(BOOL)a3 error:(id)a4;
- (void)logFailedToGenerateStickerInService:(id)a3;
- (void)logFetchedOrphanedRecentSticker:(id)a3;
- (void)logFetchedRecentStickerWithNoStickerConfiguration:(id)a3;
- (void)logFetchedRecords:(unint64_t)a3 criteria:(int64_t)a4;
- (void)logFileSystemError:(id)a3;
- (void)logFoundExistingRecordDuringMigration;
- (void)logFoundExistingRecordDuringMigration:(id)a3;
- (void)logFoundRecordIdentifier:(id)a3 changeType:(int64_t)a4 managedObjectID:(id)a5;
- (void)logGeneratingImageError:(id)a3;
- (void)logGeneratingImageForRecord:(id)a3 scope:(id)a4 type:(int64_t)a5;
- (void)logGeneratingImageInServiceForRecord:(id)a3;
- (void)logGenericSandboxError:(id)a3 error:(int)a4;
- (void)logImageRenderServiceConnectionError:(id)a3;
- (void)logImageStoreBeginSavingImageForPath:(id)a3;
- (void)logImageStoreCacheHitForItemDescription:(id)a3 sizeCost:(unint64_t)a4;
- (void)logImageStoreCacheMiss:(id)a3;
- (void)logImageStoreDoneInServiceForPath:(id)a3;
- (void)logImageStoreDoneSavingImageForPath:(id)a3;
- (void)logImageStoreFailedInServiceForPath:(id)a3 error:(id)a4;
- (void)logImageStoreSavingError:(id)a3 code:(int64_t)a4;
- (void)logImportRequestResult:(BOOL)a3 error:(id)a4;
- (void)logInMemoryCacheEvictsResource:(id)a3;
- (void)logInMemoryCacheHitForResource:(id)a3;
- (void)logInMemoryCacheStorageForResource:(id)a3;
- (void)logIncrementingRemoteRendererTransactionCount:(int64_t)a3;
- (void)logInspectingChangesForExportAfterToken:(id)a3;
- (void)logLookingUpPreLoadedPreset:(id)a3 task:(id)a4;
- (void)logMaintenanceCompleted;
- (void)logMigratingSource:(id)a3;
- (void)logMigrationXPCActivityFinished;
- (void)logMirroringRequestErrorWithCode:(int64_t)a3 description:(id)a4;
- (void)logMissingResetSyncReasonKey;
- (void)logMissingTombstonedIdentifier;
- (void)logNilImageReturnedFromAVTAvatarRecordImageProvider;
- (void)logNilImageReturnedFromAVTUIStickerRenderer;
- (void)logNoAvatarPreset:(id)a3;
- (void)logNoProxyToAvatarsDaemon;
- (void)logNotImportingOnLaunchWithRemainingTime:(double)a3;
- (void)logNotificationDoesntContainChangeHistoryToken;
- (void)logPaddleViewVideoPlayerFailed:(id)a3;
- (void)logParsingMetadataDefinitions;
- (void)logParsingMetadataDefinitionsError:(id)a3;
- (void)logPerformTransition:(id)a3;
- (void)logPerformedRecentStickersMigration:(BOOL)a3;
- (void)logPersistentChangeNotOfInterest:(id)a3;
- (void)logPostingChangeNotificationForIdentifiers:(id)a3;
- (void)logPreLoadingNeededForIndex:(unint64_t)a3 section:(unint64_t)a4;
- (void)logPreLoadingPreset:(id)a3 task:(id)a4;
- (void)logPushConnectionReceivedPublicToken:(id)a3;
- (void)logPushConnectionReceivedToken:(id)a3 topic:(id)a4 identifier:(id)a5;
- (void)logPushNotificationReceivedForTopic:(id)a3 payload:(id)a4;
- (void)logReadingBackendAtPath:(id)a3;
- (void)logReadingError:(id)a3;
- (void)logReceivedRemoteChange:(id)a3;
- (void)logRecordsNotFoundInAnyStore:(id)a3;
- (void)logRecordsNotFoundInPuppetStore:(id)a3;
- (void)logRecordsNotFoundInRecordStore:(id)a3;
- (void)logRenderingConfiguration:(id)a3;
- (void)logRenderingModelColor:(id)a3;
- (void)logRenderingModelPreset:(id)a3;
- (void)logRenderingRecord:(id)a3 size:(CGSize)a4;
- (void)logRenderingStickerEnd:(id)a3;
- (void)logRenderingStickerStart:(id)a3 forRecord:(id)a4;
- (void)logRequestedAnimojiSticker:(id)a3;
- (void)logRequestingPreLoadingTask:(id)a3 forIndex:(unint64_t)a4 section:(unint64_t)a5;
- (void)logRequestingThumbnailForIndex:(unint64_t)a3 section:(id)a4;
- (void)logResetSyncReason:(unint64_t)a3;
- (void)logRetrievingSnapshotInServiceForPath:(id)a3;
- (void)logSavingBackend;
- (void)logSavingError:(id)a3;
- (void)logSchedulingImport;
- (void)logSchedulingUpdateThumbnails;
- (void)logSetupHandlerCompletedForTransition:(id)a3 state:(int64_t)a4 finished:(BOOL)a5;
- (void)logSetupSchedulingExport;
- (void)logSetupSchedulingImport;
- (void)logSetupSchedulingMigrationCheck;
- (void)logSetupUserDataImportCheck;
- (void)logSetupUserHasNoMemojiData;
- (void)logSetupUserImportAttempting:(int64_t)a3;
- (void)logSetupUserImportFailedToRemoveFileWithError:(id)a3;
- (void)logSetupUserImportFailedToUnarchiveDataAtPath:(id)a3 errorDescription:(id)a4;
- (void)logSetupUserImportSaveError:(id)a3;
- (void)logSingleModeCantSnapshotForLackOfWindow;
- (void)logSingleModeControllerStartUsingLiveView:(id)a3;
- (void)logSingleModeControllerStopUsingLiveView:(id)a3;
- (void)logSkippedFetchingRecordsWithReason:(id)a3;
- (void)logSnapshotReturnedImage:(id)a3;
- (void)logStartObservingRemoteChangeNotificationFrom:(id)a3;
- (void)logStartObservingResetSync;
- (void)logStartTransition:(id)a3 state:(int64_t)a4;
- (void)logStartingPreLoadingTask:(id)a3;
- (void)logStartingServer;
- (void)logStickerGeneratorPoolDidntHaveAvailableGenerator:(int64_t)a3 maxCount:(int64_t)a4;
- (void)logStickerSchedulerAddedTask:(id)a3 taskCount:(int64_t)a4;
- (void)logStickerSchedulerCancelledAllTasks;
- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:(id)a3;
- (void)logStickerSchedulerCancelledTask:(id)a3;
- (void)logStickerSchedulerStartedTask:(id)a3 forSchedulerRule:(id)a4;
- (void)logStickerViewSnapshotForBounds:(id)a3 offset:(CGPoint)a4;
- (void)logSyncEnabled;
- (void)logTearingDownCoreDataStack:(id)a3;
- (void)logThrottlingAVTView;
- (void)logTimedOutWaitingForSnapshotInService:(id)a3;
- (void)logToLivePoseTransitionBegins:(id)a3;
- (void)logToLivePoseTransitionEnds:(id)a3;
- (void)logTooManyAvatars:(unint64_t)a3 limit:(unint64_t)a4;
- (void)logTrackerProcessingChanges:(id)a3 count:(unint64_t)a4 from:(id)a5;
- (void)logTransactionHasChangesButNoToken;
- (void)logTransition:(id)a3 state:(unint64_t)a4 reachedStage:(unint64_t)a5;
- (void)logUnableToCreatePushConnection:(id)a3;
- (void)logUnableToReadRemoteRecord:(id)a3 isCritical:(BOOL)a4;
- (void)logUnthrottlingAVTView;
- (void)logUpdatingBackupExclusionStatus:(BOOL)a3;
- (void)logUpdatingLiveAvatarWithConfiguration:(id)a3;
- (void)logUpdatingThumbnails;
- (void)logUsageTrackingBigDifferencesClusterCount:(unint64_t)a3;
- (void)logUsageTrackingRecordCount:(unint64_t)a3;
- (void)logUsageTrackingSmallDifferencesClusterCount:(unint64_t)a3;
- (void)logUserRequestedBackupXPCActivityFinished;
- (void)logWarningNoHOME;
- (void)logWillResetZone;
- (void)migratingPersistedContent:(id)a3;
- (void)performingMigrationXPCActivity:(id)a3;
- (void)performingUserRequestedBackupActivity:(id)a3;
- (void)postingAvatarStoreChangeNotification:(id)a3;
- (void)processingDidResetSyncNotification:(id)a3;
- (void)processingRemoteChangeNotification:(id)a3;
- (void)processingWillResetSyncNotification:(id)a3;
- (void)restoringStorage:(id)a3;
- (void)runningMaintenance:(id)a3;
- (void)savingChangeTrackerToken:(id)a3;
- (void)savingRecords:(id)a3;
- (void)settingUpStore:(id)a3;
- (void)updatingThumbnailsForRemoteChanges:(id)a3;
@end

@implementation AVTUILogger

- (AVTUILogger)init
{
  v10.receiver = self;
  v10.super_class = AVTUILogger;
  v2 = [(AVTUILogger *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.avatar.AvatarUI", "General");
    generalLog = v2->_generalLog;
    v2->_generalLog = v3;

    v5 = os_log_create("com.apple.avatar.AvatarUI", "UserInteraction");
    interactionLog = v2->_interactionLog;
    v2->_interactionLog = v5;

    v7 = os_log_create("com.apple.avatar.AvatarUI", "Backend");
    backendLog = v2->_backendLog;
    v2->_backendLog = v7;
  }

  return v2;
}

- (void)logDebug:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logDebug:];
  }
}

- (void)logErrorLoadingTemplates:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorLoadingTemplates:];
  }
}

- (void)logParsingMetadataDefinitions
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Parsing metadata definitions…", v3, 2u);
  }
}

- (void)logParsingMetadataDefinitionsError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logParsingMetadataDefinitionsError:];
  }
}

- (void)logRenderingModelColor:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Rendering model color %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingModelPreset:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Rendering model preset %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingConfiguration:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Rendering configuration %@", &v8, 0xCu);
  }

  v6 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v6))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RenderSnapshot", &unk_241967295, &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingRecord:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v7;
    v12 = 2048;
    v13 = width;
    v14 = 2048;
    v15 = height;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "Rendering record %@, at size %2.2fx%2.2f", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logSnapshotReturnedImage:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RenderSnapshot", &unk_241967295, &v8, 2u);
  }

  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_241932000, v6, OS_LOG_TYPE_DEFAULT, "Snapshot returned %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logNoAvatarPreset:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "No avatar preset for %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCreatingStore:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Creating AVTAvatarStore instance %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCreatingBackendDBAtPath:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Creating empty database at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCreatingBackendFolderAtPath:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Creating Folder at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorCreatingBackendContent:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorCreatingBackendContent:];
  }
}

- (void)logSavingBackend
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Saving backend…", v3, 2u);
  }
}

- (void)logDeletingRecordWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Deleting record with identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDeletingImagesWithIdentifierPrefix:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Deleting images with identifier prefix %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDuplicatingRecordWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Duplicating record with identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logReadingBackendAtPath:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Reading backend at %@…", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSavingError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSavingError:];
  }
}

- (void)logReadingError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logReadingError:];
  }
}

- (void)logRecordsNotFoundInAnyStore:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Record not found in any store (%@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRecordsNotFoundInPuppetStore:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Puppet(s) not found (%@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRecordsNotFoundInRecordStore:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Avatar Record(s) not found (%@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSavingRecentSticker:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSavingRecentSticker:];
  }
}

- (void)logErrorFetchingRecentStickers:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingRecentStickers:];
  }
}

- (void)logFetchedOrphanedRecentSticker:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFetchedOrphanedRecentSticker:];
  }
}

- (void)logFetchedRecentStickerWithNoStickerConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFetchedRecentStickerWithNoStickerConfiguration:];
  }
}

- (void)logPerformedRecentStickersMigration:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, "Performed sticker recents migration, found orphaned: %{public}d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)savingRecords:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "SavingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__AVTUILogger_savingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__AVTUILogger_savingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __29__AVTUILogger_savingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)deletingRecords:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "DeletingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__AVTUILogger_deletingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AVTUILogger_deletingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __31__AVTUILogger_deletingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)fetchingRecords:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "FetchingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__AVTUILogger_fetchingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AVTUILogger_fetchingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __31__AVTUILogger_fetchingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)duplicatingRecords:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "DuplicatingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__AVTUILogger_duplicatingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AVTUILogger_duplicatingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __34__AVTUILogger_duplicatingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logFetchedRecords:(unint64_t)a3 criteria:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_241932000, v6, OS_LOG_TYPE_DEFAULT, "Fetched %lu record(s), criteria: %ld", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logSkippedFetchingRecordsWithReason:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Skipped fetching records: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logBackendVersionMismatch:(id)a3 actual:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "Detected a version mismatch, found %{public}@, current is %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logDroppingUnsupportedAvatarRecord:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Avatar record has a version lower than what AvatarKit supports, dropping. %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAvatarsdExitingWithReason:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Exiting avatarsd for reason: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingVersion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Error updating version %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorWhileMigratingBackend:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Error migrating backend %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDidFinishEditingWithSuccess
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Did finish editing avatar successfully", v3, 2u);
  }
}

- (void)logDidFinishEditingWithError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logDidFinishEditingWithError:];
  }
}

- (void)logFileSystemError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFileSystemError:];
  }
}

- (void)logCreatingImageStoreForPath:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "Creating image store at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreCacheMiss:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "Image Store Cache miss: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreCacheHitForItemDescription:(id)a3 sizeCost:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_INFO, "Image Store Cache HIT for %@, size %lu", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreSavingError:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logImageStoreSavingError:code:];
  }
}

- (void)logImageStoreBeginSavingImageForPath:(id)a3
{
  v3 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SavingImage", &unk_241967295, v4, 2u);
  }
}

- (void)logImageStoreDoneSavingImageForPath:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SavingImage", &unk_241967295, v7, 2u);
  }

  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logImageStoreDoneSavingImageForPath:];
  }
}

- (void)logInMemoryCacheStorageForResource:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheStorageForResource:];
  }
}

- (void)logInMemoryCacheHitForResource:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheHitForResource:];
  }
}

- (void)logInMemoryCacheEvictsResource:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheEvictsResource:];
  }
}

- (void)logGeneratingImageForRecord:(id)a3 scope:(id)a4 type:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&dword_241932000, v10, OS_LOG_TYPE_DEFAULT, "Generating image for record %@, with scope %@, type %ld", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logGeneratingImageError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logGeneratingImageError:];
  }
}

- (void)logErrorDeletingThumbnailsForIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingThumbnailsForIdentifier:error:];
  }
}

- (void)logErrorDeletingSomeThumbnail:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingSomeThumbnail:];
  }
}

- (void)logErrorDuplicatingThumbnailsForIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDuplicatingThumbnailsForIdentifier:error:];
  }
}

- (void)logErrorFetchingRecords:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingRecords:];
  }
}

- (void)logPreLoadingNeededForIndex:(unint64_t)a3 section:(unint64_t)a4
{
  v4 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logPreLoadingNeededForIndex:section:];
  }
}

- (void)logRequestingPreLoadingTask:(id)a3 forIndex:(unint64_t)a4 section:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v8;
    v13 = 2048;
    v14 = a5;
    v15 = 2048;
    v16 = a4;
    _os_log_debug_impl(&dword_241932000, v9, OS_LOG_TYPE_DEBUG, "[PreLoading] %@ requested - %lu|%lu", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logStartingPreLoadingTask:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "[PreLoading] %@ starts", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCancelingPreLoadingTask:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCancelingPreLoadingTask:];
  }
}

- (void)logLookingUpPreLoadedPreset:(id)a3 task:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logLookingUpPreLoadedPreset:task:];
  }
}

- (void)logPreLoadingPreset:(id)a3 task:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logPreLoadingPreset:task:];
  }

  v9 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v9))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PreLoadingPreset", &unk_241967295, v10, 2u);
  }
}

- (void)logDonePreLoadingPreset:(id)a3 task:(id)a4
{
  v4 = [(AVTUILogger *)self generalLog:a3];
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PreLoadingPreset", &unk_241967295, v5, 2u);
  }
}

- (void)logDonePreLoadingThumbnailForPreLoadingTask:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logDonePreLoadingThumbnailForPreLoadingTask:];
  }
}

- (void)logUpdatingLiveAvatarWithConfiguration:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "Updating live avatar with %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRequestingThumbnailForIndex:(unint64_t)a3 section:(id)a4
{
  v5 = a4;
  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logRequestingThumbnailForIndex:section:];
  }
}

- (void)logThrottlingAVTView
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_INFO, "Throttling AVTView", v3, 2u);
  }
}

- (void)logUnthrottlingAVTView
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_INFO, "Unthrottling AVTView", v3, 2u);
  }
}

- (void)logErrorSnapshottingAVTView:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSnapshottingAVTView:];
  }
}

- (void)logCarouselSnapshotForIndex:(unint64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v15 = *MEMORY[0x277D85DE8];
  v7 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 134218496;
    v10 = a3;
    v11 = 2048;
    v12 = width;
    v13 = 2048;
    v14 = height;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_INFO, "Carousel snapshot for record at index %lu, size %2.2fx%2.2f", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logAvatarPreloadBeginForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAvatarPreloadBeginForIdentifier:];
  }

  v6 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AvatarPreLoad", &unk_241967295, v7, 2u);
  }
}

- (void)logAvatarPreloadEnd
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AvatarPreLoad", &unk_241967295, v3, 2u);
  }
}

- (void)logSingleModeCantSnapshotForLackOfWindow
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logUsageTrackingRecordCount:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_INFO, "We have %ld memoji(s)", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logUsageTrackingSmallDifferencesClusterCount:(unint64_t)a3
{
  v3 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logUsageTrackingSmallDifferencesClusterCount:];
  }
}

- (void)logUsageTrackingBigDifferencesClusterCount:(unint64_t)a3
{
  v3 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logUsageTrackingBigDifferencesClusterCount:];
  }
}

- (void)logStartingServer
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Starting up server…", v3, 2u);
  }
}

- (void)settingUpStore:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "SettingUpStore", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__AVTUILogger_settingUpStore___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__AVTUILogger_settingUpStore___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __30__AVTUILogger_settingUpStore___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)exportingRecords:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "ExportingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__AVTUILogger_exportingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AVTUILogger_exportingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_exportingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)importingRecords:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "ImportingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__AVTUILogger_importingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AVTUILogger_importingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_importingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)performingMigrationXPCActivity:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "XPCActivityPostInstallMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__AVTUILogger_performingMigrationXPCActivity___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AVTUILogger_performingMigrationXPCActivity___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __46__AVTUILogger_performingMigrationXPCActivity___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logMigrationXPCActivityFinished
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Finished running migration XPC activity!", v3, 2u);
  }
}

- (void)performingUserRequestedBackupActivity:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "XPCActivityUserRequestedBackup", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__AVTUILogger_performingUserRequestedBackupActivity___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__AVTUILogger_performingUserRequestedBackupActivity___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __53__AVTUILogger_performingUserRequestedBackupActivity___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logUserRequestedBackupXPCActivityFinished
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Finished running User Requested Backup XPC activity!", v3, 2u);
  }
}

- (void)logSyncEnabled
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Sync is ENABLED", v3, 2u);
  }
}

- (void)logImportRequestResult:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(AVTUILogger *)self backendLog];
  v8 = v7;
  if (a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Import Request SUCCEEDED", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logImportRequestResult:error:];
  }
}

- (void)logExportRequestResult:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(AVTUILogger *)self backendLog];
  v8 = v7;
  if (a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Export Request SUCCEEDED", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logExportRequestResult:error:];
  }
}

- (void)logMirroringRequestErrorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logMirroringRequestErrorWithCode:description:];
  }
}

- (void)migratingPersistedContent:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "Migration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__AVTUILogger_migratingPersistedContent___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AVTUILogger_migratingPersistedContent___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __41__AVTUILogger_migratingPersistedContent___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logMigratingSource:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Migrating source %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingRecordsForMigration:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorUpdatingRecordsForMigration:];
  }
}

- (void)logFoundExistingRecordDuringMigration:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Found existing record during migration with identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorDeletingMigratedContent:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingMigratedContent:];
  }
}

- (void)logFoundExistingRecordDuringMigration
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Found an existing record with same identifier during migration!", v3, 2u);
  }
}

- (void)logErrorAddingPersistentStore:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorAddingPersistentStore:];
  }
}

- (void)logErrorStartingServer:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorStartingServer:];
  }
}

- (void)logErrorSettingUpStore:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSettingUpStore:];
  }
}

- (void)logPushConnectionReceivedPublicToken:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Received public token %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logPushConnectionReceivedToken:(id)a3 topic:(id)a4 identifier:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_241932000, v11, OS_LOG_TYPE_DEFAULT, "Received per-topic push token %@ for topic %@ identifier %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logPushNotificationReceivedForTopic:(id)a3 payload:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "Received Push Notification for topic: %@, payload: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logUnableToCreatePushConnection:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logUnableToCreatePushConnection:];
  }
}

- (void)processingRemoteChangeNotification:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "ProcessingRemoteChanges", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__AVTUILogger_processingRemoteChangeNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AVTUILogger_processingRemoteChangeNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_processingRemoteChangeNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logStartObservingRemoteChangeNotificationFrom:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Start observing NSPersistentStoreRemoteChangeNotification from %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedRemoteChange:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Received NSPersistentStoreRemoteChangeNotification: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDispatchingRemoteChangeWithTransactionCount:(unint64_t)a3 handlersCount:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_241932000, v6, OS_LOG_TYPE_DEFAULT, "Dispatching NSPersistentStoreRemoteChangeNotification with %lu transactions; %lu handlers listening", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logErrorFetchingChangeHistory:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingChangeHistory:];
  }
}

- (void)logNotificationDoesntContainChangeHistoryToken
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "notification.userInfo doesn't contain a value for NSPersistentHistoryTokenKey", v3, 2u);
  }
}

- (void)logChangesRequireExport
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Changes require export!", v3, 2u);
  }
}

- (void)logChangesRequireThumbnailUpdate
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Changes require thumbnail update!", v3, 2u);
  }
}

- (void)logErrorPinningContextToCurrentQueryGenerationToken:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorPinningContextToCurrentQueryGenerationToken:];
  }
}

- (void)logInspectingChangesForExportAfterToken:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInspectingChangesForExportAfterToken:];
  }
}

- (void)logUnableToReadRemoteRecord:(id)a3 isCritical:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTUILogger *)self backendLog];
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AVTUILogger logUnableToReadRemoteRecord:isCritical:];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logUnableToReadRemoteRecord:isCritical:];
  }
}

- (void)savingChangeTrackerToken:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "SavingChangeTrackerToken", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__AVTUILogger_savingChangeTrackerToken___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__AVTUILogger_savingChangeTrackerToken___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __40__AVTUILogger_savingChangeTrackerToken___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logCurrentHistoryTokenFileDoesntExist:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Current history token file doesn't exist at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorReadingCurrentHistoryToken:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorReadingCurrentHistoryToken:];
  }
}

- (void)logTrackerProcessingChanges:(id)a3 count:(unint64_t)a4 from:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v9;
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_241932000, v10, OS_LOG_TYPE_DEFAULT, "Author %@ is processing %lu changes: %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logTransactionHasChangesButNoToken
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorSavingChangeToken:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logErrorSavingChangeToken:location:];
  }
}

- (void)logFoundRecordIdentifier:(id)a3 changeType:(int64_t)a4 managedObjectID:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_241932000, v10, OS_LOG_TYPE_DEFAULT, "Found record identifier %@ for change type %ld, managedObjectID %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logCouldntFindRecordIdentifierForChangeType:(int64_t)a3 managedObjectID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_DEFAULT, "Did NOT find record identifier for change type %ld, managedObjectID %@ - could be processing ancient history.", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deletingStickerRecentsForRemoteChanges:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "DeletingStickerRecentsForRemoteChanges", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__AVTUILogger_deletingStickerRecentsForRemoteChanges___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AVTUILogger_deletingStickerRecentsForRemoteChanges___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __54__AVTUILogger_deletingStickerRecentsForRemoteChanges___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logDeletingStickerRecents
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Deleting sticker recents for sync", v3, 2u);
  }
}

- (void)updatingThumbnailsForRemoteChanges:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "UpdatingThumbnailsForRemoteChanges", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorProcessingChangeTransactionsToUpdateThumbnails:];
  }
}

- (void)logCheckingIfMigrationNeeded
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Checking if migration needed…", v3, 2u);
  }
}

- (void)logUpdatingThumbnails
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Updating thumbnails if needed", v3, 2u);
  }
}

- (void)logSchedulingImport
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Scheduling import of records", v3, 2u);
  }
}

- (void)logSchedulingUpdateThumbnails
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Scheduling thumbnail update", v3, 2u);
  }
}

- (void)logWillResetZone
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "WILL RESET CLOUDKIT ZONE!", v3, 2u);
  }
}

- (void)logDidResetZoneWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_DEFAULT, "Did reset CloudKit zone with success %d, error %@", v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logTearingDownCoreDataStack:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Will tear down CoreData stack for path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorTearingDownCoreDataStack:(id)a3
{
  v3 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorTearingDownCoreDataStack:];
  }
}

- (void)logErrorRemovingStoreFolder:(id)a3
{
  v3 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorRemovingStoreFolder:];
  }
}

- (void)postingAvatarStoreChangeNotification:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "AVTAvatarStoreDidChangeNotification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logPostingChangeNotificationForIdentifiers:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [v4 componentsJoinedByString:{@", "}];
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Posting change notification for %lu record id(s) %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logNotImportingOnLaunchWithRemainingTime:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a3 % 3600;
    v7 = 134218496;
    v8 = (a3 / 3600.0);
    v9 = 2048;
    v10 = ((((34953 * v5) >> 16) >> 5) + (((v5 + ((-30583 * v5) >> 16)) & 0x8000) >> 15));
    v11 = 2048;
    v12 = (v5 - 60 * ((((34953 * v5) >> 16) >> 5) + (((v5 + ((-30583 * v5) >> 16)) & 0x8000) >> 15)));
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, "Not importing on launch, still remains %02luh %02lum %02lus", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSettingUserDirSuffixForSandbox:(int)a3
{
  v3 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSettingUserDirSuffixForSandbox:];
  }
}

- (void)logGenericSandboxError:(id)a3 error:(int)a4
{
  v5 = a3;
  v6 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logGenericSandboxError:error:];
  }
}

- (void)logErrorSandboxInit:(char *)a3
{
  v3 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSandboxInit:];
  }
}

- (void)logWarningNoHOME
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)processingWillResetSyncNotification:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "WillResetSync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__AVTUILogger_processingWillResetSyncNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AVTUILogger_processingWillResetSyncNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __51__AVTUILogger_processingWillResetSyncNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)processingDidResetSyncNotification:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "DidResetSync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__AVTUILogger_processingDidResetSyncNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AVTUILogger_processingDidResetSyncNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_processingDidResetSyncNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)copyingStorageAside:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "CopyingStorageAside", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__AVTUILogger_copyingStorageAside___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AVTUILogger_copyingStorageAside___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __35__AVTUILogger_copyingStorageAside___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)restoringStorage:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "RestoringStorage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__AVTUILogger_restoringStorage___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AVTUILogger_restoringStorage___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_restoringStorage___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logStartObservingResetSync
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Starting to observe NSCloudKitMirroringDelegateWillResetSyncNotificationName / NSCloudKitMirroringDelegateDidResetSyncNotificationName…", v3, 2u);
  }
}

- (void)logMissingResetSyncReasonKey
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logMissingTombstonedIdentifier
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logPersistentChangeNotOfInterest:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Got a change that didn't seem interesting: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logResetSyncReason:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, "Reset Sync reason: %lu", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorCopyingStorageAside:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorCopyingStorageAside:];
  }
}

- (void)logErrorMergingCopiedAsideContent:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMergingCopiedAsideContent:];
  }
}

- (void)logSetupSchedulingMigrationCheck
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Setup - will check if migration is needed", v3, 2u);
  }
}

- (void)logSetupSchedulingImport
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Setup - scheduling import", v3, 2u);
  }
}

- (void)logSetupSchedulingExport
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Setup - scheduling export", v3, 2u);
  }
}

- (void)logCoalesceableEventOccured:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Coalescable event occured: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingChangedRecordsContentForIdentifiers:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingChangedRecordsContentForIdentifiers:error:];
  }
}

- (void)logTooManyAvatars:(unint64_t)a3 limit:(unint64_t)a4
{
  v4 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logTooManyAvatars:limit:];
  }
}

- (void)checkingAccountInfo:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "CheckingAccount", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__AVTUILogger_checkingAccountInfo___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AVTUILogger_checkingAccountInfo___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __35__AVTUILogger_checkingAccountInfo___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logAccountInfo:(id)a3 status:(int64_t)a4 deviceToDeviceEncryption:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = v5;
    v12 = 2048;
    v13 = a4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_241932000, v9, OS_LOG_TYPE_DEFAULT, "Got account info! HSA2: %d, status: %ld, description: %@", v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingAccountInfo:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingAccountInfo:];
  }
}

- (void)logErrorMigratingBackupInclusionStatus:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMigratingBackupInclusionStatus:];
  }
}

- (void)logErrorUpdatingBackupInclusionStatus:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorUpdatingBackupInclusionStatus:];
  }
}

- (void)logUpdatingBackupExclusionStatus:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVTUILogger *)self backendLog];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Will NOT include database in backup.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Will include database in backup.";
    v7 = &v8;
    goto LABEL_6;
  }
}

- (void)logAvatarsDaemonReceivesIncomingConnection
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_INFO, "Accepting incoming connection on side channel", v3, 2u);
  }
}

- (void)logAvatarsDaemonClientChecksIn:(int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, "CheckIn from client with pid %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logAvatarsDaemonClientConnectionInterrupted
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAvatarsDaemonClientConnectionInvalidated
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Connection to avatarsd invalidated", v3, 2u);
  }
}

- (void)logErrorGettingAvatarsDaemonClientProxy:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingAvatarsDaemonClientProxy:];
  }
}

- (void)logNoProxyToAvatarsDaemon
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkingIn:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "CheckingIn", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__AVTUILogger_checkingIn___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AVTUILogger_checkingIn___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __26__AVTUILogger_checkingIn___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)runningMaintenance:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_241932000, "RunningStoreMaintenance", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__AVTUILogger_runningMaintenance___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AVTUILogger_runningMaintenance___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

void __34__AVTUILogger_runningMaintenance___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logErrorMitigatingDuplicates:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMitigatingDuplicates:];
  }
}

- (void)logMaintenanceCompleted
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Store maintenance completed!", v3, 2u);
  }
}

- (void)logDiscoveredDuplicates:(id)a3 count:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_DEFAULT, "Discovered %lu group(s) of duplicates: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logDeduplicateRecordWithIdentifier:(id)a3 toNewRecordWithIdentifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "Fixing duplicate with identifier %@ to have identifier %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logStickerGeneratorPoolDidntHaveAvailableGenerator:(int64_t)a3 maxCount:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_241932000, v6, OS_LOG_TYPE_INFO, "Sticker Generator Pool has to steal a generator in Use, %ld in use, %ld max", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logPaddleViewVideoPlayerFailed:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "PaddleView Video Player failed with error %@; restarting videos", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingStickerStart:(id)a3 forRecord:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "Rendering sticker %@ for record %@", &v11, 0x16u);
  }

  v9 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v9))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RenderSticker", &unk_241967295, &v11, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingStickerEnd:(id)a3
{
  v3 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RenderSticker", &unk_241967295, v4, 2u);
  }
}

- (void)logStickerViewSnapshotForBounds:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = y;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_INFO, "StickerViewController preparing for snapshot for bounds %@ offset %f", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logStickerSchedulerAddedTask:(id)a3 taskCount:(int64_t)a4
{
  v5 = a3;
  v6 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerAddedTask:taskCount:];
  }
}

- (void)logStickerSchedulerStartedTask:(id)a3 forSchedulerRule:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerStartedTask:forSchedulerRule:];
  }
}

- (void)logStickerSchedulerCancelledTask:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerCancelledTask:];
  }
}

- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerCancelledStickerSheetTasksForIdentifier:];
  }
}

- (void)logStickerSchedulerCancelledAllTasks
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:];
  }
}

- (void)logNilImageReturnedFromAVTUIStickerRenderer
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logNilImageReturnedFromAVTAvatarRecordImageProvider
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalysisServiceCheckingIn:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAnalysisServiceCheckingIn:];
  }
}

- (void)logAnalysisServiceWillRun
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalysisServiceDidRun
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalysisServiceDidNotProcessState:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAnalysisServiceDidNotProcessState:];
  }
}

- (void)logCarouselChangingToSingleMode
{
  v2 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_INFO, "Carousel changing to single avatar mode", v3, 2u);
  }
}

- (void)logCarouselChangingToMultiMode
{
  v2 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_INFO, "Carousel changing to multi avatar mode", v3, 2u);
  }
}

- (void)logCarouselChangesCenterItemTo:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "Carousel changes center item to:%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselTransitionCenterItem:(id)a3 withCell:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_INFO, "Carousel transtioning center item:%@, center cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselStopsFocusingOnCenterItem:(id)a3 withCell:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_INFO, "Carousel stops focusing on center item:%@, center cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logSingleModeControllerStartUsingLiveView:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "Single mode controller STARTS using liveView: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSingleModeControllerStopUsingLiveView:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "Single mode controller STOPS using liveView: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselCellStartUsingLiveView:(id)a3 associatedTransition:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_INFO, "[AVTTransition:%@] Carousel Cell STARTS using liveView, cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselCellStopUsingLiveView:(id)a3 associatedTransition:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_INFO, "[AVTTransition:%@] Carousel Cell STOPS using liveView, cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselAddsTransitionToCoordinator:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Carousel adds transition to coordinator", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logStartTransition:(id)a3 state:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_241932000, v7, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> starts, state: %ld", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logSetupHandlerCompletedForTransition:(id)a3 state:(int64_t)a4 finished:(BOOL)a5
{
  v5 = a5;
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    v12 = 138412802;
    v13 = v8;
    if (v5)
    {
      v10 = @"YES";
    }

    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_241932000, v9, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Setup done, state: %ld, finished %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logPerformTransition:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Perform", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCancelTransition:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> CANCEL!", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logTransition:(id)a3 state:(unint64_t)a4 reachedStage:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412802;
    v12 = v8;
    v13 = 2048;
    v14 = a5;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_241932000, v9, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> reached stage %lu, state: %lu", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logToLivePoseTransitionBegins:(id)a3
{
  v3 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ToLive", &unk_241967295, v4, 2u);
  }
}

- (void)logToLivePoseTransitionEnds:(id)a3
{
  v3 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ToLive", &unk_241967295, v4, 2u);
  }
}

- (void)logAVTViewSetAvatar:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_INFO, "[AVTView] Set avatar: %@", &v8, 0xCu);
  }

  v6 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(v6))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logAVTViewDidRenderAvatar:(id)a3 currentAvatar:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 isEqual:v7];
    v10 = @"NO";
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    if (v9)
    {
      v10 = @"YES";
    }

    v15 = v7;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_INFO, "[AVTView] Did render avatar: %@, current avatar %@, match %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logAVTViewDidRenderCurrentAvatar:(id)a3
{
  v3 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, v4, 2u);
  }
}

- (void)logAVTViewCancelingRenderingAvatar:(id)a3
{
  v3 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, v4, 2u);
  }
}

- (void)logCarouselErrorGettingFrameForElementAtIndex:(unint64_t)a3
{
  v3 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logCarouselErrorGettingFrameForElementAtIndex:];
  }
}

- (void)logCarouselDelegateDidFocusRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateDidFocusRecord:];
  }
}

- (void)logCarouselDelegateWillEndFocusRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateWillEndFocusRecord:];
  }
}

- (void)logCarouselDelegateNearnessFactorDidChange:(double)a3 towardRecord:(BOOL)a4 editable:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218496;
    v11 = a3;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v5;
    _os_log_debug_impl(&dword_241932000, v8, OS_LOG_TYPE_DEBUG, "[Delegate] Did Move (%2.2lf) Toward record %d, editable %d", &v10, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselDelegateDidUpdateRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateDidUpdateRecord:];
  }
}

- (void)logCarouselEndsDraggingWithVelocity:(double)a3 willSwitchIndexPathInsteadOfScrollBack:(BOOL)a4 forHighVelocity:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v8 = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134218496;
    v11 = a3;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_INFO, "Carousel ends dragging with velocity:%2.2lf, switch instead of scroll back: %d, switch for high velocity: %d", &v10, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserHasNoMemojiData
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_INFO, "Setup User has no Memoji data to import", v3, 2u);
  }
}

- (void)logSetupUserImportFailedToUnarchiveDataAtPath:(id)a3 errorDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportFailedToUnarchiveDataAtPath:errorDescription:];
  }
}

- (void)logSetupUserImportAttempting:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_INFO, "Setup User import attempting to save %ld records", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserImportSaveError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportSaveError:];
  }
}

- (void)logSetupUserDataImportCheck
{
  v2 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Setup - checking for Setup User data to import", v3, 2u);
  }
}

- (void)logSetupUserImportFailedToRemoveFileWithError:(id)a3
{
  v3 = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportFailedToRemoveFileWithError:];
  }
}

- (void)logRequestedAnimojiSticker:(id)a3
{
  v3 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logRequestedAnimojiSticker:];
  }
}

- (void)logImageRenderServiceConnectionError:(id)a3
{
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logImageRenderServiceConnectionError:];
  }
}

- (void)logGeneratingImageInServiceForRecord:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Generating image and writing to cache in service for record: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreDoneInServiceForPath:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Image saved to cache by MemojiImageRenderService at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreFailedInServiceForPath:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "Image save failed in MemojiImageRenderService at path %@, with error: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logRetrievingSnapshotInServiceForPath:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Retrieving snapshot in service from cache at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logTimedOutWaitingForSnapshotInService:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = 0x4024000000000000;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Semaphore timed out at %f seconds waiting for snapshot to generate sticker %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logFailedToGenerateStickerInService:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_241932000, v5, OS_LOG_TYPE_DEFAULT, "Failed to generate sticker in service %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logIncrementingRemoteRendererTransactionCount:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, "Incrementing remote renderer transaction count to  %li", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logDecrementingRemoteRendererTransactionCount:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_241932000, v4, OS_LOG_TYPE_DEFAULT, "Decrementing remote renderer transaction count to  %li", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logCancellingCleanupBlock
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling cleanup block in remote render service", v3, 2u);
  }
}

- (void)logCleanupTimerComplete
{
  v2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, v2, OS_LOG_TYPE_DEFAULT, "Cleanup timer completed, clean exiting remote render service", v3, 2u);
  }
}

- (void)logDebug:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[AVTUIDEBUG] %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorLoadingTemplates:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error loading templates %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logParsingMetadataDefinitionsError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error parsing metadata definitions %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorCreatingBackendContent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error creating folder or empty data %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSavingError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error while saving backend %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logReadingError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error while reading backend %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSavingRecentSticker:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error saving recent stickers (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorFetchingRecentStickers:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error fetching recent stickers (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logFetchedOrphanedRecentSticker:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error fetched an unusable recent sticker (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logFetchedRecentStickerWithNoStickerConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error can't find sticker for a recent sticker (%@). Forcing migration", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDidFinishEditingWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error when finishing editing %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logFileSystemError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "File system error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreSavingError:code:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11(&dword_241932000, v0, v1, "Image Store failed to save with error: %@, code %ld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreDoneSavingImageForPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "Image Store saved image at path %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logInMemoryCacheStorageForResource:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[InMemCache] Storage for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logInMemoryCacheHitForResource:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[InMemCache] HIT for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logInMemoryCacheEvictsResource:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[InMemCache] Evicting object %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logGeneratingImageError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error generating image: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorDeletingThumbnailsForIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorDeletingSomeThumbnail:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error deleting Some thumbnails: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorDuplicatingThumbnailsForIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorFetchingRecords:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error fetching records %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logPreLoadingNeededForIndex:section:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_241932000, v0, v1, "[PreLoading] Needed - %lu|%lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logCancelingPreLoadingTask:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[PreLoading] %@ CANCELED!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logLookingUpPreLoadedPreset:task:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_241932000, v0, v1, "[PreLoading] %@ looking up %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logPreLoadingPreset:task:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_241932000, v0, v1, "[PreLoading] %@ loading %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logDonePreLoadingThumbnailForPreLoadingTask:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[PreLoading] %@ Got thumbnail", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRequestingThumbnailForIndex:section:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_241932000, v0, v1, "Requesting thumbnail for %@|%lu");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSnapshottingAVTView:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error snapshotting the AVTView: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAvatarPreloadBeginForIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[AVTAvatar preloadAvatar:] identifier %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logUsageTrackingSmallDifferencesClusterCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "Clusters of record with small differences: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logUsageTrackingBigDifferencesClusterCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "Clusters of record with big differences: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImportRequestResult:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "CloudKit Import Request FAILED, error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logExportRequestResult:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "CloudKit Export Request FAILED, error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logMirroringRequestErrorWithCode:description:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingRecordsForMigration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error updating records for migration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorDeletingMigratedContent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error deleting migrated content: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorAddingPersistentStore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error adding persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorStartingServer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error starting server! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSettingUpStore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error setting up store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logUnableToCreatePushConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Unable to create Push Connection! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorFetchingChangeHistory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error fetching change history: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorPinningContextToCurrentQueryGenerationToken:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error pinning context to current query generation token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logInspectingChangesForExportAfterToken:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "Inspecting changes after token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logUnableToReadRemoteRecord:isCritical:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Unable to read remote record! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logUnableToReadRemoteRecord:isCritical:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorReadingCurrentHistoryToken:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error reading current history token %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSavingChangeToken:location:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_241932000, v0, v1, "Unable to save change token: %@, location %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error processing change transactions to update thumbnails: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorTearingDownCoreDataStack:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorRemovingStoreFolder:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorSettingUserDirSuffixForSandbox:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logGenericSandboxError:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSandboxInit:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "failed to enter sandbox: %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorCopyingStorageAside:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error copying storage aside: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorMergingCopiedAsideContent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error merging copied aside content: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingChangedRecordsContentForIdentifiers:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logTooManyAvatars:limit:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingAccountInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error getting account info %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorMigratingBackupInclusionStatus:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error migrating backup inclusion status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingBackupInclusionStatus:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error updating backup inclusion status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingAvatarsDaemonClientProxy:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error getting proxy to avatarsd: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorMitigatingDuplicates:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Error mitigating duplicates %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logStickerSchedulerAddedTask:taskCount:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_241932000, v0, v1, "[StickerTaskScheduler] Added task: %@, task count: %ld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logStickerSchedulerStartedTask:forSchedulerRule:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_241932000, v0, v1, "[StickerTaskScheduler] Started task: %@, scheduler rule: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logStickerSchedulerCancelledTask:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[StickerTaskScheduler] Cancelled task: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[StickerTaskScheduler] Cancelled sticker sheet tasks for identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[AVTBodyCarousel] bodyPoseCell is nil or unexpected type at indexPath %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAnalysisServiceCheckingIn:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "Animoji Usage Analysis Service checking in. Criteria: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAnalysisServiceDidNotProcessState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "Animoji Usage Analysis Service did did not process the %@ state", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselErrorGettingFrameForElementAtIndex:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselDelegateDidFocusRecord:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[Delegate] Did Focus on record %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselDelegateWillEndFocusRecord:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[Delegate] Will End Focus on record %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselDelegateDidUpdateRecord:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_241932000, v0, v1, "[Delegate] Did Update with record %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserImportFailedToUnarchiveDataAtPath:errorDescription:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserImportSaveError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Setup User data import failed to save avatar records, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserImportFailedToRemoveFileWithError:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logRequestedAnimojiSticker:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logImageRenderServiceConnectionError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_241932000, v0, v1, "Failed to set up remote connection, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end