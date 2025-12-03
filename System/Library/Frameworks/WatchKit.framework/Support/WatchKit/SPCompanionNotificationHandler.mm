@interface SPCompanionNotificationHandler
+ (id)sharedInstance;
- (SPCompanionNotificationHandler)init;
- (void)injectBulletinWithSectionID:(id)d gizmoAppIdentifier:(id)identifier bulletinID:(id)iD remoteNotificationContext:(id)context forceStatic:(BOOL)static completion:(id)completion;
@end

@implementation SPCompanionNotificationHandler

- (void)injectBulletinWithSectionID:(id)d gizmoAppIdentifier:(id)identifier bulletinID:(id)iD remoteNotificationContext:(id)context forceStatic:(BOOL)static completion:(id)completion
{
  staticCopy = static;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  contextCopy = context;
  completionCopy = completion;
  v13 = wk_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "[SPCompanionNotificationHandler injectBulletinWithSectionID:gizmoAppIdentifier:bulletinID:remoteNotificationContext:forceStatic:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 65;
    *&buf[18] = 2114;
    *&buf[20] = dCopy;
    *&buf[28] = 2114;
    *&buf[30] = identifierCopy;
    *&buf[38] = 2114;
    v72 = iDCopy;
    v73 = 2114;
    v74 = contextCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: injecting bulletin with sectionID:%{public}@, gizmoAppIdentifier:%{public}@, bulletinID:%{public}@, remoteNotificationContext:%{public}@", buf, 0x3Au);
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x2050000000;
  v14 = qword_100051E70;
  v70 = qword_100051E70;
  if (!qword_100051E70)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100027D70;
    *&buf[24] = &unk_100045AB0;
    *&buf[32] = &v67;
    sub_100027D70(buf);
    v14 = v68[3];
  }

  v15 = v14;
  _Block_object_dispose(&v67, 8);
  v16 = objc_alloc_init(v14);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2050000000;
  v17 = qword_100051E80;
  v70 = qword_100051E80;
  if (!qword_100051E80)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100027F3C;
    *&buf[24] = &unk_100045AB0;
    *&buf[32] = &v67;
    sub_100027F3C(buf);
    v17 = v68[3];
  }

  v18 = v17;
  _Block_object_dispose(&v67, 8);
  v19 = [v17 requestWithIdentifier:iDCopy pushPayload:contextCopy bundleIdentifier:dCopy];
  v67 = 0;
  v68 = &v67;
  v69 = 0x2050000000;
  v20 = qword_100051E90;
  v70 = qword_100051E90;
  if (!qword_100051E90)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100028104;
    *&buf[24] = &unk_100045AB0;
    *&buf[32] = &v67;
    sub_100028104(buf);
    v20 = v68[3];
  }

  v21 = v20;
  _Block_object_dispose(&v67, 8);
  date = [v16 date];
  v57 = [v20 notificationWithRequest:v19 date:date];

  v66 = 0;
  v23 = [NSKeyedArchiver archivedDataWithRootObject:v57 requiringSecureCoding:1 error:&v66];
  v55 = v66;
  if (!v23)
  {
    v24 = wk_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10002B510(v55, v24);
    }
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v25 = qword_100051E98;
  v70 = qword_100051E98;
  if (!qword_100051E98)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10002815C;
    *&buf[24] = &unk_100045AB0;
    *&buf[32] = &v67;
    v26 = sub_100027DC8();
    v27 = dlsym(v26, "BLTBulletinContextArchivedUserNotificationKey");
    *(*(*&buf[32] + 8) + 24) = v27;
    qword_100051E98 = *(*(*&buf[32] + 8) + 24);
    v25 = v68[3];
  }

  _Block_object_dispose(&v67, 8);
  if (!v25)
  {
    sub_10002854C();
    __break(1u);
  }

  [v16 setContextValue:v23 forKey:*v25];
  content = [v19 content];
  title = [content title];

  content2 = [v19 content];
  subtitle = [content2 subtitle];

  content3 = [v19 content];
  body = [content3 body];

  [v16 setBulletinID:iDCopy];
  if (title)
  {
    [v16 setTitle:title];
  }

  if (subtitle)
  {
    [v16 setSubtitle:subtitle];
  }

  [v16 setMessage:{body, completionCopy}];
  [v16 setSectionID:dCopy];
  v33 = +[NSUUID UUID];
  uUIDString = [v33 UUIDString];
  [v16 setPublisherBulletinID:uUIDString];

  publisherBulletinID = [v16 publisherBulletinID];
  [v16 setRecordID:publisherBulletinID];

  v36 = +[NSDate date];
  [v16 setDate:v36];

  v37 = [[BBSound alloc] initWithToneAlert:17];
  [v16 setSound:v37];

  v38 = [contextCopy mutableCopy];
  [v38 removeObjectForKey:@"WatchKit Simulator Actions"];
  if (staticCopy)
  {
    [v38 setObject:&__kCFBooleanTrue forKeyedSubscript:@"NFS"];
  }

  [v38 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_WK_SFX"];
  [v16 setContextValue:v38 forKey:@"remoteNotification"];
  content4 = [v19 content];
  categoryIdentifier = [content4 categoryIdentifier];
  [v16 setContextValue:categoryIdentifier forKey:@"category"];

  content5 = [v19 content];
  threadIdentifier = [content5 threadIdentifier];
  [v16 setThreadID:threadIdentifier];

  [v16 setContextValue:@"AppNotificationRemote" forKey:@"notificationType"];
  [v16 setContextValue:identifierCopy forKey:@"BLTSockPuppetAppIdentifierKey"];
  v43 = [contextCopy objectForKeyedSubscript:@"WatchKit Simulator Actions"];
  if ([v43 count])
  {
    +[NSMutableArray array];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100027A30;
    v65 = v64[3] = &unk_1000464A8;
    v44 = v65;
    [v43 enumerateObjectsUsingBlock:v64];
    [v16 setSupplementaryActions:v44];
  }

  if (!self->_bltTestService)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x2050000000;
    v45 = qword_100051EA0;
    v70 = qword_100051EA0;
    if (!qword_100051EA0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000281AC;
      *&buf[24] = &unk_100045AB0;
      *&buf[32] = &v67;
      sub_1000281AC(buf);
      v45 = v68[3];
    }

    v46 = v45;
    _Block_object_dispose(&v67, 8);
    v47 = objc_alloc_init(v45);
    bltTestService = self->_bltTestService;
    self->_bltTestService = v47;
  }

  v49 = wk_default_log();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "[SPCompanionNotificationHandler injectBulletinWithSectionID:gizmoAppIdentifier:bulletinID:remoteNotificationContext:forceStatic:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 145;
    *&buf[18] = 2114;
    *&buf[20] = dCopy;
    *&buf[28] = 2114;
    *&buf[30] = iDCopy;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: calling [BLTTestService addBulletin:::::] with sectionID %{public}@, bulletinID %{public}@", buf, 0x26u);
  }

  v50 = self->_bltTestService;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100027BB0;
  v62[3] = &unk_1000456C0;
  v63 = v53;
  v51 = v53;
  [(BLTTestService *)v50 addBulletin:v16 forFeed:32878 playLightsAndSirens:1 attachment:0 attachmentType:0 completion:v62];
}

+ (id)sharedInstance
{
  if (qword_100051E60 != -1)
  {
    sub_10002B640();
  }

  v3 = qword_100051E68;

  return v3;
}

- (SPCompanionNotificationHandler)init
{
  v3.receiver = self;
  v3.super_class = SPCompanionNotificationHandler;
  return [(SPCompanionNotificationHandler *)&v3 init];
}

@end