@interface NotificationHandlingTask
+ (id)taskForData:(id)data type:(id)type recordIdentifier:(id)identifier;
- (NotificationHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier;
- (void)_clearBulletin;
@end

@implementation NotificationHandlingTask

- (void)_clearBulletin
{
  if (self->_recordIdentifier)
  {
    v3 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    [v3 clearBulletinWithRecordID:self->_recordIdentifier];
  }
}

- (NotificationHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = NotificationHandlingTask;
  v7 = [(NotificationHandlingTask *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_recordIdentifier, identifier);
  }

  return v8;
}

+ (id)taskForData:(id)data type:(id)type recordIdentifier:(id)identifier
{
  dataCopy = data;
  typeCopy = type;
  identifierCopy = identifier;
  if (dataCopy)
  {
    if ([typeCopy isEqualToString:@"MapsPushNotifcationTypePushToPhone"])
    {
      v10 = _PushToPhoneHandlingTask;
LABEL_10:
      v11 = [[v10 alloc] initWithData:dataCopy recordIdentifier:identifierCopy];
      goto LABEL_15;
    }

    if ([typeCopy isEqualToString:@"MapsPushNotifcationTypeProblemResolved"])
    {
      v10 = _RAPHandlingTask;
      goto LABEL_10;
    }

    if ([typeCopy isEqualToString:@"MapsPushNotificationTypeAnnouncement"])
    {
      v10 = _AnnounceHandlingTask;
      goto LABEL_10;
    }

    if ([typeCopy isEqualToString:@"MapsPushNotificationTypeSharedTrip"])
    {
      v10 = _SharedTripHandlingTask;
      goto LABEL_10;
    }

    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = typeCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Notification type unknown %@", &v14, 0xCu);
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

@end