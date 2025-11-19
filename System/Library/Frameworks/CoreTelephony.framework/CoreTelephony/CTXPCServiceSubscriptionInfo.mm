@interface CTXPCServiceSubscriptionInfo
- (BOOL)isEqual:(id)a3;
- (CTXPCServiceSubscriptionInfo)initWithCoder:(id)a3;
- (NSArray)subscriptionsInUse;
- (NSArray)subscriptionsValid;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
@end

@implementation CTXPCServiceSubscriptionInfo

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CTXPCServiceSubscriptionInfo *)self ct_shortName];
  v5 = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [v5 ct_descriptionWithShortDescriptions];
  v7 = [v3 stringWithFormat:@"<%@ subscriptions=%@>", v4, v6];

  return v7;
}

- (NSArray)subscriptionsInUse
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSimPresent])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)redactedDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendString:@" subscriptions="];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v6 = v9 + 1;
        if (v9)
        {
          v10 = ", ";
        }

        else
        {
          v10 = "";
        }

        v11 = [*(*(&v15 + 1) + 8 * v8) redactedDescription];
        [v3 appendFormat:@"%s%@", v10, v11];

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [v3 appendString:@">"];
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  [v3 appendFormat:@" subscriptions=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (NSArray)subscriptionsValid
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSimPresent] && objc_msgSend(v9, "isSimGood"))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  subscriptions = self->_subscriptions;
  if (subscriptions)
  {
    goto LABEL_6;
  }

  v6 = [(CTXPCServiceSubscriptionInfo *)v4 subscriptions];

  if (!v6)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_9;
  }

  subscriptions = self->_subscriptions;
LABEL_6:
  v7 = [(CTXPCServiceSubscriptionInfo *)v4 subscriptions];
  v8 = [(NSArray *)subscriptions isEqualToArray:v7];

LABEL_9:
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [v5 copy];
  [v4 setSubscriptions:v6];

  return v4;
}

- (CTXPCServiceSubscriptionInfo)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTXPCServiceSubscriptionInfo;
  v5 = [(CTXPCServiceSubscriptionInfo *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"subscriptions"];
    subscriptions = v5->_subscriptions;
    v5->_subscriptions = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end