@interface NSSQLIndexIntermediate
- (id)generateSQLStringInContext:(id)a3;
- (id)initForIndex:(id)a3 withScope:(id)a4;
- (void)dealloc;
@end

@implementation NSSQLIndexIntermediate

- (id)initForIndex:(id)a3 withScope:(id)a4
{
  v7.receiver = self;
  v7.super_class = NSSQLIndexIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:a4];
  if (v5)
  {
    v5->_index = a3;
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

- (id)generateSQLStringInContext:(id)a3
{
  v90[1] = *MEMORY[0x1E69E9840];
  v5 = [(NSSQLIndex *)self->_index sqlEntity];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  if ([(NSSQLIndex *)self->_index isUnique])
  {
    v7 = @"UNIQUE ";
  }

  else
  {
    v7 = &stru_1EF3F1768;
  }

  v8 = objc_msgSend(v6, "initWithFormat:", @"CREATE %@INDEX IF NOT EXISTS Z_%@_%@ ON %@ ("), v7, -[NSSQLEntity name](v5, "name"), -[NSFetchIndexDescription name](-[NSSQLIndex indexDescription](self->_index, "indexDescription"), "name"), -[NSSQLEntity tableName](v5, "tableName");
  obj = [(NSFetchIndexDescription *)[(NSSQLIndex *)self->_index indexDescription] elements];
  v63 = self;
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
  v60 = a3;
LABEL_6:
  v13 = 0;
  while (1)
  {
    if (*v65 != v12)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v64 + 1) + 8 * v13);
    v15 = [v14 property];
    v16 = [v15 _propertyType];
    if (v16 > 5)
    {
      if ((v16 - 6) >= 2)
      {
LABEL_57:
        v44 = MEMORY[0x1E695DF30];
        v76 = @"property";
        v77 = v15;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v46 = @"Unsupported property in index";
        goto LABEL_59;
      }

LABEL_18:
      v20 = [v15 _qualifiedName];
LABEL_19:
      v21 = [NSSQLKeypathExpressionIntermediate alloc];
      v22 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v20];
      v23 = v21;
      goto LABEL_20;
    }

    if (v16 == 2)
    {
      goto LABEL_18;
    }

    if (v16 == 4)
    {
      break;
    }

    if (v16 != 5)
    {
      goto LABEL_57;
    }

    v17 = [v15 expression];
    v18 = [v17 expressionType];
    if (v18 == 4)
    {
      v23 = [NSSQLFunctionExpressionIntermediate alloc];
      v22 = v17;
LABEL_20:
      v24 = [(NSSQLExpressionIntermediate *)v23 initWithExpression:v22 allowToMany:0 inScope:v63];
      v25 = v24;
LABEL_21:
      v19 = [(NSSQLKeypathExpressionIntermediate *)v24 generateSQLStringInContext:a3];

      goto LABEL_22;
    }

    if (v18 == 3)
    {
      v27 = [v17 keyPath];
      [v27 rangeOfString:@"."];
      if (v28)
      {
        v29 = MEMORY[0x1E695DF30];
        v89 = @"expression";
        v90[0] = v17;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
        v31 = v29;
        v32 = v61;
        v33 = @"Joins not supported in index";
        goto LABEL_35;
      }

      v35 = [(NSSQLEntity *)[(NSSQLIndex *)v63->_index sqlEntity] entityDescription];
      if (!v35 || (v36 = [objc_msgSend(v35 "propertiesByName")]) == 0)
      {
        if (![@"entity" caseInsensitiveCompare:v27])
        {
          v41 = @"Z_ENT";
LABEL_53:
          v19 = [(__CFString *)v41 mutableCopy];
          a3 = v60;
          goto LABEL_22;
        }

        if (![@"self" caseInsensitiveCompare:v27])
        {
          v41 = @"Z_PK";
          goto LABEL_53;
        }

        v40 = MEMORY[0x1E695DF30];
        v87 = @"expression";
        v88 = v17;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v31 = v40;
        v32 = v61;
        v33 = @"Can't find property for keypath";
LABEL_35:
        v34 = [v31 exceptionWithName:v32 reason:v33 userInfo:v30];
        a3 = v60;
LABEL_38:
        [a3 setObject:v34 forKey:@"NSUnderlyingException"];
        v19 = 0;
        goto LABEL_22;
      }

      v37 = v36;
      v38 = [v36 _propertyType];
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

      if (v38 > 7 || ((1 << v38) & 0xD4) == 0)
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

      v24 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v17 allowToMany:0 inScope:v63];
      v25 = v24;
      a3 = v60;
      goto LABEL_21;
    }

    if (v18 != 1)
    {
      v81 = @"expression";
      v82 = v17;
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

  if (![v15 isToMany])
  {
    v20 = [v15 name];
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v44 = MEMORY[0x1E695DF30];
  v78 = @"relationship";
  v79 = v15;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v46 = @"Indexes cannot contain to many relationships";
LABEL_59:
  [a3 setObject:objc_msgSend(v44 forKey:{"exceptionWithName:reason:userInfo:", v61, v46, v45), @"NSUnderlyingException"}];

  v8 = 0;
LABEL_60:
  if (![a3 objectForKey:@"NSUnderlyingException"])
  {
    v74 = @"property";
    v75 = v15;
    [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v61, @"SQL generation failure for property", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v75, &v74, 1)), @"NSUnderlyingException"}];
  }

  v8 = 0;
  if (v11)
  {
LABEL_63:
    [v8 appendString:@""]);
    goto LABEL_67;
  }

LABEL_64:
  if (![a3 objectForKey:@"NSUnderlyingException"])
  {
    v47 = MEMORY[0x1E695DF30];
    v48 = *MEMORY[0x1E695D940];
    v72 = @"indexDescription";
    v73 = [(NSSQLIndex *)v63->_index indexDescription];
    [a3 setObject:objc_msgSend(v47 forKey:{"exceptionWithName:reason:userInfo:", v48, @"SQL generation failure for index", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v73, &v72, 1)), @"NSUnderlyingException"}];
  }

  v8 = 0;
LABEL_67:
  v63->_isHandlingExpressions = 0;
  v49 = [(NSFetchIndexDescription *)[(NSSQLIndex *)v63->_index indexDescription] partialIndexPredicate];
  if (v8)
  {
    v50 = v49;
    if (v49)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:v50 inScope:v63 inContext:a3];
        goto LABEL_73;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v54 = MEMORY[0x1E695DF30];
        v55 = *MEMORY[0x1E695D940];
        v70 = @"predicate";
        v71 = [(NSFetchIndexDescription *)[(NSSQLIndex *)v63->_index indexDescription] partialIndexPredicate];
        [a3 setObject:objc_msgSend(v54 forKey:{"exceptionWithName:reason:userInfo:", v55, @"SQL generation failure for index with predicate (1)", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v71, &v70, 1)), @"NSUnderlyingException"}];
        goto LABEL_80;
      }

      v51 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:v50 inScope:v63];
LABEL_73:
      v52 = v51;
      if (v51)
      {
        v53 = [(NSSQLCompoundWhereIntermediate *)v51 generateSQLStringInContext:a3];

        if (v53)
        {
          [v8 appendFormat:@" WHERE %@", v53];

          goto LABEL_81;
        }

        if (![a3 objectForKey:@"NSUnderlyingException"])
        {
          v56 = MEMORY[0x1E695DF30];
          v57 = *MEMORY[0x1E695D940];
          v68 = @"predicate";
          v69 = [(NSFetchIndexDescription *)[(NSSQLIndex *)v63->_index indexDescription] partialIndexPredicate];
          [a3 setObject:objc_msgSend(v56 forKey:{"exceptionWithName:reason:userInfo:", v57, @"SQL generation failure for index with predicate (2)", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v69, &v68, 1)), @"NSUnderlyingException"}];
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