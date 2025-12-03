@interface ATXMinimalSlotResolutionParameters
- (ATXMinimalSlotResolutionParameters)initWithAction:(id)action slots:(id)slots;
- (ATXMinimalSlotResolutionParameters)initWithParameterHash:(unint64_t)hash slotHash:(unint64_t)slotHash uuid:(id)uuid paramCount:(unint64_t)count;
- (BOOL)isEqual:(id)equal;
- (id)actionAndSlotSet;
@end

@implementation ATXMinimalSlotResolutionParameters

- (ATXMinimalSlotResolutionParameters)initWithParameterHash:(unint64_t)hash slotHash:(unint64_t)slotHash uuid:(id)uuid paramCount:(unint64_t)count
{
  uuidCopy = uuid;
  if (!uuidCopy)
  {
    [ATXMinimalSlotResolutionParameters initWithParameterHash:a2 slotHash:self uuid:? paramCount:?];
  }

  v16.receiver = self;
  v16.super_class = ATXMinimalSlotResolutionParameters;
  v13 = [(ATXMinimalSlotResolutionParameters *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_paramHash = hash;
    v13->_slotHash = slotHash;
    objc_storeStrong(&v13->_slotSetUuid, uuid);
    v14->_paramCount = count;
  }

  return v14;
}

- (ATXMinimalSlotResolutionParameters)initWithAction:(id)action slots:(id)slots
{
  actionCopy = action;
  slotsCopy = slots;
  v16.receiver = self;
  v16.super_class = ATXMinimalSlotResolutionParameters;
  v8 = [(ATXMinimalSlotResolutionParameters *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (actionCopy && slotsCopy)
    {
      v10 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:actionCopy slots:slotsCopy];
      v9->_paramHash = [v10 hash];
    }

    else
    {
      v8->_paramHash = 0;
    }

    v9->_slotHash = [slotsCopy hash];
    uuid = [slotsCopy uuid];
    slotSetUuid = v9->_slotSetUuid;
    v9->_slotSetUuid = uuid;

    parameters = [slotsCopy parameters];
    if (parameters)
    {
      parameters2 = [slotsCopy parameters];
      v9->_paramCount = [parameters2 count];
    }

    else
    {
      v9->_paramCount = 0;
    }
  }

  return v9;
}

- (id)actionAndSlotSet
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[_ATXDataStore sharedInstance];
  v4 = [v3 actionForSlotUUID:self->_slotSetUuid];

  first = [v4 first];
  [v4 second];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        uuid = [v11 uuid];
        v13 = [uuid isEqual:self->_slotSetUuid];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:first second:v14];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      paramHash = self->_paramHash;
      if (paramHash == [(ATXMinimalSlotResolutionParameters *)v5 hash])
      {
        slotHash = self->_slotHash;
        v8 = slotHash == [(ATXMinimalSlotResolutionParameters *)v5 slotHash];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)initWithParameterHash:(uint64_t)a1 slotHash:(uint64_t)a2 uuid:paramCount:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMinimalSlotResolutionParameters.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

@end