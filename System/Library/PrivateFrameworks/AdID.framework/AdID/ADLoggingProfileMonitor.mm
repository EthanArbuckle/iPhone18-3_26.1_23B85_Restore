@interface ADLoggingProfileMonitor
- (ADLoggingProfileMonitor)init;
- (BOOL)_hasRelevantProfileChanged:(id)changed;
- (OS_dispatch_queue)initQueue;
- (id)fetchInstalledProfileIdentifiers;
- (void)_beginMonitoring;
- (void)_fetchInstalledProfilesAndListen;
- (void)_profilesChanged:(id)changed;
@end

@implementation ADLoggingProfileMonitor

- (ADLoggingProfileMonitor)init
{
  v5.receiver = self;
  v5.super_class = ADLoggingProfileMonitor;
  v2 = [(ADLoggingProfileMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADLoggingProfileMonitor *)v2 _fetchInstalledProfilesAndListen];
  }

  return v3;
}

- (void)_fetchInstalledProfilesAndListen
{
  v3 = dispatch_queue_create("com.apple.ap.adprivacyd.ADLoggingProfileMonitor.init", 0);
  initQueue = self->_initQueue;
  self->_initQueue = v3;

  objc_initWeak(&location, self);
  v5 = self->_initQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ADLoggingProfileMonitor__fetchInstalledProfilesAndListen__block_invoke;
  v6[3] = &unk_278C587F0;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __59__ADLoggingProfileMonitor__fetchInstalledProfilesAndListen__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = -1;
    v2 = ADCopyDataFromKeychain();
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error %d reading installed profile data", 0xFFFFFFFFLL];
    _ADLog();

    if (!WeakRetained[1])
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reading installed profile list from MDM"];
      _ADLog();

      v5 = [WeakRetained fetchInstalledProfileIdentifiers];
      [WeakRetained setProfileIdentifiers:v5];
    }

    [WeakRetained _profilesChanged:0];
    [WeakRetained _beginMonitoring];
    [WeakRetained setInitQueue:0];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"self == nil in [ADLoggingProfileMonitor _fetchInstalledProfilesAndListen]. Profile changes will not be monitored."];
    _ADLog();
  }
}

- (void)_profilesChanged:(id)changed
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received profile list changed notification"];
  _ADLog();

  fetchInstalledProfileIdentifiers = [(ADLoggingProfileMonitor *)self fetchInstalledProfileIdentifiers];
  v6 = [(ADLoggingProfileMonitor *)self _hasRelevantProfileChanged:fetchInstalledProfileIdentifiers];
  objc_storeStrong(&self->_profileIdentifiers, fetchInstalledProfileIdentifiers);
  profileIdentifiers = self->_profileIdentifiers;
  v13 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:profileIdentifiers requiringSecureCoding:1 error:&v13];
  v9 = v13;
  ADWriteDataToKeychain();

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error writing installed profiles to keychain: %@", v9];
    _ADLog();
  }

  if (v6)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ad Platforms logging profile has been removed or Personalized Ads profiles was installed/removed."];
    _ADLog();

    mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
    [mEMORY[0x277CE9658] performOperationWhenNotReconciling:&__block_literal_global_6];
  }
}

void __44__ADLoggingProfileMonitor__profilesChanged___block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rolling all identifiers in response to profile removal/install."];
  _ADLog();

  v1 = [MEMORY[0x277CE9658] sharedInstance];
  [v1 deleteRecords:&__block_literal_global_41];
}

void __44__ADLoggingProfileMonitor__profilesChanged___block_invoke_2()
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v0 = [MEMORY[0x277CE9638] sharedInstance];
  v1 = [v0 iTunesAccountDSID];
  [v2 setDSID:v1 completionHandler:&__block_literal_global_44];
}

void __44__ADLoggingProfileMonitor__profilesChanged___block_invoke_3()
{
  v0 = [MEMORY[0x277CE9658] sharedInstance];
  [v0 reconcile:&__block_literal_global_47];
}

void __44__ADLoggingProfileMonitor__profilesChanged___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was an error reconciling after profile change. Error: %@. Please file a radar.", a2];
    _ADLog();
  }
}

- (BOOL)_hasRelevantProfileChanged:(id)changed
{
  v4 = MEMORY[0x277CCACA8];
  profileIdentifiers = self->_profileIdentifiers;
  changedCopy = changed;
  profileIdentifiers = [v4 stringWithFormat:@"Existing profile list\n%@", profileIdentifiers];
  v8 = 1;
  _ADLog();

  v9 = [(NSSet *)self->_profileIdentifiers mutableCopy];
  [v9 minusSet:changedCopy];
  v10 = [changedCopy mutableCopy];
  [v10 minusSet:v9];
  changedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Installed profiles:\n%@", changedCopy];

  _ADLog();
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removed profiles:\n%@", v9];
  _ADLog();

  if (([v9 containsObject:@"com.apple.adplatforms.logging"] & 1) == 0 && (objc_msgSend(v9, "containsObject:", @"com.apple.dms.restrictions.allowApplePersonalizedAdvertising") & 1) == 0)
  {
    v8 = [v10 containsObject:@"com.apple.dms.restrictions.allowApplePersonalizedAdvertising"];
  }

  return v8;
}

- (id)fetchInstalledProfileIdentifiers
{
  v2 = MEMORY[0x277CBEB58];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedProfileIdentifiers = [mEMORY[0x277D262A0] installedProfileIdentifiers];
  v5 = [v2 setWithArray:installedProfileIdentifiers];

  return v5;
}

- (void)_beginMonitoring
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D26148];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [defaultCenter addObserver:self selector:sel__profilesChanged_ name:v3 object:mEMORY[0x277D262A0]];
}

- (OS_dispatch_queue)initQueue
{
  initQueue = self->_initQueue;

  return initQueue;
}

@end