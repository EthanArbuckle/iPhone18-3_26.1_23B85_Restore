@interface VOTOutputComponent
- (BOOL)determineOutputMutedForActivity:(id)activity;
- (VOTOutputComponent)init;
- (double)outputMutedActivityLastToggleTime;
- (id)determineActivityForAction:(id)action;
- (id)determineLanguageForAction:(id)action overrideLanguage:(id)language targetLanguage:(id)targetLanguage;
- (id)determineLanguageForEvent:(id)event;
- (id)outputMutedActivityValue:(id)value;
- (void)notifyActionComplete:(id)complete;
- (void)notifyRangeWillOutput:(_NSRange)output container:(id)container;
- (void)performAction:(id)action owner:(id)owner;
@end

@implementation VOTOutputComponent

- (VOTOutputComponent)init
{
  v6.receiver = self;
  v6.super_class = VOTOutputComponent;
  v2 = [(VOTOutputComponent *)&v6 init];
  v3 = [objc_allocWithZone(SCRCThreadKey) initWithObject:v2];
  threadKey = v2->_threadKey;
  v2->_threadKey = v3;

  return v2;
}

- (void)performAction:(id)action owner:(id)owner
{
  ownerCopy = owner;
  actionCopy = action;
  [(VOTOutputComponent *)self preprocessAction:actionCopy];
  -[VOTOutputComponent setCurrentOutputActionID:](self, "setCurrentOutputActionID:", [actionCopy outputActionID]);
  v11 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:6];
  v8 = [objc_allocWithZone(AXIndexMap) init];
  [v8 setObject:v11 forIndex:1];
  [v8 setObject:actionCopy forIndex:14];
  [v8 setObject:ownerCopy forIndex:13];

  outputRequest = [actionCopy outputRequest];

  language = [outputRequest language];
  [v8 setObject:language forIndex:15];

  [(VOTOutputComponent *)self performSelector:"handleEvent:" withThreadKey:self->_threadKey waitTime:0 cancelMask:1 count:v8 objects:kSCRCThreadNoWait];
}

- (BOOL)determineOutputMutedForActivity:(id)activity
{
  v4 = [(VOTOutputComponent *)self determineActivityForAction:activity];
  v5 = [(VOTOutputComponent *)self outputMutedActivityValue:v4];

  if (v5)
  {
    lastUsedActivity = [(VOTOutputComponent *)self lastUsedActivity];
    v7 = [v4 isEqual:lastUsedActivity];

    if ((v7 & 1) == 0)
    {
      [(VOTOutputComponent *)self setLastUsedActivity:v4];
      [(VOTOutputComponent *)self setLastUsedActivityTime:CFAbsoluteTimeGetCurrent()];
    }

    [(VOTOutputComponent *)self outputMutedActivityLastToggleTime];
    v9 = v8;
    [(VOTOutputComponent *)self lastUsedActivityTime];
    if (v9 <= v10)
    {
      v13 = [(VOTOutputComponent *)self outputMutedActivityValue:v4];
      bOOLValue = [v13 BOOLValue];

      goto LABEL_11;
    }

    v11 = VOTLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Not using activity speech mute because we toggled speech muted more recently", v15, 2u);
    }
  }

  else
  {
    [(VOTOutputComponent *)self setLastUsedActivity:0];
  }

  bOOLValue = 0;
LABEL_11:

  return bOOLValue;
}

- (id)determineActivityForAction:(id)action
{
  actionCopy = action;
  v4 = [actionCopy objectForVariant:81];

  if (v4)
  {
    firstObject = [actionCopy objectForVariant:81];
  }

  else
  {
    selectedActivity = [VOTSharedWorkspace selectedActivity];
    if (selectedActivity)
    {
      firstObject = selectedActivity;
    }

    else
    {
      v7 = [actionCopy objectForVariant:79];
      if (!v7 || (v8 = v7, [VOTSharedWorkspace activities], v9 = objc_claimAutoreleasedReturnValue(), v20[0] = _NSConcreteStackBlock, v20[1] = 3221225472, v20[2] = sub_10000A1C4, v20[3] = &unk_1001C76A0, v20[4] = v8, objc_msgSend(v9, "ax_filteredArrayUsingBlock:", v20), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), firstObject = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !firstObject))
      {
        v11 = [actionCopy objectForVariant:43];
        if (v11)
        {
          activities = [VOTSharedWorkspace activities];
          v15 = _NSConcreteStackBlock;
          v16 = 3221225472;
          v17 = sub_10000A208;
          v18 = &unk_1001C76A0;
          v19 = v11;
          v13 = [activities ax_filteredArrayUsingBlock:&v15];
          firstObject = [v13 firstObject];
        }

        else
        {
          firstObject = 0;
        }
      }
    }

    [actionCopy setObject:firstObject forVariant:81];
  }

  return firstObject;
}

- (void)notifyRangeWillOutput:(_NSRange)output container:(id)container
{
  length = output.length;
  location = output.location;
  containerCopy = container;
  v6 = [containerCopy objectForIndex:13];
  if (v6)
  {
    v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:22];
    v8 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:5];
    v9 = [NSValue valueWithRange:location, length];
    [containerCopy setObject:v9 forIndex:14];

    [containerCopy setObject:v7 forIndex:10];
    [containerCopy setObject:v8 forIndex:1];
    [v6 performSelector:"handleEvent:" withThreadKey:v6 count:1 objects:containerCopy];
  }
}

- (void)notifyActionComplete:(id)complete
{
  completeCopy = complete;
  v3 = [completeCopy objectForIndex:13];
  if (v3)
  {
    v4 = completeCopy;
    if (!completeCopy)
    {
      v4 = [objc_allocWithZone(AXIndexMap) init];
    }

    completeCopy = v4;
    v5 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:19];
    v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:5];
    v7 = [completeCopy objectForIndex:11];
    [completeCopy setObject:v7 forIndex:14];

    [completeCopy setObject:v5 forIndex:10];
    [completeCopy setObject:v6 forIndex:1];
    [v3 performSelector:"handleEvent:" withThreadKey:v3 count:1 objects:completeCopy];
  }
}

- (id)determineLanguageForAction:(id)action overrideLanguage:(id)language targetLanguage:(id)targetLanguage
{
  actionCopy = action;
  targetLanguageCopy = targetLanguage;
  v9 = [language stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  if (v9)
  {
    v10 = v9;
    v11 = 1;
  }

  else
  {
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];

    if (selectedLanguage)
    {
      selectedLanguage2 = [VOTSharedWorkspace selectedLanguage];
      v14 = AXLanguageConvertToCanonicalForm();

      if ([v14 length])
      {
        goto LABEL_10;
      }
    }

    v10 = targetLanguageCopy;
    if (!v10)
    {
      v10 = [actionCopy objectForVariant:15];
    }

    v15 = +[AXSettings sharedInstance];
    v11 = [v15 voiceOverLanguageDetectionEnabled] ^ 1;
  }

  string = [actionCopy string];
  v17 = +[VOTOutputManager outputManager];
  currentLanguageMap = [v17 currentLanguageMap];
  v14 = sub_100050AB0(v10, string, v11, actionCopy, currentLanguageMap);

LABEL_10:

  return v14;
}

- (id)determineLanguageForEvent:(id)event
{
  v4 = [event objectForIndex:14];
  v5 = [v4 objectForVariant:16];
  v6 = [v4 objectForVariant:15];
  v7 = [(VOTOutputComponent *)self determineLanguageForAction:v4 overrideLanguage:v5 targetLanguage:v6];

  return v7;
}

- (id)outputMutedActivityValue:(id)value
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (double)outputMutedActivityLastToggleTime
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0.0;
}

@end