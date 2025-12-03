@interface NSSQLDerivedAttributeSQLGenerator
+ (__CFString)_triggerColumnListComponentForAttributeKeypaths:(uint64_t)keypaths startingAt:;
+ (uint64_t)_computeNewColumnTokenForKeypathExpression:(uint64_t)expression governingEntity:;
+ (uint64_t)_computeSingleParameterTokenForFunctionAttribute:(uint64_t)attribute functionName:;
+ (uint64_t)_generateSQLForAttributeFunctionDerivationForDerivedAttribute:(void *)attribute keypaths:;
+ (uint64_t)_generateSQLForDerivedAttributeWithOneParameterKeypath:(void *)keypath keypaths:;
+ (uint64_t)_generateSQLForToOneDerivationForDerivedAttribute:(void *)attribute toOneKeypath:;
+ (uint64_t)_generateTriggerForAttribute:(uint64_t)attribute newToken:(void *)token updateToken:(uint64_t)updateToken triggerColumnListComponent:(uint64_t)component triggerColumnWhereComponent:(void *)whereComponent;
+ (uint64_t)_parameterPropertyTokenForDerivedAttribute:(void *)attribute andKeypath:(id *)keypath onEntity:;
+ (uint64_t)generateSQLForDerivedAttribute:(void *)attribute keypaths:;
@end

@implementation NSSQLDerivedAttributeSQLGenerator

+ (uint64_t)_parameterPropertyTokenForDerivedAttribute:(void *)attribute andKeypath:(id *)keypath onEntity:
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  if ([attribute count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v17 = @"derived attribute";
    v18[0] = propertyDescription;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = @"Unsupported: (multi-step keypath)";
    goto LABEL_10;
  }

  v8 = [attribute objectAtIndexedSubscript:1];
  if (keypath)
  {
    keypath = [keypath[5] objectForKey:v8];
  }

  if ([keypath propertyType] != 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = @"derived attribute";
    v16 = propertyDescription;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = @"Unsupported: (bad keypath, should be toOne.attribute)";
LABEL_10:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v14 userInfo:v13]);
  }

  v9 = *MEMORY[0x1E69E9840];

  return [keypath columnName];
}

+ (uint64_t)_generateSQLForToOneDerivationForDerivedAttribute:(void *)attribute toOneKeypath:
{
  v84[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  entity = [a2 entity];
  propertyDescription = [a2 propertyDescription];
  derivationExpression = [propertyDescription derivationExpression];
  expressionType = [derivationExpression expressionType];
  v9 = [attribute objectAtIndexedSubscript:0];
  if (entity)
  {
    v10 = [*(entity + 40) objectForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  destinationEntity = [v10 destinationEntity];
  v75 = a2;
  columnName = [a2 columnName];
  if (expressionType != 4)
  {
    if (expressionType == 3)
    {
      v12 = [NSSQLDerivedAttributeSQLGenerator _parameterPropertyTokenForDerivedAttribute:a2 andKeypath:attribute onEntity:destinationEntity];
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NEW.%@", v12];
      v71 = v12;
      v69 = v12;
      goto LABEL_13;
    }

    v61 = MEMORY[0x1E695DF30];
    v62 = *MEMORY[0x1E695D940];
    v81 = @"derived attribute";
    v82 = propertyDescription;
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v64 = @"Unsupported: (unsupported expression for to one)";
LABEL_49:
    objc_exception_throw([v61 exceptionWithName:v62 reason:v64 userInfo:v63]);
  }

  v13 = [NSSQLDerivedAttributeSQLGenerator _parameterPropertyTokenForDerivedAttribute:a2 andKeypath:attribute onEntity:destinationEntity];
  selector = [derivationExpression selector];
  v69 = v13;
  if (sel_canonical_ == selector)
  {
    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataCanonical(NEW.%@)", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataCanonical(%@)", v13];
  }

  else if (sel_uppercase_ == selector)
  {
    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToUpper(NEW.%@)", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToUpper(%@)", v13];
  }

  else
  {
    if (sel_lowercase_ != selector)
    {
      v61 = MEMORY[0x1E695DF30];
      v62 = *MEMORY[0x1E695D940];
      v83 = @"derived attribute";
      v84[0] = propertyDescription;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
      v64 = @"Unsupported: (unsupported function for to one)";
      goto LABEL_49;
    }

    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToLower(NEW.%@)", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToLower(%@)", v13];
  }

  v71 = v15;
LABEL_13:
  tableName = [entity tableName];
  tableName2 = [destinationEntity tableName];
  columnName2 = [v10 columnName];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", tableName, objc_msgSend(objc_msgSend(propertyDescription, "entity"), "name"), objc_msgSend(propertyDescription, "name")];
  v74 = tableName2;
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", tableName2, objc_msgSend(objc_msgSend(propertyDescription, "entity"), "name"), objc_msgSend(propertyDescription, "name")];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v18];
  v70 = v18;
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v18];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v19];
  v72 = v19;
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v19];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v26 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v20];

  [array addObject:v26];
  v27 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v21];

  [array addObject:v27];
  v28 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v22];

  [array addObject:v28];
  v29 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v23];

  v68 = array;
  [array addObject:v29];

  v80[0] = v26;
  v80[1] = v27;
  v80[2] = v28;
  v80[3] = v29;
  v67 = dictionary;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v80, 4), @"dropStatements"}];
  if (entity)
  {
    v30 = v70;
    if (*(entity + 160) || (v37 = *(entity + 152)) != 0 && [v37 count] && *(entity + 160))
    {
      v31 = *(entity + 184);
      v32 = *(entity + 188);
      v33 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v31 >= v32)
      {
        v34 = [v33 initWithFormat:@"%d = NEW.Z_ENT", v31];
        v35 = 0x1E696A000uLL;
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d = Z_ENT", v31, v65];
      }

      else
      {
        v34 = [v33 initWithFormat:@"%d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v31, v32];
        v35 = 0x1E696A000uLL;
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d <= Z_ENT AND Z_ENT <= %d", v31, v32];
      }

      v38 = v36;
    }

    else
    {
      v35 = 0x1E696A000uLL;
      v38 = 0;
      v34 = 0;
    }
  }

  else
  {
    v35 = 0x1E696A000;
    v38 = 0;
    v34 = 0;
    v30 = v70;
  }

  v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v39 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v30, tableName];
  [v39 appendString:@" BEGIN"];
  if (v34)
  {
    v40 = [*(v35 + 3776) stringWithFormat:@" AND %@", v34];
  }

  else
  {
    v40 = &stru_1EF3F1768;
  }

  [v39 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = NEW.%@) WHERE Z_PK = NEW.Z_PK%@;", tableName, columnName, v71, v74, columnName2, v40];
  name = [v75 name];
  if (v34)
  {
    v42 = [*(v35 + 3776) stringWithFormat:@" AND %@", v34];
  }

  else
  {
    v42 = &stru_1EF3F1768;
  }

  [v39 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK%@;", tableName, name, columnName, tableName, v42];
  [v39 appendFormat:@" END"];
  v43 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v34)
  {
    v44 = [*(v35 + 3776) stringWithFormat:@" WHEN %@", v34];
  }

  else
  {
    v44 = &stru_1EF3F1768;
  }

  [v43 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW%@", v30, columnName2, tableName, v44];
  [v43 appendString:@" BEGIN"];
  [v43 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = NEW.%@) WHERE Z_PK = NEW.Z_PK;", tableName, columnName, v71, v74, columnName2];
  [v43 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName, objc_msgSend(v75, "name"), columnName, tableName];
  [v43 appendFormat:@" END"];
  v45 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v45 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v72, v74];
  [v45 appendString:@" BEGIN"];
  if (v38)
  {
    v46 = [*(v35 + 3776) stringWithFormat:@" AND %@", v38];
  }

  else
  {
    v46 = &stru_1EF3F1768;
  }

  [v45 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE %@ = NEW.Z_PK%@;", tableName, columnName, v66, columnName2, v46];
  name2 = [v75 name];
  if (v38)
  {
    v48 = [*(v35 + 3776) stringWithFormat:@" AND %@", v38];
  }

  else
  {
    v48 = &stru_1EF3F1768;
  }

  [v45 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE %@ = NEW.Z_PK%@;", tableName, name2, columnName, tableName, columnName2, v48];
  [v45 appendFormat:@" END"];
  v49 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v49 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW", v72, v69, v74];
  [v49 appendString:@" BEGIN"];
  if (v38)
  {
    v50 = [*(v35 + 3776) stringWithFormat:@" AND %@", v38];
  }

  else
  {
    v50 = &stru_1EF3F1768;
  }

  [v49 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE %@ = NEW.Z_PK%@;", tableName, columnName, v66, columnName2, v50];
  name3 = [v75 name];
  if (v38)
  {
    v52 = [*(v35 + 3776) stringWithFormat:@" AND %@", v38];
  }

  else
  {
    v52 = &stru_1EF3F1768;
  }

  [v49 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE %@ = NEW.Z_PK%@;", tableName, name3, columnName, tableName, columnName2, v52];
  [v49 appendFormat:@" END"];

  v53 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v39];
  [v68 addObject:v53];

  v54 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v43];
  [v68 addObject:v54];

  v55 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v45];
  [v68 addObject:v55];

  v56 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v49];
  [v68 addObject:v56];

  v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = %@.%@)%@", tableName, columnName, v71, v74, tableName, columnName2, &stru_1EF3F1768];
  v58 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v57];

  v79 = v58;
  [v67 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v79, 1), @"dataStatements"}];

  v78[0] = v53;
  v78[1] = v54;
  v78[2] = v55;
  v78[3] = v56;
  [v67 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v78, 4), @"triggerCreationStatements"}];
  v77[0] = v68;
  v77[1] = v67;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_generateTriggerForAttribute:(uint64_t)attribute newToken:(void *)token updateToken:(uint64_t)updateToken triggerColumnListComponent:(uint64_t)component triggerColumnWhereComponent:(void *)whereComponent
{
  v46[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  entity = [token entity];
  propertyDescription = [token propertyDescription];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(entity, "tableName"), objc_msgSend(objc_msgSend(propertyDescription, "entity"), "name"), objc_msgSend(propertyDescription, "name")];
  tableName = [entity tableName];
  columnName = [token columnName];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v10];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v10];
  if ([objc_msgSend(propertyDescription "derivationExpression")] == 3 && (v13 = objc_msgSend(objc_msgSend(propertyDescription, "derivationExpression"), "keyPath"), entity) && (v14 = objc_msgSend(*(entity + 40), "objectForKey:", v13)) != 0)
  {
    v42 = [objc_msgSend(v14 "propertyDescription")];
  }

  else
  {
    v42 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v15 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v10, tableName];
  if ([whereComponent length])
  {
    [v15 appendFormat:@" WHEN (NEW.%@ NOT NULL)", whereComponent];
  }

  [v15 appendString:@" BEGIN"];
  if (v42)
  {
    [v15 appendFormat:@" UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) WHERE Z_PK = NEW.Z_PK;", tableName, columnName, tableName, objc_msgSend(token, "name"), component];
  }

  else
  {
    [v15 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE Z_PK = NEW.Z_PK;", tableName, columnName, updateToken, v32, v34];
  }

  [v15 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName, objc_msgSend(token, "name"), columnName, tableName];
  [v15 appendFormat:@" END"];
  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v16 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW", v10, whereComponent, tableName];
  if ([&stru_1EF3F1768 length])
  {
    [v16 appendFormat:@" %@", &stru_1EF3F1768];
  }

  [v16 appendString:@" BEGIN"];
  componentCopy = component;
  if (v42)
  {
    [v16 appendFormat:@" UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) WHERE Z_PK = NEW.Z_PK;", tableName, columnName, tableName, objc_msgSend(token, "name"), component];
  }

  else
  {
    [v16 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE Z_PK = NEW.Z_PK;", tableName, columnName, updateToken, v33, v35];
  }

  [v16 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName, objc_msgSend(token, "name"), columnName, tableName];
  [v16 appendFormat:@" END"];

  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v38];
  [array addObject:v19];

  v20 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v39];
  [array addObject:v20];

  v46[0] = v19;
  v46[1] = v20;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v46, 2), @"dropStatements"}];

  v21 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v15];
  [array addObject:v21];

  v22 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v16];
  [array addObject:v22];

  if (entity && (*(entity + 160) || (v24 = *(entity + 152)) != 0 && [v24 count] && *(entity + 160)))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WHERE %d <= Z_ENT AND Z_ENT <= %d", *(entity + 184), *(entity + 188)];
  }

  else
  {
    v23 = &stru_1EF3F1768;
  }

  v25 = v23;
  v26 = objc_alloc(MEMORY[0x1E696AD60]);
  if (v42)
  {
    v27 = [v26 initWithFormat:@"UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) %@", tableName, columnName, tableName, objc_msgSend(token, "name"), componentCopy, v25];
  }

  else
  {
    v27 = [v26 initWithFormat:@"UPDATE %@ SET %@ = %@ %@", tableName, columnName, componentCopy, v25, v36, v37];
  }

  v28 = v27;

  v29 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v28];
  v45 = v29;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v45, 1), @"dataStatements"}];
  v44[0] = v21;
  v44[1] = v22;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v44, 2), @"triggerCreationStatements"}];

  v43[0] = array;
  v43[1] = dictionary;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_computeNewColumnTokenForKeypathExpression:(uint64_t)expression governingEntity:
{
  v21[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  keyPath = [a2 keyPath];
  if (!expression || (v6 = [*(expression + 40) objectForKey:keyPath]) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v20 = @"bad keypath";
    v21[0] = a2;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v13 = v10;
    v14 = v11;
    v15 = @"bad keypath";
    goto LABEL_7;
  }

  v7 = v6;
  if ([objc_msgSend(v6 "propertyDescription")] != 2)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"bad keypath";
    v19 = a2;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = @"currently unsupported (bad root property type)";
    v13 = v16;
    v14 = v17;
LABEL_7:
    objc_exception_throw([v13 exceptionWithName:v14 reason:v15 userInfo:v12]);
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"NEW.%@", objc_msgSend(v7, "columnName")];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_computeSingleParameterTokenForFunctionAttribute:(uint64_t)attribute functionName:
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  v6 = [objc_msgSend(propertyDescription "derivationExpression")];
  if ([v6 count] != 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v17 = @"derived attribute";
    v18[0] = propertyDescription;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = @"currently unsupported (wrong number of arguments)";
    goto LABEL_6;
  }

  entity = [a2 entity];
  firstObject = [v6 firstObject];
  if ([firstObject expressionType] != 3)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = @"derived attribute";
    v16 = propertyDescription;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = @"bad parameter to function expression canonical: (not a keypath expression)";
LABEL_6:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v14 userInfo:v13]);
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", attribute, +[NSSQLDerivedAttributeSQLGenerator _computeNewColumnTokenForKeypathExpression:governingEntity:](NSSQLDerivedAttributeSQLGenerator, firstObject, entity)];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__CFString)_triggerColumnListComponentForAttributeKeypaths:(uint64_t)keypaths startingAt:
{
  v26 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a2 count] && (objc_msgSend(a2, "count") != 1 || objc_msgSend(objc_msgSend(a2, "anyObject"), "count")))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = 1;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          if ([v11 count] >= 2)
          {
            v18 = *MEMORY[0x1E695D940];
            v23 = @"problem keypath";
            v24 = v11;
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v18 reason:@"currently unsupported (extended keypath)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v24, &v23, 1)}]);
          }

          firstObject = [v11 firstObject];
          if (keypaths)
          {
            v13 = [*(keypaths + 40) objectForKey:firstObject];
          }

          else
          {
            v13 = 0;
          }

          columnName = [v13 columnName];
          if ((v9 & 1) == 0)
          {
            [(__CFString *)v5 appendString:@", "];
          }

          [(__CFString *)v5 appendString:columnName];
          v9 = 0;
          ++v10;
        }

        while (v7 != v10);
        v15 = [a2 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v7 = v15;
        v9 = 0;
      }

      while (v15);
    }
  }

  else
  {
    v5 = @"Z_OPT";
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (uint64_t)_generateSQLForAttributeFunctionDerivationForDerivedAttribute:(void *)attribute keypaths:
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = +[NSSQLDerivedAttributeSQLGenerator _triggerColumnListComponentForAttributeKeypaths:startingAt:](NSSQLDerivedAttributeSQLGenerator, attribute, [a2 entity]);
  [a2 entity];
  objc_opt_self();
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  v7 = [objc_msgSend(propertyDescription "derivationExpression")];
  if (sel_canonical_ == v7)
  {
    v9 = @"NSCoreDataCanonical";
LABEL_11:
    v8 = [NSSQLDerivedAttributeSQLGenerator _computeSingleParameterTokenForFunctionAttribute:a2 functionName:v9];
    goto LABEL_12;
  }

  if (sel_uppercase_ == v7)
  {
    v9 = @"NSCoreDataToUpper";
    goto LABEL_11;
  }

  if (sel_lowercase_ == v7)
  {
    v9 = @"NSCoreDataToLower";
    goto LABEL_11;
  }

  if (sel_random == v7)
  {
    v9 = @"random";
    goto LABEL_11;
  }

  if (sel_now != v7)
  {
    v14 = *MEMORY[0x1E695D940];
    v15 = @"derived attribute";
    v16[0] = propertyDescription;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v14 reason:@"currently unsupported (unsupported function)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, &v15, 1)}]);
  }

  objc_opt_self();
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataNow()"];
LABEL_12:
  v10 = v8;
  v11 = [v8 stringByReplacingOccurrencesOfString:@"NEW." withString:&stru_1EF3F1768];
  v12 = *MEMORY[0x1E69E9840];

  return [NSSQLDerivedAttributeSQLGenerator _generateTriggerForAttribute:a2 newToken:v10 updateToken:v11 triggerColumnListComponent:v5 triggerColumnWhereComponent:?];
}

+ (uint64_t)_generateSQLForDerivedAttributeWithOneParameterKeypath:(void *)keypath keypaths:
{
  v261[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  v6 = [objc_msgSend(propertyDescription "derivationExpression")];
  v7 = [objc_msgSend(keypath "anyObject")];
  v235 = a2;
  entity = [a2 entity];
  if (entity)
  {
    entity = [entity[5] objectForKey:v7];
  }

  propertyType = [entity propertyType];
  if (v6 == 4)
  {
    if (propertyType <= 7)
    {
      if (propertyType == 1)
      {
        v50 = *MEMORY[0x1E69E9840];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForAttributeFunctionDerivationForDerivedAttribute:a2 keypaths:keypath];
      }

      if (propertyType == 7)
      {
LABEL_12:
        objc_opt_self();
        anyObject = [keypath anyObject];
        v15 = *MEMORY[0x1E69E9840];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForToOneDerivationForDerivedAttribute:a2 toOneKeypath:anyObject];
      }

LABEL_107:
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v241 = @"derived attribute";
      v242 = propertyDescription;
      v170 = MEMORY[0x1E695DF20];
      v171 = &v242;
      v172 = &v241;
      goto LABEL_108;
    }

    if (propertyType != 8)
    {
      if (propertyType != 9)
      {
        goto LABEL_107;
      }

      objc_opt_self();
      propertyDescription2 = [a2 propertyDescription];
      v18 = [-[NSSQLiteStatement derivationExpression](propertyDescription2 "derivationExpression")];
      if (sel_count_ == v18)
      {
        v19 = v18;
        anyObject2 = [keypath anyObject];
        objc_opt_self();
        entity2 = [a2 entity];
        propertyDescription3 = [a2 propertyDescription];
        derivationExpression = [(NSSQLiteStatement *)propertyDescription3 derivationExpression];
        v24 = [anyObject2 objectAtIndexedSubscript:0];
        if (entity2)
        {
          v25 = [*(entity2 + 40) objectForKey:v24];
        }

        else
        {
          v25 = 0;
        }

        columnName = [v235 columnName];
        columnName2 = [v25 columnName];
        if (v19 == [derivationExpression selector])
        {
          tableName = [entity2 tableName];
          correlationTableName = [v25 correlationTableName];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", correlationTableName, objc_msgSend(entity2, "name"), -[NSSQLiteStatement name](propertyDescription3, "name")];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", objc_msgSend(entity2, "tableName"), objc_msgSend(entity2, "name"), -[NSSQLiteStatement name](propertyDescription3, "name")];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v27];
          v232 = v27;
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v27];
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v28];
          array = [MEMORY[0x1E695DF70] array];
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v34 = [[NSSQLiteStatement alloc] initWithEntity:entity2 sqlString:v29];
          [array addObject:v34];

          v35 = [[NSSQLiteStatement alloc] initWithEntity:entity2 sqlString:v30];
          [array addObject:v35];

          v36 = [[NSSQLiteStatement alloc] initWithEntity:entity2 sqlString:v31];
          [array addObject:v36];

          v254 = v34;
          v255 = v35;
          v256 = v36;
          v217 = dictionary;
          [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v254, 3), @"dropStatements"}];
          v220 = entity2;
          v214 = array;
          if (entity2 && (*(entity2 + 160) || (v74 = *(entity2 + 152)) != 0 && [v74 count] && *(entity2 + 160)))
          {
            v37 = entity2;
            v38 = tableName;
            v39 = *(v37 + 184);
            v40 = *(v37 + 188);
            v41 = objc_alloc(MEMORY[0x1E696AEC0]);
            v42 = correlationTableName;
            v43 = columnName2;
            if (v39 >= v40)
            {
              v205 = [v41 initWithFormat:@" WHEN %d = NEW.Z_ENT", v39];
              v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v39];
              v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v39, v180];
            }

            else
            {
              v205 = [v41 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v39, v40];
              v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v39, v40];
              v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v39, v40];
            }
          }

          else
          {
            v38 = tableName;
            v42 = correlationTableName;
            v43 = columnName2;
            v205 = &stru_1EF3F1768;
            v44 = &stru_1EF3F1768;
            v180 = &stru_1EF3F1768;
          }

          v210 = v180;
          v75 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v76 = v42;
          [v75 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v232, v42];
          [v75 appendString:@" BEGIN"];
          [v75 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1 WHERE Z_PK = NEW.%@%@;", v38, columnName, columnName, v43, v44];
          [v75 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v38, objc_msgSend(v235, "name"), columnName, v38, v43, v44];
          [v75 appendFormat:@" END"];
          v77 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v200 = v76;
          [v77 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW", v232, v76];
          [v77 appendString:@" BEGIN"];
          [v77 appendFormat:@" UPDATE %@ SET %@ = %@ - 1 WHERE Z_PK = OLD.%@%@;", v38, columnName, columnName, v43, v44];
          [v77 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v38, objc_msgSend(v235, "name"), columnName, v38, v43, v44];
          [v77 appendFormat:@" END"];
          v78 = objc_alloc_init(MEMORY[0x1E696AD60]);
          [v78 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v28, v38, v205];
          [v78 appendString:@" BEGIN"];
          [v78 appendFormat:@" UPDATE %@ SET %@ = (SELECT IFNULL(COUNT(%@), 0) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", v38, columnName, v43, v76, v43];
          [v78 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v38, objc_msgSend(v235, "name"), columnName, v38];
          [v78 appendFormat:@" END"];

          v236 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v75];
          [v214 addObject:v236];

          v79 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v77];
          [v214 addObject:v79];

          v80 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v78];
          [v214 addObject:v80];

          v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT IFNULL(COUNT(%@), 0) FROM %@ WHERE %@ = %@.Z_PK)%@;", v38, columnName, v43, v200, v43, v38, v210];
          v82 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v210];

          v261[0] = v82;
          [v217 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v261, 1), @"dataStatements"}];
          v249 = v236;
          v250 = v79;
          v251 = v80;
          [v217 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v249, 3), @"triggerCreationStatements"}];

          v259 = v214;
          v260 = v217;
          v83 = MEMORY[0x1E695DEC8];
          goto LABEL_104;
        }

        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v249 = @"derived attribute";
        v254 = propertyDescription3;
LABEL_117:
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v254 forKeys:&v249 count:1];
        v13 = @"Unsupported: (unsupported function)";
        goto LABEL_118;
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v249 = @"derived attribute";
      v254 = propertyDescription2;
      v173 = MEMORY[0x1E695DF20];
      v174 = &v254;
      v175 = &v249;
LABEL_113:
      v12 = [v173 dictionaryWithObjects:v174 forKeys:v175 count:1];
      v13 = @"currently unsupported (unsupported function on to many (not count or sum))";
      goto LABEL_118;
    }

    objc_opt_self();
    propertyDescription4 = [a2 propertyDescription];
    v52 = [objc_msgSend(propertyDescription4 "derivationExpression")];
    if (sel_count_ != v52 && sel_sum_ != v52)
    {
      if (sel_min_ != v52 && sel_max_ != v52)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v247 = @"derived attribute";
        v248 = propertyDescription4;
        v173 = MEMORY[0x1E695DF20];
        v174 = &v248;
        v175 = &v247;
        goto LABEL_113;
      }

      anyObject3 = [keypath anyObject];
      objc_opt_self();
      entity3 = [v235 entity];
      propertyDescription5 = [v235 propertyDescription];
      derivationExpression2 = [(NSSQLiteStatement *)propertyDescription5 derivationExpression];
      v57 = [anyObject3 objectAtIndexedSubscript:0];
      if (entity3)
      {
        v58 = [entity3[5] objectForKey:v57];
      }

      else
      {
        v58 = 0;
      }

      destinationEntity = [v58 destinationEntity];
      columnName3 = [v235 columnName];
      if (v58)
      {
        v59 = v58[7];
      }

      else
      {
        v59 = 0;
      }

      columnName4 = [v59 columnName];
      v61 = [anyObject3 objectAtIndexedSubscript:1];
      if (destinationEntity)
      {
        v62 = [*(destinationEntity + 40) objectForKey:v61];
      }

      else
      {
        v62 = 0;
      }

      columnName5 = [v62 columnName];
      v211 = columnName4;
      v208 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", columnName4, columnName5];
      if (sel_min_ == [derivationExpression2 selector])
      {
        v224 = @"<";
        v63 = @"MIN";
      }

      else
      {
        if (sel_max_ != [derivationExpression2 selector])
        {
          v178 = MEMORY[0x1E695DF30];
          v179 = *MEMORY[0x1E695D940];
          v249 = @"derived attribute";
          v254 = propertyDescription5;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v254 forKeys:&v249 count:1];
          v13 = @"Unsupported: (unsupported function)";
          v176 = v178;
          v177 = v179;
LABEL_119:
          objc_exception_throw([v176 exceptionWithName:v177 reason:v13 userInfo:v12]);
        }

        v224 = @">";
        v63 = @"MAX";
      }

      v215 = v63;
      tableName2 = [entity3 tableName];
      tableName3 = [destinationEntity tableName];
      v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(destinationEntity, "tableName"), objc_msgSend(entity3, "name"), -[NSSQLiteStatement name](propertyDescription5, "name")];
      v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(entity3, "tableName"), objc_msgSend(entity3, "name"), -[NSSQLiteStatement name](propertyDescription5, "name")];
      v218 = entity3;
      v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v86];
      v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_SET", v86];
      v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_UNSET", v86];
      v229 = v86;
      v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v86];
      v191 = v87;
      v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v87];
      array2 = [MEMORY[0x1E695DF70] array];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v95 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v88];
      [array2 addObject:v95];

      v96 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v89];
      [array2 addObject:v96];

      v97 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v90];
      [array2 addObject:v97];

      v98 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v91];
      [array2 addObject:v98];

      v99 = [[NSSQLiteStatement alloc] initWithEntity:v218 sqlString:v92];
      v195 = array2;
      [array2 addObject:v99];

      v254 = v95;
      v255 = v96;
      v256 = v97;
      v257 = v98;
      v258 = v99;
      v193 = dictionary2;
      [dictionary2 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v254, 5), @"dropStatements"}];

      if (v218 && (v218[20] || (v107 = v218[19]) != 0 && [v107 count] && v218[20]))
      {
        v100 = *(v218 + 46);
        v101 = *(v218 + 47);
        v102 = 0x1E696A000uLL;
        v103 = objc_alloc(MEMORY[0x1E696AEC0]);
        v104 = v211;
        if (v100 >= v101)
        {
          v100 = [v103 initWithFormat:@" WHEN %d = NEW.Z_ENT", v100];
          v1002 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v100];
          v181 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v100, v181];
        }

        else
        {
          v100 = [v103 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v100, v101];
          v1002 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v100, v101];
          v181 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v100, v101];
        }

        v189 = v181;
      }

      else
      {
        v100 = &stru_1EF3F1768;
        v1002 = &stru_1EF3F1768;
        v189 = &stru_1EF3F1768;
        v102 = 0x1E696A000;
        v104 = v211;
      }

      v108 = destinationEntity;
      if (destinationEntity && (*(destinationEntity + 160) || (v114 = *(destinationEntity + 152)) != 0 && (v115 = [v114 count], v108 = destinationEntity, v115) && *(destinationEntity + 160)))
      {
        v109 = *(v108 + 184);
        v110 = *(v108 + 188);
        v111 = objc_alloc(*(v102 + 3776));
        if (v109 >= v110)
        {
          v109 = [v111 initWithFormat:@" AND %d = Z_ENT", v109];
          v1812 = [objc_alloc(*(v102 + 3776)) initWithFormat:@" WHERE %d = Z_ENT", v109, v181];
        }

        else
        {
          v109 = [v111 initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v109, v110];
          v1812 = [objc_alloc(*(v102 + 3776)) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v109, v110];
        }
      }

      else
      {
        v109 = &stru_1EF3F1768;
        v1812 = &stru_1EF3F1768;
      }

      v185 = v1812;
      v116 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v116 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL AND NEW.%@ NOT NULL%@)", v229, tableName3, v104, columnName5, v109];
      [v116 appendString:@" BEGIN"];
      v117 = v109;
      v213 = v109;
      v118 = columnName3;
      v119 = tableName2;
      v184 = v116;
      [v116 appendFormat:@" UPDATE %@ SET %@ = NEW.%@ WHERE Z_PK = NEW.%@%@ AND %@;", tableName2, columnName3, columnName5, v104, v1002, objc_msgSend(*(v102 + 3776), "stringWithFormat:", @"(%@ IS NULL OR NEW.%@ %@ %@)", columnName3, columnName5, v224, columnName3)];
      [v116 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@ AND %@;", v119, objc_msgSend(v235, "name"), v118, v119, v104, v1002, objc_msgSend(*(v102 + 3776), "stringWithFormat:", @"(%@ IS NULL OR NEW.%@ %@= %@)", v118, columnName5, v224, v118)];
      [v116 appendFormat:@" END"];
      v120 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v120 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_SET AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL AND NEW.%@ NOT NULL%@)", v229, v208, tableName3, v104, columnName5, v117];
      v204 = v120;
      [v120 appendString:@" BEGIN"];
      [v120 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", tableName2, columnName3, v215, columnName5, tableName3, v104, v104, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", columnName5, v224, columnName3)];
      name = [v235 name];
      [v204 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v119, name, columnName3, v119, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", columnName5, v224, columnName3)];
      [v204 appendFormat:@" UPDATE %@ SET %@ = NEW.%@ WHERE Z_PK = NEW.%@%@ AND %@;", tableName2, v118, columnName5, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@ IS NULL OR NEW.%@ %@ %@)", v118, columnName5, v224, v118)];
      name2 = [v235 name];
      [v204 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@ AND %@;", v119, name2, columnName3, v119, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"NEW.%@ %@= %@", columnName5, v224, columnName3)];
      [v204 appendFormat:@" END"];
      v123 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v123 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_UNSET AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL AND OLD.%@ NOT NULL AND (NEW.%@ IS NULL OR NEW.%@ IS NULL)%@)", v229, v208, tableName3, v104, columnName5, v104, columnName5, v213];
      [v123 appendString:@" BEGIN"];
      [v123 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", tableName2, columnName3, v215, columnName5, tableName3, v104, v104, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", columnName5, v224, columnName3)];
      name3 = [v235 name];
      [v123 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v119, name3, v118, v119, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@ IS NULL OR OLD.%@ %@= %@)", v118, columnName5, v224, v118)];
      [v123 appendFormat:@" END"];
      v125 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v125 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL AND OLD.%@ NOT NULL%@)", v229, tableName3, v104, columnName5, v213];
      [v125 appendString:@" BEGIN"];
      [v125 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", tableName2, columnName3, v215, columnName5, tableName3, v104, v104, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", columnName5, v224, columnName3)];
      name4 = [v235 name];
      [v125 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v119, name4, v118, v119, v104, v1002, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@ IS NULL OR OLD.%@ %@= %@)", v118, columnName5, v224, v118)];
      [v125 appendFormat:@" END"];
      v127 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v127 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v191, tableName2, v100];
      [v127 appendString:@" BEGIN"];
      [v127 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", tableName2, columnName3, v215, columnName5, objc_msgSend(destinationEntity, "tableName"), v104];
      [v127 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v119, objc_msgSend(v235, "name"), columnName3, v119];
      [v127 appendFormat:@" END"];

      v237 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v184];
      [v195 addObject:v237];

      v230 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v204];
      [v195 addObject:v230];

      v225 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v123];
      [v195 addObject:v225];

      v128 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v125];
      [v195 addObject:v128];

      v129 = [[NSSQLiteStatement alloc] initWithEntity:v218 sqlString:v127];
      [v195 addObject:v129];

      v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = %@.Z_PK)%@;", v119, columnName3, v215, columnName5, objc_msgSend(destinationEntity, "tableName"), v104, v119, v185];
      v131 = [[NSSQLiteStatement alloc] initWithEntity:v218 sqlString:v185];

      v261[0] = v131;
      [v193 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v261, 1), @"dataStatements"}];
      v249 = v237;
      v250 = v230;
      v251 = v225;
      v252 = v128;
      v253 = v129;
      [v193 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v249, 5), @"triggerCreationStatements"}];

      v259 = v195;
      v260 = v193;
LABEL_103:
      v83 = MEMORY[0x1E695DEC8];
LABEL_104:
      result = [v83 arrayWithObjects:&v259 count:2];
      v169 = *MEMORY[0x1E69E9840];
      return result;
    }

    anyObject4 = [keypath anyObject];
    objc_opt_self();
    entity4 = [v235 entity];
    propertyDescription6 = [v235 propertyDescription];
    derivationExpression3 = [(NSSQLiteStatement *)propertyDescription6 derivationExpression];
    v68 = [anyObject4 objectAtIndexedSubscript:0];
    if (entity4)
    {
      v69 = [*(entity4 + 40) objectForKey:v68];
    }

    else
    {
      v69 = 0;
    }

    destinationEntity2 = [v69 destinationEntity];
    columnName6 = [v235 columnName];
    if (v69)
    {
      v71 = v69[7];
    }

    else
    {
      v71 = 0;
    }

    columnName7 = [v71 columnName];
    if (sel_count_ != [derivationExpression3 selector])
    {
      goto LABEL_49;
    }

    if ([anyObject4 count] < 2)
    {
      v72 = 0;
      v203 = 1;
      v1333 = columnName7;
      v133 = @"+ 1";
      v1332 = @"- 1";
    }

    else
    {
      v84 = [anyObject4 objectAtIndexedSubscript:1];
      if (!destinationEntity2 || (v85 = [destinationEntity2[5] objectForKey:v84]) == 0 || v85[24] != 1)
      {
LABEL_49:
        v72 = 0;
        v203 = 0;
        v1332 = 0;
        v1333 = 0;
        v133 = 0;
        goto LABEL_83;
      }

      v1332 = 0;
      v1333 = 0;
      v133 = 0;
      v72 = [objc_msgSend(v85 "propertyDescription")] == 800;
      v203 = v72;
    }

LABEL_83:
    selector = [derivationExpression3 selector];
    v207 = v72;
    if (v72 || (columnName8 = v1333, sel_sum_ == selector))
    {
      v134 = [anyObject4 objectAtIndexedSubscript:1];
      if (destinationEntity2)
      {
        v135 = [destinationEntity2[5] objectForKey:v134];
      }

      else
      {
        v135 = 0;
      }

      columnName8 = [v135 columnName];
      v133 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+ IFNULL(NEW.%@, 0)", columnName8];
      v1332 = [MEMORY[0x1E696AEC0] stringWithFormat:@"- IFNULL(OLD.%@, 0)", columnName8];
      v1333 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", columnName7, columnName8];
    }

    v226 = columnName8;
    if (!v133 || !v1332)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v249 = @"derived attribute";
      v254 = propertyDescription6;
      goto LABEL_117;
    }

    v194 = v1332;
    tableName4 = [entity4 tableName];
    tableName5 = [destinationEntity2 tableName];
    v222 = destinationEntity2;
    v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", objc_msgSend(destinationEntity2, "tableName"), objc_msgSend(entity4, "name"), -[NSSQLiteStatement name](propertyDescription6, "name")];
    v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", objc_msgSend(entity4, "tableName"), objc_msgSend(entity4, "name"), -[NSSQLiteStatement name](propertyDescription6, "name")];
    v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v136];
    v1362 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_INCREMENT", v136];
    v1363 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_DECREMENT", v136];
    v219 = v136;
    v1364 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v136];
    v192 = v137;
    v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v137];
    array3 = [MEMORY[0x1E695DF70] array];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v145 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v136];
    [array3 addObject:v145];

    v146 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v1362];
    [array3 addObject:v146];

    v147 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v1363];
    [array3 addObject:v147];

    v148 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v1364];
    [array3 addObject:v148];

    v149 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v137];
    [array3 addObject:v149];

    v254 = v145;
    v255 = v146;
    v256 = v147;
    v257 = v148;
    v258 = v149;
    v196 = dictionary3;
    [dictionary3 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v254, 5), @"dropStatements"}];
    v201 = entity4;
    if (entity4 && (*(entity4 + 160) || (v155 = *(entity4 + 152)) != 0 && [v155 count] && *(entity4 + 160)))
    {
      v150 = *(entity4 + 184);
      v151 = *(entity4 + 188);
      v152 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v150 >= v151)
      {
        v150 = [v152 initWithFormat:@" WHEN %d = NEW.Z_ENT", v150];
        v1502 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v150];
        v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v150, v182];
      }

      else
      {
        v150 = [v152 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v150, v151];
        v1502 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v150, v151];
        v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v150, v151];
      }
    }

    else
    {
      v150 = &stru_1EF3F1768;
      v1502 = &stru_1EF3F1768;
      v182 = &stru_1EF3F1768;
    }

    v190 = v182;
    v156 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v156 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL)", v219, tableName5, columnName7];
    v186 = v156;
    [v156 appendString:@" BEGIN"];
    v157 = columnName6;
    v158 = tableName4;
    [v156 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) %@ WHERE Z_PK = NEW.%@%@;", tableName4, columnName6, columnName6, v133, columnName7, v1502];
    [v156 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v158, objc_msgSend(v235, "name"), columnName6, v158, columnName7, v1502];
    [v156 appendFormat:@" END"];
    v159 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v159 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_INCREMENT AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL)", v219, v1333, tableName5, columnName7];
    [v159 appendString:@" BEGIN"];
    [v159 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = NEW.%@%@;", tableName4, v157, v157, v133, columnName7, v1502];
    [v159 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v158, objc_msgSend(v235, "name"), columnName6, v158, columnName7, v1502];
    [v159 appendFormat:@" END"];
    v160 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v160 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_DECREMENT AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL)", v219, v1333, tableName5, columnName7];
    v183 = v160;
    [v160 appendString:@" BEGIN"];
    [v160 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = OLD.%@%@;", tableName4, v157, v157, v194, columnName7, v1502];
    [v160 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v158, objc_msgSend(v235, "name"), columnName6, v158, columnName7, v1502];
    [v160 appendFormat:@" END"];
    v161 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v161 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL)", v219, tableName5, columnName7];
    [v161 appendString:@" BEGIN"];
    [v161 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = OLD.%@%@;", tableName4, v157, v157, v194, columnName7, v1502];
    [v161 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v158, objc_msgSend(v235, "name"), columnName6, v158, columnName7, v1502];
    [v161 appendFormat:@" END"];
    v162 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v162 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v192, tableName4, v150];
    [v162 appendString:@" BEGIN"];
    if ((v203 & !v207) != 0)
    {
      v163 = @"COUNT";
    }

    else
    {
      v163 = @"SUM";
    }

    [v162 appendFormat:@" UPDATE %@ SET %@ = (SELECT IFNULL(%@(%@), 0) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", tableName4, columnName6, v163, v226, objc_msgSend(v222, "tableName"), columnName7];
    [v162 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName4, objc_msgSend(v235, "name"), columnName6, tableName4];
    [v162 appendFormat:@" END"];

    v238 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v186];
    [array3 addObject:v238];

    v231 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v159];
    [array3 addObject:v231];

    v164 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v183];
    [array3 addObject:v164];

    v165 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v161];
    [array3 addObject:v165];

    v166 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v162];
    [array3 addObject:v166];

    v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT IFNULL(%@(%@), 0) FROM %@ WHERE %@ = %@.Z_PK)%@;", tableName4, columnName6, v163, v226, objc_msgSend(v222, "tableName"), columnName7, tableName4, v190];
    v168 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v190];

    v261[0] = v168;
    [v196 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v261, 1), @"dataStatements"}];
    v249 = v238;
    v250 = v231;
    v251 = v164;
    v252 = v165;
    v253 = v166;
    [v196 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v249, 5), @"triggerCreationStatements"}];

    v259 = array3;
    v260 = v196;
    goto LABEL_103;
  }

  if (v6 != 3)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v239 = @"derived attribute";
    v240 = propertyDescription;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
    v13 = @"currently unsupported (unsupported expression type)";
    goto LABEL_118;
  }

  if (propertyType != 1)
  {
    if (propertyType != 7)
    {
      if (propertyType == 8)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v245 = @"derived attribute";
        v246 = propertyDescription;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v246 forKeys:&v245 count:1];
        v13 = @"malformed expression (dependent property is to many, derivation expression is not a function)";
LABEL_118:
        v176 = v10;
        v177 = v11;
        goto LABEL_119;
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v243 = @"derived attribute";
      v244 = propertyDescription;
      v170 = MEMORY[0x1E695DF20];
      v171 = &v244;
      v172 = &v243;
LABEL_108:
      v12 = [v170 dictionaryWithObjects:v171 forKeys:v172 count:1];
      v13 = @"currently unsupported (unsupported keypath property type)";
      goto LABEL_118;
    }

    goto LABEL_12;
  }

  objc_opt_self();
  v46 = +[NSSQLDerivedAttributeSQLGenerator _triggerColumnListComponentForAttributeKeypaths:startingAt:](NSSQLDerivedAttributeSQLGenerator, keypath, [a2 entity]);
  [a2 entity];
  objc_opt_self();
  objc_opt_self();
  v47 = +[NSSQLDerivedAttributeSQLGenerator _computeNewColumnTokenForKeypathExpression:governingEntity:](NSSQLDerivedAttributeSQLGenerator, [objc_msgSend(a2 "propertyDescription")], objc_msgSend(a2, "entity"));
  v48 = [v47 stringByReplacingOccurrencesOfString:@"NEW." withString:&stru_1EF3F1768];
  v49 = *MEMORY[0x1E69E9840];

  return [NSSQLDerivedAttributeSQLGenerator _generateTriggerForAttribute:a2 newToken:v47 updateToken:v48 triggerColumnListComponent:v46 triggerColumnWhereComponent:?];
}

+ (uint64_t)generateSQLForDerivedAttribute:(void *)attribute keypaths:
{
  v19[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  if ([propertyDescription filteringPredicate])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v18 = @"derived attribute";
    v19[0] = propertyDescription;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = @"currently unsupported (predicate)";
    goto LABEL_15;
  }

  if ([attribute count])
  {
    if ([attribute count] == 1)
    {
      anyObject = [attribute anyObject];
      if ([anyObject count] == 1 || objc_msgSend(anyObject, "count") == 2)
      {
        v7 = *MEMORY[0x1E69E9840];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForDerivedAttributeWithOneParameterKeypath:a2 keypaths:attribute];
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v16 = @"derived attribute";
      v17 = propertyDescription;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = @"currently unsupported (too many steps)";
    }

    else
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v14 = @"derived attribute";
      v15 = propertyDescription;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13 = @"currently unsupported (too many keypaths)";
    }

LABEL_15:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v13 userInfo:v12]);
  }

  v9 = *MEMORY[0x1E69E9840];

  return [NSSQLDerivedAttributeSQLGenerator _generateSQLForAttributeFunctionDerivationForDerivedAttribute:a2 keypaths:attribute];
}

@end