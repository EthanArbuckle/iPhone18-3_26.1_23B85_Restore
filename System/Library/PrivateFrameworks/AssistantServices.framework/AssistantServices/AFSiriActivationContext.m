@interface AFSiriActivationContext
+ (id)newWithBuilder:(id)a3;
- (AFSiriActivationContext)initWithBuilder:(id)a3;
- (AFSiriActivationContext)initWithCoder:(id)a3;
- (AFSiriActivationContext)initWithDictionaryRepresentation:(id)a3;
- (AFSiriActivationContext)initWithTimestamp:(unint64_t)a3 source:(int64_t)a4 event:(int64_t)a5 options:(unint64_t)a6 deviceID:(id)a7 userInfo:(id)a8;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriActivationContext

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  [v3 setObject:v4 forKey:@"timestamp"];

  source = self->_source;
  if (source > 0xF)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E7341EA8[source];
  }

  v7 = v6;
  [v3 setObject:v7 forKey:@"source"];

  event = self->_event;
  if (event > 0x17)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_1E7348998[event];
  }

  v10 = v9;
  [v3 setObject:v10 forKey:@"event"];

  v11 = AFSiriActivationOptionsGetNames(self->_options);
  [v3 setObject:v11 forKey:@"options"];

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v3 setObject:deviceID forKey:@"deviceID"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v3 setObject:userInfo forKey:@"userInfo"];
  }

  v14 = [v3 copy];

  return v14;
}

- (AFSiriActivationContext)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v7 unsignedLongLongValue];
    v10 = [v5 objectForKey:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = AFSiriActivationSourceGetFromName(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKey:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = AFSiriActivationEventGetFromName(v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"options"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = AFSiriActivationOptionsGetFromNames(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 objectForKey:@"deviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v5 objectForKey:@"userInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    self = [(AFSiriActivationContext *)self initWithTimestamp:v9 source:v11 event:v13 options:v15 deviceID:v17 userInfo:v19];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  v10 = a3;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [v10 encodeObject:v6 forKey:@"AFSiriActivationContext::timestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  [v10 encodeObject:v7 forKey:@"AFSiriActivationContext::source"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  [v10 encodeObject:v8 forKey:@"AFSiriActivationContext::event"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  [v10 encodeObject:v9 forKey:@"AFSiriActivationContext::options"];

  [v10 encodeObject:self->_deviceID forKey:@"AFSiriActivationContext::deviceID"];
  [v10 encodeObject:self->_userInfo forKey:@"AFSiriActivationContext::userInfo"];
}

- (AFSiriActivationContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::timestamp"];
  v30 = [v4 unsignedLongLongValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::source"];
  v29 = [v5 integerValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::event"];
  v28 = [v6 integerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::options"];
  v27 = [v7 unsignedIntegerValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::deviceID"];
  v25 = MEMORY[0x1E695DFD8];
  v26 = v8;
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v25 setWithObjects:{v24, v23, v22, v9, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  v19 = [v3 decodeObjectOfClasses:v18 forKey:@"AFSiriActivationContext::userInfo"];

  v20 = [(AFSiriActivationContext *)self initWithTimestamp:v30 source:v29 event:v28 options:v27 deviceID:v26 userInfo:v19];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      timestamp = self->_timestamp;
      if (timestamp == [(AFSiriActivationContext *)v5 timestamp]&& (source = self->_source, source == [(AFSiriActivationContext *)v5 source]) && (event = self->_event, event == [(AFSiriActivationContext *)v5 event]) && (options = self->_options, options == [(AFSiriActivationContext *)v5 options]))
      {
        v10 = [(AFSiriActivationContext *)v5 deviceID];
        deviceID = self->_deviceID;
        if (deviceID == v10 || [(NSString *)deviceID isEqual:v10])
        {
          v12 = [(AFSiriActivationContext *)v5 userInfo];
          userInfo = self->_userInfo;
          v14 = userInfo == v12 || [(NSDictionary *)userInfo isEqual:v12];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(NSString *)self->_deviceID hash];
  v12 = v11 ^ [(NSDictionary *)self->_userInfo hash];

  return v10 ^ v12;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17.receiver = self;
  v17.super_class = AFSiriActivationContext;
  v5 = [(AFSiriActivationContext *)&v17 description];
  source = self->_source;
  if (source > 0xF)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7341EA8[source];
  }

  timestamp = self->_timestamp;
  v9 = v7;
  event = self->_event;
  if (event > 0x17)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_1E7348998[event];
  }

  v12 = v11;
  v13 = AFSiriActivationOptionsGetNames(self->_options);
  v14 = [v13 componentsJoinedByString:@"|"];
  v15 = [v4 initWithFormat:@"%@ {timestamp = %llu, source = %@, event = %@, options = %@, deviceID = %@, userInfo = %@}", v5, timestamp, v9, v12, v14, self->_deviceID, self->_userInfo];

  return v15;
}

- (AFSiriActivationContext)initWithTimestamp:(unint64_t)a3 source:(int64_t)a4 event:(int64_t)a5 options:(unint64_t)a6 deviceID:(id)a7 userInfo:(id)a8
{
  v14 = a7;
  v15 = a8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__AFSiriActivationContext_initWithTimestamp_source_event_options_deviceID_userInfo___block_invoke;
  v20[3] = &unk_1E7346480;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v21 = v14;
  v22 = v15;
  v16 = v15;
  v17 = v14;
  v18 = [(AFSiriActivationContext *)self initWithBuilder:v20];

  return v18;
}

void __84__AFSiriActivationContext_initWithTimestamp_source_event_options_deviceID_userInfo___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setSource:a1[7]];
  [v4 setEvent:a1[8]];
  [v4 setOptions:a1[9]];
  [v4 setDeviceID:a1[4]];
  [v4 setUserInfo:a1[5]];
}

- (AFSiriActivationContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFSiriActivationContext;
  v5 = [(AFSiriActivationContext *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSiriActivationContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSiriActivationContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_AFSiriActivationContextMutation *)v7 getTimestamp];
      v6->_source = [(_AFSiriActivationContextMutation *)v7 getSource];
      v6->_event = [(_AFSiriActivationContextMutation *)v7 getEvent];
      v6->_options = [(_AFSiriActivationContextMutation *)v7 getOptions];
      v8 = [(_AFSiriActivationContextMutation *)v7 getDeviceID];
      v9 = [v8 copy];
      deviceID = v6->_deviceID;
      v6->_deviceID = v9;

      v11 = [(_AFSiriActivationContextMutation *)v7 getUserInfo];
      v12 = [v11 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v12;
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
    v5 = [[_AFSiriActivationContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSiriActivationContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSiriActivationContext);
      v6->_timestamp = [(_AFSiriActivationContextMutation *)v5 getTimestamp];
      v6->_source = [(_AFSiriActivationContextMutation *)v5 getSource];
      v6->_event = [(_AFSiriActivationContextMutation *)v5 getEvent];
      v6->_options = [(_AFSiriActivationContextMutation *)v5 getOptions];
      v7 = [(_AFSiriActivationContextMutation *)v5 getDeviceID];
      v8 = [v7 copy];
      deviceID = v6->_deviceID;
      v6->_deviceID = v8;

      v10 = [(_AFSiriActivationContextMutation *)v5 getUserInfo];
      v11 = [v10 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v11;
    }

    else
    {
      v6 = [(AFSiriActivationContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFSiriActivationContext *)self copy];
  }

  return v6;
}

@end