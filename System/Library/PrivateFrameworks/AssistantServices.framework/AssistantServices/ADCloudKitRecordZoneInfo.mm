@interface ADCloudKitRecordZoneInfo
- (ADCloudKitRecordZoneInfo)initWithZone:(id)a3 dataStore:(id)a4 subscriptionNames:(id)a5;
- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)a3 subscriptionName:(id)a4;
- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)a3 subscriptionNames:(id)a4;
- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)a3 subscriptionNames:(id)a4 ckAccountInfo:(id)a5;
- (void)reset;
- (void)setServerChangeToken:(id)a3;
- (void)setZone:(id)a3;
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
    v18 = [(ADCloudKitDataStoreProtocol *)self->_dataStore supportedRecordTypes];
    if ([(NSMutableArray *)v18 count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = [CKRecordZoneSubscription alloc];
        v9 = [(CKRecordZone *)self->_zone zoneID];
        v10 = [(NSArray *)self->_subscriptionNames objectAtIndexedSubscript:v6];
        v11 = [v8 initWithZoneID:v9 subscriptionID:v10];

        v12 = [(NSMutableArray *)v18 objectAtIndexedSubscript:v6];
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

      while ([(NSMutableArray *)v18 count]> v7++);
    }

    v17 = v18;
  }

  else
  {
    v17 = self->_subscriptionList;
    self->_subscriptionList = 0;
  }
}

- (void)setZone:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_zone, a3);
  v5 = [(ADCloudKitRecordZoneInfo *)self dataStore];

  if (v5)
  {
    v6 = [(ADCloudKitRecordZoneInfo *)self dataStore];
    [v6 setZone:v7];
  }
}

- (void)setServerChangeToken:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    dataStore = self->_dataStore;
    v7 = v5;
    v8 = [(ADCloudKitDataStoreProtocol *)dataStore isMirroredDataStore];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    v10 = 136315394;
    v11 = "[ADCloudKitRecordZoneInfo setServerChangeToken:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Updating server change token. Is mirrored? %@", &v10, 0x16u);
  }

  [(ADCloudKitDataStoreProtocol *)self->_dataStore setServerChangeToken:v4];
}

- (ADCloudKitRecordZoneInfo)initWithZone:(id)a3 dataStore:(id)a4 subscriptionNames:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ADCloudKitRecordZoneInfo;
  v12 = [(ADCloudKitRecordZoneInfo *)&v19 init];
  if (v12)
  {
    v13 = [v9 zoneID];
    v14 = [v13 zoneName];
    zoneName = v12->_zoneName;
    v12->_zoneName = v14;

    objc_storeStrong(&v12->_dataStore, a4);
    objc_storeStrong(&v12->_zone, a3);
    [v10 setZone:v9];
    v16 = [v11 firstObject];
    subscriptionName = v12->_subscriptionName;
    v12->_subscriptionName = v16;

    objc_storeStrong(&v12->_subscriptionNames, a5);
  }

  return v12;
}

- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)a3 subscriptionNames:(id)a4 ckAccountInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ADCloudKitRecordZoneInfo;
  v12 = [(ADCloudKitRecordZoneInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_zoneName, a3);
    v14 = [v10 firstObject];
    subscriptionName = v13->_subscriptionName;
    v13->_subscriptionName = v14;

    objc_storeStrong(&v13->_subscriptionNames, a4);
    objc_storeStrong(&v13->_ckAcctInfo, a5);
    [(ADCloudKitRecordZoneInfo *)v13 reset];
  }

  return v13;
}

- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)a3 subscriptionNames:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ADCloudKitRecordZoneInfo;
  v9 = [(ADCloudKitRecordZoneInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneName, a3);
    v11 = [v8 firstObject];
    subscriptionName = v10->_subscriptionName;
    v10->_subscriptionName = v11;

    objc_storeStrong(&v10->_subscriptionNames, a4);
    [(ADCloudKitRecordZoneInfo *)v10 reset];
  }

  return v10;
}

- (ADCloudKitRecordZoneInfo)initWithZoneName:(id)a3 subscriptionName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ADCloudKitRecordZoneInfo;
  v9 = [(ADCloudKitRecordZoneInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneName, a3);
    objc_storeStrong(&v10->_subscriptionName, a4);
    v11 = [[NSArray alloc] initWithObjects:{v8, 0}];
    subscriptionNames = v10->_subscriptionNames;
    v10->_subscriptionNames = v11;

    [(ADCloudKitRecordZoneInfo *)v10 reset];
  }

  return v10;
}

@end