@interface ACXRemoteAppRemovabilityManager
+ (id)remoteRemovabilityManagerForStorageBaseURL:(id)a3 delegate:(id)a4 queue:(id)a5;
- (ACXRemoteAppRemovabilityManager)initWithCoder:(id)a3;
- (ACXRemoteAppRemovabilityManager)initWithStorageBaseURL:(id)a3 delegate:(id)a4 queue:(id)a5;
- (ACXRemoteRemovabilityCommunications)delegate;
- (BOOL)_onQueue_hasRemoteChangeClockUpdatedForUUID:(id)a3 sequenceNumber:(unint64_t)a4;
- (OS_dispatch_queue)queue;
- (void)_onQueue_saveData;
- (void)encodeWithCoder:(id)a3;
- (void)removabilityUpdatedForApp:(id)a3 removability:(unint64_t)a4 dbUUID:(id)a5 sequenceNumber:(unint64_t)a6;
- (void)removeDelegate:(id)a3;
- (void)reportRemoteRemovabilityDBUUID:(id)a3 sequenceNumber:(unint64_t)a4;
- (void)setRemoteRemovabilityData:(id)a3 withDBUUID:(id)a4 sequenceNumber:(unint64_t)a5;
@end

@implementation ACXRemoteAppRemovabilityManager

+ (id)remoteRemovabilityManagerForStorageBaseURL:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 URLByAppendingPathComponent:@"ACXRemoteRemovability.plist" isDirectory:0];
  v11 = [v10 path];
  v26 = 0;
  v12 = [NSData dataWithContentsOfFile:v11 options:1 error:&v26];
  v13 = v26;

  if (!v12)
  {
    v18 = [v13 domain];
    if ([v18 isEqualToString:NSCocoaErrorDomain])
    {
      v19 = [v13 code];

      if (v19 == 260)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v20 = [v10 path];
      v23 = v20;
      v24 = v13;
      MOLogWrite();
      v14 = 0;
LABEL_20:

      goto LABEL_23;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_23;
  }

  v25 = v13;
  v14 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v12 error:&v25];
  v15 = v25;

  if (v14)
  {
    v16 = [v14 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    if (v16)
    {
      v17 = v16;
      [v16 setDelegate:v8];
      [v17 setDelegateQueue:v9];
      [v17 setStorageBaseURL:v7];
      v13 = v15;
      goto LABEL_27;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v20 = [v10 path];
      v23 = v20;
      MOLogWrite();
      goto LABEL_19;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v20 = [v10 path];
      v23 = v20;
      v24 = v15;
      MOLogWrite();
      v14 = 0;
LABEL_19:
      v13 = v15;
      goto LABEL_20;
    }

    v14 = 0;
  }

  v13 = v15;
LABEL_23:
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v21 = [NSFileManager defaultManager:v23];
  [v21 removeItemAtURL:v10 error:0];

  v17 = [objc_alloc(objc_opt_class()) initWithStorageBaseURL:v7 delegate:v8 queue:v9];
LABEL_27:

  return v17;
}

- (ACXRemoteAppRemovabilityManager)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ACXRemoteAppRemovabilityManager;
  v5 = [(ACXRemoteAppRemovabilityManager *)&v19 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"appRemovabilityMap"];
  appRemovabilityMap = v5->_appRemovabilityMap;
  v5->_appRemovabilityMap = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentClockUUID"];
  currentClockUUID = v5->_currentClockUUID;
  v5->_currentClockUUID = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSequenceNumber"];
  v5->_lastSequenceNumber = [v13 unsignedIntegerValue];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteRemovabilityVersion"];
  v15 = v14;
  if (v14 && [v14 unsignedLongLongValue] != 1)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_13;
    }

LABEL_12:
    MOLogWrite();
LABEL_13:

    v17 = 0;
    goto LABEL_14;
  }

  v16 = [(ACXRemoteAppRemovabilityManager *)v5 appRemovabilityMap];

  if (!v16)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_6:
  v17 = v5;
LABEL_14:

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  appRemovabilityMap = self->_appRemovabilityMap;
  v6 = a3;
  [v6 encodeObject:appRemovabilityMap forKey:@"appRemovabilityMap"];
  [v6 encodeObject:self->_currentClockUUID forKey:@"currentClockUUID"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_lastSequenceNumber];
  [v6 encodeObject:v5 forKey:@"lastSequenceNumber"];

  [v6 encodeObject:&off_1000975D8 forKey:@"RemoteRemovabilityVersion"];
}

- (void)_onQueue_saveData
{
  v3 = [(ACXRemoteAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 setOutputFormat:200];
  [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  v5 = [v4 encodedData];
  v6 = [(ACXRemoteAppRemovabilityManager *)self storageBaseURL];
  v7 = [v6 URLByAppendingPathComponent:@"ACXRemoteRemovability.plist" isDirectory:0];

  v11 = 0;
  v8 = [v5 writeToURL:v7 options:268435457 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    v10 = [v7 path];
    MOLogWrite();
  }
}

- (ACXRemoteAppRemovabilityManager)initWithStorageBaseURL:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ACXRemoteAppRemovabilityManager;
  v12 = [(ACXRemoteAppRemovabilityManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storageBaseURL, a3);
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v13->_delegateQueue, a5);
  }

  return v13;
}

- (OS_dispatch_queue)queue
{
  if (qword_1000A4770 != -1)
  {
    sub_100059ADC();
  }

  v3 = qword_1000A4778;

  return v3;
}

- (void)removeDelegate:(id)a3
{
  v4 = [(ACXRemoteAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EA88;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (BOOL)_onQueue_hasRemoteChangeClockUpdatedForUUID:(id)a3 sequenceNumber:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ACXRemoteAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(v7);

  if (([(NSUUID *)self->_currentClockUUID isEqual:v6]& 1) != 0)
  {
    v8 = self->_lastSequenceNumber != a4;
  }

  else
  {
    if (self->_currentClockUUID && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 4))
    {
      currentClockUUID = self->_currentClockUUID;
      MOLogWrite();
    }

    v8 = 1;
  }

  return v8;
}

- (void)reportRemoteRemovabilityDBUUID:(id)a3 sequenceNumber:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ACXRemoteAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC10;
  block[3] = &unk_10008CEC8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)removabilityUpdatedForApp:(id)a3 removability:(unint64_t)a4 dbUUID:(id)a5 sequenceNumber:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(ACXRemoteAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EDE0;
  block[3] = &unk_10008CEF0;
  block[4] = self;
  v16 = v11;
  v17 = v10;
  v18 = a6;
  v19 = a4;
  v13 = v10;
  v14 = v11;
  dispatch_sync(v12, block);
}

- (void)setRemoteRemovabilityData:(id)a3 withDBUUID:(id)a4 sequenceNumber:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ACXRemoteAppRemovabilityManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F394;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (ACXRemoteRemovabilityCommunications)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end