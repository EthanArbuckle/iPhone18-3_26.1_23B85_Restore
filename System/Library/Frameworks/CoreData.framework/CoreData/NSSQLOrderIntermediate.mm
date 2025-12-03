@interface NSSQLOrderIntermediate
- (NSSQLOrderIntermediate)initWithSortDescriptors:(id)descriptors inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLOrderIntermediate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLOrderIntermediate;
  [(NSSQLOrderIntermediate *)&v3 dealloc];
}

- (NSSQLOrderIntermediate)initWithSortDescriptors:(id)descriptors inScope:(id)scope
{
  v7.receiver = self;
  v7.super_class = NSSQLOrderIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:scope];
  if (v5)
  {
    v5->_sortDescriptors = descriptors;
  }

  return v5;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v47 = [(NSArray *)self->_sortDescriptors count];
  if (!v47)
  {
    v41 = MEMORY[0x1E696AD60];

    return objc_alloc_init(v41);
  }

  contextCopy = context;
  fetchIntermediate = [(NSSQLIntermediate *)self fetchIntermediate];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"ORDER BY"];
  v8 = 0;
  v45 = *MEMORY[0x1E695D940];
  selfCopy = self;
  while (1)
  {
    v9 = [(NSArray *)self->_sortDescriptors objectAtIndex:v8];
    v10 = [v9 key];
    ascending = [v9 ascending];
    if (v8)
    {
      [v5 appendString:{@", "}];
    }

    v49 = ascending;
    if ([(__CFString *)v10 rangeOfString:@"."]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
      goto LABEL_39;
    }

    governingEntity = [fetchIntermediate governingEntity];
    if (!governingEntity || (v13 = [*(governingEntity + 40) objectForKey:v10]) == 0)
    {
LABEL_17:
      v16 = 0;
      goto LABEL_39;
    }

    v14 = v13;
    v15 = *(v13 + 24);
    if (v15 == 9)
    {
      if (!*(v13 + 80))
      {
        goto LABEL_17;
      }

      if ([(NSSQLIntermediate *)self isUpdateScoped])
      {
        [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v45, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported join (ordering by mtm not allowed in updates): %@", self->_sortDescriptors), 0), @"NSUnderlyingException"}];
      }

      else
      {
        fetchIntermediate2 = [(NSSQLIntermediate *)self fetchIntermediate];
        v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(v14, "name"), 0}];
        v20 = [(NSSQLFetchIntermediate *)fetchIntermediate2 finalJoinForKeypathWithComponents:v19];
        if (!v20)
        {
          v20 = +[NSSQLJoinIntermediate createJoinIntermediatesForKeypath:startEntity:startAlias:forScope:inStatementIntermediate:inContext:](NSSQLJoinIntermediate, v19, [v14 entity], -[NSSQLIntermediate governingAlias](selfCopy, "governingAlias"), selfCopy, -[NSSQLIntermediate fetchIntermediate](selfCopy, "fetchIntermediate"), contextCopy);
        }

        if (![contextCopy objectForKey:@"NSUnderlyingException"])
        {
          if (v20)
          {
            v23 = v20[5];
          }

          else
          {
            v23 = 0;
          }

          v17 = [v23 mutableCopy];

          [v17 appendString:@"."];
          [v17 appendString:*(v14 + 80)];
          goto LABEL_23;
        }
      }

      v17 = 0;
LABEL_23:
      v16 = v17 != 0;
      v15 = *(v14 + 24);
      goto LABEL_24;
    }

    v16 = 0;
    v17 = 0;
LABEL_24:
    if (v15 == 7 && (v21 = *(v14 + 56), [v21 isToMany]) && (!v21 ? (v22 = 0) : (v22 = objc_msgSend(v21, "propertyDescription")), objc_msgSend(v22, "isOrdered")))
    {

      if ([(NSSQLIntermediate *)selfCopy isUpdateScoped])
      {
        [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v45, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported join (ordering by tm not allowed in updates): %@", selfCopy->_sortDescriptors), 0), @"NSUnderlyingException"}];
        v17 = 0;
      }

      else
      {
        name = [*(v14 + 80) name];
        v25 = [NSSQLKeypathExpressionIntermediate alloc];
        v26 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:](v25, "initWithExpression:allowToMany:inScope:", [MEMORY[0x1E696ABC8] expressionForKeyPath:name], 0, selfCopy);
        v17 = [(NSSQLKeypathExpressionIntermediate *)v26 generateSQLStringInContext:contextCopy];
      }

      v16 |= v17 != 0;
      if (v17)
      {
LABEL_32:
        [v5 appendString:@" "];
        goto LABEL_44;
      }
    }

    else if (v17)
    {
      goto LABEL_32;
    }

    self = selfCopy;
LABEL_39:
    v27 = @"_pk";
    if ([(__CFString *)v10 caseInsensitiveCompare:@"self"])
    {
      if ([(__CFString *)v10 compare:@"objectID"])
      {
        v27 = v10;
      }

      else
      {
        v27 = @"_pk";
      }
    }

    v28 = [NSSQLKeypathExpressionIntermediate alloc];
    v29 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:](v28, "initWithExpression:allowToMany:inScope:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v27], 0, self);
    v17 = [(NSSQLKeypathExpressionIntermediate *)v29 generateSQLStringInContext:contextCopy];

    if (!v17)
    {
      goto LABEL_90;
    }

LABEL_44:
    [v5 appendString:v17];

    if (v16)
    {
      goto LABEL_73;
    }

    destinationEntity = [objc_msgSend(fetchIntermediate "governingEntity")];
    v31 = [(__CFString *)v10 componentsSeparatedByString:@"."];
    v32 = [v31 count];
    v33 = [v31 objectAtIndex:0];
    if (destinationEntity)
    {
      v34 = [objc_msgSend(destinationEntity "propertiesByName")];
    }

    else
    {
      v34 = 0;
    }

    if ([v34 _propertyType] != 2 && objc_msgSend(v34, "_propertyType") != 6 && objc_msgSend(v34, "_propertyType") != 7)
    {
      destinationEntity = [v34 destinationEntity];
    }

    array = [MEMORY[0x1E695DF70] array];
    [array addObject:v33];
    if (v32 >= 2)
    {
      for (i = 1; i != v32; ++i)
      {
        [(NSSQLFetchIntermediate *)fetchIntermediate promoteToOuterJoinAtKeypathWithComponents:array];
        v37 = [v31 objectAtIndex:i];
        if (destinationEntity)
        {
          destinationEntity = [objc_msgSend(destinationEntity "propertiesByName")];
        }

        if ([destinationEntity _isAttribute])
        {
          break;
        }

        [array addObject:v37];
        destinationEntity = [destinationEntity destinationEntity];
      }
    }

    selector = [v9 selector];
    if (!selector || selector == sel_compare_)
    {
      break;
    }

    if (selector == sel_caseInsensitiveCompare_)
    {
      v39 = @" COLLATE NSCollateNoCase ";
    }

    else if (selector == sel__caseInsensitiveNumericCompare_)
    {
      v39 = @" COLLATE NSCollateNumericallyNoCase ";
    }

    else if (selector == sel_localizedCompare_)
    {
      v39 = @" COLLATE NSCollateLocaleSensitive ";
    }

    else if (selector == sel_localizedCaseInsensitiveCompare_)
    {
      v39 = @" COLLATE NSCollateLocaleSensitiveNoCase ";
    }

    else
    {
      v39 = @" COLLATE NSCollateFinderlike ";
      if (selector != sel_localizedStandardCompare_)
      {
        v42 = MEMORY[0x1E695DF30];
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported NSSortDescriptor selector: %@", NSStringFromSelector(selector)];
        v44 = v42;
        goto LABEL_89;
      }
    }

    [v5 appendString:v39];
LABEL_73:
    if ((v49 & 1) == 0)
    {
      [v5 appendString:@" DESC"];
    }

    self = selfCopy;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 reverseNullOrder])
    {
      if (v49)
      {
        v40 = @" ASC NULLS LAST";
      }

      else
      {
        v40 = @" NULLS FIRST";
      }

      [v5 appendString:v40];
    }

    if (++v8 == v47)
    {
      return v5;
    }
  }

  if (![v9 comparator] || HIBYTE(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
  {
    goto LABEL_73;
  }

  v44 = MEMORY[0x1E695DF30];
  v43 = @"unsupported NSSortDescriptor (comparator blocks are not supported)";
LABEL_89:
  [contextCopy setObject:objc_msgSend(v44 forKey:{"exceptionWithName:reason:userInfo:", v45, v43, 0), @"NSUnderlyingException"}];
LABEL_90:

  return 0;
}

@end