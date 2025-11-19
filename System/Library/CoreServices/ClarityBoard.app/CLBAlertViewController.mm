@interface CLBAlertViewController
+ (int)tokenFromDictionary:(id)a3;
- (CLBAlertViewController)initWithConfiguration:(id)a3;
- (CLBSound)sound;
- (id)_localizedStringValue:(id)a3;
- (id)_localizedValue:(id)a3;
- (id)_makeCriticalAlertViewController;
- (id)_makeStandardAlertViewController;
- (void)_embedCriticalAlertViewController;
- (void)_loadControlPropertiesFromContentDictionary:(id)a3 requiresDefaultButton:(BOOL)a4;
- (void)_loadSoundPropertiesFromContentDictionary:(id)a3;
- (void)_loadTextPropertiesFromContentDictionary:(id)a3;
- (void)_loadValuesFromContentDictionary:(id)a3 requiresDefaultButton:(BOOL)a4;
- (void)replyWithResult:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CLBAlertViewController

+ (int)tokenFromDictionary:(id)a3
{
  v3 = [a3 objectForKey:off_10032B200];
  v4 = [v3 intValue];

  return v4;
}

- (CLBAlertViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLBAlertViewController;
  v5 = [(CLBAlertViewController *)&v11 init];
  if (v5)
  {
    v5->_replyPort = [v4 replyPort];
    v6 = [v4 dictionary];
    if (v6)
    {
      -[CLBAlertViewController _loadValuesFromContentDictionary:requiresDefaultButton:](v5, "_loadValuesFromContentDictionary:requiresDefaultButton:", v6, ([v4 requestFlags] & 0x20) == 0);
      if ([v4 usesCriticalAlertUI])
      {
        [(CLBAlertViewController *)v5 _embedCriticalAlertViewController];
      }

      else
      {
        v8 = [(CLBAlertViewController *)v5 _makeStandardAlertViewController];
        standardAlertController = v5->_standardAlertController;
        v5->_standardAlertController = v8;
      }
    }

    else
    {
      v7 = +[CLFLog commonLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100284A04(v7);
      }

      [(CLBAlertViewController *)v5 cancel];
    }
  }

  return v5;
}

- (void)_loadValuesFromContentDictionary:(id)a3 requiresDefaultButton:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [v10 bs_safeNumberForKey:off_10032B200];
  self->_token = [v6 intValue];

  v7 = [v10 bs_safeStringForKey:off_10032B208];
  if (v7)
  {
    v8 = [[BSCFBundle alloc] initWithPath:v7];
    localizationBundle = self->_localizationBundle;
    self->_localizationBundle = v8;
  }

  [(CLBAlertViewController *)self _loadTextPropertiesFromContentDictionary:v10];
  [(CLBAlertViewController *)self _loadSoundPropertiesFromContentDictionary:v10];
  [(CLBAlertViewController *)self _loadControlPropertiesFromContentDictionary:v10 requiresDefaultButton:v4];
}

- (void)_loadTextPropertiesFromContentDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 bs_safeStringForKey:kCFUserNotificationAlertHeaderKey];
  v10 = [(CLBAlertViewController *)self _localizedValue:v5];

  if (v10)
  {
    v6 = v10;
  }

  else
  {
    v6 = &stru_100316DA0;
  }

  objc_storeStrong(&self->_alertTitle, v6);
  v7 = [v4 bs_safeStringForKey:kCFUserNotificationAlertMessageKey];

  v8 = [(CLBAlertViewController *)self _localizedValue:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_100316DA0;
  }

  objc_storeStrong(&self->_alertMessage, v9);
}

- (void)_loadSoundPropertiesFromContentDictionary:(id)a3
{
  v18 = a3;
  v4 = [v18 bs_safeStringForKey:kCFUserNotificationSoundPathKey];
  soundPath = self->_soundPath;
  self->_soundPath = v4;

  v6 = [v18 bs_safeNumberForKey:@"SBUserNotificationSystemSoundID"];
  self->_soundID = [v6 unsignedIntValue];

  v7 = [v18 bs_safeNumberForKey:@"SBUserNotificationSystemSoundBehavior"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntValue];
  }

  else
  {
    v9 = 1;
  }

  self->_soundIDBehavior = v9;
  v10 = [v18 bs_safeDictionaryForKey:@"SBUserNotificationSoundVibrationPattern"];
  vibrationPattern = self->_vibrationPattern;
  self->_vibrationPattern = v10;

  v12 = [v18 bs_safeNumberForKey:@"SBUserNotificationSoundAlertTypeKey"];
  v13 = v12;
  if (v12)
  {
    v12 = [v12 integerValue];
  }

  self->_soundAlertType = v12;
  v14 = [v18 bs_safeStringForKey:@"SBUserNotificationSoundAlertTopicKey"];
  soundAlertTopic = self->_soundAlertTopic;
  self->_soundAlertTopic = v14;

  v16 = [v18 bs_safeNumberForKey:@"SBUserNotificationSoundRepeatDuration"];
  [v16 doubleValue];
  self->_soundRepeatDuration = v17;
}

- (void)_loadControlPropertiesFromContentDictionary:(id)a3 requiresDefaultButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 bs_safeStringForKey:kCFUserNotificationDefaultButtonTitleKey];
  defaultTitleKey = self->_defaultTitleKey;
  self->_defaultTitleKey = v7;

  v9 = [(CLBAlertViewController *)self _localizedValue:self->_defaultTitleKey];
  defaultButtonTitle = self->_defaultButtonTitle;
  self->_defaultButtonTitle = v9;

  if ([(NSString *)self->_defaultButtonTitle length])
  {
    v11 = 1;
  }

  else
  {
    v11 = !v4;
  }

  if (!v11)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"ALERT_OK" value:&stru_100316DA0 table:0];
    v14 = self->_defaultButtonTitle;
    self->_defaultButtonTitle = v13;
  }

  v15 = [v6 bs_safeStringForKey:kCFUserNotificationAlternateButtonTitleKey];
  alternateTitleKey = self->_alternateTitleKey;
  self->_alternateTitleKey = v15;

  v17 = [(CLBAlertViewController *)self _localizedValue:self->_alternateTitleKey];
  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = v17;

  v19 = [v6 bs_safeStringForKey:kCFUserNotificationOtherButtonTitleKey];
  otherTitleKey = self->_otherTitleKey;
  self->_otherTitleKey = v19;

  v21 = [(CLBAlertViewController *)self _localizedValue:self->_otherTitleKey];
  otherButtonTitle = self->_otherButtonTitle;
  self->_otherButtonTitle = v21;

  v25 = [v6 bs_safeArrayForKey:kCFUserNotificationTextFieldValuesKey];

  v23 = [(CLBAlertViewController *)self _localizedValue:v25];
  textFieldValues = self->_textFieldValues;
  self->_textFieldValues = v23;
}

- (void)replyWithResult:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 3 || (-[CLBAlertViewController textFieldValues](self, "textFieldValues"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
  {
    v14 = 0;
    v10 = 28;
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [(CLBAlertViewController *)self textFieldValues];
    [v7 setObject:v8 forKey:kCFUserNotificationTextFieldValuesKey];

    v9 = [NSPropertyListSerialization dataWithPropertyList:v7 format:100 options:0 error:0];
    v14 = v9;
    if (v9)
    {
      v10 = (([v9 length] + 3) & 0xFFFFFFFC) + 28;
    }

    else
    {
      v10 = 28;
    }
  }

  v11 = malloc_type_calloc(v10, 1uLL, 0xDB74A37CuLL);
  if (v11)
  {
    v12 = v11;
    v11->msgh_bits = 18;
    v11->msgh_size = v10;
    *&v11->msgh_remote_port = self->_replyPort;
    v11->msgh_id = v3;
    v11[1].msgh_bits = 0;
    if (v14)
    {
      [v14 getBytes:&v11[1].msgh_size length:{objc_msgSend(v14, "length")}];
    }

    if (!mach_msg(v12, 1, v10, 0, 0, 0, 0))
    {
      self->_replyPort = 0;
    }

    free(v12);
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
  }
}

- (id)_localizedStringValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localizationBundle = self->_localizationBundle;
    if (localizationBundle)
    {
      v6 = [(BSCFBundle *)localizationBundle localizedStringForKey:v4 value:&stru_100316DA0 table:0];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_localizedValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(CLBAlertViewController *)self _localizedStringValue:*(*(&v13 + 1) + 8 * i), v13];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [(CLBAlertViewController *)self _localizedStringValue:v4];
  }

  return v5;
}

- (CLBSound)sound
{
  if (!self->_sound)
  {
    v3 = [(CLBAlertViewController *)self soundPath];

    if (v3)
    {
      v4 = [(CLBAlertViewController *)self soundPath];
      v5 = [NSURL fileURLWithPath:v4];

      if (v5)
      {
        v6 = [(CLBAlertViewController *)self soundAlertType];
        v7 = [TLAlertConfiguration alloc];
        if (v6)
        {
          v8 = [v7 initWithType:{-[CLBAlertViewController soundAlertType](self, "soundAlertType")}];
          v9 = [(CLBAlertViewController *)self soundAlertTopic];
          [v8 setTopic:v9];
        }

        else
        {
          v8 = [v7 initWithType:16];
          [v8 setTopic:TLAlertTopicSystemNotificationGeneric];
        }

        [v8 setExternalToneFileURL:v5];
        [(CLBAlertViewController *)self soundRepeatDuration];
        [v8 setShouldRepeat:v16 > 0.0];
        [(CLBAlertViewController *)self soundRepeatDuration];
        [v8 setMaximumDuration:?];
        v17 = [(CLBAlertViewController *)self vibrationPattern];

        if (v17)
        {
          v18 = [(CLBAlertViewController *)self vibrationPattern];
          [v8 setExternalVibrationPattern:v18];
        }

        else
        {
          [v8 setVibrationIdentifier:TLVibrationIdentifierNone];
        }

        v19 = [[CLBSound alloc] initWithToneAlertConfiguration:v8];
        sound = self->_sound;
        self->_sound = v19;
      }

      else
      {
        v8 = +[CLFLog commonLog];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100284A48(self, v8);
        }
      }
    }

    else if ([(CLBAlertViewController *)self soundID])
    {
      v10 = [CLBSound alloc];
      v11 = [(CLBAlertViewController *)self soundID];
      v12 = [(CLBAlertViewController *)self soundIDBehavior];
      v13 = [(CLBAlertViewController *)self vibrationPattern];
      v14 = [(CLBSound *)v10 initWithSystemSoundID:v11 behavior:v12 vibrationPattern:v13];
      v15 = self->_sound;
      self->_sound = v14;
    }
  }

  v21 = self->_sound;

  return v21;
}

- (void)_embedCriticalAlertViewController
{
  v6 = [(CLBAlertViewController *)self _makeCriticalAlertViewController];
  [(CLBAlertViewController *)self addChildViewController:v6];
  v3 = [v6 view];
  v4 = [(CLBAlertViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  [v3 setAutoresizingMask:18];
  v5 = [(CLBAlertViewController *)self view];
  [v5 addSubview:v3];

  [v6 didMoveToParentViewController:self];
}

- (id)_makeStandardAlertViewController
{
  v3 = objc_opt_new();
  v4 = [(CLBAlertViewController *)self alertTitle];
  [v3 setTitle:v4];

  v5 = [(CLBAlertViewController *)self alertMessage];
  [v3 setMessage:v5];

  [v3 setPreferredStyle:1];
  v6 = [(CLBAlertViewController *)self defaultButtonTitle];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CLBAlertViewController *)self defaultButtonTitle];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100018ED8;
    v21[3] = &unk_1002FCB58;
    v21[4] = self;
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v21];

    [v3 addAction:v9];
  }

  v10 = [(CLBAlertViewController *)self alternateButtonTitle];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(CLBAlertViewController *)self alternateButtonTitle];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100018EE0;
    v20[3] = &unk_1002FCB58;
    v20[4] = self;
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v20];

    [v3 addAction:v13];
  }

  v14 = [(CLBAlertViewController *)self otherButtonTitle];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(CLBAlertViewController *)self otherButtonTitle];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100018EE8;
    v19[3] = &unk_1002FCB58;
    v19[4] = self;
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v19];

    [v3 addAction:v17];
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CLBAlertViewController;
  [(CLBAlertViewController *)&v6 viewDidAppear:a3];
  v4 = [(CLBAlertViewController *)self standardAlertController];

  if (v4)
  {
    v5 = [(CLBAlertViewController *)self standardAlertController];
    [(CLBAlertViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (id)_makeCriticalAlertViewController
{
  v2 = self;
  v3 = sub_10004D9B0();

  return v3;
}

@end