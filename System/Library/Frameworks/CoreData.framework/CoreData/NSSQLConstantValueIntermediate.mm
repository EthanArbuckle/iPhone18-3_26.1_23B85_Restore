@interface NSSQLConstantValueIntermediate
- (BOOL)_addBindVarForConstId:(uint64_t)a3 ofType:(void *)a4 inContext:;
- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)a3 inScope:(id)a4 context:(id)a5;
- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)a3 ofType:(unsigned __int8)a4 inScope:(id)a5 context:(id)a6;
- (id)generateSQLStringInContext:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLConstantValueIntermediate

- (void)dealloc
{
  self->_constantValue = 0;
  v3.receiver = self;
  v3.super_class = NSSQLConstantValueIntermediate;
  [(NSSQLConstantValueIntermediate *)&v3 dealloc];
}

- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)a3 ofType:(unsigned __int8)a4 inScope:(id)a5 context:(id)a6
{
  v10 = [(NSSQLConstantValueIntermediate *)self initWithConstantValue:a3 inScope:a5 context:a6];
  v11 = v10;
  if (v10)
  {
    v10->_type = a4;
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v12 = _sqlCoreLookupSQLEntityForEntityDescription([a6 objectForKey:@"persistentStore"], a3);
      v13 = [a6 objectForKey:@"entitySpecificationKeypath"];
      if (v13)
      {
        [a5 setDisambiguatingEntity:v12 withKeypath:v13 hasToMany:{objc_msgSend(objc_msgSend(a6, "objectForKey:", @"entitySpecificationKeypathContainsToMany", "BOOLValue")}];
      }
    }
  }

  return v11;
}

- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)a3 inScope:(id)a4 context:(id)a5
{
  v12.receiver = self;
  v12.super_class = NSSQLConstantValueIntermediate;
  v8 = [(NSSQLIntermediate *)&v12 initWithScope:a4];
  if (v8)
  {
    v8->_constantValue = a3;
    v8->_type = 0;
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v9 = _sqlCoreLookupSQLEntityForEntityDescription([a5 objectForKey:@"persistentStore"], a3);
      v10 = [a5 objectForKey:@"entitySpecificationKeypath"];
      if (v10)
      {
        [a4 setDisambiguatingEntity:v9 withKeypath:v10 hasToMany:{objc_msgSend(objc_msgSend(a5, "objectForKey:", @"entitySpecificationKeypathContainsToMany", "BOOLValue")}];
      }
    }
  }

  return v8;
}

- (BOOL)_addBindVarForConstId:(uint64_t)a3 ofType:(void *)a4 inContext:
{
  if (a1)
  {
    if ([a1 isTargetColumnsScoped])
    {
      v8 = @"selectBindVars";
    }

    else
    {
      v8 = @"bindVars";
    }

    v9 = [a4 objectForKey:v8];
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v10 = _sqlCoreLookupSQLEntityForEntityDescription([a4 objectForKey:@"persistentStore"], a2);
      if (v10)
      {
        v11 = *(v10 + 184);
      }

      else
      {
        v11 = 0;
      }

      a2 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    }

    v12 = a1[1];
    objc_opt_class();
    v13 = [[NSSQLBindVariable alloc] initWithValue:a2 sqlType:a3 propertyDescription:0 allowCoercion:(objc_opt_isKindOfClass() & 1) == 0];
    [v9 addObject:v13];
  }

  return a1 != 0;
}

- (id)generateSQLStringInContext:(id)a3
{
  v85[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if ([(NSSQLIntermediate *)self isIndexScoped])
  {
    if (!self->_constantValue || (v6 = [MEMORY[0x1E695DFB0] null], v7 = self->_constantValue, v6 == v7))
    {
      v10 = @"nil";
    }

    else
    {
      v8 = [v7 isNSNumber];
      constantValue = self->_constantValue;
      if (v8)
      {
        v10 = [constantValue description];
      }

      else if ([constantValue isNSString])
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", self->_constantValue];
      }

      else if ([self->_constantValue isNSDate])
      {
        v38 = MEMORY[0x1E696AEC0];
        [self->_constantValue timeIntervalSinceReferenceDate];
        v10 = [v38 stringWithFormat:@"%f", v39];
      }

      else
      {
        v40 = *MEMORY[0x1E695D940];
        v41 = self->_constantValue;
        v81 = @"valueSpecified";
        v82 = v41;
        [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v40, @"Can't specify non string/number/date value as part of index", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v82, &v81, 1)), @"NSUnderlyingException"}];
        v10 = 0;
      }
    }

    goto LABEL_90;
  }

  type = self->_type;
  v12 = self->_constantValue;
  if (!self->_type)
  {
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v12 objectID];
        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_17:
        if (([v15 isTemporaryID] & 1) == 0 && (v16 = objc_msgSend(v15, "persistentStore"), v16 == objc_msgSend(a3, "objectForKey:", @"persistentStore")))
        {
          if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
          {
            v42 = @"selectBindVars";
          }

          else
          {
            v42 = @"bindVars";
          }

          v18 = [a3 objectForKey:v42];
          if ([objc_msgSend(a3 objectForKey:{@"generatePairs", "BOOLValue"}])
          {
            v43 = [objc_msgSend(a3 objectForKey:{@"persistentStore", "model"}];
            if (v43)
            {
              v44 = *(v43 + 24);
            }

            else
            {
              v44 = 0;
            }

            v45 = [v44 objectForKey:{objc_msgSend(v15, "entityName")}];
            v46 = [NSSQLBindVariable alloc];
            if (v45)
            {
              v47 = *(v45 + 184);
            }

            else
            {
              v47 = 0;
            }

            v48 = [(NSSQLBindVariable *)v46 initWithInt64:v47 sqlType:2];
            [v18 addObject:v48];
          }

          v20 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", [v15 _referenceData64], 2);
        }

        else
        {
          if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
          {
            v17 = @"selectBindVars";
          }

          else
          {
            v17 = @"bindVars";
          }

          v18 = [a3 objectForKey:v17];
          v19 = [NSSQLBindVariable alloc];
          v20 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v19, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithLongLong:0], 2, 0);
        }

        v21 = v20;
        [v18 addObject:v20];

        v22 = 1;
        goto LABEL_83;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v12;
        goto LABEL_17;
      }
    }

LABEL_24:
    v23 = -[NSSQLiteAdapter sqlTypeForExpressionConstantValue:]([objc_msgSend(a3 objectForKey:{@"persistentStore", "adapter"}], v12);
    v24 = [(NSSQLIntermediate *)self->super._scope _lastScopedItem];
    if (!v24)
    {
      goto LABEL_73;
    }

    v25 = v24;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([objc_opt_class() isSimpleKeypath:v25] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v25))
    {
      goto LABEL_73;
    }

    v26 = [objc_msgSend(objc_msgSend(v25 "arguments")];
    v27 = [(NSSQLIntermediate *)self governingEntityForKeypathExpression:v25];
    v28 = [v26 componentsSeparatedByString:@"."];
    v29 = [v28 count];
    v80 = v5;
    v79 = v23;
    if (v29)
    {
      v30 = v29;
      v31 = [v28 objectAtIndex:0];
      if (v27)
      {
        v32 = 1;
        while (1)
        {
          v33 = [v27[5] objectForKey:v31];
          if (!v33)
          {
            break;
          }

          v34 = v33;
          v35 = v33[24];
          v37 = v30 != v32 && v35 == 7;
          if (v35 == 9 || v37 || [v33 isToMany])
          {
            v27 = [v34 destinationEntity];
          }

          if (v30 == v32)
          {
            goto LABEL_61;
          }

          v31 = [v28 objectAtIndex:v32++];
          if (!v27)
          {
            goto LABEL_44;
          }
        }

        if ([@"entity" isEqual:v31])
        {
          v34 = v27[17];
          goto LABEL_61;
        }
      }

      else
      {
LABEL_44:
        [@"entity" isEqual:v31];
      }
    }

    v34 = 0;
LABEL_61:
    v49 = [v34 propertyType];
    v5 = v80;
    if (v49 > 9)
    {
      goto LABEL_112;
    }

    if (((1 << v49) & 0x38C) != 0)
    {
      v23 = 2;
LABEL_64:
      if ([MEMORY[0x1E695DFB0] null] == v12)
      {
        v12 = 0;
      }

      if (v23)
      {
        if (v23 == 7 && v79 == 8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = MEMORY[0x1E696AD98];
            [v12 timeIntervalSinceReferenceDate];
            v12 = [v50 numberWithDouble:?];
          }

          v23 = 7;
        }
      }

      else
      {
        v23 = v79;
      }

LABEL_73:
      v51 = [objc_msgSend(a3 valueForKey:{@"explicitRestrictingEntityQualifier", "lastObject"}];
      if ([v51 isEqual:MEMORY[0x1E695E118]])
      {
        v52 = [a3 valueForKey:@"persistentStore"];
        v53 = [v52 model];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = _sqlEntityForEntityDescription(v53, v12);
          if (!v54)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        if ([v12 isNSString])
        {
          v55 = [v53 entityNamed:v12];
          if (!v55)
          {
            if (v53)
            {
              v63 = v53[3];
            }

            else
            {
              v63 = 0;
            }

            v64 = [v63 allKeys];
            v65 = MEMORY[0x1E695E0F0];
            if (v64)
            {
              v66 = v64;
            }

            else
            {
              v66 = MEMORY[0x1E695E0F0];
            }

            v67 = [v52 identifier];
            if (v67)
            {
              v68 = v67;
            }

            else
            {
              v68 = @"no store ID";
            }

            v69 = [v52 configurationName];
            if (v69)
            {
              v70 = v69;
            }

            else
            {
              v70 = @"no config";
            }

            v71 = [objc_msgSend(v53 "managedObjectModel")];
            if (v71)
            {
              v65 = [v71 valueForKey:@"name"];
            }

            v83[0] = @"KnownEntities";
            v83[1] = @"StoreID";
            v84[0] = v66;
            v84[1] = v68;
            v83[2] = @"Configuration";
            v83[3] = @"ConfigurationEntities";
            v84[2] = v70;
            v84[3] = v65;
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:4];
            if (![objc_msgSend(objc_msgSend(v53 "managedObjectModel")] || (objc_msgSend(v65, "containsObject:", v12) & 1) != 0 || (v73 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ is not in current configuration - %@.", v12, v70)) == 0)
            {
              v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a valid entity name.", v73, v12];
            }

            [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D930], v73, v72), @"NSUnderlyingException"}];
            v22 = 0;
            goto LABEL_83;
          }

          v54 = v55;
          v12 = [v55 entityDescription];
LABEL_80:
          v56 = [a3 valueForKey:@"explicitRestrictingEntityQualifier"];
          [v56 replaceObjectAtIndex:objc_msgSend(v56 withObject:{"indexOfObject:", v51), v54}];
        }
      }

LABEL_81:
      v13 = self;
      v14 = v12;
      type = v23;
      goto LABEL_82;
    }

    if (v49 != 1)
    {
      if (v49 == 5)
      {
        v23 = 1;
        goto LABEL_64;
      }

LABEL_112:
      v23 = 0;
      goto LABEL_64;
    }

    v74 = [v34 sqlType];
    if (v74 != 18)
    {
      v23 = v74;
      if (v74 == 15)
      {
        v12 = +[_PFRoutines retainedEncodeObjectValue:forTransformableAttribute:](_PFRoutines, v12, [v34 propertyDescription]);
        v23 = 10;
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v75 = [v34 propertyDescription];
    v84[0] = 0;
    if (v12)
    {
      v76 = [v75 encode:v12 withRegistry:objc_msgSend(objc_msgSend(objc_msgSend(a3 error:{"valueForKey:", @"persistentStore", "persistentStoreCoordinator"), "codableAdapterRegistry"), v84}];
      if (v76)
      {
        v23 = 10;
        v12 = v76;
        goto LABEL_73;
      }

      v77 = v84[0];
      if (v84[0])
      {
        v85[0] = *MEMORY[0x1E696AA08];
        v83[0] = v84[0];
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v85 count:1];
        v77 = v84[0];
LABEL_126:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Failed to encode %@: %@", v12, v77), v78}]);
      }
    }

    else
    {
      v77 = 0;
    }

    v78 = 0;
    goto LABEL_126;
  }

  v13 = self;
  v14 = self->_constantValue;
LABEL_82:
  v22 = [(NSSQLConstantValueIntermediate *)v13 _addBindVarForConstId:v14 ofType:type inContext:a3];
LABEL_83:
  v57 = [objc_msgSend(a3 objectForKey:{@"generatePairs", "BOOLValue"}];
  v58 = @"(?, ?)";
  if (!v22)
  {
    v58 = 0;
  }

  v59 = @"?";
  if (!v22)
  {
    v59 = 0;
  }

  if (v57)
  {
    v10 = v58;
  }

  else
  {
    v10 = v59;
  }

LABEL_90:
  v60 = [(__CFString *)v10 mutableCopy];
  objc_autoreleasePoolPop(v5);
  v61 = *MEMORY[0x1E69E9840];
  return v60;
}

@end