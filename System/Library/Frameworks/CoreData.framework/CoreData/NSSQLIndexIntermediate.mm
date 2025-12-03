@interface NSSQLIndexIntermediate
- (id)generateSQLStringInContext:(id)context;
- (id)initForIndex:(id)index withScope:(id)scope;
- (void)dealloc;
@end

@implementation NSSQLIndexIntermediate

- (id)initForIndex:(id)index withScope:(id)scope
{
  v7.receiver = self;
  v7.super_class = NSSQLIndexIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:scope];
  if (v5)
  {
    v5->_index = index;
  }

  return v5;
}

- (void)dealloc
{
  self->_index = 0;
  v3.receiver = self;
  v3.super_class = NSSQLIndexIntermediate;
  [(NSSQLIndexIntermediate *)&v3 dealloc];
}

- (id)generateSQLStringInContext:(id)context
{
  v90[1] = *MEMORY[0x1E69E9840];
  sqlEntity = [(NSSQLIndex *)self->_index sqlEntity];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  if ([(NSSQLIndex *)self->_index isUnique])
  {
    v7 = @"UNIQUE ";
  }

  else
  {
    v7 = &stru_1EF3F1768;
  }

  v8 = objc_msgSend(v6, "initWithFormat:", @"CREATE %@INDEX IF NOT EXISTS Z_%@_%@ ON %@ ("), v7, -[NSSQLEntity name](sqlEntity, "name"), -[NSFetchIndexDescription name](-[NSSQLIndex indexDescription](self->_index, "indexDescription"), "name"), -[NSSQLEntity tableName](sqlEntity, "tableName");
  obj = [(NSFetchIndexDescription *)[(NSSQLIndex *)self->_index indexDescription] elements];
  selfCopy = self;
  self->_isHandlingExpressions = 1;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (!v9)
  {
    goto LABEL_64;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v65;
  v61 = *MEMORY[0x1E695D940];
  contextCopy = context;
LABEL_6:
  v13 = 0;
  while (1)
  {
    if (*v65 != v12)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v64 + 1) + 8 * v13);
    property = [v14 property];
    _propertyType = [property _propertyType];
    if (_propertyType > 5)
    {
      if ((_propertyType - 6) >= 2)
      {
LABEL_57:
        v44 = MEMORY[0x1E695DF30];
        v76 = @"property";
        v77 = property;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v46 = @"Unsupported property in index";
        goto LABEL_59;
      }

LABEL_18:
      _qualifiedName = [property _qualifiedName];
LABEL_19:
      v21 = [NSSQLKeypathExpressionIntermediate alloc];
      v22 = [MEMORY[0x1E696ABC8] expressionForKeyPath:_qualifiedName];
      v23 = v21;
      goto LABEL_20;
    }

    if (_propertyType == 2)
    {
      goto LABEL_18;
    }

    if (_propertyType == 4)
    {
      break;
    }

    if (_propertyType != 5)
    {
      goto LABEL_57;
    }

    expression = [property expression];
    expressionType = [expression expressionType];
    if (expressionType == 4)
    {
      v23 = [NSSQLFunctionExpressionIntermediate alloc];
      v22 = expression;
LABEL_20:
      v24 = [(NSSQLExpressionIntermediate *)v23 initWithExpression:v22 allowToMany:0 inScope:selfCopy];
      v25 = v24;
LABEL_21:
      v19 = [(NSSQLKeypathExpressionIntermediate *)v24 generateSQLStringInContext:context];

      goto LABEL_22;
    }

    if (expressionType == 3)
    {
      keyPath = [expression keyPath];
      [keyPath rangeOfString:@"."];
      if (v28)
      {
        v29 = MEMORY[0x1E695DF30];
        v89 = @"expression";
        v90[0] = expression;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
        v31 = v29;
        v32 = v61;
        v33 = @"Joins not supported in index";
        goto LABEL_35;
      }

      entityDescription = [(NSSQLEntity *)[(NSSQLIndex *)selfCopy->_index sqlEntity] entityDescription];
      if (!entityDescription || (v36 = [objc_msgSend(entityDescription "propertiesByName")]) == 0)
      {
        if (![@"entity" caseInsensitiveCompare:keyPath])
        {
          v41 = @"Z_ENT";
LABEL_53:
          v19 = [(__CFString *)v41 mutableCopy];
          context = contextCopy;
          goto LABEL_22;
        }

        if (![@"self" caseInsensitiveCompare:keyPath])
        {
          v41 = @"Z_PK";
          goto LABEL_53;
        }

        v40 = MEMORY[0x1E695DF30];
        v87 = @"expression";
        v88 = expression;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v31 = v40;
        v32 = v61;
        v33 = @"Can't find property for keypath";
LABEL_35:
        v34 = [v31 exceptionWithName:v32 reason:v33 userInfo:v30];
        context = contextCopy;
LABEL_38:
        [context setObject:v34 forKey:@"NSUnderlyingException"];
        v19 = 0;
        goto LABEL_22;
      }

      v37 = v36;
      _propertyType2 = [v36 _propertyType];
      if ([v37 _propertyType] == 4 && objc_msgSend(v37, "isToMany"))
      {
        v39 = MEMORY[0x1E695DF30];
        v85 = @"property";
        v86 = v37;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v31 = v39;
        v32 = v61;
        v33 = @"Indexes cannot contain to many relationships";
        goto LABEL_35;
      }

      if (_propertyType2 > 7 || ((1 << _propertyType2) & 0xD4) == 0)
      {
        v42 = MEMORY[0x1E695DF30];
        v83 = @"property";
        v84 = v37;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v31 = v42;
        v32 = v61;
        v33 = @"Indexes can only contain attribute/relationship properties";
        goto LABEL_35;
      }

      v24 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:expression allowToMany:0 inScope:selfCopy];
      v25 = v24;
      context = contextCopy;
      goto LABEL_21;
    }

    if (expressionType != 1)
    {
      v81 = @"expression";
      v82 = expression;
      v34 = [MEMORY[0x1E695DF30] exceptionWithName:v61 reason:@"Unsupported expression type in index" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v82, &v81, 1)}];
      goto LABEL_38;
    }

    v19 = [@"Z_PK" mutableCopy];
LABEL_22:
    if (!v19)
    {
      goto LABEL_60;
    }

    if ([v14 isAscending])
    {
      v26 = @"ASC";
    }

    else
    {
      v26 = @"DESC";
    }

    if (v11)
    {
      [v8 appendString:{@", "}];
    }

    [v8 appendFormat:@"%@ COLLATE BINARY %@", v19, v26];

    ++v13;
    v11 = 1;
    if (v10 == v13)
    {
      v43 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v80 count:16];
      v10 = v43;
      if (!v43)
      {
        goto LABEL_63;
      }

      goto LABEL_6;
    }
  }

  if (![property isToMany])
  {
    _qualifiedName = [property name];
    if (!_qualifiedName)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v44 = MEMORY[0x1E695DF30];
  v78 = @"relationship";
  v79 = property;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v46 = @"Indexes cannot contain to many relationships";
LABEL_59:
  [context setObject:objc_msgSend(v44 forKey:{"exceptionWithName:reason:userInfo:", v61, v46, v45), @"NSUnderlyingException"}];

  v8 = 0;
LABEL_60:
  if (![context objectForKey:@"NSUnderlyingException"])
  {
    v74 = @"property";
    v75 = property;
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v61, @"SQL generation failure for property", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v75, &v74, 1)), @"NSUnderlyingException"}];
  }

  v8 = 0;
  if (v11)
  {
LABEL_63:
    [v8 appendString:@""]);
    goto LABEL_67;
  }

LABEL_64:
  if (![context objectForKey:@"NSUnderlyingException"])
  {
    v47 = MEMORY[0x1E695DF30];
    v48 = *MEMORY[0x1E695D940];
    v72 = @"indexDescription";
    indexDescription = [(NSSQLIndex *)selfCopy->_index indexDescription];
    [context setObject:objc_msgSend(v47 forKey:{"exceptionWithName:reason:userInfo:", v48, @"SQL generation failure for index", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &indexDescription, &v72, 1)), @"NSUnderlyingException"}];
  }

  v8 = 0;
LABEL_67:
  selfCopy->_isHandlingExpressions = 0;
  partialIndexPredicate = [(NSFetchIndexDescription *)[(NSSQLIndex *)selfCopy->_index indexDescription] partialIndexPredicate];
  if (v8)
  {
    v50 = partialIndexPredicate;
    if (partialIndexPredicate)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:v50 inScope:selfCopy inContext:context];
        goto LABEL_73;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v54 = MEMORY[0x1E695DF30];
        v55 = *MEMORY[0x1E695D940];
        v70 = @"predicate";
        partialIndexPredicate2 = [(NSFetchIndexDescription *)[(NSSQLIndex *)selfCopy->_index indexDescription] partialIndexPredicate];
        [context setObject:objc_msgSend(v54 forKey:{"exceptionWithName:reason:userInfo:", v55, @"SQL generation failure for index with predicate (1)", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &partialIndexPredicate2, &v70, 1)), @"NSUnderlyingException"}];
        goto LABEL_80;
      }

      v51 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:v50 inScope:selfCopy];
LABEL_73:
      v52 = v51;
      if (v51)
      {
        v53 = [(NSSQLCompoundWhereIntermediate *)v51 generateSQLStringInContext:context];

        if (v53)
        {
          [v8 appendFormat:@" WHERE %@", v53];

          goto LABEL_81;
        }

        if (![context objectForKey:@"NSUnderlyingException"])
        {
          v56 = MEMORY[0x1E695DF30];
          v57 = *MEMORY[0x1E695D940];
          v68 = @"predicate";
          partialIndexPredicate3 = [(NSFetchIndexDescription *)[(NSSQLIndex *)selfCopy->_index indexDescription] partialIndexPredicate];
          [context setObject:objc_msgSend(v56 forKey:{"exceptionWithName:reason:userInfo:", v57, @"SQL generation failure for index with predicate (2)", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &partialIndexPredicate3, &v68, 1)), @"NSUnderlyingException"}];
        }

LABEL_80:
        v8 = 0;
      }
    }
  }

LABEL_81:
  v58 = *MEMORY[0x1E69E9840];
  return v8;
}

@end