@interface ATXIntentEvent
- (ATXIntentEvent)initWithBundleId:(id)id intentType:(id)type dateInterval:(id)interval;
- (ATXIntentEvent)initWithBundleId:(id)id intentType:(id)type dateInterval:(id)interval action:(id)action;
- (ATXIntentEvent)initWithBundleId:(id)id intentType:(id)type dateInterval:(id)interval intent:(id)intent;
- (ATXIntentEvent)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXIntentEvent:(id)event;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setArg1:(id)arg1;
- (void)setArg2:(id)arg2;
@end

@implementation ATXIntentEvent

- (ATXIntentEvent)initWithBundleId:(id)id intentType:(id)type dateInterval:(id)interval
{
  idCopy = id;
  typeCopy = type;
  intervalCopy = interval;
  if (idCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXIntentEvent initWithBundleId:a2 intentType:self dateInterval:?];
    if (typeCopy)
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
    v13 = [idCopy copy];
    bundleId = v12->_bundleId;
    v12->_bundleId = v13;

    v15 = [typeCopy copy];
    intentType = v12->_intentType;
    v12->_intentType = v15;

    v17 = [intervalCopy copy];
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

- (ATXIntentEvent)initWithBundleId:(id)id intentType:(id)type dateInterval:(id)interval intent:(id)intent
{
  intentCopy = intent;
  v12 = [(ATXIntentEvent *)self initWithBundleId:id intentType:type dateInterval:interval];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intent, intent);
    [intentCopy atx_getArgsInto:v13];
  }

  return v13;
}

- (ATXIntentEvent)initWithBundleId:(id)id intentType:(id)type dateInterval:(id)interval action:(id)action
{
  actionCopy = action;
  v12 = [(ATXIntentEvent *)self initWithBundleId:id intentType:type dateInterval:interval];
  v13 = v12;
  if (actionCopy)
  {
    if (v12)
    {
      objc_storeStrong(&v12->_action, action);
      if (![actionCopy actionType] || objc_msgSend(actionCopy, "actionType") == 2)
      {
        intent = [actionCopy intent];
        intent = v13->_intent;
        v13->_intent = intent;

        [(INIntent *)v13->_intent atx_getArgsInto:v13];
      }
    }
  }

  return v13;
}

- (void)setArg1:(id)arg1
{
  if (arg1)
  {
    arg1Copy = arg1;
  }

  else
  {
    arg1Copy = @"ARG1_MISSING";
  }

  objc_storeStrong(&self->_arg1, arg1Copy);
}

- (void)setArg2:(id)arg2
{
  if (arg2)
  {
    arg2Copy = arg2;
  }

  else
  {
    arg2Copy = @"ARG2_MISSING";
  }

  objc_storeStrong(&self->_arg2, arg2Copy);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %@ %@(%@, %@)>", v5, self->_dateInterval, self->_bundleId, self->_arg1, self->_arg2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXIntentEvent *)self isEqualToATXIntentEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXIntentEvent:(id)event
{
  eventCopy = event;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == eventCopy[2])
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
  if (v8 == eventCopy[1])
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
  if (v11 == eventCopy[3])
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
  if (v14 == eventCopy[4])
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
  if (v17 == eventCopy[6])
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
  if (v22 == eventCopy[7])
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

- (ATXIntentEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [(ATXIntentEvent *)self initWithBundleId:v5 intentType:v6 dateInterval:v7];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arg1"];
    arg1 = v8->_arg1;
    v8->_arg1 = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arg2"];
    arg2 = v8->_arg2;
    v8->_arg2 = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_arg1 forKey:@"arg1"];
  [coderCopy encodeObject:selfCopy->_arg2 forKey:@"arg2"];
  [coderCopy encodeObject:selfCopy->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:selfCopy->_intentType forKey:@"intentType"];
  objc_sync_exit(selfCopy);
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