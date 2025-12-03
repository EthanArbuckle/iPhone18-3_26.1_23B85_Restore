@interface NSSQLRTreeIndexQueryIntermediate
- (id)generateSQLStringInContext:(id)context;
- (id)initForIndexNamed:(id)named onEntity:(id)entity properties:(id)properties ranges:(id)ranges inScope:(id)scope;
- (uint64_t)_validateCollection:(void *)collection context:;
- (uint64_t)_validateExpression:(void *)expression context:;
- (void)dealloc;
@end

@implementation NSSQLRTreeIndexQueryIntermediate

- (id)initForIndexNamed:(id)named onEntity:(id)entity properties:(id)properties ranges:(id)ranges inScope:(id)scope
{
  v13.receiver = self;
  v13.super_class = NSSQLRTreeIndexQueryIntermediate;
  v11 = [(NSSQLIntermediate *)&v13 initWithScope:scope];
  if (v11)
  {
    v11->_indexName = named;
    v11->_entity = entity;
    v11->_properties = properties;
    v11->_ranges = ranges;
  }

  return v11;
}

- (void)dealloc
{
  self->_indexName = 0;
  self->_entity = 0;

  self->_properties = 0;
  self->_ranges = 0;
  v3.receiver = self;
  v3.super_class = NSSQLRTreeIndexQueryIntermediate;
  [(NSSQLRTreeIndexQueryIntermediate *)&v3 dealloc];
}

- (uint64_t)_validateCollection:(void *)collection context:
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if ([a2 isNSArray])
    {
      if ([a2 count] == 2)
      {
        result = 1;
        goto LABEL_8;
      }

      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid RHS for rtree query (array should have 2 elements) %@", a2];
      v15[0] = @"entity";
      v13 = [objc_msgSend(*(v5 + 16) "entityDescription")];
      v15[1] = @"properties";
      v16[0] = v13;
      v16[1] = [*(v5 + 32) valueForKey:@"name"];
      v10 = MEMORY[0x1E695DF20];
      v11 = v16;
      v12 = v15;
    }

    else
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid RHS for rtree query (should be an array but isn't) %@", a2];
      v17[0] = @"entity";
      v9 = [objc_msgSend(*(v5 + 16) "entityDescription")];
      v17[1] = @"properties";
      v18[0] = v9;
      v18[1] = [*(v5 + 32) valueForKey:@"name"];
      v10 = MEMORY[0x1E695DF20];
      v11 = v18;
      v12 = v17;
    }

    [collection setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, objc_msgSend(v10, "dictionaryWithObjects:forKeys:count:", v11, v12, 2)), @"NSUnderlyingException"}];
    result = 0;
  }

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_validateExpression:(void *)expression context:
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if ([a2 expressionType])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid RHS  element for rtree query (should be a constant value) %@", a2];
      v11[0] = @"entity";
      v9 = [objc_msgSend(*(v5 + 16) "entityDescription")];
      v11[1] = @"properties";
      v12[0] = v9;
      v12[1] = [*(v5 + 32) valueForKey:@"name"];
      [expression setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 2)), @"NSUnderlyingException"}];
      result = 0;
    }

    else
    {
      result = 1;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  v100[2] = *MEMORY[0x1E69E9840];
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_57;
  }

  v5 = [(NSArray *)self->_properties count];
  if (v5 != [(NSArray *)self->_ranges count])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    properties = self->_properties;
    v99[0] = @"properties";
    v99[1] = @"ranges";
    ranges = self->_ranges;
    v100[0] = properties;
    v100[1] = ranges;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
    v11 = @"Mismatch between number of properties and number of ranges for rtree query";
LABEL_7:
    v16 = v12;
    v17 = v13;
    goto LABEL_56;
  }

  indexName = self->_indexName;
  if (indexName)
  {
    expressionType = [(NSExpression *)indexName expressionType];
    indexName = self->_indexName;
    if (expressionType)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v97 = @"indexNameExpression";
      v98 = indexName;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v11 = @"Invalid index name expression (should be a constant value)";
LABEL_55:
      v16 = v8;
      v17 = v9;
      goto LABEL_56;
    }
  }

  constantValue = [(NSExpression *)indexName constantValue];
  if (([constantValue isNSString] & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v95 = @"indexName";
    v96 = constantValue;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v11 = @"Invalid index name (should be a string)";
    goto LABEL_55;
  }

  v19 = -[NSSQLAliasGenerator initWithNestingLevel:]([NSSQLAliasGenerator alloc], "initWithNestingLevel:", [objc_msgSend(context objectForKey:{@"nestingLevel", "integerValue"}] + 1);
  generateTableAlias = [(NSSQLAliasGenerator *)v19 generateTableAlias];

  array = [MEMORY[0x1E695DF70] array];
  if (![(NSArray *)self->_properties count])
  {
    v74 = 0;
    v75 = 0;
LABEL_60:
    v53 = [array componentsJoinedByString:@" AND "];
    result = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ IN (SELECT %@.Z_PK FROM %@ %@ WHERE (%@))", v74, generateTableAlias, v75, generateTableAlias, v53];
    goto LABEL_58;
  }

  v74 = 0;
  v75 = 0;
  v20 = 0;
  v69 = constantValue;
  while (1)
  {
    v21 = [(NSArray *)self->_properties objectAtIndex:v20];
    v22 = [(NSArray *)self->_ranges objectAtIndex:v20];
    if (([objc_opt_class() isSimpleKeypath:v21] & 1) == 0)
    {
      v54 = MEMORY[0x1E695DF30];
      v55 = *MEMORY[0x1E695D940];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LHS for rtree query %@", v21];
      v93[0] = @"entity";
      v57 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
      v93[1] = @"properties";
      v94[0] = v57;
      v94[1] = [(NSArray *)self->_properties valueForKey:@"name"];
      v58 = MEMORY[0x1E695DF20];
      v59 = v94;
      v60 = v93;
      goto LABEL_71;
    }

    if (![(NSSQLIntermediate *)self keypathExpressionIsSafeLHSForIn:v21])
    {
      v54 = MEMORY[0x1E695DF30];
      v55 = *MEMORY[0x1E695D940];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported predicate; can't generate SQL for %@", v21];
      v61 = self->_properties;
      v91[0] = @"properties";
      v91[1] = @"ranges";
      v62 = self->_ranges;
      v92[0] = v61;
      v92[1] = v62;
      v58 = MEMORY[0x1E695DF20];
      v59 = v92;
      v60 = v91;
      goto LABEL_71;
    }

    if (!v74)
    {
      v23 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v21 allowToMany:0 inScope:self->super._scope];
      v24 = v23;
      if (v23)
      {
        *(&v23->super._allowToMany + 1) = 1;
      }

      v25 = [(NSSQLKeypathExpressionIntermediate *)v23 generateSQLStringInContext:context];

      v74 = v25;
      if (!v25)
      {
        break;
      }
    }

    v72 = v20;
    if ([v21 expressionType])
    {
      keyPath = [v21 keyPath];
    }

    else
    {
      keyPath = [v21 constantValue];
    }

    v27 = keyPath;
    v28 = [keyPath componentsSeparatedByString:@"."];
    entity = self->_entity;
    v73 = v22;
    if ([v28 count] == 1)
    {
      v30 = self->_entity;
      if (v30)
      {
        v31 = [(NSMutableDictionary *)v30->_properties objectForKey:v27];
        goto LABEL_38;
      }

LABEL_37:
      v31 = 0;
      goto LABEL_38;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v32 = [v28 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (!v32)
    {
      goto LABEL_37;
    }

    v33 = v32;
    v34 = *v77;
    do
    {
      v35 = 0;
      do
      {
        if (*v77 != v34)
        {
          objc_enumerationMutation(v28);
        }

        if (entity)
        {
          v31 = [(NSMutableDictionary *)entity->_properties objectForKey:*(*(&v76 + 1) + 8 * v35)];
        }

        else
        {
          v31 = 0;
        }

        if ([v31 propertyType] != 1)
        {
          entity = [v31 destinationEntity];
        }

        ++v35;
      }

      while (v33 != v35);
      v36 = [v28 countByEnumeratingWithState:&v76 objects:v88 count:16];
      v33 = v36;
    }

    while (v36);
LABEL_38:
    if ([v31 propertyType] != 1)
    {
      v54 = MEMORY[0x1E695DF30];
      v55 = *MEMORY[0x1E695D940];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid ranged property (relationship?!?) %@", v21];
      v86[0] = @"entity";
      v63 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
      v86[1] = @"properties";
      v87[0] = v63;
      v87[1] = [(NSArray *)self->_properties valueForKey:@"name"];
      v58 = MEMORY[0x1E695DF20];
      v59 = v87;
      v60 = v86;
      goto LABEL_71;
    }

    v37 = [(NSSQLEntity *)entity rtreeIndexForIndexNamed:v69];
    if (!v37)
    {
      if (v69)
      {
        v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(no index found for name %@)", v69];
      }

      else
      {
        v64 = @"(no index name specified, multiple indices available)";
      }

      v54 = MEMORY[0x1E695DF30];
      v55 = *MEMORY[0x1E695D940];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find index for rtree query %@", v64];
      v84[0] = @"entity";
      v68 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
      v84[1] = @"properties";
      v85[0] = v68;
      v85[1] = [(NSArray *)self->_properties valueForKey:@"name"];
      v58 = MEMORY[0x1E695DF20];
      v59 = v85;
      v60 = v84;
      goto LABEL_71;
    }

    v38 = v75;
    if (v75)
    {
      v39 = v73;
      if (([v75 isEqual:*(v37 + 48)] & 1) == 0)
      {
        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D930];
        v82[0] = @"entity";
        v65 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
        v82[1] = @"properties";
        v83[0] = v65;
        v83[1] = [(NSArray *)self->_properties valueForKey:@"name"];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
        v11 = @"Can't generate SQL; crosscheck failed";
        goto LABEL_7;
      }
    }

    else
    {
      v38 = *(v37 + 48);
      v39 = v73;
    }

    expressionType2 = [v39 expressionType];
    v75 = v38;
    if (expressionType2 == 14)
    {
      collection = [v39 collection];
      if (![(NSSQLRTreeIndexQueryIntermediate *)self _validateCollection:collection context:context])
      {
        goto LABEL_57;
      }

      firstObject = [collection firstObject];
      lastObject = [collection lastObject];
      if (![(NSSQLRTreeIndexQueryIntermediate *)self _validateExpression:firstObject context:context]|| ![(NSSQLRTreeIndexQueryIntermediate *)self _validateExpression:lastObject context:context])
      {
        goto LABEL_57;
      }

      constantValue2 = [firstObject constantValue];
      constantValue3 = [lastObject constantValue];
    }

    else
    {
      if (expressionType2)
      {
        v54 = MEMORY[0x1E695DF30];
        v55 = *MEMORY[0x1E695D940];
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid RHS for rtree query %@", v39];
        v80[0] = @"entity";
        v66 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
        v80[1] = @"properties";
        v81[0] = v66;
        v81[1] = [(NSArray *)self->_properties valueForKey:@"name"];
        v58 = MEMORY[0x1E695DF20];
        v59 = v81;
        v60 = v80;
        goto LABEL_71;
      }

      constantValue4 = [v39 constantValue];
      if (![(NSSQLRTreeIndexQueryIntermediate *)self _validateCollection:constantValue4 context:context])
      {
        goto LABEL_57;
      }

      constantValue2 = [constantValue4 firstObject];
      constantValue3 = [constantValue4 lastObject];
    }

    v47 = constantValue3;
    v48 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:constantValue2 inContext:context];
    v49 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v47 inContext:context];
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <= %@.%@_MIN AND %@.%@_MAX <= %@", v48, generateTableAlias, objc_msgSend(v31, "columnName"), generateTableAlias, objc_msgSend(v31, "columnName"), v49];

    [array addObject:v50];
    v20 = v72 + 1;
    if (v72 + 1 >= [(NSArray *)self->_properties count])
    {
      goto LABEL_60;
    }
  }

  if ([context objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_57;
  }

  v54 = MEMORY[0x1E695DF30];
  v55 = *MEMORY[0x1E695D940];
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for keypath %@", v21];
  v89[0] = @"entity";
  v67 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
  v89[1] = @"properties";
  v90[0] = v67;
  v90[1] = [(NSArray *)self->_properties valueForKey:@"name"];
  v58 = MEMORY[0x1E695DF20];
  v59 = v90;
  v60 = v89;
LABEL_71:
  v10 = [v58 dictionaryWithObjects:v59 forKeys:v60 count:2];
  v16 = v54;
  v17 = v55;
  v11 = v56;
LABEL_56:
  [context setObject:objc_msgSend(v16 forKey:{"exceptionWithName:reason:userInfo:", v17, v11, v10), @"NSUnderlyingException"}];
LABEL_57:
  result = 0;
LABEL_58:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

@end