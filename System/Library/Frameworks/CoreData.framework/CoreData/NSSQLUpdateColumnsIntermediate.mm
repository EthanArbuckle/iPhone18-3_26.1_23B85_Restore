@interface NSSQLUpdateColumnsIntermediate
- (NSSQLConstantValueIntermediate)_generateSQLForAttributeUpdate:(uint64_t)a3 value:(void *)a4 inContext:;
- (NSSQLUpdateColumnsIntermediate)initWithPropertiesToUpdate:(id)a3 inScope:(id)a4;
- (id)generateSQLStringInContext:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLUpdateColumnsIntermediate

- (void)dealloc
{
  self->_propertiesToUpdate = 0;
  v3.receiver = self;
  v3.super_class = NSSQLUpdateColumnsIntermediate;
  [(NSSQLUpdateColumnsIntermediate *)&v3 dealloc];
}

- (NSSQLUpdateColumnsIntermediate)initWithPropertiesToUpdate:(id)a3 inScope:(id)a4
{
  v7.receiver = self;
  v7.super_class = NSSQLUpdateColumnsIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:a4];
  if (v5)
  {
    v5->_propertiesToUpdate = a3;
  }

  return v5;
}

- (NSSQLConstantValueIntermediate)_generateSQLForAttributeUpdate:(uint64_t)a3 value:(void *)a4 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ ", objc_msgSend(a2, "columnName")];
  v9 = -[NSSQLConstantValueIntermediate initWithConstantValue:ofType:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:ofType:inScope:context:", a3, [a2 sqlType], a1, a4);
  v10 = [(NSSQLConstantValueIntermediate *)v9 generateSQLStringInContext:a4];
  if (v10)
  {
    v11 = v10;
    [(NSSQLConstantValueIntermediate *)v8 appendFormat:@"= %@", v10];
  }

  else
  {
    if (![a4 objectForKey:@"NSUnderlyingException"])
    {
      [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Can't generate new column value from value: %@", a3), 0), @"NSUnderlyingException"}];
    }

    v9 = v8;
    v8 = 0;
  }

  return v8;
}

- (id)generateSQLStringInContext:(id)a3
{
  v116 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [a3 objectForKey:@"entity"];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = self->_propertiesToUpdate;
  v107 = [(NSDictionary *)obj countByEnumeratingWithState:&v110 objects:v115 count:16];
  if (!v107)
  {
    goto LABEL_100;
  }

  v7 = 0;
  v104 = self;
  v105 = *v111;
  v8 = 0x1E696A000uLL;
  do
  {
    v9 = 0;
    v10 = v7;
    v99 = v107 + v7;
    do
    {
      if (*v111 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v110 + 1) + 8 * v9);
      v108 = v10;
      if (v10)
      {
        [v5 appendString:{@", "}];
      }

      v12 = [(NSDictionary *)self->_propertiesToUpdate objectForKey:v11];
      v13 = [v11 _propertyType];
      v14 = [v11 _qualifiedName];
      if (!v6 || (v15 = [v6[5] objectForKey:v14]) == 0)
      {
        v66 = MEMORY[0x1E695DF30];
        v67 = *MEMORY[0x1E695D940];
        v68 = a3;
        v69 = [*(v8 + 3776) stringWithFormat:@"Can't find property %@ on entity %@", objc_msgSend(v11, "name"), objc_msgSend(v6, "entityDescription")];
        goto LABEL_108;
      }

      v16 = v15;
      v17 = [v15 propertyType];
      if (v17 == 1)
      {
        if ([objc_msgSend(v16 "propertyDescription")] == 6)
        {
          v66 = MEMORY[0x1E695DF30];
          v67 = *MEMORY[0x1E695D940];
          v68 = a3;
          v69 = [*(v8 + 3776) stringWithFormat:@"Invalid property for update (can't batch update derived attributes) %@/%@", objc_msgSend(v11, "name"), objc_msgSend(v6, "entityDescription")];
          goto LABEL_108;
        }
      }

      else if (v17 != 7)
      {
        v66 = MEMORY[0x1E695DF30];
        v67 = *MEMORY[0x1E695D940];
        v68 = a3;
        v69 = [*(v8 + 3776) stringWithFormat:@"Invalid property for update (not an attribute or a to one) %@/%@", objc_msgSend(v11, "name"), objc_msgSend(v6, "entityDescription")];
LABEL_108:
        v70 = [v66 exceptionWithName:v67 reason:v69 userInfo:0];
        v71 = v68;
        goto LABEL_133;
      }

      v18 = [v12 expressionType];
      if (v18 > 9)
      {
        if (v18 == 10)
        {
          goto LABEL_30;
        }

        if (v18 == 13)
        {
          v106 = v12;
          v41 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v12 trailingKeypath:0 inScope:self];
          v42 = [(NSSQLSubqueryExpressionIntermediate *)v41 generateSQLStringInContext:a3];

          if (!v42)
          {
            v12 = v106;
            if (![a3 objectForKey:@"NSUnderlyingException"])
            {
              v81 = MEMORY[0x1E695DF30];
              v82 = *MEMORY[0x1E695D940];
              v83 = [*(v8 + 3776) stringWithFormat:@"Unable to generate sql for update expression %@", v106, v97];
              goto LABEL_128;
            }

            goto LABEL_130;
          }

          v19 = [objc_msgSend(v16 "columnName")];
          [(NSSQLConstantValueIntermediate *)v19 appendString:@" = "];
          [(NSSQLConstantValueIntermediate *)v19 appendString:v42];

          v12 = v106;
          goto LABEL_55;
        }

        if (v18 != 50)
        {
LABEL_109:
          v72 = MEMORY[0x1E695DF30];
          v73 = v12;
          v74 = *MEMORY[0x1E695D940];
          v75 = [*(v8 + 3776) stringWithFormat:@"Invalid expression (%@) in propertiesToUpdate", v73];
          goto LABEL_132;
        }

        v22 = [v12 expressionValueWithObject:0 context:0];
        if (!v22)
        {
          v72 = MEMORY[0x1E695DF30];
          v84 = v12;
          v74 = *MEMORY[0x1E695D940];
          v75 = [*(v8 + 3776) stringWithFormat:@"Fetch request expression evaluation (%@) failed", v84];
          goto LABEL_132;
        }

        v23 = v22;
        if (![v22 isNSArray])
        {
          goto LABEL_91;
        }

        v24 = [v23 count];
        if (v24)
        {
          if (v24 != 1)
          {
            goto LABEL_145;
          }

          v23 = [v23 lastObject];
          objc_opt_class();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v23 objectID];
            goto LABEL_76;
          }

          objc_opt_class();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_76:
            self = v104;
LABEL_91:
            if (v13 == 4)
            {
              v106 = v12;
              v81 = MEMORY[0x1E695DF30];
              v82 = *MEMORY[0x1E695D940];
              v83 = [*(v8 + 3776) stringWithFormat:@"Can't generate new column values for %@ - incompatible destination: %@", objc_msgSend(v16, "name"), v23];
              goto LABEL_128;
            }

            v19 = [(NSSQLUpdateColumnsIntermediate *)self _generateSQLForAttributeUpdate:v16 value:v23 inContext:a3];
            if (!v19)
            {
              goto LABEL_130;
            }

            goto LABEL_93;
          }

          self = v104;
          if ([v23 isNSDictionary] && objc_msgSend(v23, "count"))
          {
            if ([v23 count] != 1)
            {
LABEL_145:
              v72 = MEMORY[0x1E695DF30];
              v96 = v12;
              v74 = *MEMORY[0x1E695D940];
              v75 = [*(v8 + 3776) stringWithFormat:@"Invalid fetch expression (%@) in propertiesToUpdate - fetch has multiple results", v96];
              goto LABEL_132;
            }

            memset(v109, 0, sizeof(v109));
            if ([v23 countByEnumeratingWithState:v109 objects:v114 count:16])
            {
              v23 = [v23 objectForKey:**(&v109[0] + 1)];
              goto LABEL_91;
            }
          }
        }

        v23 = 0;
        goto LABEL_91;
      }

      if (v18)
      {
        if (v18 != 3)
        {
          if (v18 != 4)
          {
            goto LABEL_109;
          }

          if (v13 == 4)
          {
            v72 = MEMORY[0x1E695DF30];
            v76 = v12;
            v74 = *MEMORY[0x1E695D940];
            v75 = [*(v8 + 3776) stringWithFormat:@"Invalid value expression (%@) in propertiesToUpdate : what does it mean to update a relationship to the result of a function?", v76];
            goto LABEL_132;
          }

          v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ ", objc_msgSend(v16, "columnName")];
          v20 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:0 inContext:a3];
          if (!v20)
          {
            if (![a3 objectForKey:@"NSUnderlyingException"])
            {
              [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(*(v8 + 3776), "stringWithFormat:", @"Fetch request expression evaluation (%@) failed", v12), 0), @"NSUnderlyingException"}];
            }

LABEL_134:
LABEL_135:
            v5 = 0;
            goto LABEL_136;
          }

          v21 = v20;
          [(NSSQLConstantValueIntermediate *)v19 appendFormat:@" = %@", v20];

LABEL_55:
          self = v104;
          if (!v19)
          {
            goto LABEL_130;
          }

          goto LABEL_93;
        }

LABEL_30:
        v106 = v12;
        v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "arguments")];
        if ([v25 count] != 1)
        {
          v100 = v6;
          v101 = a3;
          v102 = v5;
          v32 = [objc_msgSend(a3 objectForKey:{@"entity", "entityDescription"}];
          v33 = [v25 count] - 1;
          v98 = [objc_msgSend(v25 "lastObject")];
          v34 = 0;
          v35 = 0;
          v36 = v33;
          while (1)
          {
            v37 = [v25 objectAtIndex:v34];
            if (!v32)
            {
              break;
            }

            v38 = [objc_msgSend(v32 "propertiesByName")];
            if (!v38)
            {
              break;
            }

            v39 = v38;
            if ([v38 _isAttribute])
            {
              if (!v36 || ((v36 == 1) & v98) != 0)
              {
                goto LABEL_64;
              }

              v95 = @"Can't generate SQL for keypath %@ : invalid attribute name location";
LABEL_103:
              a3 = v101;
              v5 = v102;
              v8 = 0x1E696A000uLL;
LABEL_104:
              [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(*(v8 + 3776), "stringWithFormat:", v95, objc_msgSend(v25, "componentsJoinedByString:", @".", 0), @"NSUnderlyingException"}];
              v12 = v106;
              goto LABEL_105;
            }

            if ([v39 _isRelationship])
            {
              v32 = [v39 destinationEntity];
              v40 = [v39 isToMany];
              if (v40 & v35)
              {
                v95 = @"Can't generate SQL for keypath %@ : multiple to many keypath components";
                goto LABEL_103;
              }

              v35 |= v40;
            }

            ++v34;
            --v36;
            if (v34 > v33)
            {
              goto LABEL_64;
            }
          }

          if (![v37 hasPrefix:@"@"])
          {
            a3 = v101;
            v5 = v102;
            v8 = 0x1E696A000;
            v95 = @"Can't generate SQL for keypath %@ : invalid keypath";
            goto LABEL_104;
          }

          if (v36)
          {
            v95 = @"Can't generate SQL for keypath %@ : invalid location of keypath aggregate function";
            goto LABEL_103;
          }

LABEL_64:
          v43 = [objc_opt_class() _newKeyPathExpressionForString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @".%@", objc_msgSend(v25, "lastObject"))}];
          v44 = [objc_msgSend(v25 subarrayWithRange:{0, objc_msgSend(v25, "count") - 1), "componentsJoinedByString:", @"."}];
          v45 = [(NSSQLIntermediate *)v104->super._scope governingAlias];
          a3 = v101;
          if (!v45)
          {
            v45 = -[NSSQLAliasGenerator generateVariableAlias]([v101 objectForKey:@"aliasGenerator"]);
          }

          v46 = MEMORY[0x1E696ABC8];
          v47 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v44];
          v48 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [v46 expressionForSubquery:v47 usingIteratorVariable:v45 predicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithValue:", 1)}], v43, v104);

          v49 = [(NSSQLSubqueryExpressionIntermediate *)v48 generateSQLStringInContext:v101];
          v6 = v100;
          if (v49)
          {
            v19 = [objc_msgSend(v16 "columnName")];
            [(NSSQLConstantValueIntermediate *)v19 appendString:@" = "];
            [(NSSQLConstantValueIntermediate *)v19 appendString:v49];

            v5 = v102;
            v12 = v106;
            v8 = 0x1E696A000;
            goto LABEL_83;
          }

          v5 = v102;
          v12 = v106;
          v8 = 0x1E696A000;
          if (![v101 objectForKey:@"NSUnderlyingException"])
          {
            v95 = @"Can't generate SQL for keypath %@ : unexpected problem";
            goto LABEL_104;
          }

LABEL_105:
          if (![a3 objectForKey:@"NSUnderlyingException"])
          {
            v62 = MEMORY[0x1E695DF30];
            v63 = *MEMORY[0x1E695D940];
            v64 = [*(v8 + 3776) stringWithFormat:@"Unable to generate sql for components %@", v25];
            v65 = v63;
            v12 = v106;
            [a3 setObject:objc_msgSend(v62 forKey:{"exceptionWithName:reason:userInfo:", v65, v64, 0), @"NSUnderlyingException"}];
          }

          goto LABEL_126;
        }

        v26 = [v25 lastObject];
        v27 = [v16 propertyType];
        v28 = [v16 entity];
        if (v28)
        {
          v29 = [*(v28 + 40) objectForKey:v26];
        }

        else
        {
          v29 = 0;
        }

        v30 = [v29 propertyType];
        if (v30 != 1 && v30 != 7)
        {
          v85 = MEMORY[0x1E695DF30];
          v86 = *MEMORY[0x1E695D940];
          v87 = [*(v8 + 3776) stringWithFormat:@"Invalid keypath for update (not an attribute or a to one) %@", objc_msgSend(v16, "name"), v97];
LABEL_125:
          [a3 setObject:objc_msgSend(v85 forKey:{"exceptionWithName:reason:userInfo:", v86, v87, 0), @"NSUnderlyingException"}];
          v12 = v106;
LABEL_126:
          if (![a3 objectForKey:@"NSUnderlyingException"])
          {
            v81 = MEMORY[0x1E695DF30];
            v88 = v12;
            v82 = *MEMORY[0x1E695D940];
            v83 = [*(v8 + 3776) stringWithFormat:@"Invalid keypath expression (%@) in propertiesToUpdate - joins unsupported here", v88, v97];
LABEL_128:
            v89 = [v81 exceptionWithName:v82 reason:v83 userInfo:0];
LABEL_129:
            [a3 setObject:v89 forKey:@"NSUnderlyingException"];
            v12 = v106;
          }

LABEL_130:
          if ([a3 objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_134;
          }

          v72 = MEMORY[0x1E695DF30];
          v90 = v12;
          v74 = *MEMORY[0x1E695D940];
          v75 = [*(v8 + 3776) stringWithFormat:@"Can't generate new column value from expression %@", v90];
LABEL_132:
          v70 = [v72 exceptionWithName:v74 reason:v75 userInfo:0];
          v71 = a3;
LABEL_133:
          [v71 setObject:v70 forKey:@"NSUnderlyingException"];
          goto LABEL_134;
        }

        if (v27 != v30)
        {
          v85 = MEMORY[0x1E695DF30];
          v86 = *MEMORY[0x1E695D940];
          v87 = [*(v8 + 3776) stringWithFormat:@"Attempting to insert a relationship value into an attribute or vice versa is not supported %@/%@", objc_msgSend(v16, "name"), objc_msgSend(v29, "name")];
          goto LABEL_125;
        }

        if ([objc_msgSend(v16 "propertyDescription")] == 4)
        {
          if (v16[9])
          {
            if (!v29 || !v29[9])
            {
              goto LABEL_121;
            }
          }

          else if (v29 && v29[9])
          {
LABEL_121:
            v85 = MEMORY[0x1E695DF30];
            v86 = *MEMORY[0x1E695D940];
            v87 = [*(v8 + 3776) stringWithFormat:@"Can't generate new column values for destination - incompatible entity foreign key state: %@", v16, v97];
            goto LABEL_125;
          }

          if (([objc_msgSend(objc_msgSend(v16 "destinationEntity")] & 1) == 0)
          {
            goto LABEL_121;
          }

          v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ = %@", objc_msgSend(v16, "columnName"), objc_msgSend(v29, "columnName")];
          v50 = [objc_msgSend(v16 "destinationEntity")];
          v51 = v50;
          if (v50)
          {
            v52 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
            if ([*(v50 + 144) count])
            {
LABEL_80:
              v57 = [*(v16 + v52[82]) columnName];
              v58 = v52;
              v59 = v57;
              if (v29)
              {
                v60 = *(v29 + v58[82]);
              }

              else
              {
                v60 = 0;
              }

              v12 = v106;
              -[NSSQLConstantValueIntermediate appendFormat:](v19, "appendFormat:", @", %@ = %@", v59, [v60 columnName]);
LABEL_83:
              self = v104;
              if (!v19)
              {
                goto LABEL_126;
              }

              goto LABEL_93;
            }

            if (atomic_load((v51 + 124)))
            {
              v54 = *(v51 + 72);
            }

            else
            {
              v55 = v51;
              do
              {
                v54 = v55;
                v55 = [v55 superentity];
              }

              while (v55);
            }
          }

          else
          {
            v52 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
            if ([0 count])
            {
              goto LABEL_80;
            }

            v54 = 0;
          }

          v56 = v54 == v51;
          v52 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
          if (!v56)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ = %@", objc_msgSend(v16, "columnName"), objc_msgSend(v29, "columnName")];
        }

        v12 = v106;
        goto LABEL_83;
      }

      v106 = v12;
      v31 = [v12 constantValue];
      if (v13 == 4)
      {
        v77 = a3;
        v78 = v5;
        objc_opt_class();
        v79 = v8;
        if (objc_opt_isKindOfClass())
        {
          v80 = [v31 objectID];
        }

        else
        {
          objc_opt_class();
          v80 = v31;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v80 = 0;
            if ([MEMORY[0x1E695DFB0] null] == v31)
            {
              v31 = 0;
            }
          }
        }

        v93 = *MEMORY[0x1E695D940];
        v94 = *(v79 + 3776);
        if (!v80 && v31)
        {
          [v77 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v93, objc_msgSend(v94, "stringWithFormat:", @"Invalid new constant value %@ for %@ (not a managed object)", v106, v11), 0), @"NSUnderlyingException"}];

          goto LABEL_135;
        }

        v89 = [MEMORY[0x1E695DF30] exceptionWithName:v93 reason:objc_msgSend(v94 userInfo:{"stringWithFormat:", @"Can't generate new column values for %@ - incompatible destination: %@", objc_msgSend(v16, "name"), v80), 0}];
        v5 = v78;
        a3 = v77;
        v8 = v79;
        goto LABEL_129;
      }

      v19 = [(NSSQLUpdateColumnsIntermediate *)self _generateSQLForAttributeUpdate:v16 value:v31 inContext:a3];
      v12 = v106;
      if (!v19)
      {
        goto LABEL_130;
      }

LABEL_93:
      v10 = v108 + 1;
      [v5 appendString:v19];

      ++v9;
    }

    while (v9 != v107);
    v61 = [(NSDictionary *)obj countByEnumeratingWithState:&v110 objects:v115 count:16];
    v7 = v99;
    v107 = v61;
  }

  while (v61);
LABEL_100:
  [v5 appendString:{@", Z_OPT = (Z_OPT + 1) "}];
LABEL_136:
  v91 = *MEMORY[0x1E69E9840];
  return v5;
}

@end