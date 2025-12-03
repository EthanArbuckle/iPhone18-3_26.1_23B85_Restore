@interface NSComparisonPredicate
- (BOOL)getRightKeyPath:(id *)path orRightContstantValue:(id *)value error:(id *)error;
- (BOOL)pd_containsKeyPath:(id)path;
- (id)leftKeyPath:(id *)path;
- (id)pd_filterSubpredicatesForKeyPath:(id)path;
- (void)_populateKeypathValueMap:(id)map;
@end

@implementation NSComparisonPredicate

- (id)leftKeyPath:(id *)path
{
  leftExpression = [(NSComparisonPredicate *)self leftExpression];
  keyPath = [leftExpression keyPath];
  v7 = keyPath;
  if (!keyPath || [keyPath containsString:@"."])
  {
    [NSError cls_assignError:path code:2 format:@"Expected simple key in left side of comparison expression: %@", self];
  }

  return v7;
}

- (BOOL)getRightKeyPath:(id *)path orRightContstantValue:(id *)value error:(id *)error
{
  rightExpression = [(NSComparisonPredicate *)self rightExpression];
  expressionType = [rightExpression expressionType];
  if (expressionType)
  {
    if (expressionType == 3)
    {
      keyPath = [rightExpression keyPath];
      v12 = [keyPath containsString:@"."];
      if (v12)
      {
        [NSError cls_assignError:error code:2 format:@"Expected constant values or simple keys in right side of comparison expression: %@", self];
      }

      else if (path)
      {
        v17 = keyPath;
        *path = keyPath;
      }

      v16 = v12 ^ 1;
    }

    else
    {
      [NSError cls_assignError:error code:2 format:@"Expected constant values or simple keys in right side of comparison expression: %@", self];
      v16 = 0;
    }
  }

  else
  {
    constantValue = [rightExpression constantValue];
    v14 = constantValue;
    if (value)
    {
      if (constantValue)
      {
        v15 = constantValue;
        *value = v14;
      }

      else
      {
        v18 = +[NSNull null];
        *value = v18;
      }
    }

    v16 = 1;
  }

  return v16;
}

- (void)_populateKeypathValueMap:(id)map
{
  mapCopy = map;
  leftExpression = [(NSComparisonPredicate *)self leftExpression];
  rightExpression = [(NSComparisonPredicate *)self rightExpression];
  if (![rightExpression expressionType] || objc_msgSend(leftExpression, "expressionType") == 3)
  {
    constantValue = [rightExpression constantValue];
    keyPath = [leftExpression keyPath];
    [mapCopy setObject:constantValue forKey:keyPath];
  }
}

- (id)pd_filterSubpredicatesForKeyPath:(id)path
{
  pathCopy = path;
  leftExpression = [(NSComparisonPredicate *)self leftExpression];
  if ([leftExpression expressionType] == 3)
  {
    keyPath = [leftExpression keyPath];
    if (!(pathCopy | keyPath))
    {
LABEL_3:
      selfCopy = 0;
      rightExpression = leftExpression;
      goto LABEL_18;
    }

    v9 = keyPath;
    keyPath2 = [leftExpression keyPath];
    v11 = keyPath2;
    if (pathCopy && keyPath2)
    {
      keyPath3 = [leftExpression keyPath];
      v13 = [keyPath3 isEqualToString:pathCopy];

      if (v13)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  rightExpression = [(NSComparisonPredicate *)self rightExpression];

  if ([rightExpression expressionType] == 3)
  {
    keyPath4 = [rightExpression keyPath];
    if (!(pathCopy | keyPath4))
    {
LABEL_11:
      selfCopy = 0;
      goto LABEL_18;
    }

    v15 = keyPath4;
    keyPath5 = [rightExpression keyPath];
    v17 = keyPath5;
    if (pathCopy && keyPath5)
    {
      keyPath6 = [rightExpression keyPath];
      v19 = [keyPath6 isEqualToString:pathCopy];

      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (BOOL)pd_containsKeyPath:(id)path
{
  pathCopy = path;
  leftExpression = [(NSComparisonPredicate *)self leftExpression];
  if ([leftExpression expressionType] == 3)
  {
    keyPath = [leftExpression keyPath];
    if (!(pathCopy | keyPath))
    {
LABEL_3:
      v7 = 1;
      rightExpression = leftExpression;
      goto LABEL_18;
    }

    v9 = keyPath;
    keyPath2 = [leftExpression keyPath];
    v11 = keyPath2;
    if (pathCopy && keyPath2)
    {
      keyPath3 = [leftExpression keyPath];
      v13 = [keyPath3 isEqualToString:pathCopy];

      if (v13)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  rightExpression = [(NSComparisonPredicate *)self rightExpression];

  if ([rightExpression expressionType] == 3)
  {
    keyPath4 = [rightExpression keyPath];
    if (pathCopy | keyPath4)
    {
      keyPath5 = [rightExpression keyPath];
      v16 = keyPath5;
      v7 = 0;
      if (pathCopy && keyPath5)
      {
        keyPath6 = [rightExpression keyPath];
        v7 = [keyPath6 isEqualToString:pathCopy];
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