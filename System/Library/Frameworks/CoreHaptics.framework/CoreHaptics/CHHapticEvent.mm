@interface CHHapticEvent
+ (BOOL)parameterValuesFromLegacyEventType:(unint64_t)a3 sharpness:(float *)a4 fullness:(float *)a5 error:(id *)a6;
- (CHHapticEvent)initWithAudioResourceID:(CHHapticAudioResourceID)resID parameters:(NSArray *)eventParams relativeTime:(NSTimeInterval)time;
- (CHHapticEvent)initWithAudioResourceID:(CHHapticAudioResourceID)resID parameters:(NSArray *)eventParams relativeTime:(NSTimeInterval)time duration:(NSTimeInterval)duration;
- (CHHapticEvent)initWithAudioResourceIndex:(unint64_t)a3 parameters:(id)a4 time:(double)a5 duration:(double)a6;
- (CHHapticEvent)initWithEventType:(CHHapticEventType)type parameters:(NSArray *)eventParams relativeTime:(NSTimeInterval)time duration:(NSTimeInterval)duration;
- (double)fullDuration;
- (id)resolveExternalResources:(id)a3 error:(id *)a4;
@end

@implementation CHHapticEvent

- (double)fullDuration
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (self->_type == CHHapticEventTypeHapticTransient)
  {
    goto LABEL_23;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_eventParams;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v5)
  {

    v7 = 0.0;
LABEL_22:
    v3 = v7;
    goto LABEL_23;
  }

  v6 = *v20;
  v7 = 0.0;
  v18 = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v20 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = [v9 parameterID];
      v11 = [v10 isEqualToString:CHHapticEventParameterIDReleaseTime];

      if (v11)
      {
        if ([(NSString *)self->_type isEqualToString:CHHapticEventTypeHapticContinuous]|| [(NSString *)self->_type isEqualToString:CHHapticEventTypeAudioContinuous]|| [(NSString *)self->_type isEqualToString:CHHapticEventTypeAudioResourceIndex]|| [(NSString *)self->_type isEqualToString:CHHapticEventTypeAudioCustom])
        {
          [v9 value];
          v7 = exp2(v15 * 8.0) * 0.02;
        }

        v7 = v7 + -0.04;
      }

      else
      {
        v12 = [v9 parameterID];
        v13 = [v12 isEqualToString:CHHapticEventParameterIDSustained];

        if (v13)
        {
          [v9 value];
          v18 = v14 != 0.0;
        }
      }
    }

    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);

  if (v18)
  {
    goto LABEL_22;
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
  return v3 + self->_duration;
}

+ (BOOL)parameterValuesFromLegacyEventType:(unint64_t)a3 sharpness:(float *)a4 fullness:(float *)a5 error:(id *)a6
{
  LODWORD(v6) = -1.0;
  if (a3 > 20308)
  {
    if (a3 <= 26452)
    {
      if (a3 <= 23380)
      {
        if (a3 != 20309)
        {
          if (a3 == 20310)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            if (a3 != 20311)
            {
              goto LABEL_56;
            }

            LODWORD(v6) = 1.0;
          }
        }

        v8 = 0.14286;
        goto LABEL_55;
      }

      if (a3 != 23381)
      {
        if (a3 == 23382)
        {
          LODWORD(v6) = 0;
        }

        else
        {
          if (a3 != 23383)
          {
            goto LABEL_56;
          }

          LODWORD(v6) = 1.0;
        }
      }

      v8 = 0.42857;
      goto LABEL_55;
    }

    if (a3 <= 29524)
    {
      if (a3 != 26453)
      {
        if (a3 == 26454)
        {
          LODWORD(v6) = 0;
        }

        else
        {
          if (a3 != 26455)
          {
            goto LABEL_56;
          }

          LODWORD(v6) = 1.0;
        }
      }

      v8 = 0.71429;
      goto LABEL_55;
    }

    if (a3 == 29525 || a3 == 29526)
    {
      LODWORD(v6) = 0;
      v8 = 1.0;
    }

    else
    {
      if (a3 != 29527)
      {
        goto LABEL_56;
      }

      v8 = 1.0;
      LODWORD(v6) = 1.0;
    }

LABEL_55:
    *a4 = v8;
    *a5 = *&v6;
    return 1;
  }

  if (a3 > 14164)
  {
    if (a3 <= 17236)
    {
      if (a3 != 14165)
      {
        if (a3 == 14166)
        {
          LODWORD(v6) = 0;
        }

        else
        {
          if (a3 != 14167)
          {
            goto LABEL_56;
          }

          LODWORD(v6) = 1.0;
        }
      }

      v8 = -0.42857;
      goto LABEL_55;
    }

    if (a3 != 17237)
    {
      if (a3 == 17238)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        if (a3 != 17239)
        {
          goto LABEL_56;
        }

        LODWORD(v6) = 1.0;
      }
    }

    v8 = -0.14286;
    goto LABEL_55;
  }

  if (a3 > 11092)
  {
    if (a3 != 11093)
    {
      if (a3 == 11094)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        if (a3 != 11095)
        {
          goto LABEL_56;
        }

        LODWORD(v6) = 1.0;
      }
    }

    v8 = -0.71429;
    goto LABEL_55;
  }

  switch(a3)
  {
    case 0x1F55uLL:
LABEL_42:
      v8 = -1.0;
      goto LABEL_55;
    case 0x1F56uLL:
      LODWORD(v6) = 0;
      goto LABEL_42;
    case 0x1F57uLL:
      LODWORD(v6) = 1.0;
      goto LABEL_42;
  }

LABEL_56:
  if (!a6)
  {
    return 0;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4820 userInfo:{0, v6}];
  v11 = v10;
  result = 0;
  *a6 = v10;
  return result;
}

- (CHHapticEvent)initWithEventType:(CHHapticEventType)type parameters:(NSArray *)eventParams relativeTime:(NSTimeInterval)time duration:(NSTimeInterval)duration
{
  v11 = type;
  v12 = eventParams;
  v18.receiver = self;
  v18.super_class = CHHapticEvent;
  v13 = [(CHHapticEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_type, type);
    v14->_audioResID = -1;
    v15 = [(NSArray *)v12 copy];
    v16 = v14->_eventParams;
    v14->_eventParams = v15;

    v14->_time = time;
    v14->_duration = duration;
  }

  return v14;
}

- (CHHapticEvent)initWithAudioResourceID:(CHHapticAudioResourceID)resID parameters:(NSArray *)eventParams relativeTime:(NSTimeInterval)time
{
  v8 = eventParams;
  v14.receiver = self;
  v14.super_class = CHHapticEvent;
  v9 = [(CHHapticEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, CHHapticEventTypeAudioCustom);
    v10->_audioResID = resID;
    v11 = [(NSArray *)v8 copy];
    v12 = v10->_eventParams;
    v10->_eventParams = v11;

    v10->_time = time;
    v10->_duration = 0.0;
  }

  return v10;
}

- (CHHapticEvent)initWithAudioResourceID:(CHHapticAudioResourceID)resID parameters:(NSArray *)eventParams relativeTime:(NSTimeInterval)time duration:(NSTimeInterval)duration
{
  v10 = eventParams;
  v16.receiver = self;
  v16.super_class = CHHapticEvent;
  v11 = [(CHHapticEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, CHHapticEventTypeAudioCustom);
    v12->_audioResID = resID;
    v13 = [(NSArray *)v10 copy];
    v14 = v12->_eventParams;
    v12->_eventParams = v13;

    v12->_time = time;
    v12->_duration = duration;
  }

  return v12;
}

- (id)resolveExternalResources:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CBEA60];
  v5 = [(CHHapticEvent *)self events:a3];
  v6 = [v4 arrayWithArray:v5];

  return v6;
}

- (CHHapticEvent)initWithAudioResourceIndex:(unint64_t)a3 parameters:(id)a4 time:(double)a5 duration:(double)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = CHHapticEvent;
  v12 = [(CHHapticEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, CHHapticEventTypeAudioResourceIndex);
    v13->_audioResID = a3;
    objc_storeStrong(&v13->_eventParams, a4);
    v13->_time = a5;
    v13->_duration = a6;
  }

  return v13;
}

@end