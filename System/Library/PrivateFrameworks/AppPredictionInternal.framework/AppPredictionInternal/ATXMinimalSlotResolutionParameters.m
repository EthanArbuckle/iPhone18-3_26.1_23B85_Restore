@interface ATXMinimalSlotResolutionParameters
- (ATXMinimalSlotResolutionParameters)initWithAction:(id)a3 slots:(id)a4;
- (ATXMinimalSlotResolutionParameters)initWithParameterHash:(unint64_t)a3 slotHash:(unint64_t)a4 uuid:(id)a5 paramCount:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id)actionAndSlotSet;
@end

@implementation ATXMinimalSlotResolutionParameters

- (ATXMinimalSlotResolutionParameters)initWithParameterHash:(unint64_t)a3 slotHash:(unint64_t)a4 uuid:(id)a5 paramCount:(unint64_t)a6
{
  v12 = a5;
  if (!v12)
  {
    [ATXMinimalSlotResolutionParameters initWithParameterHash:a2 slotHash:self uuid:? paramCount:?];
  }

  v16.receiver = self;
  v16.super_class = ATXMinimalSlotResolutionParameters;
  v13 = [(ATXMinimalSlotResolutionParameters *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_paramHash = a3;
    v13->_slotHash = a4;
    objc_storeStrong(&v13->_slotSetUuid, a5);
    v14->_paramCount = a6;
  }

  return v14;
}

- (ATXMinimalSlotResolutionParameters)initWithAction:(id)a3 slots:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ATXMinimalSlotResolutionParameters;
  v8 = [(ATXMinimalSlotResolutionParameters *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (v6 && v7)
    {
      v10 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:v6 slots:v7];
      v9->_paramHash = [v10 hash];
    }

    else
    {
      v8->_paramHash = 0;
    }

    v9->_slotHash = [v7 hash];
    v11 = [v7 uuid];
    slotSetUuid = v9->_slotSetUuid;
    v9->_slotSetUuid = v11;

    v13 = [v7 parameters];
    if (v13)
    {
      v14 = [v7 parameters];
      v9->_paramCount = [v14 count];
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

  v5 = [v4 first];
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
        v12 = [v11 uuid];
        v13 = [v12 isEqual:self->_slotSetUuid];

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

  v15 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v5 second:v14];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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