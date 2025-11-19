@interface VOTOutputComponent
- (BOOL)determineOutputMutedForActivity:(id)a3;
- (VOTOutputComponent)init;
- (double)outputMutedActivityLastToggleTime;
- (id)determineActivityForAction:(id)a3;
- (id)determineLanguageForAction:(id)a3 overrideLanguage:(id)a4 targetLanguage:(id)a5;
- (id)determineLanguageForEvent:(id)a3;
- (id)outputMutedActivityValue:(id)a3;
- (void)notifyActionComplete:(id)a3;
- (void)notifyRangeWillOutput:(_NSRange)a3 container:(id)a4;
- (void)performAction:(id)a3 owner:(id)a4;
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

- (void)performAction:(id)a3 owner:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(VOTOutputComponent *)self preprocessAction:v7];
  -[VOTOutputComponent setCurrentOutputActionID:](self, "setCurrentOutputActionID:", [v7 outputActionID]);
  v11 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:6];
  v8 = [objc_allocWithZone(AXIndexMap) init];
  [v8 setObject:v11 forIndex:1];
  [v8 setObject:v7 forIndex:14];
  [v8 setObject:v6 forIndex:13];

  v9 = [v7 outputRequest];

  v10 = [v9 language];
  [v8 setObject:v10 forIndex:15];

  [(VOTOutputComponent *)self performSelector:"handleEvent:" withThreadKey:self->_threadKey waitTime:0 cancelMask:1 count:v8 objects:kSCRCThreadNoWait];
}

- (BOOL)determineOutputMutedForActivity:(id)a3
{
  v4 = [(VOTOutputComponent *)self determineActivityForAction:a3];
  v5 = [(VOTOutputComponent *)self outputMutedActivityValue:v4];

  if (v5)
  {
    v6 = [(VOTOutputComponent *)self lastUsedActivity];
    v7 = [v4 isEqual:v6];

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
      v12 = [v13 BOOLValue];

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

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)determineActivityForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForVariant:81];

  if (v4)
  {
    v5 = [v3 objectForVariant:81];
  }

  else
  {
    v6 = [VOTSharedWorkspace selectedActivity];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = [v3 objectForVariant:79];
      if (!v7 || (v8 = v7, [VOTSharedWorkspace activities], v9 = objc_claimAutoreleasedReturnValue(), v20[0] = _NSConcreteStackBlock, v20[1] = 3221225472, v20[2] = sub_10000A1C4, v20[3] = &unk_1001C76A0, v20[4] = v8, objc_msgSend(v9, "ax_filteredArrayUsingBlock:", v20), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !v5))
      {
        v11 = [v3 objectForVariant:43];
        if (v11)
        {
          v12 = [VOTSharedWorkspace activities];
          v15 = _NSConcreteStackBlock;
          v16 = 3221225472;
          v17 = sub_10000A208;
          v18 = &unk_1001C76A0;
          v19 = v11;
          v13 = [v12 ax_filteredArrayUsingBlock:&v15];
          v5 = [v13 firstObject];
        }

        else
        {
          v5 = 0;
        }
      }
    }

    [v3 setObject:v5 forVariant:81];
  }

  return v5;
}

- (void)notifyRangeWillOutput:(_NSRange)a3 container:(id)a4
{
  length = a3.length;
  location = a3.location;
  v10 = a4;
  v6 = [v10 objectForIndex:13];
  if (v6)
  {
    v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:22];
    v8 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:5];
    v9 = [NSValue valueWithRange:location, length];
    [v10 setObject:v9 forIndex:14];

    [v10 setObject:v7 forIndex:10];
    [v10 setObject:v8 forIndex:1];
    [v6 performSelector:"handleEvent:" withThreadKey:v6 count:1 objects:v10];
  }
}

- (void)notifyActionComplete:(id)a3
{
  v8 = a3;
  v3 = [v8 objectForIndex:13];
  if (v3)
  {
    v4 = v8;
    if (!v8)
    {
      v4 = [objc_allocWithZone(AXIndexMap) init];
    }

    v8 = v4;
    v5 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:19];
    v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:5];
    v7 = [v8 objectForIndex:11];
    [v8 setObject:v7 forIndex:14];

    [v8 setObject:v5 forIndex:10];
    [v8 setObject:v6 forIndex:1];
    [v3 performSelector:"handleEvent:" withThreadKey:v3 count:1 objects:v8];
  }
}

- (id)determineLanguageForAction:(id)a3 overrideLanguage:(id)a4 targetLanguage:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  if (v9)
  {
    v10 = v9;
    v11 = 1;
  }

  else
  {
    v12 = [VOTSharedWorkspace selectedLanguage];

    if (v12)
    {
      v13 = [VOTSharedWorkspace selectedLanguage];
      v14 = AXLanguageConvertToCanonicalForm();

      if ([v14 length])
      {
        goto LABEL_10;
      }
    }

    v10 = v8;
    if (!v10)
    {
      v10 = [v7 objectForVariant:15];
    }

    v15 = +[AXSettings sharedInstance];
    v11 = [v15 voiceOverLanguageDetectionEnabled] ^ 1;
  }

  v16 = [v7 string];
  v17 = +[VOTOutputManager outputManager];
  v18 = [v17 currentLanguageMap];
  v14 = sub_100050AB0(v10, v16, v11, v7, v18);

LABEL_10:

  return v14;
}

- (id)determineLanguageForEvent:(id)a3
{
  v4 = [a3 objectForIndex:14];
  v5 = [v4 objectForVariant:16];
  v6 = [v4 objectForVariant:15];
  v7 = [(VOTOutputComponent *)self determineLanguageForAction:v4 overrideLanguage:v5 targetLanguage:v6];

  return v7;
}

- (id)outputMutedActivityValue:(id)a3
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