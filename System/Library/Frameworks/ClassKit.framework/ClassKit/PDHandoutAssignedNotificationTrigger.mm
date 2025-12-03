@interface PDHandoutAssignedNotificationTrigger
+ (id)dateFormatter:(id)formatter;
- (BOOL)baseCriteriaPassesWithHandout:(id)handout database:(id)database;
- (PDHandoutAssignedNotificationTrigger)initWithDatabase:(id)database;
- (id)classWithClassID:(id)d database:(id)database;
- (id)notificationDataWithDatabase:(id)database recipient:(id)recipient handoutID:(id)d handoutTitle:(id)title;
- (int64_t)getUpdateFromNewHandout:(id)handout andExistingHandout:(id)existingHandout;
- (void)dealloc;
- (void)handoutDidInsert:(id)insert;
- (void)handoutRecipientDidInsert:(id)insert;
- (void)handoutWillChange:(id)change;
@end

@implementation PDHandoutAssignedNotificationTrigger

- (PDHandoutAssignedNotificationTrigger)initWithDatabase:(id)database
{
  v12.receiver = self;
  v12.super_class = PDHandoutAssignedNotificationTrigger;
  v3 = [(PDUserNotificationTrigger *)&v12 initWithDatabase:database];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    pendingRecipientHandoutData = v3->_pendingRecipientHandoutData;
    v3->_pendingRecipientHandoutData = v4;

    v6 = sub_1000B065C([PDRing alloc], 20);
    notifiedHandoutIDs = v3->_notifiedHandoutIDs;
    v3->_notifiedHandoutIDs = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"handoutDidInsert:" name:@"PDDatabaseEntityHandoutDidInsertNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"handoutRecipientDidInsert:" name:@"PDDatabaseEntityHandoutRecipientDidInsertNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"handoutWillChange:" name:@"PDDatabaseEntityHandoutWillChangeNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDHandoutAssignedNotificationTrigger;
  [(PDHandoutAssignedNotificationTrigger *)&v4 dealloc];
}

- (void)handoutDidInsert:(id)insert
{
  insertCopy = insert;
  userInfo = [insertCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"currentEntity"];

  CLSInitLog();
  v7 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    objectID = [v6 objectID];
    title = [v6 title];
    dateOfPublication = [v6 dateOfPublication];
    v29 = 138412802;
    v30 = objectID;
    v31 = 2112;
    v32 = title;
    v33 = 2112;
    v34 = dateOfPublication;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutDidInsert. Handout ID: %@ title: %@ pubTime: %@", &v29, 0x20u);
  }

  object = [insertCopy object];
  if ([v6 publishingState] == 2 && -[PDHandoutAssignedNotificationTrigger baseCriteriaPassesWithHandout:database:](self, "baseCriteriaPassesWithHandout:database:", v6, object))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objectID2 = [v6 objectID];
    CLSInitLog();
    v15 = CLSLogNotifications;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      notifiedHandoutIDs = [(PDHandoutAssignedNotificationTrigger *)selfCopy notifiedHandoutIDs];
      v17 = notifiedHandoutIDs;
      if (notifiedHandoutIDs)
      {
        v18 = [*(notifiedHandoutIDs + 8) containsObject:objectID2];
      }

      else
      {
        v18 = 0;
      }

      v19 = [NSNumber numberWithBool:v18];
      v29 = 138412546;
      v30 = objectID2;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutDidInsert > shouldTriggerNotification. Handout ID: %@ In notifiedHandoutIDs: %@", &v29, 0x16u);
    }

    notifiedHandoutIDs2 = [(PDHandoutAssignedNotificationTrigger *)selfCopy notifiedHandoutIDs];
    v21 = notifiedHandoutIDs2;
    if (!notifiedHandoutIDs2 || (v22 = [*(notifiedHandoutIDs2 + 8) containsObject:objectID2], v21, (v22 & 1) == 0))
    {
      title2 = [v6 title];
      pendingRecipientHandoutData = [(PDHandoutAssignedNotificationTrigger *)selfCopy pendingRecipientHandoutData];
      v25 = pendingRecipientHandoutData;
      if (title2)
      {
        v26 = title2;
      }

      else
      {
        v26 = &stru_100206880;
      }

      [pendingRecipientHandoutData setObject:v26 forKeyedSubscript:objectID2];

      CLSInitLog();
      v27 = CLSLogNotifications;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        pendingRecipientHandoutData2 = [(PDHandoutAssignedNotificationTrigger *)selfCopy pendingRecipientHandoutData];
        v29 = 138412546;
        v30 = objectID2;
        v31 = 2112;
        v32 = pendingRecipientHandoutData2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutDidInsert. Added to pendingRecipientHandoutData. Handout ID: %@ pendingRecipientHandoutData: %@", &v29, 0x16u);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (int64_t)getUpdateFromNewHandout:(id)handout andExistingHandout:(id)existingHandout
{
  handoutCopy = handout;
  existingHandoutCopy = existingHandout;
  dueDate = [existingHandoutCopy dueDate];
  if (!dueDate)
  {
    dueDate2 = [handoutCopy dueDate];
    if (!dueDate2)
    {
      goto LABEL_16;
    }
  }

  dueDate3 = [existingHandoutCopy dueDate];
  if (!dueDate3)
  {
LABEL_9:
    if (!dueDate)
    {
    }

    goto LABEL_12;
  }

  v10 = dueDate3;
  dueDate4 = [handoutCopy dueDate];
  if (!dueDate4)
  {

    goto LABEL_9;
  }

  v12 = dueDate4;
  dueDate5 = [existingHandoutCopy dueDate];
  dueDate6 = [handoutCopy dueDate];
  v15 = [dueDate5 isEqualToDate:dueDate6];

  if (!dueDate)
  {

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    title = [existingHandoutCopy title];
    if (!title)
    {
      dueDate2 = [handoutCopy title];
      if (!dueDate2)
      {
        goto LABEL_30;
      }
    }

    title2 = [existingHandoutCopy title];
    if (title2)
    {
      v20 = title2;
      title3 = [handoutCopy title];
      if (title3)
      {
        v22 = title3;
        title4 = [existingHandoutCopy title];
        title5 = [handoutCopy title];
        v25 = [title4 isEqualToString:title5];

        if (title)
        {

          if (v25)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        if (v25)
        {
LABEL_30:
          instructions = [existingHandoutCopy instructions];
          if (!instructions)
          {
            dueDate2 = [handoutCopy instructions];
            if (!dueDate2)
            {
              goto LABEL_43;
            }
          }

          instructions2 = [existingHandoutCopy instructions];
          if (instructions2)
          {
            v28 = instructions2;
            instructions3 = [handoutCopy instructions];
            if (instructions3)
            {
              v30 = instructions3;
              instructions4 = [existingHandoutCopy instructions];
              instructions5 = [handoutCopy instructions];
              v33 = [instructions4 isEqualToString:instructions5];

              if (instructions)
              {

                if (v33)
                {
                  goto LABEL_43;
                }
              }

              else
              {

                if (v33)
                {
LABEL_43:
                  v17 = 6;
                  goto LABEL_44;
                }
              }

              goto LABEL_41;
            }
          }

          if (!instructions)
          {
          }

LABEL_41:
          v17 = 5;
          goto LABEL_44;
        }

LABEL_26:
        v17 = 4;
        goto LABEL_44;
      }

      if (!title)
      {
        goto LABEL_24;
      }
    }

    else if (!title)
    {
LABEL_24:
    }

    goto LABEL_26;
  }

  if (v15)
  {
    goto LABEL_16;
  }

LABEL_12:
  dueDate7 = [handoutCopy dueDate];

  if (dueDate7)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

LABEL_44:

  return v17;
}

- (void)handoutWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"newEntity"];

  objectID = [v6 objectID];
  title = [v6 title];
  object = [changeCopy object];

  v10 = [object select:objc_opt_class() identity:objectID];
  v11 = [[PDUserNotificationTrigger alloc] initWithDatabase:object];
  if (![(PDUserNotificationTrigger *)v11 isIncompleteHandout:v10]|| ![(PDUserNotificationTrigger *)v11 isIncompleteHandout:v6])
  {
    goto LABEL_63;
  }

  publishingState = [v10 publishingState];
  publishingState2 = [v6 publishingState];
  CLSInitLog();
  v14 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    *v83 = objectID;
    *&v83[8] = 2112;
    *&v83[10] = title;
    v84 = 2048;
    v85 = publishingState;
    v86 = 2048;
    v87 = publishingState2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutWillChange. Handout ID: %@ title: %@ Old pubState: %ld New pubState: %ld", buf, 0x2Au);
  }

  if ((publishingState & 0xFFFFFFFFFFFFFFFBLL) != 1 || publishingState2 != 2 || ![(PDHandoutAssignedNotificationTrigger *)self baseCriteriaPassesWithHandout:v6 database:object])
  {
    v18 = [(PDHandoutAssignedNotificationTrigger *)self getUpdateFromNewHandout:v6 andExistingHandout:v10];
    notifiedHandoutIDs = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
    v20 = notifiedHandoutIDs;
    if (notifiedHandoutIDs)
    {
      v17 = [*(notifiedHandoutIDs + 8) containsObject:objectID];
    }

    else
    {
      v17 = 0;
    }

    if (v18 > 3)
    {
      switch(v18)
      {
        case 4:
          v21 = @"Title";
          break;
        case 5:
          v21 = @"Instructions";
          break;
        case 6:
          goto LABEL_63;
        default:
          goto LABEL_26;
      }
    }

    else
    {
      if ((v18 - 2) >= 2)
      {
        if (!v18)
        {
          goto LABEL_63;
        }

        if (v18 != 1)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }

      v21 = @"DueDate";
    }

    [PDHandoutAssignedNotificationTrigger _logHandoutTypeUpdate:v21 forID:objectID isInNotifiedHandoutIDs:v17];
    goto LABEL_26;
  }

  notifiedHandoutIDs2 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
  v16 = notifiedHandoutIDs2;
  if (notifiedHandoutIDs2)
  {
    v17 = [*(notifiedHandoutIDs2 + 8) containsObject:objectID];
  }

  else
  {
    v17 = 0;
  }

LABEL_17:
  [PDHandoutAssignedNotificationTrigger _logHandoutTypeUpdate:@"New" forID:objectID isInNotifiedHandoutIDs:v17];
  v18 = 1;
LABEL_26:
  notifiedHandoutIDs3 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
  if (notifiedHandoutIDs3 && (v23 = notifiedHandoutIDs3, v24 = [*(notifiedHandoutIDs3 + 8) containsObject:objectID], v23, (v24 & 1) != 0))
  {
    v25 = 1;
  }

  else
  {
    notifiedHandoutIDs4 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
    sub_1000B072C(notifiedHandoutIDs4, objectID);

    v25 = 0;
  }

  CLSInitLog();
  v27 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v83 = v25 ^ 1;
    *&v83[4] = 2112;
    *&v83[6] = objectID;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutWillChange. Should trigger %d HandoutID: %@", buf, 0x12u);
  }

  if ((v25 & 1) == 0)
  {
    v77 = title;
    objectID2 = [v6 objectID];
    v73 = sub_100176270(object, objectID2);

    v29 = objc_opt_class();
    v81 = objectID;
    v30 = [NSArray arrayWithObjects:&v81 count:1];
    v31 = [object select:v29 where:@"parentObjectID = ?" bindings:v30];

    title2 = [v6 title];
    selfa = [(PDHandoutAssignedNotificationTrigger *)self notificationDataWithDatabase:object recipient:v31 handoutID:objectID handoutTitle:title2];

    classID = [v31 classID];
    v34 = [(PDHandoutAssignedNotificationTrigger *)self classWithClassID:classID database:object];

    v78 = v34;
    displayName = [v34 displayName];
    if (v18 > 3)
    {
      if ((v18 - 4) < 2)
      {
        v76 = v31;
        v75 = [NSBundle bundleForClass:objc_opt_class()];
        v43 = [v75 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v45 = [NSString stringWithFormat:v43, displayName];
        v35 = selfa;
        title = v77;
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v44, v45, 8);
        }

        v74 = [NSBundle bundleForClass:objc_opt_class()];
        v46 = [v74 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        title3 = [v10 title];
        v72 = v46;
        title5 = [NSString stringWithFormat:v46, title3];
        if (!selfa)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v35 = selfa;
      title = v77;
    }

    else
    {
      if (v18 == 1)
      {
        v76 = v31;
        v49 = [NSBundle bundleForClass:objc_opt_class()];
        v50 = v49;
        title = v77;
        if (v73)
        {
          v51 = [v49 localizedStringForKey:@"NOTIFICATION_STUDENT_NEW_ASSESSMENT_TITLE" value:&stru_100206880 table:@"ClassKit"];
          v53 = [NSString stringWithFormat:v51, displayName];
          if (selfa)
          {
            objc_setProperty_nonatomic_copy(selfa, v52, v53, 8);
          }

          v54 = [NSBundle bundleForClass:objc_opt_class()];
          v55 = @"NOTIFICATION_STUDENT_NEW_ASSESSMENT_MESSAGE_FORMAT";
        }

        else
        {
          v65 = [v49 localizedStringForKey:@"NOTIFICATION_STUDENT_NEW_HANDOUT_TITLE" value:&stru_100206880 table:@"ClassKit"];
          v67 = [NSString stringWithFormat:v65, displayName];
          if (selfa)
          {
            objc_setProperty_nonatomic_copy(selfa, v66, v67, 8);
          }

          v54 = [NSBundle bundleForClass:objc_opt_class()];
          v55 = @"NOTIFICATION_STUDENT_NEW_HANDOUT_MESSAGE_FORMAT";
        }

        v74 = v54;
        v40 = [v54 localizedStringForKey:v55 value:&stru_100206880 table:@"ClassKit"];
        title4 = [v10 title];
        title3 = title4;
        v69 = displayName;
LABEL_59:
        v72 = v40;
        title5 = [NSString stringWithFormat:v40, title4, v69];
        v35 = selfa;
        if (!selfa)
        {
LABEL_61:

          v31 = v76;
          goto LABEL_62;
        }

LABEL_60:
        objc_setProperty_nonatomic_copy(v35, v47, title5, 16);
        goto LABEL_61;
      }

      title = v77;
      if (v18 == 2)
      {
        v76 = v31;
        v56 = [NSBundle bundleForClass:objc_opt_class()];
        v57 = [v56 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v59 = [NSString stringWithFormat:v57, displayName];
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v58, v59, 8);
        }

        v60 = objc_opt_class();
        v61 = +[NSLocale currentLocale];
        v62 = [v60 dateFormatter:v61];

        v72 = [NSBundle bundleForClass:objc_opt_class()];
        title3 = [v72 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_DUE_DATE_UPDATED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        title5 = [v10 title];
        [v6 dueDate];
        v71 = v74 = v62;
        v70 = [v62 stringFromDate:?];
        v64 = [NSString stringWithFormat:title3, title5, v70];
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v63, v64, 16);
        }

        v35 = selfa;
        goto LABEL_61;
      }

      v35 = selfa;
      if (v18 == 3)
      {
        v76 = v31;
        v36 = [NSBundle bundleForClass:objc_opt_class()];
        v37 = [v36 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v39 = [NSString stringWithFormat:v37, displayName];
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v38, v39, 8);
        }

        v74 = [NSBundle bundleForClass:objc_opt_class()];
        v40 = [v74 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_DUE_DATE_DELETED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        title4 = [v10 title];
        title3 = title4;
        goto LABEL_59;
      }
    }

LABEL_62:
    [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v35];
    notifiedHandoutIDs5 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
    sub_1000B07B8(notifiedHandoutIDs5, objectID);
  }

LABEL_63:
}

+ (id)dateFormatter:(id)formatter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D6DC;
  block[3] = &unk_100202D40;
  formatterCopy = formatter;
  v3 = qword_10024D9B8;
  v4 = formatterCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_10024D9B8, block);
  }

  v5 = qword_10024D9B0;
  v6 = qword_10024D9B0;

  return v5;
}

- (void)handoutRecipientDidInsert:(id)insert
{
  insertCopy = insert;
  object = [insertCopy object];
  if (sub_100050844(object))
  {
    userInfo = [insertCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"currentEntity"];

    parentObjectID = [v7 parentObjectID];
    CLSInitLog();
    v9 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      classID = [v7 classID];
      v32 = 138412546;
      v33 = parentObjectID;
      v34 = 2112;
      v35 = classID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Look for parent handout: %@ ClassID: %@", &v32, 0x16u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!parentObjectID || (-[PDHandoutAssignedNotificationTrigger notifiedHandoutIDs](selfCopy, "notifiedHandoutIDs"), v13 = objc_claimAutoreleasedReturnValue(), (v14 = v13) != 0) && (v15 = [*(v13 + 8) containsObject:parentObjectID], v14, (v15 & 1) != 0))
    {
      CLSInitLog();
      notifiedHandoutIDs3 = CLSLogNotifications;
      if (os_log_type_enabled(notifiedHandoutIDs3, OS_LOG_TYPE_INFO))
      {
        pendingRecipientHandoutData = [(PDHandoutAssignedNotificationTrigger *)selfCopy pendingRecipientHandoutData];
        notifiedHandoutIDs = [(PDHandoutAssignedNotificationTrigger *)selfCopy notifiedHandoutIDs];
        v32 = 138412802;
        v33 = parentObjectID;
        v34 = 2112;
        v35 = pendingRecipientHandoutData;
        v36 = 2112;
        v37 = notifiedHandoutIDs;
        _os_log_impl(&_mh_execute_header, notifiedHandoutIDs3, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Will Not set shouldTriggerNotification. HandoutID: %@ pendingRecipientHandoutData: %@ notifiedHandoutIDs: %@", &v32, 0x20u);
      }

      v19 = 0;
      v20 = 0;
    }

    else
    {
      pendingRecipientHandoutData2 = [(PDHandoutAssignedNotificationTrigger *)selfCopy pendingRecipientHandoutData];
      v19 = [pendingRecipientHandoutData2 objectForKeyedSubscript:parentObjectID];

      if (!v19)
      {
        v20 = 0;
        goto LABEL_17;
      }

      CLSInitLog();
      v23 = CLSLogNotifications;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        pendingRecipientHandoutData3 = [(PDHandoutAssignedNotificationTrigger *)selfCopy pendingRecipientHandoutData];
        notifiedHandoutIDs2 = [(PDHandoutAssignedNotificationTrigger *)selfCopy notifiedHandoutIDs];
        v32 = 138412802;
        v33 = parentObjectID;
        v34 = 2112;
        v35 = pendingRecipientHandoutData3;
        v36 = 2112;
        v37 = notifiedHandoutIDs2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Will set shouldTriggerNotification. HandoutID: %@ pendingRecipientHandoutData: %@ notifiedHandoutIDs: %@", &v32, 0x20u);
      }

      pendingRecipientHandoutData4 = [(PDHandoutAssignedNotificationTrigger *)selfCopy pendingRecipientHandoutData];
      [pendingRecipientHandoutData4 removeObjectForKey:parentObjectID];

      notifiedHandoutIDs3 = [(PDHandoutAssignedNotificationTrigger *)selfCopy notifiedHandoutIDs];
      sub_1000B072C(notifiedHandoutIDs3, parentObjectID);
      v20 = 1;
    }

LABEL_17:
    objc_sync_exit(selfCopy);

    CLSInitLog();
    v27 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      v29 = [NSNumber numberWithBool:v20];
      classID2 = [v7 classID];
      v32 = 138412802;
      v33 = v29;
      v34 = 2112;
      v35 = classID2;
      v36 = 2112;
      v37 = parentObjectID;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Should trigger %@ ClassID: %@ HandoutID: %@", &v32, 0x20u);
    }

    if (v20)
    {
      v31 = [(PDHandoutAssignedNotificationTrigger *)selfCopy notificationDataWithDatabase:object recipient:v7 handoutID:parentObjectID handoutTitle:v19];
      [(PDUserNotificationTrigger *)selfCopy fireTriggerWithNotificationData:v31];
    }

    goto LABEL_22;
  }

  CLSInitLog();
  v21 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Skip due to initial sync incomplete.", &v32, 2u);
  }

LABEL_22:
}

- (id)notificationDataWithDatabase:(id)database recipient:(id)recipient handoutID:(id)d handoutTitle:(id)title
{
  recipientCopy = recipient;
  dCopy = d;
  titleCopy = title;
  databaseCopy = database;
  CLSInitLog();
  v14 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    classID = [recipientCopy classID];
    *buf = 138412802;
    v42 = classID;
    v43 = 2112;
    v44 = dCopy;
    v45 = 2112;
    v46 = titleCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.notificationDataWithDatabase. Class: %@ HandoutID: %@ HandoutTitle: %@", buf, 0x20u);
  }

  classID2 = [recipientCopy classID];
  v18 = [(PDHandoutAssignedNotificationTrigger *)self classWithClassID:classID2 database:databaseCopy];

  displayName = [v18 displayName];
  v20 = &stru_100206880;
  if (titleCopy)
  {
    v20 = titleCopy;
  }

  v21 = v20;

  if ([displayName length])
  {
    database = [(PDUserNotificationTrigger *)self database];
    v23 = sub_100176270(database, dCopy);

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = v24;
    if (v23)
    {
      v26 = @"NOTIFICATION_STUDENT_NEW_ASSESSMENT_TITLE";
    }

    else
    {
      v26 = @"NOTIFICATION_STUDENT_NEW_HANDOUT_TITLE";
    }

    if (v23)
    {
      v27 = @"NOTIFICATION_STUDENT_NEW_ASSESSMENT_MESSAGE_FORMAT";
    }

    else
    {
      v27 = @"NOTIFICATION_STUDENT_NEW_HANDOUT_MESSAGE_FORMAT";
    }

    v28 = [v24 localizedStringForKey:v26 value:&stru_100206880 table:@"ClassKit"];

    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:v27 value:&stru_100206880 table:@"ClassKit"];
    v31 = [NSString stringWithFormat:v30, v21, displayName];

    v32 = sub_10012F04C([PDUserNotificationData alloc], 0, v28, v31);
    classID3 = [recipientCopy classID];
    v35 = classID3;
    if (v32)
    {
      objc_setProperty_nonatomic_copy(v32, v34, classID3, 32);

      objc_setProperty_nonatomic_copy(v32, v36, dCopy, 24);
    }

    else
    {
    }
  }

  else
  {
    CLSInitLog();
    v37 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      classID4 = [recipientCopy classID];
      *buf = 138412546;
      v42 = classID4;
      v43 = 2112;
      v44 = dCopy;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.notificationDataWithDatabase. Could not find class or empty class name. ClassID: %@ HandoutID: %@", buf, 0x16u);
    }

    v32 = 0;
  }

  return v32;
}

- (id)classWithClassID:(id)d database:(id)database
{
  dCopy = d;
  if (d)
  {
    databaseCopy = database;
    v6 = dCopy;
    dCopy = [databaseCopy select:objc_opt_class() identity:v6];
  }

  return dCopy;
}

- (BOOL)baseCriteriaPassesWithHandout:(id)handout database:(id)database
{
  handoutCopy = handout;
  databaseCopy = database;
  if (([handoutCopy isReviewed] & 1) != 0 || !sub_100050844(databaseCopy))
  {
    v9 = 0;
  }

  else
  {
    dateOfPublication = [handoutCopy dateOfPublication];
    [dateOfPublication timeIntervalSinceNow];
    v9 = v8 > -1209600.0;
  }

  return v9;
}

@end