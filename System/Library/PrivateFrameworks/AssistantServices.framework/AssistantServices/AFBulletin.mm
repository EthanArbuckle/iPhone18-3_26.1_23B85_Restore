@interface AFBulletin
- (BOOL)contentTypeMatchesNotificationType:(id)a3;
- (id)_source;
- (id)saNotificationObject;
- (id)saOnDeviceNotificationObject;
- (void)_setStandardFieldsOnNotificationObject:(id)a3;
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

- (BOOL)contentTypeMatchesNotificationType:(id)a3
{
  v4 = a3;
  v5 = [(AFBulletin *)self bbBulletin];
  v6 = [v5 contentType];

  if (![v4 isEqualToString:SANotificationTypeIncomingCallNotificationValue])
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
    v8 = [v6 isEqualToString:*v7];
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
  v3 = [(AFBulletin *)self sectionID];
  v4 = [(AFBulletin *)self bulletinID];
  v5 = v4;
  if (v3 && v4)
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
    v10 = [(AFBulletin *)self message];
    [v6 setBody:v10];

    v11 = [(AFBulletin *)self subtitle];
    [v6 setSubtitle:v11];

    v12 = [(AFBulletin *)self title];
    [v6 setTitle:v12];

    v13 = [(AFBulletin *)self summary];

    if (v13)
    {
      v14 = [(AFBulletin *)self summary];
      [v6 setSummary:v14];
    }

    else
    {
      v14 = [(AFBulletin *)self bbBulletin];
      v15 = [v14 summary];
      v16 = [v15 string];
      [v6 setSummary:v16];
    }

    v17 = [(AFBulletin *)self bbBulletin];
    v18 = [v17 threadSummary];
    v19 = [v18 string];
    [v6 setThreadSummary:v19];

    v20 = [NSNumber numberWithBool:[(AFBulletin *)self isHighlight]];
    [v6 setIsHighlight:v20];

    v21 = [(AFBulletin *)self notificationRequest];

    if (v21)
    {
      v22 = [(AFBulletin *)self notificationRequest];
      v30 = 0;
      v23 = &v30;
      v24 = &v30;
    }

    else
    {
      v22 = [(AFBulletin *)self bbBulletin];
      v29 = 0;
      v23 = &v29;
      v24 = &v29;
    }

    v25 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v24, v29, v30];
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
      v34 = v3;
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
  v3 = [(AFBulletin *)self sectionID];
  v4 = [(AFBulletin *)self bulletinID];
  v5 = v4;
  if (v3 && v4)
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
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Invalid notification. applicationID %@, bulletinID %@", &v9, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_setStandardFieldsOnNotificationObject:(id)a3
{
  v4 = a3;
  v31 = [(AFBulletin *)self sectionID];
  v5 = [(AFBulletin *)self bulletinID];
  v6 = [NSString alloc];
  v7 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v30 = v5;
  v8 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v7];
  v9 = [v6 initWithFormat:@"x-apple-siri-notification://%@", v8];

  v29 = v9;
  v10 = [[NSURL alloc] initWithString:v9];
  v11 = [(AFBulletin *)self displayName];
  v12 = [(AFBulletin *)self date];
  v13 = [NSNumber numberWithBool:[(AFBulletin *)self isAllDay]];
  v14 = [(AFBulletin *)self endDate];
  v28 = [(AFBulletin *)self recencyDate];
  v15 = [(AFBulletin *)self timeZone];
  v27 = [(AFBulletin *)self previewRestricted];
  v16 = [(AFBulletin *)self bbBulletin];
  v17 = [v16 publicationDate];

  if (v17)
  {
    v18 = [(AFBulletin *)self bbBulletin];
    v19 = [v18 publicationDate];

    v12 = v19;
  }

  else
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v33 = "[AFBulletin(SANotificationObject) _setStandardFieldsOnNotificationObject:]";
      v34 = 2112;
      v21 = v31;
      v35 = v30;
      v36 = 2112;
      v37 = v31;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s BBBulletin with id %@ for applicationId %@ does not have a publicationDate field, falling back to date field instead.", buf, 0x20u);
      goto LABEL_5;
    }
  }

  v21 = v31;
LABEL_5:
  [v4 setApplicationId:v21];
  [v4 setIdentifier:v10];
  [v4 setType:v11];
  [v4 setDate:v12];
  [v4 setDateIsAllDay:v13];
  [v4 setEndDate:v14];
  [v4 setRecencyDate:v28];
  v22 = v15;
  [v4 setTimeZoneId:v15];
  v23 = [(AFBulletin *)self publisherBulletinID];
  [v4 setNotificationId:v23];

  v24 = [NSNumber numberWithBool:v27];
  [v4 setPreviewRestricted:v24];

  v25 = [(AFBulletin *)self threadID];
  [v4 setThreadIdentifier:v25];

  v26 = [(AFBulletin *)self _source];
  [v4 setSource:v26];
}

@end