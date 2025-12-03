@interface BuddyExistingSettings
- (BuddyExistingSettings)init;
- (NSData)walletData;
- (id)backupMetadata;
- (void)setBackupMetadata:(id)metadata;
- (void)setBackupMetadataWithProviderBlock:(id)block;
@end

@implementation BuddyExistingSettings

- (BuddyExistingSettings)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyExistingSettings;
  location = [(BuddyExistingSettings *)&v7 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v3 = dispatch_queue_create("Backup Metadata Queue", v2);
    v4 = *(location + 3);
    *(location + 3) = v3;
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (NSData)walletData
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [(BuddyExistingSettings *)self backupMetadata];
  if (!v9[0] || ((location = [v9[0] expressSettings], (objc_msgSend(location, "hasWalletData") & 1) == 0) ? ((objc_msgSend(v9[0], "hasWalletData") & 1) == 0 ? (v7 = 0) : (walletData = objc_msgSend(v9[0], "walletData"), v7 = 1)) : (walletData = objc_msgSend(location, "walletData"), v7 = 1), objc_storeStrong(&location, 0), !v7))
  {
    expressSettings = [(BuddyExistingSettings *)selfCopy expressSettings];
    hasWalletData = [(SASExpressSettings *)expressSettings hasWalletData];

    if (hasWalletData)
    {
      expressSettings2 = [(BuddyExistingSettings *)selfCopy expressSettings];
      walletData = [(SASExpressSettings *)expressSettings2 walletData];
    }

    else
    {
      walletData = 0;
    }
  }

  objc_storeStrong(v9, 0);
  v5 = walletData;

  return v5;
}

- (void)setBackupMetadataWithProviderBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  metadataQueue = [(BuddyExistingSettings *)selfCopy metadataQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001A5B68;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(metadataQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setBackupMetadata:(id)metadata
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  metadataQueue = [(BuddyExistingSettings *)selfCopy metadataQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001A5CD0;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(metadataQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)backupMetadata
{
  selfCopy = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_1001A5E70;
  v16 = sub_1001A5EB4;
  v17[0] = 0;
  metadataQueue = [(BuddyExistingSettings *)self metadataQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001A5EC0;
  v9 = &unk_10032C290;
  v10[1] = &v11;
  v10[0] = selfCopy;
  dispatch_sync(metadataQueue, &v5);

  v3 = v12[5];
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v3;
}

@end