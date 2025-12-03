@interface PDBiomeClient
- (BOOL)checkScheduledTask:(id)task completionType:(int64_t)type;
- (BOOL)triggerScheduledTask:(int64_t)task targetInterval:(double)interval;
- (PDBiomeClient)init;
- (double)calculateDelta:(id)delta usage:(id)usage completionType:(int64_t)type isTryAgain:(BOOL)again tryAgainDate:(id)date;
- (double)calculateDeltaOnAppClose:(id)close endDate:(id)date attachment:(id)attachment tryAgainDate:(id)againDate database:(id)database markDone:(BOOL *)done;
- (double)rescheduleActivityDoneTimer:(double)timer attachment:(id)attachment tryAgainDate:(id)date;
- (double)rescheduleHalfWayTimer:(double)timer attachment:(id)attachment tryAgainDate:(id)date;
- (id)localizedTimeInterval:(double)interval calendar:(id)calendar;
- (id)tryAgainDateFromCollaborationState:(id)state;
- (int64_t)biomeSubscriptionStatus;
- (void)attachmentWillChange:(id)change;
- (void)cancelSubscription;
- (void)cleanUpScheduledTaskTriggers:(int64_t)triggers;
- (void)createScheduleTasks:(id)tasks;
- (void)generateTimeIntervalForActivity:(id)activity startDate:(id)date interval:(double)interval;
- (void)handleTimeExpectationReached:(id)reached appUsage:(id)usage interval:(double)interval;
- (void)markDone:(id)done then:(id)then;
- (void)presentAppBasedAssignmentCompletedBanner:(id)banner;
- (void)presentHalfWayCompletedBanner:(id)banner;
- (void)presentProgressBannerWithAttachmentID:(id)d;
- (void)rescheduleTask:(int64_t)task current:(id)current targetDate:(id)date;
- (void)scheduleActivityDone:(id)done appUsage:(id)usage timeInterval:(double)interval saveTrigger:(BOOL)trigger;
- (void)scheduleHalfWayDoneNotification:(double)notification attachmentID:(id)d saveTrigger:(BOOL)trigger;
- (void)startSubscription;
- (void)updateAppBasedUsageIfNeeded:(id)needed isStarting:(BOOL)starting currentTimeStamp:(id)stamp;
@end

@implementation PDBiomeClient

- (PDBiomeClient)init
{
  v21.receiver = self;
  v21.super_class = PDBiomeClient;
  v2 = [(PDBiomeClient *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.progressd.Biome.queue", v3);
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v4;

    v6 = dispatch_queue_create("com.apple.progressd.schedulerQ", 0);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v6;

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [NSString stringWithFormat:@"com.apple.progressd.allDoneTask.%@", v9];
    scheduleMarkDoneTaskID = v2->_scheduleMarkDoneTaskID;
    v2->_scheduleMarkDoneTaskID = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [NSString stringWithFormat:@"com.apple.progressd.halfDoneTask.%@", v13];
    scheduleHalfDoneTaskID = v2->_scheduleHalfDoneTaskID;
    v2->_scheduleHalfDoneTaskID = v14;

    v16 = objc_opt_new();
    bannerTimerMap = v2->_bannerTimerMap;
    v2->_bannerTimerMap = v16;

    currentAttachmentID = v2->_currentAttachmentID;
    v2->_currentAttachmentID = 0;

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"attachmentWillChange:" name:@"PDDatabaseEntityAttachmentWillChangeNotification" object:0];
  }

  return v2;
}

- (void)cancelSubscription
{
  CLSInitLog();
  v3 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop Biome subscription", v4, 2u);
  }

  [(BPSSink *)self->_sink cancel];
}

- (void)startSubscription
{
  CLSInitLog();
  v3 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start Biome subscription", buf, 2u);
  }

  v4 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.progressd.Biome" targetQueue:self->_biomeQueue];
  v5 = BiomeLibrary();
  v6 = [v5 App];
  inFocus = [v6 InFocus];
  dSLPublisher = [inFocus DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A9054;
  v12[3] = &unk_1002042F8;
  v12[4] = self;
  v10 = [v9 sinkWithCompletion:&stru_1002042D0 receiveInput:v12];
  sink = self->_sink;
  self->_sink = v10;
}

- (int64_t)biomeSubscriptionStatus
{
  result = self->_sink;
  if (result)
  {
    status = [result status];
    state = [status state];

    if (state < 3)
    {
      return state + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)updateAppBasedUsageIfNeeded:(id)needed isStarting:(BOOL)starting currentTimeStamp:(id)stamp
{
  startingCopy = starting;
  neededCopy = needed;
  stampCopy = stamp;
  database = [(PDBiomeClient *)self database];
  v11 = database;
  if (!database || (sub_1000717E8(database) & 2) == 0)
  {
    v12 = sub_100087BE8(v11, neededCopy);
    v13 = v12;
    if (startingCopy)
    {
      if (v12)
      {
        v14 = *(v12 + 16);
        v15 = sub_100087CC8(v11, v14);

        v16 = *(v13 + 32);
        if (neededCopy | v16)
        {
          v17 = v16;
          v18 = *(v13 + 32);
          v19 = v18;
          if (neededCopy && v18)
          {
            v20 = *(v13 + 32);
            if ([v20 isEqualToString:neededCopy])
            {
              v57 = sub_1000881B0(v11, v15);

              if (!v57)
              {
                goto LABEL_50;
              }

              goto LABEL_29;
            }
          }
        }

        else if (sub_1000881B0(v11, v15))
        {
LABEL_29:
          CLSInitLog();
          v37 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = neededCopy;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Start tracking progress for app with bundleID: %@", buf, 0xCu);
          }

LABEL_31:
          objc_storeStrong((v13 + 40), stamp);
          [v11 insertOrUpdateObject:v13];
          [(PDBiomeClient *)self createScheduleTasks:v13];
          v38 = *(v13 + 16);
          v39 = sub_100087CC8(v11, v38);

          if (v39)
          {
            objc_storeStrong(&self->_currentAttachmentID, v39);
            [(PDBiomeClient *)self presentProgressBannerWithAttachmentID:v39];
          }
        }

LABEL_50:

        goto LABEL_51;
      }

      v34 = sub_1000879B4(v11, neededCopy);
      v13 = v34;
      if (v34 && sub_1000878C0(v34) && (*(v13 + 9) & 1) == 0)
      {
        v35 = *(v13 + 16);
        v15 = sub_100087CC8(v11, v35);

        if (sub_1000881B0(v11, v15))
        {
          CLSInitLog();
          v36 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = neededCopy;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Resume progress tracking for app with bundleID: %@", buf, 0xCu);
          }

          *(v13 + 8) = 1;
          goto LABEL_31;
        }

        goto LABEL_50;
      }
    }

    else if (v12)
    {
      v21 = *(v12 + 32);
      if (neededCopy | v21)
      {
        v40 = v21;
        v41 = *(v13 + 32);
        v42 = v41;
        if (!neededCopy || !v41)
        {

          goto LABEL_39;
        }

        v43 = *(v13 + 32);
        v44 = [v43 isEqualToString:neededCopy];

        if (!v44)
        {
          goto LABEL_39;
        }
      }

      CLSInitLog();
      v22 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = neededCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Terminate progress tracking for app with bundleID: %@", buf, 0xCu);
      }

      currentAttachmentID = self->_currentAttachmentID;
      self->_currentAttachmentID = 0;

      *(v13 + 8) = 0;
      objc_storeStrong((v13 + 48), stamp);
      [v11 insertOrUpdateObject:v13];
      v24 = sub_10006DCEC();
      sub_10006DEB8(v24, self->_scheduleHalfDoneTaskID);

      v25 = sub_10006DCEC();
      sub_10006DEB8(v25, self->_scheduleMarkDoneTaskID);

      [(PDBiomeClient *)self cleanUpScheduledTaskTriggers:1];
      [(PDBiomeClient *)self cleanUpScheduledTaskTriggers:2];
      v26 = *(v13 + 16);
      v15 = sub_100087CC8(v11, v26);

      if (sub_1000881B0(v11, v15))
      {
        [v11 select:objc_opt_class() identity:v15];
        v58 = v62 = 0;
        v27 = sub_100160CEC(v11, v58, &v62);
        v28 = v62;
        if (v28)
        {
          CLSInitLog();
          v29 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v64 = v28;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to query attachment state, error: %@", buf, 0xCu);
          }
        }

        v55 = v28;
        if (v27)
        {
          v30 = objc_opt_class();
          objectID = [v58 objectID];
          v70[0] = objectID;
          v70[1] = &off_10021B6A8;
          v32 = [NSArray arrayWithObjects:v70 count:2];
          v33 = [v11 select:v30 where:@"parentObjectID = ? and domain = ?" bindings:v32];

          v56 = [(PDBiomeClient *)self tryAgainDateFromCollaborationState:v33];
        }

        else
        {
          v56 = 0;
        }

        v45 = objc_opt_class();
        v46 = *(v13 + 24);
        v69 = v46;
        v47 = [NSArray arrayWithObjects:&v69 count:1];
        v48 = [v11 select:v45 where:@"objectID = ?" bindings:v47];

        if (v48)
        {
          v61 = 0;
          v49 = *(v13 + 40);
          v50 = *(v13 + 40);
          v51 = *(v13 + 48);
          [(PDBiomeClient *)self calculateDeltaOnAppClose:v50 endDate:v51 attachment:v58 tryAgainDate:v56 database:v11 markDone:&v61];
          v53 = v52;

          [(PDBiomeClient *)self generateTimeIntervalForActivity:v48 startDate:v49 interval:v53];
          CLSInitLog();
          v54 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v64 = neededCopy;
            v65 = 2048;
            v66 = v53;
            v67 = 2112;
            v68 = v15;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "App (%@) closed, generate time interval with duration: %f for attachmentID: %@", buf, 0x20u);
          }

          if (v61 == 1)
          {
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000A99E8;
            v59[3] = &unk_100204320;
            v59[4] = self;
            v60 = v15;
            [(PDBiomeClient *)self markDone:v60 then:v59];
          }
        }
      }

      goto LABEL_50;
    }

LABEL_39:
    v15 = 0;
    goto LABEL_50;
  }

LABEL_51:
}

- (void)generateTimeIntervalForActivity:(id)activity startDate:(id)date interval:(double)interval
{
  dateCopy = date;
  activityCopy = activity;
  _init = [[CLSTimeInterval alloc] _init];
  objectID = [activityCopy objectID];
  [_init setParentObjectID:objectID];

  [_init setModified:1];
  appIdentifier = [activityCopy appIdentifier];

  [_init setAppIdentifier:appIdentifier];
  [_init setStartTime:dateCopy];

  [_init setLength:interval];
  database = [(PDBiomeClient *)self database];
  v15 = _init;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [database saveAndSyncObjects:v14];
}

- (void)handleTimeExpectationReached:(id)reached appUsage:(id)usage interval:(double)interval
{
  reachedCopy = reached;
  database = [(PDBiomeClient *)self database];
  v9 = sub_1000A7C68(database, reachedCopy);
  if (v9)
  {
    v10 = [database select:objc_opt_class() identity:v9];
    v11 = objc_opt_class();
    v26 = v9;
    v12 = [NSArray arrayWithObjects:&v26 count:1];
    v13 = [database select:v11 where:@"activityID = ?" bindings:v12];

    if (v13 && (*(v13 + 8) & 1) != 0)
    {
      *(v13 + 8) = 0;
      v14 = +[NSDate now];
      sub_10003F68C(v13, v14);

      [database insertOrUpdateObject:v13];
      v15 = *(v13 + 40);
      [(PDBiomeClient *)self generateTimeIntervalForActivity:v10 startDate:v15 interval:interval];

      CLSInitLog();
      v16 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = *(v13 + 32);
        v20 = 138412802;
        v21 = v18;
        v22 = 2048;
        intervalCopy = interval;
        v24 = 2112;
        v25 = reachedCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%@) times up, generate time interval with duration: %f for attachmentID: %@", &v20, 0x20u);
      }
    }

    else
    {
      CLSInitLog();
      v19 = CLSLogHandout;
      if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = reachedCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "All done scheduled task triggered, AppStatus is already marked as closed, no new time interval created, attachmentID = %@", &v20, 0xCu);
      }
    }
  }
}

- (void)scheduleHalfWayDoneNotification:(double)notification attachmentID:(id)d saveTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  dCopy = d;
  database = [(PDBiomeClient *)self database];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AA028;
  v16[3] = &unk_100204348;
  v10 = dCopy;
  v17 = v10;
  objc_copyWeak(&v18, &location);
  v11 = objc_retainBlock(v16);
  CLSInitLog();
  v12 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v10;
    v22 = 2048;
    notificationCopy = notification;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scheduling half way done scheduled task, attachmentID = %@, delay = %f", buf, 0x16u);
  }

  v13 = [[PDTaskSchedulerBlockTask alloc] initWithIdentifier:self->_scheduleHalfDoneTaskID queue:self->_taskQueue block:v11];
  [(PDTaskSchedulerBlockTask *)v13 setDelay:notification];
  [(PDTaskSchedulerBlockTask *)v13 setGracePeriod:0];
  [(PDTaskSchedulerBlockTask *)v13 setRepeating:0];
  [(PDTaskSchedulerBlockTask *)v13 setRequiredNetworkState:0];
  v14 = sub_10006DCEC();
  sub_10006E4A0(v14, v13);

  if (triggerCopy)
  {
    v15 = +[NSDate now];
    sub_10016A5AC(database, v15, @"halfDoneScheduledDate");

    sub_10016A258(database, @"halfDoneTargetedTimeInterval", notification);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)scheduleActivityDone:(id)done appUsage:(id)usage timeInterval:(double)interval saveTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  doneCopy = done;
  usageCopy = usage;
  database = [(PDBiomeClient *)self database];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AA384;
  v20[3] = &unk_100204370;
  v13 = doneCopy;
  v21 = v13;
  v23[1] = *&interval;
  objc_copyWeak(v23, &location);
  v14 = usageCopy;
  v22 = v14;
  v15 = objc_retainBlock(v20);
  CLSInitLog();
  v16 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v13;
    v27 = 2048;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scheduling mark done scheduled task, attachmentID = %@, delay = %f", buf, 0x16u);
  }

  v17 = [[PDTaskSchedulerBlockTask alloc] initWithIdentifier:self->_scheduleMarkDoneTaskID queue:self->_taskQueue block:v15];
  [(PDTaskSchedulerBlockTask *)v17 setDelay:interval];
  [(PDTaskSchedulerBlockTask *)v17 setGracePeriod:0];
  [(PDTaskSchedulerBlockTask *)v17 setRepeating:0];
  [(PDTaskSchedulerBlockTask *)v17 setRequiredNetworkState:0];
  v18 = sub_10006DCEC();
  sub_10006E4A0(v18, v17);

  if (triggerCopy)
  {
    v19 = +[NSDate now];
    sub_10016A5AC(database, v19, @"allDoneScheduledDate");

    sub_10016A258(database, @"allDoneTargetedTimeInterval", interval);
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)markDone:(id)done then:(id)then
{
  doneCopy = done;
  thenCopy = then;
  database = [(PDBiomeClient *)self database];
  v9 = objc_opt_new();
  v10 = objc_opt_class();
  v37 = doneCopy;
  v11 = [NSArray arrayWithObjects:&v37 count:1];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000AA908;
  v34[3] = &unk_100204398;
  v12 = v9;
  v35 = v12;
  [database selectAll:v10 where:@"parentObjectID = ?" bindings:v11 block:v34];

  v13 = [database select:objc_opt_class() identity:doneCopy];
  v14 = objc_opt_class();
  parentObjectID = [v13 parentObjectID];
  v36 = parentObjectID;
  v16 = [NSArray arrayWithObjects:&v36 count:1];
  v17 = [database select:v14 where:@"objectID = ?" bindings:v16];

  if (v17 && v13)
  {
    v18 = sub_1000711FC(database);

    if (v18)
    {
      v19 = sub_1000711FC(database);
      objectID = [v19 objectID];

      v30 = objectID;
      v29 = [PDSchoolworkCollaborationStateAdaptor setActivityState:2 forAttachment:v13 forHandout:v17 senderPersonID:objectID withStates:v12];
      v21 = [NSMutableArray arrayWithObjects:0];
      v22 = sub_1000D8698();
      operationsManager = [v22 operationsManager];

      if (operationsManager)
      {
        v24 = [PDCollaborationStateChangePublish alloc];
        database2 = [(PDBiomeClient *)self database];
        v26 = sub_1001596A4(v24, database2, v21);

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000AA914;
        v31[3] = &unk_1002026F8;
        v32 = thenCopy;
        [v26 addOnFinishBlock:v31];
        sub_1001232E0(operationsManager, v26);
      }

      else
      {
        CLSInitLog();
        v28 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
        }

        (*(thenCopy + 2))(thenCopy, 0);
      }
    }

    else
    {
      CLSInitLog();
      v27 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Must be signed in to publish state changes.", buf, 2u);
      }

      (*(thenCopy + 2))(thenCopy, 0);
    }
  }
}

- (void)createScheduleTasks:(id)tasks
{
  tasksCopy = tasks;
  database = [(PDBiomeClient *)self database];
  if (tasksCopy)
  {
    v6 = tasksCopy[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = sub_100087CC8(database, v7);

  v9 = [database select:objc_opt_class() identity:v8];
  if (v9)
  {
    v19 = 0;
    v10 = sub_100160CEC(database, v9, &v19);
    v11 = v19;
    if (v11 && (CLSInitLog(), v12 = CLSLogDefault, os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to query attachment state, error: %@", buf, 0xCu);
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else if (v10)
    {
LABEL_7:
      v13 = objc_opt_class();
      objectID = [v9 objectID];
      v20 = objectID;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
      [database select:v13 where:@"parentObjectID = ? and domain = 1" bindings:v15];
      v16 = v18 = v11;

      v17 = [(PDBiomeClient *)self tryAgainDateFromCollaborationState:v16];

      v11 = v18;
LABEL_10:
      [(PDBiomeClient *)self scheduleHalfWayNotificationIfNeeded:v9 appUsage:tasksCopy isTryAgain:v10 tryAgainDate:v17];
      [(PDBiomeClient *)self scheduleMarkDoneIfNeeded:v9 appUsage:tasksCopy isTryAgain:v10 tryAgainDate:v17];

      goto LABEL_11;
    }

    v17 = 0;
    goto LABEL_10;
  }

LABEL_11:
}

- (double)calculateDelta:(id)delta usage:(id)usage completionType:(int64_t)type isTryAgain:(BOOL)again tryAgainDate:(id)date
{
  againCopy = again;
  deltaCopy = delta;
  dateCopy = date;
  [deltaCopy timeExpectation];
  v14 = v13;
  database = [(PDBiomeClient *)self database];
  objectID = [deltaCopy objectID];
  if (againCopy)
  {
    v17 = dateCopy;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100088364(database, objectID, v17);

  if (type == 1)
  {
    v19 = v14 * 0.5 - v18;
  }

  else
  {
    v19 = v14 - v18;
    CLSInitLog();
    v20 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      objectID2 = [deltaCopy objectID];
      if (againCopy)
      {
        v23 = @"yes";
      }

      else
      {
        v23 = @"no";
      }

      [dateCopy timeIntervalSinceReferenceDate];
      v26 = 134218754;
      v27 = v19;
      v28 = 2112;
      v29 = objectID2;
      v30 = 2112;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calculated delta = %f, for schedule task, attachmentID = %@, is try again (%@), try again time interval = %f", &v26, 0x2Au);
    }
  }

  return v19;
}

- (double)calculateDeltaOnAppClose:(id)close endDate:(id)date attachment:(id)attachment tryAgainDate:(id)againDate database:(id)database markDone:(BOOL *)done
{
  databaseCopy = database;
  againDateCopy = againDate;
  attachmentCopy = attachment;
  dateCopy = date;
  closeCopy = close;
  objectID = [attachmentCopy objectID];
  v19 = sub_100088364(databaseCopy, objectID, againDateCopy);

  [attachmentCopy timeExpectation];
  v21 = v20;

  v22 = v21 - v19;
  [dateCopy timeIntervalSinceDate:closeCopy];
  v24 = v23;

  if (v24 >= v22)
  {
    result = v22;
  }

  else
  {
    result = v24;
  }

  *done = result == v22;
  return result;
}

- (id)tryAgainDateFromCollaborationState:(id)state
{
  stateCopy = state;
  info = [stateCopy info];
  v5 = info;
  if (!info || ([info objectForKeyedSubscript:@"date_last_try_again"], (dateLastModified = objc_claimAutoreleasedReturnValue()) == 0))
  {
    dateLastModified = [stateCopy dateLastModified];
  }

  return dateLastModified;
}

- (void)attachmentWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"newEntity"];

  objectID = [v6 objectID];
  object = [changeCopy object];

  v9 = [object select:objc_opt_class() identity:objectID];
  v10 = v9;
  if (v9)
  {
    [v9 timeExpectation];
    v12 = v11;
    [v6 timeExpectation];
    if (v12 != v13)
    {
      currentAttachmentID = self->_currentAttachmentID;
      if (!(currentAttachmentID | objectID) || currentAttachmentID && objectID && [(NSString *)currentAttachmentID isEqualToString:objectID])
      {
        v15 = sub_10006DCEC();
        sub_10006DEB8(v15, self->_scheduleHalfDoneTaskID);

        v16 = sub_10006DCEC();
        sub_10006DEB8(v16, self->_scheduleMarkDoneTaskID);

        [(PDBiomeClient *)self cleanUpScheduledTaskTriggers:1];
        [(PDBiomeClient *)self cleanUpScheduledTaskTriggers:2];
        buf[0] = 0;
        v17 = sub_100087B88(object);
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 40);
        }

        else
        {
          v19 = 0;
        }

        v38 = v19;
        v39 = +[NSDate now];
        [object select:objc_opt_class() identity:objectID];
        v37 = v42 = 0;
        v20 = sub_100160CEC(object, v37, &v42);
        v35 = v42;
        v21 = 0;
        if (v20)
        {
          v22 = objc_opt_class();
          v44[0] = objectID;
          v44[1] = &off_10021B6A8;
          v23 = [NSArray arrayWithObjects:v44 count:2, v35];
          v24 = [object select:v22 where:@"parentObjectID = ? and domain = ?" bindings:v23];

          v21 = [(PDBiomeClient *)self tryAgainDateFromCollaborationState:v24];
        }

        v25 = v38;
        [(PDBiomeClient *)self calculateDeltaOnAppClose:v38 endDate:v39 attachment:v6 tryAgainDate:v21 database:object markDone:buf, v35];
        v27 = v26;
        if (buf[0] == 1)
        {
          v28 = objc_opt_class();
          if (v18)
          {
            v29 = v18[3];
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          v43 = v30;
          v31 = [NSArray arrayWithObjects:&v43 count:1];
          v32 = [object select:v28 where:@"objectID = ?" bindings:v31];

          v25 = v38;
          [(PDBiomeClient *)self generateTimeIntervalForActivity:v32 startDate:v38 interval:v27];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000AB6C4;
          v40[3] = &unk_100204320;
          v40[4] = self;
          v41 = objectID;
          [(PDBiomeClient *)self markDone:v41 then:v40];

          v33 = v37;
        }

        else
        {
          v33 = v37;
          [(PDBiomeClient *)self rescheduleHalfWayTimer:v37 attachment:v21 tryAgainDate:v26];
          [(PDBiomeClient *)self rescheduleActivityDoneTimer:v37 attachment:v21 tryAgainDate:v27];
        }
      }
    }
  }

  else
  {
    CLSInitLog();
    v34 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = objectID;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "PDBiomeClient.attachmentWillChange. Could not find an existing attachment. attachmentID: %@", buf, 0xCu);
    }
  }
}

- (void)presentProgressBannerWithAttachmentID:(id)d
{
  dCopy = d;
  v5 = sub_1000D8698();
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  anyObject = [v8 anyObject];

  v10 = sub_100025B40(anyObject, dCopy);
  v11 = [v10 objectForKeyedSubscript:@"showModal"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = [NSMutableDictionary dictionaryWithDictionary:v10];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ALERT_TITLE" value:&stru_100206880 table:@"ClassKit"];
    [v13 setObject:v15 forKeyedSubscript:@"title"];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"IOS_ALERT_MESSAGE" value:&stru_100206880 table:@"ClassKit"];
    [v13 setObject:v17 forKeyedSubscript:@"message"];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"IOS_SETTINGS" value:&stru_100206880 table:@"ClassKit"];
    [v13 setObject:v19 forKeyedSubscript:@"alternateButton"];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"OK" value:&stru_100206880 table:@"ClassKit"];
    [v13 setObject:v21 forKeyedSubscript:@"defaultButton"];

    v22 = +[NSDate date];
    [(NSMutableDictionary *)self->_bannerTimerMap setObject:v22 forKeyedSubscript:dCopy];

    sub_1000430DC(PDPrivateUserNotificationManager, v13);
  }

  else
  {
    v23 = [(NSMutableDictionary *)self->_bannerTimerMap objectForKeyedSubscript:dCopy];
    v13 = v23;
    if (!v23 || ([v23 timeIntervalSinceNow], v24 < -30.0))
    {
      v25 = +[NSDate date];
      [(NSMutableDictionary *)self->_bannerTimerMap setObject:v25 forKeyedSubscript:dCopy];

      v26 = [v10 objectForKeyedSubscript:@"classNames"];
      v27 = [v10 objectForKeyedSubscript:@"attachmentTitle"];
      v28 = [v10 objectForKeyedSubscript:@"localizedTitle"];
      v29 = [v10 objectForKeyedSubscript:@"localizedMessageFormat"];
      v30 = v29;
      if (v26 && v27 && v28 && v29)
      {
        v35 = 0;
        v31 = [NSString stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@ %@" error:&v35, v27, v26];
        v32 = v35;
        if (v32)
        {
          v33 = v32;
          CLSInitLog();
          log = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v30;
            v38 = 2112;
            v39 = v33;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to validate messageFormat: '%@', error: %@", buf, 0x16u);
          }
        }

        else
        {
          sub_100043340(PDPrivateUserNotificationManager, v28, v31, 0);
        }
      }
    }
  }
}

- (void)presentAppBasedAssignmentCompletedBanner:(id)banner
{
  bannerCopy = banner;
  database = [(PDBiomeClient *)self database];
  v5 = [database select:objc_opt_class() identity:bannerCopy];

  if (v5)
  {
    [v5 timeExpectation];
    if (v6 != 0.0)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 URLForResource:@"checkmarkNotifications-star" withExtension:@"png"];
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"TIME_BASED_ASSIGNMENT_COMPLETED_TITLE" value:&stru_100206880 table:@"ClassKit"];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"TIME_BASED_ASSIGNMENT_COMPLETED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
      sub_100043340(PDPrivateUserNotificationManager, v10, v12, v8);
    }
  }
}

- (void)presentHalfWayCompletedBanner:(id)banner
{
  bannerCopy = banner;
  database = [(PDBiomeClient *)self database];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HALF_WAY_DONE_TITLE" value:&stru_100206880 table:@"ClassKit"];

  v8 = [database select:objc_opt_class() identity:bannerCopy];

  if (v8)
  {
    [v8 timeExpectation];
    if (v9 > 0.0)
    {
      [v8 timeExpectation];
      v11 = [(PDBiomeClient *)self localizedTimeInterval:0 calendar:v10 * 0.5];
      CLSInitLog();
      v12 = CLSLogHandout;
      if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trigger half way done scheduled task, remaining time = %@", buf, 0xCu);
      }

      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"HALF_WAY_DONE_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
      v15 = [NSString stringWithFormat:v14, v11];

      sub_100043340(PDPrivateUserNotificationManager, v7, v15, 0);
    }
  }
}

- (id)localizedTimeInterval:(double)interval calendar:(id)calendar
{
  calendarCopy = calendar;
  v6 = objc_alloc_init(NSDateComponentsFormatter);
  v7 = v6;
  if (calendarCopy)
  {
    [v6 setCalendar:calendarCopy];
  }

  [v7 setUnitsStyle:3];
  [v7 setAllowedUnits:96];
  v8 = [v7 stringFromTimeInterval:interval];

  return v8;
}

- (BOOL)checkScheduledTask:(id)task completionType:(int64_t)type
{
  taskCopy = task;
  database = [(PDBiomeClient *)self database];
  v8 = database;
  if (type == 1)
  {
    v9 = @"halfDoneScheduledDate";
  }

  else
  {
    v9 = @"allDoneScheduledDate";
  }

  if (type == 1)
  {
    v10 = @"halfDoneTargetedTimeInterval";
  }

  else
  {
    v10 = @"allDoneTargetedTimeInterval";
  }

  v11 = sub_10016A65C(database, v9);
  v12 = sub_10016A2F0(v8, v10);
  v13 = [NSDate dateWithTimeInterval:v11 sinceDate:?];
  CLSInitLog();
  v14 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "check task scheduler", buf, 2u);
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v15 = [taskCopy compare:v13];
  CLSInitLog();
  v16 = CLSLogDefault;
  v17 = os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v15 == -1)
  {
    if (v17)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "target date in the future, reschedule task", v21, 2u);
    }

    [(PDBiomeClient *)self rescheduleTask:type current:taskCopy targetDate:v13];
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (v17)
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "trigger scheduled task", v20, 2u);
  }

  v18 = [(PDBiomeClient *)self triggerScheduledTask:type targetInterval:v12];
LABEL_18:

  return v18;
}

- (void)rescheduleTask:(int64_t)task current:(id)current targetDate:(id)date
{
  currentCopy = current;
  dateCopy = date;
  database = [(PDBiomeClient *)self database];
  v11 = sub_100087B88(database);
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 16);
    v14 = sub_100087CC8(database, v13);

    if (v14)
    {
      [dateCopy timeIntervalSinceDate:currentCopy];
      if (task == 1)
      {
        [(PDBiomeClient *)self scheduleHalfWayDoneNotification:v14 attachmentID:0 saveTrigger:?];
      }

      else
      {
        [(PDBiomeClient *)self scheduleActivityDone:v14 appUsage:v12 timeInterval:0 saveTrigger:?];
      }
    }

    else
    {
      CLSInitLog();
      v16 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Found targeted trigger date, but don't have a valid attachmentID", v17, 2u);
      }
    }
  }

  else
  {
    CLSInitLog();
    v15 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Found targeted trigger date, but don't have a valid PDAppUsage", buf, 2u);
    }
  }
}

- (BOOL)triggerScheduledTask:(int64_t)task targetInterval:(double)interval
{
  database = [(PDBiomeClient *)self database];
  v8 = sub_100087B88(database);
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 16);
    v11 = sub_100087CC8(database, v10);

    v12 = v11 != 0;
    if (v11)
    {
      if (task == 1)
      {
        [(PDBiomeClient *)self presentHalfWayCompletedBanner:v11];
        [(PDBiomeClient *)self cleanUpScheduledTaskTriggers:1];
      }

      else
      {
        [(PDBiomeClient *)self handleTimeExpectationReached:v11 appUsage:v9 interval:interval];
        v16 = _NSConcreteStackBlock;
        v17 = 3221225472;
        v18 = sub_1000AC508;
        v19 = &unk_100204320;
        selfCopy = self;
        v21 = v11;
        [(PDBiomeClient *)self markDone:v21 then:&v16];
        [(PDBiomeClient *)self cleanUpScheduledTaskTriggers:2, v16, v17, v18, v19, selfCopy];
      }
    }

    else
    {
      CLSInitLog();
      v14 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found targeted trigger date, but don't have a valid attachmentID", buf, 2u);
      }
    }
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Found targeted trigger date, but don't have a valid PDAppUsage", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (double)rescheduleHalfWayTimer:(double)timer attachment:(id)attachment tryAgainDate:(id)date
{
  attachmentCopy = attachment;
  dateCopy = date;
  database = [(PDBiomeClient *)self database];
  objectID = [attachmentCopy objectID];
  v12 = sub_100088364(database, objectID, dateCopy);

  [attachmentCopy timeExpectation];
  v14 = v13 * 0.5 - (v12 + timer);
  if (v14 > 0.0)
  {
    objectID2 = [attachmentCopy objectID];
    [(PDBiomeClient *)self scheduleHalfWayDoneNotification:objectID2 attachmentID:1 saveTrigger:v14];
  }

  return v14;
}

- (double)rescheduleActivityDoneTimer:(double)timer attachment:(id)attachment tryAgainDate:(id)date
{
  attachmentCopy = attachment;
  dateCopy = date;
  database = [(PDBiomeClient *)self database];
  objectID = [attachmentCopy objectID];
  v12 = sub_100088364(database, objectID, dateCopy);

  [attachmentCopy timeExpectation];
  v14 = v13 - (v12 + timer);
  if (v14 > 0.0)
  {
    objectID2 = [attachmentCopy objectID];
    [(PDBiomeClient *)self scheduleHalfWayDoneNotification:objectID2 attachmentID:1 saveTrigger:v14];
  }

  return v14;
}

- (void)cleanUpScheduledTaskTriggers:(int64_t)triggers
{
  database = [(PDBiomeClient *)self database];
  v5 = objc_opt_class();
  if (triggers == 1)
  {
    v14 = @"halfDoneScheduledDate";
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    [database deleteAll:v5 where:@"name = ?" bindings:v6];

    v7 = objc_opt_class();
    v13 = @"halfDoneTargetedTimeInterval";
    v8 = &v13;
  }

  else
  {
    v12 = @"allDoneScheduledDate";
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [database deleteAll:v5 where:@"name = ?" bindings:v9];

    v7 = objc_opt_class();
    v11 = @"allDoneTargetedTimeInterval";
    v8 = &v11;
  }

  v10 = [NSArray arrayWithObjects:v8 count:1];
  [database deleteAll:v7 where:@"name = ?" bindings:v10];
}

@end