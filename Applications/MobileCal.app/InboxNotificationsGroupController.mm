@interface InboxNotificationsGroupController
- (BOOL)canSelectRow:(int64_t)row;
- (InboxNotificationsGroupController)initWithModel:(id)model delegate:(id)delegate;
- (InboxTableViewGroupControllerDelegate)delegate;
- (id)_eventForIndexPath:(id)path;
- (id)cellForRow:(int64_t)row allowAsyncLoading:(BOOL)loading;
- (id)conflictInfoForNotification:(id)notification;
- (id)eventForRow:(int64_t)row;
- (id)noContentStringForInboxTableView:(id)view;
- (id)tableView;
- (void)_cachedBlockedContactsChanged:(id)changed;
- (void)_localeChanged:(id)changed;
- (void)_notificationsChanged:(id)changed;
- (void)_performAction:(int64_t)action forEventInvitationNotification:(id)notification avoidUserInteraction:(BOOL)interaction cancelled:(id)cancelled cell:(id)cell;
- (void)_performAction:(int64_t)action forSuggestionNotification:(id)notification save:(id)save;
- (void)_performActionForAllNotifications:(int64_t)notifications save:(id)save;
- (void)_performActionForAttendeeReplyNotification:(id)notification save:(id)save;
- (void)_performActionForInviteReplayNotification:(id)notification;
- (void)_performActionForResourceChangeNotification:(id)notification;
- (void)_savePendingComments;
- (void)_saveStatus:(int64_t)status forEventInvitationNotification:(id)notification commit:(BOOL)commit;
- (void)attemptDisplayReviewPrompt;
- (void)messageCell:(id)cell committedComment:(id)comment;
- (void)performAction:(int64_t)action forCell:(id)cell sourceView:(id)view sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled;
- (void)prefetchConflictInfo;
- (void)prefetchRow:(int64_t)row;
- (void)refreshIfNeeded;
- (void)rowSelected:(int64_t)selected;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation InboxNotificationsGroupController

- (InboxNotificationsGroupController)initWithModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = InboxNotificationsGroupController;
  v9 = [(InboxNotificationsGroupController *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, model);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_needsRefresh = 1;
    v11 = objc_opt_new();
    pendingComments = v10->_pendingComments;
    v10->_pendingComments = v11;

    v13 = objc_opt_new();
    conflictInfo = v10->_conflictInfo;
    v10->_conflictInfo = v13;

    v15 = objc_opt_new();
    organizerNames = v10->_organizerNames;
    v10->_organizerNames = v15;

    v17 = +[CUIKNotificationDescriptionGenerator sharedGenerator];
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v20 = dispatch_queue_create("PrefetchConflictQueue", v18);
    prefetchConflictsQueue = v10->_prefetchConflictsQueue;
    v10->_prefetchConflictsQueue = v20;

    v22 = dispatch_queue_create("ConflictScanningQ", v19);
    conflictsScanningQueue = v10->_conflictsScanningQueue;
    v10->_conflictsScanningQueue = v22;

    v24 = dispatch_queue_create("ConflictsQ", v19);
    conflictsQueue = v10->_conflictsQueue;
    v10->_conflictsQueue = v24;

    v26 = dispatch_queue_create("PrefetchNamesQ", v18);
    prefetchNamesQueue = v10->_prefetchNamesQueue;
    v10->_prefetchNamesQueue = v26;

    v28 = dispatch_queue_create("NamesQ", v19);
    namesQueue = v10->_namesQueue;
    v10->_namesQueue = v28;

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v10 selector:"_notificationsChanged:" name:CUIKCalendarModelNotificationsChangedNotification object:v10->_model];
    [v30 addObserver:v10 selector:"_notificationsChanged:" name:EKEventStoreChangedNotification object:0];
    [v30 addObserver:v10 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v30 addObserver:v10 selector:"_notificationsChanged:" name:CUIKCalendarModelIdentityChangedNotification object:v10->_model];
    [v30 addObserver:v10 selector:"_notificationsChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:v10->_model];
    [v30 addObserver:v10 selector:"_cachedBlockedContactsChanged:" name:CalBlockListCacheUpdatedNotification object:0];
    [(InboxNotificationsGroupController *)v10 refreshIfNeeded];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  [(InboxNotificationsGroupController *)self setVisible:1];
  [(InboxNotificationsGroupController *)self refreshIfNeeded];
  tableView = [(InboxNotificationsGroupController *)self tableView];
  visibleCells = [tableView visibleCells];
  [visibleCells enumerateObjectsUsingBlock:&stru_100210378];
}

- (id)conflictInfoForNotification:(id)notification
{
  notificationCopy = notification;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000A0F80;
  v27 = sub_1000A0F90;
  v28 = 0;
  if (![notificationCopy type] || objc_msgSend(notificationCopy, "type") == 1)
  {
    v5 = notificationCopy;
    conflictsQueue = self->_conflictsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0F98;
    block[3] = &unk_1002100B0;
    v22 = &v23;
    block[4] = self;
    v7 = v5;
    v21 = v7;
    dispatch_sync(conflictsQueue, block);
    if (!v24[5])
    {
      objectID = [v7 objectID];

      if (objectID)
      {
        eventStore = [(CUIKCalendarModel *)self->_model eventStore];
        objectID2 = [v7 objectID];
        startDate = [v7 startDate];
        objectID = [eventStore eventForObjectID:objectID2 occurrenceDate:startDate checkValid:0];
      }

      conflictsScanningQueue = self->_conflictsScanningQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000A100C;
      v16[3] = &unk_1002103A0;
      v16[4] = self;
      v19 = &v23;
      v17 = v7;
      v18 = objectID;
      v13 = objectID;
      dispatch_sync(conflictsScanningQueue, v16);
    }
  }

  v14 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v14;
}

- (void)prefetchConflictInfo
{
  v3 = [NSArray arrayWithArray:self->_notificationReferences];
  prefetchConflictsQueue = self->_prefetchConflictsQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A12E4;
  v6[3] = &unk_10020EC68;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(prefetchConflictsQueue, v6);
}

- (void)prefetchRow:(int64_t)row
{
  prefetchNamesQueue = self->_prefetchNamesQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A148C;
  v4[3] = &unk_10020EE00;
  v4[4] = self;
  v4[5] = row;
  dispatch_async(prefetchNamesQueue, v4);
}

- (void)refreshIfNeeded
{
  if (self->_needsRefresh)
  {
    v3 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[INBOX] Refreshing inbox notifications group controller: %{public}@.", buf, 0xCu);
    }

    eventNotificationReferencesForCurrentIdentity = [(CUIKCalendarModel *)self->_model eventNotificationReferencesForCurrentIdentity];
    objc_storeStrong(&self->_allNotificationReferences, eventNotificationReferencesForCurrentIdentity);
    v5 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = eventNotificationReferencesForCurrentIdentity;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[INBOX] Event notification references for current identity: %{public}@.", buf, 0xCu);
    }

    v6 = [(InboxNotificationsGroupController *)self filteredNotificationsFromArray:eventNotificationReferencesForCurrentIdentity];
    v7 = [v6 mutableCopy];
    notificationReferences = self->_notificationReferences;
    self->_notificationReferences = v7;

    v9 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_notificationReferences;
      *buf = 138543362;
      selfCopy = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Filtered event notification references for selected identity: %{public}@.", buf, 0xCu);
    }

    v11 = [(NSMutableArray *)self->_notificationReferences count];
    [(InboxNotificationsGroupController *)self prefetchConflictInfo];
    if ([(NSMutableDictionary *)self->_pendingComments count])
    {
      allKeys = [(NSMutableDictionary *)self->_pendingComments allKeys];
      v13 = [allKeys mutableCopy];

      v14 = self->_notificationReferences;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000A18E4;
      v20[3] = &unk_1002103C8;
      v21 = v13;
      v15 = v13;
      [(NSMutableArray *)v14 enumerateObjectsUsingBlock:v20];
      [(NSMutableDictionary *)self->_pendingComments removeObjectsForKeys:v15];
    }

    v16 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [NSNumber numberWithUnsignedInteger:v11];
      *buf = 138543362;
      selfCopy = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Number of notifications after refresh: [%{public}@].", buf, 0xCu);
    }

    self->_needsRefresh = 0;
    delegate = [(InboxNotificationsGroupController *)self delegate];
    [delegate inboxTableViewGroupController:self addedRows:0 removedRows:0 updatedRows:0];
  }
}

- (id)cellForRow:(int64_t)row allowAsyncLoading:(BOOL)loading
{
  loadingCopy = loading;
  v7 = objc_alloc_init(CalendarMessageCell);
  if ([(NSMutableArray *)self->_notificationReferences count])
  {
    v8 = [(NSMutableArray *)self->_notificationReferences objectAtIndex:row];
    notification = [v8 notification];
    v10 = notification;
    if (notification)
    {
      v11 = [notification URL];
      if ([v10 type] != 8 || (-[NSMutableArray containsObject:](self->_sharedCalendarInvitationsReplyPending, "containsObject:", v11) & 1) == 0)
      {
        v12 = [CalendarMessageCell cellClassForNotification:v10];
        v35 = NSStringFromClass(v12);
        tableView = [(InboxNotificationsGroupController *)self tableView];
        v14 = [tableView dequeueReusableCellWithIdentifier:v35];

        v7 = v14;
        if (!v14)
        {
          v7 = [[v12 alloc] initWithStyle:0 reuseIdentifier:v35];
        }

        if (![v10 type] || objc_msgSend(v10, "type") == 1)
        {
          v15 = v10;
          *&buf = 0;
          *(&buf + 1) = &buf;
          v48 = 0x3032000000;
          v49 = sub_1000A0F80;
          v50 = sub_1000A0F90;
          v51 = 0;
          conflictsQueue = self->_conflictsQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000A2000;
          block[3] = &unk_1002100B0;
          p_buf = &buf;
          block[4] = self;
          v17 = v15;
          v44 = v17;
          dispatch_sync(conflictsQueue, block);
          if (*(*(&buf + 1) + 40))
          {
            v18 = objc_opt_new();
            v19 = +[CUIKNotificationDescriptionGenerator sharedGenerator];
            v20 = [v19 conflictStringForConflictDetails:*(*(&buf + 1) + 40) maxTitleLength:20 descriptions:v18];

            [(CalendarMessageCell *)v7 setConflictDict:v18];
          }

          else
          {
            objc_initWeak(location, self);
            prefetchConflictsQueue = self->_prefetchConflictsQueue;
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_1000A2074;
            v39[3] = &unk_1002103F0;
            objc_copyWeak(&v42, location);
            v40 = v8;
            selfCopy = self;
            dispatch_async(prefetchConflictsQueue, v39);

            objc_destroyWeak(&v42);
            objc_destroyWeak(location);
          }

          _Block_object_dispose(&buf, 8);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v48 = 0x3032000000;
        v49 = sub_1000A0F80;
        v50 = sub_1000A0F90;
        v51 = 0;
        namesQueue = self->_namesQueue;
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000A2224;
        v36[3] = &unk_1002100B0;
        v38 = &buf;
        v36[4] = self;
        v25 = v10;
        v37 = v25;
        dispatch_sync(namesQueue, v36);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CalendarMessageCell *)v7 setOrganizerName:*(*(&buf + 1) + 40)];
        }

        authorView = [(CalendarMessageCell *)v7 authorView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          authorView2 = [(CalendarMessageCell *)v7 authorView];
          [authorView2 setLoadContactsAsynchronously:loadingCopy];
        }

        [(CalendarMessageCell *)v7 setDelegate:self];
        [(CalendarMessageCell *)v7 setNotification:v25];
        pendingComments = self->_pendingComments;
        v30 = [v25 URL];
        v31 = [(NSMutableDictionary *)pendingComments objectForKeyedSubscript:v30];

        [(CalendarMessageCell *)v7 setShowsCommentPrompt:v31 != 0 animated:0 initialValue:v31];
        v32 = kCalUILogInboxHandle;
        if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v11;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Generating cell for notification with URI: [%@]", location, 0xCu);
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      v21 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = row;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Notification reference is nil for inbox cell in row %ld.", &buf, 0xCu);
      }

      v22 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Notification Reference: %@", &buf, 0xCu);
      }

      v11 = [0 URL];
    }
  }

  v33 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = row;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Loading notification cell at row: [%ld]", &buf, 0xCu);
  }

  return v7;
}

- (void)rowSelected:(int64_t)selected
{
  v9 = [(InboxNotificationsGroupController *)self cellForRow:selected allowAsyncLoading:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 proposedTimeAttendee], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    delegate2 = v5;
    delegate = [(InboxNotificationsGroupController *)self delegate];
    v8 = [(InboxNotificationsGroupController *)self eventForRow:selected];
    [delegate inboxTableViewGroupController:self viewProposedTimeForAttendee:delegate2 onEvent:v8];
  }

  else
  {
    delegate2 = [(InboxNotificationsGroupController *)self delegate];
    delegate = [(InboxNotificationsGroupController *)self eventForRow:selected];
    [delegate2 inboxTableViewGroupController:self inspectEvent:delegate];
  }
}

- (BOOL)canSelectRow:(int64_t)row
{
  v3 = [(InboxNotificationsGroupController *)self eventForRow:row];
  v4 = v3 != 0;

  return v4;
}

- (id)eventForRow:(int64_t)row
{
  if ([(NSMutableArray *)self->_notificationReferences count]<= row)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v5 = [(NSMutableArray *)self->_notificationReferences objectAtIndex:row];
  notification = [v5 notification];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = notification;
    objectID = [v7 objectID];

    eventStore = [(CUIKCalendarModel *)self->_model eventStore];
    if (!objectID)
    {
      objectID2 = [v7 URL];
      v13 = [eventStore _eventWithURI:objectID2 checkValid:1];
      goto LABEL_18;
    }

    objectID2 = [v7 objectID];
    startDateForNextOccurrence = [v7 startDateForNextOccurrence];
    startDate = startDateForNextOccurrence;
    if (!startDateForNextOccurrence)
    {
      startDate = [v7 startDate];
    }

    v13 = [eventStore eventForObjectID:objectID2 occurrenceDate:startDate checkValid:0];
    if (!startDateForNextOccurrence)
    {
    }

LABEL_15:

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = notification;
    eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
    eventID = [v14 eventID];
    startDateForNextOccurrence = [eventStore2 eventWithIdentifier:eventID];

    if (!startDateForNextOccurrence)
    {
      v13 = 0;
      goto LABEL_19;
    }

    eventStore = +[NSDate CalSimulatedDateForNow];
    v17 = [startDateForNextOccurrence nextOccurrenceOrDetachmentAfter:eventStore];
    objectID2 = v17;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = startDateForNextOccurrence;
    }

    v13 = v18;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_20:

LABEL_21:

  return v13;
}

- (void)_saveStatus:(int64_t)status forEventInvitationNotification:(id)notification commit:(BOOL)commit
{
  commitCopy = commit;
  notificationCopy = notification;
  v9 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [NSNumber numberWithInteger:status];
    *buf = 138543618;
    v40 = v11;
    v41 = 2114;
    v42 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving participant status: [%{public}@] for event invitation notification: %{public}@.", buf, 0x16u);
  }

  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  v13 = [notificationCopy eventFromEventStore:eventStore];

  [v13 setInvitationStatus:0];
  delegate = [(InboxNotificationsGroupController *)self delegate];
  v15 = [delegate editorForGroupController:self];

  if ([notificationCopy type] == 2)
  {
    [v15 deleteEvent:v13 span:2 error:0];
  }

  else
  {
    calendar = [v13 calendar];
    source = [calendar source];
    constraints = [source constraints];
    mustAcknowledgeMasterEvent = [constraints mustAcknowledgeMasterEvent];

    if (mustAcknowledgeMasterEvent)
    {
      if ([v13 hasRecurrenceRules])
      {
        hasRecurrenceRules = 4;
      }

      else
      {
        hasRecurrenceRules = 0;
      }

      if (status)
      {
        [v13 setParticipationStatus:status];
      }
    }

    else if (status)
    {
      [v13 setParticipationStatus:status];
      hasRecurrenceRules = 2;
    }

    else
    {
      hasRecurrenceRules = [v13 hasRecurrenceRules];
    }

    pendingComments = self->_pendingComments;
    v22 = [notificationCopy URL];
    v23 = [(NSMutableDictionary *)pendingComments objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = self->_pendingComments;
      v25 = [notificationCopy URL];
      [(NSMutableDictionary *)v24 removeObjectForKey:v25];

      responseComment = [v13 responseComment];
      v27 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:responseComment];

      if (!v27)
      {
        v27 = &stru_1002133B8;
      }

      if (([v23 isEqualToString:v27] & 1) == 0)
      {
        if (![v23 length])
        {

          v23 = 0;
        }

        proposedStartDate = [v13 proposedStartDate];
        timeZone = [v13 timeZone];
        v30 = [CUIKNotificationDescriptionGenerator comment:v23 withInsertedAutoCommentForDate:proposedStartDate timeZone:timeZone];
        [v13 setResponseComment:v30];
      }
    }

    if (commitCopy)
    {
      v38 = 0;
      v31 = [v15 saveEvent:v13 span:hasRecurrenceRules error:&v38];
      v32 = v38;
      if ((v31 & 1) == 0)
      {
        v33 = kCalUILogInboxHandle;
        if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v32;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error saving invitation status: %@.", buf, 0xCu);
        }
      }
    }

    else
    {
      eventStore2 = [v13 eventStore];
      v37 = 0;
      v35 = [eventStore2 saveEvent:v13 span:hasRecurrenceRules commit:0 error:&v37];
      v32 = v37;

      if ((v35 & 1) == 0)
      {
        v36 = kCalUILogInboxHandle;
        if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v32;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error saving invitation status: %@.", buf, 0xCu);
        }

        [v13 rollback];
      }
    }
  }
}

- (void)_savePendingComments
{
  notificationReferences = self->_notificationReferences;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A2ACC;
  v4[3] = &unk_1002103C8;
  v4[4] = self;
  [(NSMutableArray *)notificationReferences enumerateObjectsUsingBlock:v4];
  [(NSMutableDictionary *)self->_pendingComments removeAllObjects];
}

- (void)_performAction:(int64_t)action forSuggestionNotification:(id)notification save:(id)save
{
  notificationCopy = notification;
  saveCopy = save;
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  v11 = [notificationCopy resourceChangeFromEventStore:eventStore];

  calendarItem = [v11 calendarItem];
  eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
  v34 = 0;
  v14 = [eventStore2 removeResourceChange:v11 error:&v34];
  v15 = v34;

  if ((v14 & 1) == 0)
  {
    v16 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error removing resource change: %@", buf, 0xCu);
    }

    v15 = 0;
  }

  eventID = [notificationCopy eventID];
  eventStore3 = [(CUIKCalendarModel *)self->_model eventStore];
  v19 = [eventStore3 eventWithIdentifier:eventID];

  if (v19)
  {
    v20 = v19;

    calendarItem = v20;
  }

  v32 = saveCopy;
  if (action > 127)
  {
    if (action != 128)
    {
      if (action == 0x100000)
      {
        goto LABEL_13;
      }

LABEL_20:
      suggestionInfo = [calendarItem suggestionInfo];
      [suggestionInfo setChangedFields:0];

      v25 = v32;
      (*(v32 + 2))(v32, calendarItem, 0);
      goto LABEL_21;
    }

    suggestionInfo2 = [calendarItem suggestionInfo];
    uniqueKey = [suggestionInfo2 uniqueKey];
    [EKSuggestionsServiceLogger logEventRejectedInboxWithUniqueKey:uniqueKey];

    eventStore4 = [(CUIKCalendarModel *)self->_model eventStore];
    [eventStore4 deleteSuggestedEvent:calendarItem];
LABEL_19:

    goto LABEL_20;
  }

  if (action == 8)
  {
    [(InboxNotificationsGroupController *)self attemptDisplayReviewPrompt];
    eventStore5 = [(CUIKCalendarModel *)self->_model eventStore];
    [eventStore5 acceptSuggestedEvent:calendarItem];

    eventStore4 = [calendarItem suggestionInfo];
    uniqueKey2 = [eventStore4 uniqueKey];
    [EKSuggestionsServiceLogger logEventConfirmedInboxWithUniqueKey:uniqueKey2];

    goto LABEL_19;
  }

  if (action != 16)
  {
    goto LABEL_20;
  }

LABEL_13:
  delegate = [(InboxNotificationsGroupController *)self delegate];
  v22 = [delegate editorForGroupController:self];

  v33 = v15;
  LOBYTE(delegate) = [v22 deleteEvent:calendarItem span:0 error:&v33];
  v23 = v33;

  if ((delegate & 1) == 0)
  {
    v24 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error deleting suggested event: %@", buf, 0xCu);
    }
  }

  v15 = v23;
  v25 = v32;
LABEL_21:
}

- (void)_performActionForAttendeeReplyNotification:(id)notification save:(id)save
{
  saveCopy = save;
  model = self->_model;
  notificationCopy = notification;
  eventStore = [(CUIKCalendarModel *)model eventStore];
  v9 = [notificationCopy eventFromEventStore:eventStore];

  if (v9)
  {
    [v9 dismissAttendeeRepliedNotification];
    if ([v9 hasRecurrenceRules])
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    saveCopy[2](saveCopy, v9, v10);
  }
}

- (void)_performActionForInviteReplayNotification:(id)notification
{
  model = self->_model;
  notificationCopy = notification;
  eventStore = [(CUIKCalendarModel *)model eventStore];
  v7 = [notificationCopy inviteReplyNotificationFromEventStore:eventStore];

  eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
  v11 = 0;
  LOBYTE(eventStore) = [eventStore2 removeInviteReplyNotification:v7 error:&v11];
  v9 = v11;

  if ((eventStore & 1) == 0)
  {
    v10 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error removing invite reply: %@", buf, 0xCu);
    }
  }
}

- (void)_performActionForResourceChangeNotification:(id)notification
{
  model = self->_model;
  notificationCopy = notification;
  eventStore = [(CUIKCalendarModel *)model eventStore];
  v7 = [notificationCopy resourceChangeFromEventStore:eventStore];

  eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
  v11 = 0;
  LOBYTE(eventStore) = [eventStore2 removeResourceChange:v7 error:&v11];
  v9 = v11;

  if ((eventStore & 1) == 0)
  {
    v10 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error removing resource change: %@", buf, 0xCu);
    }
  }
}

- (void)_performAction:(int64_t)action forEventInvitationNotification:(id)notification avoidUserInteraction:(BOOL)interaction cancelled:(id)cancelled cell:(id)cell
{
  interactionCopy = interaction;
  notificationCopy = notification;
  cancelledCopy = cancelled;
  cellCopy = cell;
  v15 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v98 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Event invitation notification: %{public}@.", buf, 0xCu);
  }

  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  v17 = [notificationCopy eventFromEventStore:eventStore];

  if (v17)
  {
    v85 = cellCopy;
    selfCopy = self;
    v18 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v98 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Event for event invitation notification: %@.", buf, 0xCu);
    }

    v19 = 3;
    v20 = 4;
    if (action != 2)
    {
      v20 = 0;
    }

    if (action != 4)
    {
      v19 = v20;
    }

    v21 = action != 1 && action == 4;
    if (action == 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = v19;
    }

    v23 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      v83 = notificationCopy;
      v24 = v17;
      v25 = cancelledCopy;
      v26 = v23;
      v27 = [NSNumber numberWithInteger:action];
      v28 = [NSNumber numberWithInteger:v22];
      *buf = 138543618;
      v98 = v27;
      v99 = 2114;
      v100 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Translated event status button action: [%{public}@] to participant status: [%{public}@].", buf, 0x16u);

      cancelledCopy = v25;
      v17 = v24;
      notificationCopy = v83;
    }

    if (interactionCopy)
    {
      v29 = selfCopy;
LABEL_37:
      [(InboxNotificationsGroupController *)v29 _saveStatus:v22 forEventInvitationNotification:notificationCopy commit:1];
LABEL_38:
      cellCopy = v85;
      goto LABEL_39;
    }

    if (v21)
    {
      if ([v17 allowsResponseCommentModifications])
      {
        v30 = +[CUIKPreferences sharedPreferences];
        promptForCommentWhenDeclining = [v30 promptForCommentWhenDeclining];

        if (promptForCommentWhenDeclining == 2 || promptForCommentWhenDeclining == 1 && ([v17 calendar], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "source"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "wantsCommentPromptWhenDeclining"), v33, v32, v34))
        {
          responseComment = [v17 responseComment];
          v36 = [CUIKNotificationDescriptionGenerator stringWithAutoCommentRemoved:responseComment];

          if (!v36)
          {
            v36 = &stru_1002133B8;
          }

          pendingComments = selfCopy->_pendingComments;
          v38 = [notificationCopy URL];
          [(NSMutableDictionary *)pendingComments setObject:v36 forKeyedSubscript:v38];

          cellCopy = v85;
          [v85 setShowsCommentPrompt:1 animated:1 initialValue:v36];

          goto LABEL_39;
        }
      }
    }

    if (action == 1 && [v17 hasRecurrenceRules])
    {
      selfAttendee = [v17 selfAttendee];
      if ([selfAttendee participantType] == 2)
      {

LABEL_33:
        v42 = [(InboxNotificationsGroupController *)selfCopy conflictInfoForNotification:notificationCopy];
        if (v42)
        {
          v43 = [NSBundle bundleForClass:objc_opt_class()];
          v84 = [v43 localizedStringForKey:@"Are you sure you want to accept this recurring event?" value:&stru_1002133B8 table:0];

          v44 = [NSBundle bundleForClass:objc_opt_class()];
          v45 = [v44 localizedStringForKey:@"Accept All" value:&stru_1002133B8 table:0];

          v46 = [NSBundle bundleForClass:objc_opt_class()];
          v80 = [v46 localizedStringForKey:@"Accept Only Available" value:&stru_1002133B8 table:0];

          v47 = [NSBundle bundleForClass:objc_opt_class()];
          v79 = [v47 localizedStringForKey:@"Cancel" value:&stru_1002133B8 table:0];

          totalOccurrencesInSeries = [v42 totalOccurrencesInSeries];
          v81 = v45;
          v82 = cancelledCopy;
          if (totalOccurrencesInSeries == [v42 totalConflictsInSeries])
          {
            v49 = [NSBundle bundleForClass:objc_opt_class()];
            v50 = [v49 localizedStringForKey:@"All %d occurrences of the event “%@” conflict with other events on your calendar. If you accept value:all occurrences will overlap with other scheduled events." table:{&stru_1002133B8, 0}];

            totalConflictsInSeries = [v42 totalConflictsInSeries];
            title = [v17 title];
            v53 = [NSString localizedStringWithFormat:v50, totalConflictsInSeries, title];

            v54 = selfCopy;
            v55 = v53;
            title2 = [NSBundle bundleForClass:objc_opt_class()];
            v57 = [title2 localizedStringForKey:@"Accept" value:&stru_1002133B8 table:0];

            v81 = v57;
          }

          else
          {
            totalConflictsInSeries2 = [v42 totalConflictsInSeries];
            v59 = +[NSBundle mainBundle];
            v60 = v59;
            if (totalConflictsInSeries2 == 1)
            {
              v50 = [v59 localizedStringForKey:@"1 of %d occurrences of the event “%@” conflicts with other events on your calendar. If you accept all occurrences value:one will overlap with another scheduled event." table:{&stru_1002133B8, 0}];

              totalConflictsInSeries3 = [v42 totalConflictsInSeries];
              title2 = [v17 title];
              [NSString localizedStringWithFormat:v50, totalConflictsInSeries3, title2, v77];
            }

            else
            {
              v50 = [v59 localizedStringForKey:@"%d of %d occurrences of the event “%@” conflict with other events on your calendar. If you accept all occurrences value:some will overlap with other scheduled events. " table:{&stru_1002133B8, 0}];

              totalConflictsInSeries4 = [v42 totalConflictsInSeries];
              totalOccurrencesInSeries2 = [v42 totalOccurrencesInSeries];
              title2 = [v17 title];
              [NSString localizedStringWithFormat:v50, totalConflictsInSeries4, totalOccurrencesInSeries2, title2];
            }
            v55 = ;
            v54 = selfCopy;
          }

          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_1000A3BC4;
          v92[3] = &unk_100210418;
          v92[4] = v54;
          v96 = v22;
          v64 = notificationCopy;
          v93 = v64;
          v78 = v42;
          v65 = v42;
          v94 = v65;
          v95 = v17;
          v66 = objc_retainBlock(v92);
          v89[0] = _NSConcreteStackBlock;
          v89[1] = 3221225472;
          v89[2] = sub_1000A3E90;
          v89[3] = &unk_100210440;
          v89[4] = v54;
          v91 = v22;
          v90 = v64;
          v67 = objc_retainBlock(v89);
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_1000A3EA4;
          v87[3] = &unk_100210468;
          v88 = v82;
          v68 = objc_retainBlock(v87);
          v69 = [UIAlertController alertControllerWithTitle:v84 message:v55 preferredStyle:1];
          totalOccurrencesInSeries3 = [v65 totalOccurrencesInSeries];
          if (totalOccurrencesInSeries3 != [v65 totalConflictsInSeries])
          {
            v71 = [UIAlertAction actionWithTitle:v80 style:0 handler:v66];
            [v69 addAction:v71];
          }

          v72 = [UIAlertAction actionWithTitle:v81 style:0 handler:v67];
          [v69 addAction:v72];

          v73 = [UIAlertAction actionWithTitle:v79 style:1 handler:v68];
          [v69 addAction:v73];

          delegate = [(InboxNotificationsGroupController *)selfCopy delegate];
          [delegate parentTableViewControllerForGroupController:selfCopy];
          v76 = v75 = v66;
          [v76 presentViewController:v69 animated:1 completion:0];

          cancelledCopy = v82;
          v42 = v78;
        }

        goto LABEL_38;
      }

      selfAttendee2 = [v17 selfAttendee];
      participantType = [selfAttendee2 participantType];

      if (participantType == 3)
      {
        goto LABEL_33;
      }
    }

    v29 = selfCopy;
    goto LABEL_37;
  }

LABEL_39:
}

- (void)_performActionForAllNotifications:(int64_t)notifications save:(id)save
{
  saveCopy = save;
  selfCopy = self;
  obj = [(NSArray *)self->_allNotificationReferences CalMap:&stru_1002104A8];
  if (notifications <= 31)
  {
    if ((notifications - 1) >= 2 && notifications != 4)
    {
      if (notifications == 16)
      {
        goto LABEL_5;
      }

LABEL_23:
      v21 = kCalUILogInboxHandle;
      if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = [NSNumber numberWithInteger:notifications];
        *buf = 138412290;
        v84 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Asked to perform action [%@] for all notifications, but this action is not intended to apply to multiple notifications", buf, 0xCu);
      }

      goto LABEL_71;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v24 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v80;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v80 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v79 + 1) + 8 * i);
          v29 = [CalendarMessageCell cellClassForNotification:v28];
          if (v29 == objc_opt_class())
          {
            v30 = v28;
            v31 = [CalendarMessageEventInvitationCell actionsForNotification:v30];
            v32 = [NSNumber numberWithInteger:notifications];
            v33 = [v31 containsObject:v32];

            if (v33)
            {
              [(InboxNotificationsGroupController *)selfCopy _performAction:notifications forEventInvitationNotification:v30 avoidUserInteraction:1 cancelled:0 cell:0];
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v25);
    }

    goto LABEL_71;
  }

  if (notifications == 32)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v34 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (!v34)
    {
      goto LABEL_71;
    }

    v35 = v34;
    v36 = *v76;
    while (1)
    {
      v37 = 0;
      do
      {
        if (*v76 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v75 + 1) + 8 * v37);
        v39 = [CalendarMessageCell cellClassForNotification:v38];
        if (v39 == objc_opt_class())
        {
          v44 = v38;
          v45 = [CalendarMessageEventInvitationCell actionsForNotification:v44];
          v48 = [NSNumber numberWithInteger:32];
          v49 = [v45 containsObject:v48];

          if (v49)
          {
            [(InboxNotificationsGroupController *)selfCopy _performAction:32 forEventInvitationNotification:v44 avoidUserInteraction:1 cancelled:0 cell:0];
          }

          goto LABEL_53;
        }

        v40 = [CalendarMessageCell cellClassForNotification:v38];
        if (v40 == objc_opt_class())
        {
          v44 = v38;
          eventStore = [(CUIKCalendarModel *)selfCopy->_model eventStore];
          v45 = [CalendarMessageAttendeeReplyCell actionsForNotification:v44 proposedTimeAttendee:0 eventStore:eventStore];

          v51 = [NSNumber numberWithInteger:32];
          v52 = [v45 containsObject:v51];

          if (v52)
          {
            [(InboxNotificationsGroupController *)selfCopy _performActionForAttendeeReplyNotification:v44 save:saveCopy];
          }

LABEL_53:

          goto LABEL_54;
        }

        v41 = [CalendarMessageCell cellClassForNotification:v38];
        if (v41 == objc_opt_class())
        {
          [(InboxNotificationsGroupController *)selfCopy _performActionForInviteReplayNotification:v38];
        }

        else
        {
          v42 = [CalendarMessageCell cellClassForNotification:v38];
          if (v42 != objc_opt_class())
          {
            v43 = [CalendarMessageCell cellClassForNotification:v38];
            if (v43 != objc_opt_class())
            {
              goto LABEL_54;
            }

            v44 = v38;
            v45 = [CalendarMessageSuggestionCell actionsForNotification:v44];
            v46 = [NSNumber numberWithInteger:32];
            v47 = [v45 containsObject:v46];

            if (v47)
            {
              [(InboxNotificationsGroupController *)selfCopy _performAction:32 forSuggestionNotification:v44 save:saveCopy];
            }

            goto LABEL_53;
          }

          [(InboxNotificationsGroupController *)selfCopy _performActionForResourceChangeNotification:v38];
        }

LABEL_54:
        v37 = v37 + 1;
      }

      while (v35 != v37);
      v53 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
      v35 = v53;
      if (!v53)
      {
        goto LABEL_71;
      }
    }
  }

  if (notifications != 128)
  {
    if (notifications == 0x100000)
    {
LABEL_5:
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v6 = [obj countByEnumeratingWithState:&v67 objects:v85 count:16];
      if (!v6)
      {
        goto LABEL_71;
      }

      v7 = v6;
      v8 = *v68;
      p_superclass = MonthDayTransitionView.superclass;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v68 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v67 + 1) + 8 * v10);
        v12 = [CalendarMessageCell cellClassForNotification:v11];
        if (v12 == objc_opt_class())
        {
          break;
        }

        v13 = [CalendarMessageCell cellClassForNotification:v11];
        if (v13 == objc_opt_class())
        {
          v14 = v11;
          v15 = [CalendarMessageEventInvitationCell actionsForNotification:v14];
          v16 = [NSNumber numberWithInteger:notifications];
          v17 = [v15 containsObject:v16];

          if (v17)
          {
            [(InboxNotificationsGroupController *)selfCopy _performAction:notifications forEventInvitationNotification:v14 avoidUserInteraction:1 cancelled:0 cell:0];
          }

LABEL_16:
          p_superclass = (MonthDayTransitionView + 8);
        }

        if (v7 == ++v10)
        {
          v7 = [obj countByEnumeratingWithState:&v67 objects:v85 count:16];
          if (!v7)
          {
            goto LABEL_71;
          }

          goto LABEL_7;
        }
      }

      v18 = v11;
      v15 = [p_superclass + 9 actionsForNotification:v18];
      v19 = [NSNumber numberWithInteger:notifications];
      v20 = [v15 containsObject:v19];

      if (v20)
      {
        [(InboxNotificationsGroupController *)selfCopy _performAction:notifications forSuggestionNotification:v18 save:saveCopy];
      }

      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v54 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v72;
    do
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v72 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v71 + 1) + 8 * j);
        v59 = [CalendarMessageCell cellClassForNotification:v58];
        if (v59 == objc_opt_class())
        {
          v60 = v58;
          v61 = [CalendarMessageSuggestionCell actionsForNotification:v60];
          v62 = [NSNumber numberWithInteger:128];
          v63 = [v61 containsObject:v62];

          if (v63)
          {
            [(InboxNotificationsGroupController *)selfCopy _performAction:128 forSuggestionNotification:v60 save:saveCopy];
          }
        }
      }

      v55 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v55);
  }

LABEL_71:
}

- (void)performAction:(int64_t)action forCell:(id)cell sourceView:(id)view sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled
{
  allCopy = all;
  cellCopy = cell;
  viewCopy = view;
  cancelledCopy = cancelled;
  v13 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [NSNumber numberWithInteger:action];
    v16 = [NSNumber numberWithBool:allCopy];
    *buf = 138543874;
    v153 = v15;
    v154 = 2114;
    v155 = cellCopy;
    v156 = 2114;
    v157 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Perform action [%{public}@] for cell: %{public}@, appliesToAll: %{public}@.", buf, 0x20u);
  }

  delegate = [(InboxNotificationsGroupController *)self delegate];
  v18 = [delegate editorForGroupController:self];

  v147[0] = _NSConcreteStackBlock;
  v147[1] = 3221225472;
  v147[2] = sub_1000A56FC;
  v147[3] = &unk_1002104D0;
  v114 = v18;
  v148 = v114;
  v117 = objc_retainBlock(v147);
  if (allCopy)
  {
    [(InboxNotificationsGroupController *)self _performActionForAllNotifications:action save:v117];
    goto LABEL_90;
  }

  if ((action & 0x700) == 0)
  {
    v146[0] = _NSConcreteStackBlock;
    v146[1] = 3221225472;
    v146[2] = sub_1000A57CC;
    v146[3] = &unk_100210520;
    v146[4] = self;
    v113 = objc_retainBlock(v146);
    if ((action & 0x10000) != 0)
    {
      notification = [cellCopy notification];
      v32 = [notification type] == 8;

      notification2 = [cellCopy notification];
      eventStore = [(CUIKCalendarModel *)self->_model eventStore];
      if (!v32)
      {
        v63 = [notification2 eventFromEventStore:eventStore];

        delegate2 = [(InboxNotificationsGroupController *)self delegate];
        v65 = [delegate2 parentTableViewControllerForGroupController:self];
        PresentJunkAlertControllerForEvent();

LABEL_89:
        goto LABEL_90;
      }

      v34 = [notification2 calendarFromEventStore:eventStore];

      if (v34)
      {
        delegate3 = [(InboxNotificationsGroupController *)self delegate];
        v36 = [delegate3 parentTableViewControllerForGroupController:self];
        v139 = _NSConcreteStackBlock;
        v140 = 3221225472;
        v141 = sub_1000A596C;
        v142 = &unk_100210548;
        v143 = v34;
        v145 = v113;
        v144 = notification2;
        PresentJunkAlertControllerWithHandler();
      }

      else
      {
        v69 = kCalUILogInboxHandle;
        if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v153 = notification2;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Error reading shared calendar invitation: could not get a calendar for shared calendar notification: %@", buf, 0xCu);
        }
      }

      goto LABEL_88;
    }

    if ((action & 0x1000) == 0)
    {
      if ((action & 0x2000) != 0)
      {
        notification3 = [cellCopy notification];
        eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
        notification2 = [notification3 eventFromEventStore:eventStore2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          proposedTimeAttendee = [cellCopy proposedTimeAttendee];
        }

        else
        {
          proposedTimeAttendee = 0;
        }

        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        attendees = [notification2 attendees];
        v90 = [attendees countByEnumeratingWithState:&v128 objects:v150 count:16];
        if (v90)
        {
          v91 = *v129;
          do
          {
            for (i = 0; i != v90; i = i + 1)
            {
              if (*v129 != v91)
              {
                objc_enumerationMutation(attendees);
              }

              v93 = *(*(&v128 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v94 = v93;
                v95 = [v94 URL];
                v96 = [proposedTimeAttendee URL];
                v97 = [v95 isEqual:v96];

                if (v97)
                {
                  [v94 setCommentChanged:0];
                  [v94 setStatusChanged:0];
                  [v94 setProposedStartDateChanged:0];
                  [v94 setProposedStartDateStatus:3];
                }
              }
            }

            v90 = [attendees countByEnumeratingWithState:&v128 objects:v150 count:16];
          }

          while (v90);
        }

        (v117[2])(v117, notification2, 0);
        goto LABEL_88;
      }

      notification4 = [cellCopy notification];
      if ((action & 0x4000) != 0)
      {
        eventStore3 = [(CUIKCalendarModel *)self->_model eventStore];
        notification2 = [notification4 eventFromEventStore:eventStore3];

        v71 = objc_opt_new();
        v127 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        attendees2 = [notification2 attendees];
        v73 = [attendees2 countByEnumeratingWithState:&v124 objects:v149 count:16];
        if (v73)
        {
          v74 = *v125;
          do
          {
            for (j = 0; j != v73; j = j + 1)
            {
              if (*v125 != v74)
              {
                objc_enumerationMutation(attendees2);
              }

              v76 = *(*(&v124 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v77 = v76;
                if ([v77 proposedStartDateChanged])
                {
                  [v71 addObject:v77];
                }
              }
            }

            v73 = [attendees2 countByEnumeratingWithState:&v124 objects:v149 count:16];
          }

          while (v73);
        }

        v78 = [NSBundle bundleForClass:objc_opt_class()];
        v79 = [v78 localizedStringForKey:@"RE:" value:&stru_1002133B8 table:0];

        v80 = [[EKUIEmailCompositionManager alloc] initWithEvent:notification2 participantRecipients:v71 subjectPrefix:v79 bodyPrefix:0];
        [(InboxNotificationsGroupController *)self setMessageSendingManager:v80];

        messageSendingManager = [(InboxNotificationsGroupController *)self messageSendingManager];
        objc_initWeak(buf, messageSendingManager);

        v122[0] = _NSConcreteStackBlock;
        v122[1] = 3221225472;
        v122[2] = sub_1000A5A1C;
        v122[3] = &unk_100210598;
        objc_copyWeak(&v123, buf);
        messageSendingManager2 = [(InboxNotificationsGroupController *)self messageSendingManager];
        [messageSendingManager2 setMessageSendingComplete:v122];

        messageSendingManager3 = [(InboxNotificationsGroupController *)self messageSendingManager];
        viewController = [messageSendingManager3 viewController];
        [viewController setModalPresentationStyle:2];

        delegate4 = [(InboxNotificationsGroupController *)self delegate];
        v86 = [delegate4 parentTableViewControllerForGroupController:self];
        messageSendingManager4 = [(InboxNotificationsGroupController *)self messageSendingManager];
        viewController2 = [messageSendingManager4 viewController];
        [v86 presentViewController:viewController2 animated:1 completion:0];

        objc_destroyWeak(&v123);
        objc_destroyWeak(buf);

        goto LABEL_88;
      }

      v25 = [CalendarMessageCell cellClassForNotification:notification4];
      if (v25 == objc_opt_class())
      {
        [(InboxNotificationsGroupController *)self _performAction:action forEventInvitationNotification:notification4 avoidUserInteraction:0 cancelled:cancelledCopy cell:cellCopy];
      }

      else
      {
        v26 = [CalendarMessageCell cellClassForNotification:notification4];
        if (v26 != objc_opt_class())
        {
          v27 = [CalendarMessageCell cellClassForNotification:notification4];
          if (v27 != objc_opt_class())
          {
            v114 = [CalendarMessageCell cellClassForNotification:notification4, v113, v114];
            if (v114 == objc_opt_class())
            {
              [(InboxNotificationsGroupController *)self _performActionForInviteReplayNotification:notification4];
            }

            else
            {
              v29 = [CalendarMessageCell cellClassForNotification:notification4];
              if (v29 == objc_opt_class())
              {
                [(InboxNotificationsGroupController *)self _performActionForResourceChangeNotification:notification4];
              }

              else
              {
                v30 = [CalendarMessageCell cellClassForNotification:notification4];
                if (v30 == objc_opt_class())
                {
                  [(InboxNotificationsGroupController *)self _performAction:action forSuggestionNotification:notification4 save:v117];
                }
              }
            }

            goto LABEL_87;
          }

          notification2 = notification4;
          eventStore4 = [(CUIKCalendarModel *)self->_model eventStore];
          v99 = [notification2 calendarFromEventStore:eventStore4];

          if (v99)
          {
            if (action == 0x20000 || action == 64)
            {
              [v99 setInvitationStatus:{0, v113, v114}];
              calendarIdentifier = [v99 calendarIdentifier];
              if (calendarIdentifier)
              {
                v101 = action == 64;
                v102 = [notification2 URL];
                (v113[2])(v113, notification2);
                v103 = +[DADConnection sharedConnection];
                if (v101)
                {
                  v104 = 1;
                }

                else
                {
                  v104 = 2;
                }

                source = [v99 source];
                externalID = [source externalID];
                v120[0] = _NSConcreteStackBlock;
                v120[1] = 3221225472;
                v120[2] = sub_1000A5A90;
                v120[3] = &unk_1002105C0;
                v120[4] = self;
                v107 = v102;
                v121 = v107;
                [v103 respondToSharedCalendarInvite:v104 forCalendarWithID:calendarIdentifier accountID:externalID queue:&_dispatch_main_q completionBlock:v120];

                if (v101)
                {
                  sharedOwnerName = [v99 sharedOwnerName];
                  sharedOwnerEmail = [v99 sharedOwnerEmail];
                  sharedOwnerPhoneNumber = [v99 sharedOwnerPhoneNumber];
                  [EKRecents recordRecentForContactWithName:sharedOwnerName emailAddress:sharedOwnerEmail phoneNumber:sharedOwnerPhoneNumber];
                }
              }

              else
              {
                v112 = kCalUILogInboxHandle;
                if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v153 = v99;
                  _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Error reading shared calendar invitation: calendar %@ had no calendar identifier", buf, 0xCu);
                }
              }

              goto LABEL_88;
            }
          }

          else
          {
            v111 = kCalUILogInboxHandle;
            if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v153 = notification2;
              _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "Error reading shared calendar invitation: could not get a calendar for shared calendar notification: %@", buf, 0xCu);
            }
          }

LABEL_88:
          goto LABEL_89;
        }

        [(InboxNotificationsGroupController *)self _performActionForAttendeeReplyNotification:notification4 save:v117];
      }

LABEL_87:
      notification2 = notification4;
      goto LABEL_88;
    }

    notification5 = [cellCopy notification];
    eventStore5 = [(CUIKCalendarModel *)self->_model eventStore];
    notification2 = [notification5 eventFromEventStore:eventStore5];

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    attendees3 = [notification2 attendees];
    v40 = 0;
    v41 = [attendees3 countByEnumeratingWithState:&v135 objects:v151 count:16];
    if (v41)
    {
      v42 = *v136;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v136 != v42)
          {
            objc_enumerationMutation(attendees3);
          }

          v44 = *(*(&v135 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = v44;
            [v45 setCommentChanged:0];
            [v45 setStatusChanged:0];
            if ([v45 proposedStartDateChanged])
            {
              v46 = [v45 proposedStartDateForEvent:notification2];

              [v45 setProposedStartDateChanged:0];
              v40 = v46;
            }
          }
        }

        v41 = [attendees3 countByEnumeratingWithState:&v135 objects:v151 count:16];
      }

      while (v41);

      if (!v40)
      {
        goto LABEL_38;
      }

      endDate = [notification2 endDate];
      startDate = [notification2 startDate];
      [endDate timeIntervalSinceDate:startDate];
      v50 = v49;

      [notification2 setStartDate:v40];
      attendees3 = [v40 dateByAddingTimeInterval:v50];
      [notification2 setEndDate:attendees3];
    }

LABEL_38:
    [notification2 dismissAcceptedProposeNewTimeNotification];
    if ([notification2 hasRecurrenceRules])
    {
      delegate5 = [(InboxNotificationsGroupController *)self delegate];
      v52 = [delegate5 parentTableViewControllerForGroupController:self];
      [cellCopy bounds];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v132[0] = _NSConcreteStackBlock;
      v132[1] = 3221225472;
      v132[2] = sub_1000A59B4;
      v132[3] = &unk_100210570;
      v132[4] = self;
      v134 = v117;
      v133 = notification2;
      v61 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v52 sourceView:cellCopy sourceRect:v133 forEvent:v132 withCompletionHandler:v54, v56, v58, v60];
      recurrenceAlertController = self->_recurrenceAlertController;
      self->_recurrenceAlertController = v61;
    }

    else
    {
      (v117[2])(v117, notification2, 0);
    }

    goto LABEL_88;
  }

  v19 = action == 1024;
  delegate6 = [(InboxNotificationsGroupController *)self delegate];
  tableView = [(InboxNotificationsGroupController *)self tableView];
  v22 = [tableView indexPathForCell:cellCopy];
  v23 = -[InboxNotificationsGroupController eventForRow:](self, "eventForRow:", [v22 row]);
  if (v19)
  {
    [delegate6 inboxTableViewGroupController:self inspectEvent:v23];
  }

  else
  {
    [delegate6 inboxTableViewGroupController:self viewCommentsForEvent:v23];
  }

LABEL_90:
}

- (void)messageCell:(id)cell committedComment:(id)comment
{
  pendingComments = self->_pendingComments;
  commentCopy = comment;
  notification = [cell notification];
  v7 = [notification URL];
  [(NSMutableDictionary *)pendingComments setObject:commentCopy forKeyedSubscript:v7];
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (id)noContentStringForInboxTableView:(id)view
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"No Invitations" value:&stru_1002133B8 table:0];

  return v4;
}

- (void)_localeChanged:(id)changed
{
  changedCopy = changed;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] received the following notification: [%@]", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5DF8;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notificationsChanged:(id)changed
{
  changedCopy = changed;
  v5 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v8 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Received notifications changed notification: %{public}@.", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5F60;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cachedBlockedContactsChanged:(id)changed
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  self->_needsRefresh = 1;
  if ([(InboxNotificationsGroupController *)self visible])
  {
    v4 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will refresh inbox notifications group controller because we got an update about which contacts are blocked.", v5, 2u);
    }

    [(InboxNotificationsGroupController *)self refreshIfNeeded];
  }
}

- (id)tableView
{
  delegate = [(InboxNotificationsGroupController *)self delegate];
  v4 = [delegate parentTableViewControllerForGroupController:self];
  tableView = [v4 tableView];

  return tableView;
}

- (id)_eventForIndexPath:(id)path
{
  v4 = [path row];
  if (v4 >= [(NSMutableArray *)self->_notificationReferences count])
  {
    v12 = 0;
    goto LABEL_13;
  }

  v5 = [(NSMutableArray *)self->_notificationReferences objectAtIndex:v4];
  notification = [v5 notification];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventStore2 = notification;
    objectID = [eventStore2 objectID];

    eventStore = [(CUIKCalendarModel *)self->_model eventStore];
    if (objectID)
    {
      objectID2 = [eventStore2 objectID];
      startDate = [eventStore2 startDate];
      v12 = [eventStore eventForObjectID:objectID2 occurrenceDate:startDate checkValid:0];
    }

    else
    {
      objectID2 = [eventStore2 URL];
      v12 = [eventStore _eventWithURI:objectID2 checkValid:1];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    model = self->_model;
    v14 = notification;
    eventStore2 = [(CUIKCalendarModel *)model eventStore];
    eventStore = [v14 eventID];

    v12 = [eventStore2 eventWithIdentifier:eventStore];
LABEL_11:

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

- (InboxTableViewGroupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end