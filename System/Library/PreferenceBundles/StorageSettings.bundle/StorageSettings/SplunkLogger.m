@interface SplunkLogger
- (NSURL)splunkUploadURL;
- (SplunkLogger)init;
- (void)logEventNamed:(id)a3 value:(id)a4 unique:(BOOL)a5;
- (void)postEvents;
@end

@implementation SplunkLogger

- (SplunkLogger)init
{
  v9.receiver = self;
  v9.super_class = SplunkLogger;
  v2 = [(SplunkLogger *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    events = v2->_events;
    v2->_events = v3;

    v2->_allowInvalidCert = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("iosStorage.SplunkLogger", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

- (NSURL)splunkUploadURL
{
  v3 = [(SplunkLogger *)self queue];
  dispatch_assert_queue_V2(v3);

  splunkUploadURL = self->_splunkUploadURL;
  if (!splunkUploadURL)
  {
    v5 = dispatch_semaphore_create(0);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_133E4;
    v21[4] = sub_133F4;
    v22 = 0;
    objc_initWeak(&location, self);
    v6 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v7 = objc_loadWeakRetained(&location);
    v8 = [NSURLSession sessionWithConfiguration:v6 delegate:v7 delegateQueue:0];

    v9 = [[NSURL alloc] initWithString:@"https://init.itunes.apple.com/bag.xml?ix=5"];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_133FC;
    v16 = &unk_2CFE0;
    v19 = v21;
    v17 = self;
    v10 = v5;
    v18 = v10;
    v11 = [v8 dataTaskWithURL:v9 completionHandler:&v13];
    [v11 resume];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

    objc_destroyWeak(&location);
    _Block_object_dispose(v21, 8);

    splunkUploadURL = self->_splunkUploadURL;
  }

  return splunkUploadURL;
}

- (void)postEvents
{
  v3 = [(SplunkLogger *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13764;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)logEventNamed:(id)a3 value:(id)a4 unique:(BOOL)a5
{
  v7 = a3;
  v8 = [a4 mutableCopy];
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = [NSNumber numberWithLong:1000 * v10];

  [v8 setObject:v11 forKeyedSubscript:@"eventTime"];
  [v8 setObject:@"xp_ios_storage_mgmt" forKeyedSubscript:@"topic"];
  [v8 setObject:v7 forKeyedSubscript:@"eventType"];

  v12 = [(SplunkLogger *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_13D0C;
  v14[3] = &unk_2CA38;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  dispatch_async(v12, v14);
}

@end