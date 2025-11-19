@interface AMSDCloudDataFetchChangedRecordsTask
- (AMSDCloudDataFetchChangedRecordsTask)initWithRecordZoneIdentifiers:(id)a3 inDatabase:(id)a4 batchSize:(int64_t)a5;
- (id)performFetch;
@end

@implementation AMSDCloudDataFetchChangedRecordsTask

- (AMSDCloudDataFetchChangedRecordsTask)initWithRecordZoneIdentifiers:(id)a3 inDatabase:(id)a4 batchSize:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AMSDCloudDataFetchChangedRecordsTask;
  v11 = [(AMSDCloudDataFetchChangedRecordsTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifiers, a3);
    objc_storeStrong(&v12->_database, a4);
    v12->_batchSize = a5;
  }

  return v12;
}

- (id)performFetch
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100048B28;
  v4[3] = &unk_1002AFDB0;
  v4[4] = self;
  v2 = [(AMSDCloudDataFetchChangedRecordsTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

@end