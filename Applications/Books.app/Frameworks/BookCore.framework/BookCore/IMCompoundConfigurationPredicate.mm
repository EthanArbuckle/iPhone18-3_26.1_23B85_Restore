@interface IMCompoundConfigurationPredicate
+ (id)andPredicateWithSubpredicates:(id)subpredicates;
+ (id)orPredicateWithSubpredicates:(id)subpredicates;
- (BOOL)evaluateWithContext:(id)context;
- (IMCompoundConfigurationPredicate)initWithType:(unint64_t)type subpredicates:(id)subpredicates;
- (id)description;
- (int64_t)_andScore;
- (int64_t)_orScore;
- (int64_t)score;
@end

@implementation IMCompoundConfigurationPredicate

+ (id)andPredicateWithSubpredicates:(id)subpredicates
{
  subpredicatesCopy = subpredicates;
  v5 = [[self alloc] initWithType:1 subpredicates:subpredicatesCopy];

  return v5;
}

+ (id)orPredicateWithSubpredicates:(id)subpredicates
{
  subpredicatesCopy = subpredicates;
  v5 = [[self alloc] initWithType:0 subpredicates:subpredicatesCopy];

  return v5;
}

- (IMCompoundConfigurationPredicate)initWithType:(unint64_t)type subpredicates:(id)subpredicates
{
  subpredicatesCopy = subpredicates;
  v11.receiver = self;
  v11.super_class = IMCompoundConfigurationPredicate;
  v8 = [(IMConfigurationPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_subpredicates, subpredicates);
  }

  return v9;
}

- (id)description
{
  type = [(IMCompoundConfigurationPredicate *)self type];
  v4 = @" || ";
  if (type == 1)
  {
    v4 = @" && ";
  }

  v5 = v4;
  subpredicates = [(IMCompoundConfigurationPredicate *)self subpredicates];
  v7 = [subpredicates componentsJoinedByString:v5];

  v8 = [NSString stringWithFormat:@"(%@)", v7];

  return v8;
}

- (BOOL)evaluateWithContext:(id)context
{
  contextCopy = context;
  type = [(IMCompoundConfigurationPredicate *)self type];
  if (!type)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subpredicates = [(IMCompoundConfigurationPredicate *)self subpredicates];
    v12 = [subpredicates countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v12)
    {
LABEL_20:
      v11 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v13 = v12;
    v14 = *v18;
LABEL_14:
    v15 = 0;
    while (1)
    {
      if (*v18 != v14)
      {
        objc_enumerationMutation(subpredicates);
      }

      if ([*(*(&v17 + 1) + 8 * v15) evaluateWithContext:contextCopy])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [subpredicates countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    v11 = 1;
    goto LABEL_23;
  }

  if (type == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subpredicates = [(IMCompoundConfigurationPredicate *)self subpredicates];
    v7 = [subpredicates countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(subpredicates);
        }

        if (![*(*(&v21 + 1) + 8 * v10) evaluateWithContext:contextCopy])
        {
          goto LABEL_20;
        }

        if (v8 == ++v10)
        {
          v8 = [subpredicates countByEnumeratingWithState:&v21 objects:v26 count:16];
          v11 = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }
      }
    }

    goto LABEL_22;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (int64_t)score
{
  type = [(IMCompoundConfigurationPredicate *)self type];
  if (type)
  {
    if (type == 1)
    {

      return [(IMCompoundConfigurationPredicate *)self _andScore];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(IMCompoundConfigurationPredicate *)self _orScore];
  }
}

- (int64_t)_andScore
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subpredicates = [(IMCompoundConfigurationPredicate *)self subpredicates];
  v3 = [subpredicates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    score3 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(subpredicates);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        score = [v8 score];
        score2 = [v8 score];
        if (score < 1)
        {
          if (score2 > score3)
          {
            score3 = [v8 score];
          }
        }

        else
        {
          score3 = &score3[score2];
        }
      }

      v4 = [subpredicates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    score3 = 0;
  }

  return score3;
}

- (int64_t)_orScore
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subpredicates = [(IMCompoundConfigurationPredicate *)self subpredicates];
  v3 = [subpredicates countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subpredicates);
        }

        if ([*(*(&v9 + 1) + 8 * i) score] > v5)
        {
          v5 = 1;
        }
      }

      v4 = [subpredicates countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end