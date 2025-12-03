@interface UGCPhotoAttributionPreferencesManager
+ (id)sharedManager;
- (UGCPhotoAttributionPreferencesManager)init;
- (id)_errorMessageForError:(int)error;
- (id)_errorsInResponse:(id)response;
- (id)observers;
- (void)_fetchPhotoAttributionPreferencesWithCompletion:(id)completion;
- (void)_finishWithPreferences:(id)preferences serverError:(id)error errorAsString:(id)string callback:(id)callback;
- (void)_storeFetchedPreferences:(id)preferences;
- (void)addObserver:(id)observer;
- (void)photoAttributionPreferencesWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)updatePhotoAttributionPreferencesAttributePhotos:(BOOL)photos attributionName:(id)name completion:(id)completion;
@end

@implementation UGCPhotoAttributionPreferencesManager

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(UGCPhotoAttributionPreferencesManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(UGCPhotoAttributionPreferencesManager *)self observers];
  [observers registerObserver:observerCopy];
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

- (id)_errorMessageForError:(int)error
{
  if (error <= 2)
  {
    v4 = *(&off_1016307E8 + error);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)_errorsInResponse:(id)response
{
  workQueue = self->_workQueue;
  responseCopy = response;
  dispatch_assert_queue_V2(workQueue);
  feedbackResult = [responseCopy feedbackResult];

  submissionResult = [feedbackResult submissionResult];

  photoAttributionPreferencesUpdateResult = [submissionResult photoAttributionPreferencesUpdateResult];
  if ([photoAttributionPreferencesUpdateResult errors])
  {
    errors = [photoAttributionPreferencesUpdateResult errors];
    v10 = sub_10099BC10();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *errors;
      v16 = 138412546;
      v17 = photoAttributionPreferencesUpdateResult;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Photo Preference update complete: %@ with update error %d", &v16, 0x12u);
    }

    v12 = [(UGCPhotoAttributionPreferencesManager *)self _errorMessageForError:*errors];
    [(UGCPhotoAttributionPreferencesManager *)self setUpdateError:v12];

    updateError = [(UGCPhotoAttributionPreferencesManager *)self updateError];
  }

  else
  {
    [(UGCPhotoAttributionPreferencesManager *)self setUpdateError:0];
    v14 = sub_10099BC10();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = photoAttributionPreferencesUpdateResult;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Photo Preference update complete %@ with no update error", &v16, 0xCu);
    }

    updateError = 0;
  }

  return updateError;
}

- (void)_finishWithPreferences:(id)preferences serverError:(id)error errorAsString:(id)string callback:(id)callback
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10099BDAC;
  v13[3] = &unk_101660380;
  preferencesCopy = preferences;
  errorCopy = error;
  stringCopy = string;
  callbackCopy = callback;
  v9 = stringCopy;
  v10 = errorCopy;
  v11 = preferencesCopy;
  v12 = callbackCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)updatePhotoAttributionPreferencesAttributePhotos:(BOOL)photos attributionName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10099BE90;
  v13[3] = &unk_101661068;
  photosCopy = photos;
  v14 = nameCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = nameCopy;
  dispatch_async(workQueue, v13);
}

- (void)_fetchPhotoAttributionPreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v6 = objc_alloc_init(GEORPFeedbackQueryParameters);
  [v5 setQueryParameters:v6];

  queryParameters = [v5 queryParameters];
  [queryParameters addFeedbackComponentType:7];

  v8 = [GEORPFeedbackRequest alloc];
  v9 = +[GEOMapService sharedService];
  defaultTraits = [v9 defaultTraits];
  v11 = [v8 initWithFeedbackRequestParameters:v5 traits:defaultTraits];

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
    v27 = completionCopy;
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
    defaultTraits2 = [v16 defaultTraits];
    v18 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v11 traits:defaultTraits2];
    ticket = self->_ticket;
    p_ticket = &self->_ticket;
    *p_ticket = v18;

    v21 = *p_ticket;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10099C9B0;
    v22[3] = &unk_101630780;
    objc_copyWeak(&v24, buf);
    v23 = completionCopy;
    [(MSPFeedbackSubmissionTicket *)v21 submitWithHandler:v22 networkActivity:0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

- (void)_storeFetchedPreferences:(id)preferences
{
  workQueue = self->_workQueue;
  preferencesCopy = preferences;
  dispatch_assert_queue_V2(workQueue);
  [(UGCPhotoAttributionPreferencesManager *)self setFetchedPreferences:preferencesCopy];

  v6 = +[NSDate now];
  [(UGCPhotoAttributionPreferencesManager *)self setDateOfFetchedPreferences:v6];

  observers = [(UGCPhotoAttributionPreferencesManager *)self observers];
  fetchedPreferences = [(UGCPhotoAttributionPreferencesManager *)self fetchedPreferences];
  [observers photoAttributionPreferencesDidChange:fetchedPreferences];
}

- (void)photoAttributionPreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10099CD7C;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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