@interface LARatchetState
- (BOOL)isEqual:(id)equal;
- (LARatchetState)initWithRawValue:(int64_t)value value:(id)a4 uuid:(id)uuid;
- (LARatchetState)initWithState:(id)state;
- (double)duration;
- (id)description;
@end

@implementation LARatchetState

- (LARatchetState)initWithRawValue:(int64_t)value value:(id)a4 uuid:(id)uuid
{
  v9 = a4;
  uuidCopy = uuid;
  v14.receiver = self;
  v14.super_class = LARatchetState;
  v11 = [(LARatchetState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_rawValue = value;
    objc_storeStrong(&v11->_value, a4);
    objc_storeStrong(&v12->_uuid, uuid);
  }

  return v12;
}

- (double)duration
{
  value = [(LARatchetState *)self value];
  [value duration];
  v4 = v3;

  return v4;
}

- (LARatchetState)initWithState:(id)state
{
  stateCopy = state;
  rawValue = [stateCopy rawValue];
  if (rawValue <= 1)
  {
    if (rawValue == 1)
    {
      v11 = [LARatchetStateValueWaitingForCoolOff alloc];
      [stateCopy duration];
      initInternal = [(LARatchetStateValue *)v11 initWithDuration:?];
      uuid = [stateCopy uuid];
      selfCopy5 = self;
      v10 = 1;
      goto LABEL_11;
    }

LABEL_8:
    initInternal = [[LARatchetStateValueNotStarted alloc] initInternal];
    uuid = [stateCopy uuid];
    selfCopy5 = self;
    v10 = 0;
    goto LABEL_11;
  }

  if (rawValue == 2)
  {
    v12 = [LARatchetStateValueWaitingForSecondAuthentication alloc];
    [stateCopy duration];
    initInternal = [(LARatchetStateValue *)v12 initWithDuration:?];
    uuid = [stateCopy uuid];
    selfCopy5 = self;
    v10 = 2;
    goto LABEL_11;
  }

  if (rawValue == 3)
  {
    v13 = [LARatchetStateValueReady alloc];
    [stateCopy duration];
    initInternal = [(LARatchetStateValue *)v13 initWithDuration:?];
    uuid = [stateCopy uuid];
    selfCopy5 = self;
    v10 = 3;
    goto LABEL_11;
  }

  if (rawValue != 4)
  {
    goto LABEL_8;
  }

  v6 = [LARatchetStateValueCollapsed alloc];
  [stateCopy duration];
  initInternal = [(LARatchetStateValue *)v6 initWithDuration:?];
  uuid = [stateCopy uuid];
  selfCopy5 = self;
  v10 = 4;
LABEL_11:
  v14 = [(LARatchetState *)selfCopy5 initWithRawValue:v10 value:initInternal uuid:uuid];

  return v14;
}

- (id)description
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  rawValue = [(LARatchetState *)self rawValue];
  if (rawValue > 4)
  {
    v7 = &stru_1F1A66748;
  }

  else
  {
    v7 = off_1E77CC438[rawValue];
  }

  v8 = [v5 stringWithFormat:@"rawValue: %@", v7];
  v21[0] = v8;
  v9 = MEMORY[0x1E696AEC0];
  [(LARatchetState *)self duration];
  v11 = NSStringFromLARatchetStateDuration(v10);
  v12 = [v9 stringWithFormat:@"duration: %@", v11];
  v21[1] = v12;
  v13 = MEMORY[0x1E696AEC0];
  uuid = [(LARatchetState *)self uuid];
  v15 = [v13 stringWithFormat:@"uuid: %@", uuid];
  v21[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v17 = [v16 componentsJoinedByString:@" "];;
  v18 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v17];;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    rawValue = [v5 rawValue];
    if (rawValue == [(LARatchetState *)self rawValue])
    {
      value = [v5 value];
      value2 = [(LARatchetState *)self value];
      v9 = value2;
      if (value == value2)
      {
      }

      else
      {
        value3 = [v5 value];
        value4 = [(LARatchetState *)self value];
        v12 = [value3 isEqual:value4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      uuid = [v5 uuid];
      uuid2 = [(LARatchetState *)self uuid];
      if (uuid == uuid2)
      {
        v13 = 1;
      }

      else
      {
        uuid3 = [v5 uuid];
        uuid4 = [(LARatchetState *)self uuid];
        v13 = [uuid3 isEqualToString:uuid4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13 & 1;
}

@end