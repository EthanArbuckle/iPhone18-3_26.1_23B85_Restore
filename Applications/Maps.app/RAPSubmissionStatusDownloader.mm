@interface RAPSubmissionStatusDownloader
- (RAPSubmissionStatusDownloader)initWithQuerySource:(int)source;
- (void)_checkForStatusChangeNotificationsNeededForRapInfos:(id)infos;
- (void)_fetchAndUpdateRAPStatusWithOffset:(int64_t)offset batchSize:(unint64_t)size completion:(id)completion;
- (void)_sendStatusChangeNotificationIfNeeded:(id)needed;
- (void)_updateAllSubmissionStatusWithOffset:(int64_t)offset batchSize:(unint64_t)size completion:(id)completion;
- (void)_updateSubmissionStatusWithIdentifier:(id)identifier completion:(id)completion;
- (void)setNotificationCenter:(id)center;
- (void)updateSubmissionStatusesWithCompletion:(id)completion;
@end

@implementation RAPSubmissionStatusDownloader

- (void)_sendStatusChangeNotificationIfNeeded:(id)needed
{
  neededCopy = needed;
  rapResponse = [neededCopy rapResponse];
  hasNotification = [rapResponse hasNotification];

  if (hasNotification)
  {
    WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_notificationCenter);
      v9 = [v8 addRAPNotificationForProblemStatusChangeWithRapInfo:neededCopy];

      v10 = +[MapsPushManager defaultManager];
      data = [neededCopy data];
      [v10 propagateIDSMessageOfType:1 message:data];

      rapResponse2 = [neededCopy rapResponse];
      v13 = +[GEORPRapResponse RapStateIconAsString:](GEORPRapResponse, "RapStateIconAsString:", [rapResponse2 rapStateIcon]);

      rapId = [neededCopy rapId];
      rapResponse3 = [neededCopy rapResponse];
      responseId = [rapResponse3 responseId];
      [RAPNotificationLogEvent reportNotificationWasShownWithRapId:rapId responseId:responseId notificationType:v13 completion:&stru_101656B80];
    }

    else
    {
      v13 = sub_100E82264();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Empty notificationCenter, cannot send a notification", v17, 2u);
      }
    }
  }
}

- (void)_checkForStatusChangeNotificationsNeededForRapInfos:(id)infos
{
  infosCopy = infos;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [infosCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(infosCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 rapDisplayMenu] & 0xFFFFFFFE) == 2)
        {
          [(RAPSubmissionStatusDownloader *)self _sendStatusChangeNotificationIfNeeded:v9];
        }
      }

      v6 = [infosCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_updateSubmissionStatusWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  submissionStatusTicket = self->_submissionStatusTicket;
  querySource = self->_querySource;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100E825C8;
  v11[3] = &unk_101656B60;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [(RAPBatchSubmissionStatusTicket *)submissionStatusTicket fetchStatusesForIdentifiers:identifierCopy querySource:querySource completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_fetchAndUpdateRAPStatusWithOffset:(int64_t)offset batchSize:(unint64_t)size completion:(id)completion
{
  completionCopy = completion;
  v9 = +[NSDate date];
  v10 = [v9 dateByAddingTimeInterval:-7776000.0];

  objc_initWeak(&location, self);
  syncHandler = self->_syncHandler;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100E82BA8;
  v13[3] = &unk_10165E308;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [(RAPSubmissionStatusSyncHandler *)syncHandler fetchUnresolvedRAPIdentifiersWithBatchSize:size offset:offset oldestDate:v10 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_updateAllSubmissionStatusWithOffset:(int64_t)offset batchSize:(unint64_t)size completion:(id)completion
{
  completionCopy = completion;
  UInteger = GEOConfigGetUInteger();
  v10 = sub_100E82264();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    offsetCopy = offset;
    v16 = 2048;
    v17 = UInteger;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating submission status with offset: %lu, totalLimit: %lu", buf, 0x16u);
  }

  if (UInteger < offset || self->_isExpired)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100E82FF4;
    v11[3] = &unk_101656B10;
    objc_copyWeak(v13, buf);
    v12 = completionCopy;
    v13[1] = offset;
    v13[2] = size;
    [(RAPSubmissionStatusDownloader *)self _fetchAndUpdateRAPStatusWithOffset:offset batchSize:size completion:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }
}

- (void)updateSubmissionStatusesWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_isExpired = 0;
  UInteger = GEOConfigGetUInteger();
  v6 = sub_100E82264();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = UInteger;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Start to update submission status with batchSize: %lu", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E831EC;
  v8[3] = &unk_1016610B8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(RAPSubmissionStatusDownloader *)self _updateAllSubmissionStatusWithOffset:0 batchSize:UInteger completion:v8];
}

- (void)setNotificationCenter:(id)center
{
  obj = center;
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_notificationCenter, obj);
    v5 = obj;
  }
}

- (RAPSubmissionStatusDownloader)initWithQuerySource:(int)source
{
  v12.receiver = self;
  v12.super_class = RAPSubmissionStatusDownloader;
  v4 = [(RAPSubmissionStatusDownloader *)&v12 init];
  if (v4)
  {
    v5 = sub_100E82264();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initializing submission status downloader from Maps", v11, 2u);
    }

    v6 = objc_alloc_init(RAPBatchSubmissionStatusTicket);
    submissionStatusTicket = v4->_submissionStatusTicket;
    v4->_submissionStatusTicket = v6;

    v8 = objc_alloc_init(RAPSubmissionStatusSyncHandler);
    syncHandler = v4->_syncHandler;
    v4->_syncHandler = v8;

    v4->_querySource = source;
  }

  return v4;
}

@end