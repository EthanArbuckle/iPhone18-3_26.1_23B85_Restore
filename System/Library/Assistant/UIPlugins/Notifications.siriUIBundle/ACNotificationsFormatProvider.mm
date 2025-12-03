@interface ACNotificationsFormatProvider
- (ACNotificationsFormatProvider)initWithAceObject:(id)object;
- (id)speakableNamespaceProviderForAceObject:(id)object;
- (id)stringForExpression:(id)expression;
@end

@implementation ACNotificationsFormatProvider

- (id)speakableNamespaceProviderForAceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[ACNotificationsFormatProvider alloc] initWithAceObject:objectCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ACNotificationsFormatProvider)initWithAceObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = ACNotificationsFormatProvider;
  v6 = [(ACNotificationsFormatProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notification, object);
    identifier = [(SANotificationObject *)v7->_notification identifier];
    host = [identifier host];
    notificationIdentifier = v7->_notificationIdentifier;
    v7->_notificationIdentifier = host;
  }

  return v7;
}

- (id)stringForExpression:(id)expression
{
  expressionCopy = expression;
  assistantBulletin = self->_assistantBulletin;
  if (assistantBulletin)
  {
    sectionID = [(AFBulletin *)assistantBulletin sectionID];
    v7 = [sectionID isEqualToString:@"com.apple.mobilecal"];

    if (v7)
    {
      if ([expressionCopy isEqualToString:@"dateTime"])
      {
        modalAlertContentMessage = [(AFBulletin *)self->_assistantBulletin modalAlertContentMessage];
LABEL_25:
        v20 = modalAlertContentMessage;
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

      if (![expressionCopy isEqualToString:@"content"])
      {
        if ([expressionCopy isEqualToString:@"subtitle"])
        {
LABEL_11:
          modalAlertContentMessage = [(AFBulletin *)self->_assistantBulletin subtitle];
          goto LABEL_25;
        }

        if (![expressionCopy isEqualToString:@"message"])
        {
LABEL_29:
          v20 = 0;
          goto LABEL_30;
        }

LABEL_8:
        modalAlertContentMessage = [(AFBulletin *)self->_assistantBulletin message];
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    sectionID2 = [(AFBulletin *)self->_assistantBulletin sectionID];
    v11 = [sectionID2 isEqualToString:@"com.apple.mobilephone"];

    if (v11)
    {
      if ([expressionCopy isEqualToString:@"subject"])
      {
        goto LABEL_8;
      }
    }

    else
    {
      sectionID3 = [(AFBulletin *)self->_assistantBulletin sectionID];
      v13 = [sectionID3 isEqualToString:@"com.apple.reminders"];

      if (!v13)
      {
        sectionID4 = [(AFBulletin *)self->_assistantBulletin sectionID];
        v15 = [sectionID4 isEqualToString:@"com.apple.mobilemail"];

        v16 = [expressionCopy isEqualToString:@"subject"];
        if (v15)
        {
          if (!v16)
          {
            if ([expressionCopy isEqualToString:@"content"])
            {
              goto LABEL_11;
            }

            goto LABEL_29;
          }
        }

        else if (!v16 || (-[AFBulletin title](self->_assistantBulletin, "title"), v17 = objc_claimAutoreleasedReturnValue(), -[SANotificationObject type](self->_notification, "type"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 localizedCaseInsensitiveCompare:v18], v18, v17, !v19))
        {
          if (![expressionCopy isEqualToString:@"content"])
          {
            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              sub_10D0(self, expressionCopy, v21);
            }

            goto LABEL_29;
          }

          goto LABEL_8;
        }

LABEL_24:
        modalAlertContentMessage = [(AFBulletin *)self->_assistantBulletin title];
        goto LABEL_25;
      }

      if ([expressionCopy isEqualToString:@"subject"])
      {
        goto LABEL_29;
      }
    }

    if (![expressionCopy isEqualToString:@"content"])
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