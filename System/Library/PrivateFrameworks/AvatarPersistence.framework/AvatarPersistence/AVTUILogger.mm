@interface AVTUILogger
- (AVTUILogger)init;
- (void)checkingAccountInfo:(id)info;
- (void)checkingIn:(id)in;
- (void)copyingStorageAside:(id)aside;
- (void)deletingRecords:(id)records;
- (void)deletingStickerRecentsForRemoteChanges:(id)changes;
- (void)duplicatingRecords:(id)records;
- (void)exportingRecords:(id)records;
- (void)fetchingRecords:(id)records;
- (void)importingRecords:(id)records;
- (void)logAVTViewCancelingRenderingAvatar:(id)avatar;
- (void)logAVTViewDidRenderAvatar:(id)avatar currentAvatar:(id)currentAvatar;
- (void)logAVTViewDidRenderCurrentAvatar:(id)avatar;
- (void)logAVTViewSetAvatar:(id)avatar;
- (void)logAccountInfo:(id)info status:(int64_t)status deviceToDeviceEncryption:(BOOL)encryption;
- (void)logAnalysisServiceCheckingIn:(id)in;
- (void)logAnalysisServiceDidNotProcessState:(id)state;
- (void)logAnalysisServiceDidRun;
- (void)logAnalysisServiceWillRun;
- (void)logAvatarPreloadBeginForIdentifier:(id)identifier;
- (void)logAvatarPreloadEnd;
- (void)logAvatarsDaemonClientChecksIn:(int)in;
- (void)logAvatarsDaemonClientConnectionInterrupted;
- (void)logAvatarsDaemonClientConnectionInvalidated;
- (void)logAvatarsDaemonReceivesIncomingConnection;
- (void)logAvatarsdExitingWithReason:(id)reason;
- (void)logBackendVersionMismatch:(id)mismatch actual:(id)actual;
- (void)logCancelTransition:(id)transition;
- (void)logCancelingPreLoadingTask:(id)task;
- (void)logCancellingCleanupBlock;
- (void)logCarouselAddsTransitionToCoordinator:(id)coordinator;
- (void)logCarouselCellStartUsingLiveView:(id)view associatedTransition:(id)transition;
- (void)logCarouselCellStopUsingLiveView:(id)view associatedTransition:(id)transition;
- (void)logCarouselChangesCenterItemTo:(id)to;
- (void)logCarouselChangingToMultiMode;
- (void)logCarouselChangingToSingleMode;
- (void)logCarouselDelegateDidFocusRecord:(id)record;
- (void)logCarouselDelegateDidUpdateRecord:(id)record;
- (void)logCarouselDelegateNearnessFactorDidChange:(double)change towardRecord:(BOOL)record editable:(BOOL)editable;
- (void)logCarouselDelegateWillEndFocusRecord:(id)record;
- (void)logCarouselEndsDraggingWithVelocity:(double)velocity willSwitchIndexPathInsteadOfScrollBack:(BOOL)back forHighVelocity:(BOOL)highVelocity;
- (void)logCarouselErrorGettingFrameForElementAtIndex:(unint64_t)index;
- (void)logCarouselSnapshotForIndex:(unint64_t)index size:(CGSize)size;
- (void)logCarouselStopsFocusingOnCenterItem:(id)item withCell:(id)cell;
- (void)logCarouselTransitionCenterItem:(id)item withCell:(id)cell;
- (void)logChangesRequireExport;
- (void)logChangesRequireThumbnailUpdate;
- (void)logCheckingIfMigrationNeeded;
- (void)logCleanupTimerComplete;
- (void)logCoalesceableEventOccured:(id)occured;
- (void)logCouldntFindRecordIdentifierForChangeType:(int64_t)type managedObjectID:(id)d;
- (void)logCreatingBackendDBAtPath:(id)path;
- (void)logCreatingBackendFolderAtPath:(id)path;
- (void)logCreatingImageStoreForPath:(id)path;
- (void)logCreatingStore:(id)store;
- (void)logCurrentHistoryTokenFileDoesntExist:(id)exist;
- (void)logDebug:(id)debug;
- (void)logDecrementingRemoteRendererTransactionCount:(int64_t)count;
- (void)logDeduplicateRecordWithIdentifier:(id)identifier toNewRecordWithIdentifier:(id)withIdentifier;
- (void)logDeletingImagesWithIdentifierPrefix:(id)prefix;
- (void)logDeletingRecordWithIdentifier:(id)identifier;
- (void)logDeletingStickerRecents;
- (void)logDidFinishEditingWithError:(id)error;
- (void)logDidFinishEditingWithSuccess;
- (void)logDidResetZoneWithSuccess:(BOOL)success error:(id)error;
- (void)logDiscoveredDuplicates:(id)duplicates count:(unint64_t)count;
- (void)logDispatchingRemoteChangeWithTransactionCount:(unint64_t)count handlersCount:(unint64_t)handlersCount;
- (void)logDonePreLoadingPreset:(id)preset task:(id)task;
- (void)logDonePreLoadingThumbnailForPreLoadingTask:(id)task;
- (void)logDroppingUnsupportedAvatarRecord:(id)record;
- (void)logDuplicatingRecordWithIdentifier:(id)identifier;
- (void)logErrorAddingPersistentStore:(id)store;
- (void)logErrorCopyingStorageAside:(id)aside;
- (void)logErrorCreatingBackendContent:(id)content;
- (void)logErrorDeletingMigratedContent:(id)content;
- (void)logErrorDeletingSomeThumbnail:(id)thumbnail;
- (void)logErrorDeletingThumbnailsForIdentifier:(id)identifier error:(id)error;
- (void)logErrorDuplicatingThumbnailsForIdentifier:(id)identifier error:(id)error;
- (void)logErrorFetchingChangeHistory:(id)history;
- (void)logErrorFetchingRecentStickers:(id)stickers;
- (void)logErrorFetchingRecords:(id)records;
- (void)logErrorGettingAccountInfo:(id)info;
- (void)logErrorGettingAvatarsDaemonClientProxy:(id)proxy;
- (void)logErrorGettingChangedRecordsContentForIdentifiers:(id)identifiers error:(id)error;
- (void)logErrorLoadingTemplates:(id)templates;
- (void)logErrorMergingCopiedAsideContent:(id)content;
- (void)logErrorMigratingBackupInclusionStatus:(id)status;
- (void)logErrorMitigatingDuplicates:(id)duplicates;
- (void)logErrorPinningContextToCurrentQueryGenerationToken:(id)token;
- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:(id)thumbnails;
- (void)logErrorReadingCurrentHistoryToken:(id)token;
- (void)logErrorRemovingStoreFolder:(id)folder;
- (void)logErrorSandboxInit:(char *)init;
- (void)logErrorSavingChangeToken:(id)token location:(id)location;
- (void)logErrorSavingRecentSticker:(id)sticker;
- (void)logErrorSettingUpStore:(id)store;
- (void)logErrorSettingUserDirSuffixForSandbox:(int)sandbox;
- (void)logErrorSnapshottingAVTView:(id)view;
- (void)logErrorStartingServer:(id)server;
- (void)logErrorTearingDownCoreDataStack:(id)stack;
- (void)logErrorUpdatingBackupInclusionStatus:(id)status;
- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:(id)path;
- (void)logErrorUpdatingRecordsForMigration:(id)migration;
- (void)logErrorUpdatingVersion:(id)version;
- (void)logErrorWhileMigratingBackend:(id)backend;
- (void)logExportRequestResult:(BOOL)result error:(id)error;
- (void)logFailedToGenerateStickerInService:(id)service;
- (void)logFetchedOrphanedRecentSticker:(id)sticker;
- (void)logFetchedRecentStickerWithNoStickerConfiguration:(id)configuration;
- (void)logFetchedRecords:(unint64_t)records criteria:(int64_t)criteria;
- (void)logFileSystemError:(id)error;
- (void)logFoundExistingRecordDuringMigration;
- (void)logFoundExistingRecordDuringMigration:(id)migration;
- (void)logFoundRecordIdentifier:(id)identifier changeType:(int64_t)type managedObjectID:(id)d;
- (void)logGeneratingImageError:(id)error;
- (void)logGeneratingImageForRecord:(id)record scope:(id)scope type:(int64_t)type;
- (void)logGeneratingImageInServiceForRecord:(id)record;
- (void)logGenericSandboxError:(id)error error:(int)a4;
- (void)logImageRenderServiceConnectionError:(id)error;
- (void)logImageStoreBeginSavingImageForPath:(id)path;
- (void)logImageStoreCacheHitForItemDescription:(id)description sizeCost:(unint64_t)cost;
- (void)logImageStoreCacheMiss:(id)miss;
- (void)logImageStoreDoneInServiceForPath:(id)path;
- (void)logImageStoreDoneSavingImageForPath:(id)path;
- (void)logImageStoreFailedInServiceForPath:(id)path error:(id)error;
- (void)logImageStoreSavingError:(id)error code:(int64_t)code;
- (void)logImportRequestResult:(BOOL)result error:(id)error;
- (void)logInMemoryCacheEvictsResource:(id)resource;
- (void)logInMemoryCacheHitForResource:(id)resource;
- (void)logInMemoryCacheStorageForResource:(id)resource;
- (void)logIncrementingRemoteRendererTransactionCount:(int64_t)count;
- (void)logInspectingChangesForExportAfterToken:(id)token;
- (void)logLookingUpPreLoadedPreset:(id)preset task:(id)task;
- (void)logMaintenanceCompleted;
- (void)logMigratingSource:(id)source;
- (void)logMigrationXPCActivityFinished;
- (void)logMirroringRequestErrorWithCode:(int64_t)code description:(id)description;
- (void)logMissingResetSyncReasonKey;
- (void)logMissingTombstonedIdentifier;
- (void)logNilImageReturnedFromAVTAvatarRecordImageProvider;
- (void)logNilImageReturnedFromAVTUIStickerRenderer;
- (void)logNoAvatarPreset:(id)preset;
- (void)logNoProxyToAvatarsDaemon;
- (void)logNotImportingOnLaunchWithRemainingTime:(double)time;
- (void)logNotificationDoesntContainChangeHistoryToken;
- (void)logPaddleViewVideoPlayerFailed:(id)failed;
- (void)logParsingMetadataDefinitions;
- (void)logParsingMetadataDefinitionsError:(id)error;
- (void)logPerformTransition:(id)transition;
- (void)logPerformedRecentStickersMigration:(BOOL)migration;
- (void)logPersistentChangeNotOfInterest:(id)interest;
- (void)logPostingChangeNotificationForIdentifiers:(id)identifiers;
- (void)logPreLoadingNeededForIndex:(unint64_t)index section:(unint64_t)section;
- (void)logPreLoadingPreset:(id)preset task:(id)task;
- (void)logPushConnectionReceivedPublicToken:(id)token;
- (void)logPushConnectionReceivedToken:(id)token topic:(id)topic identifier:(id)identifier;
- (void)logPushNotificationReceivedForTopic:(id)topic payload:(id)payload;
- (void)logReadingBackendAtPath:(id)path;
- (void)logReadingError:(id)error;
- (void)logReceivedRemoteChange:(id)change;
- (void)logRecordsNotFoundInAnyStore:(id)store;
- (void)logRecordsNotFoundInPuppetStore:(id)store;
- (void)logRecordsNotFoundInRecordStore:(id)store;
- (void)logRenderingConfiguration:(id)configuration;
- (void)logRenderingModelColor:(id)color;
- (void)logRenderingModelPreset:(id)preset;
- (void)logRenderingRecord:(id)record size:(CGSize)size;
- (void)logRenderingStickerEnd:(id)end;
- (void)logRenderingStickerStart:(id)start forRecord:(id)record;
- (void)logRequestedAnimojiSticker:(id)sticker;
- (void)logRequestingPreLoadingTask:(id)task forIndex:(unint64_t)index section:(unint64_t)section;
- (void)logRequestingThumbnailForIndex:(unint64_t)index section:(id)section;
- (void)logResetSyncReason:(unint64_t)reason;
- (void)logRetrievingSnapshotInServiceForPath:(id)path;
- (void)logSavingBackend;
- (void)logSavingError:(id)error;
- (void)logSchedulingImport;
- (void)logSchedulingUpdateThumbnails;
- (void)logSetupHandlerCompletedForTransition:(id)transition state:(int64_t)state finished:(BOOL)finished;
- (void)logSetupSchedulingExport;
- (void)logSetupSchedulingImport;
- (void)logSetupSchedulingMigrationCheck;
- (void)logSetupUserDataImportCheck;
- (void)logSetupUserHasNoMemojiData;
- (void)logSetupUserImportAttempting:(int64_t)attempting;
- (void)logSetupUserImportFailedToRemoveFileWithError:(id)error;
- (void)logSetupUserImportFailedToUnarchiveDataAtPath:(id)path errorDescription:(id)description;
- (void)logSetupUserImportSaveError:(id)error;
- (void)logSingleModeCantSnapshotForLackOfWindow;
- (void)logSingleModeControllerStartUsingLiveView:(id)view;
- (void)logSingleModeControllerStopUsingLiveView:(id)view;
- (void)logSkippedFetchingRecordsWithReason:(id)reason;
- (void)logSnapshotReturnedImage:(id)image;
- (void)logStartObservingRemoteChangeNotificationFrom:(id)from;
- (void)logStartObservingResetSync;
- (void)logStartTransition:(id)transition state:(int64_t)state;
- (void)logStartingPreLoadingTask:(id)task;
- (void)logStartingServer;
- (void)logStickerGeneratorPoolDidntHaveAvailableGenerator:(int64_t)generator maxCount:(int64_t)count;
- (void)logStickerSchedulerAddedTask:(id)task taskCount:(int64_t)count;
- (void)logStickerSchedulerCancelledAllTasks;
- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:(id)identifier;
- (void)logStickerSchedulerCancelledTask:(id)task;
- (void)logStickerSchedulerStartedTask:(id)task forSchedulerRule:(id)rule;
- (void)logStickerViewSnapshotForBounds:(id)bounds offset:(CGPoint)offset;
- (void)logSyncEnabled;
- (void)logTearingDownCoreDataStack:(id)stack;
- (void)logThrottlingAVTView;
- (void)logTimedOutWaitingForSnapshotInService:(id)service;
- (void)logToLivePoseTransitionBegins:(id)begins;
- (void)logToLivePoseTransitionEnds:(id)ends;
- (void)logTooManyAvatars:(unint64_t)avatars limit:(unint64_t)limit;
- (void)logTrackerProcessingChanges:(id)changes count:(unint64_t)count from:(id)from;
- (void)logTransactionHasChangesButNoToken;
- (void)logTransition:(id)transition state:(unint64_t)state reachedStage:(unint64_t)stage;
- (void)logUnableToCreatePushConnection:(id)connection;
- (void)logUnableToReadRemoteRecord:(id)record isCritical:(BOOL)critical;
- (void)logUnthrottlingAVTView;
- (void)logUpdatingBackupExclusionStatus:(BOOL)status;
- (void)logUpdatingLiveAvatarWithConfiguration:(id)configuration;
- (void)logUpdatingThumbnails;
- (void)logUsageTrackingBigDifferencesClusterCount:(unint64_t)count;
- (void)logUsageTrackingRecordCount:(unint64_t)count;
- (void)logUsageTrackingSmallDifferencesClusterCount:(unint64_t)count;
- (void)logUserRequestedBackupXPCActivityFinished;
- (void)logWarningNoHOME;
- (void)logWillResetZone;
- (void)migratingPersistedContent:(id)content;
- (void)performingMigrationXPCActivity:(id)activity;
- (void)performingUserRequestedBackupActivity:(id)activity;
- (void)postingAvatarStoreChangeNotification:(id)notification;
- (void)processingDidResetSyncNotification:(id)notification;
- (void)processingRemoteChangeNotification:(id)notification;
- (void)processingWillResetSyncNotification:(id)notification;
- (void)restoringStorage:(id)storage;
- (void)runningMaintenance:(id)maintenance;
- (void)savingChangeTrackerToken:(id)token;
- (void)savingRecords:(id)records;
- (void)settingUpStore:(id)store;
- (void)updatingThumbnailsForRemoteChanges:(id)changes;
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

- (void)logDebug:(id)debug
{
  debugCopy = debug;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logDebug:];
  }
}

- (void)logErrorLoadingTemplates:(id)templates
{
  templatesCopy = templates;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorLoadingTemplates:];
  }
}

- (void)logParsingMetadataDefinitions
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Parsing metadata definitions…", v3, 2u);
  }
}

- (void)logParsingMetadataDefinitionsError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logParsingMetadataDefinitionsError:];
  }
}

- (void)logRenderingModelColor:(id)color
{
  v9 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = colorCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering model color %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingModelPreset:(id)preset
{
  v9 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = presetCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering model preset %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingConfiguration:(id)configuration
{
  v10 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = configurationCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering configuration %@", &v8, 0xCu);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RenderSnapshot", &unk_241967295, &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingRecord:(id)record size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = recordCopy;
    v12 = 2048;
    v13 = width;
    v14 = 2048;
    v15 = height;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering record %@, at size %2.2fx%2.2f", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logSnapshotReturnedImage:(id)image
{
  v10 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RenderSnapshot", &unk_241967295, &v8, 2u);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = imageCopy;
    _os_log_impl(&dword_241932000, generalLog2, OS_LOG_TYPE_DEFAULT, "Snapshot returned %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logNoAvatarPreset:(id)preset
{
  v9 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = presetCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "No avatar preset for %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCreatingStore:(id)store
{
  v9 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = storeCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Creating AVTAvatarStore instance %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCreatingBackendDBAtPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = pathCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Creating empty database at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCreatingBackendFolderAtPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = pathCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Creating Folder at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorCreatingBackendContent:(id)content
{
  contentCopy = content;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorCreatingBackendContent:];
  }
}

- (void)logSavingBackend
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Saving backend…", v3, 2u);
  }
}

- (void)logDeletingRecordWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Deleting record with identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDeletingImagesWithIdentifierPrefix:(id)prefix
{
  v9 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = prefixCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Deleting images with identifier prefix %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDuplicatingRecordWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Duplicating record with identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logReadingBackendAtPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = pathCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Reading backend at %@…", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSavingError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSavingError:];
  }
}

- (void)logReadingError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logReadingError:];
  }
}

- (void)logRecordsNotFoundInAnyStore:(id)store
{
  v9 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = storeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Record not found in any store (%@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRecordsNotFoundInPuppetStore:(id)store
{
  v9 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = storeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Puppet(s) not found (%@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRecordsNotFoundInRecordStore:(id)store
{
  v9 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = storeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Avatar Record(s) not found (%@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSavingRecentSticker:(id)sticker
{
  stickerCopy = sticker;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSavingRecentSticker:];
  }
}

- (void)logErrorFetchingRecentStickers:(id)stickers
{
  stickersCopy = stickers;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingRecentStickers:];
  }
}

- (void)logFetchedOrphanedRecentSticker:(id)sticker
{
  stickerCopy = sticker;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFetchedOrphanedRecentSticker:];
  }
}

- (void)logFetchedRecentStickerWithNoStickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFetchedRecentStickerWithNoStickerConfiguration:];
  }
}

- (void)logPerformedRecentStickersMigration:(BOOL)migration
{
  migrationCopy = migration;
  v7 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = migrationCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Performed sticker recents migration, found orphaned: %{public}d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)savingRecords:(id)records
{
  recordsCopy = records;
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
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __29__AVTUILogger_savingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)deletingRecords:(id)records
{
  recordsCopy = records;
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
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __31__AVTUILogger_deletingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)fetchingRecords:(id)records
{
  recordsCopy = records;
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
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __31__AVTUILogger_fetchingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)duplicatingRecords:(id)records
{
  recordsCopy = records;
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
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __34__AVTUILogger_duplicatingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logFetchedRecords:(unint64_t)records criteria:(int64_t)criteria
{
  v12 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    recordsCopy = records;
    v10 = 2048;
    criteriaCopy = criteria;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Fetched %lu record(s), criteria: %ld", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logSkippedFetchingRecordsWithReason:(id)reason
{
  v9 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = reasonCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Skipped fetching records: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logBackendVersionMismatch:(id)mismatch actual:(id)actual
{
  v14 = *MEMORY[0x277D85DE8];
  mismatchCopy = mismatch;
  actualCopy = actual;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = mismatchCopy;
    v12 = 2114;
    v13 = actualCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Detected a version mismatch, found %{public}@, current is %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logDroppingUnsupportedAvatarRecord:(id)record
{
  v9 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = recordCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Avatar record has a version lower than what AvatarKit supports, dropping. %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAvatarsdExitingWithReason:(id)reason
{
  v9 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = reasonCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Exiting avatarsd for reason: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingVersion:(id)version
{
  v9 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = versionCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Error updating version %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorWhileMigratingBackend:(id)backend
{
  v9 = *MEMORY[0x277D85DE8];
  backendCopy = backend;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = backendCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Error migrating backend %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDidFinishEditingWithSuccess
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Did finish editing avatar successfully", v3, 2u);
  }
}

- (void)logDidFinishEditingWithError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logDidFinishEditingWithError:];
  }
}

- (void)logFileSystemError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFileSystemError:];
  }
}

- (void)logCreatingImageStoreForPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = pathCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Creating image store at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreCacheMiss:(id)miss
{
  v9 = *MEMORY[0x277D85DE8];
  missCopy = miss;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = missCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Image Store Cache miss: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreCacheHitForItemDescription:(id)description sizeCost:(unint64_t)cost
{
  v13 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = descriptionCopy;
    v11 = 2048;
    costCopy = cost;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Image Store Cache HIT for %@, size %lu", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreSavingError:(id)error code:(int64_t)code
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logImageStoreSavingError:code:];
  }
}

- (void)logImageStoreBeginSavingImageForPath:(id)path
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SavingImage", &unk_241967295, v4, 2u);
  }
}

- (void)logImageStoreDoneSavingImageForPath:(id)path
{
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SavingImage", &unk_241967295, v7, 2u);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog2, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logImageStoreDoneSavingImageForPath:];
  }
}

- (void)logInMemoryCacheStorageForResource:(id)resource
{
  resourceCopy = resource;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheStorageForResource:];
  }
}

- (void)logInMemoryCacheHitForResource:(id)resource
{
  resourceCopy = resource;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheHitForResource:];
  }
}

- (void)logInMemoryCacheEvictsResource:(id)resource
{
  resourceCopy = resource;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheEvictsResource:];
  }
}

- (void)logGeneratingImageForRecord:(id)record scope:(id)scope type:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  scopeCopy = scope;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = recordCopy;
    v14 = 2112;
    v15 = scopeCopy;
    v16 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Generating image for record %@, with scope %@, type %ld", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logGeneratingImageError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logGeneratingImageError:];
  }
}

- (void)logErrorDeletingThumbnailsForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingThumbnailsForIdentifier:error:];
  }
}

- (void)logErrorDeletingSomeThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingSomeThumbnail:];
  }
}

- (void)logErrorDuplicatingThumbnailsForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDuplicatingThumbnailsForIdentifier:error:];
  }
}

- (void)logErrorFetchingRecords:(id)records
{
  recordsCopy = records;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingRecords:];
  }
}

- (void)logPreLoadingNeededForIndex:(unint64_t)index section:(unint64_t)section
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logPreLoadingNeededForIndex:section:];
  }
}

- (void)logRequestingPreLoadingTask:(id)task forIndex:(unint64_t)index section:(unint64_t)section
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = taskCopy;
    v13 = 2048;
    sectionCopy = section;
    v15 = 2048;
    indexCopy = index;
    _os_log_debug_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEBUG, "[PreLoading] %@ requested - %lu|%lu", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logStartingPreLoadingTask:(id)task
{
  v9 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = taskCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "[PreLoading] %@ starts", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCancelingPreLoadingTask:(id)task
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCancelingPreLoadingTask:];
  }
}

- (void)logLookingUpPreLoadedPreset:(id)preset task:(id)task
{
  presetCopy = preset;
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logLookingUpPreLoadedPreset:task:];
  }
}

- (void)logPreLoadingPreset:(id)preset task:(id)task
{
  presetCopy = preset;
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logPreLoadingPreset:task:];
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PreLoadingPreset", &unk_241967295, v10, 2u);
  }
}

- (void)logDonePreLoadingPreset:(id)preset task:(id)task
{
  v4 = [(AVTUILogger *)self generalLog:preset];
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PreLoadingPreset", &unk_241967295, v5, 2u);
  }
}

- (void)logDonePreLoadingThumbnailForPreLoadingTask:(id)task
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logDonePreLoadingThumbnailForPreLoadingTask:];
  }
}

- (void)logUpdatingLiveAvatarWithConfiguration:(id)configuration
{
  v9 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = configurationCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Updating live avatar with %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRequestingThumbnailForIndex:(unint64_t)index section:(id)section
{
  sectionCopy = section;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logRequestingThumbnailForIndex:section:];
  }
}

- (void)logThrottlingAVTView
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Throttling AVTView", v3, 2u);
  }
}

- (void)logUnthrottlingAVTView
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Unthrottling AVTView", v3, 2u);
  }
}

- (void)logErrorSnapshottingAVTView:(id)view
{
  viewCopy = view;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSnapshottingAVTView:];
  }
}

- (void)logCarouselSnapshotForIndex:(unint64_t)index size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v15 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v9 = 134218496;
    indexCopy = index;
    v11 = 2048;
    v12 = width;
    v13 = 2048;
    v14 = height;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Carousel snapshot for record at index %lu, size %2.2fx%2.2f", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logAvatarPreloadBeginForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAvatarPreloadBeginForIdentifier:];
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AvatarPreLoad", &unk_241967295, v7, 2u);
  }
}

- (void)logAvatarPreloadEnd
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AvatarPreLoad", &unk_241967295, v3, 2u);
  }
}

- (void)logSingleModeCantSnapshotForLackOfWindow
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logUsageTrackingRecordCount:(unint64_t)count
{
  v8 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "We have %ld memoji(s)", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logUsageTrackingSmallDifferencesClusterCount:(unint64_t)count
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logUsageTrackingSmallDifferencesClusterCount:];
  }
}

- (void)logUsageTrackingBigDifferencesClusterCount:(unint64_t)count
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logUsageTrackingBigDifferencesClusterCount:];
  }
}

- (void)logStartingServer
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Starting up server…", v3, 2u);
  }
}

- (void)settingUpStore:(id)store
{
  storeCopy = store;
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
  v10 = storeCopy;
  v11 = v6;
  v7 = v6;
  v8 = storeCopy;
  os_activity_apply(v5, block);
}

void __30__AVTUILogger_settingUpStore___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)exportingRecords:(id)records
{
  recordsCopy = records;
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
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_exportingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)importingRecords:(id)records
{
  recordsCopy = records;
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
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_importingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)performingMigrationXPCActivity:(id)activity
{
  activityCopy = activity;
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
  v10 = activityCopy;
  v11 = v6;
  v7 = v6;
  v8 = activityCopy;
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
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Finished running migration XPC activity!", v3, 2u);
  }
}

- (void)performingUserRequestedBackupActivity:(id)activity
{
  activityCopy = activity;
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
  v10 = activityCopy;
  v11 = v6;
  v7 = v6;
  v8 = activityCopy;
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
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Finished running User Requested Backup XPC activity!", v3, 2u);
  }
}

- (void)logSyncEnabled
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Sync is ENABLED", v3, 2u);
  }
}

- (void)logImportRequestResult:(BOOL)result error:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  v8 = backendLog;
  if (result)
  {
    if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Import Request SUCCEEDED", v9, 2u);
    }
  }

  else if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logImportRequestResult:error:];
  }
}

- (void)logExportRequestResult:(BOOL)result error:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  v8 = backendLog;
  if (result)
  {
    if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Export Request SUCCEEDED", v9, 2u);
    }
  }

  else if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logExportRequestResult:error:];
  }
}

- (void)logMirroringRequestErrorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logMirroringRequestErrorWithCode:description:];
  }
}

- (void)migratingPersistedContent:(id)content
{
  contentCopy = content;
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
  v10 = contentCopy;
  v11 = v6;
  v7 = v6;
  v8 = contentCopy;
  os_activity_apply(v5, block);
}

void __41__AVTUILogger_migratingPersistedContent___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logMigratingSource:(id)source
{
  v9 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sourceCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Migrating source %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorUpdatingRecordsForMigration:(id)migration
{
  migrationCopy = migration;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorUpdatingRecordsForMigration:];
  }
}

- (void)logFoundExistingRecordDuringMigration:(id)migration
{
  v9 = *MEMORY[0x277D85DE8];
  migrationCopy = migration;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = migrationCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Found existing record during migration with identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorDeletingMigratedContent:(id)content
{
  contentCopy = content;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingMigratedContent:];
  }
}

- (void)logFoundExistingRecordDuringMigration
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Found an existing record with same identifier during migration!", v3, 2u);
  }
}

- (void)logErrorAddingPersistentStore:(id)store
{
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorAddingPersistentStore:];
  }
}

- (void)logErrorStartingServer:(id)server
{
  serverCopy = server;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorStartingServer:];
  }
}

- (void)logErrorSettingUpStore:(id)store
{
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSettingUpStore:];
  }
}

- (void)logPushConnectionReceivedPublicToken:(id)token
{
  v9 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = tokenCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received public token %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logPushConnectionReceivedToken:(id)token topic:(id)topic identifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = tokenCopy;
    v15 = 2112;
    v16 = topicCopy;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received per-topic push token %@ for topic %@ identifier %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logPushNotificationReceivedForTopic:(id)topic payload:(id)payload
{
  v14 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  payloadCopy = payload;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = topicCopy;
    v12 = 2112;
    v13 = payloadCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received Push Notification for topic: %@, payload: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logUnableToCreatePushConnection:(id)connection
{
  connectionCopy = connection;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logUnableToCreatePushConnection:];
  }
}

- (void)processingRemoteChangeNotification:(id)notification
{
  notificationCopy = notification;
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
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_processingRemoteChangeNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logStartObservingRemoteChangeNotificationFrom:(id)from
{
  v9 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = fromCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Start observing NSPersistentStoreRemoteChangeNotification from %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedRemoteChange:(id)change
{
  v9 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received NSPersistentStoreRemoteChangeNotification: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDispatchingRemoteChangeWithTransactionCount:(unint64_t)count handlersCount:(unint64_t)handlersCount
{
  v12 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    countCopy = count;
    v10 = 2048;
    handlersCountCopy = handlersCount;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Dispatching NSPersistentStoreRemoteChangeNotification with %lu transactions; %lu handlers listening", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logErrorFetchingChangeHistory:(id)history
{
  historyCopy = history;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingChangeHistory:];
  }
}

- (void)logNotificationDoesntContainChangeHistoryToken
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "notification.userInfo doesn't contain a value for NSPersistentHistoryTokenKey", v3, 2u);
  }
}

- (void)logChangesRequireExport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Changes require export!", v3, 2u);
  }
}

- (void)logChangesRequireThumbnailUpdate
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Changes require thumbnail update!", v3, 2u);
  }
}

- (void)logErrorPinningContextToCurrentQueryGenerationToken:(id)token
{
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorPinningContextToCurrentQueryGenerationToken:];
  }
}

- (void)logInspectingChangesForExportAfterToken:(id)token
{
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInspectingChangesForExportAfterToken:];
  }
}

- (void)logUnableToReadRemoteRecord:(id)record isCritical:(BOOL)critical
{
  criticalCopy = critical;
  recordCopy = record;
  backendLog = [(AVTUILogger *)self backendLog];
  v8 = backendLog;
  if (criticalCopy)
  {
    if (os_log_type_enabled(backendLog, OS_LOG_TYPE_FAULT))
    {
      [AVTUILogger logUnableToReadRemoteRecord:isCritical:];
    }
  }

  else if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logUnableToReadRemoteRecord:isCritical:];
  }
}

- (void)savingChangeTrackerToken:(id)token
{
  tokenCopy = token;
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
  v10 = tokenCopy;
  v11 = v6;
  v7 = v6;
  v8 = tokenCopy;
  os_activity_apply(v5, block);
}

void __40__AVTUILogger_savingChangeTrackerToken___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logCurrentHistoryTokenFileDoesntExist:(id)exist
{
  v9 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = existCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Current history token file doesn't exist at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorReadingCurrentHistoryToken:(id)token
{
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorReadingCurrentHistoryToken:];
  }
}

- (void)logTrackerProcessingChanges:(id)changes count:(unint64_t)count from:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  fromCopy = from;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = fromCopy;
    v14 = 2048;
    countCopy = count;
    v16 = 2112;
    v17 = changesCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Author %@ is processing %lu changes: %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logTransactionHasChangesButNoToken
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorSavingChangeToken:(id)token location:(id)location
{
  tokenCopy = token;
  locationCopy = location;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logErrorSavingChangeToken:location:];
  }
}

- (void)logFoundRecordIdentifier:(id)identifier changeType:(int64_t)type managedObjectID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = identifierCopy;
    v14 = 2048;
    typeCopy = type;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Found record identifier %@ for change type %ld, managedObjectID %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logCouldntFindRecordIdentifierForChangeType:(int64_t)type managedObjectID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    typeCopy = type;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Did NOT find record identifier for change type %ld, managedObjectID %@ - could be processing ancient history.", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deletingStickerRecentsForRemoteChanges:(id)changes
{
  changesCopy = changes;
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
  v10 = changesCopy;
  v11 = v6;
  v7 = v6;
  v8 = changesCopy;
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
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Deleting sticker recents for sync", v3, 2u);
  }
}

- (void)updatingThumbnailsForRemoteChanges:(id)changes
{
  changesCopy = changes;
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
  v10 = changesCopy;
  v11 = v6;
  v7 = v6;
  v8 = changesCopy;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:(id)thumbnails
{
  thumbnailsCopy = thumbnails;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorProcessingChangeTransactionsToUpdateThumbnails:];
  }
}

- (void)logCheckingIfMigrationNeeded
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Checking if migration needed…", v3, 2u);
  }
}

- (void)logUpdatingThumbnails
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Updating thumbnails if needed", v3, 2u);
  }
}

- (void)logSchedulingImport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Scheduling import of records", v3, 2u);
  }
}

- (void)logSchedulingUpdateThumbnails
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Scheduling thumbnail update", v3, 2u);
  }
}

- (void)logWillResetZone
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "WILL RESET CLOUDKIT ZONE!", v3, 2u);
  }
}

- (void)logDidResetZoneWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = successCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Did reset CloudKit zone with success %d, error %@", v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logTearingDownCoreDataStack:(id)stack
{
  v9 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = stackCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Will tear down CoreData stack for path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorTearingDownCoreDataStack:(id)stack
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorTearingDownCoreDataStack:];
  }
}

- (void)logErrorRemovingStoreFolder:(id)folder
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorRemovingStoreFolder:];
  }
}

- (void)postingAvatarStoreChangeNotification:(id)notification
{
  notificationCopy = notification;
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
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logPostingChangeNotificationForIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [identifiersCopy count];
    v7 = [identifiersCopy componentsJoinedByString:{@", "}];
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Posting change notification for %lu record id(s) %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logNotImportingOnLaunchWithRemainingTime:(double)time
{
  v13 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = time % 3600;
    v7 = 134218496;
    v8 = (time / 3600.0);
    v9 = 2048;
    v10 = ((((34953 * v5) >> 16) >> 5) + (((v5 + ((-30583 * v5) >> 16)) & 0x8000) >> 15));
    v11 = 2048;
    v12 = (v5 - 60 * ((((34953 * v5) >> 16) >> 5) + (((v5 + ((-30583 * v5) >> 16)) & 0x8000) >> 15)));
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Not importing on launch, still remains %02luh %02lum %02lus", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorSettingUserDirSuffixForSandbox:(int)sandbox
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSettingUserDirSuffixForSandbox:];
  }
}

- (void)logGenericSandboxError:(id)error error:(int)a4
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logGenericSandboxError:error:];
  }
}

- (void)logErrorSandboxInit:(char *)init
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
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

- (void)processingWillResetSyncNotification:(id)notification
{
  notificationCopy = notification;
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
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __51__AVTUILogger_processingWillResetSyncNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)processingDidResetSyncNotification:(id)notification
{
  notificationCopy = notification;
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
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_processingDidResetSyncNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)copyingStorageAside:(id)aside
{
  asideCopy = aside;
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
  v10 = asideCopy;
  v11 = v6;
  v7 = v6;
  v8 = asideCopy;
  os_activity_apply(v5, block);
}

void __35__AVTUILogger_copyingStorageAside___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)restoringStorage:(id)storage
{
  storageCopy = storage;
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
  v10 = storageCopy;
  v11 = v6;
  v7 = v6;
  v8 = storageCopy;
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
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Starting to observe NSCloudKitMirroringDelegateWillResetSyncNotificationName / NSCloudKitMirroringDelegateDidResetSyncNotificationName…", v3, 2u);
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

- (void)logPersistentChangeNotOfInterest:(id)interest
{
  v9 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = interestCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Got a change that didn't seem interesting: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logResetSyncReason:(unint64_t)reason
{
  v8 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Reset Sync reason: %lu", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logErrorCopyingStorageAside:(id)aside
{
  asideCopy = aside;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorCopyingStorageAside:];
  }
}

- (void)logErrorMergingCopiedAsideContent:(id)content
{
  contentCopy = content;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMergingCopiedAsideContent:];
  }
}

- (void)logSetupSchedulingMigrationCheck
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - will check if migration is needed", v3, 2u);
  }
}

- (void)logSetupSchedulingImport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - scheduling import", v3, 2u);
  }
}

- (void)logSetupSchedulingExport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - scheduling export", v3, 2u);
  }
}

- (void)logCoalesceableEventOccured:(id)occured
{
  v9 = *MEMORY[0x277D85DE8];
  occuredCopy = occured;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = occuredCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Coalescable event occured: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingChangedRecordsContentForIdentifiers:(id)identifiers error:(id)error
{
  identifiersCopy = identifiers;
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingChangedRecordsContentForIdentifiers:error:];
  }
}

- (void)logTooManyAvatars:(unint64_t)avatars limit:(unint64_t)limit
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logTooManyAvatars:limit:];
  }
}

- (void)checkingAccountInfo:(id)info
{
  infoCopy = info;
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
  v10 = infoCopy;
  v11 = v6;
  v7 = v6;
  v8 = infoCopy;
  os_activity_apply(v5, block);
}

void __35__AVTUILogger_checkingAccountInfo___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logAccountInfo:(id)info status:(int64_t)status deviceToDeviceEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = encryptionCopy;
    v12 = 2048;
    statusCopy = status;
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Got account info! HSA2: %d, status: %ld, description: %@", v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logErrorGettingAccountInfo:(id)info
{
  infoCopy = info;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingAccountInfo:];
  }
}

- (void)logErrorMigratingBackupInclusionStatus:(id)status
{
  statusCopy = status;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMigratingBackupInclusionStatus:];
  }
}

- (void)logErrorUpdatingBackupInclusionStatus:(id)status
{
  statusCopy = status;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorUpdatingBackupInclusionStatus:];
  }
}

- (void)logUpdatingBackupExclusionStatus:(BOOL)status
{
  statusCopy = status;
  backendLog = [(AVTUILogger *)self backendLog];
  v5 = os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT);
  if (statusCopy)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Will NOT include database in backup.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
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
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_INFO, "Accepting incoming connection on side channel", v3, 2u);
  }
}

- (void)logAvatarsDaemonClientChecksIn:(int)in
{
  v7 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = in;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "CheckIn from client with pid %d", v6, 8u);
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
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Connection to avatarsd invalidated", v3, 2u);
  }
}

- (void)logErrorGettingAvatarsDaemonClientProxy:(id)proxy
{
  proxyCopy = proxy;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
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

- (void)checkingIn:(id)in
{
  inCopy = in;
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
  v10 = inCopy;
  v11 = v6;
  v7 = v6;
  v8 = inCopy;
  os_activity_apply(v5, block);
}

void __26__AVTUILogger_checkingIn___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)runningMaintenance:(id)maintenance
{
  maintenanceCopy = maintenance;
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
  v10 = maintenanceCopy;
  v11 = v6;
  v7 = v6;
  v8 = maintenanceCopy;
  os_activity_apply(v5, block);
}

void __34__AVTUILogger_runningMaintenance___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logErrorMitigatingDuplicates:(id)duplicates
{
  duplicatesCopy = duplicates;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMitigatingDuplicates:];
  }
}

- (void)logMaintenanceCompleted
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Store maintenance completed!", v3, 2u);
  }
}

- (void)logDiscoveredDuplicates:(id)duplicates count:(unint64_t)count
{
  v13 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    countCopy = count;
    v11 = 2112;
    v12 = duplicatesCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Discovered %lu group(s) of duplicates: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logDeduplicateRecordWithIdentifier:(id)identifier toNewRecordWithIdentifier:(id)withIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = identifierCopy;
    v12 = 2112;
    v13 = withIdentifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Fixing duplicate with identifier %@ to have identifier %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logStickerGeneratorPoolDidntHaveAvailableGenerator:(int64_t)generator maxCount:(int64_t)count
{
  v12 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    generatorCopy = generator;
    v10 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Sticker Generator Pool has to steal a generator in Use, %ld in use, %ld max", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logPaddleViewVideoPlayerFailed:(id)failed
{
  v9 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = failedCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "PaddleView Video Player failed with error %@; restarting videos", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingStickerStart:(id)start forRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  startCopy = start;
  recordCopy = record;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = startCopy;
    v13 = 2112;
    v14 = recordCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering sticker %@ for record %@", &v11, 0x16u);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RenderSticker", &unk_241967295, &v11, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logRenderingStickerEnd:(id)end
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RenderSticker", &unk_241967295, v4, 2u);
  }
}

- (void)logStickerViewSnapshotForBounds:(id)bounds offset:(CGPoint)offset
{
  y = offset.y;
  v13 = *MEMORY[0x277D85DE8];
  boundsCopy = bounds;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = boundsCopy;
    v11 = 2048;
    v12 = y;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "StickerViewController preparing for snapshot for bounds %@ offset %f", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logStickerSchedulerAddedTask:(id)task taskCount:(int64_t)count
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerAddedTask:taskCount:];
  }
}

- (void)logStickerSchedulerStartedTask:(id)task forSchedulerRule:(id)rule
{
  taskCopy = task;
  ruleCopy = rule;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerStartedTask:forSchedulerRule:];
  }
}

- (void)logStickerSchedulerCancelledTask:(id)task
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerCancelledTask:];
  }
}

- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
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

- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:(id)path
{
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
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

- (void)logAnalysisServiceCheckingIn:(id)in
{
  inCopy = in;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
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

- (void)logAnalysisServiceDidNotProcessState:(id)state
{
  stateCopy = state;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAnalysisServiceDidNotProcessState:];
  }
}

- (void)logCarouselChangingToSingleMode
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel changing to single avatar mode", v3, 2u);
  }
}

- (void)logCarouselChangingToMultiMode
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel changing to multi avatar mode", v3, 2u);
  }
}

- (void)logCarouselChangesCenterItemTo:(id)to
{
  v9 = *MEMORY[0x277D85DE8];
  toCopy = to;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = toCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel changes center item to:%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselTransitionCenterItem:(id)item withCell:(id)cell
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cellCopy = cell;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = itemCopy;
    v12 = 2112;
    v13 = cellCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel transtioning center item:%@, center cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselStopsFocusingOnCenterItem:(id)item withCell:(id)cell
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cellCopy = cell;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = itemCopy;
    v12 = 2112;
    v13 = cellCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel stops focusing on center item:%@, center cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logSingleModeControllerStartUsingLiveView:(id)view
{
  v9 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Single mode controller STARTS using liveView: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logSingleModeControllerStopUsingLiveView:(id)view
{
  v9 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Single mode controller STOPS using liveView: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselCellStartUsingLiveView:(id)view associatedTransition:(id)transition
{
  v14 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = transitionCopy;
    v12 = 2112;
    v13 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] Carousel Cell STARTS using liveView, cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselCellStopUsingLiveView:(id)view associatedTransition:(id)transition
{
  v14 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = transitionCopy;
    v12 = 2112;
    v13 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] Carousel Cell STOPS using liveView, cell:%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselAddsTransitionToCoordinator:(id)coordinator
{
  v9 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = coordinatorCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Carousel adds transition to coordinator", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logStartTransition:(id)transition state:(int64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = transitionCopy;
    v11 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> starts, state: %ld", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logSetupHandlerCompletedForTransition:(id)transition state:(int64_t)state finished:(BOOL)finished
{
  finishedCopy = finished;
  v18 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    v12 = 138412802;
    v13 = transitionCopy;
    if (finishedCopy)
    {
      v10 = @"YES";
    }

    v14 = 2048;
    stateCopy = state;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Setup done, state: %ld, finished %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logPerformTransition:(id)transition
{
  v9 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = transitionCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Perform", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCancelTransition:(id)transition
{
  v9 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = transitionCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> CANCEL!", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logTransition:(id)transition state:(unint64_t)state reachedStage:(unint64_t)stage
{
  v17 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v11 = 138412802;
    v12 = transitionCopy;
    v13 = 2048;
    stageCopy = stage;
    v15 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> reached stage %lu, state: %lu", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logToLivePoseTransitionBegins:(id)begins
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ToLive", &unk_241967295, v4, 2u);
  }
}

- (void)logToLivePoseTransitionEnds:(id)ends
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ToLive", &unk_241967295, v4, 2u);
  }
}

- (void)logAVTViewSetAvatar:(id)avatar
{
  v10 = *MEMORY[0x277D85DE8];
  avatarCopy = avatar;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = avatarCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTView] Set avatar: %@", &v8, 0xCu);
  }

  interactionLog2 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logAVTViewDidRenderAvatar:(id)avatar currentAvatar:(id)currentAvatar
{
  v18 = *MEMORY[0x277D85DE8];
  avatarCopy = avatar;
  currentAvatarCopy = currentAvatar;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = [avatarCopy isEqual:currentAvatarCopy];
    v10 = @"NO";
    v12 = 138412802;
    v13 = avatarCopy;
    v14 = 2112;
    if (v9)
    {
      v10 = @"YES";
    }

    v15 = currentAvatarCopy;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTView] Did render avatar: %@, current avatar %@, match %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logAVTViewDidRenderCurrentAvatar:(id)avatar
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, v4, 2u);
  }
}

- (void)logAVTViewCancelingRenderingAvatar:(id)avatar
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, v4, 2u);
  }
}

- (void)logCarouselErrorGettingFrameForElementAtIndex:(unint64_t)index
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logCarouselErrorGettingFrameForElementAtIndex:];
  }
}

- (void)logCarouselDelegateDidFocusRecord:(id)record
{
  recordCopy = record;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateDidFocusRecord:];
  }
}

- (void)logCarouselDelegateWillEndFocusRecord:(id)record
{
  recordCopy = record;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateWillEndFocusRecord:];
  }
}

- (void)logCarouselDelegateNearnessFactorDidChange:(double)change towardRecord:(BOOL)record editable:(BOOL)editable
{
  editableCopy = editable;
  recordCopy = record;
  v16 = *MEMORY[0x277D85DE8];
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218496;
    changeCopy = change;
    v12 = 1024;
    v13 = recordCopy;
    v14 = 1024;
    v15 = editableCopy;
    _os_log_debug_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_DEBUG, "[Delegate] Did Move (%2.2lf) Toward record %d, editable %d", &v10, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logCarouselDelegateDidUpdateRecord:(id)record
{
  recordCopy = record;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateDidUpdateRecord:];
  }
}

- (void)logCarouselEndsDraggingWithVelocity:(double)velocity willSwitchIndexPathInsteadOfScrollBack:(BOOL)back forHighVelocity:(BOOL)highVelocity
{
  highVelocityCopy = highVelocity;
  backCopy = back;
  v16 = *MEMORY[0x277D85DE8];
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = 134218496;
    velocityCopy = velocity;
    v12 = 1024;
    v13 = backCopy;
    v14 = 1024;
    v15 = highVelocityCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel ends dragging with velocity:%2.2lf, switch instead of scroll back: %d, switch for high velocity: %d", &v10, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserHasNoMemojiData
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_INFO, "Setup User has no Memoji data to import", v3, 2u);
  }
}

- (void)logSetupUserImportFailedToUnarchiveDataAtPath:(id)path errorDescription:(id)description
{
  pathCopy = path;
  descriptionCopy = description;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportFailedToUnarchiveDataAtPath:errorDescription:];
  }
}

- (void)logSetupUserImportAttempting:(int64_t)attempting
{
  v8 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    attemptingCopy = attempting;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_INFO, "Setup User import attempting to save %ld records", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logSetupUserImportSaveError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportSaveError:];
  }
}

- (void)logSetupUserDataImportCheck
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - checking for Setup User data to import", v3, 2u);
  }
}

- (void)logSetupUserImportFailedToRemoveFileWithError:(id)error
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportFailedToRemoveFileWithError:];
  }
}

- (void)logRequestedAnimojiSticker:(id)sticker
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logRequestedAnimojiSticker:];
  }
}

- (void)logImageRenderServiceConnectionError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logImageRenderServiceConnectionError:];
  }
}

- (void)logGeneratingImageInServiceForRecord:(id)record
{
  v9 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = recordCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Generating image and writing to cache in service for record: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreDoneInServiceForPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = pathCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Image saved to cache by MemojiImageRenderService at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logImageStoreFailedInServiceForPath:(id)path error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = pathCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Image save failed in MemojiImageRenderService at path %@, with error: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logRetrievingSnapshotInServiceForPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = pathCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Retrieving snapshot in service from cache at path %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logTimedOutWaitingForSnapshotInService:(id)service
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = 0x4024000000000000;
    v9 = 2112;
    v10 = serviceCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Semaphore timed out at %f seconds waiting for snapshot to generate sticker %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logFailedToGenerateStickerInService:(id)service
{
  v9 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = serviceCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Failed to generate sticker in service %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logIncrementingRemoteRendererTransactionCount:(int64_t)count
{
  v8 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Incrementing remote renderer transaction count to  %li", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logDecrementingRemoteRendererTransactionCount:(int64_t)count
{
  v8 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Decrementing remote renderer transaction count to  %li", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logCancellingCleanupBlock
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Cancelling cleanup block in remote render service", v3, 2u);
  }
}

- (void)logCleanupTimerComplete
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Cleanup timer completed, clean exiting remote render service", v3, 2u);
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