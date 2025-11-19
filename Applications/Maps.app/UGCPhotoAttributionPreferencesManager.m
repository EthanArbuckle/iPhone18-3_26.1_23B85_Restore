@interface UGCPhotoAttributionPreferencesManager
+ (id)sharedManager;
- (UGCPhotoAttributionPreferencesManager)init;
- (id)_errorMessageForError:(int)a3;
- (id)_errorsInResponse:(id)a3;
- (id)observers;
- (void)_fetchPhotoAttributionPreferencesWithCompletion:(id)a3;
- (void)_finishWithPreferences:(id)a3 serverError:(id)a4 errorAsString:(id)a5 callback:(id)a6;
- (void)_storeFetchedPreferences:(id)a3;
- (void)addObserver:(id)a3;
- (void)photoAttributionPreferencesWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)updatePhotoAttributionPreferencesAttributePhotos:(BOOL)a3 attributionName:(id)a4 completion:(id)a5;
@end

@implementation UGCPhotoAttributionPreferencesManager

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(UGCPhotoAttributionPreferencesManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(UGCPhotoAttributionPreferencesManager *)self observers];
  [v5 registerObserver:v4];
}

- (id)observers
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10099B928;
  v8 = sub_10099B938;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)_errorMessageForError:(int)a3
{
  if (a3 <= 2)
  {
    v4 = *(&off_1016307E8 + a3);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)_errorsInResponse:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [v5 feedbackResult];

  v7 = [v6 submissionResult];

  v8 = [v7 photoAttributionPreferencesUpdateResult];
  if ([v8 errors])
  {
    v9 = [v8 errors];
    v10 = sub_10099BC10();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *v9;
      v16 = 138412546;
      v17 = v8;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Photo Preference update complete: %@ with update error %d", &v16, 0x12u);
    }

    v12 = [(UGCPhotoAttributionPreferencesManager *)self _errorMessageForError:*v9];
    [(UGCPhotoAttributionPreferencesManager *)self setUpdateError:v12];

    v13 = [(UGCPhotoAttributionPreferencesManager *)self updateError];
  }

  else
  {
    [(UGCPhotoAttributionPreferencesManager *)self setUpdateError:0];
    v14 = sub_10099BC10();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Photo Preference update complete %@ with no update error", &v16, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (void)_finishWithPreferences:(id)a3 serverError:(id)a4 errorAsString:(id)a5 callback:(id)a6
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10099BDAC;
  v13[3] = &unk_101660380;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v9 = v16;
  v10 = v15;
  v11 = v14;
  v12 = v17;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)updatePhotoAttributionPreferencesAttributePhotos:(BOOL)a3 attributionName:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10099BE90;
  v13[3] = &unk_101661068;
  v17 = a3;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(workQueue, v13);
}

- (void)_fetchPhotoAttributionPreferencesWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v6 = objc_alloc_init(GEORPFeedbackQueryParameters);
  [v5 setQueryParameters:v6];

  v7 = [v5 queryParameters];
  [v7 addFeedbackComponentType:7];

  v8 = [GEORPFeedbackRequest alloc];
  v9 = +[GEOMapService sharedService];
  v10 = [v9 defaultTraits];
  v11 = [v8 initWithFeedbackRequestParameters:v5 traits:v10];

  v28 = 0;
  v12 = [UGCCredentialsBuilder buildICloudUserCredentialsWithError:&v28];
  v13 = v28;
  if (v13)
  {
    v14 = sub_10099BC10();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create iCloud user info with error %@.  Will not perform submission lookup.", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10099C994;
    block[3] = &unk_101661090;
    v27 = v4;
    v26 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [v11 setUserInfo:v12];
    v15 = sub_10099BC10();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Created request %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    [(MSPFeedbackSubmissionTicket *)self->_ticket cancel];
    v16 = +[GEOMapService sharedService];
    v17 = [v16 defaultTraits];
    v18 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v11 traits:v17];
    ticket = self->_ticket;
    p_ticket = &self->_ticket;
    *p_ticket = v18;

    v21 = *p_ticket;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10099C9B0;
    v22[3] = &unk_101630780;
    objc_copyWeak(&v24, buf);
    v23 = v4;
    [(MSPFeedbackSubmissionTicket *)v21 submitWithHandler:v22 networkActivity:0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

- (void)_storeFetchedPreferences:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  [(UGCPhotoAttributionPreferencesManager *)self setFetchedPreferences:v5];

  v6 = +[NSDate now];
  [(UGCPhotoAttributionPreferencesManager *)self setDateOfFetchedPreferences:v6];

  v8 = [(UGCPhotoAttributionPreferencesManager *)self observers];
  v7 = [(UGCPhotoAttributionPreferencesManager *)self fetchedPreferences];
  [v8 photoAttributionPreferencesDidChange:v7];
}

- (void)photoAttributionPreferencesWithCompletion:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10099CD7C;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (UGCPhotoAttributionPreferencesManager)init
{
  v9.receiver = self;
  v9.super_class = UGCPhotoAttributionPreferencesManager;
  v2 = [(UGCPhotoAttributionPreferencesManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.UGCPhotoAttributionPreferencesManagerQueue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = geo_isolater_create();
    observersIsolator = v2->_observersIsolator;
    v2->_observersIsolator = v6;
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_10195DF60 != -1)
  {
    dispatch_once(&qword_10195DF60, &stru_101630758);
  }

  v3 = qword_10195DF58;

  return v3;
}

@end