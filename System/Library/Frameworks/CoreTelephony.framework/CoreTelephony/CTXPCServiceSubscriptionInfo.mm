@interface CTXPCServiceSubscriptionInfo
- (BOOL)isEqual:(id)equal;
- (CTXPCServiceSubscriptionInfo)initWithCoder:(id)coder;
- (NSArray)subscriptionsInUse;
- (NSArray)subscriptionsValid;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
@end

@implementation CTXPCServiceSubscriptionInfo

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  ct_shortName = [(CTXPCServiceSubscriptionInfo *)self ct_shortName];
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  ct_descriptionWithShortDescriptions = [subscriptions ct_descriptionWithShortDescriptions];
  v7 = [v3 stringWithFormat:@"<%@ subscriptions=%@>", ct_shortName, ct_descriptionWithShortDescriptions];

  return v7;
}

- (NSArray)subscriptionsInUse
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSimPresent])
        {
          [array addObject:v9];
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
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

        redactedDescription = [*(*(&v15 + 1) + 8 * v8) redactedDescription];
        [v3 appendFormat:@"%s%@", v10, redactedDescription];

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
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  [v3 appendFormat:@" subscriptions=%@", subscriptions];

  [v3 appendString:@">"];

  return v3;
}

- (NSArray)subscriptionsValid
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSimPresent] && objc_msgSend(v9, "isSimGood"))
        {
          [array addObject:v9];
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  subscriptions = [(CTXPCServiceSubscriptionInfo *)equalCopy subscriptions];

  if (!subscriptions)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_9;
  }

  subscriptions = self->_subscriptions;
LABEL_6:
  subscriptions2 = [(CTXPCServiceSubscriptionInfo *)equalCopy subscriptions];
  v8 = [(NSArray *)subscriptions isEqualToArray:subscriptions2];

LABEL_9:
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  subscriptions = [(CTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [subscriptions copy];
  [v4 setSubscriptions:v6];

  return v4;
}

- (CTXPCServiceSubscriptionInfo)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"subscriptions"];
    subscriptions = v5->_subscriptions;
    v5->_subscriptions = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end