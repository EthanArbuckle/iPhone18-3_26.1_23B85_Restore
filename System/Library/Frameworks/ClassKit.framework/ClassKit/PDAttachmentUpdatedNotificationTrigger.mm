@interface PDAttachmentUpdatedNotificationTrigger
+ (void)_logAttachmentUpdate:(id)a3 forID:(id)a4;
- (PDAttachmentUpdatedNotificationTrigger)initWithDatabase:(id)a3;
- (id)classWithClassID:(id)a3 database:(id)a4;
- (void)attachmentDidInsert:(id)a3;
- (void)attachmentWillChange:(id)a3;
- (void)dealloc;
- (void)handleAttachmentUpdate:(int64_t)a3 forAttachment:(id)a4 inDB:(id)a5;
@end

@implementation PDAttachmentUpdatedNotificationTrigger

- (PDAttachmentUpdatedNotificationTrigger)initWithDatabase:(id)a3
{
  v9.receiver = self;
  v9.super_class = PDAttachmentUpdatedNotificationTrigger;
  v3 = [(PDUserNotificationTrigger *)&v9 initWithDatabase:a3];
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

- (void)attachmentDidInsert:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"currentEntity"];

  v7 = [v6 title];
  v8 = [v4 object];
  v9 = objc_opt_class();
  v10 = [v6 parentObjectID];
  v23 = v10;
  v11 = [NSArray arrayWithObjects:&v23 count:1];
  v12 = [v8 select:v9 where:@"objectID = ?" bindings:v11];

  v13 = [[PDUserNotificationTrigger alloc] initWithDatabase:v8];
  if ([(PDUserNotificationTrigger *)v13 isIncompleteHandout:v12])
  {
    v14 = [v12 dateOfPublication];
    [v14 timeIntervalSinceNow];
    v16 = fabs(v15);

    if (v16 <= 300.0)
    {
      CLSInitLog();
      v18 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [v12 objectID];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChange. 5 minute timer since handout was last published has not passed Handout: %@", &v21, 0xCu);
      }
    }

    else if ([v7 length])
    {
      v17 = [v4 object];
      [(PDAttachmentUpdatedNotificationTrigger *)self handleAttachmentUpdate:0 forAttachment:v6 inDB:v17];
    }
  }
}

- (void)attachmentWillChange:(id)a3
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"newEntity"];

  v8 = [v7 objectID];
  v9 = [v5 object];

  v10 = [v9 select:objc_opt_class() identity:v8];
  v11 = v10;
  if (!v10)
  {
    CLSInitLog();
    v20 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChange. Could not find an existing handout. attachmentID: %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v12 = [v10 title];
  if (!v12)
  {
    v3 = [v7 title];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v13 = [v11 title];
  if (!v13)
  {
LABEL_11:
    if (!v12)
    {
    }

    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v7 title];
  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = v15;
  v21 = v3;
  v22 = self;
  v17 = [v11 title];
  v18 = [v7 title];
  v19 = [v17 isEqualToString:v18];

  if (v12)
  {
  }

  else
  {
  }

  self = v22;
  if ((v19 & 1) == 0)
  {
LABEL_16:
    [(PDAttachmentUpdatedNotificationTrigger *)self handleAttachmentUpdate:1 forAttachment:v11 inDB:v9];
  }

LABEL_17:
}

+ (void)_logAttachmentUpdate:(id)a3 forID:(id)a4
{
  v5 = a3;
  v6 = a4;
  CLSInitLog();
  v7 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChange > shouldTriggerNotification_Type%@. Attachment ID: %@.", &v8, 0x16u);
  }
}

- (void)handleAttachmentUpdate:(int64_t)a3 forAttachment:(id)a4 inDB:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 2)
  {
    goto LABEL_23;
  }

  v10 = [v8 objectID];
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_7;
    }

    v11 = @"AttachmentTitle";
  }

  else
  {
    v11 = @"AttachmentList";
  }

  [PDAttachmentUpdatedNotificationTrigger _logAttachmentUpdate:v11 forID:v10];
LABEL_7:
  v12 = [(PDAttachmentUpdatedNotificationTrigger *)self notifiedHandoutIds];
  v13 = [v8 parentObjectID];
  v14 = v13;
  if (!v12)
  {

    goto LABEL_11;
  }

  v15 = [v12[1] containsObject:v13];

  if ((v15 & 1) == 0)
  {
LABEL_11:
    v17 = [(PDAttachmentUpdatedNotificationTrigger *)self notifiedHandoutIds];
    v18 = [v8 parentObjectID];
    sub_1000B072C(v17, v18);

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
    *&v60[6] = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.attachmentWillChage. Should trigger %d Attachment ID: %@", buf, 0x12u);
  }

  if ((v16 & 1) == 0)
  {
    v20 = objc_opt_class();
    v21 = [v8 parentObjectID];
    v62 = v21;
    v22 = [NSArray arrayWithObjects:&v62 count:1];
    v23 = [v9 select:v20 where:@"objectID = ?" bindings:v22];

    newValue = [v23 objectID];
    v24 = objc_opt_class();
    v25 = [v23 objectID];
    v61 = v25;
    v26 = [NSArray arrayWithObjects:&v61 count:1];
    [v9 select:v24 where:@"parentObjectID = ?" bindings:v26];
    v28 = v27 = self;

    v29 = [v28 classID];
    v57 = v27;
    v30 = [(PDAttachmentUpdatedNotificationTrigger *)v27 classWithClassID:v29 database:v9];

    v31 = [v30 displayName];
    v56 = v31;
    if ([v31 length])
    {
      v54 = v30;
      v55 = v10;
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
      v34 = [NSString stringWithFormat:v33, v31];

      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_FORMAT" value:&stru_100206880 table:@"ClassKit"];
      v37 = [v23 title];
      v38 = v34;
      v39 = [NSString stringWithFormat:v36, v37];

      v40 = sub_10012F04C([PDUserNotificationData alloc], 6, v34, v39);
      v41 = [v28 classID];
      v43 = v41;
      v44 = v28;
      if (v40)
      {
        objc_setProperty_nonatomic_copy(v40, v42, v41, 32);

        v45 = newValue;
        objc_setProperty_nonatomic_copy(v40, v46, newValue, 24);
        v10 = v55;
        objc_setProperty_nonatomic_copy(v40, v47, v55, 48);
      }

      else
      {

        v10 = v55;
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
        v51 = [v44 classID];
        *buf = 138412546;
        *v60 = v51;
        *&v60[8] = 2112;
        *&v60[10] = newValue;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "PDAttachmentUpdatedNotificationTrigger.notificationDataWithDatabase. Could not find class or empty class name. ClassID: %@ HandoutID: %@", buf, 0x16u);
      }
    }

    v52 = [(PDAttachmentUpdatedNotificationTrigger *)v48 notifiedHandoutIds];
    v53 = [v8 parentObjectID];
    sub_1000B07B8(v52, v53);
  }

LABEL_23:
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

@end