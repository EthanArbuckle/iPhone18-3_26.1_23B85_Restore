@interface CLBAlertViewController
+ (int)tokenFromDictionary:(id)dictionary;
- (CLBAlertViewController)initWithConfiguration:(id)configuration;
- (CLBSound)sound;
- (id)_localizedStringValue:(id)value;
- (id)_localizedValue:(id)value;
- (id)_makeCriticalAlertViewController;
- (id)_makeStandardAlertViewController;
- (void)_embedCriticalAlertViewController;
- (void)_loadControlPropertiesFromContentDictionary:(id)dictionary requiresDefaultButton:(BOOL)button;
- (void)_loadSoundPropertiesFromContentDictionary:(id)dictionary;
- (void)_loadTextPropertiesFromContentDictionary:(id)dictionary;
- (void)_loadValuesFromContentDictionary:(id)dictionary requiresDefaultButton:(BOOL)button;
- (void)replyWithResult:(unint64_t)result;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CLBAlertViewController

+ (int)tokenFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:off_10032B200];
  intValue = [v3 intValue];

  return intValue;
}

- (CLBAlertViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = CLBAlertViewController;
  v5 = [(CLBAlertViewController *)&v11 init];
  if (v5)
  {
    v5->_replyPort = [configurationCopy replyPort];
    dictionary = [configurationCopy dictionary];
    if (dictionary)
    {
      -[CLBAlertViewController _loadValuesFromContentDictionary:requiresDefaultButton:](v5, "_loadValuesFromContentDictionary:requiresDefaultButton:", dictionary, ([configurationCopy requestFlags] & 0x20) == 0);
      if ([configurationCopy usesCriticalAlertUI])
      {
        [(CLBAlertViewController *)v5 _embedCriticalAlertViewController];
      }

      else
      {
        _makeStandardAlertViewController = [(CLBAlertViewController *)v5 _makeStandardAlertViewController];
        standardAlertController = v5->_standardAlertController;
        v5->_standardAlertController = _makeStandardAlertViewController;
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

- (void)_loadValuesFromContentDictionary:(id)dictionary requiresDefaultButton:(BOOL)button
{
  buttonCopy = button;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy bs_safeNumberForKey:off_10032B200];
  self->_token = [v6 intValue];

  v7 = [dictionaryCopy bs_safeStringForKey:off_10032B208];
  if (v7)
  {
    v8 = [[BSCFBundle alloc] initWithPath:v7];
    localizationBundle = self->_localizationBundle;
    self->_localizationBundle = v8;
  }

  [(CLBAlertViewController *)self _loadTextPropertiesFromContentDictionary:dictionaryCopy];
  [(CLBAlertViewController *)self _loadSoundPropertiesFromContentDictionary:dictionaryCopy];
  [(CLBAlertViewController *)self _loadControlPropertiesFromContentDictionary:dictionaryCopy requiresDefaultButton:buttonCopy];
}

- (void)_loadTextPropertiesFromContentDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy bs_safeStringForKey:kCFUserNotificationAlertHeaderKey];
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
  v7 = [dictionaryCopy bs_safeStringForKey:kCFUserNotificationAlertMessageKey];

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

- (void)_loadSoundPropertiesFromContentDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy bs_safeStringForKey:kCFUserNotificationSoundPathKey];
  soundPath = self->_soundPath;
  self->_soundPath = v4;

  v6 = [dictionaryCopy bs_safeNumberForKey:@"SBUserNotificationSystemSoundID"];
  self->_soundID = [v6 unsignedIntValue];

  v7 = [dictionaryCopy bs_safeNumberForKey:@"SBUserNotificationSystemSoundBehavior"];
  v8 = v7;
  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  self->_soundIDBehavior = unsignedIntValue;
  v10 = [dictionaryCopy bs_safeDictionaryForKey:@"SBUserNotificationSoundVibrationPattern"];
  vibrationPattern = self->_vibrationPattern;
  self->_vibrationPattern = v10;

  integerValue = [dictionaryCopy bs_safeNumberForKey:@"SBUserNotificationSoundAlertTypeKey"];
  v13 = integerValue;
  if (integerValue)
  {
    integerValue = [integerValue integerValue];
  }

  self->_soundAlertType = integerValue;
  v14 = [dictionaryCopy bs_safeStringForKey:@"SBUserNotificationSoundAlertTopicKey"];
  soundAlertTopic = self->_soundAlertTopic;
  self->_soundAlertTopic = v14;

  v16 = [dictionaryCopy bs_safeNumberForKey:@"SBUserNotificationSoundRepeatDuration"];
  [v16 doubleValue];
  self->_soundRepeatDuration = v17;
}

- (void)_loadControlPropertiesFromContentDictionary:(id)dictionary requiresDefaultButton:(BOOL)button
{
  buttonCopy = button;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy bs_safeStringForKey:kCFUserNotificationDefaultButtonTitleKey];
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
    v11 = !buttonCopy;
  }

  if (!v11)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"ALERT_OK" value:&stru_100316DA0 table:0];
    v14 = self->_defaultButtonTitle;
    self->_defaultButtonTitle = v13;
  }

  v15 = [dictionaryCopy bs_safeStringForKey:kCFUserNotificationAlternateButtonTitleKey];
  alternateTitleKey = self->_alternateTitleKey;
  self->_alternateTitleKey = v15;

  v17 = [(CLBAlertViewController *)self _localizedValue:self->_alternateTitleKey];
  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = v17;

  v19 = [dictionaryCopy bs_safeStringForKey:kCFUserNotificationOtherButtonTitleKey];
  otherTitleKey = self->_otherTitleKey;
  self->_otherTitleKey = v19;

  v21 = [(CLBAlertViewController *)self _localizedValue:self->_otherTitleKey];
  otherButtonTitle = self->_otherButtonTitle;
  self->_otherButtonTitle = v21;

  v25 = [dictionaryCopy bs_safeArrayForKey:kCFUserNotificationTextFieldValuesKey];

  v23 = [(CLBAlertViewController *)self _localizedValue:v25];
  textFieldValues = self->_textFieldValues;
  self->_textFieldValues = v23;
}

- (void)replyWithResult:(unint64_t)result
{
  resultCopy = result;
  if (result == 3 || (-[CLBAlertViewController textFieldValues](self, "textFieldValues"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
  {
    v14 = 0;
    v10 = 28;
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    textFieldValues = [(CLBAlertViewController *)self textFieldValues];
    [v7 setObject:textFieldValues forKey:kCFUserNotificationTextFieldValuesKey];

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
    v11->msgh_id = resultCopy;
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

- (id)_localizedStringValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localizationBundle = self->_localizationBundle;
    if (localizationBundle)
    {
      v6 = [(BSCFBundle *)localizationBundle localizedStringForKey:valueCopy value:&stru_100316DA0 table:0];
    }

    else
    {
      v6 = valueCopy;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_localizedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valueCopy count]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = valueCopy;
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
    v5 = [(CLBAlertViewController *)self _localizedStringValue:valueCopy];
  }

  return v5;
}

- (CLBSound)sound
{
  if (!self->_sound)
  {
    soundPath = [(CLBAlertViewController *)self soundPath];

    if (soundPath)
    {
      soundPath2 = [(CLBAlertViewController *)self soundPath];
      v5 = [NSURL fileURLWithPath:soundPath2];

      if (v5)
      {
        soundAlertType = [(CLBAlertViewController *)self soundAlertType];
        v7 = [TLAlertConfiguration alloc];
        if (soundAlertType)
        {
          v8 = [v7 initWithType:{-[CLBAlertViewController soundAlertType](self, "soundAlertType")}];
          soundAlertTopic = [(CLBAlertViewController *)self soundAlertTopic];
          [v8 setTopic:soundAlertTopic];
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
        vibrationPattern = [(CLBAlertViewController *)self vibrationPattern];

        if (vibrationPattern)
        {
          vibrationPattern2 = [(CLBAlertViewController *)self vibrationPattern];
          [v8 setExternalVibrationPattern:vibrationPattern2];
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
      soundID = [(CLBAlertViewController *)self soundID];
      soundIDBehavior = [(CLBAlertViewController *)self soundIDBehavior];
      vibrationPattern3 = [(CLBAlertViewController *)self vibrationPattern];
      v14 = [(CLBSound *)v10 initWithSystemSoundID:soundID behavior:soundIDBehavior vibrationPattern:vibrationPattern3];
      v15 = self->_sound;
      self->_sound = v14;
    }
  }

  v21 = self->_sound;

  return v21;
}

- (void)_embedCriticalAlertViewController
{
  _makeCriticalAlertViewController = [(CLBAlertViewController *)self _makeCriticalAlertViewController];
  [(CLBAlertViewController *)self addChildViewController:_makeCriticalAlertViewController];
  view = [_makeCriticalAlertViewController view];
  view2 = [(CLBAlertViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(CLBAlertViewController *)self view];
  [view3 addSubview:view];

  [_makeCriticalAlertViewController didMoveToParentViewController:self];
}

- (id)_makeStandardAlertViewController
{
  v3 = objc_opt_new();
  alertTitle = [(CLBAlertViewController *)self alertTitle];
  [v3 setTitle:alertTitle];

  alertMessage = [(CLBAlertViewController *)self alertMessage];
  [v3 setMessage:alertMessage];

  [v3 setPreferredStyle:1];
  defaultButtonTitle = [(CLBAlertViewController *)self defaultButtonTitle];
  v7 = [defaultButtonTitle length];

  if (v7)
  {
    defaultButtonTitle2 = [(CLBAlertViewController *)self defaultButtonTitle];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100018ED8;
    v21[3] = &unk_1002FCB58;
    v21[4] = self;
    v9 = [UIAlertAction actionWithTitle:defaultButtonTitle2 style:0 handler:v21];

    [v3 addAction:v9];
  }

  alternateButtonTitle = [(CLBAlertViewController *)self alternateButtonTitle];
  v11 = [alternateButtonTitle length];

  if (v11)
  {
    alternateButtonTitle2 = [(CLBAlertViewController *)self alternateButtonTitle];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100018EE0;
    v20[3] = &unk_1002FCB58;
    v20[4] = self;
    v13 = [UIAlertAction actionWithTitle:alternateButtonTitle2 style:0 handler:v20];

    [v3 addAction:v13];
  }

  otherButtonTitle = [(CLBAlertViewController *)self otherButtonTitle];
  v15 = [otherButtonTitle length];

  if (v15)
  {
    otherButtonTitle2 = [(CLBAlertViewController *)self otherButtonTitle];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100018EE8;
    v19[3] = &unk_1002FCB58;
    v19[4] = self;
    v17 = [UIAlertAction actionWithTitle:otherButtonTitle2 style:0 handler:v19];

    [v3 addAction:v17];
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CLBAlertViewController;
  [(CLBAlertViewController *)&v6 viewDidAppear:appear];
  standardAlertController = [(CLBAlertViewController *)self standardAlertController];

  if (standardAlertController)
  {
    standardAlertController2 = [(CLBAlertViewController *)self standardAlertController];
    [(CLBAlertViewController *)self presentViewController:standardAlertController2 animated:1 completion:0];
  }
}

- (id)_makeCriticalAlertViewController
{
  selfCopy = self;
  v3 = sub_10004D9B0();

  return v3;
}

@end