@interface CalendarSeparationSource
- (CalendarSeparationSource)init;
- (CalendarSeparationSource)initWithEventStore:(id)a3;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
- (void)updateVisibilityTo:(int64_t)a3 onResource:(id)a4 withCompletion:(id)a5;
@end

@implementation CalendarSeparationSource

- (CalendarSeparationSource)init
{
  v3 = [[EKEventStore alloc] initWithEKOptions:132];
  v4 = [(CalendarSeparationSource *)self initWithEventStore:v3];

  return v4;
}

- (CalendarSeparationSource)initWithEventStore:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CalendarSeparationSource;
  v6 = [(CalendarSeparationSource *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

    v10 = dispatch_queue_create("com.apple.calendar.calendarSeparationCallbackQueue", v9);
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;

    v12 = objc_opt_new();
    sharedResources = v7->_sharedResources;
    v7->_sharedResources = v12;

    v14 = dispatch_group_create();
    fetchGroup = v7->_fetchGroup;
    v7->_fetchGroup = v14;
  }

  return v7;
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_workQueue;
  v6 = self->_fetchGroup;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_2574;
  v20[4] = sub_2584;
  v21 = 0;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_258C;
  block[3] = &unk_82E0;
  objc_copyWeak(&v18, &location);
  v16 = v5;
  v17 = v20;
  v15 = v6;
  v7 = v5;
  v8 = v6;
  dispatch_group_async(v8, v7, block);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2B0C;
  v10[3] = &unk_8308;
  objc_copyWeak(&v13, &location);
  v11 = v4;
  v12 = v20;
  v9 = v4;
  dispatch_group_notify(v8, v7, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(v20, 8);
}

- (void)stopSharing:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 stopSharingWithCompletion:v6];
  }

  else
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Unrecognized resource";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v7];
    v6[2](v6, v8);
  }
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2DB4;
  v12[3] = &unk_8358;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  dispatch_async(v10, v12);
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3224;
  block[3] = &unk_8380;
  block[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(v7, block);
}

- (void)updateVisibilityTo:(int64_t)a3 onResource:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 != 1)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Only supports making calendars private";
    v9 = &v16;
    v10 = &v15;
LABEL_6:
    v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v11];
    v8[2](v8, 0, v12);

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Unrecognized resource";
    v9 = &v14;
    v10 = &v13;
    goto LABEL_6;
  }

  [v7 makePrivateWithCompletion:v8];
LABEL_7:
}

@end