@interface ADCloudKitZoneShareCreator
- (ADCloudKitZoneShareCreator)initWithQueue:(id)queue container:(id)container sharedZone:(id)zone;
- (void)_setupZoneSharing:(id)sharing;
- (void)deleteZoneShare:(BOOL)share markForReinvitation:(BOOL)reinvitation completion:(id)completion;
- (void)fetchZoneShare:(id)share;
- (void)saveZoneShare:(id)share completion:(id)completion;
@end

@implementation ADCloudKitZoneShareCreator

- (void)saveZoneShare:(id)share completion:(id)completion
{
  completionCopy = completion;
  shareCopy = share;
  v8 = [CKModifyRecordsOperation alloc];
  v15 = shareCopy;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10019FB50;
  v13[3] = &unk_1005148A8;
  v14 = completionCopy;
  v11 = completionCopy;
  [v10 setModifyRecordsCompletionBlock:v13];
  [v10 setQualityOfService:17];
  privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
  [privateCloudDatabase addOperation:v10];
}

- (void)fetchZoneShare:(id)share
{
  shareCopy = share;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019FCFC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = shareCopy;
  v6 = shareCopy;
  dispatch_async(queue, v7);
}

- (void)deleteZoneShare:(BOOL)share markForReinvitation:(BOOL)reinvitation completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A023C;
  block[3] = &unk_100515D80;
  block[4] = self;
  v12 = completionCopy;
  reinvitationCopy = reinvitation;
  shareCopy = share;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_setupZoneSharing:(id)sharing
{
  sharingCopy = sharing;
  zoneInfo = self->_zoneInfo;
  if (zoneInfo && ([(ADCloudKitRecordZoneInfo *)zoneInfo zone], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [CKShare alloc];
    v8 = [(ADCloudKitRecordZoneInfo *)self->_zoneInfo zone];
    zoneID = [v8 zoneID];
    v10 = [v7 initWithRecordZoneID:zoneID];

    [v10 setParticipantVisibility:2];
    v11 = [CKModifyRecordsOperation alloc];
    v22 = v10;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
    v13 = [v11 initWithRecordsToSave:v12 recordIDsToDelete:0];

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1001A0810;
    v19 = &unk_10051BDC0;
    selfCopy = self;
    v21 = sharingCopy;
    [v13 setModifyRecordsCompletionBlock:&v16];
    [v13 setQualityOfService:{17, v16, v17, v18, v19}];
    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    [privateCloudDatabase addOperation:v13];
  }

  else
  {
    v15 = [AFError errorWithCode:4020];
    if (sharingCopy)
    {
      (*(sharingCopy + 2))(sharingCopy, 0, 0, v15);
    }
  }
}

- (ADCloudKitZoneShareCreator)initWithQueue:(id)queue container:(id)container sharedZone:(id)zone
{
  queueCopy = queue;
  containerCopy = container;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = ADCloudKitZoneShareCreator;
  v12 = [(ADCloudKitZoneShareCreator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_container, container);
    objc_storeStrong(&v13->_zoneInfo, zone);
  }

  return v13;
}

@end