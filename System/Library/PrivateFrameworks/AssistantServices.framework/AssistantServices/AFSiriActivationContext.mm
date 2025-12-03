@interface AFSiriActivationContext
+ (id)newWithBuilder:(id)builder;
- (AFSiriActivationContext)initWithBuilder:(id)builder;
- (AFSiriActivationContext)initWithCoder:(id)coder;
- (AFSiriActivationContext)initWithDictionaryRepresentation:(id)representation;
- (AFSiriActivationContext)initWithTimestamp:(unint64_t)timestamp source:(int64_t)source event:(int64_t)event options:(unint64_t)options deviceID:(id)d userInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFSiriActivationContext)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    unsignedLongLongValue = [v7 unsignedLongLongValue];
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

    self = [(AFSiriActivationContext *)self initWithTimestamp:unsignedLongLongValue source:v11 event:v13 options:v15 deviceID:v17 userInfo:v19];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [coderCopy encodeObject:v6 forKey:@"AFSiriActivationContext::timestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  [coderCopy encodeObject:v7 forKey:@"AFSiriActivationContext::source"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  [coderCopy encodeObject:v8 forKey:@"AFSiriActivationContext::event"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  [coderCopy encodeObject:v9 forKey:@"AFSiriActivationContext::options"];

  [coderCopy encodeObject:self->_deviceID forKey:@"AFSiriActivationContext::deviceID"];
  [coderCopy encodeObject:self->_userInfo forKey:@"AFSiriActivationContext::userInfo"];
}

- (AFSiriActivationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::timestamp"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::source"];
  integerValue = [v5 integerValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::event"];
  integerValue2 = [v6 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::options"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationContext::deviceID"];
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
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"AFSiriActivationContext::userInfo"];

  v20 = [(AFSiriActivationContext *)self initWithTimestamp:unsignedLongLongValue source:integerValue event:integerValue2 options:unsignedIntegerValue deviceID:v26 userInfo:v19];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timestamp = self->_timestamp;
      if (timestamp == [(AFSiriActivationContext *)v5 timestamp]&& (source = self->_source, source == [(AFSiriActivationContext *)v5 source]) && (event = self->_event, event == [(AFSiriActivationContext *)v5 event]) && (options = self->_options, options == [(AFSiriActivationContext *)v5 options]))
      {
        deviceID = [(AFSiriActivationContext *)v5 deviceID];
        deviceID = self->_deviceID;
        if (deviceID == deviceID || [(NSString *)deviceID isEqual:deviceID])
        {
          userInfo = [(AFSiriActivationContext *)v5 userInfo];
          userInfo = self->_userInfo;
          v14 = userInfo == userInfo || [(NSDictionary *)userInfo isEqual:userInfo];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFSiriActivationContext)initWithTimestamp:(unint64_t)timestamp source:(int64_t)source event:(int64_t)event options:(unint64_t)options deviceID:(id)d userInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__AFSiriActivationContext_initWithTimestamp_source_event_options_deviceID_userInfo___block_invoke;
  v20[3] = &unk_1E7346480;
  timestampCopy = timestamp;
  sourceCopy = source;
  eventCopy = event;
  optionsCopy = options;
  v21 = dCopy;
  v22 = infoCopy;
  v16 = infoCopy;
  v17 = dCopy;
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

- (AFSiriActivationContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFSiriActivationContext;
  v5 = [(AFSiriActivationContext *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSiriActivationContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSiriActivationContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_AFSiriActivationContextMutation *)v7 getTimestamp];
      v6->_source = [(_AFSiriActivationContextMutation *)v7 getSource];
      v6->_event = [(_AFSiriActivationContextMutation *)v7 getEvent];
      v6->_options = [(_AFSiriActivationContextMutation *)v7 getOptions];
      getDeviceID = [(_AFSiriActivationContextMutation *)v7 getDeviceID];
      v9 = [getDeviceID copy];
      deviceID = v6->_deviceID;
      v6->_deviceID = v9;

      getUserInfo = [(_AFSiriActivationContextMutation *)v7 getUserInfo];
      v12 = [getUserInfo copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSiriActivationContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSiriActivationContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSiriActivationContext);
      v6->_timestamp = [(_AFSiriActivationContextMutation *)v5 getTimestamp];
      v6->_source = [(_AFSiriActivationContextMutation *)v5 getSource];
      v6->_event = [(_AFSiriActivationContextMutation *)v5 getEvent];
      v6->_options = [(_AFSiriActivationContextMutation *)v5 getOptions];
      getDeviceID = [(_AFSiriActivationContextMutation *)v5 getDeviceID];
      v8 = [getDeviceID copy];
      deviceID = v6->_deviceID;
      v6->_deviceID = v8;

      getUserInfo = [(_AFSiriActivationContextMutation *)v5 getUserInfo];
      v11 = [getUserInfo copy];
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