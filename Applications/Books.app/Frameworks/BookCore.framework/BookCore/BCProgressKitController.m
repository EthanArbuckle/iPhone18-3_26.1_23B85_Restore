@interface BCProgressKitController
+ (BCProgressKitController)sharedController;
- (BCProgressKitController)init;
- (BOOL)_isBookOpen:(id)a3;
- (id)_chapterHrefFromAssetID:(id)a3 chapterID:(id)a4;
- (id)_contextWithID:(id)a3;
- (id)_currentActivityForContext:(id)a3;
- (id)_getActiveChapterContext:(id)a3;
- (id)_getActiveSectionContext:(id)a3;
- (id)_getActiveWidgetContext:(id)a3;
- (id)_getOpenBookContext:(id)a3;
- (id)_universalLinkFromAssetID:(id)a3 cfi:(id)a4;
- (id)_updateCurrentChapterProgressForBook:(id)a3;
- (id)standardProgressCapability;
- (id)standardWidgetReportingCapability;
- (void)_activateChapterForBook:(id)a3 chapterID:(id)a4 title:(id)a5 currentPage:(int64_t)a6 chapterRange:(_NSRange)a7 completion:(id)a8;
- (void)_becomeActiveOnContext:(id)a3;
- (void)_deactivateCurrentWidget:(id)a3;
- (void)_resetWithAssetID:(id)a3;
- (void)_resignActiveContext;
- (void)_saveChanges;
- (void)_startActivity:(BOOL)a3 forContext:(id)a4;
- (void)_updateBookProgress:(id)a3 currentPage:(int64_t)a4 completion:(id)a5;
- (void)_updateContext:(id)a3 withProgress:(double)a4;
- (void)_updateContext:(id)a3 withScore:(double)a4 maxScore:(double)a5;
- (void)activateSectionForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 title:(id)a6 completion:(id)a7;
- (void)activateWidgetForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 title:(id)a7 trackingProvider:(id)a8 cfi:(id)a9 completion:(id)a10;
- (void)activeContextWithCompletion:(id)a3;
- (void)addReadingStatisticsController:(id)a3 forAssetID:(id)a4;
- (void)buildContextTree:(id)a3 forBook:(id)a4 completion:(id)a5;
- (void)contextForBook:(id)a3 title:(id)a4 completion:(id)a5;
- (void)deactivateCurrentWidgetForBook:(id)a3 completion:(id)a4;
- (void)didCloseBookWithAssetID:(id)a3 completion:(id)a4;
- (void)didOpenBookWithAssetID:(id)a3 version:(id)a4 title:(id)a5 pageCount:(int64_t)a6 storeID:(id)a7 coverImage:(id)a8 completion:(id)a9;
- (void)readingStatisticsDidChangeOnController:(id)a3 changes:(id)a4;
- (void)resetWidgetAttemptForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 completion:(id)a7;
- (void)updateBook:(id)a3 withTitle:(id)a4 completion:(id)a5;
- (void)updateMediaForBook:(id)a3 chapter:(id)a4 mediaCFI:(id)a5 progress:(id)a6 completion:(id)a7;
- (void)updateWidgetProgressForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 percent:(id)a7 completion:(id)a8;
- (void)updateWidgetScoreForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 score:(id)a7 total:(id)a8 completion:(id)a9;
@end

@implementation BCProgressKitController

+ (BCProgressKitController)sharedController
{
  if (qword_342150 != -1)
  {
    sub_1E52E8();
  }

  v3 = qword_342148;

  return v3;
}

- (BCProgressKitController)init
{
  v21.receiver = self;
  v21.super_class = BCProgressKitController;
  v2 = [(BCProgressKitController *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ibooks.BCClassKitController.work", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = dispatch_queue_create("com.apple.ibooks.BCClassKitController.access", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v6;

    v2->_progressKitDataStore = +[CLSDataStore shared];
    v8 = objc_opt_new();
    openBooks = v2->_openBooks;
    v2->_openBooks = v8;

    v10 = objc_opt_new();
    activeChapters = v2->_activeChapters;
    v2->_activeChapters = v10;

    v12 = objc_opt_new();
    activeSections = v2->_activeSections;
    v2->_activeSections = v12;

    v14 = objc_opt_new();
    activeWidgets = v2->_activeWidgets;
    v2->_activeWidgets = v14;

    v16 = objc_opt_new();
    activeTrackingProviders = v2->_activeTrackingProviders;
    v2->_activeTrackingProviders = v16;

    v18 = objc_opt_new();
    readingStatisticsControllers = v2->_readingStatisticsControllers;
    v2->_readingStatisticsControllers = v18;
  }

  return v2;
}

- (id)standardProgressCapability
{
  v2 = IMCommonCoreBundle();
  v3 = [v2 localizedStringForKey:@"Reports percentage progress in the activity." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v4 = [[CLSProgressReportingCapability alloc] initWithKind:1 details:v3];
  v5 = [NSSet setWithObject:v4];

  return v5;
}

- (id)standardWidgetReportingCapability
{
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"Reports score achieved and percentage progress in the activity." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v5 = [[CLSProgressReportingCapability alloc] initWithKind:4 details:v4];
  v6 = [(BCProgressKitController *)self standardProgressCapability];
  v7 = [v6 setByAddingObject:v5];

  return v7;
}

- (void)_resetWithAssetID:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23EDC;
  block[3] = &unk_2C89F8;
  block[4] = self;
  v12 = v4;
  v7 = v5;
  v13 = v7;
  v8 = v4;
  dispatch_async(workQueue, block);
  v9 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = BCProgressKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E52FC();
    }
  }
}

- (void)_saveChanges
{
  v3 = dispatch_semaphore_create(0);
  progressKitDataStore = self->_progressKitDataStore;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_24094;
  v8[3] = &unk_2C8A20;
  v5 = v3;
  v9 = v5;
  [(CLSDataStore *)progressKitDataStore saveWithCompletion:v8];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = BCProgressKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E52FC();
    }
  }
}

- (id)_chapterHrefFromAssetID:(id)a3 chapterID:(id)a4
{
  v5 = a4;
  v6 = [NSString stringWithFormat:@"%@:", a3];
  v7 = [v5 rangeOfString:v6];
  v9 = v8;

  if (v9)
  {
    v10 = [v5 substringFromIndex:&v7[v9]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_universalLinkFromAssetID:(id)a3 cfi:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [NSURL bu_urlWithAssetID:v5];
    v8 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

    [v8 setFragment:v6];
    v9 = [v8 URL];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextWithID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_24570;
  v20 = sub_24580;
  v21 = 0;
  if ([v4 length])
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v5 = [CLSQuery predicateForObjectsWithIdentifier:v4];
    v6 = dispatch_semaphore_create(0);
    v7 = [(BCProgressKitController *)self progressKitDataStore];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_24588;
    v13[3] = &unk_2C8A48;
    v15 = &v16;
    v8 = v6;
    v14 = v8;
    [v7 contextsMatchingPredicate:v5 completion:v13];

    v9 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = BCProgressKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E5398();
      }
    }
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (BOOL)_isBookOpen:(id)a3
{
  v4 = a3;
  v5 = [(BCProgressKitController *)self openBooks];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (id)_getOpenBookContext:(id)a3
{
  v4 = a3;
  v5 = [(BCProgressKitController *)self openBooks];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 identifier];
  v8 = [(BCProgressKitController *)self _contextWithID:v7];

  return v8;
}

- (id)_getActiveChapterContext:(id)a3
{
  v4 = a3;
  v5 = [(BCProgressKitController *)self activeChapters];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 identifier];
  v8 = [(BCProgressKitController *)self _contextWithID:v7];

  return v8;
}

- (id)_getActiveSectionContext:(id)a3
{
  v4 = a3;
  v5 = [(BCProgressKitController *)self activeSections];
  v6 = [v5 objectForKey:v4];

  v7 = [(BCProgressKitController *)self _contextWithID:v6];

  return v7;
}

- (id)_getActiveWidgetContext:(id)a3
{
  v4 = a3;
  v5 = [(BCProgressKitController *)self activeWidgets];
  v6 = [v5 objectForKey:v4];

  v7 = [(BCProgressKitController *)self _contextWithID:v6];

  return v7;
}

- (id)_currentActivityForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 currentActivity];

  if (!v4)
  {
    v5 = [v3 createNewActivity];
  }

  v6 = [v3 currentActivity];

  return v6;
}

- (void)_startActivity:(BOOL)a3 forContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = BCProgressKitLog();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        if (v9)
        {
          sub_1E549C(v13, v7);
        }

        v10 = [(BCProgressKitController *)self _currentActivityForContext:v7];
        [v10 start];
      }

      else
      {
        if (v9)
        {
          sub_1E5440(&v12, v7);
        }

        v10 = [(BCProgressKitController *)self _currentActivityForContext:v7];
        [v10 stop];
      }

      if ([v7 type] == &dword_8 + 3)
      {
        break;
      }

      v11 = [v7 parent];

      v7 = v11;
    }

    while (v11);
  }
}

- (void)_resignActiveContext
{
  v3 = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  if (v3)
  {
    v4 = v3;
    [v3 resignActive];
    [(BCProgressKitController *)self _startActivity:0 forContext:v4];
    v3 = v4;
  }
}

- (void)_becomeActiveOnContext:(id)a3
{
  v8 = a3;
  v4 = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  v5 = [v4 identifier];
  v6 = [v8 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    if (v4)
    {
      [(BCProgressKitController *)self _resignActiveContext];
    }

    [v8 becomeActive];
    [(BCProgressKitController *)self _startActivity:1 forContext:v8];
  }
}

- (void)_deactivateCurrentWidget:(id)a3
{
  v4 = a3;
  v5 = [(BCProgressKitController *)self _getActiveWidgetContext:v4];
  if (v5)
  {
    v6 = [(CLSDataStore *)self->_progressKitDataStore activeContext];
    v7 = [v6 identifier];
    v8 = [v5 identifier];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(BCProgressKitController *)self _currentActivityForContext:v6];
      v10 = [v9 isStarted];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(BCProgressKitController *)self activeTrackingProviders];
    v12 = [v11 objectForKeyedSubscript:v4];

    if (v10 && [v12 tracksScore] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_24D60;
      v18 = &unk_2C8A70;
      v19 = self;
      v20 = v5;
      [v12 queryScore:&v15];
    }

    else
    {
      [(BCProgressKitController *)self _resignActiveContext];
    }

    v13 = [(BCProgressKitController *)self activeWidgets:v15];
    [v13 removeObjectForKey:v4];

    v14 = [(BCProgressKitController *)self activeTrackingProviders];
    [v14 removeObjectForKey:v4];
  }
}

- (void)_updateContext:(id)a3 withProgress:(double)a4
{
  workQueue = self->_workQueue;
  v7 = a3;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  [(BCProgressKitController *)self _becomeActiveOnContext:v7];
  v8 = [(BCProgressKitController *)self _currentActivityForContext:v7];

  [v8 addProgressRangeFromStart:0.0 toEnd:a4];
  [(BCProgressKitController *)self _becomeActiveOnContext:v9];
  [(BCProgressKitController *)self _saveChanges];
}

- (void)_updateContext:(id)a3 withScore:(double)a4 maxScore:(double)a5
{
  workQueue = self->_workQueue;
  v9 = a3;
  dispatch_assert_queue_V2(workQueue);
  v15 = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  [(BCProgressKitController *)self _becomeActiveOnContext:v9];
  v10 = [CLSScoreItem alloc];
  v11 = [v9 identifier];
  v12 = [v9 identifier];
  v13 = [v10 initWithIdentifier:v11 title:v12 score:a4 maxScore:a5];

  v14 = [(BCProgressKitController *)self _currentActivityForContext:v9];

  [v14 addAdditionalActivityItem:v13];
  [v14 setPrimaryActivityItem:v13];
  [v14 addProgressRangeFromStart:0.0 toEnd:1.0];
  [(BCProgressKitController *)self _becomeActiveOnContext:v15];
  [(BCProgressKitController *)self _saveChanges];
}

- (void)readingStatisticsDidChangeOnController:(id)a3 changes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_24570;
  v20 = sub_24580;
  v21 = 0;
  v8 = [(BCProgressKitController *)self readingStatisticsControllers];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_25140;
  v13 = &unk_2C8A98;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  [v8 enumerateKeysAndObjectsUsingBlock:&v10];

  if ([v17[5] length])
  {
    [(BCProgressKitController *)self updateBookProgress:v17[5] completion:0];
  }

  _Block_object_dispose(&v16, 8);
}

- (void)buildContextTree:(id)a3 forBook:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_252A4;
  v15[3] = &unk_2C8598;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(workQueue, v15);
}

- (void)contextForBook:(id)a3 title:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_25AEC;
  v15[3] = &unk_2C8598;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

- (void)activeContextWithCompletion:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_25CD8;
  v7[3] = &unk_2C8790;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)didOpenBookWithAssetID:(id)a3 version:(id)a4 title:(id)a5 pageCount:(int64_t)a6 storeID:(id)a7 coverImage:(id)a8 completion:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_25EB8;
  block[3] = &unk_2C8AC0;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v30 = v18;
  v31 = a6;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(workQueue, block);
}

- (void)addReadingStatisticsController:(id)a3 forAssetID:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    [v7 addObserver:self];
    v8 = [(BCProgressKitController *)self readingStatisticsControllers];
    [v8 setObject:v7 forKey:v6];
  }
}

- (void)didCloseBookWithAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_262C4;
  block[3] = &unk_2C7B30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

- (void)_updateBookProgress:(id)a3 currentPage:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_266D8;
  v13[3] = &unk_2C8B10;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(workQueue, v13);
}

- (void)_activateChapterForBook:(id)a3 chapterID:(id)a4 title:(id)a5 currentPage:(int64_t)a6 chapterRange:(_NSRange)a7 completion:(id)a8
{
  length = a7.length;
  location = a7.location;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  workQueue = self->_workQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_26CEC;
  v23[3] = &unk_2C8B38;
  v23[4] = self;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v29 = length;
  v30 = a6;
  v27 = v17;
  v28 = location;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_async(workQueue, v23);
}

- (id)_updateCurrentChapterProgressForBook:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_24570;
  v33 = sub_24580;
  v34 = 0;
  v5 = [(BCProgressKitController *)self _getActiveChapterContext:v4];
  if (v5)
  {
    v6 = [(BCProgressKitController *)self readingStatisticsControllers];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      v8 = [v5 identifier];
      v9 = [(BCProgressKitController *)self _chapterHrefFromAssetID:v4 chapterID:v8];

      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = sub_24570;
      v27 = sub_24580;
      v28 = 0;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_2736C;
      v19[3] = &unk_2C8AE8;
      v21 = &v29;
      v22 = &v23;
      v10 = dispatch_semaphore_create(0);
      v20 = v10;
      [v7 tocEntryStatisticsForHref:v9 completion:v19];
      v11 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v10, v11))
      {
        v12 = BCProgressKitLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1E576C();
        }
      }

      if (!v30[5])
      {
        [v24[5] doubleValue];
        [(BCProgressKitController *)self _updateContext:v5 withProgress:?];
      }

      _Block_object_dispose(&v23, 8);
    }

    else
    {
      v13 = [(BCProgressKitController *)self activeChapters];
      v9 = [v13 objectForKeyedSubscript:v4];

      if ([v9 isProgressValid])
      {
        [v9 progress];
        [(BCProgressKitController *)self _updateContext:v5 withProgress:?];
      }

      else
      {
        v14 = BCProgressKitLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1E5928();
        }
      }
    }
  }

  v15 = v30[5];
  if (v15)
  {
    v16 = BCProgressKitLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1E595C();
    }

    v15 = v30[5];
  }

  v17 = v15;

  _Block_object_dispose(&v29, 8);

  return v17;
}

- (void)activateSectionForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 title:(id)a6 completion:(id)a7
{
  v7 = objc_retainBlock(a7);
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))(v7, 0);
    v7 = v8;
  }
}

- (void)updateMediaForBook:(id)a3 chapter:(id)a4 mediaCFI:(id)a5 progress:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  workQueue = self->_workQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_275A8;
  v23[3] = &unk_2C8B88;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(workQueue, v23);
}

- (void)activateWidgetForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 title:(id)a7 trackingProvider:(id)a8 cfi:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27D78;
  block[3] = &unk_2C8BB0;
  block[4] = self;
  v34 = v16;
  v35 = v21;
  v36 = v18;
  v37 = v17;
  v38 = v19;
  v39 = v22;
  v40 = v20;
  v41 = v23;
  v25 = v23;
  v26 = v20;
  v27 = v22;
  v28 = v19;
  v29 = v17;
  v30 = v18;
  v31 = v21;
  v32 = v16;
  dispatch_async(workQueue, block);
}

- (void)deactivateCurrentWidgetForBook:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28100;
  block[3] = &unk_2C7B30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

- (void)updateWidgetProgressForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 percent:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28350;
  block[3] = &unk_2C8BD8;
  block[4] = self;
  v28 = v14;
  v29 = v16;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v15;
  v25 = v16;
  v26 = v14;
  dispatch_async(workQueue, block);
}

- (void)updateWidgetScoreForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 score:(id)a7 total:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  workQueue = self->_workQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_285A0;
  v30[3] = &unk_2C8C00;
  v30[4] = self;
  v31 = v15;
  v32 = v17;
  v33 = v16;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v16;
  v28 = v17;
  v29 = v15;
  dispatch_async(workQueue, v30);
}

- (void)resetWidgetAttemptForBook:(id)a3 chapterID:(id)a4 sectionID:(id)a5 widgetID:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  workQueue = self->_workQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_287C0;
  v23[3] = &unk_2C8B88;
  v23[4] = self;
  v24 = v12;
  v25 = v14;
  v26 = v13;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v13;
  v21 = v14;
  v22 = v12;
  dispatch_async(workQueue, v23);
}

- (void)updateBook:(id)a3 withTitle:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_28970;
  v15[3] = &unk_2C8598;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

@end