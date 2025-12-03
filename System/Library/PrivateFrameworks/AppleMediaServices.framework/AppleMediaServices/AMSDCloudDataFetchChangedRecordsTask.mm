@interface AMSDCloudDataFetchChangedRecordsTask
- (AMSDCloudDataFetchChangedRecordsTask)initWithRecordZoneIdentifiers:(id)identifiers inDatabase:(id)database batchSize:(int64_t)size;
- (id)performFetch;
@end

@implementation AMSDCloudDataFetchChangedRecordsTask

- (AMSDCloudDataFetchChangedRecordsTask)initWithRecordZoneIdentifiers:(id)identifiers inDatabase:(id)database batchSize:(int64_t)size
{
  identifiersCopy = identifiers;
  databaseCopy = database;
  v14.receiver = self;
  v14.super_class = AMSDCloudDataFetchChangedRecordsTask;
  v11 = [(AMSDCloudDataFetchChangedRecordsTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifiers, identifiers);
    objc_storeStrong(&v12->_database, database);
    v12->_batchSize = size;
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