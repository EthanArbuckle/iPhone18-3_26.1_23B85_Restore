@interface ADCloudKitZoneShareCreator
- (ADCloudKitZoneShareCreator)initWithQueue:(id)a3 container:(id)a4 sharedZone:(id)a5;
- (void)_setupZoneSharing:(id)a3;
- (void)deleteZoneShare:(BOOL)a3 markForReinvitation:(BOOL)a4 completion:(id)a5;
- (void)fetchZoneShare:(id)a3;
- (void)saveZoneShare:(id)a3 completion:(id)a4;
@end

@implementation ADCloudKitZoneShareCreator

- (void)saveZoneShare:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CKModifyRecordsOperation alloc];
  v15 = v7;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10019FB50;
  v13[3] = &unk_1005148A8;
  v14 = v6;
  v11 = v6;
  [v10 setModifyRecordsCompletionBlock:v13];
  [v10 setQualityOfService:17];
  v12 = [(CKContainer *)self->_container privateCloudDatabase];
  [v12 addOperation:v10];
}

- (void)fetchZoneShare:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019FCFC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)deleteZoneShare:(BOOL)a3 markForReinvitation:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A023C;
  block[3] = &unk_100515D80;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a3;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)_setupZoneSharing:(id)a3
{
  v4 = a3;
  zoneInfo = self->_zoneInfo;
  if (zoneInfo && ([(ADCloudKitRecordZoneInfo *)zoneInfo zone], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [CKShare alloc];
    v8 = [(ADCloudKitRecordZoneInfo *)self->_zoneInfo zone];
    v9 = [v8 zoneID];
    v10 = [v7 initWithRecordZoneID:v9];

    [v10 setParticipantVisibility:2];
    v11 = [CKModifyRecordsOperation alloc];
    v22 = v10;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
    v13 = [v11 initWithRecordsToSave:v12 recordIDsToDelete:0];

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1001A0810;
    v19 = &unk_10051BDC0;
    v20 = self;
    v21 = v4;
    [v13 setModifyRecordsCompletionBlock:&v16];
    [v13 setQualityOfService:{17, v16, v17, v18, v19}];
    v14 = [(CKContainer *)self->_container privateCloudDatabase];
    [v14 addOperation:v13];
  }

  else
  {
    v15 = [AFError errorWithCode:4020];
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0, v15);
    }
  }
}

- (ADCloudKitZoneShareCreator)initWithQueue:(id)a3 container:(id)a4 sharedZone:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ADCloudKitZoneShareCreator;
  v12 = [(ADCloudKitZoneShareCreator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    objc_storeStrong(&v13->_container, a4);
    objc_storeStrong(&v13->_zoneInfo, a5);
  }

  return v13;
}

@end