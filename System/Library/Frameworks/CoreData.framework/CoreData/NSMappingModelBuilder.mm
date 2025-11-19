@interface NSMappingModelBuilder
@end

@implementation NSMappingModelBuilder

uint64_t __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  if (a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, objc_msgSend(a2, "renamingIdentifier")];
  }

  else
  {
    v5 = [a2 renamingIdentifier];
  }

  [*(a1 + 32) setObject:a2 forKey:v5];
  v6 = *(a1 + 40);
  v7 = [a2 name];

  return [v6 addObject:v7];
}

uint64_t __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  result = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v19;
    v8 = 0x1E6EC0000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(a1 + 32);
          goto LABEL_8;
        }

        v13 = *(v8 + 2528);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v8;
          v15 = *(*(*(a1 + 32) + 8) + 40);
          [v10 elements];
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, objc_msgSend(v10, "renamingIdentifier")];
          v12 = *(v15 + 16);
          v8 = v14;
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = *(a1 + 40);
LABEL_8:
          v12 = *(*(*(v11 + 8) + 40) + 16);
LABEL_11:
          v12();
        }

        ++v9;
      }

      while (v6 != v9);
      result = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = result;
    }

    while (result);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v203[1] = *MEMORY[0x1E69E9840];
  if ([a2 isTransient])
  {
    goto LABEL_233;
  }

  if (a3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, objc_msgSend(a2, "renamingIdentifier")];
  }

  else
  {
    v6 = [a2 renamingIdentifier];
  }

  v7 = v6;
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [a2 _propertyType];
  v10 = [v8 _propertyType];
  v197 = v9;
  if (v8 && v10 != v9)
  {
    v11 = *(a1 + 40);
    if ([objc_opt_class() migrationDebugLevel] < 2)
    {
LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = [v8 name];
          v14 = "CoreData: error: (migration) destination model property (renaming identifier '%@') matches the renaming identifier for a different type of property (%@) in the source model. Properties cannot be mapped to other property types.\n\n";
LABEL_205:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = [v8 name];
          v14 = "CoreData: warning: (migration) destination model property (renaming identifier '%@') matches the renaming identifier for a different type of property (%@) in the source model. Properties cannot be mapped to other property types.\n\n";
          goto LABEL_205;
        }
      }
    }

    v15 = _pflogging_catastrophic_mode;
    v16 = [v8 name];
    v17 = 1;
    if (!v15)
    {
      v17 = 2;
    }

    _NSCoreDataLog_console(v17, "(migration) destination model property (renaming identifier '%@') matches the renaming identifier for a different type of property (%@) in the source model. Properties cannot be mapped to other property types.\n", v7, v16);
    objc_autoreleasePoolPop(v12);
    goto LABEL_17;
  }

LABEL_18:
  v18 = 56;
  if (!v8)
  {
    v18 = 48;
  }

  [*(a1 + v18) addObject:{objc_msgSend(a2, "_qualifiedName")}];
  if ([a2 _isAttribute])
  {
    if ([*(a1 + 64) objectForKey:a3])
    {
      v19 = [*(a1 + 64) objectForKey:a3];
    }

    else
    {
      v19 = 0;
    }

    v29 = *(a1 + 40);
    v30 = [v8 _namespace];
    if (v19)
    {
      v31 = v19;
    }

    else
    {
      v31 = a3;
    }

    if (!v29)
    {
      goto LABEL_225;
    }

    v32 = v30;
    if (v31)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v31, objc_msgSend(a2, "name")];
    }

    else
    {
      v33 = [a2 name];
    }

    v34 = v33;
    if (v8)
    {
      v35 = [objc_msgSend(a2 "userInfo")];
      if (!v35 || (v36 = v35, v195 = v7, v37 = [v8 attributeType], v38 = v37 == objc_msgSend(a2, "attributeType"), v7 = v195, v38) && (objc_msgSend(a2, "attributeType") == 1000 || objc_msgSend(a2, "attributeType") == 1800))
      {
        v39 = [v8 attributeType];
        v40 = [a2 attributeType];
        if (!v39 || !v40)
        {
LABEL_152:
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E696A250];
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v34, @"property", objc_msgSend(*(v29 + 24), "destinationEntityName"), @"entity", @"Source and destination attribute types are incompatible", @"reason", 0}];
          goto LABEL_153;
        }

        if (v39 == v40)
        {
LABEL_142:
          v95 = 0;
          if (v32)
          {
LABEL_143:
            v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v32, objc_msgSend(v8, "name")];
LABEL_178:
            v119 = v96;
            v193 = v34;
            if (![v8 isOptional] || (objc_msgSend(a2, "isOptional") & 1) != 0)
            {
              if ([a2 attributeType] == 1000 && objc_msgSend(a2, "storesBinaryDataExternally") && (objc_msgSend(v8, "storesBinaryDataExternally") & 1) == 0)
              {
                contexta = v95;
                v190 = v29;
                v129 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v119];
                v130 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObject:v129];
                v131 = MEMORY[0x1E696ABC8];
                v132 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
                v133 = @"_prependExternalBlobToken:";
              }

              else
              {
                if ([a2 attributeType] == 1000 && objc_msgSend(v8, "storesBinaryDataExternally") && !objc_msgSend(a2, "storesBinaryDataExternally"))
                {
                  v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v135 = *MEMORY[0x1E696A250];
                  v136 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v34, @"property", objc_msgSend(*(v29 + 24), "destinationEntityName"), @"entity", @"Unable to use inferred mapping to move external reference into store.", @"Reason", 0}];
LABEL_223:
                  v97 = v136;
                  v98 = v134;
                  v99 = v135;
                  goto LABEL_224;
                }

                v190 = v29;
                contexta = v95;
                if ([v8 attributeType] != 1800 || objc_msgSend(a2, "attributeType") != 2200)
                {
                  v121 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v119];
LABEL_202:
                  v139 = MEMORY[0x1E696ABC8];
                  v140 = [MEMORY[0x1E696ABC8] expressionForVariable:@"source"];
                  v45 = [v139 expressionForFunction:v140 selectorName:@"valueForKey:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v119))}];
                  *buf = [[NSPropertyTransform alloc] initWithPropertyName:v34 valueExpression:v121];
                  v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

                  goto LABEL_221;
                }

                if ([v8 valueTransformerName])
                {
                  v120 = [v8 valueTransformerName];
                }

                else
                {
                  v120 = @"NSSecureUnarchiveFromDataTransformerName";
                }

                v137 = [a2 adapterName];
                v138 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v119];
                v130 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v120, v137, v138, 0}];
                v131 = MEMORY[0x1E696ABC8];
                v132 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
                v133 = @"_convertTransformableToCodable:";
              }

              v121 = [v131 expressionForFunction:v132 selectorName:v133 arguments:v130];

              goto LABEL_202;
            }

            if (![a2 defaultValue])
            {
              if ([objc_opt_class() migrationDebugLevel] >= 2)
              {
                v122 = v29;
                v123 = v7;
                v124 = objc_autoreleasePoolPush();
                if (_NSCoreDataIsOSLogEnabled(2))
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v125 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                    {
                      v126 = [*(v122 + 24) sourceEntityName];
                      v127 = [*(v122 + 24) destinationEntityName];
                      *buf = 138413058;
                      *&buf[4] = v126;
                      *&buf[12] = 2112;
                      *&buf[14] = v119;
                      *&buf[22] = 2112;
                      *&buf[24] = v127;
                      v199 = 2112;
                      v200 = v193;
                      v128 = "CoreData: error: (migration) attribute mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional attribute to a mandatory attribute without a default value.\n\n";
LABEL_249:
                      _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, v128, buf, 0x2Au);
                    }
                  }

                  else
                  {
                    v125 = _PFLogGetLogStream(2);
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                    {
                      v181 = [*(v122 + 24) sourceEntityName];
                      v182 = [*(v122 + 24) destinationEntityName];
                      *buf = 138413058;
                      *&buf[4] = v181;
                      *&buf[12] = 2112;
                      *&buf[14] = v119;
                      *&buf[22] = 2112;
                      *&buf[24] = v182;
                      v199 = 2112;
                      v200 = v193;
                      v128 = "CoreData: warning: (migration) attribute mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional attribute to a mandatory attribute without a default value.\n\n";
                      goto LABEL_249;
                    }
                  }
                }

                v141 = _pflogging_catastrophic_mode;
                v142 = [*(v122 + 24) sourceEntityName];
                v143 = [*(v122 + 24) destinationEntityName];
                v38 = v141 == 0;
                v95 = 1;
                if (v38)
                {
                  v144 = 2;
                }

                else
                {
                  v144 = 1;
                }

                _NSCoreDataLog_console(v144, "(migration) attribute mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional attribute to a mandatory attribute without a default value.\n", v142, v119, v143, v193);
                objc_autoreleasePoolPop(v124);
                v7 = v123;
                v29 = v122;
                goto LABEL_211;
              }

              v95 = 1;
            }

LABEL_211:
            if ([a2 attributeType] == 1000 && objc_msgSend(a2, "storesBinaryDataExternally") && (objc_msgSend(v8, "storesBinaryDataExternally") & 1) == 0)
            {
              contexta = v95;
              v190 = v29;
              v196 = v7;
              v162 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v119];
              v163 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObject:v162];
              v185 = [MEMORY[0x1E696ABC8] expressionForFunction:objc_msgSend(MEMORY[0x1E696ABC8] selectorName:"expressionForEvaluatedObject") arguments:{@"_prependExternalBlobToken:", v163}];
            }

            else
            {
              if ([a2 attributeType] == 1000 && objc_msgSend(v8, "storesBinaryDataExternally") && !objc_msgSend(a2, "storesBinaryDataExternally"))
              {
                v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                v135 = *MEMORY[0x1E696A250];
                v136 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v193, @"property", objc_msgSend(*(v29 + 24), "destinationEntityName"), @"entity", @"Unable to use inferred mapping to move external reference into store.", 0, v183}];
                goto LABEL_223;
              }

              contexta = v95;
              v190 = v29;
              v196 = v7;
              v185 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v119];
            }

            v145 = MEMORY[0x1E696ABC8];
            v146 = [MEMORY[0x1E696ABC8] expressionForVariable:@"entityPolicy"];
            v147 = MEMORY[0x1E695DEC8];
            v34 = v193;
            v148 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v193];
            v149 = [MEMORY[0x1E696ABC8] expressionForVariable:@"source"];
            v45 = [v145 expressionForFunction:v146 selectorName:@"_nonNilValueOrDefaultValueForAttribute:source:destination:" arguments:{objc_msgSend(v147, "arrayWithObjects:", v148, v149, objc_msgSend(MEMORY[0x1E696ABC8], "expressionForVariable:", @"destination", 0)}];
            v150 = [[NSPropertyTransform alloc] initWithPropertyName:v193 valueExpression:v185];
            v151 = [NSPropertyTransform alloc];
            v152 = -[NSPropertyTransform initWithPropertyName:valueExpression:](v151, "initWithPropertyName:valueExpression:", v193, [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(a2, "defaultValue")}]);
            v154 = v152;
            if (v152)
            {
              objc_setProperty_nonatomic(v152, v153, v150, 24);
              v154->_replaceMissingValueOnly = 1;
            }

            v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v150, v154, 0}];

            v7 = v196;
LABEL_221:
            v29 = v190;
            v42 = contexta;
            if (!v44)
            {
              goto LABEL_222;
            }

            goto LABEL_62;
          }

LABEL_177:
          v96 = [v8 name];
          goto LABEL_178;
        }

        v41 = 1;
        if (v39 > 399)
        {
          if (v39 != 400 && v39 != 500 && v39 != 600)
          {
            goto LABEL_130;
          }
        }

        else if (v39 != 100 && v39 != 200 && v39 != 300)
        {
LABEL_130:
          v41 = 0;
        }

        if (v40 > 399)
        {
          if (v40 != 400 && v40 != 600 && v40 != 500)
          {
LABEL_149:
            if (v40 != 800)
            {
              v41 = 0;
            }

            if ((v41 & 1) == 0)
            {
              goto LABEL_152;
            }

            goto LABEL_142;
          }
        }

        else if (v40 != 100 && v40 != 200 && v40 != 300)
        {
          goto LABEL_149;
        }

        if (v39 == 800)
        {
          v41 = 1;
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_142;
      }

      if (([v8 attributeType] == 1800 || objc_msgSend(v8, "attributeType") == 2200) && objc_msgSend(a2, "attributeType") == 1000 || objc_msgSend(v8, "attributeType") == 1000 && (objc_msgSend(a2, "attributeType") == 1800 || objc_msgSend(a2, "attributeType") == 2200))
      {
        if ([v8 attributeType] == 1000 && (objc_msgSend(v8, "storesBinaryDataExternally") & 1) != 0 || objc_msgSend(a2, "attributeType") == 1000 && objc_msgSend(a2, "storesBinaryDataExternally"))
        {
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E696A250];
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v34, @"property", objc_msgSend(*(v29 + 24), "destinationEntityName"), @"entity", @"Type Transformation expects NSBinaryDataAttributeType NOT to be stored externally", @"reason", 0}];
LABEL_153:
          v97 = v56;
          v98 = v54;
          v99 = v55;
LABEL_224:
          *(v29 + 32) = [v98 initWithDomain:v99 code:134190 userInfo:v97];
          goto LABEL_225;
        }

        v184 = v32;
        v82 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        v77 = 0;
        v189 = v29;
        v192 = v34;
        context = v82;
        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v83 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v84 = [v8 name];
              v85 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
              v86 = [a2 name];
              v87 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
              *buf = 138413314;
              *&buf[4] = v84;
              *&buf[12] = 2112;
              *&buf[14] = v85;
              *&buf[22] = 2112;
              *&buf[24] = v86;
              v199 = 2112;
              v200 = v87;
              v201 = 2112;
              v202 = v36;
              v88 = "CoreData: error: Transforming %@ (%@) to %@ (%@), was %@\n";
LABEL_238:
              _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, v88, buf, 0x34u);
            }
          }

          else
          {
            v83 = _PFLogGetLogStream(2);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v164 = [v8 name];
              v165 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
              v166 = [a2 name];
              v167 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
              *buf = 138413314;
              *&buf[4] = v164;
              *&buf[12] = 2112;
              *&buf[14] = v165;
              *&buf[22] = 2112;
              *&buf[24] = v166;
              v199 = 2112;
              v200 = v167;
              v201 = 2112;
              v202 = v36;
              v88 = "CoreData: warning: Transforming %@ (%@) to %@ (%@), was %@\n";
              goto LABEL_238;
            }
          }

          v77 = 0;
        }

LABEL_174:
        v113 = _pflogging_catastrophic_mode;
        v114 = [v8 name];
        v115 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
        v116 = [a2 name];
        v117 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
        v118 = 1;
        if (!v113)
        {
          v118 = 2;
        }

        _NSCoreDataLog_console(v118, "Transforming %@ (%@) to %@ (%@), was %@", v114, v115, v116, v117, v36);
        objc_autoreleasePoolPop(context);
        v34 = v192;
        v7 = v195;
        v29 = v189;
        v95 = v77;
        v32 = v184;
        if (v184)
        {
          goto LABEL_143;
        }

        goto LABEL_177;
      }

      if ([v8 attributeType] != 1800 || objc_msgSend(a2, "attributeType") != 2200)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E696A250];
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v34, @"property", objc_msgSend(*(v29 + 24), "destinationEntityName"), @"entity", @"Type Transformation expects NSTransformableAttributeType or NSBinaryDataAttributeType", @"reason", 0}];
        goto LABEL_153;
      }

      v75 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      v189 = v29;
      v192 = v34;
      v184 = v32;
      context = v75;
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v76 = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v77 = 1;
            goto LABEL_174;
          }

          v168 = [v8 name];
          v169 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
          v170 = [a2 name];
          v171 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
          *buf = 138413314;
          *&buf[4] = v168;
          *&buf[12] = 2112;
          *&buf[14] = v169;
          *&buf[22] = 2112;
          *&buf[24] = v170;
          v199 = 2112;
          v200 = v171;
          v201 = 2112;
          v202 = v36;
          v172 = "CoreData: error: Transforming %@ (%@) to %@ (%@), was %@\n";
          goto LABEL_247;
        }

        v76 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v177 = [v8 name];
          v178 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
          v179 = [a2 name];
          v180 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
          *buf = 138413314;
          *&buf[4] = v177;
          *&buf[12] = 2112;
          *&buf[14] = v178;
          *&buf[22] = 2112;
          *&buf[24] = v179;
          v199 = 2112;
          v200 = v180;
          v201 = 2112;
          v202 = v36;
          v172 = "CoreData: warning: Transforming %@ (%@) to %@ (%@), was %@\n";
LABEL_247:
          _os_log_error_impl(&dword_18565F000, v76, OS_LOG_TYPE_ERROR, v172, buf, 0x34u);
        }
      }

      v77 = 1;
      goto LABEL_174;
    }

    if (([a2 isOptional] & 1) != 0 || objc_msgSend(a2, "defaultValue"))
    {
      v42 = 0;
      goto LABEL_61;
    }

    if ([objc_opt_class() migrationDebugLevel] < 2)
    {
      v42 = 1;
      goto LABEL_61;
    }

    v90 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v91 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v92 = [*(v29 + 24) destinationEntityName];
          *buf = 138412546;
          *&buf[4] = v92;
          *&buf[12] = 2112;
          *&buf[14] = v34;
          v93 = "CoreData: error: (migration) attribute mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory attribute without a default value.\n\n";
LABEL_245:
          _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, v93, buf, 0x16u);
        }
      }

      else
      {
        v91 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v176 = [*(v29 + 24) destinationEntityName];
          *buf = 138412546;
          *&buf[4] = v176;
          *&buf[12] = 2112;
          *&buf[14] = v34;
          v93 = "CoreData: warning: (migration) attribute mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory attribute without a default value.\n\n";
          goto LABEL_245;
        }
      }
    }

    v110 = _pflogging_catastrophic_mode;
    v111 = [*(v29 + 24) destinationEntityName];
    v38 = v110 == 0;
    v42 = 1;
    if (v38)
    {
      v112 = 2;
    }

    else
    {
      v112 = 1;
    }

    _NSCoreDataLog_console(v112, "(migration) attribute mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory attribute without a default value.\n", v111, v34);
    objc_autoreleasePoolPop(v90);
LABEL_61:
    v43 = [NSPropertyTransform alloc];
    *buf = -[NSPropertyTransform initWithPropertyName:valueExpression:](v43, "initWithPropertyName:valueExpression:", v34, [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(a2, "defaultValue")}]);
    v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

    v45 = 0;
    if (!v44)
    {
LABEL_222:
      v134 = objc_alloc(MEMORY[0x1E696ABC0]);
      v135 = *MEMORY[0x1E696A250];
      v136 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v34, @"property", objc_msgSend(*(v29 + 24), "destinationEntityName"), @"entity", @"Unable to infer mapping for attribute", @"reason", 0}];
      goto LABEL_223;
    }

LABEL_62:
    v46 = objc_alloc_init(NSPropertyMapping);
    [(NSPropertyMapping *)v46 setName:v34];
    [(NSPropertyMapping *)v46 setValueExpression:v45];
    [(NSPropertyMapping *)v46 _setPropertyTransforms:v44];

    if (v42)
    {
      v47 = objc_alloc(MEMORY[0x1E695DF20]);
      v48 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v49 = [v47 initWithObjectsAndKeys:{v48, _NSInferredMappingCouldFailValidation, 0}];
      [(NSPropertyMapping *)v46 setUserInfo:v49];
      v203[0] = NSPropertyTransformMandatoryPropertyValidation;
      -[NSPropertyMapping _setTransformValidations:](v46, [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:1]);
      v50 = [*(v29 + 24) userInfo];
      if (v50)
      {
        v51 = v50;
        if (([objc_msgSend(v50 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}] & 1) == 0)
        {
          v52 = [v51 mutableCopy];
          v53 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v52 setObject:v53 forKey:_NSInferredMappingCouldFailValidation];
          [*(v29 + 24) setUserInfo:v52];
        }
      }

      else
      {
        [*(v29 + 24) setUserInfo:v49];
      }
    }

    if (v46)
    {
      v94 = 72;
      goto LABEL_125;
    }

LABEL_225:
    v155 = *(a1 + 40);
    if ([objc_opt_class() migrationDebugLevel] < 2)
    {
LABEL_232:
      *(*(*(a1 + 96) + 8) + 24) = 1;
      goto LABEL_233;
    }

    v156 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v157 = _pflogging_catastrophic_mode;
      v158 = _PFLogGetLogStream(1);
      v159 = os_log_type_enabled(v158, OS_LOG_TYPE_ERROR);
      if (v157)
      {
        if (v159)
        {
          goto LABEL_234;
        }
      }

      else if (v159)
      {
LABEL_234:
        v161 = [v8 name];
        *buf = 67109634;
        *&buf[4] = v197;
        *&buf[8] = 2112;
        *&buf[10] = v7;
        *&buf[18] = 2112;
        *&buf[20] = v161;
        _os_log_error_impl(&dword_18565F000, v158, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) uninferrable, non-transient property type '%u' for destination model property (renaming identifier '%@'), source model property (renaming identifier '%@').\n", buf, 0x1Cu);
      }
    }

    _NSCoreDataLog_console(1, "(migration) uninferrable, non-transient property type '%u' for destination model property (renaming identifier '%@'), source model property (renaming identifier '%@').", v197, v7, [v8 name]);
    objc_autoreleasePoolPop(v156);
    goto LABEL_232;
  }

  if (![a2 _isRelationship])
  {
    goto LABEL_225;
  }

  v20 = *(a1 + 40);
  if (!v20)
  {
    goto LABEL_225;
  }

  v21 = [a2 name];
  v194 = v7;
  if (v8)
  {
    v22 = [v8 name];
    v188 = a1;
    if (([v8 isOptional] & 1) == 0 && (!objc_msgSend(v8, "isToMany") || objc_msgSend(v8, "minCount")) || (objc_msgSend(a2, "isOptional") & 1) != 0 || objc_msgSend(a2, "isToMany") && !objc_msgSend(a2, "minCount"))
    {
      v57 = 0;
    }

    else
    {
      if ([objc_opt_class() migrationDebugLevel] >= 2)
      {
        v23 = v22;
        v24 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v25 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = [*(v20 + 24) sourceEntityName];
              v27 = [*(v20 + 24) destinationEntityName];
              *buf = 138413058;
              *&buf[4] = v26;
              *&buf[12] = 2112;
              *&buf[14] = v22;
              *&buf[22] = 2112;
              *&buf[24] = v27;
              v199 = 2112;
              v200 = v21;
              v28 = "CoreData: error: (migration) relationship mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional relationship to a mandatory relationship.\n\n";
LABEL_243:
              _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, v28, buf, 0x2Au);
            }
          }

          else
          {
            v25 = _PFLogGetLogStream(2);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v174 = [*(v20 + 24) sourceEntityName];
              v175 = [*(v20 + 24) destinationEntityName];
              *buf = 138413058;
              *&buf[4] = v174;
              *&buf[12] = 2112;
              *&buf[14] = v22;
              *&buf[22] = 2112;
              *&buf[24] = v175;
              v199 = 2112;
              v200 = v21;
              v28 = "CoreData: warning: (migration) relationship mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional relationship to a mandatory relationship.\n\n";
              goto LABEL_243;
            }
          }
        }

        v106 = _pflogging_catastrophic_mode;
        v107 = [*(v20 + 24) sourceEntityName];
        v108 = [*(v20 + 24) destinationEntityName];
        v57 = 1;
        if (v106)
        {
          v109 = 1;
        }

        else
        {
          v109 = 2;
        }

        v22 = v23;
        _NSCoreDataLog_console(v109, "(migration) relationship mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional relationship to a mandatory relationship.\n", v107, v23, v108, v21);
        objc_autoreleasePoolPop(v24);
        goto LABEL_82;
      }

      v57 = 1;
    }

LABEL_82:
    v58 = v21;
    if ([v8 isToMany] && !objc_msgSend(a2, "isToMany"))
    {
      v89 = @"Can not map from a to-many to a to-one relationship";
      a1 = v188;
LABEL_161:
      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
      *(v20 + 32) = [v105 initWithDomain:*MEMORY[0x1E696A250] code:134190 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v58, @"property", objc_msgSend(*(v20 + 24), "destinationEntityName"), @"entity", v89, @"reason", 0)}];
      v7 = v194;
      goto LABEL_225;
    }

    v191 = v20;
    v59 = MEMORY[0x1E696ABC8];
    v60 = v22;
    v61 = [MEMORY[0x1E696ABC8] expressionForVariable:@"source"];
    v62 = [v59 expressionForFunction:v61 selectorName:@"valueForKey:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v60))}];
    v63 = MEMORY[0x1E696ABC8];
    v64 = [MEMORY[0x1E696ABC8] expressionForVariable:@"manager"];
    v65 = [v63 expressionForFunction:v64 selectorName:@"destinationInstancesForSourceRelationshipNamed:sourceInstances:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v60), v62, 0)}];
    v66 = [NSPropertyTransform alloc];
    *buf = -[NSPropertyTransform initWithPropertyName:valueExpression:](v66, "initWithPropertyName:valueExpression:", v21, [MEMORY[0x1E696ABC8] expressionForKeyPath:v60]);
    v67 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

    a1 = v188;
    if (v67)
    {
      goto LABEL_85;
    }

LABEL_160:
    v58 = v21;
    v89 = @"Unable to infer mapping for relationship";
    v20 = v191;
    goto LABEL_161;
  }

  v191 = v20;
  if (([a2 isOptional] & 1) != 0 || objc_msgSend(a2, "isToMany") && !objc_msgSend(a2, "minCount"))
  {
    v57 = 0;
    goto LABEL_159;
  }

  if ([objc_opt_class() migrationDebugLevel] < 2)
  {
    v57 = 1;
    goto LABEL_159;
  }

  v78 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v79 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v80 = [*(v20 + 24) destinationEntityName];
        *buf = 138412546;
        *&buf[4] = v80;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        v81 = "CoreData: error: (migration) relationship mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory relationship.\n\n";
LABEL_241:
        _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, v81, buf, 0x16u);
      }
    }

    else
    {
      v79 = _PFLogGetLogStream(2);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v173 = [*(v20 + 24) destinationEntityName];
        *buf = 138412546;
        *&buf[4] = v173;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        v81 = "CoreData: warning: (migration) relationship mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory relationship.\n\n";
        goto LABEL_241;
      }
    }
  }

  v100 = _pflogging_catastrophic_mode;
  v101 = [*(v20 + 24) destinationEntityName];
  v57 = 1;
  if (v100)
  {
    v102 = 1;
  }

  else
  {
    v102 = 2;
  }

  _NSCoreDataLog_console(v102, "(migration) relationship mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory relationship.\n", v101, v21);
  objc_autoreleasePoolPop(v78);
LABEL_159:
  v103 = [NSPropertyTransform alloc];
  v104 = [a2 name];
  *buf = -[NSPropertyTransform initWithPropertyName:valueExpression:](v103, "initWithPropertyName:valueExpression:", v104, [MEMORY[0x1E696ABC8] expressionForConstantValue:0]);
  v67 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

  v65 = 0;
  if (!v67)
  {
    goto LABEL_160;
  }

LABEL_85:
  v46 = objc_alloc_init(NSPropertyMapping);
  [(NSPropertyMapping *)v46 setName:v21];
  [(NSPropertyMapping *)v46 setValueExpression:v65];
  [(NSPropertyMapping *)v46 _setPropertyTransforms:v67];

  if (v57)
  {
    v68 = objc_alloc(MEMORY[0x1E695DF20]);
    v69 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v70 = [v68 initWithObjectsAndKeys:{v69, _NSInferredMappingCouldFailValidation, 0}];
    [(NSPropertyMapping *)v46 setUserInfo:v70];
    v203[0] = NSPropertyTransformMandatoryPropertyValidation;
    -[NSPropertyMapping _setTransformValidations:](v46, [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:1]);
    v71 = [*(v191 + 24) userInfo];
    if (v71)
    {
      v72 = v71;
      if (([objc_msgSend(v71 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}] & 1) == 0)
      {
        v73 = [v72 mutableCopy];
        v74 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v73 setObject:v74 forKey:_NSInferredMappingCouldFailValidation];
        [*(v191 + 24) setUserInfo:v73];
      }
    }

    else
    {
      [*(v191 + 24) setUserInfo:v70];
    }
  }

  v7 = v194;
  if (!v46)
  {
    goto LABEL_225;
  }

  v94 = 80;
LABEL_125:
  [*(a1 + v94) addObject:v46];

  if (v8)
  {
    [*(a1 + 88) removeObject:{objc_msgSend(v8, "name")}];
  }

LABEL_233:
  v160 = *MEMORY[0x1E69E9840];
}

uint64_t __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  result = [a2 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (result)
  {
    v6 = result;
    v28 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        if ([v8 isNSArray])
        {
          v9 = *(a1 + 40);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v8 renamingIdentifier] && (objc_msgSend(objc_msgSend(v8, "renamingIdentifier"), "isEqualToString:", objc_msgSend(v8, "name")) & 1) == 0)
            {
              v20 = *(a1 + 32);
              if (a3)
              {
                v21 = [*(a1 + 32) objectForKey:a3];
                v22 = *(a1 + 32);
                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v21, objc_msgSend(v8, "name")];
                [v22 setObject:v23 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a3, objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, objc_msgSend(v8, "renamingIdentifier")];
              }

              else
              {
                v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v8, "name")];
                [v20 setObject:v25 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                [v8 renamingIdentifier];
              }
            }

            else
            {
              v11 = *(a1 + 32);
              if (a3)
              {
                v12 = [*(a1 + 32) objectForKey:a3];
                v13 = *(a1 + 32);
                v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v12, objc_msgSend(v8, "name")];
                [v13 setObject:v14 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a3, objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, objc_msgSend(v8, "name")];
              }

              else
              {
                v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v8, "name")];
                [v11 setObject:v24 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                [v8 name];
              }
            }

            v10 = *(v15 + 16);
            goto LABEL_26;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_27;
          }

          v16 = [v8 superCompositeAttribute];
          if (v16)
          {
            v17 = v16;
            if ([v16 renamingIdentifier])
            {
              if (([objc_msgSend(v17 "renamingIdentifier")] & 1) == 0)
              {
                v18 = *(a1 + 32);
                v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v17, "name")];
                [v18 setObject:v19 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", objc_msgSend(v17, "renamingIdentifier"))}];
              }
            }
          }

          v9 = *(a1 + 48);
        }

        v10 = *(*(*(v9 + 8) + 40) + 16);
LABEL_26:
        v10();
LABEL_27:
        ++v7;
      }

      while (v6 != v7);
      result = [a2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v6 = result;
    }

    while (result);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

@end