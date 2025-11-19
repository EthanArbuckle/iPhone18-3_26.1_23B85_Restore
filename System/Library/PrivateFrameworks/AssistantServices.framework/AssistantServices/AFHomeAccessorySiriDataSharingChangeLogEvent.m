@interface AFHomeAccessorySiriDataSharingChangeLogEvent
+ (id)newWithBuilder:(id)a3;
- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithBuilder:(id)a3;
- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithCoder:(id)a3;
- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithDate:(id)a3 previousOptInStatus:(int64_t)a4 newOptInStatus:(int64_t)a5 changeSource:(int64_t)a6 changeReason:(id)a7 buildVersion:(id)a8 productVersion:(id)a9 schemaVersion:(id)a10 logEventIdentifier:(id)a11;
- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFHomeAccessorySiriDataSharingChangeLogEvent

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  date = self->_date;
  if (date)
  {
    [v3 setObject:date forKey:@"date"];
  }

  previousOptInStatus = self->_previousOptInStatus;
  if (previousOptInStatus > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7348978[previousOptInStatus];
  }

  v8 = v7;
  [v4 setObject:v8 forKey:@"previousOptInStatus"];

  newOptInStatus = self->_newOptInStatus;
  if (newOptInStatus > 3)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E7348978[newOptInStatus];
  }

  v11 = v10;
  [v4 setObject:v11 forKey:@"newOptInStatus"];

  changeSource = self->_changeSource;
  if (changeSource > 0xB)
  {
    v13 = @"(unknown)";
  }

  else
  {
    v13 = off_1E73488B0[changeSource];
  }

  v14 = v13;
  [v4 setObject:v14 forKey:@"changeSource"];

  changeReason = self->_changeReason;
  if (changeReason)
  {
    [v4 setObject:changeReason forKey:@"changeReason"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  productVersion = self->_productVersion;
  if (productVersion)
  {
    [v4 setObject:productVersion forKey:@"productVersion"];
  }

  schemaVersion = self->_schemaVersion;
  if (schemaVersion)
  {
    [v4 setObject:schemaVersion forKey:@"schemaVersion"];
  }

  logEventIdentifier = self->_logEventIdentifier;
  if (logEventIdentifier)
  {
    [v4 setObject:logEventIdentifier forKey:@"logEventIdentifier"];
  }

  v20 = [v4 copy];

  return v20;
}

- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
    }

    else
    {
      v25 = 0;
    }

    v8 = [v5 objectForKey:@"previousOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = AFSiriDataSharingOptInStatusGetFromName(v8);
    }

    else
    {
      v24 = 0;
    }

    v9 = [v5 objectForKey:@"newOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = AFSiriDataSharingOptInStatusGetFromName(v9);
    }

    else
    {
      v23 = 0;
    }

    v10 = [v5 objectForKey:@"changeSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = AFSiriDataSharingOptInStatusChangeSourceGetFromName(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKey:@"changeReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"buildVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 objectForKey:@"productVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v5 objectForKey:@"schemaVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v5 objectForKey:@"logEventIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    self = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self initWithDate:v25 previousOptInStatus:v24 newOptInStatus:v23 changeSource:v11 changeReason:v13 buildVersion:v15 productVersion:v17 schemaVersion:v19 logEventIdentifier:v21];
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
  date = self->_date;
  v8 = a3;
  [v8 encodeObject:date forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::date"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_previousOptInStatus];
  [v8 encodeObject:v5 forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::previousOptInStatus"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_newOptInStatus];
  [v8 encodeObject:v6 forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::newOptInStatus"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_changeSource];
  [v8 encodeObject:v7 forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::changeSource"];

  [v8 encodeObject:self->_changeReason forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::changeReason"];
  [v8 encodeObject:self->_buildVersion forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::buildVersion"];
  [v8 encodeObject:self->_productVersion forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::productVersion"];
  [v8 encodeObject:self->_schemaVersion forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::schemaVersion"];
  [v8 encodeObject:self->_logEventIdentifier forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::logEventIdentifier"];
}

- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::date"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::previousOptInStatus"];
  v6 = [v5 integerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::newOptInStatus"];
  v8 = [v7 integerValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::changeSource"];
  v10 = [v9 integerValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::changeReason"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::buildVersion"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::productVersion"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::schemaVersion"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingChangeLogEvent::logEventIdentifier"];

  v16 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self initWithDate:v4 previousOptInStatus:v6 newOptInStatus:v8 changeSource:v10 changeReason:v11 buildVersion:v12 productVersion:v13 schemaVersion:v14 logEventIdentifier:v15];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      previousOptInStatus = self->_previousOptInStatus;
      if (previousOptInStatus == [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 previousOptInStatus]&& (newOptInStatus = self->_newOptInStatus, newOptInStatus == [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 newOptInStatus]) && (changeSource = self->_changeSource, changeSource == [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 changeSource]))
      {
        v9 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 date];
        date = self->_date;
        if (date == v9 || [(NSDate *)date isEqual:v9])
        {
          v11 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 changeReason];
          changeReason = self->_changeReason;
          if (changeReason == v11 || [(NSString *)changeReason isEqual:v11])
          {
            v13 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 buildVersion];
            buildVersion = self->_buildVersion;
            if (buildVersion == v13 || [(NSString *)buildVersion isEqual:v13])
            {
              v15 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 productVersion];
              productVersion = self->_productVersion;
              if (productVersion == v15 || [(NSString *)productVersion isEqual:v15])
              {
                v17 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 schemaVersion];
                schemaVersion = self->_schemaVersion;
                if (schemaVersion == v17 || [(NSString *)schemaVersion isEqual:v17])
                {
                  v19 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)v5 logEventIdentifier];
                  logEventIdentifier = self->_logEventIdentifier;
                  v21 = logEventIdentifier == v19 || [(NSString *)logEventIdentifier isEqual:v19];
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_previousOptInStatus];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_newOptInStatus];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_changeSource];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(NSString *)self->_changeReason hash];
  v11 = v10 ^ [(NSString *)self->_buildVersion hash];
  v12 = v11 ^ [(NSString *)self->_productVersion hash];
  v13 = v12 ^ [(NSString *)self->_schemaVersion hash];
  v14 = v13 ^ [(NSString *)self->_logEventIdentifier hash];

  return v9 ^ v14;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18.receiver = self;
  v18.super_class = AFHomeAccessorySiriDataSharingChangeLogEvent;
  v5 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)&v18 description];
  previousOptInStatus = self->_previousOptInStatus;
  if (previousOptInStatus > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7348978[previousOptInStatus];
  }

  date = self->_date;
  v9 = v7;
  newOptInStatus = self->_newOptInStatus;
  if (newOptInStatus > 3)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_1E7348978[newOptInStatus];
  }

  v12 = v11;
  changeSource = self->_changeSource;
  if (changeSource > 0xB)
  {
    v14 = @"(unknown)";
  }

  else
  {
    v14 = off_1E73488B0[changeSource];
  }

  v15 = v14;
  v16 = [v4 initWithFormat:@"%@ {date = %@, previousOptInStatus = %@, newOptInStatus = %@, changeSource = %@, changeReason = %@, buildVersion = %@, productVersion = %@, schemaVersion = %@, logEventIdentifier = %@}", v5, date, v9, v12, v15, self->_changeReason, self->_buildVersion, self->_productVersion, self->_schemaVersion, self->_logEventIdentifier];

  return v16;
}

- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithDate:(id)a3 previousOptInStatus:(int64_t)a4 newOptInStatus:(int64_t)a5 changeSource:(int64_t)a6 changeReason:(id)a7 buildVersion:(id)a8 productVersion:(id)a9 schemaVersion:(id)a10 logEventIdentifier:(id)a11
{
  v16 = a3;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __183__AFHomeAccessorySiriDataSharingChangeLogEvent_initWithDate_previousOptInStatus_newOptInStatus_changeSource_changeReason_buildVersion_productVersion_schemaVersion_logEventIdentifier___block_invoke;
  v31[3] = &unk_1E7341F78;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self initWithBuilder:v31];

  return v28;
}

void __183__AFHomeAccessorySiriDataSharingChangeLogEvent_initWithDate_previousOptInStatus_newOptInStatus_changeSource_changeReason_buildVersion_productVersion_schemaVersion_logEventIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDate:v3];
  [v4 setPreviousOptInStatus:a1[10]];
  [v4 setNewOptInStatus:a1[11]];
  [v4 setChangeSource:a1[12]];
  [v4 setChangeReason:a1[5]];
  [v4 setBuildVersion:a1[6]];
  [v4 setProductVersion:a1[7]];
  [v4 setSchemaVersion:a1[8]];
  [v4 setLogEventIdentifier:a1[9]];
}

- (AFHomeAccessorySiriDataSharingChangeLogEvent)initWithBuilder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AFHomeAccessorySiriDataSharingChangeLogEvent;
  v5 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)&v27 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFHomeAccessorySiriDataSharingChangeLogEventMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 isDirty])
    {
      v8 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getDate];
      v9 = [v8 copy];
      date = v6->_date;
      v6->_date = v9;

      v6->_previousOptInStatus = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getPreviousOptInStatus];
      v6->_newOptInStatus = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getNewOptInStatus];
      v6->_changeSource = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getChangeSource];
      v11 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getChangeReason];
      v12 = [v11 copy];
      changeReason = v6->_changeReason;
      v6->_changeReason = v12;

      v14 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getBuildVersion];
      v15 = [v14 copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v15;

      v17 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getProductVersion];
      v18 = [v17 copy];
      productVersion = v6->_productVersion;
      v6->_productVersion = v18;

      v20 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getSchemaVersion];
      v21 = [v20 copy];
      schemaVersion = v6->_schemaVersion;
      v6->_schemaVersion = v21;

      v23 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v7 getLogEventIdentifier];
      v24 = [v23 copy];
      logEventIdentifier = v6->_logEventIdentifier;
      v6->_logEventIdentifier = v24;
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
    v5 = [[_AFHomeAccessorySiriDataSharingChangeLogEventMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAccessorySiriDataSharingChangeLogEvent);
      v7 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getDate];
      v8 = [v7 copy];
      date = v6->_date;
      v6->_date = v8;

      v6->_previousOptInStatus = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getPreviousOptInStatus];
      v6->_newOptInStatus = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getNewOptInStatus];
      v6->_changeSource = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getChangeSource];
      v10 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getChangeReason];
      v11 = [v10 copy];
      changeReason = v6->_changeReason;
      v6->_changeReason = v11;

      v13 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getBuildVersion];
      v14 = [v13 copy];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v14;

      v16 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getProductVersion];
      v17 = [v16 copy];
      productVersion = v6->_productVersion;
      v6->_productVersion = v17;

      v19 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getSchemaVersion];
      v20 = [v19 copy];
      schemaVersion = v6->_schemaVersion;
      v6->_schemaVersion = v20;

      v22 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)v5 getLogEventIdentifier];
      v23 = [v22 copy];
      logEventIdentifier = v6->_logEventIdentifier;
      v6->_logEventIdentifier = v23;
    }

    else
    {
      v6 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self copy];
    }
  }

  else
  {
    v6 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self copy];
  }

  return v6;
}

@end