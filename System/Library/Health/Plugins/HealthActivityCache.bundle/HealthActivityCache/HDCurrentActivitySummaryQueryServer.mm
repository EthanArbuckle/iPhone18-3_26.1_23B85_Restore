@interface HDCurrentActivitySummaryQueryServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDCurrentActivitySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
- (void)_queue_startDataCollection;
- (void)_queue_stop;
- (void)_queue_stopDataCollection;
- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
@end

@implementation HDCurrentActivitySummaryQueryServer

- (HDCurrentActivitySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = HDCurrentActivitySummaryQueryServer;
  v11 = [(HDCurrentActivitySummaryQueryServer *)&v16 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    collectionIntervals = [configurationCopy collectionIntervals];
    v13 = [collectionIntervals copy];
    collectionIntervals = v11->_collectionIntervals;
    v11->_collectionIntervals = v13;
  }

  return v11;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  v14 = +[HDActivityDemoDataStore shouldShowActivityDemoData];
  v15 = off_34380;
  if (!v14)
  {
    v15 = &off_34388;
  }

  v16 = [objc_alloc(*v15) initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];

  return v16;
}

- (void)_queue_start
{
  v11.receiver = self;
  v11.super_class = HDCurrentActivitySummaryQueryServer;
  [(HDCurrentActivitySummaryQueryServer *)&v11 _queue_start];
  profile = [(HDCurrentActivitySummaryQueryServer *)self profile];
  dataCollectionManager = [profile dataCollectionManager];
  v5 = +[NSDate date];
  allKeys = [(NSDictionary *)self->_collectionIntervals allKeys];
  v7 = allKeys;
  if (allKeys)
  {
    v8 = allKeys;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = [NSSet setWithArray:v8];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4264;
  v10[3] = &unk_34810;
  v10[4] = self;
  [dataCollectionManager requestAggregationThroughDate:v5 types:v9 mode:0 options:1 completion:v10];
}

- (void)_queue_stop
{
  v5.receiver = self;
  v5.super_class = HDCurrentActivitySummaryQueryServer;
  [(HDCurrentActivitySummaryQueryServer *)&v5 _queue_stop];
  profile = [(HDCurrentActivitySummaryQueryServer *)self profile];
  currentActivitySummaryHelper = [profile currentActivitySummaryHelper];
  [currentActivitySummaryHelper removeObserver:self];
}

- (void)_queue_startDataCollection
{
  profile = [(HDCurrentActivitySummaryQueryServer *)self profile];
  dataCollectionManager = [profile dataCollectionManager];

  collectionIntervals = self->_collectionIntervals;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_44C8;
  v15[3] = &unk_34838;
  v16 = dataCollectionManager;
  selfCopy = self;
  v6 = dataCollectionManager;
  [(NSDictionary *)collectionIntervals enumerateKeysAndObjectsUsingBlock:v15];
  profile2 = [(HDCurrentActivitySummaryQueryServer *)self profile];
  dataCollectionManager2 = [profile2 dataCollectionManager];
  v9 = +[NSDate date];
  allKeys = [(NSDictionary *)self->_collectionIntervals allKeys];
  v11 = allKeys;
  if (allKeys)
  {
    v12 = allKeys;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v13 = [NSSet setWithArray:v12];
  [dataCollectionManager2 requestAggregationThroughDate:v9 types:v13 mode:1 options:1 completion:&stru_34878];

  v14.receiver = self;
  v14.super_class = HDCurrentActivitySummaryQueryServer;
  [(HDCurrentActivitySummaryQueryServer *)&v14 _queue_startDataCollection];
}

- (void)_queue_stopDataCollection
{
  v10.receiver = self;
  v10.super_class = HDCurrentActivitySummaryQueryServer;
  [(HDCurrentActivitySummaryQueryServer *)&v10 _queue_stopDataCollection];
  profile = [(HDCurrentActivitySummaryQueryServer *)self profile];
  dataCollectionManager = [profile dataCollectionManager];

  collectionIntervals = self->_collectionIntervals;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4614;
  v7[3] = &unk_34838;
  v8 = dataCollectionManager;
  selfCopy = self;
  v6 = dataCollectionManager;
  [(NSDictionary *)collectionIntervals enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  helperCopy = helper;
  summaryCopy = summary;
  v9 = summaryCopy;
  if (summaryCopy)
  {
    v19 = summaryCopy;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  clientProxy = [(HDCurrentActivitySummaryQueryServer *)self clientProxy];
  if (clientProxy && ([(HKActivitySummary *)self->_lastActivitySummary _allFieldsAreEqual:v9]& 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEBUG))
    {
      sub_1F040(v9, v13);
    }

    queryUUID = [(HDCurrentActivitySummaryQueryServer *)self queryUUID];
    [clientProxy client_deliverActivitySummaries:v10 queryUUID:queryUUID];

    v15 = [v9 copy];
    lastActivitySummary = self->_lastActivitySummary;
    self->_lastActivitySummary = v15;
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&def_21990, v12, OS_LOG_TYPE_INFO, "Not calling query client with todayActivitySummary: %@, same as _lastActivitySummary.", &v17, 0xCu);
    }
  }
}

@end