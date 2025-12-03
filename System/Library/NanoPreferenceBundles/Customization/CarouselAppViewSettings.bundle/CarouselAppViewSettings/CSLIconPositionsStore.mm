@interface CSLIconPositionsStore
- (CSLIconPositionsStore)init;
- (CSLIconPostionsStoreDelegate)delegate;
- (id)_loadLocalPositionsUsingKey:(id)key;
- (id)_loadPositionsFromObject:(id)object usingKey:(id)key;
- (id)_loadPositionsUsingKey:(id)key;
- (id)archivalPositionsObjectForGraph:(id)graph;
- (id)defaultOrderingForConfiguration:(int64_t)configuration;
- (id)loadDefaultPositionsForConfiguration:(int64_t)configuration;
- (id)loadDefaultPositionsVerticalOnly:(BOOL)only;
- (id)loadDefaultVerticalOnlyPositions;
- (id)loadLegacyDefaultPositions;
- (id)orderedBundleIdentifiers;
- (int64_t)deviceConfiguration;
- (void)_saveLocalPositions:(id)positions usingKey:(id)key;
- (void)_savePositions:(id)positions usingKey:(id)key;
- (void)actionsOnInitialSyncComplete;
- (void)archivePositionsToDiagnostics:(id)diagnostics;
- (void)dealloc;
- (void)initialSyncComplete;
- (void)moveIconsToTopWithBundleIdentifiers:(id)identifiers;
- (void)positionsChanged;
- (void)resetIconPositionsToConfiguration:(int64_t)configuration;
- (void)saveTargetPositions:(id)positions;
- (void)setDelegate:(id)delegate;
@end

@implementation CSLIconPositionsStore

- (CSLIconPositionsStore)init
{
  v9.receiver = self;
  v9.super_class = CSLIconPositionsStore;
  v2 = [(CSLIconPositionsStore *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPSManager);
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_AC3C, @"CSLIconPositionsChangedNotification", 0, 0);
    v2->_initialSyncComplete = 0;
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_AC44, kNPSInitialSyncCompletionDarwinNotification, 0, 0);
    v7 = NPSHasCompletedInitialSync();
    v2->_initialSyncComplete = v7;
    if (v7)
    {
      [(CSLIconPositionsStore *)v2 actionsOnInitialSyncComplete];
    }
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (self->_initialSyncComplete)
    {
      [(CSLIconPositionsStore *)self actionsOnInitialSyncComplete];
    }
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kNPSInitialSyncCompletionDarwinNotification, 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"CSLIconPositionsChangedNotification", 0);
  v5.receiver = self;
  v5.super_class = CSLIconPositionsStore;
  [(CSLIconPositionsStore *)&v5 dealloc];
}

- (void)initialSyncComplete
{
  if (!self->_initialSyncComplete)
  {
    self->_initialSyncComplete = 1;
    [(CSLIconPositionsStore *)self actionsOnInitialSyncComplete];
  }
}

- (void)actionsOnInitialSyncComplete
{
  delegate = [(CSLIconPositionsStore *)self delegate];
  [delegate store:self initialSyncComplete:1];
}

- (id)loadDefaultPositionsVerticalOnly:(BOOL)only
{
  if (only)
  {
    [(CSLIconPositionsStore *)self loadDefaultVerticalOnlyPositions];
  }

  else
  {
    [(CSLIconPositionsStore *)self loadLegacyDefaultPositions];
  }
  v3 = ;

  return v3;
}

- (id)defaultOrderingForConfiguration:(int64_t)configuration
{
  if (configuration > 3)
  {
    if (configuration > 5)
    {
      if (configuration != 6)
      {
        if (configuration != 7)
        {
          if (configuration != 8)
          {
            goto LABEL_23;
          }

          v6[0] = kNanoPhoneBundleIdentifier;
          v6[1] = kMailBundleIdentifier;
          v6[2] = kMessagesAppBundleIdentifier;
          v6[3] = kMindBundleIdentifier;
          v6[4] = kActivityAppBundleIdentifier;
          v6[5] = kSessionTrackerAppBundleIdentifier;
          v6[6] = kSettingsBundleIdentifier;
          v6[7] = kNanoTimerBundleIdentifier;
          v6[8] = kCalendarBundleIdentifier;
          v6[9] = kNanoStopwatchBundleIdentifier;
          v6[10] = kWorldClockBundleIdentifier;
          v6[11] = kMapsAppBundleIdentifier;
          v6[12] = kWeatherBundleIdentifier;
          v6[13] = kNanoAlarmBundleIdentifier;
          v6[14] = kTidesBundleIdentifier;
          v6[15] = kDepthBundleIdentifier;
          v6[16] = kCompassBundleIdentifier;
          v6[17] = kPodcastsBundleIdentifier;
          v6[18] = kMusicBundleIdentifier;
          v6[19] = kNanoPhotosBundleIdentifier;
          v6[20] = kHeartAppBundleIdentifier;
          v6[21] = kVoiceMemosIdentifier;
          v6[22] = kCalculatorBundleIdentifier;
          v6[23] = kNoiseBundleIdentifier;
          v6[24] = kMandrakeBundleIdentifier;
          v6[25] = kRemindersBundleIdentifier;
          v6[26] = kTranslateBundleIdentifier;
          v6[27] = kNotesBundleIdentifier;
          v6[28] = kFindMyItemsBundleIdentifier;
          v6[29] = kFindMyDevicesBundleIdentifier;
          v6[30] = kFindMyPeopleBundleIdentifier;
          v6[31] = kContactsBundleIdentifier;
          v6[32] = kAppStoreBundleIdentifier;
          v6[33] = kPassbookBundleIdentifier;
          v6[34] = kMemojiEditorBundleIdentifier;
          v6[35] = kTinCanBundleIdentifier;
          v6[36] = kNowPlayingAppBundleIdentifer;
          v6[37] = kNanoMusicRecognitionBundleIdentifier;
          v6[38] = kTipsBundleIdentifier;
          v6[39] = kStocksBundleIdentifier;
          v3 = v6;
          v4 = 40;
          goto LABEL_22;
        }

        v7[0] = kNanoPhoneBundleIdentifier;
        v7[1] = kMailBundleIdentifier;
        v7[2] = kMessagesAppBundleIdentifier;
        v7[3] = kMindBundleIdentifier;
        v7[4] = kActivityAppBundleIdentifier;
        v7[5] = kSessionTrackerAppBundleIdentifier;
        v7[6] = kSettingsBundleIdentifier;
        v7[7] = kNanoTimerBundleIdentifier;
        v7[8] = kCalendarBundleIdentifier;
        v7[9] = kNanoStopwatchBundleIdentifier;
        v7[10] = kWorldClockBundleIdentifier;
        v7[11] = kMapsAppBundleIdentifier;
        v7[12] = kWeatherBundleIdentifier;
        v7[13] = kNanoAlarmBundleIdentifier;
        v7[14] = kTidesBundleIdentifier;
        v7[15] = kDepthBundleIdentifier;
        v7[16] = kCompassBundleIdentifier;
        v7[17] = kAudiobooksBundleIdentifier;
        v7[18] = kMusicBundleIdentifier;
        v7[19] = kHeartRhythmBundleIdentifier;
        v7[20] = kHeartAppBundleIdentifier;
        v7[21] = kPodcastsBundleIdentifier;
        v7[22] = kSleepBundleIdentifier;
        v7[23] = kVitalsBundleIdentifier;
        v7[24] = kNanoPhotosBundleIdentifier;
        v7[25] = kAppStoreBundleIdentifier;
        v7[26] = kNoiseBundleIdentifier;
        v7[27] = kMedicationsBundleIdentifier;
        v7[28] = kRemindersBundleIdentifier;
        v7[29] = kTranslateBundleIdentifier;
        v7[30] = kNotesBundleIdentifier;
        v7[31] = kNewsBundleIdentifier;
        v7[32] = kHomeBundleIdentifier;
        v7[33] = kMandrakeBundleIdentifier;
        v7[34] = kMenstrualCyclesBundleIdentifier;
        v7[35] = kFindMyItemsBundleIdentifier;
        v7[36] = kFindMyDevicesBundleIdentifier;
        v7[37] = kFindMyPeopleBundleIdentifier;
        v7[38] = kPassbookBundleIdentifier;
        v7[39] = kStocksBundleIdentifier;
        v7[40] = kCalculatorBundleIdentifier;
        v7[41] = kCameraBundleIdentifier;
        v7[42] = kTipsBundleIdentifier;
        v7[43] = kContactsBundleIdentifier;
        v7[44] = kShortcutsBundleIdentifier;
        v7[45] = kNowPlayingAppBundleIdentifer;
        v7[46] = kNanoMusicRecognitionBundleIdentifier;
        v7[47] = kVoiceMemosIdentifier;
        v7[48] = kTinCanBundleIdentifier;
        v7[49] = kRemoteBundleIdentifier;
        v7[50] = kMemojiEditorBundleIdentifier;
        v3 = v7;
        goto LABEL_21;
      }

      v8[0] = kNanoPhoneBundleIdentifier;
      v8[1] = kMailBundleIdentifier;
      v8[2] = kMessagesAppBundleIdentifier;
      v8[3] = kMindBundleIdentifier;
      v8[4] = kActivityAppBundleIdentifier;
      v8[5] = kSessionTrackerAppBundleIdentifier;
      v8[6] = kSettingsBundleIdentifier;
      v8[7] = kNanoTimerBundleIdentifier;
      v8[8] = kCalendarBundleIdentifier;
      v8[9] = kNanoStopwatchBundleIdentifier;
      v8[10] = kWorldClockBundleIdentifier;
      v8[11] = kMapsAppBundleIdentifier;
      v8[12] = kWeatherBundleIdentifier;
      v8[13] = kNanoAlarmBundleIdentifier;
      v8[14] = kTidesBundleIdentifier;
      v8[15] = kDepthBundleIdentifier;
      v8[16] = kCompassBundleIdentifier;
      v8[17] = kAudiobooksBundleIdentifier;
      v8[18] = kMusicBundleIdentifier;
      v8[19] = kHeartRhythmBundleIdentifier;
      v8[20] = kHeartAppBundleIdentifier;
      v8[21] = kPodcastsBundleIdentifier;
      v8[22] = kSleepBundleIdentifier;
      v8[23] = kVitalsBundleIdentifier;
      v8[24] = kNanoPhotosBundleIdentifier;
      v8[25] = kOxygenSaturationBundleIdentifier;
      v8[26] = kNoiseBundleIdentifier;
      v8[27] = kMedicationsBundleIdentifier;
      v8[28] = kRemindersBundleIdentifier;
      v8[29] = kTranslateBundleIdentifier;
      v8[30] = kNotesBundleIdentifier;
      v8[31] = kNewsBundleIdentifier;
      v8[32] = kHomeBundleIdentifier;
      v8[33] = kMandrakeBundleIdentifier;
      v8[34] = kMenstrualCyclesBundleIdentifier;
      v8[35] = kFindMyItemsBundleIdentifier;
      v8[36] = kFindMyDevicesBundleIdentifier;
      v8[37] = kFindMyPeopleBundleIdentifier;
      v8[38] = kAppStoreBundleIdentifier;
      v8[39] = kPassbookBundleIdentifier;
      v8[40] = kStocksBundleIdentifier;
      v8[41] = kCalculatorBundleIdentifier;
      v8[42] = kCameraBundleIdentifier;
      v8[43] = kTipsBundleIdentifier;
      v8[44] = kContactsBundleIdentifier;
      v8[45] = kShortcutsBundleIdentifier;
      v8[46] = kNowPlayingAppBundleIdentifer;
      v8[47] = kNanoMusicRecognitionBundleIdentifier;
      v8[48] = kVoiceMemosIdentifier;
      v8[49] = kTinCanBundleIdentifier;
      v8[50] = kRemoteBundleIdentifier;
      v8[51] = kMemojiEditorBundleIdentifier;
      v3 = v8;
      v4 = 52;
      goto LABEL_22;
    }

    if (configuration != 4)
    {
      v9[0] = kNanoPhoneBundleIdentifier;
      v9[1] = kMailBundleIdentifier;
      v9[2] = kMessagesAppBundleIdentifier;
      v9[3] = kMindBundleIdentifier;
      v9[4] = kActivityAppBundleIdentifier;
      v9[5] = kSessionTrackerAppBundleIdentifier;
      v9[6] = kSettingsBundleIdentifier;
      v9[7] = kNanoTimerBundleIdentifier;
      v9[8] = kCalendarBundleIdentifier;
      v9[9] = kNanoStopwatchBundleIdentifier;
      v9[10] = kWorldClockBundleIdentifier;
      v9[11] = kMapsAppBundleIdentifier;
      v9[12] = kWeatherBundleIdentifier;
      v9[13] = kNanoAlarmBundleIdentifier;
      v9[14] = kCompassBundleIdentifier;
      v9[15] = kNanoPhotosBundleIdentifier;
      v9[16] = kHeartAppBundleIdentifier;
      v9[17] = kPodcastsBundleIdentifier;
      v9[18] = kMusicBundleIdentifier;
      v9[19] = kContactsBundleIdentifier;
      v9[20] = kNoiseBundleIdentifier;
      v9[21] = kVoiceMemosIdentifier;
      v9[22] = kCalculatorBundleIdentifier;
      v9[23] = kPassbookBundleIdentifier;
      v9[24] = kTinCanBundleIdentifier;
      v9[25] = kRemindersBundleIdentifier;
      v9[26] = kTranslateBundleIdentifier;
      v9[27] = kNotesBundleIdentifier;
      v9[28] = kFindMyItemsBundleIdentifier;
      v9[29] = kFindMyDevicesBundleIdentifier;
      v9[30] = kFindMyPeopleBundleIdentifier;
      v9[31] = kAppStoreBundleIdentifier;
      v9[32] = kMemojiEditorBundleIdentifier;
      v9[33] = kTidesBundleIdentifier;
      v9[34] = kDepthBundleIdentifier;
      v9[35] = kStocksBundleIdentifier;
      v9[36] = kNowPlayingAppBundleIdentifer;
      v9[37] = kNanoMusicRecognitionBundleIdentifier;
      v9[38] = kTipsBundleIdentifier;
      v3 = v9;
      v4 = 39;
      goto LABEL_22;
    }

    v10[0] = kNanoPhoneBundleIdentifier;
    v10[1] = kMailBundleIdentifier;
    v10[2] = kMessagesAppBundleIdentifier;
    v10[3] = kMindBundleIdentifier;
    v10[4] = kActivityAppBundleIdentifier;
    v10[5] = kSessionTrackerAppBundleIdentifier;
    v10[6] = kSettingsBundleIdentifier;
    v10[7] = kNanoTimerBundleIdentifier;
    v10[8] = kCalendarBundleIdentifier;
    v10[9] = kNanoStopwatchBundleIdentifier;
    v10[10] = kWorldClockBundleIdentifier;
    v10[11] = kMapsAppBundleIdentifier;
    v10[12] = kWeatherBundleIdentifier;
    v10[13] = kNanoAlarmBundleIdentifier;
    v10[14] = kCompassBundleIdentifier;
    v10[15] = kNanoPhotosBundleIdentifier;
    v10[16] = kSleepBundleIdentifier;
    v10[17] = kAudiobooksBundleIdentifier;
    v10[18] = kMusicBundleIdentifier;
    v10[19] = kHeartRhythmBundleIdentifier;
    v10[20] = kHeartAppBundleIdentifier;
    v10[21] = kPodcastsBundleIdentifier;
    v10[22] = kMedicationsBundleIdentifier;
    v10[23] = kVitalsBundleIdentifier;
    v10[24] = kStocksBundleIdentifier;
    v10[25] = kAppStoreBundleIdentifier;
    v10[26] = kNoiseBundleIdentifier;
    v10[27] = kMenstrualCyclesBundleIdentifier;
    v10[28] = kRemindersBundleIdentifier;
    v10[29] = kTranslateBundleIdentifier;
    v10[30] = kNotesBundleIdentifier;
    v10[31] = kNewsBundleIdentifier;
    v10[32] = kDepthBundleIdentifier;
    v10[33] = kTidesBundleIdentifier;
    v10[34] = kCalculatorBundleIdentifier;
    v10[35] = kFindMyItemsBundleIdentifier;
    v10[36] = kFindMyDevicesBundleIdentifier;
    v10[37] = kFindMyPeopleBundleIdentifier;
    v10[38] = kHomeBundleIdentifier;
    v10[39] = kContactsBundleIdentifier;
    v10[40] = kPassbookBundleIdentifier;
    v10[41] = kCameraBundleIdentifier;
    v10[42] = kTipsBundleIdentifier;
    v10[43] = kTinCanBundleIdentifier;
    v10[44] = kShortcutsBundleIdentifier;
    v10[45] = kNowPlayingAppBundleIdentifer;
    v10[46] = kNanoMusicRecognitionBundleIdentifier;
    v10[47] = kVoiceMemosIdentifier;
    v10[48] = kRemoteBundleIdentifier;
    v10[49] = kMemojiEditorBundleIdentifier;
    v3 = v10;
LABEL_19:
    v4 = 50;
    goto LABEL_22;
  }

  if (configuration <= 1)
  {
    if (configuration)
    {
      if (configuration != 1)
      {
        goto LABEL_23;
      }

      v13[0] = kNanoPhoneBundleIdentifier;
      v13[1] = kMailBundleIdentifier;
      v13[2] = kMessagesAppBundleIdentifier;
      v13[3] = kMindBundleIdentifier;
      v13[4] = kActivityAppBundleIdentifier;
      v13[5] = kSessionTrackerAppBundleIdentifier;
      v13[6] = kSettingsBundleIdentifier;
      v13[7] = kNanoTimerBundleIdentifier;
      v13[8] = kCalendarBundleIdentifier;
      v13[9] = kNanoStopwatchBundleIdentifier;
      v13[10] = kWorldClockBundleIdentifier;
      v13[11] = kMapsAppBundleIdentifier;
      v13[12] = kWeatherBundleIdentifier;
      v13[13] = kNanoAlarmBundleIdentifier;
      v13[14] = kCompassBundleIdentifier;
      v13[15] = kNanoPhotosBundleIdentifier;
      v13[16] = kSleepBundleIdentifier;
      v13[17] = kAudiobooksBundleIdentifier;
      v13[18] = kMusicBundleIdentifier;
      v13[19] = kHeartRhythmBundleIdentifier;
      v13[20] = kHeartAppBundleIdentifier;
      v13[21] = kPodcastsBundleIdentifier;
      v13[22] = kMedicationsBundleIdentifier;
      v13[23] = kVitalsBundleIdentifier;
      v13[24] = kStocksBundleIdentifier;
      v13[25] = kAppStoreBundleIdentifier;
      v13[26] = kNoiseBundleIdentifier;
      v13[27] = kMenstrualCyclesBundleIdentifier;
      v13[28] = kRemindersBundleIdentifier;
      v13[29] = kTranslateBundleIdentifier;
      v13[30] = kNotesBundleIdentifier;
      v13[31] = kNewsBundleIdentifier;
      v13[32] = kHomeBundleIdentifier;
      v13[33] = kTidesBundleIdentifier;
      v13[34] = kCalculatorBundleIdentifier;
      v13[35] = kFindMyItemsBundleIdentifier;
      v13[36] = kFindMyDevicesBundleIdentifier;
      v13[37] = kFindMyPeopleBundleIdentifier;
      v13[38] = kContactsBundleIdentifier;
      v13[39] = kPassbookBundleIdentifier;
      v13[40] = kCameraBundleIdentifier;
      v13[41] = kTipsBundleIdentifier;
      v13[42] = kTinCanBundleIdentifier;
      v13[43] = kShortcutsBundleIdentifier;
      v13[44] = kNowPlayingAppBundleIdentifer;
      v13[45] = kNanoMusicRecognitionBundleIdentifier;
      v13[46] = kVoiceMemosIdentifier;
      v13[47] = kRemoteBundleIdentifier;
      v13[48] = kMemojiEditorBundleIdentifier;
      v3 = v13;
      v4 = 49;
      goto LABEL_22;
    }

    v14[0] = kNanoPhoneBundleIdentifier;
    v14[1] = kMailBundleIdentifier;
    v14[2] = kMessagesAppBundleIdentifier;
    v14[3] = kMindBundleIdentifier;
    v14[4] = kActivityAppBundleIdentifier;
    v14[5] = kSessionTrackerAppBundleIdentifier;
    v14[6] = kSettingsBundleIdentifier;
    v14[7] = kNanoTimerBundleIdentifier;
    v14[8] = kCalendarBundleIdentifier;
    v14[9] = kNanoStopwatchBundleIdentifier;
    v14[10] = kWorldClockBundleIdentifier;
    v14[11] = kMapsAppBundleIdentifier;
    v14[12] = kWeatherBundleIdentifier;
    v14[13] = kNanoAlarmBundleIdentifier;
    v14[14] = kCompassBundleIdentifier;
    v14[15] = kNanoPhotosBundleIdentifier;
    v14[16] = kSleepBundleIdentifier;
    v14[17] = kAudiobooksBundleIdentifier;
    v14[18] = kMusicBundleIdentifier;
    v14[19] = kHeartRhythmBundleIdentifier;
    v14[20] = kHeartAppBundleIdentifier;
    v14[21] = kPodcastsBundleIdentifier;
    v14[22] = kMedicationsBundleIdentifier;
    v14[23] = kVitalsBundleIdentifier;
    v14[24] = kStocksBundleIdentifier;
    v14[25] = kOxygenSaturationBundleIdentifier;
    v14[26] = kNoiseBundleIdentifier;
    v14[27] = kMenstrualCyclesBundleIdentifier;
    v14[28] = kRemindersBundleIdentifier;
    v14[29] = kTranslateBundleIdentifier;
    v14[30] = kNotesBundleIdentifier;
    v14[31] = kNewsBundleIdentifier;
    v14[32] = kAppStoreBundleIdentifier;
    v14[33] = kTidesBundleIdentifier;
    v14[34] = kCalculatorBundleIdentifier;
    v14[35] = kFindMyItemsBundleIdentifier;
    v14[36] = kFindMyDevicesBundleIdentifier;
    v14[37] = kFindMyPeopleBundleIdentifier;
    v14[38] = kHomeBundleIdentifier;
    v14[39] = kContactsBundleIdentifier;
    v14[40] = kPassbookBundleIdentifier;
    v14[41] = kCameraBundleIdentifier;
    v14[42] = kTipsBundleIdentifier;
    v14[43] = kTinCanBundleIdentifier;
    v14[44] = kShortcutsBundleIdentifier;
    v14[45] = kNowPlayingAppBundleIdentifer;
    v14[46] = kNanoMusicRecognitionBundleIdentifier;
    v14[47] = kVoiceMemosIdentifier;
    v14[48] = kRemoteBundleIdentifier;
    v14[49] = kMemojiEditorBundleIdentifier;
    v3 = v14;
    goto LABEL_19;
  }

  if (configuration != 2)
  {
    v11[0] = kNanoPhoneBundleIdentifier;
    v11[1] = kMailBundleIdentifier;
    v11[2] = kMessagesAppBundleIdentifier;
    v11[3] = kMindBundleIdentifier;
    v11[4] = kActivityAppBundleIdentifier;
    v11[5] = kSessionTrackerAppBundleIdentifier;
    v11[6] = kSettingsBundleIdentifier;
    v11[7] = kNanoTimerBundleIdentifier;
    v11[8] = kCalendarBundleIdentifier;
    v11[9] = kNanoStopwatchBundleIdentifier;
    v11[10] = kWorldClockBundleIdentifier;
    v11[11] = kMapsAppBundleIdentifier;
    v11[12] = kWeatherBundleIdentifier;
    v11[13] = kNanoAlarmBundleIdentifier;
    v11[14] = kCompassBundleIdentifier;
    v11[15] = kNanoPhotosBundleIdentifier;
    v11[16] = kSleepBundleIdentifier;
    v11[17] = kAudiobooksBundleIdentifier;
    v11[18] = kMusicBundleIdentifier;
    v11[19] = kHeartRhythmBundleIdentifier;
    v11[20] = kHeartAppBundleIdentifier;
    v11[21] = kPodcastsBundleIdentifier;
    v11[22] = kMedicationsBundleIdentifier;
    v11[23] = kVitalsBundleIdentifier;
    v11[24] = kStocksBundleIdentifier;
    v11[25] = kOxygenSaturationBundleIdentifier;
    v11[26] = kNoiseBundleIdentifier;
    v11[27] = kMenstrualCyclesBundleIdentifier;
    v11[28] = kRemindersBundleIdentifier;
    v11[29] = kTranslateBundleIdentifier;
    v11[30] = kNotesBundleIdentifier;
    v11[31] = kNewsBundleIdentifier;
    v11[32] = kDepthBundleIdentifier;
    v11[33] = kTidesBundleIdentifier;
    v11[34] = kCalculatorBundleIdentifier;
    v11[35] = kFindMyItemsBundleIdentifier;
    v11[36] = kFindMyDevicesBundleIdentifier;
    v11[37] = kFindMyPeopleBundleIdentifier;
    v11[38] = kAppStoreBundleIdentifier;
    v11[39] = kHomeBundleIdentifier;
    v11[40] = kContactsBundleIdentifier;
    v11[41] = kPassbookBundleIdentifier;
    v11[42] = kCameraBundleIdentifier;
    v11[43] = kTipsBundleIdentifier;
    v11[44] = kTinCanBundleIdentifier;
    v11[45] = kShortcutsBundleIdentifier;
    v11[46] = kNowPlayingAppBundleIdentifer;
    v11[47] = kNanoMusicRecognitionBundleIdentifier;
    v11[48] = kVoiceMemosIdentifier;
    v11[49] = kRemoteBundleIdentifier;
    v11[50] = kMemojiEditorBundleIdentifier;
    v3 = v11;
LABEL_21:
    v4 = 51;
    goto LABEL_22;
  }

  v12[0] = kNanoPhoneBundleIdentifier;
  v12[1] = kMailBundleIdentifier;
  v12[2] = kMessagesAppBundleIdentifier;
  v12[3] = kMindBundleIdentifier;
  v12[4] = kActivityAppBundleIdentifier;
  v12[5] = kSessionTrackerAppBundleIdentifier;
  v12[6] = kSettingsBundleIdentifier;
  v12[7] = kNanoTimerBundleIdentifier;
  v12[8] = kCalendarBundleIdentifier;
  v12[9] = kNanoStopwatchBundleIdentifier;
  v12[10] = kWorldClockBundleIdentifier;
  v12[11] = kMapsAppBundleIdentifier;
  v12[12] = kWeatherBundleIdentifier;
  v12[13] = kNanoAlarmBundleIdentifier;
  v12[14] = kCompassBundleIdentifier;
  v12[15] = kNanoPhotosBundleIdentifier;
  v12[16] = kHeartAppBundleIdentifier;
  v12[17] = kPodcastsBundleIdentifier;
  v12[18] = kMusicBundleIdentifier;
  v12[19] = kContactsBundleIdentifier;
  v12[20] = kNoiseBundleIdentifier;
  v12[21] = kVoiceMemosIdentifier;
  v12[22] = kCalculatorBundleIdentifier;
  v12[23] = kPassbookBundleIdentifier;
  v12[24] = kTinCanBundleIdentifier;
  v12[25] = kRemindersBundleIdentifier;
  v12[26] = kTranslateBundleIdentifier;
  v12[27] = kNotesBundleIdentifier;
  v12[28] = kFindMyItemsBundleIdentifier;
  v12[29] = kFindMyDevicesBundleIdentifier;
  v12[30] = kFindMyPeopleBundleIdentifier;
  v12[31] = kAppStoreBundleIdentifier;
  v12[32] = kMemojiEditorBundleIdentifier;
  v12[33] = kTidesBundleIdentifier;
  v12[34] = kNanoMusicRecognitionBundleIdentifier;
  v12[35] = kStocksBundleIdentifier;
  v12[36] = kNowPlayingAppBundleIdentifer;
  v12[37] = kTipsBundleIdentifier;
  v3 = v12;
  v4 = 38;
LABEL_22:
  self = [NSArray arrayWithObjects:v3 count:v4];
LABEL_23:

  return self;
}

- (int64_t)deviceConfiguration
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getDevicesExcluding:5];
  firstObject = [v3 firstObject];

  v5 = [firstObject supportsCapability:3847477697];
  IsTinker = CSLPairingIsTinker();
  v7 = [firstObject supportsCapability:3174712129];
  if (([firstObject supportsCapability:3847477697] & 1) != 0 || objc_msgSend(firstObject, "supportsCapability:", 2878292065))
  {
    if ((v5 & 1) == 0)
    {
      v8 = 4;
      if (IsTinker)
      {
        v8 = 5;
      }

      v9 = v7 == 0;
      v10 = 3;
LABEL_11:
      if (v9)
      {
        v11 = v8;
      }

      else
      {
        v11 = v10;
      }

      goto LABEL_14;
    }

LABEL_8:
    v8 = 7;
    if (IsTinker)
    {
      v8 = 8;
    }

    v9 = v7 == 0;
    v10 = 6;
    goto LABEL_11;
  }

  if (v5)
  {
    goto LABEL_8;
  }

  v13 = 1;
  if (IsTinker)
  {
    v13 = 2;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v13;
  }

LABEL_14:

  return v11;
}

- (id)loadDefaultVerticalOnlyPositions
{
  deviceConfiguration = [(CSLIconPositionsStore *)self deviceConfiguration];

  return [(CSLIconPositionsStore *)self loadDefaultPositionsForConfiguration:deviceConfiguration];
}

- (id)loadDefaultPositionsForConfiguration:(int64_t)configuration
{
  v3 = [(CSLIconPositionsStore *)self defaultOrderingForConfiguration:configuration];
  v4 = [[CSLHexAppGraph alloc] initVerticalOnly:1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 addNodeWithBundleIdentifier:{*(*(&v11 + 1) + 8 * i), v11}];
        [v9 setDirectPlacementReason:1];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v4 setLastReorderReason:1];

  return v4;
}

- (id)loadLegacyDefaultPositions
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getDevicesExcluding:5];
  firstObject = [v3 firstObject];

  LODWORD(v2) = [firstObject supportsCapability:3847477697];
  isAltAccount = [firstObject isAltAccount];
  if (v2)
  {
    v6 = @"DefaultIconPositions-N199";
    v7 = @"DefaultIconPositions-Tinker-N199";
  }

  else if (isAltAccount)
  {
    isAltAccount = [firstObject supportsCapability:2876656872];
    v6 = @"DefaultIconPositions-TinkerNoCompass";
    v7 = @"DefaultIconPositions-Tinker";
  }

  else
  {
    if ([firstObject supportsCapability:3174712129])
    {
      v8 = @"DefaultIconPositions-OxygenSaturation";
      goto LABEL_8;
    }

    if ([firstObject supportsCapability:2876656872])
    {
      v8 = @"DefaultIconPositions-Compass";
      goto LABEL_8;
    }

    isAltAccount = [firstObject supportsCapability:1756047751];
    v6 = @"DefaultIconPositions";
    v7 = @"DefaultIconPositions-EKG";
  }

  if (isAltAccount)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

LABEL_8:
  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Carousel.internal"];
  v10 = [v9 valueForKey:@"overrideDefaultIconPositionsFilename"];

  if (v10)
  {
    v11 = cslprf_icon_field_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = v10;
      v29 = 2112;
      v30 = @"plist";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = @"plist";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "override set, using '%@.%@' instead of '%@.%@'", buf, 0x2Au);
    }

    v8 = v10;
  }

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 URLForResource:v8 withExtension:@"plist"];

  if (!v13)
  {
    v15 = cslprf_icon_field_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23948();
    }

    goto LABEL_26;
  }

  v26 = 0;
  v14 = [NSData dataWithContentsOfURL:v13 options:2 error:&v26];
  v15 = v26;
  if (!v14)
  {
    v21 = cslprf_icon_field_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_238E0();
    }

LABEL_26:
LABEL_27:
    v18 = [[CSLHexAppGraph alloc] initVerticalOnly:0];
    [v18 setLastReorderReason:6];
    v22 = [v18 addNodeWithBundleIdentifier:kClockBundleIdentifier];
    goto LABEL_36;
  }

  v25 = 0;
  v16 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v25];
  v17 = v25;

  if (!v16)
  {
    v23 = cslprf_icon_field_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_23878();
    }

    goto LABEL_34;
  }

  v18 = [CSLHexAppGraph unarchiveFromPropertyList:v16];
  if (!v18)
  {
    v23 = cslprf_icon_field_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_23834(v23);
    }

LABEL_34:

    v18 = 0;
    goto LABEL_35;
  }

  v19 = cslprf_icon_field_log();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (os_log_type_enabled(v19, (has_internal_diagnostics ^ 1)))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_0, v19, (has_internal_diagnostics ^ 1), "successfully loaded default icon plist (%@)", buf, 0xCu);
  }

  [v18 setLastReorderReason:1];
LABEL_35:

  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_36:

  return v18;
}

- (void)saveTargetPositions:(id)positions
{
  positionsCopy = positions;
  v5 = cslprf_icon_field_log();
  if (os_variant_has_internal_diagnostics())
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v6))
  {
    v7 = "saving";
    if (!positionsCopy)
    {
      v7 = "clearing";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&dword_0, v5, v6, "%s target icon positions", &v8, 0xCu);
  }

  [(CSLIconPositionsStore *)self _saveLocalPositions:positionsCopy usingKey:@"TargetIconPositions"];
}

- (void)resetIconPositionsToConfiguration:(int64_t)configuration
{
  v5 = [(CSLIconPositionsStore *)self loadDefaultPositionsForConfiguration:configuration];
  [(CSLIconPositionsStore *)self saveTargetPositions:0];
  [(CSLIconPositionsStore *)self savePositions:v5];
  delegate = [(CSLIconPositionsStore *)self delegate];
  [delegate store:self updatedIconGraph:v5];
}

- (void)moveIconsToTopWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  loadPositions = [(CSLIconPositionsStore *)self loadPositions];
  v5 = [NSOrderedSet orderedSetWithArray:identifiersCopy];
  array = [v5 array];

  [loadPositions moveNodesToTopWithBundleIdentifiers:array forReason:2];
  [(CSLIconPositionsStore *)self saveTargetPositions:0];
  [(CSLIconPositionsStore *)self savePositions:loadPositions];
  delegate = [(CSLIconPositionsStore *)self delegate];
  [delegate store:self updatedIconGraph:loadPositions];
}

- (id)orderedBundleIdentifiers
{
  loadPositions = [(CSLIconPositionsStore *)self loadPositions];
  allNodes = [loadPositions allNodes];
  v4 = [allNodes sortedArrayUsingComparator:&stru_3CB00];
  v5 = [v4 bs_map:&stru_3CB40];

  return v5;
}

- (id)_loadPositionsUsingKey:(id)key
{
  keyCopy = key;
  v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
  synchronize = [v5 synchronize];
  v7 = [(CSLIconPositionsStore *)self _loadPositionsFromObject:v5 usingKey:keyCopy];

  return v7;
}

- (id)_loadLocalPositionsUsingKey:(id)key
{
  keyCopy = key;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [(CSLIconPositionsStore *)self _loadPositionsFromObject:v5 usingKey:keyCopy];

  return v6;
}

- (id)_loadPositionsFromObject:(id)object usingKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [objectCopy dictionaryForKey:keyCopy];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [CSLHexAppGraph unarchiveFromDictionaryRepresentation:v7];
  if (!v8)
  {
    v10 = cslprf_icon_field_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_239D0();
    }

LABEL_8:
    v9 = [objectCopy dataForKey:keyCopy];
    if (v9)
    {
      v15 = 0;
      v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v15];
      v11 = v15;
      if (!v8)
      {
        v12 = cslprf_icon_field_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_23A44();
        }

        v8 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v8 = 0;
      v11 = 0;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v12 = cslprf_icon_field_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        abbreviatedDescription = [v8 abbreviatedDescription];
        *buf = 138412546;
        v17 = keyCopy;
        v18 = 2114;
        v19 = abbreviatedDescription;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Successfully loaded local icon position data (%@): %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v12 = cslprf_icon_field_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = keyCopy;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Successfully loaded local icon position data (%@)", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v9 = cslprf_icon_field_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = keyCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Successfully loaded icon positions from dictionary with key:(%@)", buf, 0xCu);
  }

LABEL_20:

  return v8;
}

- (void)_savePositions:(id)positions usingKey:(id)key
{
  keyCopy = key;
  v6 = [(CSLIconPositionsStore *)self archivalPositionsObjectForGraph:positions];
  v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKey:keyCopy];
  }

  else
  {
    [v7 removeObjectForKey:keyCopy];
  }

  synchronize = [v8 synchronize];
  v10 = [NSSet setWithObject:keyCopy];
  [(NPSManager *)self->_syncManager synchronizeNanoDomain:@"com.apple.Carousel" keys:v10];
}

- (void)_saveLocalPositions:(id)positions usingKey:(id)key
{
  keyCopy = key;
  v6 = [(CSLIconPositionsStore *)self archivalPositionsObjectForGraph:positions];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKey:keyCopy];
  }

  else
  {
    [v7 removeObjectForKey:keyCopy];
  }
}

- (id)archivalPositionsObjectForGraph:(id)graph
{
  graphCopy = graph;
  v4 = graphCopy;
  if (graphCopy)
  {
    if ([graphCopy hasDictionaryRepresentation])
    {
      [v4 archiveToDictionaryRepresentation];
    }

    else
    {
      [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)positionsChanged
{
  loadPositions = [(CSLIconPositionsStore *)self loadPositions];
  v4 = cslprf_icon_field_log();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (os_log_type_enabled(v4, (has_internal_diagnostics ^ 1)))
  {
    abbreviatedDescription = [loadPositions abbreviatedDescription];
    v8 = 138543362;
    v9 = abbreviatedDescription;
    _os_log_impl(&dword_0, v4, (has_internal_diagnostics ^ 1), "icon positions changed: %{public}@", &v8, 0xCu);
  }

  delegate = [(CSLIconPositionsStore *)self delegate];
  [delegate store:self updatedIconGraph:loadPositions];
}

- (void)archivePositionsToDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  if (os_variant_has_internal_diagnostics())
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Carousel.internal"];
    v5 = [v4 BOOLForKey:@"shouldArchiveIconPositions"];

    if (v5)
    {
      archiveToPropertyList = [diagnosticsCopy archiveToPropertyList];
      if (archiveToPropertyList)
      {
        v30 = 0;
        v7 = [NSPropertyListSerialization dataWithPropertyList:archiveToPropertyList format:100 options:0 error:&v30];
        v8 = v30;
        if (v7)
        {
          v9 = CSLDiagnosticFileURLWithFilename(@"DefaultIconPositions.plist");
          path = [v9 path];
          v11 = +[NSFileManager defaultManager];
          if ([v11 fileExistsAtPath:path])
          {
            v29 = v8;
            v12 = [v11 attributesOfItemAtPath:path error:&v29];
            v13 = v29;

            if (v13)
            {
              v14 = cslprf_icon_field_log();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                sub_23AB8();
              }
            }

            else
            {
              v14 = [v12 objectForKey:NSFileModificationDate];
              [v14 timeIntervalSinceNow];
              if (v16 >= -30.0)
              {
                v13 = 0;
              }

              else
              {
                v17 = +[CSLDateLabelStringFormatCache sharedInstance];
                v27 = [v17 formatDateAsLongYMDHMSNoSpacesWithDate:v14];

                v25 = [NSString stringWithFormat:@"DefaultIconPositions-%@.plist", v27];
                CSLDiagnosticFileURLWithFilename(v25);
                v26 = v28[1] = 0;
                v18 = [v11 moveItemAtURL:v9 toURL:? error:?];
                v13 = 0;
                if (v18)
                {
                  v19 = cslprf_icon_field_log();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    path2 = [v26 path];
                    *buf = 138412290;
                    v32 = path2;
                    v24 = path2;
                    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "renamed old icon positions to: %@", buf, 0xCu);
                  }
                }

                else
                {
                  v19 = cslprf_icon_field_log();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    sub_23B20();
                  }
                }
              }
            }

            v8 = v13;
          }

          v28[0] = v8;
          v21 = [v7 writeToURL:v9 options:1 error:v28];
          v15 = v28[0];

          if (v21)
          {
            v22 = cslprf_icon_field_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              path3 = [v9 path];
              *buf = 138412290;
              v32 = path3;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "wrote icon poitions to file:%@", buf, 0xCu);
            }
          }

          else
          {
            v22 = cslprf_icon_field_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_23B88();
            }
          }
        }

        else
        {
          v9 = cslprf_icon_field_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_23B88();
          }

          v15 = v8;
        }
      }
    }
  }
}

- (CSLIconPostionsStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end