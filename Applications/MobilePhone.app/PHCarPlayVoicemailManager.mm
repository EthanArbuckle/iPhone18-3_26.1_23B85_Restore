@interface PHCarPlayVoicemailManager
+ (id)sharedVoicemailManager;
- ($1FF454C5B48E436092D281DABF654916)badge;
- (BOOL)isVisualVoicemailAvailable;
- (PHCarPlayVoicemailManager)init;
- (id)badgeString;
- (id)localizedSubtitleForMessage:(id)a3;
- (id)trashedVoicemails;
- (id)voicemails;
- (void)_phoneApplicationAddressBookChangedNotification:(id)a3;
- (void)dealloc;
- (void)onlineStateChangedNotification:(id)a3;
- (void)subscribedStateChangedNotification:(id)a3;
- (void)voicemailWithID:(id)a3 completion:(id)a4;
- (void)voicemailsChangedNotification:(id)a3;
@end

@implementation PHCarPlayVoicemailManager

+ (id)sharedVoicemailManager
{
  if (sharedVoicemailManager_onceToken != -1)
  {
    +[PHCarPlayVoicemailManager sharedVoicemailManager];
  }

  v3 = sharedVoicemailManager;

  return v3;
}

void __51__PHCarPlayVoicemailManager_sharedVoicemailManager__block_invoke(id a1)
{
  sharedVoicemailManager = objc_alloc_init(PHCarPlayVoicemailManager);

  _objc_release_x1();
}

- (BOOL)isVisualVoicemailAvailable
{
  v2 = [(PHCarPlayVoicemailManager *)self accountManager];
  v3 = [v2 isAnyAccountSubscribed];

  return v3;
}

- (PHCarPlayVoicemailManager)init
{
  v20.receiver = self;
  v20.super_class = PHCarPlayVoicemailManager;
  v2 = [(PHCarPlayVoicemailManager *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_badge = PhoneBadgeKnownZero;
    v4 = +[(PHApplicationServices *)MPApplicationServices];
    v5 = [v4 accountManager];
    accountManager = v3->_accountManager;
    v3->_accountManager = v5;

    v7 = +[(PHApplicationServices *)MPApplicationServices];
    v8 = [v7 voicemailController];
    voicemailController = v3->_voicemailController;
    v3->_voicemailController = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"voicemailsChangedNotification:" name:@"MPVoicemailControllerMessagesDidChangeNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_phoneApplicationAddressBookChangedNotification:" name:CNContactStoreDidChangeNotification object:0];

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3042000000;
    v18[3] = __Block_byref_object_copy__6;
    v18[4] = __Block_byref_object_dispose__6;
    objc_initWeak(&v19, v3);
    v12 = +[(PHApplicationServices *)MPApplicationServices];
    v13 = [v12 badgeCalculator];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __33__PHCarPlayVoicemailManager_init__block_invoke;
    v17[3] = &unk_100286BF8;
    v17[4] = v18;
    v14 = [v13 listenWithHandler:v17];
    badgeObservation = v3->_badgeObservation;
    v3->_badgeObservation = v14;

    _Block_object_dispose(v18, 8);
    objc_destroyWeak(&v19);
  }

  return v3;
}

void __33__PHCarPlayVoicemailManager_init__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__PHCarPlayVoicemailManager_init__block_invoke_2;
  block[3] = &unk_100286BD0;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(&_dispatch_main_q, block);
}

void __33__PHCarPlayVoicemailManager_init__block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1[4] + 8) + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setBadge:{a1[5], a1[6]}];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"PHCarPlayVoicemailManagerChangedNotification" object:0];

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayVoicemailManager;
  [(PHCarPlayVoicemailManager *)&v4 dealloc];
}

- (void)voicemailsChangedNotification:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHCarPlayVoicemailManagerChangedNotification" object:0 userInfo:0];
}

- (void)onlineStateChangedNotification:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHCarPlayVoicemailManagerChangedNotification" object:0 userInfo:0];
}

- (void)subscribedStateChangedNotification:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHCarPlayVoicemailManagerChangedNotification" object:0 userInfo:0];
}

- (void)_phoneApplicationAddressBookChangedNotification:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHCarPlayVoicemailManagerChangedNotification" object:0 userInfo:0];
}

- (id)voicemails
{
  v2 = [(PHCarPlayVoicemailManager *)self voicemailController];
  v3 = [v2 audioMessagesPassingTest:&__block_literal_global_106];

  return v3;
}

- (id)trashedVoicemails
{
  v2 = [(PHCarPlayVoicemailManager *)self voicemailController];
  v3 = [v2 audioMessagesPassingTest:&__block_literal_global_108];

  return v3;
}

- (void)voicemailWithID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHCarPlayVoicemailManager *)self voicemailController];
  v9 = [v8 voicemailManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __56__PHCarPlayVoicemailManager_voicemailWithID_completion___block_invoke;
  v11[3] = &unk_100286C60;
  v12 = v6;
  v10 = v6;
  [v9 voicemailWithIdentifier:v7 completion:v11];
}

- (id)badgeString
{
  [(PHCarPlayVoicemailManager *)self badge];

  return PhoneStringForBadgeValue();
}

- (id)localizedSubtitleForMessage:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayVoicemailManager *)self voicemailController];
  v6 = [v5 localizedSubtitleForMessage:v4];

  return v6;
}

- ($1FF454C5B48E436092D281DABF654916)badge
{
  count = self->_badge.count;
  v3 = *&self->_badge.known;
  result.var1 = count;
  result.var0 = v3;
  return result;
}

@end