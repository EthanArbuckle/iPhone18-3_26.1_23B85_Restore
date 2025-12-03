@interface _NSPersistentHistoryPredicateRemapper
+ (id)defaultInstance;
- (_BYTE)replacementValueForKeyPath:(_BYTE *)result;
- (_NSPersistentHistoryPredicateRemapper)initWithStoreIdentifier:(id)identifier;
- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context;
- (id)replacementValueForValue:(uint64_t)value;
- (void)dealloc;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _NSPersistentHistoryPredicateRemapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryPredicateRemapper;
  [(_NSPersistentHistoryPredicateRemapper *)&v3 dealloc];
}

+ (id)defaultInstance
{
  result = defaultInstance_di_38;
  if (!defaultInstance_di_38)
  {
    result = objc_alloc_init(_NSPersistentHistoryPredicateRemapper);
    defaultInstance_di_38 = result;
  }

  return result;
}

- (_NSPersistentHistoryPredicateRemapper)initWithStoreIdentifier:(id)identifier
{
  v4 = [(_NSPersistentHistoryPredicateRemapper *)self init];
  if (v4)
  {
    v4->_storeID = identifier;
  }

  return v4;
}

- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context
{
  if (predicate)
  {
    v6 = [predicate copy];
    [v6 acceptVisitor:self flags:1];
    if (self->_storeID)
    {
      return v6;
    }
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:{predicate == 0, context}];

  return v8;
}

- (id)replacementValueForValue:(uint64_t)value
{
  v44 = *MEMORY[0x1E69E9840];
  if (!value)
  {
LABEL_27:
    v9 = 0;
    goto LABEL_48;
  }

  if (!a2)
  {
    if (*(value + 16) == 1)
    {
      *(value + 16) = 0;
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      v5 = *MEMORY[0x1E69E9840];

      return [v4 initWithInt:0];
    }

    goto LABEL_27;
  }

  obj = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      _backingObjectID = [obj _backingObjectID];
      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    obj = [objc_msgSend(obj "storeTokens")];
    if (obj)
    {
      goto LABEL_13;
    }

    v9 = 0;
    *(value + 8) = 0;
LABEL_48:
    v25 = *MEMORY[0x1E69E9840];
    return v9;
  }

  _backingObjectID = [obj objectID];
LABEL_12:
  obj = _backingObjectID;
LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = obj;
    v8 = *MEMORY[0x1E69E9840];
LABEL_15:

    return v7;
  }

  if ([obj isNSArray])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [(_NSPersistentHistoryPredicateRemapper *)value replacementValueForValue:?];
          [v9 addObject:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v11);
    }

    goto LABEL_48;
  }

  if ([obj isNSSet])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [(_NSPersistentHistoryPredicateRemapper *)value replacementValueForValue:?];
          [v9 addObject:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v16);
    }

    goto LABEL_48;
  }

  if ([obj isNSOrderedSet])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [(_NSPersistentHistoryPredicateRemapper *)value replacementValueForValue:?];
          [v9 addObject:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v21);
    }

    goto LABEL_48;
  }

  if (![obj isNSString])
  {
    v27 = *MEMORY[0x1E69E9840];
    v7 = obj;
    goto LABEL_15;
  }

  v26 = *MEMORY[0x1E69E9840];

  return [obj copy];
}

- (_BYTE)replacementValueForKeyPath:(_BYTE *)result
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  if ([a2 isNSString])
  {
    v9[0] = @"author";
    v9[1] = @"bundleID";
    v10[0] = @"AUTHORTS";
    v10[1] = @"BUNDLEIDTS";
    v9[2] = @"contextName";
    v9[3] = @"processID";
    v10[2] = @"CONTEXTNAMETS";
    v10[3] = @"PROCESSIDTS";
    v3 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:{4), "objectForKey:", a2}];
    if (v3)
    {
      result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v3, @"NAME"];
    }

    else
    {
      if ([a2 isEqualToString:@"transactionNumber"] || (objc_msgSend(a2, "isEqualToString:", @"changeID") & 1) != 0 || objc_msgSend(a2, "isEqualToString:", @"token"))
      {
        if ([a2 isEqualToString:@"token"])
        {
          v2[16] = 1;
        }

        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = NSSQLPrimaryKeyPropertyName;
      }

      else if ([a2 isEqualToString:@"timestamp"])
      {
        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = PFPersistentHistoryTransactionTimestamp;
      }

      else if ([a2 isEqualToString:@"changeType"])
      {
        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = PFPersistentHistoryChangeType;
      }

      else if ([a2 isEqualToString:@"changedEntity"])
      {
        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = PFPersistentHistoryChangeEntity;
      }

      else if ([a2 isEqualToString:@"transaction"] && byte_1ED4BEECF == 1)
      {
        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = PFPersistentHistoryChangeTransactionID;
      }

      else
      {
        if (![a2 isEqualToString:@"changes"] || byte_1ED4BEECF != 1)
        {
          result = [a2 copy];
          goto LABEL_15;
        }

        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = PFPersistentHistoryTransactionChanges;
      }

      result = [v5 initWithString:*v6];
    }

LABEL_15:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = *MEMORY[0x1E69E9840];

  return a2;
}

- (void)visitPredicateExpression:(id)expression
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_previousKeyPathExpressionWasToken = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [expression expressionType] == 3)
  {
LABEL_3:
    keyPath = [expression keyPath];
    if (keyPath)
    {
      v6 = keyPath;
      v7 = [(_NSPersistentHistoryPredicateRemapper *)self replacementValueForKeyPath:keyPath];
      v8 = v7;
      if (v7)
      {
        if (v7 != v6)
        {
          v9 = "_value";
LABEL_15:
          object_setInstanceVariableWithStrongDefault(expression, v9, v8);
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  constantValue = [expression constantValue];
  if (constantValue || self->_previousKeyPathExpressionWasToken)
  {
    v11 = [(_NSPersistentHistoryPredicateRemapper *)self replacementValueForValue:constantValue];
    v8 = v11;
    if (v11)
    {
      if (v11 != constantValue)
      {
        v9 = "constantValue";
        goto LABEL_15;
      }
    }
  }

LABEL_16:

  MEMORY[0x1EEE66BE0]();
}

@end