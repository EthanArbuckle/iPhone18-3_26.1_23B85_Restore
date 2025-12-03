@interface AppLaunchAddressCorrectionAlert
- (id)_actionsForPromptOptions:(id)options;
- (id)_localizedStringForAddressCorrectionOutcome:(unint64_t)outcome;
- (void)_alertDidFinishProcessing;
- (void)_displayAlert;
- (void)_fetchShouldDisplayAlertWithHandler:(id)handler;
- (void)cancelAlertIfNecessary;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler;
@end

@implementation AppLaunchAddressCorrectionAlert

- (void)_alertDidFinishProcessing
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchAddressCorrectionAlert: alert dismissed", v7, 2u);
  }

  self->_isDisplayingAlert = 0;
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    v5 = objc_retainBlock(completionBlock);
    v6 = self->_completionBlock;
    self->_completionBlock = 0;

    v5[2](v5);
  }
}

- (void)_displayAlert
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  v7 = userInterfaceIdiom != 5;
  if (userInterfaceIdiom == 5)
  {
    v8 = @"AddressCorrection_Permission_Message (macOS)";
  }

  else
  {
    v8 = @"AddressCorrection_Permission_Message (iOS)";
  }

  if (userInterfaceIdiom == 5)
  {
    v9 = &off_1016ED568;
  }

  else
  {
    v9 = &off_1016ED580;
  }

  v10 = [v5 localizedStringForKey:v8 value:@"localized string not found" table:0];

  v20[0] = @"kMapsInterruptionTitle";
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AddressCorrection_Permission_Title" value:@"localized string not found" table:0];
  v21[0] = v12;
  v21[1] = v10;
  v20[1] = @"kMapsInterruptionMessage";
  v20[2] = @"kMapsInterruptionActions";
  v13 = [(AppLaunchAddressCorrectionAlert *)self _actionsForPromptOptions:v9];
  v21[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

  v15 = +[UIApplication sharedMapsDelegate];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B3268C;
  v16[3] = &unk_101638B38;
  v19 = v7;
  v17 = v9;
  selfCopy = self;
  [v15 interruptApplicationWithKind:17 userInfo:v14 completionHandler:v16];
}

- (void)_fetchShouldDisplayAlertWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[MKLocationManager sharedLocationManager];
  isLocationServicesAuthorizationNeeded = [v4 isLocationServicesAuthorizationNeeded];

  v6 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v6 isLocationServicesApproved];

  if (isLocationServicesAuthorizationNeeded || (isLocationServicesApproved & 1) == 0 || [UIApp launchedToTest])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = +[MCProfileConnection sharedConnection];
    if ([v8 userMode] == 1 || objc_msgSend(v8, "isEphemeralMultiUser") || (Integer = GEOConfigGetInteger(), +[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLForKey:", @"HasAcknowledgedAddressCorrectionAlert2021"), v10, Integer) && v11 || (MGGetBoolAnswer() & 1) == 0)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v12 = handlerCopy;
      GEORegisterNetworkDefaults();
    }
  }
}

- (id)_localizedStringForAddressCorrectionOutcome:(unint64_t)outcome
{
  if (outcome - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_101638B58 + outcome - 1);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (id)_actionsForPromptOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = optionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[AppLaunchAddressCorrectionAlert _localizedStringForAddressCorrectionOutcome:](self, "_localizedStringForAddressCorrectionOutcome:", [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue]);
        v12 = [MapsInterruptionAction actionWithTitle:v11 cancels:0 handler:0];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)cancelAlertIfNecessary
{
  if (self->_isDisplayingAlert)
  {
    Integer = GEOConfigGetInteger();
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"HasAcknowledgedAddressCorrectionAlert2021"];

    if (Integer)
    {
      if (v5)
      {
        v6 = +[UIApplication sharedMapsDelegate];
        [v6 dismissCurrentInterruptionOfKind:17];

        [(AppLaunchAddressCorrectionAlert *)self _alertDidFinishProcessing];
      }
    }
  }
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B3308C;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [(AppLaunchAddressCorrectionAlert *)self _fetchShouldDisplayAlertWithHandler:v6];
}

@end