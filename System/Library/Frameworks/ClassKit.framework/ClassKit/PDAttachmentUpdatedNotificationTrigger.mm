@interface PDAttachmentUpdatedNotificationTrigger
+ (void)_logAttachmentUpdate:(id)update forID:(id)d;
- (PDAttachmentUpdatedNotificationTrigger)initWithDatabase:(id)database;
- (id)classWithClassID:(id)d database:(id)database;
- (void)attachmentDidInsert:(id)insert;
- (void)attachmentWillChange:(id)change;
- (void)dealloc;
- (void)handleAttachmentUpdate:(int64_t)update forAttachment:(id)attachment inDB:(id)b;
@end

@implementation PDAttachmentUpdatedNotificationTrigger

- (PDAttachmentUpdatedNotificationTrigger)initWithDatabase:(id)database
{
  v9.receiver = self;
  v9.super_class = PDAttachmentUpdatedNotificationTrigger;
  v3 = [(PDUserNotificationTrigger *)&v9 initWithDatabase:database];
  if (v3)
  {
    v4 = sub_1000B065C([PDRing alloc], 20);
    notifiedHandoutIds = v3->_notifiedHandoutIds;
    v3->_notifiedHandoutIds = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"attachmentDidInsert:" name:@"PDDatabaseEntityAttachmentDidInsertNotification" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"attachmentWillChange:" name:@"PDDatabaseEntityAttachmentWillChangeNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDAttachmentUpdatedNotificationTrigger;
  [(PDAttachmentUpdatedNotificationTrigger *)&v4 dealloc];
}

- (void)attachmentDidInsert:(id)insert
{
  insertCopy = insert;
  userInfo = [insertCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"currentEntity"];

  title = [v6 title];
  object = [insertCopy object];
  v9 = objc_opt_class();
  parentObjectID = [v6 parentObjectID];
  v23 = parentObjectID;
  v11 = [NSArray arrayWithObjects:&v23 count:1];
  v12 = [object select:v9 where:@"objectID = ?" bindings:v11];

  v13 = [[PDUserNotificationTrigger alloc] initWithDatabase:object];
  if ([(PDUserNotificationTrigger *)v13 isIncompleteHandout:v12])
  {
    dateOfPublication = [v12 dateOfPublication];
    [dateOfPublication timeIntervalSinceNow];
    v16 = fabs(v15);

    if (v16 <= 300.0)
    {
      CLSInitLog();
      v18 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        objectID = [v12 objectID];
        v21 = 138412290;
        v22 = objectID;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChange. 5 minute timer since handout was last published has not passed Handout: %@", &v21, 0xCu);
      }
    }

    else if ([title length])
    {
      object2 = [insertCopy object];
      [(PDAttachmentUpdatedNotificationTrigger *)self handleAttachmentUpdate:0 forAttachment:v6 inDB:object2];
    }
  }
}

- (void)attachmentWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"newEntity"];

  objectID = [v7 objectID];
  object = [changeCopy object];

  v10 = [object select:objc_opt_class() identity:objectID];
  v11 = v10;
  if (!v10)
  {
    CLSInitLog();
    v20 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = objectID;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChange. Could not find an existing handout. attachmentID: %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  title = [v10 title];
  if (!title)
  {
    title2 = [v7 title];
    if (!title2)
    {
      goto LABEL_17;
    }
  }

  title3 = [v11 title];
  if (!title3)
  {
LABEL_11:
    if (!title)
    {
    }

    goto LABEL_16;
  }

  v14 = title3;
  title4 = [v7 title];
  if (!title4)
  {

    goto LABEL_11;
  }

  v16 = title4;
  v21 = title2;
  selfCopy = self;
  title5 = [v11 title];
  title6 = [v7 title];
  v19 = [title5 isEqualToString:title6];

  if (title)
  {
  }

  else
  {
  }

  self = selfCopy;
  if ((v19 & 1) == 0)
  {
LABEL_16:
    [(PDAttachmentUpdatedNotificationTrigger *)self handleAttachmentUpdate:1 forAttachment:v11 inDB:object];
  }

LABEL_17:
}

+ (void)_logAttachmentUpdate:(id)update forID:(id)d
{
  updateCopy = update;
  dCopy = d;
  CLSInitLog();
  v7 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = updateCopy;
    v10 = 2112;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChange > shouldTriggerNotification_Type%@. Attachment ID: %@.", &v8, 0x16u);
  }
}

- (void)handleAttachmentUpdate:(int64_t)update forAttachment:(id)attachment inDB:(id)b
{
  attachmentCopy = attachment;
  bCopy = b;
  if (update == 2)
  {
    goto LABEL_23;
  }

  objectID = [attachmentCopy objectID];
  if (update)
  {
    if (update != 1)
    {
      goto LABEL_7;
    }

    v11 = @"AttachmentTitle";
  }

  else
  {
    v11 = @"AttachmentList";
  }

  [PDAttachmentUpdatedNotificationTrigger _logAttachmentUpdate:v11 forID:objectID];
LABEL_7:
  notifiedHandoutIds = [(PDAttachmentUpdatedNotificationTrigger *)self notifiedHandoutIds];
  parentObjectID = [attachmentCopy parentObjectID];
  v14 = parentObjectID;
  if (!notifiedHandoutIds)
  {

    goto LABEL_11;
  }

  v15 = [notifiedHandoutIds[1] containsObject:parentObjectID];

  if ((v15 & 1) == 0)
  {
LABEL_11:
    notifiedHandoutIds2 = [(PDAttachmentUpdatedNotificationTrigger *)self notifiedHandoutIds];
    parentObjectID2 = [attachmentCopy parentObjectID];
    sub_1000B072C(notifiedHandoutIds2, parentObjectID2);

    v16 = 0;
    goto LABEL_12;
  }

  v16 = 1;
LABEL_12:
  CLSInitLog();
  v19 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v60 = v16 ^ 1;
    *&v60[4] = 2112;
    *&v60[6] = objectID;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChage. Should trigger %d Attachment ID: %@", buf, 0x12u);
  }

  if ((v16 & 1) == 0)
  {
    v20 = objc_opt_class();
    parentObjectID3 = [attachmentCopy parentObjectID];
    v62 = parentObjectID3;
    v22 = [NSArray arrayWithObjects:&v62 count:1];
    v23 = [bCopy select:v20 where:@"objectID = ?" bindings:v22];

    newValue = [v23 objectID];
    v24 = objc_opt_class();
    objectID2 = [v23 objectID];
    v61 = objectID2;
    v26 = [NSArray arrayWithObjects:&v61 count:1];
    [bCopy select:v24 where:@"parentObjectID = ?" bindings:v26];
    v28 = v27 = self;

    classID = [v28 classID];
    v57 = v27;
    v30 = [(PDAttachmentUpdatedNotificationTrigger *)v27 classWithClassID:classID database:bCopy];

    displayName = [v30 displayName];
    v56 = displayName;
    if ([displayName length])
    {
      v54 = v30;
      v55 = objectID;
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
      v34 = [NSString stringWithFormat:v33, displayName];

      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
      title = [v23 title];
      v38 = v34;
      v39 = [NSString stringWithFormat:v36, title];

      v40 = sub_10012F04C([PDUserNotificationData alloc], 6, v34, v39);
      classID2 = [v28 classID];
      v43 = classID2;
      v44 = v28;
      if (v40)
      {
        objc_setProperty_nonatomic_copy(v40, v42, classID2, 32);

        v45 = newValue;
        objc_setProperty_nonatomic_copy(v40, v46, newValue, 24);
        objectID = v55;
        objc_setProperty_nonatomic_copy(v40, v47, v55, 48);
      }

      else
      {

        objectID = v55;
        v45 = newValue;
      }

      v48 = v57;
      [(PDUserNotificationTrigger *)v57 fireTriggerWithNotificationData:v40];

      v30 = v54;
    }

    else
    {
      CLSInitLog();
      v49 = CLSLogNotifications;
      v44 = v28;
      v48 = v27;
      v45 = newValue;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v50 = v49;
        classID3 = [v44 classID];
        *buf = 138412546;
        *v60 = classID3;
        *&v60[8] = 2112;
        *&v60[10] = newValue;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.notificationDataWithDatabase. Could not find class or empty class name. ClassID: %@ HandoutID: %@", buf, 0x16u);
      }
    }

    notifiedHandoutIds3 = [(PDAttachmentUpdatedNotificationTrigger *)v48 notifiedHandoutIds];
    parentObjectID4 = [attachmentCopy parentObjectID];
    sub_1000B07B8(notifiedHandoutIds3, parentObjectID4);
  }

LABEL_23:
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

@end