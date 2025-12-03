@interface CLBAlertPresenter
- (BOOL)_shouldShowAlertFromSource:(id)source;
- (CLBAlertPresenter)initWithWindowScene:(id)scene;
- (id)alertWithToken:(int)token;
- (void)_handleLocationAlert:(id)alert fromDictionary:(id)dictionary;
- (void)addAlertFromDictionary:(id)dictionary replyPort:(unsigned int)port requestFlags:(int)flags;
- (void)cancelAlert:(id)alert;
- (void)cancelAlertFromDictionary:(id)dictionary;
- (void)giveResponse:(int64_t)response toAlert:(id)alert;
- (void)showAlert:(id)alert;
- (void)showNextAlert;
@end

@implementation CLBAlertPresenter

- (CLBAlertPresenter)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v13.receiver = self;
  v13.super_class = CLBAlertPresenter;
  v5 = [(CLBAlertPresenter *)&v13 init];
  if (v5)
  {
    v6 = [[CLBSecureWindow alloc] initWithWindowScene:sceneCopy];
    alertWindow = v5->_alertWindow;
    v5->_alertWindow = v6;

    v8 = objc_alloc_init(NSMutableArray);
    alerts = v5->_alerts;
    v5->_alerts = v8;

    [(CLBSecureWindow *)v5->_alertWindow setOpaque:0];
    v10 = v5->_alertWindow;
    v11 = +[UIColor clearColor];
    [(CLBSecureWindow *)v10 setBackgroundColor:v11];

    [(CLBSecureWindow *)v5->_alertWindow setWindowLevel:UIWindowLevelAlert];
    [(CLBSecureWindow *)v5->_alertWindow setHidden:1];
  }

  return v5;
}

- (void)addAlertFromDictionary:(id)dictionary replyPort:(unsigned int)port requestFlags:(int)flags
{
  v5 = *&flags;
  v6 = *&port;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy bs_safeStringForKey:@"AlertSource"];
  v10 = -[CLBAlertConfiguration initWithDictionary:replyPort:requestFlags:usesCriticalAlertUI:]([CLBAlertConfiguration alloc], "initWithDictionary:replyPort:requestFlags:usesCriticalAlertUI:", dictionaryCopy, v6, v5, [v9 isEqualToString:@"findmydeviced"]);
  v11 = [[CLBAlertViewController alloc] initWithConfiguration:v10];
  [(NSMutableArray *)self->_alerts addObject:v11];
  if ([(CLBAlertPresenter *)self _shouldShowAlertFromSource:v9])
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Showing alert from allowed source: %@.", &v14, 0xCu);
    }

    [(CLBAlertPresenter *)self showAlert:v11];
  }

  else if ([v9 isEqualToString:@"locationd"])
  {
    [(CLBAlertPresenter *)self _handleLocationAlert:v11 fromDictionary:dictionaryCopy];
  }

  else
  {
    v13 = +[CLFLog commonLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Canceling alert from unallowed source: %@.", &v14, 0xCu);
    }

    [(CLBAlertPresenter *)self cancelAlert:v11];
  }
}

- (BOOL)_shouldShowAlertFromSource:(id)source
{
  v3 = qword_100331158;
  sourceCopy = source;
  if (v3 != -1)
  {
    sub_10028544C();
  }

  v5 = [qword_100331150 containsObject:sourceCopy];

  return v5;
}

- (void)_handleLocationAlert:(id)alert fromDictionary:(id)dictionary
{
  alertCopy = alert;
  v7 = [dictionary bs_safeStringForKey:@"SBUserNotificationExtensionIdentifier"];
  if ([v7 isEqualToString:@"com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin"])
  {
    v8 = CLFLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10028551C(v8);
    }

    selfCopy3 = self;
    v10 = 0;
    goto LABEL_5;
  }

  if ([v7 isEqualToString:@"com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin"])
  {
    v11 = CLFLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Recieved location reprompt alert. Cancel it for now.", v18, 2u);
    }

    otherTitleKey = [alertCopy otherTitleKey];
    v13 = [otherTitleKey isEqualToString:@"LOCATION_CLIENT_PERMISSION_KEEP_ALWAYS_BUTTON"];

    if (v13)
    {
      selfCopy3 = self;
      v10 = 2;
LABEL_5:
      [(CLBAlertPresenter *)selfCopy3 giveResponse:v10 toAlert:alertCopy];
      goto LABEL_14;
    }

    alternateTitleKey = [alertCopy alternateTitleKey];
    v16 = [alternateTitleKey isEqualToString:@"LOCATION_CLIENT_PERMISSION_KEEP_ALWAYS_BUTTON"];

    if (v16)
    {
      selfCopy3 = self;
      v10 = 1;
      goto LABEL_5;
    }

    v17 = +[CLFLog commonLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1002854D8(v17);
    }
  }

  else
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100285460(v7, v14);
    }

    [(CLBAlertPresenter *)self cancelAlert:alertCopy];
  }

LABEL_14:
}

- (id)alertWithToken:(int)token
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_alerts;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 token] == token)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)cancelAlertFromDictionary:(id)dictionary
{
  v4 = [(CLBAlertPresenter *)self alertWithToken:[CLBAlertViewController tokenFromDictionary:dictionary]];
  if (v4)
  {
    [(NSMutableArray *)self->_alerts removeObject:v4];
    [v4 cancel];
  }

  [(CLBAlertPresenter *)self showNextAlert];
}

- (void)showAlert:(id)alert
{
  alertCopy = alert;
  if (![(CLBAlertPresenter *)self isPresentingAlert])
  {
    [(CLBAlertPresenter *)self setIsPresentingAlert:1];
    [(CLBSecureWindow *)self->_alertWindow setRootViewController:alertCopy];
    [(CLBSecureWindow *)self->_alertWindow setHidden:0];
    [(CLBSecureWindow *)self->_alertWindow makeKeyWindow];
    [alertCopy sound];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100021FEC;
    v10 = &unk_1002FC5C8;
    v12 = v11 = self;
    v5 = v12;
    [alertCopy setCompletionBlock:&v7];
    [v5 playWithCompletion:{0, v7, v8, v9, v10, v11}];
    v6 = +[CLBIdleSleepManager sharedInstance];
    [v6 resetIdleTimerAndUndimForReason:3];

    [(NSMutableArray *)self->_alerts removeObject:alertCopy];
  }
}

- (void)giveResponse:(int64_t)response toAlert:(id)alert
{
  alertCopy = alert;
  [(NSMutableArray *)self->_alerts removeObject:alertCopy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002213C;
  v7[3] = &unk_1002FC2F0;
  v7[4] = self;
  [alertCopy setCompletionBlock:v7];
  if (response > 1)
  {
    if (response == 2)
    {
      if ([alertCopy hasOtherResponse])
      {
        [alertCopy otherResponse];
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (response == 3)
    {
      [alertCopy cancel];
    }
  }

  else
  {
    if (!response)
    {
      goto LABEL_11;
    }

    if (response == 1)
    {
      if ([alertCopy hasAlternateResponse])
      {
        [alertCopy alternateResponse];
        goto LABEL_12;
      }

LABEL_11:
      [alertCopy defaultResponse];
    }
  }

LABEL_12:
}

- (void)cancelAlert:(id)alert
{
  alerts = self->_alerts;
  alertCopy = alert;
  [(NSMutableArray *)alerts removeObject:alertCopy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000221EC;
  v6[3] = &unk_1002FC2F0;
  v6[4] = self;
  [alertCopy setCompletionBlock:v6];
  [alertCopy cancel];
}

- (void)showNextAlert
{
  if ([(NSMutableArray *)self->_alerts count])
  {
    lastObject = [(NSMutableArray *)self->_alerts lastObject];
    [(CLBAlertPresenter *)self showAlert:lastObject];
  }

  else
  {
    alertWindow = self->_alertWindow;

    [(CLBSecureWindow *)alertWindow setHidden:1];
  }
}

@end