@interface CTXPCContexts
- (BOOL)isEqual:(id)equal;
- (CTXPCContexts)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)findForAccount:(id)account;
- (id)findForAccount:(id)account within:(id)within;
- (id)findForSlot:(int64_t)slot;
- (id)findForSlot:(int64_t)slot within:(id)within;
- (id)findForUuid:(id)uuid;
- (id)findForUuid:(id)uuid within:(id)within;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTXPCContexts

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  subscriptions = [(CTXPCContexts *)self subscriptions];
  [v3 appendFormat:@", subscriptions=%@", subscriptions];

  dataPreferred = [(CTXPCContexts *)self dataPreferred];
  [v3 appendFormat:@", dataPreferred=%@", dataPreferred];

  voicePreferred = [(CTXPCContexts *)self voicePreferred];
  [v3 appendFormat:@", voicePreferred=%@", voicePreferred];

  existingUserSubscriptions = [(CTXPCContexts *)self existingUserSubscriptions];
  [v3 appendFormat:@", existingUserSubscriptions=%@", existingUserSubscriptions];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_59;
  }

  subscriptions = self->_subscriptions;
  if (subscriptions)
  {
    goto LABEL_4;
  }

  subscriptions = [(CTXPCContexts *)equalCopy subscriptions];

  if (!subscriptions)
  {
LABEL_15:
    v12 = 1;
    goto LABEL_59;
  }

  subscriptions = self->_subscriptions;
  if (!subscriptions)
  {
    v9 = 0;
    goto LABEL_22;
  }

LABEL_4:
  subscriptions = [(CTXPCContexts *)equalCopy subscriptions];
  if ([subscriptions isEqual:subscriptions])
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_6;
  }

  if (self->_subscriptions)
  {
    v12 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v9 = 1;
LABEL_22:
  subscriptions2 = [(CTXPCContexts *)equalCopy subscriptions];
  if (subscriptions2)
  {

    v12 = 0;
    goto LABEL_57;
  }

  v8 = 1;
LABEL_6:
  dataPreferred = self->_dataPreferred;
  if (dataPreferred)
  {
    subscriptions = [(CTXPCContexts *)equalCopy dataPreferred];
    if (([(NSUUID *)dataPreferred isEqual:subscriptions]& 1) != 0)
    {
      existingUserSubscriptions = 0;
      goto LABEL_25;
    }

    if (self->_dataPreferred)
    {
      v12 = 0;
      goto LABEL_56;
    }
  }

  dataPreferred = [(CTXPCContexts *)equalCopy dataPreferred];
  if (dataPreferred)
  {
    v12 = 0;
LABEL_54:

    goto LABEL_55;
  }

  existingUserSubscriptions = 1;
LABEL_25:
  voicePreferred = self->_voicePreferred;
  if (voicePreferred)
  {
    voicePreferred = [(CTXPCContexts *)equalCopy voicePreferred];
    if (([(NSUUID *)voicePreferred isEqual:voicePreferred]& 1) != 0)
    {
      v21 = voicePreferred;
      v20 = 0;
      goto LABEL_35;
    }

    if (self->_voicePreferred)
    {
      v12 = 0;
      goto LABEL_47;
    }
  }

  voicePreferred2 = [(CTXPCContexts *)equalCopy voicePreferred];
  if (voicePreferred2)
  {
    v12 = 0;
    goto LABEL_44;
  }

  v21 = voicePreferred;
  v20 = 1;
LABEL_35:
  v22 = existingUserSubscriptions;
  existingUserSubscriptions = self->_existingUserSubscriptions;
  if (existingUserSubscriptions)
  {
    existingUserSubscriptions = [(CTXPCContexts *)equalCopy existingUserSubscriptions];
    if (([(NSArray *)existingUserSubscriptions isEqual:existingUserSubscriptions]& 1) != 0)
    {
      v12 = 1;
LABEL_42:

      voicePreferred = v21;
      if ((v20 & 1) == 0)
      {
        LODWORD(existingUserSubscriptions) = v22;
        if (!voicePreferred)
        {
          goto LABEL_52;
        }

        goto LABEL_47;
      }

      voicePreferred2 = 0;
      LODWORD(existingUserSubscriptions) = v22;
      goto LABEL_44;
    }

    if (self->_existingUserSubscriptions)
    {
      v12 = 0;
      goto LABEL_42;
    }
  }

  existingUserSubscriptions2 = [(CTXPCContexts *)equalCopy existingUserSubscriptions];
  v12 = existingUserSubscriptions2 == 0;

  if (existingUserSubscriptions)
  {
    goto LABEL_42;
  }

  if (!v20)
  {
    LODWORD(existingUserSubscriptions) = v22;
    voicePreferred = v21;
    if (!voicePreferred)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  voicePreferred2 = 0;
  LODWORD(existingUserSubscriptions) = v22;
  voicePreferred = v21;
LABEL_44:

  if (!voicePreferred)
  {
LABEL_52:
    if (!existingUserSubscriptions)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_47:

  if (existingUserSubscriptions)
  {
LABEL_53:
    dataPreferred = 0;
    goto LABEL_54;
  }

LABEL_55:
  if (dataPreferred)
  {
LABEL_56:

    if (v8)
    {
      goto LABEL_57;
    }

LABEL_61:
    if (!v9)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (!v8)
  {
    goto LABEL_61;
  }

LABEL_57:
  if (v9)
  {
    goto LABEL_58;
  }

LABEL_59:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  subscriptions = [(CTXPCContexts *)self subscriptions];
  v6 = [subscriptions copy];
  [v4 setSubscriptions:v6];

  dataPreferred = [(CTXPCContexts *)self dataPreferred];
  v8 = [dataPreferred copy];
  [v4 setDataPreferred:v8];

  voicePreferred = [(CTXPCContexts *)self voicePreferred];
  v10 = [voicePreferred copy];
  [v4 setVoicePreferred:v10];

  existingUserSubscriptions = [(CTXPCContexts *)self existingUserSubscriptions];
  v12 = [existingUserSubscriptions copy];
  [v4 setExistingUserSubscriptions:v12];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  subscriptions = self->_subscriptions;
  coderCopy = coder;
  [coderCopy encodeObject:subscriptions forKey:@"subscriptions"];
  [coderCopy encodeObject:self->_dataPreferred forKey:@"user_data_preferred"];
  [coderCopy encodeObject:self->_voicePreferred forKey:@"user_default_voice"];
  [coderCopy encodeObject:self->_existingUserSubscriptions forKey:@"existingUserSubs"];
}

- (CTXPCContexts)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CTXPCContexts;
  v5 = [(CTXPCContexts *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"subscriptions"];
    subscriptions = v5->_subscriptions;
    v5->_subscriptions = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user_data_preferred"];
    dataPreferred = v5->_dataPreferred;
    v5->_dataPreferred = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user_default_voice"];
    voicePreferred = v5->_voicePreferred;
    v5->_voicePreferred = v13;

    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"existingUserSubs"];
    existingUserSubscriptions = v5->_existingUserSubscriptions;
    v5->_existingUserSubscriptions = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)findForSlot:(int64_t)slot
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subscriptions = [(CTXPCContexts *)self subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 slotID] == slot)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)findForUuid:(id)uuid
{
  v19 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subscriptions = [(CTXPCContexts *)self subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:uuidCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)findForAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subscriptions = [(CTXPCContexts *)self subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        accountID = [v9 accountID];
        v11 = [accountID isEqualToString:accountCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)findForSlot:(int64_t)slot within:(id)within
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  withinCopy = within;
  v6 = [withinCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(withinCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 slotID] == slot)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [withinCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)findForUuid:(id)uuid within:(id)within
{
  v20 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  withinCopy = within;
  v7 = [withinCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(withinCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqual:uuidCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [withinCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)findForAccount:(id)account within:(id)within
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  withinCopy = within;
  v7 = [withinCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(withinCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        accountID = [v10 accountID];
        v12 = [accountID isEqualToString:accountCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [withinCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

@end