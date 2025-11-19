@interface AFClockAlarm
+ (id)newWithBuilder:(id)a3;
- (AFClockAlarm)initWithAlarmID:(id)a3 alarmURL:(id)a4 isFiring:(BOOL)a5 title:(id)a6 type:(unint64_t)a7 hour:(unint64_t)a8 minute:(unint64_t)a9 repeatOptions:(unint64_t)a10 isEnabled:(BOOL)a11 isSnoozed:(BOOL)a12 firedDate:(id)a13 dismissedDate:(id)a14 lastModifiedDate:(id)a15;
- (AFClockAlarm)initWithBuilder:(id)a3;
- (AFClockAlarm)initWithCoder:(id)a3;
- (AFClockAlarm)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFClockAlarm

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  alarmID = self->_alarmID;
  if (alarmID)
  {
    [v3 setObject:alarmID forKey:@"alarmID"];
  }

  alarmURL = self->_alarmURL;
  if (alarmURL)
  {
    [v4 setObject:alarmURL forKey:@"alarmURL"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFiring];
  [v4 setObject:v7 forKey:@"isFiring"];

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  v9 = AFClockAlarmTypeGetNames(self->_type);
  [v4 setObject:v9 forKey:@"type"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_hour];
  [v4 setObject:v10 forKey:@"hour"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minute];
  [v4 setObject:v11 forKey:@"minute"];

  v12 = AFClockAlarmRepeatOptionsGetNames(self->_repeatOptions);
  [v4 setObject:v12 forKey:@"repeatOptions"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEnabled];
  [v4 setObject:v13 forKey:@"isEnabled"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSnoozed];
  [v4 setObject:v14 forKey:@"isSnoozed"];

  firedDate = self->_firedDate;
  if (firedDate)
  {
    [v4 setObject:firedDate forKey:@"firedDate"];
  }

  dismissedDate = self->_dismissedDate;
  if (dismissedDate)
  {
    [v4 setObject:dismissedDate forKey:@"dismissedDate"];
  }

  lastModifiedDate = self->_lastModifiedDate;
  if (lastModifiedDate)
  {
    [v4 setObject:lastModifiedDate forKey:@"lastModifiedDate"];
  }

  v18 = [v4 copy];

  return v18;
}

- (AFClockAlarm)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"alarmID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v6;
    }

    else
    {
      v39 = 0;
    }

    v8 = [v5 objectForKey:@"alarmURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v8;
    }

    else
    {
      v38 = 0;
    }

    v9 = [v5 objectForKey:@"isFiring"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v37 = [v10 BOOLValue];
    v11 = [v5 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v11;
    }

    else
    {
      v36 = 0;
    }

    v12 = [v5 objectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = AFClockAlarmTypeGetFromNames(v12);
    }

    else
    {
      v35 = 0;
    }

    v13 = [v5 objectForKey:@"hour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v34 = [v14 unsignedIntegerValue];
    v15 = [v5 objectForKey:@"minute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v33 = [v16 unsignedIntegerValue];
    v17 = [v5 objectForKey:@"repeatOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = AFClockAlarmRepeatOptionsGetFromNames(v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v5 objectForKey:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 BOOLValue];
    v22 = [v5 objectForKey:@"isSnoozed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 BOOLValue];
    v25 = [v5 objectForKey:@"firedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [v5 objectForKey:@"dismissedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v5 objectForKey:@"lastModifiedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    BYTE1(v32) = v24;
    LOBYTE(v32) = v21;
    self = [(AFClockAlarm *)self initWithAlarmID:v39 alarmURL:v38 isFiring:v37 title:v36 type:v35 hour:v34 minute:v33 repeatOptions:v18 isEnabled:v32 isSnoozed:v26 firedDate:v28 dismissedDate:v30 lastModifiedDate:?];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  alarmID = self->_alarmID;
  v12 = a3;
  [v12 encodeObject:alarmID forKey:@"AFClockAlarm::alarmID"];
  [v12 encodeObject:self->_alarmURL forKey:@"AFClockAlarm::alarmURL"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFiring];
  [v12 encodeObject:v5 forKey:@"AFClockAlarm::isFiring"];

  [v12 encodeObject:self->_title forKey:@"AFClockAlarm::title"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v12 encodeObject:v6 forKey:@"AFClockAlarm::type"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_hour];
  [v12 encodeObject:v7 forKey:@"AFClockAlarm::hour"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minute];
  [v12 encodeObject:v8 forKey:@"AFClockAlarm::minute"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_repeatOptions];
  [v12 encodeObject:v9 forKey:@"AFClockAlarm::repeatOptions"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEnabled];
  [v12 encodeObject:v10 forKey:@"AFClockAlarm::isEnabled"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSnoozed];
  [v12 encodeObject:v11 forKey:@"AFClockAlarm::isSnoozed"];

  [v12 encodeObject:self->_firedDate forKey:@"AFClockAlarm::firedDate"];
  [v12 encodeObject:self->_dismissedDate forKey:@"AFClockAlarm::dismissedDate"];
  [v12 encodeObject:self->_lastModifiedDate forKey:@"AFClockAlarm::lastModifiedDate"];
}

- (AFClockAlarm)initWithCoder:(id)a3
{
  v3 = a3;
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::alarmID"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::alarmURL"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::isFiring"];
  v23 = [v4 BOOLValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::title"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::type"];
  v22 = [v6 unsignedIntegerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::hour"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::minute"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::repeatOptions"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::isEnabled"];
  LOBYTE(v11) = [v13 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::isSnoozed"];
  v15 = [v14 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::firedDate"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::dismissedDate"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClockAlarm::lastModifiedDate"];

  BYTE1(v21) = v15;
  LOBYTE(v21) = v11;
  v19 = [(AFClockAlarm *)self initWithAlarmID:v25 alarmURL:v24 isFiring:v23 title:v5 type:v22 hour:v8 minute:v10 repeatOptions:v12 isEnabled:v21 isSnoozed:v16 firedDate:v17 dismissedDate:v18 lastModifiedDate:?];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isFiring = self->_isFiring;
      if (isFiring == [(AFClockAlarm *)v5 isFiring]&& (type = self->_type, type == [(AFClockAlarm *)v5 type]) && (hour = self->_hour, hour == [(AFClockAlarm *)v5 hour]) && (minute = self->_minute, minute == [(AFClockAlarm *)v5 minute]) && (repeatOptions = self->_repeatOptions, repeatOptions == [(AFClockAlarm *)v5 repeatOptions]) && (isEnabled = self->_isEnabled, isEnabled == [(AFClockAlarm *)v5 isEnabled]) && (isSnoozed = self->_isSnoozed, isSnoozed == [(AFClockAlarm *)v5 isSnoozed]))
      {
        v13 = [(AFClockAlarm *)v5 alarmID];
        alarmID = self->_alarmID;
        if (alarmID == v13 || [(NSUUID *)alarmID isEqual:v13])
        {
          v15 = [(AFClockAlarm *)v5 alarmURL];
          alarmURL = self->_alarmURL;
          if (alarmURL == v15 || [(NSURL *)alarmURL isEqual:v15])
          {
            v17 = [(AFClockAlarm *)v5 title];
            title = self->_title;
            if (title == v17 || [(NSString *)title isEqual:v17])
            {
              v19 = [(AFClockAlarm *)v5 firedDate];
              firedDate = self->_firedDate;
              if (firedDate == v19 || [(NSDate *)firedDate isEqual:v19])
              {
                v21 = [(AFClockAlarm *)v5 dismissedDate];
                dismissedDate = self->_dismissedDate;
                if (dismissedDate == v21 || [(NSDate *)dismissedDate isEqual:v21])
                {
                  v23 = [(AFClockAlarm *)v5 lastModifiedDate];
                  lastModifiedDate = self->_lastModifiedDate;
                  v25 = lastModifiedDate == v23 || [(NSDate *)lastModifiedDate isEqual:v23];
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_alarmID hash];
  v4 = [(NSURL *)self->_alarmURL hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFiring];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSString *)self->_title hash]^ v6;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_hour];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minute];
  v13 = [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_repeatOptions];
  v15 = v13 ^ [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEnabled];
  v17 = v11 ^ v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSnoozed];
  v19 = [v18 hash];
  v20 = v19 ^ [(NSDate *)self->_firedDate hash];
  v21 = v20 ^ [(NSDate *)self->_dismissedDate hash];
  v22 = v21 ^ [(NSDate *)self->_lastModifiedDate hash];

  return v17 ^ v22;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23.receiver = self;
  v23.super_class = AFClockAlarm;
  v4 = [(AFClockAlarm *)&v23 description];
  alarmID = self->_alarmID;
  v21 = v4;
  if (self->_isFiring)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v18 = v5;
  alarmURL = self->_alarmURL;
  title = self->_title;
  v7 = AFClockAlarmTypeGetNames(self->_type);
  v8 = [v7 componentsJoinedByString:@"|"];
  hour = self->_hour;
  minute = self->_minute;
  v11 = AFClockAlarmRepeatOptionsGetNames(self->_repeatOptions);
  v12 = [v11 componentsJoinedByString:@"|"];
  v13 = v12;
  if (self->_isEnabled)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_isSnoozed)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v22 initWithFormat:@"%@ {alarmID = %@, alarmURL = %@, isFiring = %@, title = %@, type = %@, hour = %llu, minute = %llu, repeatOptions = %@, isEnabled = %@, isSnoozed = %@, firedDate = %@, dismissedDate = %@, lastModifiedDate = %@}", v21, alarmID, alarmURL, v18, title, v8, hour, minute, v12, v14, v15, self->_firedDate, self->_dismissedDate, self->_lastModifiedDate];

  return v16;
}

- (AFClockAlarm)initWithAlarmID:(id)a3 alarmURL:(id)a4 isFiring:(BOOL)a5 title:(id)a6 type:(unint64_t)a7 hour:(unint64_t)a8 minute:(unint64_t)a9 repeatOptions:(unint64_t)a10 isEnabled:(BOOL)a11 isSnoozed:(BOOL)a12 firedDate:(id)a13 dismissedDate:(id)a14 lastModifiedDate:(id)a15
{
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __148__AFClockAlarm_initWithAlarmID_alarmURL_isFiring_title_type_hour_minute_repeatOptions_isEnabled_isSnoozed_firedDate_dismissedDate_lastModifiedDate___block_invoke;
  v35[3] = &unk_1E7349450;
  v36 = v18;
  v37 = v19;
  v46 = a5;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v45 = a10;
  v47 = a11;
  v48 = a12;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = [(AFClockAlarm *)self initWithBuilder:v35];

  return v30;
}

void __148__AFClockAlarm_initWithAlarmID_alarmURL_isFiring_title_type_hour_minute_repeatOptions_isEnabled_isSnoozed_firedDate_dismissedDate_lastModifiedDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAlarmID:v3];
  [v4 setAlarmURL:*(a1 + 40)];
  [v4 setIsFiring:*(a1 + 112)];
  [v4 setTitle:*(a1 + 48)];
  [v4 setType:*(a1 + 80)];
  [v4 setHour:*(a1 + 88)];
  [v4 setMinute:*(a1 + 96)];
  [v4 setRepeatOptions:*(a1 + 104)];
  [v4 setIsEnabled:*(a1 + 113)];
  [v4 setIsSnoozed:*(a1 + 114)];
  [v4 setFiredDate:*(a1 + 56)];
  [v4 setDismissedDate:*(a1 + 64)];
  [v4 setLastModifiedDate:*(a1 + 72)];
}

- (AFClockAlarm)initWithBuilder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AFClockAlarm;
  v5 = [(AFClockAlarm *)&v27 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFClockAlarmMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFClockAlarmMutation *)v7 isDirty])
    {
      v8 = [(_AFClockAlarmMutation *)v7 getAlarmID];
      v9 = [v8 copy];
      alarmID = v6->_alarmID;
      v6->_alarmID = v9;

      v11 = [(_AFClockAlarmMutation *)v7 getAlarmURL];
      v12 = [v11 copy];
      alarmURL = v6->_alarmURL;
      v6->_alarmURL = v12;

      v6->_isFiring = [(_AFClockAlarmMutation *)v7 getIsFiring];
      v14 = [(_AFClockAlarmMutation *)v7 getTitle];
      v15 = [v14 copy];
      title = v6->_title;
      v6->_title = v15;

      v6->_type = [(_AFClockAlarmMutation *)v7 getType];
      v6->_hour = [(_AFClockAlarmMutation *)v7 getHour];
      v6->_minute = [(_AFClockAlarmMutation *)v7 getMinute];
      v6->_repeatOptions = [(_AFClockAlarmMutation *)v7 getRepeatOptions];
      v6->_isEnabled = [(_AFClockAlarmMutation *)v7 getIsEnabled];
      v6->_isSnoozed = [(_AFClockAlarmMutation *)v7 getIsSnoozed];
      v17 = [(_AFClockAlarmMutation *)v7 getFiredDate];
      v18 = [v17 copy];
      firedDate = v6->_firedDate;
      v6->_firedDate = v18;

      v20 = [(_AFClockAlarmMutation *)v7 getDismissedDate];
      v21 = [v20 copy];
      dismissedDate = v6->_dismissedDate;
      v6->_dismissedDate = v21;

      v23 = [(_AFClockAlarmMutation *)v7 getLastModifiedDate];
      v24 = [v23 copy];
      lastModifiedDate = v6->_lastModifiedDate;
      v6->_lastModifiedDate = v24;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFClockAlarmMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFClockAlarmMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFClockAlarm);
      v7 = [(_AFClockAlarmMutation *)v5 getAlarmID];
      v8 = [v7 copy];
      alarmID = v6->_alarmID;
      v6->_alarmID = v8;

      v10 = [(_AFClockAlarmMutation *)v5 getAlarmURL];
      v11 = [v10 copy];
      alarmURL = v6->_alarmURL;
      v6->_alarmURL = v11;

      v6->_isFiring = [(_AFClockAlarmMutation *)v5 getIsFiring];
      v13 = [(_AFClockAlarmMutation *)v5 getTitle];
      v14 = [v13 copy];
      title = v6->_title;
      v6->_title = v14;

      v6->_type = [(_AFClockAlarmMutation *)v5 getType];
      v6->_hour = [(_AFClockAlarmMutation *)v5 getHour];
      v6->_minute = [(_AFClockAlarmMutation *)v5 getMinute];
      v6->_repeatOptions = [(_AFClockAlarmMutation *)v5 getRepeatOptions];
      v6->_isEnabled = [(_AFClockAlarmMutation *)v5 getIsEnabled];
      v6->_isSnoozed = [(_AFClockAlarmMutation *)v5 getIsSnoozed];
      v16 = [(_AFClockAlarmMutation *)v5 getFiredDate];
      v17 = [v16 copy];
      firedDate = v6->_firedDate;
      v6->_firedDate = v17;

      v19 = [(_AFClockAlarmMutation *)v5 getDismissedDate];
      v20 = [v19 copy];
      dismissedDate = v6->_dismissedDate;
      v6->_dismissedDate = v20;

      v22 = [(_AFClockAlarmMutation *)v5 getLastModifiedDate];
      v23 = [v22 copy];
      lastModifiedDate = v6->_lastModifiedDate;
      v6->_lastModifiedDate = v23;
    }

    else
    {
      v6 = [(AFClockAlarm *)self copy];
    }
  }

  else
  {
    v6 = [(AFClockAlarm *)self copy];
  }

  return v6;
}

@end