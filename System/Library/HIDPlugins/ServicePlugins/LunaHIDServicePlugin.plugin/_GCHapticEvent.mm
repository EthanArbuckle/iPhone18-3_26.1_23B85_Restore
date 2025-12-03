@interface _GCHapticEvent
- (_GCHapticEvent)initWithCoder:(id)coder;
- (_GCHapticEvent)initWithSyntheticCommand:(id)command;
- (id)description;
- (pair<BOOL,)valueForNoteParam:(unsigned int)param inParameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
- (void)evaluateDeviceNoteParams:(id)params;
@end

@implementation _GCHapticEvent

- (pair<BOOL,)valueForNoteParam:(unsigned int)param inParameters:(id)parameters
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  parametersCopy = parameters;
  v6 = [parametersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(parametersCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 identifier] == param)
        {
          [v9 value];
          v14 = v13;

          v12 = v14 << 32;
          v11 = 1;
          goto LABEL_13;
        }
      }

      v6 = [parametersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = param - 330;
  if (param - 330 >= 7)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = qword_C3F8[v10];
  }

LABEL_13:

  return (v12 | v11);
}

- (void)evaluateDeviceNoteParams:(id)params
{
  paramsCopy = params;
  self->_intensity = COERCE_FLOAT([(_GCHapticEvent *)self valueForNoteParam:330 inParameters:?]>> 32);
  self->_sharpness = COERCE_FLOAT([(_GCHapticEvent *)self valueForNoteParam:331 inParameters:paramsCopy]>> 32);
}

- (_GCHapticEvent)initWithSyntheticCommand:(id)command
{
  commandCopy = command;
  v14.receiver = self;
  v14.super_class = _GCHapticEvent;
  v5 = [(_GCHapticEvent *)&v14 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  tokenAndParams = [commandCopy tokenAndParams];
  if (tokenAndParams)
  {
    v5->_type = 0;
    [commandCopy time];
    v5->_startTime = v7;
    v5->_identifier = [(_GCHapticEvent *)tokenAndParams token];
    params = [(_GCHapticEvent *)tokenAndParams params];
    [(_GCHapticEvent *)v5 evaluateDeviceNoteParams:params];

    eventID = [commandCopy eventID];
    if (eventID > 3u)
    {
      switch(eventID)
      {
        case 4u:
          v10 = 0x3FE199999999999ALL;
          goto LABEL_14;
        case 5u:
          v11 = 0x3FC999999999999ALL;
          break;
        case 6u:
          v11 = 0x3FE199999999999ALL;
          break;
        default:
          goto LABEL_15;
      }

      *&v5->_sharpness = v11;
    }

    else
    {
      if (eventID == 1)
      {
        v12 = eventID;
LABEL_19:
        v5->_type = v12;

LABEL_20:
        tokenAndParams = v5;
        goto LABEL_21;
      }

      if (eventID != 2)
      {
        if (eventID == 3)
        {
          v10 = 0x3FC999999999999ALL;
LABEL_14:
          *&v5->_sharpness = v10;
          v12 = 1;
          goto LABEL_19;
        }

LABEL_15:
        v12 = 0;
        goto LABEL_19;
      }
    }

    v12 = 2;
    goto LABEL_19;
  }

LABEL_21:

  return tokenAndParams;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_type == 1)
  {
    v6 = @"transient";
  }

  else
  {
    v6 = @"continuous";
  }

  v7 = [NSString stringWithFormat:@"<%@ %lu (%@), i=%f s=%f (started at %f)>", v4, self->_identifier, v6, *&self->_intensity, *&self->_sharpness, *&self->_startTime];

  return v7;
}

- (_GCHapticEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _GCHapticEvent;
  v5 = [(_GCHapticEvent *)&v10 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_identifier = [coderCopy decodeIntegerForKey:@"identifier"];
    v5->_stopped = [coderCopy decodeBoolForKey:@"stopped"];
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v6;
    [coderCopy decodeDoubleForKey:@"intensity"];
    v5->_intensity = v7;
    [coderCopy decodeDoubleForKey:@"sharpness"];
    v5->_sharpness = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_stopped forKey:@"stopped"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"intensity" forKey:self->_intensity];
  [coderCopy encodeDouble:@"sharpness" forKey:self->_sharpness];
}

@end