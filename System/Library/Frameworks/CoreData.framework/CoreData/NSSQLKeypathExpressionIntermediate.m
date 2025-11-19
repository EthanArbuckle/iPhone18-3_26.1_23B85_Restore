@interface NSSQLKeypathExpressionIntermediate
- (id)_generateSQLForKeyPathExpression:(id)a3 allowToMany:(BOOL)a4 inContext:(id)a5;
- (id)generateSQLStringInContext:(id)a3;
- (uint64_t)_propertyDescriptionsForKeypath:(uint64_t)a3 rootedAtEntity:(uint64_t)a4 allowToMany:(uint64_t)a5 allowToOne:(uint64_t *)a6 lastKeyVisited:(void *)a7 inContext:;
- (unsigned)_propertyDescriptionForKeypath:(uint64_t)a3 startingAtEntity:(char)a4 allowToMany:(char)a5 allowToOne:(uint64_t *)a6 lastKeyVisited:(void *)a7 inContext:;
@end

@implementation NSSQLKeypathExpressionIntermediate

- (unsigned)_propertyDescriptionForKeypath:(uint64_t)a3 startingAtEntity:(char)a4 allowToMany:(char)a5 allowToOne:(uint64_t *)a6 lastKeyVisited:(void *)a7 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v13 = [a2 count];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v36 = v13 - 1;
  v37 = a7;
  v17 = v13;
  while (1)
  {
    v18 = [a2 objectAtIndex:{v15, v36}];
    *a6 = v18;
    v19 = [@"entity" compare:v18 options:1];
    if (v17 == 1 && !v19)
    {
      break;
    }

    v20 = -[NSEntityDescription _attributeNamed:]([a3 entityDescription], *a6);
    if (v20 && [v20 attributeType] == 2100)
    {
      v21 = [a2 componentsJoinedByString:@"."];
    }

    else
    {
      v21 = *a6;
    }

    if (a3)
    {
      v22 = [*(a3 + 40) objectForKey:v21];
    }

    else
    {
      v22 = 0;
    }

    if (v14 != 1 || v22)
    {
      goto LABEL_22;
    }

    v23 = [v37 objectForKeyedSubscript:@"fabricatedSQLEntityForReadOnlyFetch"];
    if (v23)
    {
      v24 = *(v23 + 184);
      if (a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 0;
      if (a3)
      {
LABEL_16:
        v25 = *(a3 + 184);
        goto LABEL_17;
      }
    }

    v25 = 0;
LABEL_17:
    if (v24 == v25)
    {
      if (v23)
      {
        v23 = *(v23 + 40);
      }

      v22 = [v23 objectForKeyedSubscript:*a6];
    }

    else
    {
      v22 = 0;
    }

LABEL_22:
    v26 = [v22 propertyType];
    if ([objc_msgSend(v22 "propertyDescription")])
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"transient property used in fetch request";
      goto LABEL_46;
    }

    if ([v22 isToMany])
    {
      goto LABEL_26;
    }

    if (!v22)
    {
      goto LABEL_32;
    }

    v27 = v22[24];
    if (v27 == 9)
    {
LABEL_26:
      if ((a4 & 1) == 0)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = @"to-many key not allowed here";
        goto LABEL_46;
      }

      if (v16)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = @"multiple to-many keys not allowed here";
LABEL_46:
        [v37 setObject:objc_msgSend(v28 forKey:{"exceptionWithName:reason:userInfo:", v29, v30, 0), @"NSUnderlyingException"}];
        return 0;
      }

      if (!v22)
      {
        v16 = 1;
        goto LABEL_32;
      }

      v27 = v22[24];
      v16 = 1;
    }

    if (v27 == 7 && (a5 & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"to-one key not allowed here";
      goto LABEL_46;
    }

LABEL_32:
    if ((v26 - 7) <= 2)
    {
      a3 = [v22 destinationEntity];
      ++v15;
      if (--v17)
      {
        continue;
      }
    }

    return v22;
  }

  if (a3)
  {
    v31 = v37;
    if (*(a3 + 184) == 16001)
    {
      v22 = [*(a3 + 40) objectForKey:*a6];
    }

    else
    {
      v22 = *(a3 + 136);
    }
  }

  else
  {
    v22 = 0;
    v31 = v37;
  }

  [v31 setValue:objc_msgSend(a2 forKey:{"subarrayWithRange:", 0, v36), @"entitySpecificationKeypath"}];
  if (v16)
  {
    v33 = MEMORY[0x1E695E118];
  }

  else
  {
    v33 = MEMORY[0x1E695E110];
  }

  [v31 setValue:v33 forKey:@"entitySpecificationKeypathContainsToMany"];
  v34 = [v31 valueForKey:@"explicitRestrictingEntityQualifier"];
  if (v34)
  {
    [v34 addObject:MEMORY[0x1E695E118]];
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v35 addObject:MEMORY[0x1E695E118]];
    [v31 setValue:v35 forKey:@"explicitRestrictingEntityQualifier"];
  }

  return v22;
}

- (uint64_t)_propertyDescriptionsForKeypath:(uint64_t)a3 rootedAtEntity:(uint64_t)a4 allowToMany:(uint64_t)a5 allowToOne:(uint64_t *)a6 lastKeyVisited:(void *)a7 inContext:
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v12 = result;
    v13 = a3 ? *(a3 + 152) : 0;
    result = [v13 count];
    if (result)
    {
      v14 = [MEMORY[0x1E695DFA8] set];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        obj = v13;
        v23 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [(NSSQLKeypathExpressionIntermediate *)v12 _propertyDescriptionForKeypath:a2 startingAtEntity:v18 allowToMany:a4 allowToOne:a5 lastKeyVisited:a6 inContext:a7];
            if (v19)
            {
              [v14 addObject:v19];
            }

            else if ([a7 objectForKey:@"NSUnderlyingException"])
            {
              goto LABEL_21;
            }

            v20 = [(NSSQLKeypathExpressionIntermediate *)v12 _propertyDescriptionsForKeypath:a2 rootedAtEntity:v18 allowToMany:a4 allowToOne:a5 lastKeyVisited:a6 inContext:a7];
            if (v20)
            {
              [v14 addObjectsFromArray:{objc_msgSend(v20, "allObjects")}];
            }

            else if ([a7 objectForKey:@"NSUnderlyingException"])
            {
LABEL_21:
              result = 0;
              goto LABEL_22;
            }
          }

          v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      if ([v14 count])
      {
        result = v14;
      }

      else
      {
        result = 0;
      }
    }
  }

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_generateSQLForKeyPathExpression:(id)a3 allowToMany:(BOOL)a4 inContext:(id)a5
{
  v6 = a4;
  v78[1] = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = [a5 objectForKey:@"storeRequest"];
  v11 = [v10 requestType];
  if (v11 != 8)
  {
    if (v11 == 6)
    {
      context = v9;
      goto LABEL_8;
    }

    if (v11 != 1)
    {
      [a5 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D930], @"this should be inside a fetch or an update", 0), @"NSUnderlyingException"}];
      objc_autoreleasePoolPop(v9);
      v28 = 0;
LABEL_39:
      v38 = *MEMORY[0x1E69E9840];
      return v28;
    }
  }

  context = v9;
  if (!v6)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([v10 returnsDistinctResults] & 1) != 0 || (v30 = -[NSSQLIntermediate fetchIntermediate](self, "fetchIntermediate")) == 0)
  {
    v12 = 1;
  }

  else
  {
    v31 = v30[8];
    v12 = 1;
    if (v31)
    {
      *(v31 + 48) = 1;
    }
  }

LABEL_9:
  v13 = [(NSSQLIntermediate *)self governingEntityForKeypathExpression:a3];
  v14 = [(NSSQLIntermediate *)self governingAliasForKeypathExpression:a3];
  v15 = [objc_msgSend(objc_msgSend(a3 "arguments")];
  v16 = [v15 componentsSeparatedByString:@"."];
  v74 = 0;
  v17 = [(NSSQLKeypathExpressionIntermediate *)self _propertyDescriptionForKeypath:v16 startingAtEntity:v13 allowToMany:v12 allowToOne:1 lastKeyVisited:&v74 inContext:a5];
  if ([objc_msgSend(v17 "propertyDescription")] != 7)
  {
    v18 = [v17 propertyDescription];
    if ((!v18 || ![v18 superCompositeAttribute]) && -[NSSQLIntermediate isUpdateScoped](self, "isUpdateScoped") && objc_msgSend(v16, "count") >= 2)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = @"keypaths (joins) not supported in batch update statements";
LABEL_34:
      v35 = 0;
LABEL_35:
      v36 = [v19 exceptionWithName:v20 reason:v21 userInfo:v35];
      v37 = @"NSUnderlyingException";
LABEL_36:
      [a5 setObject:v36 forKey:v37];
LABEL_37:
      v28 = 0;
LABEL_38:
      objc_autoreleasePoolPop(context);
      goto LABEL_39;
    }
  }

  v22 = [(NSSQLIntermediate *)self disambiguatingEntity];
  if (v17 || (v23 = v22) == 0)
  {
    v23 = v13;
    goto LABEL_22;
  }

  v24 = [(NSSQLIntermediate *)self disambiguationKeypath];
  if (![(NSArray *)v24 count])
  {
    v74 = 0;
    v29 = [(NSSQLKeypathExpressionIntermediate *)self _propertyDescriptionForKeypath:v16 startingAtEntity:v23 allowToMany:v12 allowToOne:1 lastKeyVisited:&v74 inContext:a5];
    if (v29)
    {
      v17 = v29;
      v13 = v23;
      goto LABEL_54;
    }

    v74 = 0;
    v42 = [(NSSQLKeypathExpressionIntermediate *)self _propertyDescriptionsForKeypath:v16 rootedAtEntity:v23 allowToMany:v12 allowToOne:1 lastKeyVisited:&v74 inContext:a5];
    if (v42)
    {
      v43 = v42;
      if ([v42 count] == 1)
      {
        v17 = [v43 anyObject];
LABEL_22:
        v13 = v23;
        if (v17)
        {
          goto LABEL_54;
        }

        goto LABEL_23;
      }

      if ([v43 count] >= 2)
      {
        v44 = MEMORY[0x1E695DF30];
        v45 = *MEMORY[0x1E695D940];
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ambiguous keypath %@", self->super._expression];
        v77 = @"found";
        v78[0] = [v43 valueForKey:@"propertyDescription"];
        v47 = MEMORY[0x1E695DF20];
        v48 = v78;
        v49 = &v77;
        goto LABEL_113;
      }
    }

    else if ([a5 valueForKey:@"NSUnderlyingException"])
    {
      goto LABEL_37;
    }

LABEL_23:
    v74 = 0;
    v26 = -[NSSQLKeypathExpressionIntermediate _propertyDescriptionsForKeypath:rootedAtEntity:allowToMany:allowToOne:lastKeyVisited:inContext:](self, v16, v13, v12, [v16 count] < 2, &v74, a5);
    if (!v26)
    {
      if (v23 && *(v23 + 184) == 16001 && [v15 isEqualToString:@"changedObjectID"])
      {
        [a5 setValue:&unk_1EF435E00 forKey:@"generatePairs"];
        v40 = [*(v23 + 40) objectForKey:@"ENTITY"];
        v41 = [*(v23 + 40) objectForKey:@"ENTITYPK"];
        v28 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(%@, %@)", objc_msgSend(v40, "columnName"), objc_msgSend(v41, "columnName")];
        goto LABEL_38;
      }

      v17 = 0;
      v28 = 0;
      if ([a5 valueForKey:@"NSUnderlyingException"])
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

    v27 = v26;
    if ([v26 count] == 1)
    {
      v17 = [v27 anyObject];
      goto LABEL_54;
    }

    if ([v27 count] < 2)
    {
      v17 = 0;
      goto LABEL_54;
    }

    v44 = MEMORY[0x1E695DF30];
    v45 = *MEMORY[0x1E695D940];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous keypath %@", self->super._expression];
    v75 = @"found";
    v76 = [v27 valueForKey:@"propertyDescription"];
    v47 = MEMORY[0x1E695DF20];
    v48 = &v76;
    v49 = &v75;
LABEL_113:
    v35 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
    v19 = v44;
    v20 = v45;
    v21 = v46;
    goto LABEL_35;
  }

  if (![v15 hasPrefix:{-[NSArray componentsJoinedByString:](v24, "componentsJoinedByString:", @"."}])
  {
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid keypath %@", self->super._expression];
LABEL_33:
    v21 = v34;
    v19 = v32;
    v20 = v33;
    goto LABEL_34;
  }

  v25 = -[NSSQLKeypathExpressionIntermediate _propertyDescriptionForKeypath:startingAtEntity:allowToMany:allowToOne:lastKeyVisited:inContext:](self, [v16 subarrayWithRange:{-[NSArray count](v24, "count"), objc_msgSend(v16, "count") - -[NSArray count](v24, "count")}], v23, v12 & !-[NSSQLIntermediate disambiguationKeypathHasToMany](self, "disambiguationKeypathHasToMany"), 1, &v74, a5);
  if (!v25)
  {
    if ([a5 objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_37;
    }

    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid keypath : %@", self->super._expression];
    goto LABEL_33;
  }

  v17 = v25;
  v23 = v13;
LABEL_54:
  v50 = [v17 propertyType];
  v51 = [v23 entityDescription];
  if (v50 > 0xA)
  {
    goto LABEL_83;
  }

  if (((1 << v50) & 0x42E) != 0)
  {
    goto LABEL_63;
  }

  if (((1 << v50) & 0x300) != 0)
  {
    v52 = [v17 entity];
    if (v52)
    {
      v17 = *(v52 + 128);
      if (!self)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v17 = 0;
      if (!self)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_64;
  }

  if (v50 != 7)
  {
LABEL_83:
    v62 = [v16 firstObject];
    if (v62 && (v63 = [objc_msgSend(v51 "propertiesByName")]) != 0)
    {
      v64 = [v63 isTransient];
    }

    else
    {
      v64 = 0;
    }

    if ([a5 objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_37;
    }

    [a5 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"keypath %@ not found in entity %@", a3, objc_msgSend(v13, "name")), 0), @"NSUnderlyingException"}];
    if (!v64)
    {
      goto LABEL_37;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v37 = @"LastKeyPathWasTransientProperty";
    goto LABEL_36;
  }

  if (![(NSSQLIntermediate *)self isTargetColumnsScoped])
  {
    v17 = [v17 foreignKey];
  }

LABEL_63:
  if (!self)
  {
    goto LABEL_74;
  }

LABEL_64:
  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    v53 = [a5 objectForKey:@"outerFetch"];
  }

  else
  {
    v53 = [(NSSQLIntermediate *)self fetchIntermediateForKeypathExpression:self->super._expression];
  }

  v54 = [NSSQLJoinIntermediate createJoinIntermediatesForKeypath:v16 startEntity:v13 startAlias:v14 forScope:self inStatementIntermediate:v53 inContext:a5];
  if (![(NSSQLIntermediate *)self isUpdateScoped])
  {
    if ([a5 objectForKey:@"NSUnderlyingException"])
    {

      goto LABEL_74;
    }

    if (v54 && *(v54 + 56) == 1)
    {
      v58 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
      [v58 appendString:v54[5]];
      [v58 appendString:@"."];
      v61 = [(NSSQLManyToMany *)v54[2] inverseColumnName];
    }

    else
    {
      if (-[NSSQLIntermediate isTargetColumnsScoped](self, "isTargetColumnsScoped") && [v17 propertyType] == 7)
      {
        if (v54)
        {
          v14 = v54[4];
        }

        v58 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
        v65 = [v17 destinationEntity];
        if (v65)
        {
          v66 = *(v65 + 152);
          if (v66)
          {
            if ([v66 count])
            {
              [v58 appendString:v14];
              [v58 appendString:@"."];
              if (v17)
              {
                v67 = *(v17 + 9);
              }

              else
              {
                v67 = 0;
              }

              [v58 appendString:{objc_msgSend(v67, "columnName")}];
              [v58 appendString:{@", "}];
            }
          }
        }

        [v58 appendString:v14];
        [v58 appendString:@"."];
        [v58 appendString:{objc_msgSend(objc_msgSend(v17, "foreignKey"), "columnName")}];
        [a5 setObject:v17 forKey:@"keypathExpressionDestinationRelationship"];
        goto LABEL_117;
      }

      v58 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
      if (![a5 objectForKeyedSubscript:@"fabricatedSQLEntityForReadOnlyFetch"] || (v68 = objc_msgSend(a5, "objectForKeyedSubscript:", @"fabricatedSQLEntityForReadOnlyFetch"), v68 != objc_msgSend(v17, "entity")))
      {
        if (v54)
        {
          v14 = v54[4];
        }

        [v58 appendString:v14];
        [v58 appendString:@"."];
      }

      if (*(&self->super._allowToMany + 1))
      {
        v69 = @"Z_PK";
LABEL_116:
        [v58 appendString:v69];
LABEL_117:

        goto LABEL_122;
      }

      v61 = [v17 columnName];
    }

    v69 = v61;
    goto LABEL_116;
  }

  if (!v54)
  {
    v58 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v59 = [v17 propertyType];
    if ((v59 - 1) >= 3)
    {
      if (v59 == 7)
      {
        if (v17)
        {
          v70 = *(v17 + 9);
        }

        else
        {
          v70 = 0;
        }

        goto LABEL_120;
      }

      if (v59 != 5)
      {

        if ([a5 objectForKey:@"NSUnderlyingException"])
        {
          goto LABEL_74;
        }

        v55 = MEMORY[0x1E695DF30];
        v56 = *MEMORY[0x1E695D940];
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported property %@ in update", v17];
        goto LABEL_71;
      }
    }

    if (*(&self->super._allowToMany + 1))
    {
      v60 = @"Z_PK";
LABEL_121:
      [v58 appendString:v60];
      goto LABEL_122;
    }

    v70 = v17;
LABEL_120:
    v60 = [v70 columnName];
    goto LABEL_121;
  }

  if (![a5 objectForKey:@"NSUnderlyingException"])
  {
    v55 = MEMORY[0x1E695DF30];
    v56 = *MEMORY[0x1E695D940];
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported property %@ in update - no joins allowed here", v17];
LABEL_71:
    [a5 setObject:objc_msgSend(v55 forKey:{"exceptionWithName:reason:userInfo:", v56, v57, 0), @"NSUnderlyingException"}];
  }

LABEL_74:
  v58 = 0;
LABEL_122:
  v71 = v58;
  objc_autoreleasePoolPop(context);
  v72 = *MEMORY[0x1E69E9840];

  return v58;
}

- (id)generateSQLStringInContext:(id)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_6;
  }

  v5 = [-[NSArray objectAtIndex:](-[NSExpression arguments](self->super._expression "arguments")];
  [v5 rangeOfString:@".@"];
  if (v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keypath containing KVC aggregate where there shouldn't be one; failed to handle %@", self->super._expression];
LABEL_4:
    v10 = v9;
    v11 = v7;
    v12 = v8;
    v13 = 0;
LABEL_5:
    [a3 setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, v10, v13), @"NSUnderlyingException"}];
LABEL_6:
    v14 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if ([(NSSQLIntermediate *)self isIndexScoped])
  {
    v16 = [(NSSQLIntermediate *)self governingEntity];
    if (!v16 || (v17 = [v16[5] objectForKey:v5]) == 0)
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D930];
      expression = self->super._expression;
      v43 = @"expression";
      v44[0] = expression;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v10 = @"Bad keypath: can't find property";
      goto LABEL_32;
    }

    v18 = v17;
    if ((*(v17 + 32) & 0x20) == 0)
    {
      [v5 rangeOfString:@"."];
      if (v19)
      {
        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D930];
        v22 = self->super._expression;
        v41 = @"expression";
        v42 = v22;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v10 = @"Bad keypath: too many joins for an index";
LABEL_32:
        v11 = v20;
        v12 = v21;
        goto LABEL_5;
      }
    }

    v31 = v18[24];
    if (v31 != 1)
    {
      if ((v31 - 7) >= 3)
      {
        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D930];
        v36 = self->super._expression;
        v39 = @"expression";
        v40 = v36;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v10 = @"Unable to generate SQL for keypath";
        goto LABEL_32;
      }

      if (v31 != 7)
      {
        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D930];
        v35 = self->super._expression;
        v37 = @"expression";
        v38 = v35;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v10 = @"Bad keypath: indexes may not contain to many relationshps";
        goto LABEL_32;
      }
    }

    v32 = [v18 columnName];
    v33 = *MEMORY[0x1E69E9840];

    return [v32 mutableCopy];
  }

  else
  {
    if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
    {
      v23 = [(NSSQLIntermediate *)self fetchIntermediate];
      if (v23 && v23[9] && ![(NSSQLIntermediate *)self isFunctionScoped]&& ([(NSSQLFetchIntermediate *)[(NSSQLIntermediate *)self fetchIntermediate] groupByClauseContainsKeypath:?]& 1) == 0)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT clauses in queries with GROUP BY components can only contain properties named in the GROUP BY or aggregate functions (%@ is not in the GROUP BY)", self->super._expression];
        goto LABEL_4;
      }

      v24 = self->super._expression;
      v25 = [(NSSQLIntermediate *)self isFunctionScoped];
      v26 = *MEMORY[0x1E69E9840];
      allowToMany = v25;
      v28 = self;
      v29 = v24;
    }

    else
    {
      v29 = self->super._expression;
      allowToMany = self->super._allowToMany;
      v30 = *MEMORY[0x1E69E9840];
      v28 = self;
    }

    return [(NSSQLKeypathExpressionIntermediate *)v28 _generateSQLForKeyPathExpression:v29 allowToMany:allowToMany inContext:a3];
  }
}

@end