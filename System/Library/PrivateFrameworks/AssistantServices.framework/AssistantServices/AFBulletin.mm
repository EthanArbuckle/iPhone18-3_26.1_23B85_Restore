@interface AFBulletin
- (BOOL)contentTypeMatchesNotificationType:(id)type;
- (id)_source;
- (id)saNotificationObject;
- (id)saOnDeviceNotificationObject;
- (void)_setStandardFieldsOnNotificationObject:(id)object;
@end

@implementation AFBulletin

- (id)_source
{
  if (([(AFBulletin *)self feed]& 8) != 0)
  {
    v4 = &SANotificationSourceLOCK_SCREENValue;
LABEL_8:
    v3 = *v4;
    goto LABEL_9;
  }

  if (([(AFBulletin *)self feed]& 1) != 0)
  {
    v4 = &SANotificationSourceNOTIFICATION_CENTERValue;
    goto LABEL_8;
  }

  if ([(AFBulletin *)self availableOnLockScreen])
  {
    v3 = SANotificationSourceLOCK_SCREENValue;
  }

  else
  {
    v3 = 0;
  }

LABEL_9:

  return v3;
}

- (BOOL)contentTypeMatchesNotificationType:(id)type
{
  typeCopy = type;
  bbBulletin = [(AFBulletin *)self bbBulletin];
  contentType = [bbBulletin contentType];

  if (![typeCopy isEqualToString:SANotificationTypeIncomingCallNotificationValue])
  {
    v8 = 1;
    goto LABEL_7;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = qword_100590618;
  v16 = qword_100590618;
  if (!qword_100590618)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100236040;
    v12[3] = &unk_10051E1C8;
    v12[4] = &v13;
    sub_100236040(v12);
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v7)
  {
    v8 = [contentType isEqualToString:*v7];
LABEL_7:

    return v8;
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = [NSString stringWithUTF8String:"NSString *getBBBulletinContentTypeIncomingCall(void)"];
  [v10 handleFailureInFunction:v11 file:@"AFBulletin+SANotificationObject.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (id)saOnDeviceNotificationObject
{
  sectionID = [(AFBulletin *)self sectionID];
  bulletinID = [(AFBulletin *)self bulletinID];
  v5 = bulletinID;
  if (sectionID && bulletinID)
  {
    v6 = objc_alloc_init(SANotificationOnDeviceObject);
    [(AFBulletin *)self _setStandardFieldsOnNotificationObject:v6];
    v7 = [(AFBulletin *)self announcementType]- 1;
    if (v7 > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = **(&off_100517588 + v7);
    }

    [v6 setAnnouncementType:v8];
    message = [(AFBulletin *)self message];
    [v6 setBody:message];

    subtitle = [(AFBulletin *)self subtitle];
    [v6 setSubtitle:subtitle];

    title = [(AFBulletin *)self title];
    [v6 setTitle:title];

    summary = [(AFBulletin *)self summary];

    if (summary)
    {
      summary2 = [(AFBulletin *)self summary];
      [v6 setSummary:summary2];
    }

    else
    {
      summary2 = [(AFBulletin *)self bbBulletin];
      v14Summary = [summary2 summary];
      string = [v14Summary string];
      [v6 setSummary:string];
    }

    bbBulletin = [(AFBulletin *)self bbBulletin];
    threadSummary = [bbBulletin threadSummary];
    string2 = [threadSummary string];
    [v6 setThreadSummary:string2];

    v20 = [NSNumber numberWithBool:[(AFBulletin *)self isHighlight]];
    [v6 setIsHighlight:v20];

    notificationRequest = [(AFBulletin *)self notificationRequest];

    if (notificationRequest)
    {
      notificationRequest2 = [(AFBulletin *)self notificationRequest];
      v30 = 0;
      v23 = &v30;
      v24 = &v30;
    }

    else
    {
      notificationRequest2 = [(AFBulletin *)self bbBulletin];
      v29 = 0;
      v23 = &v29;
      v24 = &v29;
    }

    v25 = [NSKeyedArchiver archivedDataWithRootObject:notificationRequest2 requiringSecureCoding:1 error:v24, v29, v30];
    v26 = *v23;

    if (v26)
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "[AFBulletin(SANotificationObject) saOnDeviceNotificationObject]";
        v33 = 2112;
        v34 = v26;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Error archiving notification request data: %@", buf, 0x16u);
      }
    }

    [v6 setRequest:v25];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "[AFBulletin(SANotificationObject) saOnDeviceNotificationObject]";
      v33 = 2112;
      v34 = sectionID;
      v35 = 2112;
      v36 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Invalid notification. applicationID %@, bulletinID %@", buf, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)saNotificationObject
{
  sectionID = [(AFBulletin *)self sectionID];
  bulletinID = [(AFBulletin *)self bulletinID];
  v5 = bulletinID;
  if (sectionID && bulletinID)
  {
    v6 = objc_alloc_init(SANotificationObject);
    [(AFBulletin *)self _setStandardFieldsOnNotificationObject:v6];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[AFBulletin(SANotificationObject) saNotificationObject]";
      v11 = 2112;
      v12 = sectionID;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Invalid notification. applicationID %@, bulletinID %@", &v9, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_setStandardFieldsOnNotificationObject:(id)object
{
  objectCopy = object;
  sectionID = [(AFBulletin *)self sectionID];
  bulletinID = [(AFBulletin *)self bulletinID];
  v6 = [NSString alloc];
  v7 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v30 = bulletinID;
  v8 = [bulletinID stringByAddingPercentEncodingWithAllowedCharacters:v7];
  v9 = [v6 initWithFormat:@"x-apple-siri-notification://%@", v8];

  v29 = v9;
  v10 = [[NSURL alloc] initWithString:v9];
  displayName = [(AFBulletin *)self displayName];
  date = [(AFBulletin *)self date];
  v13 = [NSNumber numberWithBool:[(AFBulletin *)self isAllDay]];
  endDate = [(AFBulletin *)self endDate];
  recencyDate = [(AFBulletin *)self recencyDate];
  timeZone = [(AFBulletin *)self timeZone];
  previewRestricted = [(AFBulletin *)self previewRestricted];
  bbBulletin = [(AFBulletin *)self bbBulletin];
  publicationDate = [bbBulletin publicationDate];

  if (publicationDate)
  {
    bbBulletin2 = [(AFBulletin *)self bbBulletin];
    publicationDate2 = [bbBulletin2 publicationDate];

    date = publicationDate2;
  }

  else
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v33 = "[AFBulletin(SANotificationObject) _setStandardFieldsOnNotificationObject:]";
      v34 = 2112;
      v21 = sectionID;
      v35 = v30;
      v36 = 2112;
      v37 = sectionID;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s BBBulletin with id %@ for applicationId %@ does not have a publicationDate field, falling back to date field instead.", buf, 0x20u);
      goto LABEL_5;
    }
  }

  v21 = sectionID;
LABEL_5:
  [objectCopy setApplicationId:v21];
  [objectCopy setIdentifier:v10];
  [objectCopy setType:displayName];
  [objectCopy setDate:date];
  [objectCopy setDateIsAllDay:v13];
  [objectCopy setEndDate:endDate];
  [objectCopy setRecencyDate:recencyDate];
  v22 = timeZone;
  [objectCopy setTimeZoneId:timeZone];
  publisherBulletinID = [(AFBulletin *)self publisherBulletinID];
  [objectCopy setNotificationId:publisherBulletinID];

  v24 = [NSNumber numberWithBool:previewRestricted];
  [objectCopy setPreviewRestricted:v24];

  threadID = [(AFBulletin *)self threadID];
  [objectCopy setThreadIdentifier:threadID];

  _source = [(AFBulletin *)self _source];
  [objectCopy setSource:_source];
}

@end