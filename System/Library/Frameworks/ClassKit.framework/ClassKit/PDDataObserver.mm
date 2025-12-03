@interface PDDataObserver
- (BOOL)_entitiesChangedSinceLastTrigger:(id)trigger;
- (BOOL)_entityCountsChangedSinceLastTrigger:(id)trigger;
- (id)description;
- (void)_sendClientEntitiesChangedAdded:(id)added updated:(id)updated deleted:(id)deleted updatedMatchingPredicate:(id)predicate updatedNotMatchingPredicate:(id)matchingPredicate;
@end

@implementation PDDataObserver

- (BOOL)_entityCountsChangedSinceLastTrigger:(id)trigger
{
  triggerCopy = trigger;
  lastChangeID = [(PDDataObserver *)self lastChangeID];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = sub_1000F580C(triggerCopy);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E4384;
  v23[3] = &unk_100204C30;
  v6 = triggerCopy;
  v24 = v6;
  selfCopy = self;
  v26 = v29;
  v27 = &v30;
  v28 = lastChangeID == 0;
  sub_10010BE68(v6, v23);
  v7 = NSStringFromClass(self->_entityClass);
  if (*(v31 + 24) == 1)
  {
    v8 = +[PDUserDefaults sharedDefaults];
    enableVerboseLogging = [v8 enableVerboseLogging];

    if (enableVerboseLogging)
    {
      CLSInitLog();
      v10 = CLSLogNotifications;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        changedEntitiesCount = self->_changedEntitiesCount;
        lastTriggerDate = self->_lastTriggerDate;
        [(NSDate *)lastTriggerDate timeIntervalSinceReferenceDate];
        *buf = 134219010;
        selfCopy3 = self;
        v36 = 2112;
        v37 = v7;
        v38 = 2048;
        v39 = changedEntitiesCount;
        v40 = 2112;
        v41 = lastTriggerDate;
        v42 = 2048;
        v43 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "<PDDataObserver: %p> entity:%@ found %ld changes since lastTriggerDate:%@ (%f)", buf, 0x34u);
      }
    }

    v14 = +[NSDate date];
    v15 = self->_lastTriggerDate;
    self->_lastTriggerDate = v14;

    [(CLSEntityChangeNotifiable *)self->_remoteObserver clientRemote_itemChanged:[(NSDate *)self->_lastTriggerDate hash]];
  }

  else
  {
    v16 = +[PDUserDefaults sharedDefaults];
    enableVerboseLogging2 = [v16 enableVerboseLogging];

    if (enableVerboseLogging2)
    {
      CLSInitLog();
      v18 = CLSLogNotifications;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = self->_lastTriggerDate;
        [(NSDate *)v19 timeIntervalSinceReferenceDate];
        *buf = 134218754;
        selfCopy3 = self;
        v36 = 2112;
        v37 = v7;
        v38 = 2112;
        v39 = v19;
        v40 = 2048;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "<PDDataObserver: %p> entity:%@ no changes since lastTriggerDate:%@ (%f)", buf, 0x2Au);
      }
    }
  }

  v21 = *(v31 + 24);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);

  return v21 & 1;
}

- (void)_sendClientEntitiesChangedAdded:(id)added updated:(id)updated deleted:(id)deleted updatedMatchingPredicate:(id)predicate updatedNotMatchingPredicate:(id)matchingPredicate
{
  addedCopy = added;
  updatedCopy = updated;
  deletedCopy = deleted;
  predicateCopy = predicate;
  matchingPredicateCopy = matchingPredicate;
  v16 = [addedCopy count];
  v17 = &v16[[updatedCopy count]];
  if ([deletedCopy count] + v17)
  {
    [(CLSEntityChangeNotifiable *)self->_remoteObserver clientRemote_entitiesChangedAdded:addedCopy updated:updatedCopy deleted:deletedCopy];
    [addedCopy removeAllObjects];
    [updatedCopy removeAllObjects];
    [deletedCopy removeAllObjects];
  }

  v18 = [predicateCopy count];
  if ([matchingPredicateCopy count] + v18)
  {
    [(CLSEntityChangeNotifiable *)self->_remoteObserver clientRemote_entitiesChangedUpdatedMatchingPredicate:predicateCopy updatedNotMatchingPredicate:matchingPredicateCopy];
    [predicateCopy removeAllObjects];
    [matchingPredicateCopy removeAllObjects];
  }
}

- (BOOL)_entitiesChangedSinceLastTrigger:(id)trigger
{
  triggerCopy = trigger;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = self->_lastChangeID == 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v5 = objc_autoreleasePoolPush();
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_1000E4B88;
  v45[4] = sub_1000E4B98;
  v46 = objc_opt_new();
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_1000E4B88;
  v43[4] = sub_1000E4B98;
  v44 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_1000E4B88;
  v41[4] = sub_1000E4B98;
  v42 = objc_opt_new();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1000E4B88;
  v39[4] = sub_1000E4B98;
  v40 = objc_opt_new();
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_1000E4B88;
  v37[4] = sub_1000E4B98;
  v38 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = sub_1000F580C(triggerCopy);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E4BA0;
  v23[3] = &unk_100204CA8;
  v23[4] = self;
  v6 = triggerCopy;
  v24 = v6;
  v25 = v45;
  v26 = &v48;
  v27 = v43;
  v28 = v41;
  v29 = v39;
  v30 = v37;
  v31 = v47;
  v32 = v56;
  v33 = v36;
  v34 = &v52;
  v35 = 50;
  sub_10010BE68(v6, v23);
  v7 = NSStringFromClass(self->_entityClass);
  if (*(v53 + 24) == 1)
  {
    v8 = +[PDUserDefaults sharedDefaults];
    enableVerboseLogging = [v8 enableVerboseLogging];

    if (enableVerboseLogging)
    {
      CLSInitLog();
      v10 = CLSLogNotifications;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v49[3];
        lastTriggerDate = self->_lastTriggerDate;
        [(NSDate *)lastTriggerDate timeIntervalSinceReferenceDate];
        *buf = 134219010;
        selfCopy2 = self;
        v60 = 2112;
        v61 = v7;
        v62 = 2048;
        v63 = v11;
        v64 = 2112;
        v65 = lastTriggerDate;
        v66 = 2048;
        v67 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "<PDDataObserver: %p> entity:%@ found %ld changes since lastTriggerDate:%@ (%f)", buf, 0x34u);
      }
    }

    v14 = +[NSDate date];
    v15 = self->_lastTriggerDate;
    self->_lastTriggerDate = v14;

    [(CLSEntityChangeNotifiable *)self->_remoteObserver clientRemote_finishWithEntitiesChangedSince:self->_lastTriggerDate];
  }

  else
  {
    v16 = +[PDUserDefaults sharedDefaults];
    enableVerboseLogging2 = [v16 enableVerboseLogging];

    if (enableVerboseLogging2)
    {
      CLSInitLog();
      v18 = CLSLogNotifications;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = self->_lastTriggerDate;
        [(NSDate *)v19 timeIntervalSinceReferenceDate];
        *buf = 134218754;
        selfCopy2 = self;
        v60 = 2112;
        v61 = v7;
        v62 = 2112;
        v63 = v19;
        v64 = 2048;
        v65 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "<PDDataObserver: %p> entity:%@ no changes since lastTriggerDate:%@ (%f)", buf, 0x2Au);
      }
    }
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v48, 8);
  objc_autoreleasePoolPop(v5);
  v21 = *(v53 + 24);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);

  return v21 & 1;
}

- (id)description
{
  v22.receiver = self;
  v22.super_class = PDDataObserver;
  v3 = [(PDDataObserver *)&v22 description];
  v4 = [v3 mutableCopy];

  objc_msgSend(v4, "appendString:", @" (entity: ");
  v5 = NSStringFromClass(self->_entityClass);
  [v4 appendString:v5];

  v6 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v6 enableVerboseLogging];

  if (enableVerboseLogging)
  {
    [v4 appendString:@") (whereSQL: "];
    if (self->_predicateWhereSql)
    {
      predicateWhereSql = self->_predicateWhereSql;
    }

    else
    {
      predicateWhereSql = @"(null)";
    }

    [v4 appendString:predicateWhereSql];
    [v4 appendString:@") (bindings: "];
    v9 = [(NSArray *)self->_bindings description];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"(null)";
    }

    [v4 appendString:v11];

    [v4 appendString:@") (changedEntitiesCount: "];
    v12 = [NSNumber numberWithInteger:[(PDDataObserver *)self changedEntitiesCount]];
    stringValue = [v12 stringValue];
    [v4 appendString:stringValue];

    [v4 appendString:@") (changedMatchingEntitiesCount: "];
    v14 = [NSNumber numberWithInteger:[(PDDataObserver *)self changedMatchingEntitiesCount]];
    stringValue2 = [v14 stringValue];
    [v4 appendString:stringValue2];
  }

  [v4 appendString:@") (invalidated: "];
  if (self->_invalidated)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v4 appendString:v16];
  [v4 appendString:@") (lastTriggerDate: "];
  lastTriggerDate = [(PDDataObserver *)self lastTriggerDate];
  v18 = [lastTriggerDate description];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"Never";
  }

  [v4 appendString:v20];

  [v4 appendString:@""]);

  return v4;
}

@end