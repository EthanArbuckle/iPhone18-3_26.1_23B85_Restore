@interface MTTermsVersionSyncProcessor
- (BOOL)hasLocalChanges;
- (BOOL)mergeData:(id)data mismatch:(BOOL)mismatch;
- (MTTermsVersionSyncProcessor)initWithStorage:(id)storage;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (id)versionForGetTransaction:(id)transaction key:(id)key;
- (void)completeTransactionWithNewVersion:(id)version mismatch:(BOOL)mismatch finishedBlock:(id)block;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version;
@end

@implementation MTTermsVersionSyncProcessor

- (MTTermsVersionSyncProcessor)initWithStorage:(id)storage
{
  storageCopy = storage;
  v8.receiver = self;
  v8.super_class = MTTermsVersionSyncProcessor;
  v5 = [(MTTermsVersionSyncProcessor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTTermsVersionSyncProcessor *)v5 setStorageProvider:storageCopy];
  }

  return v6;
}

- (BOOL)hasLocalChanges
{
  storageProvider = [(MTTermsVersionSyncProcessor *)self storageProvider];
  cloudSyncIsDirty = [storageProvider cloudSyncIsDirty];

  return cloudSyncIsDirty;
}

- (id)versionForGetTransaction:(id)transaction key:(id)key
{
  v4 = [(MTTermsVersionSyncProcessor *)self storageProvider:transaction];
  cloudSyncVersion = [v4 cloudSyncVersion];

  return cloudSyncVersion;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  v7 = [(MTTermsVersionSyncProcessor *)self storageProvider:transaction];
  if (![(MZKeyValueStoreNode *)v7 cloudSyncIsDirty])
  {
    value = 0;
LABEL_8:

    goto LABEL_9;
  }

  storageProvider = [(MTTermsVersionSyncProcessor *)self storageProvider];
  deviceAgreedTermsVersion = [storageProvider deviceAgreedTermsVersion];

  if (deviceAgreedTermsVersion)
  {
    v7 = objc_alloc_init(MZKeyValueStoreNode);
    storageProvider2 = [(MTTermsVersionSyncProcessor *)self storageProvider];
    deviceAgreedTermsVersion2 = [storageProvider2 deviceAgreedTermsVersion];
    integerValue = [deviceAgreedTermsVersion2 integerValue];

    storageProvider3 = [(MTTermsVersionSyncProcessor *)self storageProvider];
    accountAgreedTermsVersion = [storageProvider3 accountAgreedTermsVersion];
    integerValue2 = [accountAgreedTermsVersion integerValue];

    if (integerValue <= integerValue2)
    {
      v16 = integerValue2;
    }

    else
    {
      v16 = integerValue;
    }

    v17 = [NSNumber numberWithInteger:v16];
    [(MZKeyValueStoreNode *)v7 setNumberValue:v17];

    value = [(MZKeyValueStoreNode *)v7 value];
    storageProvider4 = [(MTTermsVersionSyncProcessor *)self storageProvider];
    *version = [storageProvider4 cloudSyncVersion];

    goto LABEL_8;
  }

  value = 0;
LABEL_9:

  return value;
}

- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version
{
  versionCopy = version;
  storageProvider = [(MTTermsVersionSyncProcessor *)self storageProvider];
  [storageProvider setPodcastsDomainVersion:versionCopy];
}

- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  blockCopy = block;
  versionCopy = version;
  [(MTTermsVersionSyncProcessor *)self completeTransactionWithNewVersion:versionCopy mismatch:[(MTTermsVersionSyncProcessor *)self mergeData:data mismatch:0] finishedBlock:blockCopy];
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  blockCopy = block;
  versionCopy = version;
  [(MTTermsVersionSyncProcessor *)self completeTransactionWithNewVersion:versionCopy mismatch:[(MTTermsVersionSyncProcessor *)self mergeData:data mismatch:1] finishedBlock:blockCopy];
}

- (BOOL)mergeData:(id)data mismatch:(BOOL)mismatch
{
  dataCopy = data;
  v7 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v7 setValue:dataCopy];

  storageProvider = [(MTTermsVersionSyncProcessor *)self storageProvider];
  deviceAgreedTermsVersion = [storageProvider deviceAgreedTermsVersion];
  if (deviceAgreedTermsVersion)
  {
  }

  else
  {
    storageProvider2 = [(MTTermsVersionSyncProcessor *)self storageProvider];
    accountAgreedTermsVersion = [storageProvider2 accountAgreedTermsVersion];

    if (!accountAgreedTermsVersion)
    {
      v19 = 0;
      goto LABEL_8;
    }
  }

  storageProvider3 = [(MTTermsVersionSyncProcessor *)self storageProvider];
  deviceAgreedTermsVersion2 = [storageProvider3 deviceAgreedTermsVersion];
  integerValue = [deviceAgreedTermsVersion2 integerValue];

  storageProvider4 = [(MTTermsVersionSyncProcessor *)self storageProvider];
  accountAgreedTermsVersion2 = [storageProvider4 accountAgreedTermsVersion];
  integerValue2 = [accountAgreedTermsVersion2 integerValue];

  if (integerValue <= integerValue2)
  {
    v18 = integerValue2;
  }

  else
  {
    v18 = integerValue;
  }

  v19 = [NSNumber numberWithInteger:v18];
LABEL_8:
  if ([(MZKeyValueStoreNode *)v7 hasData])
  {
    numberValue = [(MZKeyValueStoreNode *)v7 numberValue];
    integerValue3 = [numberValue integerValue];
    if (integerValue3 >= [v19 integerValue])
    {
      integerValue4 = [numberValue integerValue];
      if (integerValue4 >= [v19 integerValue])
      {
        v23 = numberValue;

        mismatch = 0;
        v19 = v23;
      }
    }

    else
    {
      mismatch = 1;
    }
  }

  storageProvider5 = [(MTTermsVersionSyncProcessor *)self storageProvider];
  [storageProvider5 setAccountAgreedTermsVersion:v19];

  return mismatch;
}

- (void)completeTransactionWithNewVersion:(id)version mismatch:(BOOL)mismatch finishedBlock:(id)block
{
  mismatchCopy = mismatch;
  blockCopy = block;
  versionCopy = version;
  storageProvider = [(MTTermsVersionSyncProcessor *)self storageProvider];
  [storageProvider setCloudSyncVersion:versionCopy];

  storageProvider2 = [(MTTermsVersionSyncProcessor *)self storageProvider];
  [storageProvider2 setCloudSyncIsDirty:mismatchCopy];

  blockCopy[2](blockCopy, mismatchCopy);
}

@end