@interface NSSQLOrderIntermediate
- (NSSQLOrderIntermediate)initWithSortDescriptors:(id)a3 inScope:(id)a4;
- (id)generateSQLStringInContext:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLOrderIntermediate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLOrderIntermediate;
  [(NSSQLOrderIntermediate *)&v3 dealloc];
}

- (NSSQLOrderIntermediate)initWithSortDescriptors:(id)a3 inScope:(id)a4
{
  v7.receiver = self;
  v7.super_class = NSSQLOrderIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:a4];
  if (v5)
  {
    v5->_sortDescriptors = a3;
  }

  return v5;
}

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v47 = [(NSArray *)self->_sortDescriptors count];
  if (!v47)
  {
    v41 = MEMORY[0x1E696AD60];

    return objc_alloc_init(v41);
  }

  v46 = a3;
  v7 = [(NSSQLIntermediate *)self fetchIntermediate];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"ORDER BY"];
  v8 = 0;
  v45 = *MEMORY[0x1E695D940];
  v48 = self;
  while (1)
  {
    v9 = [(NSArray *)self->_sortDescriptors objectAtIndex:v8];
    v10 = [v9 key];
    v11 = [v9 ascending];
    if (v8)
    {
      [v5 appendString:{@", "}];
    }

    v49 = v11;
    if ([(__CFString *)v10 rangeOfString:@"."]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
      goto LABEL_39;
    }

    v12 = [v7 governingEntity];
    if (!v12 || (v13 = [*(v12 + 40) objectForKey:v10]) == 0)
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
        [v46 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v45, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported join (ordering by mtm not allowed in updates): %@", self->_sortDescriptors), 0), @"NSUnderlyingException"}];
      }

      else
      {
        v18 = [(NSSQLIntermediate *)self fetchIntermediate];
        v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(v14, "name"), 0}];
        v20 = [(NSSQLFetchIntermediate *)v18 finalJoinForKeypathWithComponents:v19];
        if (!v20)
        {
          v20 = +[NSSQLJoinIntermediate createJoinIntermediatesForKeypath:startEntity:startAlias:forScope:inStatementIntermediate:inContext:](NSSQLJoinIntermediate, v19, [v14 entity], -[NSSQLIntermediate governingAlias](v48, "governingAlias"), v48, -[NSSQLIntermediate fetchIntermediate](v48, "fetchIntermediate"), v46);
        }

        if (![v46 objectForKey:@"NSUnderlyingException"])
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

      if ([(NSSQLIntermediate *)v48 isUpdateScoped])
      {
        [v46 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v45, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported join (ordering by tm not allowed in updates): %@", v48->_sortDescriptors), 0), @"NSUnderlyingException"}];
        v17 = 0;
      }

      else
      {
        v24 = [*(v14 + 80) name];
        v25 = [NSSQLKeypathExpressionIntermediate alloc];
        v26 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:](v25, "initWithExpression:allowToMany:inScope:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v24], 0, v48);
        v17 = [(NSSQLKeypathExpressionIntermediate *)v26 generateSQLStringInContext:v46];
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

    self = v48;
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
    v17 = [(NSSQLKeypathExpressionIntermediate *)v29 generateSQLStringInContext:v46];

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

    v30 = [objc_msgSend(v7 "governingEntity")];
    v31 = [(__CFString *)v10 componentsSeparatedByString:@"."];
    v32 = [v31 count];
    v33 = [v31 objectAtIndex:0];
    if (v30)
    {
      v34 = [objc_msgSend(v30 "propertiesByName")];
    }

    else
    {
      v34 = 0;
    }

    if ([v34 _propertyType] != 2 && objc_msgSend(v34, "_propertyType") != 6 && objc_msgSend(v34, "_propertyType") != 7)
    {
      v30 = [v34 destinationEntity];
    }

    v35 = [MEMORY[0x1E695DF70] array];
    [v35 addObject:v33];
    if (v32 >= 2)
    {
      for (i = 1; i != v32; ++i)
      {
        [(NSSQLFetchIntermediate *)v7 promoteToOuterJoinAtKeypathWithComponents:v35];
        v37 = [v31 objectAtIndex:i];
        if (v30)
        {
          v30 = [objc_msgSend(v30 "propertiesByName")];
        }

        if ([v30 _isAttribute])
        {
          break;
        }

        [v35 addObject:v37];
        v30 = [v30 destinationEntity];
      }
    }

    v38 = [v9 selector];
    if (!v38 || v38 == sel_compare_)
    {
      break;
    }

    if (v38 == sel_caseInsensitiveCompare_)
    {
      v39 = @" COLLATE NSCollateNoCase ";
    }

    else if (v38 == sel__caseInsensitiveNumericCompare_)
    {
      v39 = @" COLLATE NSCollateNumericallyNoCase ";
    }

    else if (v38 == sel_localizedCompare_)
    {
      v39 = @" COLLATE NSCollateLocaleSensitive ";
    }

    else if (v38 == sel_localizedCaseInsensitiveCompare_)
    {
      v39 = @" COLLATE NSCollateLocaleSensitiveNoCase ";
    }

    else
    {
      v39 = @" COLLATE NSCollateFinderlike ";
      if (v38 != sel_localizedStandardCompare_)
      {
        v42 = MEMORY[0x1E695DF30];
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported NSSortDescriptor selector: %@", NSStringFromSelector(v38)];
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

    self = v48;
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
  [v46 setObject:objc_msgSend(v44 forKey:{"exceptionWithName:reason:userInfo:", v45, v43, 0), @"NSUnderlyingException"}];
LABEL_90:

  return 0;
}

@end