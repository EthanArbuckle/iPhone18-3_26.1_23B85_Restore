@interface PHAudioCallControlArrangement
+ (id)controlTypesOnIpadShouldUseLargeUIFormat:(BOOL)a3 inMultiCall:(BOOL)a4;
+ (id)defaultControlTypes;
+ (id)defaultMultipleCallControlTypes;
+ (id)defaultPhoneControlTypes;
+ (id)iPadAudioCallWithPosterControlTypes;
- (PHAudioCallControlArrangement)initWithControlTypes:(id)a3;
- (id)_replaceControlsOfType:(unint64_t)a3 withControlOfType:(unint64_t)a4;
- (unint64_t)columns;
- (unint64_t)controlTypeAtRow:(unint64_t)a3 column:(unint64_t)a4;
- (unint64_t)rows;
- (void)replaceControlsOfType:(unint64_t)a3 withControlOfType:(unint64_t)a4;
@end

@implementation PHAudioCallControlArrangement

+ (id)defaultControlTypes
{
  v3 = +[PHInCallUtilities sharedInstance];
  v4 = [v3 isIPadIdiom];

  if (v4 && ([a1 features], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isiPadPostersEnabledForCall:", 0), v5, !v6))
  {
    v9 = [a1 features];
    v10 = [v9 isMoreMenuEnabled];

    if (v10)
    {
      v7 = &off_10036AA78;
    }

    else
    {
      v11 = [a1 features];
      v12 = [v11 sharePlayInCallsEnabled];

      if (v12)
      {
        v7 = &off_10036AAC0;
      }

      else
      {
        v7 = +[PHAudioCallControlArrangement baselineiPadControlTypes];
      }
    }
  }

  else
  {
    v7 = [a1 defaultPhoneControlTypes];
  }

  return v7;
}

+ (id)defaultPhoneControlTypes
{
  v3 = [a1 features];
  v4 = [v3 isMoreMenuEnabled];

  if (v4)
  {
    return &off_10036AB50;
  }

  v6 = [a1 features];
  v7 = [v6 sharePlayInCallsEnabled];

  if (v7)
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
  v2 = [(PHAudioCallControlArrangement *)self controlTypes];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)columns
{
  result = [(PHAudioCallControlArrangement *)self rows];
  if (result)
  {
    v4 = [(PHAudioCallControlArrangement *)self controlTypes];
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 count];

    return v6;
  }

  return result;
}

+ (id)controlTypesOnIpadShouldUseLargeUIFormat:(BOOL)a3 inMultiCall:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      [a1 defaultMultipleCallControlTypes];
    }

    else
    {
      +[PHAudioCallControlArrangement defaultControlTypes];
    }
    v4 = ;
  }

  else
  {
    v4 = [PHAudioCallControlArrangement baselineiPadControlTypes:a3];
  }

  return v4;
}

+ (id)iPadAudioCallWithPosterControlTypes
{
  v9[0] = &off_10036ABF8;
  v2 = [a1 features];
  if ([v2 isMoreMenuEnabled])
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
  v4 = [v3 isIPadIdiom];

  if (v4)
  {
    v5 = [a1 features];
    v6 = [v5 isiPadPostersEnabledForCall:0];

    if (v6)
    {
      v7 = &off_10036ACD0;
    }

    else
    {
      v7 = &off_10036AD18;
    }
  }

  else if ((SBUIIsSystemApertureEnabled() & 1) != 0 || ([a1 features], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isNewCallSwapNonJindoEnabled"), v8, (v9 & 1) == 0))
  {
    v10 = [a1 features];
    if ([v10 callManagerEnabled])
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

- (PHAudioCallControlArrangement)initWithControlTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHAudioCallControlArrangement;
  v5 = [(PHAudioCallControlArrangement *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    controlTypes = v5->_controlTypes;
    v5->_controlTypes = v6;
  }

  return v5;
}

- (unint64_t)controlTypeAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  v6 = [(PHAudioCallControlArrangement *)self controlTypes];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

- (void)replaceControlsOfType:(unint64_t)a3 withControlOfType:(unint64_t)a4
{
  v5 = [(PHAudioCallControlArrangement *)self _replaceControlsOfType:a3 withControlOfType:a4];
  [(PHAudioCallControlArrangement *)self setControlTypes:v5];
}

- (id)_replaceControlsOfType:(unint64_t)a3 withControlOfType:(unint64_t)a4
{
  v21 = +[NSMutableArray array];
  v7 = [(PHAudioCallControlArrangement *)self controlTypes];

  if (v7)
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
                if ([v16 unsignedIntegerValue] == a3)
                {
                  v17 = [NSNumber numberWithUnsignedInteger:a4];
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