@interface DictationOfflineStatusObserver
- (DictationOfflineStatusObserver)initWithDelegate:(id)a3;
- (DictationOfflineStatusObserverDelegate)delegate;
- (void)dealloc;
- (void)updateOfflineDictationStatus;
@end

@implementation DictationOfflineStatusObserver

- (DictationOfflineStatusObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DictationOfflineStatusObserver;
  v5 = [(DictationOfflineStatusObserver *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(DictationOfflineStatusObserver *)v5 setDelegate:v4];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = IsTrialAssetDeliveryEnabled();
    v9 = &kTrialSiriAssistantAssetNamespaceUpdate;
    if (!v8)
    {
      v9 = &kAssetTypeEmbeddedSpeechModelNewAssetInstalled;
    }

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_40CC, *v9, 0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_40D4;
    block[3] = &unk_48F40;
    v12 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v6;
}

- (void)updateOfflineDictationStatus
{
  v3 = +[AFPreferences sharedPreferences];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_416C;
  v4[3] = &unk_48F90;
  v4[4] = self;
  [v3 getOfflineDictationStatusWithCompletion:v4];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = IsTrialAssetDeliveryEnabled();
  v5 = &kTrialSiriAssistantAssetNamespaceUpdate;
  if (!v4)
  {
    v5 = &kAssetTypeEmbeddedSpeechModelNewAssetInstalled;
  }

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *v5, 0);
  v6.receiver = self;
  v6.super_class = DictationOfflineStatusObserver;
  [(DictationOfflineStatusObserver *)&v6 dealloc];
}

- (DictationOfflineStatusObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end