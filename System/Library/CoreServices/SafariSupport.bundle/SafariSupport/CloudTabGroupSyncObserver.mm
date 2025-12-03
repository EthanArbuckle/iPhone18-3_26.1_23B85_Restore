@interface CloudTabGroupSyncObserver
- (CloudTabGroupSyncObserver)initWithProfileProvider:(id)provider;
- (void)syncCoordinator:(id)coordinator didFetchRecord:(id)record localBookmarkUUID:(id)d localBookmarkWasCreated:(BOOL)created;
@end

@implementation CloudTabGroupSyncObserver

- (CloudTabGroupSyncObserver)initWithProfileProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CloudTabGroupSyncObserver;
  v5 = [(CloudTabGroupSyncObserver *)&v13 init];
  if (v5)
  {
    v6 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v7 = [[WBSProfilePreferenceManager alloc] initWithPerSitePreferencesStore:v6 profileProvider:providerCopy];
    profilePreferenceManager = v5->_profilePreferenceManager;
    v5->_profilePreferenceManager = v7;

    v9 = [[WBSProfileDataManager alloc] initWithProfileProvider:providerCopy];
    profileDataManager = v5->_profileDataManager;
    v5->_profileDataManager = v9;

    v11 = v5;
  }

  return v5;
}

- (void)syncCoordinator:(id)coordinator didFetchRecord:(id)record localBookmarkUUID:(id)d localBookmarkWasCreated:(BOOL)created
{
  createdCopy = created;
  recordCopy = record;
  dCopy = d;
  recordType = [recordCopy recordType];
  v11 = [recordType isEqualToString:@"Profile"];

  if (v11)
  {
    if (createdCopy)
    {
      profileDataManager = self->_profileDataManager;
      safari_recordName = [recordCopy safari_recordName];
      [(WBSProfileDataManager *)profileDataManager ensureProfileDirectoriesExistForProfileWithServerID:safari_recordName profileIdentifier:dCopy];
    }

    if ([recordCopy safari_state] == 1)
    {
      v14 = self->_profilePreferenceManager;
      if (v14)
      {
        safari_recordName2 = [recordCopy safari_recordName];
        profileProvider = [(WBSProfilePreferenceManager *)self->_profilePreferenceManager profileProvider];
        -[WBSProfilePreferenceManager didRemoveProfileWithIdentifier:hasMultipleProfiles:](v14, "didRemoveProfileWithIdentifier:hasMultipleProfiles:", safari_recordName2, [profileProvider hasMultipleProfiles]);
      }

      v17 = self->_profileDataManager;
      safari_recordName3 = [recordCopy safari_recordName];
      [(WBSProfileDataManager *)v17 didRemoveProfileWithServerID:safari_recordName3 profileIdentifier:dCopy];
    }
  }
}

@end