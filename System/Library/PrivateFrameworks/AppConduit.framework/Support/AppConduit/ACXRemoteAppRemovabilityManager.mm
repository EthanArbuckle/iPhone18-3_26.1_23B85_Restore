@interface ACXRemoteAppRemovabilityManager
+ (id)remoteRemovabilityManagerForStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue;
- (ACXRemoteAppRemovabilityManager)initWithCoder:(id)coder;
- (ACXRemoteAppRemovabilityManager)initWithStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue;
- (ACXRemoteRemovabilityCommunications)delegate;
- (BOOL)_onQueue_hasRemoteChangeClockUpdatedForUUID:(id)d sequenceNumber:(unint64_t)number;
- (OS_dispatch_queue)queue;
- (void)_onQueue_saveData;
- (void)encodeWithCoder:(id)coder;
- (void)removabilityUpdatedForApp:(id)app removability:(unint64_t)removability dbUUID:(id)d sequenceNumber:(unint64_t)number;
- (void)removeDelegate:(id)delegate;
- (void)reportRemoteRemovabilityDBUUID:(id)d sequenceNumber:(unint64_t)number;
- (void)setRemoteRemovabilityData:(id)data withDBUUID:(id)d sequenceNumber:(unint64_t)number;
@end

@implementation ACXRemoteAppRemovabilityManager

+ (id)remoteRemovabilityManagerForStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  delegateCopy = delegate;
  queueCopy = queue;
  v10 = [lCopy URLByAppendingPathComponent:@"ACXRemoteRemovability.plist" isDirectory:0];
  path = [v10 path];
  v26 = 0;
  v12 = [NSData dataWithContentsOfFile:path options:1 error:&v26];
  v13 = v26;

  if (!v12)
  {
    domain = [v13 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v13 code];

      if (code == 260)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path2 = [v10 path];
      v23 = path2;
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
      [v16 setDelegate:delegateCopy];
      [v17 setDelegateQueue:queueCopy];
      [v17 setStorageBaseURL:lCopy];
      v13 = v15;
      goto LABEL_27;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path2 = [v10 path];
      v23 = path2;
      MOLogWrite();
      goto LABEL_19;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path2 = [v10 path];
      v23 = path2;
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

  v17 = [objc_alloc(objc_opt_class()) initWithStorageBaseURL:lCopy delegate:delegateCopy queue:queueCopy];
LABEL_27:

  return v17;
}

- (ACXRemoteAppRemovabilityManager)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"appRemovabilityMap"];
  appRemovabilityMap = v5->_appRemovabilityMap;
  v5->_appRemovabilityMap = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentClockUUID"];
  currentClockUUID = v5->_currentClockUUID;
  v5->_currentClockUUID = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSequenceNumber"];
  v5->_lastSequenceNumber = [v13 unsignedIntegerValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteRemovabilityVersion"];
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

  appRemovabilityMap = [(ACXRemoteAppRemovabilityManager *)v5 appRemovabilityMap];

  if (!appRemovabilityMap)
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

- (void)encodeWithCoder:(id)coder
{
  appRemovabilityMap = self->_appRemovabilityMap;
  coderCopy = coder;
  [coderCopy encodeObject:appRemovabilityMap forKey:@"appRemovabilityMap"];
  [coderCopy encodeObject:self->_currentClockUUID forKey:@"currentClockUUID"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_lastSequenceNumber];
  [coderCopy encodeObject:v5 forKey:@"lastSequenceNumber"];

  [coderCopy encodeObject:&off_1000975D8 forKey:@"RemoteRemovabilityVersion"];
}

- (void)_onQueue_saveData
{
  queue = [(ACXRemoteAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 setOutputFormat:200];
  [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v4 encodedData];
  storageBaseURL = [(ACXRemoteAppRemovabilityManager *)self storageBaseURL];
  v7 = [storageBaseURL URLByAppendingPathComponent:@"ACXRemoteRemovability.plist" isDirectory:0];

  v11 = 0;
  v8 = [encodedData writeToURL:v7 options:268435457 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    path = [v7 path];
    MOLogWrite();
  }
}

- (ACXRemoteAppRemovabilityManager)initWithStorageBaseURL:(id)l delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  delegateCopy = delegate;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = ACXRemoteAppRemovabilityManager;
  v12 = [(ACXRemoteAppRemovabilityManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storageBaseURL, l);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_delegateQueue, queue);
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

- (void)removeDelegate:(id)delegate
{
  queue = [(ACXRemoteAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EA88;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)_onQueue_hasRemoteChangeClockUpdatedForUUID:(id)d sequenceNumber:(unint64_t)number
{
  dCopy = d;
  queue = [(ACXRemoteAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([(NSUUID *)self->_currentClockUUID isEqual:dCopy]& 1) != 0)
  {
    v8 = self->_lastSequenceNumber != number;
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

- (void)reportRemoteRemovabilityDBUUID:(id)d sequenceNumber:(unint64_t)number
{
  dCopy = d;
  queue = [(ACXRemoteAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC10;
  block[3] = &unk_10008CEC8;
  block[4] = self;
  v10 = dCopy;
  numberCopy = number;
  v8 = dCopy;
  dispatch_sync(queue, block);
}

- (void)removabilityUpdatedForApp:(id)app removability:(unint64_t)removability dbUUID:(id)d sequenceNumber:(unint64_t)number
{
  appCopy = app;
  dCopy = d;
  queue = [(ACXRemoteAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EDE0;
  block[3] = &unk_10008CEF0;
  block[4] = self;
  v16 = dCopy;
  v17 = appCopy;
  numberCopy = number;
  removabilityCopy = removability;
  v13 = appCopy;
  v14 = dCopy;
  dispatch_sync(queue, block);
}

- (void)setRemoteRemovabilityData:(id)data withDBUUID:(id)d sequenceNumber:(unint64_t)number
{
  dataCopy = data;
  dCopy = d;
  queue = [(ACXRemoteAppRemovabilityManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F394;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = dCopy;
  v15 = dataCopy;
  numberCopy = number;
  v11 = dataCopy;
  v12 = dCopy;
  dispatch_sync(queue, v13);
}

- (ACXRemoteRemovabilityCommunications)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end