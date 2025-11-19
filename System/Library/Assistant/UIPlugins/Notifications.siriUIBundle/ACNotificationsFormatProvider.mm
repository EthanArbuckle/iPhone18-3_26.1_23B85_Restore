@interface ACNotificationsFormatProvider
- (ACNotificationsFormatProvider)initWithAceObject:(id)a3;
- (id)speakableNamespaceProviderForAceObject:(id)a3;
- (id)stringForExpression:(id)a3;
@end

@implementation ACNotificationsFormatProvider

- (id)speakableNamespaceProviderForAceObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[ACNotificationsFormatProvider alloc] initWithAceObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ACNotificationsFormatProvider)initWithAceObject:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ACNotificationsFormatProvider;
  v6 = [(ACNotificationsFormatProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notification, a3);
    v8 = [(SANotificationObject *)v7->_notification identifier];
    v9 = [v8 host];
    notificationIdentifier = v7->_notificationIdentifier;
    v7->_notificationIdentifier = v9;
  }

  return v7;
}

- (id)stringForExpression:(id)a3
{
  v4 = a3;
  assistantBulletin = self->_assistantBulletin;
  if (assistantBulletin)
  {
    v6 = [(AFBulletin *)assistantBulletin sectionID];
    v7 = [v6 isEqualToString:@"com.apple.mobilecal"];

    if (v7)
    {
      if ([v4 isEqualToString:@"dateTime"])
      {
        v8 = [(AFBulletin *)self->_assistantBulletin modalAlertContentMessage];
LABEL_25:
        v20 = v8;
LABEL_30:
        if ([v20 length])
        {
          v9 = [AFSpeakableUtteranceParser parseUserGeneratedMessage:v20];
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_34;
      }

      if (![v4 isEqualToString:@"content"])
      {
        if ([v4 isEqualToString:@"subtitle"])
        {
LABEL_11:
          v8 = [(AFBulletin *)self->_assistantBulletin subtitle];
          goto LABEL_25;
        }

        if (![v4 isEqualToString:@"message"])
        {
LABEL_29:
          v20 = 0;
          goto LABEL_30;
        }

LABEL_8:
        v8 = [(AFBulletin *)self->_assistantBulletin message];
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v10 = [(AFBulletin *)self->_assistantBulletin sectionID];
    v11 = [v10 isEqualToString:@"com.apple.mobilephone"];

    if (v11)
    {
      if ([v4 isEqualToString:@"subject"])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = [(AFBulletin *)self->_assistantBulletin sectionID];
      v13 = [v12 isEqualToString:@"com.apple.reminders"];

      if (!v13)
      {
        v14 = [(AFBulletin *)self->_assistantBulletin sectionID];
        v15 = [v14 isEqualToString:@"com.apple.mobilemail"];

        v16 = [v4 isEqualToString:@"subject"];
        if (v15)
        {
          if (!v16)
          {
            if ([v4 isEqualToString:@"content"])
            {
              goto LABEL_11;
            }

            goto LABEL_29;
          }
        }

        else if (!v16 || (-[AFBulletin title](self->_assistantBulletin, "title"), v17 = objc_claimAutoreleasedReturnValue(), -[SANotificationObject type](self->_notification, "type"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 localizedCaseInsensitiveCompare:v18], v18, v17, !v19))
        {
          if (![v4 isEqualToString:@"content"])
          {
            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              sub_10D0(self, v4, v21);
            }

            goto LABEL_29;
          }

          goto LABEL_8;
        }

LABEL_24:
        v8 = [(AFBulletin *)self->_assistantBulletin title];
        goto LABEL_25;
      }

      if ([v4 isEqualToString:@"subject"])
      {
        goto LABEL_29;
      }
    }

    if (![v4 isEqualToString:@"content"])
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v9 = 0;
LABEL_34:

  return v9;
}

@end