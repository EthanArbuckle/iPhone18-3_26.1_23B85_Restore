@interface BCProgressKitController
+ (BCProgressKitController)sharedController;
- (BCProgressKitController)init;
- (BOOL)_isBookOpen:(id)open;
- (id)_chapterHrefFromAssetID:(id)d chapterID:(id)iD;
- (id)_contextWithID:(id)d;
- (id)_currentActivityForContext:(id)context;
- (id)_getActiveChapterContext:(id)context;
- (id)_getActiveSectionContext:(id)context;
- (id)_getActiveWidgetContext:(id)context;
- (id)_getOpenBookContext:(id)context;
- (id)_universalLinkFromAssetID:(id)d cfi:(id)cfi;
- (id)_updateCurrentChapterProgressForBook:(id)book;
- (id)standardProgressCapability;
- (id)standardWidgetReportingCapability;
- (void)_activateChapterForBook:(id)book chapterID:(id)d title:(id)title currentPage:(int64_t)page chapterRange:(_NSRange)range completion:(id)completion;
- (void)_becomeActiveOnContext:(id)context;
- (void)_deactivateCurrentWidget:(id)widget;
- (void)_resetWithAssetID:(id)d;
- (void)_resignActiveContext;
- (void)_saveChanges;
- (void)_startActivity:(BOOL)activity forContext:(id)context;
- (void)_updateBookProgress:(id)progress currentPage:(int64_t)page completion:(id)completion;
- (void)_updateContext:(id)context withProgress:(double)progress;
- (void)_updateContext:(id)context withScore:(double)score maxScore:(double)maxScore;
- (void)activateSectionForBook:(id)book chapterID:(id)d sectionID:(id)iD title:(id)title completion:(id)completion;
- (void)activateWidgetForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID title:(id)title trackingProvider:(id)provider cfi:(id)cfi completion:(id)self0;
- (void)activeContextWithCompletion:(id)completion;
- (void)addReadingStatisticsController:(id)controller forAssetID:(id)d;
- (void)buildContextTree:(id)tree forBook:(id)book completion:(id)completion;
- (void)contextForBook:(id)book title:(id)title completion:(id)completion;
- (void)deactivateCurrentWidgetForBook:(id)book completion:(id)completion;
- (void)didCloseBookWithAssetID:(id)d completion:(id)completion;
- (void)didOpenBookWithAssetID:(id)d version:(id)version title:(id)title pageCount:(int64_t)count storeID:(id)iD coverImage:(id)image completion:(id)completion;
- (void)readingStatisticsDidChangeOnController:(id)controller changes:(id)changes;
- (void)resetWidgetAttemptForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID completion:(id)completion;
- (void)updateBook:(id)book withTitle:(id)title completion:(id)completion;
- (void)updateMediaForBook:(id)book chapter:(id)chapter mediaCFI:(id)i progress:(id)progress completion:(id)completion;
- (void)updateWidgetProgressForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID percent:(id)percent completion:(id)completion;
- (void)updateWidgetScoreForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID score:(id)score total:(id)total completion:(id)completion;
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
  standardProgressCapability = [(BCProgressKitController *)self standardProgressCapability];
  v7 = [standardProgressCapability setByAddingObject:v5];

  return v7;
}

- (void)_resetWithAssetID:(id)d
{
  dCopy = d;
  v5 = dispatch_semaphore_create(0);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23EDC;
  block[3] = &unk_2C89F8;
  block[4] = self;
  v12 = dCopy;
  v7 = v5;
  v13 = v7;
  v8 = dCopy;
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

- (id)_chapterHrefFromAssetID:(id)d chapterID:(id)iD
{
  iDCopy = iD;
  v6 = [NSString stringWithFormat:@"%@:", d];
  v7 = [iDCopy rangeOfString:v6];
  v9 = v8;

  if (v9)
  {
    v10 = [iDCopy substringFromIndex:&v7[v9]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_universalLinkFromAssetID:(id)d cfi:(id)cfi
{
  dCopy = d;
  cfiCopy = cfi;
  if ([dCopy length] && objc_msgSend(cfiCopy, "length"))
  {
    v7 = [NSURL bu_urlWithAssetID:dCopy];
    v8 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

    [v8 setFragment:cfiCopy];
    v9 = [v8 URL];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextWithID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_24570;
  v20 = sub_24580;
  v21 = 0;
  if ([dCopy length])
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v5 = [CLSQuery predicateForObjectsWithIdentifier:dCopy];
    v6 = dispatch_semaphore_create(0);
    progressKitDataStore = [(BCProgressKitController *)self progressKitDataStore];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_24588;
    v13[3] = &unk_2C8A48;
    v15 = &v16;
    v8 = v6;
    v14 = v8;
    [progressKitDataStore contextsMatchingPredicate:v5 completion:v13];

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

- (BOOL)_isBookOpen:(id)open
{
  openCopy = open;
  openBooks = [(BCProgressKitController *)self openBooks];
  v6 = [openBooks objectForKey:openCopy];

  return v6 != 0;
}

- (id)_getOpenBookContext:(id)context
{
  contextCopy = context;
  openBooks = [(BCProgressKitController *)self openBooks];
  v6 = [openBooks objectForKey:contextCopy];

  identifier = [v6 identifier];
  v8 = [(BCProgressKitController *)self _contextWithID:identifier];

  return v8;
}

- (id)_getActiveChapterContext:(id)context
{
  contextCopy = context;
  activeChapters = [(BCProgressKitController *)self activeChapters];
  v6 = [activeChapters objectForKey:contextCopy];

  identifier = [v6 identifier];
  v8 = [(BCProgressKitController *)self _contextWithID:identifier];

  return v8;
}

- (id)_getActiveSectionContext:(id)context
{
  contextCopy = context;
  activeSections = [(BCProgressKitController *)self activeSections];
  v6 = [activeSections objectForKey:contextCopy];

  v7 = [(BCProgressKitController *)self _contextWithID:v6];

  return v7;
}

- (id)_getActiveWidgetContext:(id)context
{
  contextCopy = context;
  activeWidgets = [(BCProgressKitController *)self activeWidgets];
  v6 = [activeWidgets objectForKey:contextCopy];

  v7 = [(BCProgressKitController *)self _contextWithID:v6];

  return v7;
}

- (id)_currentActivityForContext:(id)context
{
  contextCopy = context;
  currentActivity = [contextCopy currentActivity];

  if (!currentActivity)
  {
    createNewActivity = [contextCopy createNewActivity];
  }

  currentActivity2 = [contextCopy currentActivity];

  return currentActivity2;
}

- (void)_startActivity:(BOOL)activity forContext:(id)context
{
  activityCopy = activity;
  contextCopy = context;
  if (contextCopy)
  {
    v7 = contextCopy;
    do
    {
      v8 = BCProgressKitLog();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (activityCopy)
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

      parent = [v7 parent];

      v7 = parent;
    }

    while (parent);
  }
}

- (void)_resignActiveContext
{
  activeContext = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  if (activeContext)
  {
    v4 = activeContext;
    [activeContext resignActive];
    [(BCProgressKitController *)self _startActivity:0 forContext:v4];
    activeContext = v4;
  }
}

- (void)_becomeActiveOnContext:(id)context
{
  contextCopy = context;
  activeContext = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  identifier = [activeContext identifier];
  identifier2 = [contextCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    if (activeContext)
    {
      [(BCProgressKitController *)self _resignActiveContext];
    }

    [contextCopy becomeActive];
    [(BCProgressKitController *)self _startActivity:1 forContext:contextCopy];
  }
}

- (void)_deactivateCurrentWidget:(id)widget
{
  widgetCopy = widget;
  v5 = [(BCProgressKitController *)self _getActiveWidgetContext:widgetCopy];
  if (v5)
  {
    activeContext = [(CLSDataStore *)self->_progressKitDataStore activeContext];
    identifier = [activeContext identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      v9 = [(BCProgressKitController *)self _currentActivityForContext:activeContext];
      isStarted = [v9 isStarted];
    }

    else
    {
      isStarted = 0;
    }

    activeTrackingProviders = [(BCProgressKitController *)self activeTrackingProviders];
    v12 = [activeTrackingProviders objectForKeyedSubscript:widgetCopy];

    if (isStarted && [v12 tracksScore] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_24D60;
      v18 = &unk_2C8A70;
      selfCopy = self;
      v20 = v5;
      [v12 queryScore:&v15];
    }

    else
    {
      [(BCProgressKitController *)self _resignActiveContext];
    }

    v13 = [(BCProgressKitController *)self activeWidgets:v15];
    [v13 removeObjectForKey:widgetCopy];

    activeTrackingProviders2 = [(BCProgressKitController *)self activeTrackingProviders];
    [activeTrackingProviders2 removeObjectForKey:widgetCopy];
  }
}

- (void)_updateContext:(id)context withProgress:(double)progress
{
  workQueue = self->_workQueue;
  contextCopy = context;
  dispatch_assert_queue_V2(workQueue);
  activeContext = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  [(BCProgressKitController *)self _becomeActiveOnContext:contextCopy];
  v8 = [(BCProgressKitController *)self _currentActivityForContext:contextCopy];

  [v8 addProgressRangeFromStart:0.0 toEnd:progress];
  [(BCProgressKitController *)self _becomeActiveOnContext:activeContext];
  [(BCProgressKitController *)self _saveChanges];
}

- (void)_updateContext:(id)context withScore:(double)score maxScore:(double)maxScore
{
  workQueue = self->_workQueue;
  contextCopy = context;
  dispatch_assert_queue_V2(workQueue);
  activeContext = [(CLSDataStore *)self->_progressKitDataStore activeContext];
  [(BCProgressKitController *)self _becomeActiveOnContext:contextCopy];
  v10 = [CLSScoreItem alloc];
  identifier = [contextCopy identifier];
  identifier2 = [contextCopy identifier];
  v13 = [v10 initWithIdentifier:identifier title:identifier2 score:score maxScore:maxScore];

  v14 = [(BCProgressKitController *)self _currentActivityForContext:contextCopy];

  [v14 addAdditionalActivityItem:v13];
  [v14 setPrimaryActivityItem:v13];
  [v14 addProgressRangeFromStart:0.0 toEnd:1.0];
  [(BCProgressKitController *)self _becomeActiveOnContext:activeContext];
  [(BCProgressKitController *)self _saveChanges];
}

- (void)readingStatisticsDidChangeOnController:(id)controller changes:(id)changes
{
  controllerCopy = controller;
  changesCopy = changes;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_24570;
  v20 = sub_24580;
  v21 = 0;
  readingStatisticsControllers = [(BCProgressKitController *)self readingStatisticsControllers];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_25140;
  v13 = &unk_2C8A98;
  v9 = controllerCopy;
  v14 = v9;
  v15 = &v16;
  [readingStatisticsControllers enumerateKeysAndObjectsUsingBlock:&v10];

  if ([v17[5] length])
  {
    [(BCProgressKitController *)self updateBookProgress:v17[5] completion:0];
  }

  _Block_object_dispose(&v16, 8);
}

- (void)buildContextTree:(id)tree forBook:(id)book completion:(id)completion
{
  treeCopy = tree;
  bookCopy = book;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_252A4;
  v15[3] = &unk_2C8598;
  v16 = bookCopy;
  selfCopy = self;
  v18 = treeCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = treeCopy;
  v14 = bookCopy;
  dispatch_async(workQueue, v15);
}

- (void)contextForBook:(id)book title:(id)title completion:(id)completion
{
  bookCopy = book;
  titleCopy = title;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_25AEC;
  v15[3] = &unk_2C8598;
  v15[4] = self;
  v16 = bookCopy;
  v17 = titleCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = titleCopy;
  v14 = bookCopy;
  dispatch_async(workQueue, v15);
}

- (void)activeContextWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_25CD8;
  v7[3] = &unk_2C8790;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)didOpenBookWithAssetID:(id)d version:(id)version title:(id)title pageCount:(int64_t)count storeID:(id)iD coverImage:(id)image completion:(id)completion
{
  dCopy = d;
  titleCopy = title;
  iDCopy = iD;
  imageCopy = image;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_25EB8;
  block[3] = &unk_2C8AC0;
  block[4] = self;
  v26 = dCopy;
  v27 = titleCopy;
  v28 = iDCopy;
  v30 = completionCopy;
  countCopy = count;
  v29 = imageCopy;
  v20 = completionCopy;
  v21 = imageCopy;
  v22 = iDCopy;
  v23 = titleCopy;
  v24 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)addReadingStatisticsController:(id)controller forAssetID:(id)d
{
  if (controller)
  {
    dCopy = d;
    controllerCopy = controller;
    [controllerCopy addObserver:self];
    readingStatisticsControllers = [(BCProgressKitController *)self readingStatisticsControllers];
    [readingStatisticsControllers setObject:controllerCopy forKey:dCopy];
  }
}

- (void)didCloseBookWithAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_262C4;
  block[3] = &unk_2C7B30;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)_updateBookProgress:(id)progress currentPage:(int64_t)page completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_266D8;
  v13[3] = &unk_2C8B10;
  v13[4] = self;
  v14 = progressCopy;
  v15 = completionCopy;
  pageCopy = page;
  v11 = completionCopy;
  v12 = progressCopy;
  dispatch_async(workQueue, v13);
}

- (void)_activateChapterForBook:(id)book chapterID:(id)d title:(id)title currentPage:(int64_t)page chapterRange:(_NSRange)range completion:(id)completion
{
  length = range.length;
  location = range.location;
  bookCopy = book;
  dCopy = d;
  titleCopy = title;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_26CEC;
  v23[3] = &unk_2C8B38;
  v23[4] = self;
  v24 = bookCopy;
  v25 = dCopy;
  v26 = titleCopy;
  v29 = length;
  pageCopy = page;
  v27 = completionCopy;
  v28 = location;
  v19 = completionCopy;
  v20 = titleCopy;
  v21 = dCopy;
  v22 = bookCopy;
  dispatch_async(workQueue, v23);
}

- (id)_updateCurrentChapterProgressForBook:(id)book
{
  bookCopy = book;
  dispatch_assert_queue_V2(self->_workQueue);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_24570;
  v33 = sub_24580;
  v34 = 0;
  v5 = [(BCProgressKitController *)self _getActiveChapterContext:bookCopy];
  if (v5)
  {
    readingStatisticsControllers = [(BCProgressKitController *)self readingStatisticsControllers];
    v7 = [readingStatisticsControllers objectForKeyedSubscript:bookCopy];

    if (v7)
    {
      identifier = [v5 identifier];
      v9 = [(BCProgressKitController *)self _chapterHrefFromAssetID:bookCopy chapterID:identifier];

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
      activeChapters = [(BCProgressKitController *)self activeChapters];
      v9 = [activeChapters objectForKeyedSubscript:bookCopy];

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

- (void)activateSectionForBook:(id)book chapterID:(id)d sectionID:(id)iD title:(id)title completion:(id)completion
{
  v7 = objc_retainBlock(completion);
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))(v7, 0);
    v7 = v8;
  }
}

- (void)updateMediaForBook:(id)book chapter:(id)chapter mediaCFI:(id)i progress:(id)progress completion:(id)completion
{
  bookCopy = book;
  chapterCopy = chapter;
  iCopy = i;
  progressCopy = progress;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_275A8;
  v23[3] = &unk_2C8B88;
  v23[4] = self;
  v24 = bookCopy;
  v25 = chapterCopy;
  v26 = iCopy;
  v27 = progressCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = progressCopy;
  v20 = iCopy;
  v21 = chapterCopy;
  v22 = bookCopy;
  dispatch_async(workQueue, v23);
}

- (void)activateWidgetForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID title:(id)title trackingProvider:(id)provider cfi:(id)cfi completion:(id)self0
{
  bookCopy = book;
  dCopy = d;
  iDCopy = iD;
  widgetIDCopy = widgetID;
  titleCopy = title;
  providerCopy = provider;
  cfiCopy = cfi;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27D78;
  block[3] = &unk_2C8BB0;
  block[4] = self;
  v34 = bookCopy;
  v35 = providerCopy;
  v36 = iDCopy;
  v37 = dCopy;
  v38 = widgetIDCopy;
  v39 = cfiCopy;
  v40 = titleCopy;
  v41 = completionCopy;
  v25 = completionCopy;
  v26 = titleCopy;
  v27 = cfiCopy;
  v28 = widgetIDCopy;
  v29 = dCopy;
  v30 = iDCopy;
  v31 = providerCopy;
  v32 = bookCopy;
  dispatch_async(workQueue, block);
}

- (void)deactivateCurrentWidgetForBook:(id)book completion:(id)completion
{
  bookCopy = book;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28100;
  block[3] = &unk_2C7B30;
  block[4] = self;
  v12 = bookCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = bookCopy;
  dispatch_async(workQueue, block);
}

- (void)updateWidgetProgressForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID percent:(id)percent completion:(id)completion
{
  bookCopy = book;
  dCopy = d;
  iDCopy = iD;
  widgetIDCopy = widgetID;
  percentCopy = percent;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28350;
  block[3] = &unk_2C8BD8;
  block[4] = self;
  v28 = bookCopy;
  v29 = iDCopy;
  v30 = dCopy;
  v31 = widgetIDCopy;
  v32 = percentCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = percentCopy;
  v23 = widgetIDCopy;
  v24 = dCopy;
  v25 = iDCopy;
  v26 = bookCopy;
  dispatch_async(workQueue, block);
}

- (void)updateWidgetScoreForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID score:(id)score total:(id)total completion:(id)completion
{
  bookCopy = book;
  dCopy = d;
  iDCopy = iD;
  widgetIDCopy = widgetID;
  scoreCopy = score;
  totalCopy = total;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_285A0;
  v30[3] = &unk_2C8C00;
  v30[4] = self;
  v31 = bookCopy;
  v32 = iDCopy;
  v33 = dCopy;
  v34 = widgetIDCopy;
  v35 = scoreCopy;
  v36 = totalCopy;
  v37 = completionCopy;
  v23 = completionCopy;
  v24 = totalCopy;
  v25 = scoreCopy;
  v26 = widgetIDCopy;
  v27 = dCopy;
  v28 = iDCopy;
  v29 = bookCopy;
  dispatch_async(workQueue, v30);
}

- (void)resetWidgetAttemptForBook:(id)book chapterID:(id)d sectionID:(id)iD widgetID:(id)widgetID completion:(id)completion
{
  bookCopy = book;
  dCopy = d;
  iDCopy = iD;
  widgetIDCopy = widgetID;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_287C0;
  v23[3] = &unk_2C8B88;
  v23[4] = self;
  v24 = bookCopy;
  v25 = iDCopy;
  v26 = dCopy;
  v27 = widgetIDCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = widgetIDCopy;
  v20 = dCopy;
  v21 = iDCopy;
  v22 = bookCopy;
  dispatch_async(workQueue, v23);
}

- (void)updateBook:(id)book withTitle:(id)title completion:(id)completion
{
  bookCopy = book;
  titleCopy = title;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_28970;
  v15[3] = &unk_2C8598;
  v15[4] = self;
  v16 = bookCopy;
  v17 = titleCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = titleCopy;
  v14 = bookCopy;
  dispatch_async(workQueue, v15);
}

@end