@interface PDHandoutAssignedNotificationTrigger
+ (id)dateFormatter:(id)a3;
- (BOOL)baseCriteriaPassesWithHandout:(id)a3 database:(id)a4;
- (PDHandoutAssignedNotificationTrigger)initWithDatabase:(id)a3;
- (id)classWithClassID:(id)a3 database:(id)a4;
- (id)notificationDataWithDatabase:(id)a3 recipient:(id)a4 handoutID:(id)a5 handoutTitle:(id)a6;
- (int64_t)getUpdateFromNewHandout:(id)a3 andExistingHandout:(id)a4;
- (void)dealloc;
- (void)handoutDidInsert:(id)a3;
- (void)handoutRecipientDidInsert:(id)a3;
- (void)handoutWillChange:(id)a3;
@end

@implementation PDHandoutAssignedNotificationTrigger

- (PDHandoutAssignedNotificationTrigger)initWithDatabase:(id)a3
{
  v12.receiver = self;
  v12.super_class = PDHandoutAssignedNotificationTrigger;
  v3 = [(PDUserNotificationTrigger *)&v12 initWithDatabase:a3];
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

- (void)handoutDidInsert:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"currentEntity"];

  CLSInitLog();
  v7 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 objectID];
    v10 = [v6 title];
    v11 = [v6 dateOfPublication];
    v29 = 138412802;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutDidInsert. Handout ID: %@ title: %@ pubTime: %@", &v29, 0x20u);
  }

  v12 = [v4 object];
  if ([v6 publishingState] == 2 && -[PDHandoutAssignedNotificationTrigger baseCriteriaPassesWithHandout:database:](self, "baseCriteriaPassesWithHandout:database:", v6, v12))
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = [v6 objectID];
    CLSInitLog();
    v15 = CLSLogNotifications;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(PDHandoutAssignedNotificationTrigger *)v13 notifiedHandoutIDs];
      v17 = v16;
      if (v16)
      {
        v18 = [*(v16 + 8) containsObject:v14];
      }

      else
      {
        v18 = 0;
      }

      v19 = [NSNumber numberWithBool:v18];
      v29 = 138412546;
      v30 = v14;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutDidInsert > shouldTriggerNotification. Handout ID: %@ In notifiedHandoutIDs: %@", &v29, 0x16u);
    }

    v20 = [(PDHandoutAssignedNotificationTrigger *)v13 notifiedHandoutIDs];
    v21 = v20;
    if (!v20 || (v22 = [*(v20 + 8) containsObject:v14], v21, (v22 & 1) == 0))
    {
      v23 = [v6 title];
      v24 = [(PDHandoutAssignedNotificationTrigger *)v13 pendingRecipientHandoutData];
      v25 = v24;
      if (v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = &stru_100206880;
      }

      [v24 setObject:v26 forKeyedSubscript:v14];

      CLSInitLog();
      v27 = CLSLogNotifications;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [(PDHandoutAssignedNotificationTrigger *)v13 pendingRecipientHandoutData];
        v29 = 138412546;
        v30 = v14;
        v31 = 2112;
        v32 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutDidInsert. Added to pendingRecipientHandoutData. Handout ID: %@ pendingRecipientHandoutData: %@", &v29, 0x16u);
      }
    }

    objc_sync_exit(v13);
  }
}

- (int64_t)getUpdateFromNewHandout:(id)a3 andExistingHandout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dueDate];
  if (!v8)
  {
    v4 = [v6 dueDate];
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  v9 = [v7 dueDate];
  if (!v9)
  {
LABEL_9:
    if (!v8)
    {
    }

    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v6 dueDate];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v7 dueDate];
  v14 = [v6 dueDate];
  v15 = [v13 isEqualToDate:v14];

  if (!v8)
  {

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v18 = [v7 title];
    if (!v18)
    {
      v4 = [v6 title];
      if (!v4)
      {
        goto LABEL_30;
      }
    }

    v19 = [v7 title];
    if (v19)
    {
      v20 = v19;
      v21 = [v6 title];
      if (v21)
      {
        v22 = v21;
        v23 = [v7 title];
        v24 = [v6 title];
        v25 = [v23 isEqualToString:v24];

        if (v18)
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
          v26 = [v7 instructions];
          if (!v26)
          {
            v4 = [v6 instructions];
            if (!v4)
            {
              goto LABEL_43;
            }
          }

          v27 = [v7 instructions];
          if (v27)
          {
            v28 = v27;
            v29 = [v6 instructions];
            if (v29)
            {
              v30 = v29;
              v31 = [v7 instructions];
              v32 = [v6 instructions];
              v33 = [v31 isEqualToString:v32];

              if (v26)
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

          if (!v26)
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

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    else if (!v18)
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
  v16 = [v6 dueDate];

  if (v16)
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

- (void)handoutWillChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"newEntity"];

  v7 = [v6 objectID];
  v8 = [v6 title];
  v9 = [v4 object];

  v10 = [v9 select:objc_opt_class() identity:v7];
  v11 = [[PDUserNotificationTrigger alloc] initWithDatabase:v9];
  if (![(PDUserNotificationTrigger *)v11 isIncompleteHandout:v10]|| ![(PDUserNotificationTrigger *)v11 isIncompleteHandout:v6])
  {
    goto LABEL_63;
  }

  v12 = [v10 publishingState];
  v13 = [v6 publishingState];
  CLSInitLog();
  v14 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    *v83 = v7;
    *&v83[8] = 2112;
    *&v83[10] = v8;
    v84 = 2048;
    v85 = v12;
    v86 = 2048;
    v87 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutWillChange. Handout ID: %@ title: %@ Old pubState: %ld New pubState: %ld", buf, 0x2Au);
  }

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) != 1 || v13 != 2 || ![(PDHandoutAssignedNotificationTrigger *)self baseCriteriaPassesWithHandout:v6 database:v9])
  {
    v18 = [(PDHandoutAssignedNotificationTrigger *)self getUpdateFromNewHandout:v6 andExistingHandout:v10];
    v19 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
    v20 = v19;
    if (v19)
    {
      v17 = [*(v19 + 8) containsObject:v7];
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

    [PDHandoutAssignedNotificationTrigger _logHandoutTypeUpdate:v21 forID:v7 isInNotifiedHandoutIDs:v17];
    goto LABEL_26;
  }

  v15 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
  v16 = v15;
  if (v15)
  {
    v17 = [*(v15 + 8) containsObject:v7];
  }

  else
  {
    v17 = 0;
  }

LABEL_17:
  [PDHandoutAssignedNotificationTrigger _logHandoutTypeUpdate:@"New" forID:v7 isInNotifiedHandoutIDs:v17];
  v18 = 1;
LABEL_26:
  v22 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
  if (v22 && (v23 = v22, v24 = [*(v22 + 8) containsObject:v7], v23, (v24 & 1) != 0))
  {
    v25 = 1;
  }

  else
  {
    v26 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
    sub_1000B072C(v26, v7);

    v25 = 0;
  }

  CLSInitLog();
  v27 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v83 = v25 ^ 1;
    *&v83[4] = 2112;
    *&v83[6] = v7;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutWillChange. Should trigger %d HandoutID: %@", buf, 0x12u);
  }

  if ((v25 & 1) == 0)
  {
    v77 = v8;
    v28 = [v6 objectID];
    v73 = sub_100176270(v9, v28);

    v29 = objc_opt_class();
    v81 = v7;
    v30 = [NSArray arrayWithObjects:&v81 count:1];
    v31 = [v9 select:v29 where:@"parentObjectID = ?" bindings:v30];

    v32 = [v6 title];
    selfa = [(PDHandoutAssignedNotificationTrigger *)self notificationDataWithDatabase:v9 recipient:v31 handoutID:v7 handoutTitle:v32];

    v33 = [v31 classID];
    v34 = [(PDHandoutAssignedNotificationTrigger *)self classWithClassID:v33 database:v9];

    v78 = v34;
    v79 = [v34 displayName];
    if (v18 > 3)
    {
      if ((v18 - 4) < 2)
      {
        v76 = v31;
        v75 = [NSBundle bundleForClass:objc_opt_class()];
        v43 = [v75 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v45 = [NSString stringWithFormat:v43, v79];
        v35 = selfa;
        v8 = v77;
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v44, v45, 8);
        }

        v74 = [NSBundle bundleForClass:objc_opt_class()];
        v46 = [v74 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v42 = [v10 title];
        v72 = v46;
        v48 = [NSString stringWithFormat:v46, v42];
        if (!selfa)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v35 = selfa;
      v8 = v77;
    }

    else
    {
      if (v18 == 1)
      {
        v76 = v31;
        v49 = [NSBundle bundleForClass:objc_opt_class()];
        v50 = v49;
        v8 = v77;
        if (v73)
        {
          v51 = [v49 localizedStringForKey:@"NOTIFICATION_STUDENT_NEW_ASSESSMENT_TITLE" value:&stru_100206880 table:@"ClassKit"];
          v53 = [NSString stringWithFormat:v51, v79];
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
          v67 = [NSString stringWithFormat:v65, v79];
          if (selfa)
          {
            objc_setProperty_nonatomic_copy(selfa, v66, v67, 8);
          }

          v54 = [NSBundle bundleForClass:objc_opt_class()];
          v55 = @"NOTIFICATION_STUDENT_NEW_HANDOUT_MESSAGE_FORMAT";
        }

        v74 = v54;
        v40 = [v54 localizedStringForKey:v55 value:&stru_100206880 table:@"ClassKit"];
        v41 = [v10 title];
        v42 = v41;
        v69 = v79;
LABEL_59:
        v72 = v40;
        v48 = [NSString stringWithFormat:v40, v41, v69];
        v35 = selfa;
        if (!selfa)
        {
LABEL_61:

          v31 = v76;
          goto LABEL_62;
        }

LABEL_60:
        objc_setProperty_nonatomic_copy(v35, v47, v48, 16);
        goto LABEL_61;
      }

      v8 = v77;
      if (v18 == 2)
      {
        v76 = v31;
        v56 = [NSBundle bundleForClass:objc_opt_class()];
        v57 = [v56 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v59 = [NSString stringWithFormat:v57, v79];
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v58, v59, 8);
        }

        v60 = objc_opt_class();
        v61 = +[NSLocale currentLocale];
        v62 = [v60 dateFormatter:v61];

        v72 = [NSBundle bundleForClass:objc_opt_class()];
        v42 = [v72 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_DUE_DATE_UPDATED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v48 = [v10 title];
        [v6 dueDate];
        v71 = v74 = v62;
        v70 = [v62 stringFromDate:?];
        v64 = [NSString stringWithFormat:v42, v48, v70];
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
        v39 = [NSString stringWithFormat:v37, v79];
        if (selfa)
        {
          objc_setProperty_nonatomic_copy(selfa, v38, v39, 8);
        }

        v74 = [NSBundle bundleForClass:objc_opt_class()];
        v40 = [v74 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_DUE_DATE_DELETED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
        v41 = [v10 title];
        v42 = v41;
        goto LABEL_59;
      }
    }

LABEL_62:
    [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v35];
    v68 = [(PDHandoutAssignedNotificationTrigger *)self notifiedHandoutIDs];
    sub_1000B07B8(v68, v7);
  }

LABEL_63:
}

+ (id)dateFormatter:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D6DC;
  block[3] = &unk_100202D40;
  v9 = a3;
  v3 = qword_10024D9B8;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_10024D9B8, block);
  }

  v5 = qword_10024D9B0;
  v6 = qword_10024D9B0;

  return v5;
}

- (void)handoutRecipientDidInsert:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  if (sub_100050844(v5))
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"currentEntity"];

    v8 = [v7 parentObjectID];
    CLSInitLog();
    v9 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v7 classID];
      v32 = 138412546;
      v33 = v8;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Look for parent handout: %@ ClassID: %@", &v32, 0x16u);
    }

    v12 = self;
    objc_sync_enter(v12);
    if (!v8 || (-[PDHandoutAssignedNotificationTrigger notifiedHandoutIDs](v12, "notifiedHandoutIDs"), v13 = objc_claimAutoreleasedReturnValue(), (v14 = v13) != 0) && (v15 = [*(v13 + 8) containsObject:v8], v14, (v15 & 1) != 0))
    {
      CLSInitLog();
      v16 = CLSLogNotifications;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(PDHandoutAssignedNotificationTrigger *)v12 pendingRecipientHandoutData];
        v18 = [(PDHandoutAssignedNotificationTrigger *)v12 notifiedHandoutIDs];
        v32 = 138412802;
        v33 = v8;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Will Not set shouldTriggerNotification. HandoutID: %@ pendingRecipientHandoutData: %@ notifiedHandoutIDs: %@", &v32, 0x20u);
      }

      v19 = 0;
      v20 = 0;
    }

    else
    {
      v22 = [(PDHandoutAssignedNotificationTrigger *)v12 pendingRecipientHandoutData];
      v19 = [v22 objectForKeyedSubscript:v8];

      if (!v19)
      {
        v20 = 0;
        goto LABEL_17;
      }

      CLSInitLog();
      v23 = CLSLogNotifications;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [(PDHandoutAssignedNotificationTrigger *)v12 pendingRecipientHandoutData];
        v25 = [(PDHandoutAssignedNotificationTrigger *)v12 notifiedHandoutIDs];
        v32 = 138412802;
        v33 = v8;
        v34 = 2112;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Will set shouldTriggerNotification. HandoutID: %@ pendingRecipientHandoutData: %@ notifiedHandoutIDs: %@", &v32, 0x20u);
      }

      v26 = [(PDHandoutAssignedNotificationTrigger *)v12 pendingRecipientHandoutData];
      [v26 removeObjectForKey:v8];

      v16 = [(PDHandoutAssignedNotificationTrigger *)v12 notifiedHandoutIDs];
      sub_1000B072C(v16, v8);
      v20 = 1;
    }

LABEL_17:
    objc_sync_exit(v12);

    CLSInitLog();
    v27 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      v29 = [NSNumber numberWithBool:v20];
      v30 = [v7 classID];
      v32 = 138412802;
      v33 = v29;
      v34 = 2112;
      v35 = v30;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.handoutRecipientDidInsert. Should trigger %@ ClassID: %@ HandoutID: %@", &v32, 0x20u);
    }

    if (v20)
    {
      v31 = [(PDHandoutAssignedNotificationTrigger *)v12 notificationDataWithDatabase:v5 recipient:v7 handoutID:v8 handoutTitle:v19];
      [(PDUserNotificationTrigger *)v12 fireTriggerWithNotificationData:v31];
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

- (id)notificationDataWithDatabase:(id)a3 recipient:(id)a4 handoutID:(id)a5 handoutTitle:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  CLSInitLog();
  v14 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v10 classID];
    *buf = 138412802;
    v42 = v16;
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.notificationDataWithDatabase. Class: %@ HandoutID: %@ HandoutTitle: %@", buf, 0x20u);
  }

  v17 = [v10 classID];
  v18 = [(PDHandoutAssignedNotificationTrigger *)self classWithClassID:v17 database:v13];

  v19 = [v18 displayName];
  v20 = &stru_100206880;
  if (v12)
  {
    v20 = v12;
  }

  v21 = v20;

  if ([v19 length])
  {
    v22 = [(PDUserNotificationTrigger *)self database];
    v23 = sub_100176270(v22, v11);

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
    v31 = [NSString stringWithFormat:v30, v21, v19];

    v32 = sub_10012F04C([PDUserNotificationData alloc], 0, v28, v31);
    v33 = [v10 classID];
    v35 = v33;
    if (v32)
    {
      objc_setProperty_nonatomic_copy(v32, v34, v33, 32);

      objc_setProperty_nonatomic_copy(v32, v36, v11, 24);
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
      v39 = [v10 classID];
      *buf = 138412546;
      v42 = v39;
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "PDHandoutAssignedNotificationTrigger.notificationDataWithDatabase. Could not find class or empty class name. ClassID: %@ HandoutID: %@", buf, 0x16u);
    }

    v32 = 0;
  }

  return v32;
}

- (id)classWithClassID:(id)a3 database:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = [v5 select:objc_opt_class() identity:v6];
  }

  return v4;
}

- (BOOL)baseCriteriaPassesWithHandout:(id)a3 database:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isReviewed] & 1) != 0 || !sub_100050844(v6))
  {
    v9 = 0;
  }

  else
  {
    v7 = [v5 dateOfPublication];
    [v7 timeIntervalSinceNow];
    v9 = v8 > -1209600.0;
  }

  return v9;
}

@end