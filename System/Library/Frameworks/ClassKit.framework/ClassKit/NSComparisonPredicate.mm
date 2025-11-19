@interface NSComparisonPredicate
- (BOOL)getRightKeyPath:(id *)a3 orRightContstantValue:(id *)a4 error:(id *)a5;
- (BOOL)pd_containsKeyPath:(id)a3;
- (id)leftKeyPath:(id *)a3;
- (id)pd_filterSubpredicatesForKeyPath:(id)a3;
- (void)_populateKeypathValueMap:(id)a3;
@end

@implementation NSComparisonPredicate

- (id)leftKeyPath:(id *)a3
{
  v5 = [(NSComparisonPredicate *)self leftExpression];
  v6 = [v5 keyPath];
  v7 = v6;
  if (!v6 || [v6 containsString:@"."])
  {
    [NSError cls_assignError:a3 code:2 format:@"Expected simple key in left side of comparison expression: %@", self];
  }

  return v7;
}

- (BOOL)getRightKeyPath:(id *)a3 orRightContstantValue:(id *)a4 error:(id *)a5
{
  v9 = [(NSComparisonPredicate *)self rightExpression];
  v10 = [v9 expressionType];
  if (v10)
  {
    if (v10 == 3)
    {
      v11 = [v9 keyPath];
      v12 = [v11 containsString:@"."];
      if (v12)
      {
        [NSError cls_assignError:a5 code:2 format:@"Expected constant values or simple keys in right side of comparison expression: %@", self];
      }

      else if (a3)
      {
        v17 = v11;
        *a3 = v11;
      }

      v16 = v12 ^ 1;
    }

    else
    {
      [NSError cls_assignError:a5 code:2 format:@"Expected constant values or simple keys in right side of comparison expression: %@", self];
      v16 = 0;
    }
  }

  else
  {
    v13 = [v9 constantValue];
    v14 = v13;
    if (a4)
    {
      if (v13)
      {
        v15 = v13;
        *a4 = v14;
      }

      else
      {
        v18 = +[NSNull null];
        *a4 = v18;
      }
    }

    v16 = 1;
  }

  return v16;
}

- (void)_populateKeypathValueMap:(id)a3
{
  v8 = a3;
  v4 = [(NSComparisonPredicate *)self leftExpression];
  v5 = [(NSComparisonPredicate *)self rightExpression];
  if (![v5 expressionType] || objc_msgSend(v4, "expressionType") == 3)
  {
    v6 = [v5 constantValue];
    v7 = [v4 keyPath];
    [v8 setObject:v6 forKey:v7];
  }
}

- (id)pd_filterSubpredicatesForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSComparisonPredicate *)self leftExpression];
  if ([v5 expressionType] == 3)
  {
    v6 = [v5 keyPath];
    if (!(v4 | v6))
    {
LABEL_3:
      v7 = 0;
      v8 = v5;
      goto LABEL_18;
    }

    v9 = v6;
    v10 = [v5 keyPath];
    v11 = v10;
    if (v4 && v10)
    {
      v12 = [v5 keyPath];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  v8 = [(NSComparisonPredicate *)self rightExpression];

  if ([v8 expressionType] == 3)
  {
    v14 = [v8 keyPath];
    if (!(v4 | v14))
    {
LABEL_11:
      v7 = 0;
      goto LABEL_18;
    }

    v15 = v14;
    v16 = [v8 keyPath];
    v17 = v16;
    if (v4 && v16)
    {
      v18 = [v8 keyPath];
      v19 = [v18 isEqualToString:v4];

      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v7 = self;
LABEL_18:

  return v7;
}

- (BOOL)pd_containsKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSComparisonPredicate *)self leftExpression];
  if ([v5 expressionType] == 3)
  {
    v6 = [v5 keyPath];
    if (!(v4 | v6))
    {
LABEL_3:
      v7 = 1;
      v8 = v5;
      goto LABEL_18;
    }

    v9 = v6;
    v10 = [v5 keyPath];
    v11 = v10;
    if (v4 && v10)
    {
      v12 = [v5 keyPath];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  v8 = [(NSComparisonPredicate *)self rightExpression];

  if ([v8 expressionType] == 3)
  {
    v14 = [v8 keyPath];
    if (v4 | v14)
    {
      v15 = [v8 keyPath];
      v16 = v15;
      v7 = 0;
      if (v4 && v15)
      {
        v17 = [v8 keyPath];
        v7 = [v17 isEqualToString:v4];
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

@end