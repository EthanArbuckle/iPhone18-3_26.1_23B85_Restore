@interface ATXIntentEvent
- (ATXIntentEvent)initWithBundleId:(id)a3 intentType:(id)a4 dateInterval:(id)a5;
- (ATXIntentEvent)initWithBundleId:(id)a3 intentType:(id)a4 dateInterval:(id)a5 action:(id)a6;
- (ATXIntentEvent)initWithBundleId:(id)a3 intentType:(id)a4 dateInterval:(id)a5 intent:(id)a6;
- (ATXIntentEvent)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXIntentEvent:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setArg1:(id)a3;
- (void)setArg2:(id)a3;
@end

@implementation ATXIntentEvent

- (ATXIntentEvent)initWithBundleId:(id)a3 intentType:(id)a4 dateInterval:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXIntentEvent initWithBundleId:a2 intentType:self dateInterval:?];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [ATXIntentEvent initWithBundleId:a2 intentType:self dateInterval:?];
LABEL_3:
  v23.receiver = self;
  v23.super_class = ATXIntentEvent;
  v12 = [(ATXIntentEvent *)&v23 init];
  if (v12)
  {
    v13 = [v9 copy];
    bundleId = v12->_bundleId;
    v12->_bundleId = v13;

    v15 = [v10 copy];
    intentType = v12->_intentType;
    v12->_intentType = v15;

    v17 = [v11 copy];
    dateInterval = v12->_dateInterval;
    v12->_dateInterval = v17;

    intent = v12->_intent;
    v12->_intent = 0;

    arg1 = v12->_arg1;
    v12->_arg1 = @"ARG1_MISSING";

    arg2 = v12->_arg2;
    v12->_arg2 = @"ARG2_MISSING";
  }

  return v12;
}

- (ATXIntentEvent)initWithBundleId:(id)a3 intentType:(id)a4 dateInterval:(id)a5 intent:(id)a6
{
  v11 = a6;
  v12 = [(ATXIntentEvent *)self initWithBundleId:a3 intentType:a4 dateInterval:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intent, a6);
    [v11 atx_getArgsInto:v13];
  }

  return v13;
}

- (ATXIntentEvent)initWithBundleId:(id)a3 intentType:(id)a4 dateInterval:(id)a5 action:(id)a6
{
  v11 = a6;
  v12 = [(ATXIntentEvent *)self initWithBundleId:a3 intentType:a4 dateInterval:a5];
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      objc_storeStrong(&v12->_action, a6);
      if (![v11 actionType] || objc_msgSend(v11, "actionType") == 2)
      {
        v14 = [v11 intent];
        intent = v13->_intent;
        v13->_intent = v14;

        [(INIntent *)v13->_intent atx_getArgsInto:v13];
      }
    }
  }

  return v13;
}

- (void)setArg1:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"ARG1_MISSING";
  }

  objc_storeStrong(&self->_arg1, v3);
}

- (void)setArg2:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"ARG2_MISSING";
  }

  objc_storeStrong(&self->_arg2, v3);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %@ %@(%@, %@)>", v5, self->_dateInterval, self->_bundleId, self->_arg1, self->_arg2];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXIntentEvent *)self isEqualToATXIntentEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXIntentEvent:(id)a3
{
  v4 = a3;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_intentType;
  v9 = v8;
  if (v8 == v4[1])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_dateInterval;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(NSDateInterval *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_intent;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(INIntent *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_arg1;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }
  }

  v22 = self->_arg2;
  v23 = v22;
  if (v22 == v4[7])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSString *)v22 isEqual:?];
  }

LABEL_20:
  return v20;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_intentType hash]- v3 + 32 * v3;
  v5 = [(NSDateInterval *)self->_dateInterval hash]- v4 + 32 * v4;
  v6 = [(INIntent *)self->_intent hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_arg1 hash]- v6 + 32 * v6;
  return [(NSString *)self->_arg2 hash]- v7 + 32 * v7;
}

- (ATXIntentEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [(ATXIntentEvent *)self initWithBundleId:v5 intentType:v6 dateInterval:v7];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arg1"];
    arg1 = v8->_arg1;
    v8->_arg1 = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arg2"];
    arg2 = v8->_arg2;
    v8->_arg2 = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeObject:v4->_arg1 forKey:@"arg1"];
  [v5 encodeObject:v4->_arg2 forKey:@"arg2"];
  [v5 encodeObject:v4->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:v4->_intentType forKey:@"intentType"];
  objc_sync_exit(v4);
}

- (void)initWithBundleId:(uint64_t)a1 intentType:(uint64_t)a2 dateInterval:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXIntentEvent.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
}

- (void)initWithBundleId:(uint64_t)a1 intentType:(uint64_t)a2 dateInterval:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXIntentEvent.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"intentType"}];
}

@end