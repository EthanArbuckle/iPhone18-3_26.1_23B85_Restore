@interface BackgroundColorService
+ (BackgroundColorService)sharedInstance;
+ (id)makeWorkQueueUsingSchedulerProvider:(id)provider;
+ (unint64_t)_getDefaultBatchSize;
+ (unint64_t)batchSize;
- (BackgroundColorService)init;
- (id)fetchContactIdentifiersForContactsMissingBackgroundColors;
- (id)fetchContactsWithImageKeysForIdentifiers:(id)identifiers;
- (id)imageKeysToFetch;
- (id)interestedNotifications;
- (void)_updateBackgroundColorIfNeeded:(id)needed colorAnalyzer:(id)analyzer;
- (void)batchUpdateBackgroundColorsForContactIdentifiers:(id)identifiers;
- (void)handleCoalescedEvent:(id)event;
- (void)handleNotificationName:(id)name;
@end

@implementation BackgroundColorService

+ (BackgroundColorService)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C6B4;
  block[3] = &unk_100045580;
  block[4] = self;
  if (qword_10004E078 != -1)
  {
    dispatch_once(&qword_10004E078, block);
  }

  v2 = qword_10004E080;

  return v2;
}

+ (unint64_t)batchSize
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C780;
  block[3] = &unk_100045580;
  block[4] = self;
  if (qword_10004E088 != -1)
  {
    dispatch_once(&qword_10004E088, block);
  }

  return [qword_10004E090 unsignedIntegerValue];
}

+ (unint64_t)_getDefaultBatchSize
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"CNBackgroundColorServiceBatchSize", kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
  if (result <= 0 || keyExistsAndHasValidFormat == 0)
  {
    return 10;
  }

  return result;
}

- (BackgroundColorService)init
{
  v13.receiver = self;
  v13.super_class = BackgroundColorService;
  v2 = [(BackgroundColorService *)&v13 init];
  if (v2)
  {
    v3 = +[CNSchedulerProvider defaultProvider];
    v4 = [objc_opt_class() makeWorkQueueUsingSchedulerProvider:v3];
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = objc_alloc_init(CNPublishingSubject);
    coalescer = v2->_coalescer;
    v2->_coalescer = v6;

    v8 = [(CNPublishingSubject *)v2->_coalescer throttle:2 options:v3 schedulerProvider:5.0];
    v9 = [CNObserver observerWithWeakTarget:v2 resultSelector:"handleCoalescedEvent:"];
    v10 = [v8 subscribe:v9];
    coalescingToken = v2->_coalescingToken;
    v2->_coalescingToken = v10;
  }

  return v2;
}

+ (id)makeWorkQueueUsingSchedulerProvider:(id)provider
{
  v3 = [provider newSerialSchedulerWithName:@"com.apple.contactsd.BackgroundColorService"];
  v4 = [[CNQualityOfServiceSchedulerDecorator alloc] initWithScheduler:v3 qualityOfService:2];

  return v4;
}

- (void)handleCoalescedEvent:(id)event
{
  workQueue = [(BackgroundColorService *)self workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000CA18;
  v5[3] = &unk_1000455E8;
  v5[4] = self;
  [workQueue performBlock:v5];
}

- (id)interestedNotifications
{
  v4[0] = @"__ABDataBaseChangedByOtherProcessNotification";
  v4[1] = @"com.apple.datamigrator.migrationDidFinish";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)handleNotificationName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:@"__ABDataBaseChangedByOtherProcessNotification"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.datamigrator.migrationDidFinish"))
  {
    workQueue = [(BackgroundColorService *)self workQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000CBF0;
    v6[3] = &unk_1000455E8;
    v6[4] = self;
    [workQueue performBlock:v6];
  }
}

- (id)fetchContactIdentifiersForContactsMissingBackgroundColors
{
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  v4 = [CNContactFetchRequest alloc];
  v27 = CNContactIdentifierKey;
  v5 = [NSArray arrayWithObjects:&v27 count:1];
  v6 = [v4 initWithKeysToFetch:v5];

  v7 = +[CNContact predicateForContactsMissingBackgroundColors];
  [v6 setPredicate:v7];

  [v6 setUnifyResults:0];
  v8 = +[CNEnvironment currentEnvironment];
  contactStore = [v8 contactStore];

  v26 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10000CEB8;
  v24 = &unk_100045790;
  v10 = v2;
  v25 = v10;
  v11 = [contactStore enumerateContactsWithFetchRequest:v6 error:&v26 usingBlock:&v21];
  v12 = v26;
  if ((v11 & 1) == 0)
  {
    v13 = [CNContactsDaemonLogs backgroundColors:v21];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002C844(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (id)imageKeysToFetch
{
  v4[0] = CNContactImageDataKey;
  v4[1] = CNContactCropRectKey;
  v4[2] = CNContactThumbnailImageDataKey;
  v4[3] = CNContactImageBackgroundColorsDataKey;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (id)fetchContactsWithImageKeysForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[CNEnvironment currentEnvironment];
  contactStore = [v5 contactStore];

  v7 = [CNContactFetchRequest alloc];
  imageKeysToFetch = [(BackgroundColorService *)self imageKeysToFetch];
  v9 = [v7 initWithKeysToFetch:imageKeysToFetch];

  v10 = [CNContact predicateForContactsWithIdentifiers:identifiersCopy];

  [v9 setPredicate:v10];
  [v9 setUnifyResults:0];
  [v9 setMutableObjects:1];
  v23 = 0;
  v11 = [contactStore executeFetchRequest:v9 error:&v23];
  v12 = v23;
  value = [v11 value];

  if (value)
  {
    v14 = value;
  }

  else
  {
    v15 = +[CNContactsDaemonLogs backgroundColors];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002C8B0(v12, v15, v16, v17, v18, v19, v20, v21);
    }

    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (void)_updateBackgroundColorIfNeeded:(id)needed colorAnalyzer:(id)analyzer
{
  neededCopy = needed;
  analyzerCopy = analyzer;
  thumbnailImageData = [neededCopy thumbnailImageData];
  if (thumbnailImageData)
  {
    v8 = thumbnailImageData;
LABEL_4:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000D244;
    v10[3] = &unk_1000457B8;
    v11 = neededCopy;
    [analyzerCopy getBackgroundColorOnImageData:v8 bitmapFormat:0 reply:v10];

    goto LABEL_5;
  }

  imageData = [neededCopy imageData];
  [neededCopy cropRect];
  v8 = CNImageUtilsCroppedImageDataFromFullSizeImageData();

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)batchUpdateBackgroundColorsForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v10 = qword_10004E0A8;
  v43 = qword_10004E0A8;
  if (!qword_10004E0A8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000DAE0;
    v45 = &unk_100045110;
    v46 = &v40;
    sub_10000DAE0(buf, v3, v4, v5, v6, v7, v8, v9, v29);
    v10 = v41[3];
  }

  v11 = v10;
  _Block_object_dispose(&v40, 8);
  v31 = objc_opt_new();
  v12 = +[CNEnvironment currentEnvironment];
  contactStore = [v12 contactStore];

  v33 = [identifiersCopy _cn_balancedSlicesWithMaximumCount:{objc_msgSend(objc_opt_class(), "batchSize")}];
  v13 = 0;
  v34 = [v33 count] - 1;
  do
  {
    v14 = objc_autoreleasePoolPush();
    v15 = +[CNContactsDaemonLogs backgroundColors];
    v16 = os_signpost_id_generate(v15);

    v17 = +[CNContactsDaemonLogs backgroundColors];
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Batched Background Color calculation", "", buf, 2u);
    }

    v19 = [v33 objectAtIndexedSubscript:v13];
    v20 = [(BackgroundColorService *)self fetchContactsWithImageKeysForIdentifiers:v19];
    v21 = objc_alloc_init(CNSaveRequest);
    [v21 setSuppressChangeNotifications:v34 != v13];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000D80C;
    v37[3] = &unk_1000457E0;
    v37[4] = self;
    v22 = v31;
    v38 = v22;
    v23 = v21;
    v39 = v23;
    [v20 _cn_each:v37];
    v36 = 0;
    v24 = [contactStore executeSaveRequest:v23 error:&v36];
    v25 = v36;
    if ((v24 & 1) == 0)
    {
      v26 = +[CNContactsDaemonLogs backgroundColors];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to save background colors to contacts %@ with error %@", buf, 0x16u);
      }
    }

    v27 = +[CNContactsDaemonLogs backgroundColors];
    v28 = v27;
    if (v16 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v16, "Batched Background Color calculation", "", buf, 2u);
    }

    objc_autoreleasePoolPop(v14);
    ++v13;
  }

  while (v13 <= v34);
}

@end