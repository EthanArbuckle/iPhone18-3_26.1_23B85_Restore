@interface ADCloudKitRecordZoneInfo
- (ADCloudKitRecordZoneInfo)initWithZone:(id)zone dataStore:(id)store subscriptionNames:(id)names;
- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)name subscriptionName:(id)subscriptionName;
- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)name subscriptionNames:(id)names;
- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)name subscriptionNames:(id)names ckAccountInfo:(id)info;
- (void)reset;
- (void)setServerChangeToken:(id)token;
- (void)setZone:(id)zone;
@end

@implementation ADCloudKitRecordZoneInfo

- (void)reset
{
  if ([(NSString *)self->_zoneName length])
  {
    v3 = [[CKRecordZoneID alloc] initWithZoneName:self->_zoneName ownerName:CKCurrentUserDefaultName];
    v4 = [[CKRecordZone alloc] initWithZoneID:v3];
    zone = self->_zone;
    self->_zone = v4;
  }

  else
  {
    v3 = self->_zone;
    self->_zone = 0;
  }

  [(ADCloudKitDataStoreProtocol *)self->_dataStore setZone:self->_zone];
  if (self->_zone && [(ADCloudKitDataStoreProtocol *)self->_dataStore hasSetUpRecordZoneSubscription])
  {
    supportedRecordTypes = [(ADCloudKitDataStoreProtocol *)self->_dataStore supportedRecordTypes];
    if ([(NSMutableArray *)supportedRecordTypes count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = [CKRecordZoneSubscription alloc];
        zoneID = [(CKRecordZone *)self->_zone zoneID];
        v10 = [(NSArray *)self->_subscriptionNames objectAtIndexedSubscript:v6];
        v11 = [v8 initWithZoneID:zoneID subscriptionID:v10];

        v12 = [(NSMutableArray *)supportedRecordTypes objectAtIndexedSubscript:v6];
        [v11 setRecordType:v12];

        subscriptionList = self->_subscriptionList;
        if (!subscriptionList)
        {
          v14 = objc_alloc_init(NSMutableArray);
          v15 = self->_subscriptionList;
          self->_subscriptionList = v14;

          subscriptionList = self->_subscriptionList;
        }

        [(NSMutableArray *)subscriptionList addObject:v11];

        v6 = v7;
      }

      while ([(NSMutableArray *)supportedRecordTypes count]> v7++);
    }

    v17 = supportedRecordTypes;
  }

  else
  {
    v17 = self->_subscriptionList;
    self->_subscriptionList = 0;
  }
}

- (void)setZone:(id)zone
{
  zoneCopy = zone;
  objc_storeStrong(&self->_zone, zone);
  dataStore = [(ADCloudKitRecordZoneInfo *)self dataStore];

  if (dataStore)
  {
    dataStore2 = [(ADCloudKitRecordZoneInfo *)self dataStore];
    [dataStore2 setZone:zoneCopy];
  }
}

- (void)setServerChangeToken:(id)token
{
  tokenCopy = token;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    dataStore = self->_dataStore;
    v7 = v5;
    isMirroredDataStore = [(ADCloudKitDataStoreProtocol *)dataStore isMirroredDataStore];
    v9 = @"NO";
    if (isMirroredDataStore)
    {
      v9 = @"YES";
    }

    v10 = 136315394;
    v11 = "[ADCloudKitRecordZoneInfo setServerChangeToken:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Updating server change token. Is mirrored? %@", &v10, 0x16u);
  }

  [(ADCloudKitDataStoreProtocol *)self->_dataStore setServerChangeToken:tokenCopy];
}

- (ADCloudKitRecordZoneInfo)initWithZone:(id)zone dataStore:(id)store subscriptionNames:(id)names
{
  zoneCopy = zone;
  storeCopy = store;
  namesCopy = names;
  v19.receiver = self;
  v19.super_class = ADCloudKitRecordZoneInfo;
  v12 = [(ADCloudKitRecordZoneInfo *)&v19 init];
  if (v12)
  {
    zoneID = [zoneCopy zoneID];
    zoneName = [zoneID zoneName];
    zoneName = v12->_zoneName;
    v12->_zoneName = zoneName;

    objc_storeStrong(&v12->_dataStore, store);
    objc_storeStrong(&v12->_zone, zone);
    [storeCopy setZone:zoneCopy];
    firstObject = [namesCopy firstObject];
    subscriptionName = v12->_subscriptionName;
    v12->_subscriptionName = firstObject;

    objc_storeStrong(&v12->_subscriptionNames, names);
  }

  return v12;
}

- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)name subscriptionNames:(id)names ckAccountInfo:(id)info
{
  nameCopy = name;
  namesCopy = names;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = ADCloudKitRecordZoneInfo;
  v12 = [(ADCloudKitRecordZoneInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_zoneName, name);
    firstObject = [namesCopy firstObject];
    subscriptionName = v13->_subscriptionName;
    v13->_subscriptionName = firstObject;

    objc_storeStrong(&v13->_subscriptionNames, names);
    objc_storeStrong(&v13->_ckAcctInfo, info);
    [(ADCloudKitRecordZoneInfo *)v13 reset];
  }

  return v13;
}

- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)name subscriptionNames:(id)names
{
  nameCopy = name;
  namesCopy = names;
  v14.receiver = self;
  v14.super_class = ADCloudKitRecordZoneInfo;
  v9 = [(ADCloudKitRecordZoneInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneName, name);
    firstObject = [namesCopy firstObject];
    subscriptionName = v10->_subscriptionName;
    v10->_subscriptionName = firstObject;

    objc_storeStrong(&v10->_subscriptionNames, names);
    [(ADCloudKitRecordZoneInfo *)v10 reset];
  }

  return v10;
}

- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)name subscriptionName:(id)subscriptionName
{
  nameCopy = name;
  subscriptionNameCopy = subscriptionName;
  v14.receiver = self;
  v14.super_class = ADCloudKitRecordZoneInfo;
  v9 = [(ADCloudKitRecordZoneInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneName, name);
    objc_storeStrong(&v10->_subscriptionName, subscriptionName);
    v11 = [[NSArray alloc] initWithObjects:{subscriptionNameCopy, 0}];
    subscriptionNames = v10->_subscriptionNames;
    v10->_subscriptionNames = v11;

    [(ADCloudKitRecordZoneInfo *)v10 reset];
  }

  return v10;
}

@end