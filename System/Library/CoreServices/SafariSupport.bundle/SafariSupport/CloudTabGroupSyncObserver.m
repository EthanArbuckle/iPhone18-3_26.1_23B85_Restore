@interface CloudTabGroupSyncObserver
- (CloudTabGroupSyncObserver)initWithProfileProvider:(id)a3;
- (void)syncCoordinator:(id)a3 didFetchRecord:(id)a4 localBookmarkUUID:(id)a5 localBookmarkWasCreated:(BOOL)a6;
@end

@implementation CloudTabGroupSyncObserver

- (CloudTabGroupSyncObserver)initWithProfileProvider:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CloudTabGroupSyncObserver;
  v5 = [(CloudTabGroupSyncObserver *)&v13 init];
  if (v5)
  {
    v6 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v7 = [[WBSProfilePreferenceManager alloc] initWithPerSitePreferencesStore:v6 profileProvider:v4];
    profilePreferenceManager = v5->_profilePreferenceManager;
    v5->_profilePreferenceManager = v7;

    v9 = [[WBSProfileDataManager alloc] initWithProfileProvider:v4];
    profileDataManager = v5->_profileDataManager;
    v5->_profileDataManager = v9;

    v11 = v5;
  }

  return v5;
}

- (void)syncCoordinator:(id)a3 didFetchRecord:(id)a4 localBookmarkUUID:(id)a5 localBookmarkWasCreated:(BOOL)a6
{
  v6 = a6;
  v19 = a4;
  v9 = a5;
  v10 = [v19 recordType];
  v11 = [v10 isEqualToString:@"Profile"];

  if (v11)
  {
    if (v6)
    {
      profileDataManager = self->_profileDataManager;
      v13 = [v19 safari_recordName];
      [(WBSProfileDataManager *)profileDataManager ensureProfileDirectoriesExistForProfileWithServerID:v13 profileIdentifier:v9];
    }

    if ([v19 safari_state] == 1)
    {
      v14 = self->_profilePreferenceManager;
      if (v14)
      {
        v15 = [v19 safari_recordName];
        v16 = [(WBSProfilePreferenceManager *)self->_profilePreferenceManager profileProvider];
        -[WBSProfilePreferenceManager didRemoveProfileWithIdentifier:hasMultipleProfiles:](v14, "didRemoveProfileWithIdentifier:hasMultipleProfiles:", v15, [v16 hasMultipleProfiles]);
      }

      v17 = self->_profileDataManager;
      v18 = [v19 safari_recordName];
      [(WBSProfileDataManager *)v17 didRemoveProfileWithServerID:v18 profileIdentifier:v9];
    }
  }
}

@end