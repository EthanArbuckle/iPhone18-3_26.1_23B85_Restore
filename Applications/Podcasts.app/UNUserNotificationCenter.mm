@interface UNUserNotificationCenter
+ (id)workQueue;
- (id)_mt_identifiersMatchingPodcastUuid:(id)uuid inNotificationRequests:(id)requests;
- (void)_mt_identifiersMatchingDeletedEpisodesOnPodcastUuid:(id)uuid inNotificationRequests:(id)requests ctx:(id)ctx completion:(id)completion;
- (void)mt_removeAllNotificationsForDeletedEpisodesOnPodcastUuid:(id)uuid ctx:(id)ctx;
- (void)mt_removeAllNotificationsForPodcastUuid:(id)uuid;
- (void)mt_removeDeliveredNotificationsForPlayerItemsWithCompletion:(id)completion;
@end

@implementation UNUserNotificationCenter

+ (id)workQueue
{
  if (qword_100583DD8 != -1)
  {
    sub_1003B2D50();
  }

  v3 = qword_100583DD0;

  return v3;
}

- (void)mt_removeAllNotificationsForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  if (![uuidCopy length])
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid parameter", buf, 2u);
    }
  }

  if ([uuidCopy length])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001650EC;
    v9[3] = &unk_1004DE1B0;
    v9[4] = self;
    v6 = uuidCopy;
    v10 = v6;
    [(UNUserNotificationCenter *)self getPendingNotificationRequestsWithCompletionHandler:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100165154;
    v7[3] = &unk_1004DE1B0;
    v7[4] = self;
    v8 = v6;
    [(UNUserNotificationCenter *)self getDeliveredNotificationsWithCompletionHandler:v7];
  }
}

- (void)mt_removeAllNotificationsForDeletedEpisodesOnPodcastUuid:(id)uuid ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  v8 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uuidCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to remove notifications that contain deleted episodes for podcastUuid: %@ ", buf, 0xCu);
  }

  if (![uuidCopy length])
  {
    v9 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid parameter", buf, 2u);
    }
  }

  if ([uuidCopy length])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001653F0;
    v15[3] = &unk_1004DADD8;
    v15[4] = self;
    v10 = uuidCopy;
    v16 = v10;
    v11 = ctxCopy;
    v17 = v11;
    [(UNUserNotificationCenter *)self getPendingNotificationRequestsWithCompletionHandler:v15];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10016560C;
    v12[3] = &unk_1004DADD8;
    v12[4] = self;
    v13 = v10;
    v14 = v11;
    [(UNUserNotificationCenter *)self getDeliveredNotificationsWithCompletionHandler:v12];
  }
}

- (void)mt_removeDeliveredNotificationsForPlayerItemsWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001658D4;
  v4[3] = &unk_1004DC940;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(UNUserNotificationCenter *)selfCopy getDeliveredNotificationsWithCompletionHandler:v4];
}

- (id)_mt_identifiersMatchingPodcastUuid:(id)uuid inNotificationRequests:(id)requests
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100165A20;
  v8[3] = &unk_1004DE258;
  uuidCopy = uuid;
  v5 = uuidCopy;
  v6 = [requests mt_compactMap:v8];

  return v6;
}

- (void)_mt_identifiersMatchingDeletedEpisodesOnPodcastUuid:(id)uuid inNotificationRequests:(id)requests ctx:(id)ctx completion:(id)completion
{
  uuidCopy = uuid;
  requestsCopy = requests;
  ctxCopy = ctx;
  completionCopy = completion;
  v11 = dispatch_group_create();
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_100008C2C;
  v44[4] = sub_10003B5EC;
  v45 = objc_alloc_init(NSMutableArray);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = requestsCopy;
  v12 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        dispatch_group_enter(v11);
        identifier = [v15 identifier];
        if ([UNNotificationRequest mt_isUuidRequestIdentifier:identifier matchForPodcastUuid:uuidCopy])
        {
          content = [v15 content];
          mt_notificationEpisodes = [content mt_notificationEpisodes];

          v19 = [mt_notificationEpisodes mt_compactMap:&stru_1004DE278];
          v20 = [NSSet setWithArray:v19];

          v21 = _MTLogCategoryNotifications();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v20 count];
            *buf = 134218498;
            v47 = v22;
            v48 = 2112;
            v49 = uuidCopy;
            v50 = 2112;
            v51 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found notification with %lu episodes for podcastUuid: %@. Episode uuids in notification: %@", buf, 0x20u);
          }

          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_100165EE4;
          v33[3] = &unk_1004DE2A0;
          v23 = v20;
          v34 = v23;
          v24 = ctxCopy;
          v35 = v24;
          v36 = uuidCopy;
          v37 = v11;
          v39 = v44;
          v38 = identifier;
          [v24 performBlock:v33];
        }

        else
        {
          dispatch_group_leave(v11);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v12);
  }

  v25 = +[UNUserNotificationCenter workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016603C;
  block[3] = &unk_1004DCAF8;
  v32 = v44;
  v31 = completionCopy;
  v26 = completionCopy;
  dispatch_group_notify(v11, v25, block);

  _Block_object_dispose(v44, 8);
}

@end