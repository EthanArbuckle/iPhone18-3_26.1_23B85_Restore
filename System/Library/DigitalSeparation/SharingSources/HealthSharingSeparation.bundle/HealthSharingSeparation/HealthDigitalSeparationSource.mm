@interface HealthDigitalSeparationSource
- (HealthDigitalSeparationSource)init;
- (void)_stopSharingToEntries:(id)entries completion:(id)completion;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
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

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  sharingEntryStore = self->_sharingEntryStore;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DE8;
  v7[3] = &unk_41A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKSummarySharingEntryStore *)sharingEntryStore fetchSharingEntriesWithCompletion:v7];
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  sharingCopy = sharing;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    digitalEntries = [sharingCopy digitalEntries];
    v8 = [digitalEntries hk_map:&stru_41E0];

    [(HealthDigitalSeparationSource *)self _stopSharingToEntries:v8 completion:completionCopy];
  }

  else
  {
    v8 = [NSError hk_error:2000 format:@"Unable to cast SharedResource."];
    completionCopy[2](completionCopy, v8);
  }
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sharingEntry = [participantCopy sharingEntry];
    v11 = sharingEntry;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [(HealthDigitalSeparationSource *)self _stopSharingToEntries:v9 completion:completionCopy];
  }

  else
  {
    v10 = [NSError hk_error:2000 format:@"Unable to cast DSParticipation."];
    (*(completionCopy + 2))(completionCopy, v10);
  }
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  sharingEntryStore = self->_sharingEntryStore;
  completionCopy = completion;
  sharingEntries = [(HKSummarySharingEntryStore *)sharingEntryStore sharingEntries];
  v7 = [(HealthDigitalSeparationSource *)self _outgoingSharingEntriesFromEntries:sharingEntries];

  [(HealthDigitalSeparationSource *)self _stopSharingToEntries:v7 completion:completionCopy];
}

- (void)_stopSharingToEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
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
  obj = entriesCopy;
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
        uUID = [v11 UUID];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1568;
        v21[3] = &unk_4208;
        v23 = v28;
        v22 = v7;
        [(HKSummarySharingEntryStore *)sharingEntryStore revokeInvitationWithUUID:uUID completion:v21];

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
  v19 = completionCopy;
  v20 = v28;
  v15 = completionCopy;
  dispatch_group_notify(v7, v14, block);

  _Block_object_dispose(v28, 8);
}

@end