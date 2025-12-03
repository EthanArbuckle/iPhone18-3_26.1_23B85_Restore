@interface PHAudioCallControlArrangement
+ (id)controlTypesOnIpadShouldUseLargeUIFormat:(BOOL)format inMultiCall:(BOOL)call;
+ (id)defaultControlTypes;
+ (id)defaultMultipleCallControlTypes;
+ (id)defaultPhoneControlTypes;
+ (id)iPadAudioCallWithPosterControlTypes;
- (PHAudioCallControlArrangement)initWithControlTypes:(id)types;
- (id)_replaceControlsOfType:(unint64_t)type withControlOfType:(unint64_t)ofType;
- (unint64_t)columns;
- (unint64_t)controlTypeAtRow:(unint64_t)row column:(unint64_t)column;
- (unint64_t)rows;
- (void)replaceControlsOfType:(unint64_t)type withControlOfType:(unint64_t)ofType;
@end

@implementation PHAudioCallControlArrangement

+ (id)defaultControlTypes
{
  v3 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v3 isIPadIdiom];

  if (isIPadIdiom && ([self features], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isiPadPostersEnabledForCall:", 0), v5, !v6))
  {
    features = [self features];
    isMoreMenuEnabled = [features isMoreMenuEnabled];

    if (isMoreMenuEnabled)
    {
      defaultPhoneControlTypes = &off_10036AA78;
    }

    else
    {
      features2 = [self features];
      sharePlayInCallsEnabled = [features2 sharePlayInCallsEnabled];

      if (sharePlayInCallsEnabled)
      {
        defaultPhoneControlTypes = &off_10036AAC0;
      }

      else
      {
        defaultPhoneControlTypes = +[PHAudioCallControlArrangement baselineiPadControlTypes];
      }
    }
  }

  else
  {
    defaultPhoneControlTypes = [self defaultPhoneControlTypes];
  }

  return defaultPhoneControlTypes;
}

+ (id)defaultPhoneControlTypes
{
  features = [self features];
  isMoreMenuEnabled = [features isMoreMenuEnabled];

  if (isMoreMenuEnabled)
  {
    return &off_10036AB50;
  }

  features2 = [self features];
  sharePlayInCallsEnabled = [features2 sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled)
  {
    return &off_10036AB98;
  }

  else
  {
    return &off_10036ABE0;
  }
}

- (unint64_t)rows
{
  controlTypes = [(PHAudioCallControlArrangement *)self controlTypes];
  v3 = [controlTypes count];

  return v3;
}

- (unint64_t)columns
{
  result = [(PHAudioCallControlArrangement *)self rows];
  if (result)
  {
    controlTypes = [(PHAudioCallControlArrangement *)self controlTypes];
    v5 = [controlTypes objectAtIndex:0];
    v6 = [v5 count];

    return v6;
  }

  return result;
}

+ (id)controlTypesOnIpadShouldUseLargeUIFormat:(BOOL)format inMultiCall:(BOOL)call
{
  if (format)
  {
    if (call)
    {
      [self defaultMultipleCallControlTypes];
    }

    else
    {
      +[PHAudioCallControlArrangement defaultControlTypes];
    }
    v4 = ;
  }

  else
  {
    v4 = [PHAudioCallControlArrangement baselineiPadControlTypes:format];
  }

  return v4;
}

+ (id)iPadAudioCallWithPosterControlTypes
{
  v9[0] = &off_10036ABF8;
  features = [self features];
  if ([features isMoreMenuEnabled])
  {
    v3 = 20;
  }

  else
  {
    v3 = 4;
  }

  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v8[0] = v4;
  v8[1] = &off_10036A208;
  v8[2] = &off_10036A160;
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];

  return v6;
}

+ (id)defaultMultipleCallControlTypes
{
  v3 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v3 isIPadIdiom];

  if (isIPadIdiom)
  {
    features = [self features];
    v6 = [features isiPadPostersEnabledForCall:0];

    if (v6)
    {
      v7 = &off_10036ACD0;
    }

    else
    {
      v7 = &off_10036AD18;
    }
  }

  else if ((SBUIIsSystemApertureEnabled() & 1) != 0 || ([self features], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isNewCallSwapNonJindoEnabled"), v8, (v9 & 1) == 0))
  {
    features2 = [self features];
    if ([features2 callManagerEnabled])
    {
      v11 = 5;
    }

    else
    {
      v11 = 9;
    }

    v12 = [NSNumber numberWithUnsignedInteger:v11];
    v15[1] = v12;
    v15[2] = &off_10036A148;
    v13 = [NSArray arrayWithObjects:v15 count:3];
    v16[0] = v13;
    v16[1] = &off_10036AC88;
    v7 = [NSArray arrayWithObjects:v16 count:2];
  }

  else
  {
    v7 = &off_10036AC70;
  }

  return v7;
}

- (PHAudioCallControlArrangement)initWithControlTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = PHAudioCallControlArrangement;
  v5 = [(PHAudioCallControlArrangement *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    controlTypes = v5->_controlTypes;
    v5->_controlTypes = v6;
  }

  return v5;
}

- (unint64_t)controlTypeAtRow:(unint64_t)row column:(unint64_t)column
{
  controlTypes = [(PHAudioCallControlArrangement *)self controlTypes];
  v7 = [controlTypes objectAtIndexedSubscript:row];
  v8 = [v7 objectAtIndexedSubscript:column];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)replaceControlsOfType:(unint64_t)type withControlOfType:(unint64_t)ofType
{
  v5 = [(PHAudioCallControlArrangement *)self _replaceControlsOfType:type withControlOfType:ofType];
  [(PHAudioCallControlArrangement *)self setControlTypes:v5];
}

- (id)_replaceControlsOfType:(unint64_t)type withControlOfType:(unint64_t)ofType
{
  v21 = +[NSMutableArray array];
  controlTypes = [(PHAudioCallControlArrangement *)self controlTypes];

  if (controlTypes)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(PHAudioCallControlArrangement *)self controlTypes];
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v20 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          v10 = +[NSMutableArray array];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v23 + 1) + 8 * j);
                if ([v16 unsignedIntegerValue] == type)
                {
                  v17 = [NSNumber numberWithUnsignedInteger:ofType];
                  [v10 addObject:v17];
                }

                else
                {
                  [v10 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v13);
          }

          [v21 addObject:v10];
        }

        v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }
  }

  return v21;
}

@end