@interface IMCompoundConfigurationPredicate
+ (id)andPredicateWithSubpredicates:(id)a3;
+ (id)orPredicateWithSubpredicates:(id)a3;
- (BOOL)evaluateWithContext:(id)a3;
- (IMCompoundConfigurationPredicate)initWithType:(unint64_t)a3 subpredicates:(id)a4;
- (id)description;
- (int64_t)_andScore;
- (int64_t)_orScore;
- (int64_t)score;
@end

@implementation IMCompoundConfigurationPredicate

+ (id)andPredicateWithSubpredicates:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 subpredicates:v4];

  return v5;
}

+ (id)orPredicateWithSubpredicates:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:0 subpredicates:v4];

  return v5;
}

- (IMCompoundConfigurationPredicate)initWithType:(unint64_t)a3 subpredicates:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IMCompoundConfigurationPredicate;
  v8 = [(IMConfigurationPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_subpredicates, a4);
  }

  return v9;
}

- (id)description
{
  v3 = [(IMCompoundConfigurationPredicate *)self type];
  v4 = @" || ";
  if (v3 == 1)
  {
    v4 = @" && ";
  }

  v5 = v4;
  v6 = [(IMCompoundConfigurationPredicate *)self subpredicates];
  v7 = [v6 componentsJoinedByString:v5];

  v8 = [NSString stringWithFormat:@"(%@)", v7];

  return v8;
}

- (BOOL)evaluateWithContext:(id)a3
{
  v4 = a3;
  v5 = [(IMCompoundConfigurationPredicate *)self type];
  if (!v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(IMCompoundConfigurationPredicate *)self subpredicates];
    v12 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v17 + 1) + 8 * v15) evaluateWithContext:v4])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
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

  if (v5 == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [(IMCompoundConfigurationPredicate *)self subpredicates];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v21 + 1) + 8 * v10) evaluateWithContext:v4])
        {
          goto LABEL_20;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  v3 = [(IMCompoundConfigurationPredicate *)self type];
  if (v3)
  {
    if (v3 == 1)
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
  v2 = [(IMCompoundConfigurationPredicate *)self subpredicates];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 score];
        v10 = [v8 score];
        if (v9 < 1)
        {
          if (v10 > v5)
          {
            v5 = [v8 score];
          }
        }

        else
        {
          v5 = &v5[v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_orScore
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(IMCompoundConfigurationPredicate *)self subpredicates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) score] > v5)
        {
          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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