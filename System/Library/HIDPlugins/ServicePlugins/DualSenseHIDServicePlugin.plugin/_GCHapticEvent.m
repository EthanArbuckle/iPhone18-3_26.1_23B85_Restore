@interface _GCHapticEvent
- (_GCHapticEvent)initWithCoder:(id)a3;
- (_GCHapticEvent)initWithSyntheticCommand:(id)a3;
- (id)description;
- (pair<BOOL,)valueForNoteParam:(unsigned int)a3 inParameters:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)evaluateDeviceNoteParams:(id)a3;
@end

@implementation _GCHapticEvent

- (pair<BOOL,)valueForNoteParam:(unsigned int)a3 inParameters:(id)a4
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 identifier] == a3)
        {
          [v9 value];
          v14 = v13;

          v12 = v14 << 32;
          v11 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = a3 - 330;
  if (a3 - 330 >= 7)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = qword_131E8[v10];
  }

LABEL_13:

  return (v12 | v11);
}

- (void)evaluateDeviceNoteParams:(id)a3
{
  v4 = a3;
  self->_intensity = COERCE_FLOAT([(_GCHapticEvent *)self valueForNoteParam:330 inParameters:?]>> 32);
  self->_sharpness = COERCE_FLOAT([(_GCHapticEvent *)self valueForNoteParam:331 inParameters:v4]>> 32);
}

- (_GCHapticEvent)initWithSyntheticCommand:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _GCHapticEvent;
  v5 = [(_GCHapticEvent *)&v14 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [v4 tokenAndParams];
  if (v6)
  {
    v5->_type = 0;
    [v4 time];
    v5->_startTime = v7;
    v5->_identifier = [(_GCHapticEvent *)v6 token];
    v8 = [(_GCHapticEvent *)v6 params];
    [(_GCHapticEvent *)v5 evaluateDeviceNoteParams:v8];

    v9 = [v4 eventID];
    if (v9 > 3u)
    {
      switch(v9)
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
      if (v9 == 1)
      {
        v12 = v9;
LABEL_19:
        v5->_type = v12;

LABEL_20:
        v6 = v5;
        goto LABEL_21;
      }

      if (v9 != 2)
      {
        if (v9 == 3)
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

  return v6;
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

- (_GCHapticEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _GCHapticEvent;
  v5 = [(_GCHapticEvent *)&v10 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_identifier = [v4 decodeIntegerForKey:@"identifier"];
    v5->_stopped = [v4 decodeBoolForKey:@"stopped"];
    [v4 decodeDoubleForKey:@"startTime"];
    v5->_startTime = v6;
    [v4 decodeDoubleForKey:@"intensity"];
    v5->_intensity = v7;
    [v4 decodeDoubleForKey:@"sharpness"];
    v5->_sharpness = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_type forKey:@"type"];
  [v4 encodeInteger:self->_identifier forKey:@"identifier"];
  [v4 encodeBool:self->_stopped forKey:@"stopped"];
  [v4 encodeDouble:@"startTime" forKey:self->_startTime];
  [v4 encodeDouble:@"intensity" forKey:self->_intensity];
  [v4 encodeDouble:@"sharpness" forKey:self->_sharpness];
}

@end