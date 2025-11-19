@interface HealthDigitalSeparationSource
- (HealthDigitalSeparationSource)init;
- (void)_stopSharingToEntries:(id)a3 completion:(id)a4;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation HealthDigitalSeparationSource

- (HealthDigitalSeparationSource)init
{
  v7.receiver = self;
  v7.super_class = HealthDigitalSeparationSource;
  v2 = [(HealthDigitalSeparationSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKHealthStore);
    v4 = [[HKSummarySharingEntryStore alloc] initWithHealthStore:v3];
    sharingEntryStore = v2->_sharingEntryStore;
    v2->_sharingEntryStore = v4;
  }

  return v2;
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
  sharingEntryStore = self->_sharingEntryStore;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DE8;
  v7[3] = &unk_41A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKSummarySharingEntryStore *)sharingEntryStore fetchSharingEntriesWithCompletion:v7];
}

- (void)stopSharing:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 digitalEntries];
    v8 = [v7 hk_map:&stru_41E0];

    [(HealthDigitalSeparationSource *)self _stopSharingToEntries:v8 completion:v6];
  }

  else
  {
    v8 = [NSError hk_error:2000 format:@"Unable to cast SharedResource."];
    v6[2](v6, v8);
  }
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 sharingEntry];
    v11 = v8;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [(HealthDigitalSeparationSource *)self _stopSharingToEntries:v9 completion:v7];
  }

  else
  {
    v10 = [NSError hk_error:2000 format:@"Unable to cast DSParticipation."];
    (*(v7 + 2))(v7, v10);
  }
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  sharingEntryStore = self->_sharingEntryStore;
  v5 = a3;
  v6 = [(HKSummarySharingEntryStore *)sharingEntryStore sharingEntries];
  v7 = [(HealthDigitalSeparationSource *)self _outgoingSharingEntriesFromEntries:v6];

  [(HealthDigitalSeparationSource *)self _stopSharingToEntries:v7 completion:v5];
}

- (void)_stopSharingToEntries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v16 = a4;
  v7 = dispatch_group_create();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_1550;
  v28[4] = sub_1560;
  v29 = 0;
  dispatch_group_enter(v7);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        dispatch_group_enter(v7);
        sharingEntryStore = self->_sharingEntryStore;
        v13 = [v11 UUID];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1568;
        v21[3] = &unk_4208;
        v23 = v28;
        v22 = v7;
        [(HKSummarySharingEntryStore *)sharingEntryStore revokeInvitationWithUUID:v13 completion:v21];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  dispatch_group_leave(v7);
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15E0;
  block[3] = &unk_4230;
  v19 = v16;
  v20 = v28;
  v15 = v16;
  dispatch_group_notify(v7, v14, block);

  _Block_object_dispose(v28, 8);
}

@end