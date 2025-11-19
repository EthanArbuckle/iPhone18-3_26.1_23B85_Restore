@interface LARatchetState
- (BOOL)isEqual:(id)a3;
- (LARatchetState)initWithRawValue:(int64_t)a3 value:(id)a4 uuid:(id)a5;
- (LARatchetState)initWithState:(id)a3;
- (double)duration;
- (id)description;
@end

@implementation LARatchetState

- (LARatchetState)initWithRawValue:(int64_t)a3 value:(id)a4 uuid:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = LARatchetState;
  v11 = [(LARatchetState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_rawValue = a3;
    objc_storeStrong(&v11->_value, a4);
    objc_storeStrong(&v12->_uuid, a5);
  }

  return v12;
}

- (double)duration
{
  v2 = [(LARatchetState *)self value];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (LARatchetState)initWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 rawValue];
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
      v11 = [LARatchetStateValueWaitingForCoolOff alloc];
      [v4 duration];
      v7 = [(LARatchetStateValue *)v11 initWithDuration:?];
      v8 = [v4 uuid];
      v9 = self;
      v10 = 1;
      goto LABEL_11;
    }

LABEL_8:
    v7 = [[LARatchetStateValueNotStarted alloc] initInternal];
    v8 = [v4 uuid];
    v9 = self;
    v10 = 0;
    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v12 = [LARatchetStateValueWaitingForSecondAuthentication alloc];
    [v4 duration];
    v7 = [(LARatchetStateValue *)v12 initWithDuration:?];
    v8 = [v4 uuid];
    v9 = self;
    v10 = 2;
    goto LABEL_11;
  }

  if (v5 == 3)
  {
    v13 = [LARatchetStateValueReady alloc];
    [v4 duration];
    v7 = [(LARatchetStateValue *)v13 initWithDuration:?];
    v8 = [v4 uuid];
    v9 = self;
    v10 = 3;
    goto LABEL_11;
  }

  if (v5 != 4)
  {
    goto LABEL_8;
  }

  v6 = [LARatchetStateValueCollapsed alloc];
  [v4 duration];
  v7 = [(LARatchetStateValue *)v6 initWithDuration:?];
  v8 = [v4 uuid];
  v9 = self;
  v10 = 4;
LABEL_11:
  v14 = [(LARatchetState *)v9 initWithRawValue:v10 value:v7 uuid:v8];

  return v14;
}

- (id)description
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LARatchetState *)self rawValue];
  if (v6 > 4)
  {
    v7 = &stru_1F1A66748;
  }

  else
  {
    v7 = off_1E77CC438[v6];
  }

  v8 = [v5 stringWithFormat:@"rawValue: %@", v7];
  v21[0] = v8;
  v9 = MEMORY[0x1E696AEC0];
  [(LARatchetState *)self duration];
  v11 = NSStringFromLARatchetStateDuration(v10);
  v12 = [v9 stringWithFormat:@"duration: %@", v11];
  v21[1] = v12;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [(LARatchetState *)self uuid];
  v15 = [v13 stringWithFormat:@"uuid: %@", v14];
  v21[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v17 = [v16 componentsJoinedByString:@" "];;
  v18 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v17];;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 rawValue];
    if (v6 == [(LARatchetState *)self rawValue])
    {
      v7 = [v5 value];
      v8 = [(LARatchetState *)self value];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [v5 value];
        v11 = [(LARatchetState *)self value];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [v5 uuid];
      v15 = [(LARatchetState *)self uuid];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [v5 uuid];
        v17 = [(LARatchetState *)self uuid];
        v13 = [v16 isEqualToString:v17];
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