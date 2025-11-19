@interface CTXPCContexts
- (BOOL)isEqual:(id)a3;
- (CTXPCContexts)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)findForAccount:(id)a3;
- (id)findForAccount:(id)a3 within:(id)a4;
- (id)findForSlot:(int64_t)a3;
- (id)findForSlot:(int64_t)a3 within:(id)a4;
- (id)findForUuid:(id)a3;
- (id)findForUuid:(id)a3 within:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTXPCContexts

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTXPCContexts *)self subscriptions];
  [v3 appendFormat:@", subscriptions=%@", v4];

  v5 = [(CTXPCContexts *)self dataPreferred];
  [v3 appendFormat:@", dataPreferred=%@", v5];

  v6 = [(CTXPCContexts *)self voicePreferred];
  [v3 appendFormat:@", voicePreferred=%@", v6];

  v7 = [(CTXPCContexts *)self existingUserSubscriptions];
  [v3 appendFormat:@", existingUserSubscriptions=%@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
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

  v7 = [(CTXPCContexts *)v5 subscriptions];

  if (!v7)
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
  v7 = [(CTXPCContexts *)v5 subscriptions];
  if ([subscriptions isEqual:v7])
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
  v14 = [(CTXPCContexts *)v5 subscriptions];
  if (v14)
  {

    v12 = 0;
    goto LABEL_57;
  }

  v8 = 1;
LABEL_6:
  dataPreferred = self->_dataPreferred;
  if (dataPreferred)
  {
    subscriptions = [(CTXPCContexts *)v5 dataPreferred];
    if (([(NSUUID *)dataPreferred isEqual:subscriptions]& 1) != 0)
    {
      v11 = 0;
      goto LABEL_25;
    }

    if (self->_dataPreferred)
    {
      v12 = 0;
      goto LABEL_56;
    }
  }

  v13 = [(CTXPCContexts *)v5 dataPreferred];
  if (v13)
  {
    v12 = 0;
LABEL_54:

    goto LABEL_55;
  }

  v11 = 1;
LABEL_25:
  voicePreferred = self->_voicePreferred;
  if (voicePreferred)
  {
    v3 = [(CTXPCContexts *)v5 voicePreferred];
    if (([(NSUUID *)voicePreferred isEqual:v3]& 1) != 0)
    {
      v21 = v3;
      v20 = 0;
      goto LABEL_35;
    }

    if (self->_voicePreferred)
    {
      v12 = 0;
      goto LABEL_47;
    }
  }

  v16 = [(CTXPCContexts *)v5 voicePreferred];
  if (v16)
  {
    v12 = 0;
    goto LABEL_44;
  }

  v21 = v3;
  v20 = 1;
LABEL_35:
  v22 = v11;
  existingUserSubscriptions = self->_existingUserSubscriptions;
  if (existingUserSubscriptions)
  {
    v11 = [(CTXPCContexts *)v5 existingUserSubscriptions];
    if (([(NSArray *)existingUserSubscriptions isEqual:v11]& 1) != 0)
    {
      v12 = 1;
LABEL_42:

      v3 = v21;
      if ((v20 & 1) == 0)
      {
        LODWORD(v11) = v22;
        if (!voicePreferred)
        {
          goto LABEL_52;
        }

        goto LABEL_47;
      }

      v16 = 0;
      LODWORD(v11) = v22;
      goto LABEL_44;
    }

    if (self->_existingUserSubscriptions)
    {
      v12 = 0;
      goto LABEL_42;
    }
  }

  v18 = [(CTXPCContexts *)v5 existingUserSubscriptions];
  v12 = v18 == 0;

  if (existingUserSubscriptions)
  {
    goto LABEL_42;
  }

  if (!v20)
  {
    LODWORD(v11) = v22;
    v3 = v21;
    if (!voicePreferred)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  v16 = 0;
  LODWORD(v11) = v22;
  v3 = v21;
LABEL_44:

  if (!voicePreferred)
  {
LABEL_52:
    if (!v11)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_47:

  if (v11)
  {
LABEL_53:
    v13 = 0;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTXPCContexts *)self subscriptions];
  v6 = [v5 copy];
  [v4 setSubscriptions:v6];

  v7 = [(CTXPCContexts *)self dataPreferred];
  v8 = [v7 copy];
  [v4 setDataPreferred:v8];

  v9 = [(CTXPCContexts *)self voicePreferred];
  v10 = [v9 copy];
  [v4 setVoicePreferred:v10];

  v11 = [(CTXPCContexts *)self existingUserSubscriptions];
  v12 = [v11 copy];
  [v4 setExistingUserSubscriptions:v12];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  subscriptions = self->_subscriptions;
  v5 = a3;
  [v5 encodeObject:subscriptions forKey:@"subscriptions"];
  [v5 encodeObject:self->_dataPreferred forKey:@"user_data_preferred"];
  [v5 encodeObject:self->_voicePreferred forKey:@"user_default_voice"];
  [v5 encodeObject:self->_existingUserSubscriptions forKey:@"existingUserSubs"];
}

- (CTXPCContexts)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"subscriptions"];
    subscriptions = v5->_subscriptions;
    v5->_subscriptions = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user_data_preferred"];
    dataPreferred = v5->_dataPreferred;
    v5->_dataPreferred = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user_default_voice"];
    voicePreferred = v5->_voicePreferred;
    v5->_voicePreferred = v13;

    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"existingUserSubs"];
    existingUserSubscriptions = v5->_existingUserSubscriptions;
    v5->_existingUserSubscriptions = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)findForSlot:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CTXPCContexts *)self subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 slotID] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)findForUuid:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CTXPCContexts *)self subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)findForAccount:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CTXPCContexts *)self subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 accountID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)findForSlot:(int64_t)a3 within:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 slotID] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)findForUuid:(id)a3 within:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)findForAccount:(id)a3 within:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 accountID];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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