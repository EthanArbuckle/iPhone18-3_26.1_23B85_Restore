@interface NSSQLDerivedAttributeSQLGenerator
+ (__CFString)_triggerColumnListComponentForAttributeKeypaths:(uint64_t)a3 startingAt:;
+ (uint64_t)_computeNewColumnTokenForKeypathExpression:(uint64_t)a3 governingEntity:;
+ (uint64_t)_computeSingleParameterTokenForFunctionAttribute:(uint64_t)a3 functionName:;
+ (uint64_t)_generateSQLForAttributeFunctionDerivationForDerivedAttribute:(void *)a3 keypaths:;
+ (uint64_t)_generateSQLForDerivedAttributeWithOneParameterKeypath:(void *)a3 keypaths:;
+ (uint64_t)_generateSQLForToOneDerivationForDerivedAttribute:(void *)a3 toOneKeypath:;
+ (uint64_t)_generateTriggerForAttribute:(uint64_t)a1 newToken:(void *)a2 updateToken:(uint64_t)a3 triggerColumnListComponent:(uint64_t)a4 triggerColumnWhereComponent:(void *)a5;
+ (uint64_t)_parameterPropertyTokenForDerivedAttribute:(void *)a3 andKeypath:(id *)a4 onEntity:;
+ (uint64_t)generateSQLForDerivedAttribute:(void *)a3 keypaths:;
@end

@implementation NSSQLDerivedAttributeSQLGenerator

+ (uint64_t)_parameterPropertyTokenForDerivedAttribute:(void *)a3 andKeypath:(id *)a4 onEntity:
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 propertyDescription];
  if ([a3 count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v17 = @"derived attribute";
    v18[0] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = @"Unsupported: (multi-step keypath)";
    goto LABEL_10;
  }

  v8 = [a3 objectAtIndexedSubscript:1];
  if (a4)
  {
    a4 = [a4[5] objectForKey:v8];
  }

  if ([a4 propertyType] != 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = @"derived attribute";
    v16 = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = @"Unsupported: (bad keypath, should be toOne.attribute)";
LABEL_10:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v14 userInfo:v13]);
  }

  v9 = *MEMORY[0x1E69E9840];

  return [a4 columnName];
}

+ (uint64_t)_generateSQLForToOneDerivationForDerivedAttribute:(void *)a3 toOneKeypath:
{
  v84[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 entity];
  v6 = [a2 propertyDescription];
  v7 = [v6 derivationExpression];
  v8 = [v7 expressionType];
  v9 = [a3 objectAtIndexedSubscript:0];
  if (v5)
  {
    v10 = [*(v5 + 40) objectForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 destinationEntity];
  v75 = a2;
  v76 = [a2 columnName];
  if (v8 != 4)
  {
    if (v8 == 3)
    {
      v12 = [NSSQLDerivedAttributeSQLGenerator _parameterPropertyTokenForDerivedAttribute:a2 andKeypath:a3 onEntity:v11];
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NEW.%@", v12];
      v71 = v12;
      v69 = v12;
      goto LABEL_13;
    }

    v61 = MEMORY[0x1E695DF30];
    v62 = *MEMORY[0x1E695D940];
    v81 = @"derived attribute";
    v82 = v6;
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v64 = @"Unsupported: (unsupported expression for to one)";
LABEL_49:
    objc_exception_throw([v61 exceptionWithName:v62 reason:v64 userInfo:v63]);
  }

  v13 = [NSSQLDerivedAttributeSQLGenerator _parameterPropertyTokenForDerivedAttribute:a2 andKeypath:a3 onEntity:v11];
  v14 = [v7 selector];
  v69 = v13;
  if (sel_canonical_ == v14)
  {
    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataCanonical(NEW.%@)", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataCanonical(%@)", v13];
  }

  else if (sel_uppercase_ == v14)
  {
    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToUpper(NEW.%@)", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToUpper(%@)", v13];
  }

  else
  {
    if (sel_lowercase_ != v14)
    {
      v61 = MEMORY[0x1E695DF30];
      v62 = *MEMORY[0x1E695D940];
      v83 = @"derived attribute";
      v84[0] = v6;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
      v64 = @"Unsupported: (unsupported function for to one)";
      goto LABEL_49;
    }

    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToLower(NEW.%@)", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataToLower(%@)", v13];
  }

  v71 = v15;
LABEL_13:
  v16 = [v5 tableName];
  v17 = [v11 tableName];
  v73 = [v10 columnName];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", v16, objc_msgSend(objc_msgSend(v6, "entity"), "name"), objc_msgSend(v6, "name")];
  v74 = v17;
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", v17, objc_msgSend(objc_msgSend(v6, "entity"), "name"), objc_msgSend(v6, "name")];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v18];
  v70 = v18;
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v18];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v19];
  v72 = v19;
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v19];
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MEMORY[0x1E695DF90] dictionary];
  v26 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v20];

  [v24 addObject:v26];
  v27 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v21];

  [v24 addObject:v27];
  v28 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v22];

  [v24 addObject:v28];
  v29 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v23];

  v68 = v24;
  [v24 addObject:v29];

  v80[0] = v26;
  v80[1] = v27;
  v80[2] = v28;
  v80[3] = v29;
  v67 = v25;
  [v25 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v80, 4), @"dropStatements"}];
  if (v5)
  {
    v30 = v70;
    if (*(v5 + 160) || (v37 = *(v5 + 152)) != 0 && [v37 count] && *(v5 + 160))
    {
      v31 = *(v5 + 184);
      v32 = *(v5 + 188);
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
  [v39 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v30, v16];
  [v39 appendString:@" BEGIN"];
  if (v34)
  {
    v40 = [*(v35 + 3776) stringWithFormat:@" AND %@", v34];
  }

  else
  {
    v40 = &stru_1EF3F1768;
  }

  [v39 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = NEW.%@) WHERE Z_PK = NEW.Z_PK%@;", v16, v76, v71, v74, v73, v40];
  v41 = [v75 name];
  if (v34)
  {
    v42 = [*(v35 + 3776) stringWithFormat:@" AND %@", v34];
  }

  else
  {
    v42 = &stru_1EF3F1768;
  }

  [v39 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK%@;", v16, v41, v76, v16, v42];
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

  [v43 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW%@", v30, v73, v16, v44];
  [v43 appendString:@" BEGIN"];
  [v43 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = NEW.%@) WHERE Z_PK = NEW.Z_PK;", v16, v76, v71, v74, v73];
  [v43 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v16, objc_msgSend(v75, "name"), v76, v16];
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

  [v45 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE %@ = NEW.Z_PK%@;", v16, v76, v66, v73, v46];
  v47 = [v75 name];
  if (v38)
  {
    v48 = [*(v35 + 3776) stringWithFormat:@" AND %@", v38];
  }

  else
  {
    v48 = &stru_1EF3F1768;
  }

  [v45 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE %@ = NEW.Z_PK%@;", v16, v47, v76, v16, v73, v48];
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

  [v49 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE %@ = NEW.Z_PK%@;", v16, v76, v66, v73, v50];
  v51 = [v75 name];
  if (v38)
  {
    v52 = [*(v35 + 3776) stringWithFormat:@" AND %@", v38];
  }

  else
  {
    v52 = &stru_1EF3F1768;
  }

  [v49 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE %@ = NEW.Z_PK%@;", v16, v51, v76, v16, v73, v52];
  [v49 appendFormat:@" END"];

  v53 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v39];
  [v68 addObject:v53];

  v54 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v43];
  [v68 addObject:v54];

  v55 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v45];
  [v68 addObject:v55];

  v56 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v49];
  [v68 addObject:v56];

  v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = %@.%@)%@", v16, v76, v71, v74, v16, v73, &stru_1EF3F1768];
  v58 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v57];

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

+ (uint64_t)_generateTriggerForAttribute:(uint64_t)a1 newToken:(void *)a2 updateToken:(uint64_t)a3 triggerColumnListComponent:(uint64_t)a4 triggerColumnWhereComponent:(void *)a5
{
  v46[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v8 = [a2 entity];
  v9 = [a2 propertyDescription];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(v8, "tableName"), objc_msgSend(objc_msgSend(v9, "entity"), "name"), objc_msgSend(v9, "name")];
  v11 = [v8 tableName];
  v12 = [a2 columnName];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v10];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v10];
  if ([objc_msgSend(v9 "derivationExpression")] == 3 && (v13 = objc_msgSend(objc_msgSend(v9, "derivationExpression"), "keyPath"), v8) && (v14 = objc_msgSend(*(v8 + 40), "objectForKey:", v13)) != 0)
  {
    v42 = [objc_msgSend(v14 "propertyDescription")];
  }

  else
  {
    v42 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v15 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v10, v11];
  if ([a5 length])
  {
    [v15 appendFormat:@" WHEN (NEW.%@ NOT NULL)", a5];
  }

  [v15 appendString:@" BEGIN"];
  if (v42)
  {
    [v15 appendFormat:@" UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) WHERE Z_PK = NEW.Z_PK;", v11, v12, v11, objc_msgSend(a2, "name"), a4];
  }

  else
  {
    [v15 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE Z_PK = NEW.Z_PK;", v11, v12, a3, v32, v34];
  }

  [v15 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v11, objc_msgSend(a2, "name"), v12, v11];
  [v15 appendFormat:@" END"];
  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v16 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW", v10, a5, v11];
  if ([&stru_1EF3F1768 length])
  {
    [v16 appendFormat:@" %@", &stru_1EF3F1768];
  }

  [v16 appendString:@" BEGIN"];
  v41 = a4;
  if (v42)
  {
    [v16 appendFormat:@" UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) WHERE Z_PK = NEW.Z_PK;", v11, v12, v11, objc_msgSend(a2, "name"), a4];
  }

  else
  {
    [v16 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE Z_PK = NEW.Z_PK;", v11, v12, a3, v33, v35];
  }

  [v16 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v11, objc_msgSend(a2, "name"), v12, v11];
  [v16 appendFormat:@" END"];

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = [[NSSQLiteStatement alloc] initWithEntity:v8 sqlString:v38];
  [v17 addObject:v19];

  v20 = [[NSSQLiteStatement alloc] initWithEntity:v8 sqlString:v39];
  [v17 addObject:v20];

  v46[0] = v19;
  v46[1] = v20;
  [v18 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v46, 2), @"dropStatements"}];

  v21 = [[NSSQLiteStatement alloc] initWithEntity:v8 sqlString:v15];
  [v17 addObject:v21];

  v22 = [[NSSQLiteStatement alloc] initWithEntity:v8 sqlString:v16];
  [v17 addObject:v22];

  if (v8 && (*(v8 + 160) || (v24 = *(v8 + 152)) != 0 && [v24 count] && *(v8 + 160)))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WHERE %d <= Z_ENT AND Z_ENT <= %d", *(v8 + 184), *(v8 + 188)];
  }

  else
  {
    v23 = &stru_1EF3F1768;
  }

  v25 = v23;
  v26 = objc_alloc(MEMORY[0x1E696AD60]);
  if (v42)
  {
    v27 = [v26 initWithFormat:@"UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) %@", v11, v12, v11, objc_msgSend(a2, "name"), v41, v25];
  }

  else
  {
    v27 = [v26 initWithFormat:@"UPDATE %@ SET %@ = %@ %@", v11, v12, v41, v25, v36, v37];
  }

  v28 = v27;

  v29 = [[NSSQLiteStatement alloc] initWithEntity:v8 sqlString:v28];
  v45 = v29;
  [v18 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v45, 1), @"dataStatements"}];
  v44[0] = v21;
  v44[1] = v22;
  [v18 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v44, 2), @"triggerCreationStatements"}];

  v43[0] = v17;
  v43[1] = v18;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_computeNewColumnTokenForKeypathExpression:(uint64_t)a3 governingEntity:
{
  v21[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 keyPath];
  if (!a3 || (v6 = [*(a3 + 40) objectForKey:v5]) == 0)
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

+ (uint64_t)_computeSingleParameterTokenForFunctionAttribute:(uint64_t)a3 functionName:
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 propertyDescription];
  v6 = [objc_msgSend(v5 "derivationExpression")];
  if ([v6 count] != 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v17 = @"derived attribute";
    v18[0] = v5;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = @"currently unsupported (wrong number of arguments)";
    goto LABEL_6;
  }

  v7 = [a2 entity];
  v8 = [v6 firstObject];
  if ([v8 expressionType] != 3)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = @"derived attribute";
    v16 = v5;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = @"bad parameter to function expression canonical: (not a keypath expression)";
LABEL_6:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v14 userInfo:v13]);
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", a3, +[NSSQLDerivedAttributeSQLGenerator _computeNewColumnTokenForKeypathExpression:governingEntity:](NSSQLDerivedAttributeSQLGenerator, v8, v7)];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (__CFString)_triggerColumnListComponentForAttributeKeypaths:(uint64_t)a3 startingAt:
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

          v12 = [v11 firstObject];
          if (a3)
          {
            v13 = [*(a3 + 40) objectForKey:v12];
          }

          else
          {
            v13 = 0;
          }

          v14 = [v13 columnName];
          if ((v9 & 1) == 0)
          {
            [(__CFString *)v5 appendString:@", "];
          }

          [(__CFString *)v5 appendString:v14];
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

+ (uint64_t)_generateSQLForAttributeFunctionDerivationForDerivedAttribute:(void *)a3 keypaths:
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = +[NSSQLDerivedAttributeSQLGenerator _triggerColumnListComponentForAttributeKeypaths:startingAt:](NSSQLDerivedAttributeSQLGenerator, a3, [a2 entity]);
  [a2 entity];
  objc_opt_self();
  objc_opt_self();
  v6 = [a2 propertyDescription];
  v7 = [objc_msgSend(v6 "derivationExpression")];
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
    v16[0] = v6;
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

+ (uint64_t)_generateSQLForDerivedAttributeWithOneParameterKeypath:(void *)a3 keypaths:
{
  v261[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 propertyDescription];
  v6 = [objc_msgSend(v5 "derivationExpression")];
  v7 = [objc_msgSend(a3 "anyObject")];
  v235 = a2;
  v8 = [a2 entity];
  if (v8)
  {
    v8 = [v8[5] objectForKey:v7];
  }

  v9 = [v8 propertyType];
  if (v6 == 4)
  {
    if (v9 <= 7)
    {
      if (v9 == 1)
      {
        v50 = *MEMORY[0x1E69E9840];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForAttributeFunctionDerivationForDerivedAttribute:a2 keypaths:a3];
      }

      if (v9 == 7)
      {
LABEL_12:
        objc_opt_self();
        v14 = [a3 anyObject];
        v15 = *MEMORY[0x1E69E9840];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForToOneDerivationForDerivedAttribute:a2 toOneKeypath:v14];
      }

LABEL_107:
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v241 = @"derived attribute";
      v242 = v5;
      v170 = MEMORY[0x1E695DF20];
      v171 = &v242;
      v172 = &v241;
      goto LABEL_108;
    }

    if (v9 != 8)
    {
      if (v9 != 9)
      {
        goto LABEL_107;
      }

      objc_opt_self();
      v17 = [a2 propertyDescription];
      v18 = [-[NSSQLiteStatement derivationExpression](v17 "derivationExpression")];
      if (sel_count_ == v18)
      {
        v19 = v18;
        v20 = [a3 anyObject];
        objc_opt_self();
        v21 = [a2 entity];
        v22 = [a2 propertyDescription];
        v23 = [(NSSQLiteStatement *)v22 derivationExpression];
        v24 = [v20 objectAtIndexedSubscript:0];
        if (v21)
        {
          v25 = [*(v21 + 40) objectForKey:v24];
        }

        else
        {
          v25 = 0;
        }

        v227 = [v235 columnName];
        v223 = [v25 columnName];
        if (v19 == [v23 selector])
        {
          v202 = [v21 tableName];
          v26 = [v25 correlationTableName];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", v26, objc_msgSend(v21, "name"), -[NSSQLiteStatement name](v22, "name")];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", objc_msgSend(v21, "tableName"), objc_msgSend(v21, "name"), -[NSSQLiteStatement name](v22, "name")];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v27];
          v232 = v27;
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v27];
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v28];
          v32 = [MEMORY[0x1E695DF70] array];
          v33 = [MEMORY[0x1E695DF90] dictionary];
          v34 = [[NSSQLiteStatement alloc] initWithEntity:v21 sqlString:v29];
          [v32 addObject:v34];

          v35 = [[NSSQLiteStatement alloc] initWithEntity:v21 sqlString:v30];
          [v32 addObject:v35];

          v36 = [[NSSQLiteStatement alloc] initWithEntity:v21 sqlString:v31];
          [v32 addObject:v36];

          v254 = v34;
          v255 = v35;
          v256 = v36;
          v217 = v33;
          [v33 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v254, 3), @"dropStatements"}];
          v220 = v21;
          v214 = v32;
          if (v21 && (*(v21 + 160) || (v74 = *(v21 + 152)) != 0 && [v74 count] && *(v21 + 160)))
          {
            v37 = v21;
            v38 = v202;
            v39 = *(v37 + 184);
            v40 = *(v37 + 188);
            v41 = objc_alloc(MEMORY[0x1E696AEC0]);
            v42 = v26;
            v43 = v223;
            if (v39 >= v40)
            {
              v205 = [v41 initWithFormat:@" WHEN %d = NEW.Z_ENT", v39];
              v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v39];
              v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v39, v180];
            }

            else
            {
              v205 = [v41 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v39, v40];
              v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v39, v40];
              v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v39, v40];
            }
          }

          else
          {
            v38 = v202;
            v42 = v26;
            v43 = v223;
            v205 = &stru_1EF3F1768;
            v44 = &stru_1EF3F1768;
            v45 = &stru_1EF3F1768;
          }

          v210 = v45;
          v75 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v76 = v42;
          [v75 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v232, v42];
          [v75 appendString:@" BEGIN"];
          [v75 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1 WHERE Z_PK = NEW.%@%@;", v38, v227, v227, v43, v44];
          [v75 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v38, objc_msgSend(v235, "name"), v227, v38, v43, v44];
          [v75 appendFormat:@" END"];
          v77 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v200 = v76;
          [v77 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW", v232, v76];
          [v77 appendString:@" BEGIN"];
          [v77 appendFormat:@" UPDATE %@ SET %@ = %@ - 1 WHERE Z_PK = OLD.%@%@;", v38, v227, v227, v43, v44];
          [v77 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v38, objc_msgSend(v235, "name"), v227, v38, v43, v44];
          [v77 appendFormat:@" END"];
          v78 = objc_alloc_init(MEMORY[0x1E696AD60]);
          [v78 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v28, v38, v205];
          [v78 appendString:@" BEGIN"];
          [v78 appendFormat:@" UPDATE %@ SET %@ = (SELECT IFNULL(COUNT(%@), 0) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", v38, v227, v43, v76, v43];
          [v78 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v38, objc_msgSend(v235, "name"), v227, v38];
          [v78 appendFormat:@" END"];

          v236 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v75];
          [v214 addObject:v236];

          v79 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v77];
          [v214 addObject:v79];

          v80 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v78];
          [v214 addObject:v80];

          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT IFNULL(COUNT(%@), 0) FROM %@ WHERE %@ = %@.Z_PK)%@;", v38, v227, v43, v200, v43, v38, v210];
          v82 = [[NSSQLiteStatement alloc] initWithEntity:v220 sqlString:v81];

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
        v254 = v22;
LABEL_117:
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v254 forKeys:&v249 count:1];
        v13 = @"Unsupported: (unsupported function)";
        goto LABEL_118;
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v249 = @"derived attribute";
      v254 = v17;
      v173 = MEMORY[0x1E695DF20];
      v174 = &v254;
      v175 = &v249;
LABEL_113:
      v12 = [v173 dictionaryWithObjects:v174 forKeys:v175 count:1];
      v13 = @"currently unsupported (unsupported function on to many (not count or sum))";
      goto LABEL_118;
    }

    objc_opt_self();
    v51 = [a2 propertyDescription];
    v52 = [objc_msgSend(v51 "derivationExpression")];
    if (sel_count_ != v52 && sel_sum_ != v52)
    {
      if (sel_min_ != v52 && sel_max_ != v52)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v247 = @"derived attribute";
        v248 = v51;
        v173 = MEMORY[0x1E695DF20];
        v174 = &v248;
        v175 = &v247;
        goto LABEL_113;
      }

      v53 = [a3 anyObject];
      objc_opt_self();
      v54 = [v235 entity];
      v55 = [v235 propertyDescription];
      v56 = [(NSSQLiteStatement *)v55 derivationExpression];
      v57 = [v53 objectAtIndexedSubscript:0];
      if (v54)
      {
        v58 = [v54[5] objectForKey:v57];
      }

      else
      {
        v58 = 0;
      }

      v233 = [v58 destinationEntity];
      v199 = [v235 columnName];
      if (v58)
      {
        v59 = v58[7];
      }

      else
      {
        v59 = 0;
      }

      v60 = [v59 columnName];
      v61 = [v53 objectAtIndexedSubscript:1];
      if (v233)
      {
        v62 = [*(v233 + 40) objectForKey:v61];
      }

      else
      {
        v62 = 0;
      }

      v208 = [v62 columnName];
      v211 = v60;
      v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v60, v208];
      if (sel_min_ == [v56 selector])
      {
        v224 = @"<";
        v63 = @"MIN";
      }

      else
      {
        if (sel_max_ != [v56 selector])
        {
          v178 = MEMORY[0x1E695DF30];
          v179 = *MEMORY[0x1E695D940];
          v249 = @"derived attribute";
          v254 = v55;
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
      v197 = [v54 tableName];
      v221 = [v233 tableName];
      v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(v233, "tableName"), objc_msgSend(v54, "name"), -[NSSQLiteStatement name](v55, "name")];
      v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(v54, "tableName"), objc_msgSend(v54, "name"), -[NSSQLiteStatement name](v55, "name")];
      v218 = v54;
      v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v86];
      v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_SET", v86];
      v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_UNSET", v86];
      v229 = v86;
      v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v86];
      v191 = v87;
      v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v87];
      v93 = [MEMORY[0x1E695DF70] array];
      v94 = [MEMORY[0x1E695DF90] dictionary];
      v95 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v88];
      [v93 addObject:v95];

      v96 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v89];
      [v93 addObject:v96];

      v97 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v90];
      [v93 addObject:v97];

      v98 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v91];
      [v93 addObject:v98];

      v99 = [[NSSQLiteStatement alloc] initWithEntity:v218 sqlString:v92];
      v195 = v93;
      [v93 addObject:v99];

      v254 = v95;
      v255 = v96;
      v256 = v97;
      v257 = v98;
      v258 = v99;
      v193 = v94;
      [v94 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v254, 5), @"dropStatements"}];

      if (v218 && (v218[20] || (v107 = v218[19]) != 0 && [v107 count] && v218[20]))
      {
        v100 = *(v218 + 46);
        v101 = *(v218 + 47);
        v102 = 0x1E696A000uLL;
        v103 = objc_alloc(MEMORY[0x1E696AEC0]);
        v104 = v211;
        if (v100 >= v101)
        {
          v187 = [v103 initWithFormat:@" WHEN %d = NEW.Z_ENT", v100];
          v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v100];
          v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v100, v181];
        }

        else
        {
          v187 = [v103 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v100, v101];
          v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v100, v101];
          v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v100, v101];
        }

        v189 = v106;
      }

      else
      {
        v187 = &stru_1EF3F1768;
        v105 = &stru_1EF3F1768;
        v189 = &stru_1EF3F1768;
        v102 = 0x1E696A000;
        v104 = v211;
      }

      v108 = v233;
      if (v233 && (*(v233 + 160) || (v114 = *(v233 + 152)) != 0 && (v115 = [v114 count], v108 = v233, v115) && *(v233 + 160)))
      {
        v109 = *(v108 + 184);
        v110 = *(v108 + 188);
        v111 = objc_alloc(*(v102 + 3776));
        if (v109 >= v110)
        {
          v112 = [v111 initWithFormat:@" AND %d = Z_ENT", v109];
          v113 = [objc_alloc(*(v102 + 3776)) initWithFormat:@" WHERE %d = Z_ENT", v109, v181];
        }

        else
        {
          v112 = [v111 initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v109, v110];
          v113 = [objc_alloc(*(v102 + 3776)) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v109, v110];
        }
      }

      else
      {
        v112 = &stru_1EF3F1768;
        v113 = &stru_1EF3F1768;
      }

      v185 = v113;
      v116 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v116 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL AND NEW.%@ NOT NULL%@)", v229, v221, v104, v208, v112];
      [v116 appendString:@" BEGIN"];
      v117 = v112;
      v213 = v112;
      v118 = v199;
      v119 = v197;
      v184 = v116;
      [v116 appendFormat:@" UPDATE %@ SET %@ = NEW.%@ WHERE Z_PK = NEW.%@%@ AND %@;", v197, v199, v208, v104, v105, objc_msgSend(*(v102 + 3776), "stringWithFormat:", @"(%@ IS NULL OR NEW.%@ %@ %@)", v199, v208, v224, v199)];
      [v116 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@ AND %@;", v119, objc_msgSend(v235, "name"), v118, v119, v104, v105, objc_msgSend(*(v102 + 3776), "stringWithFormat:", @"(%@ IS NULL OR NEW.%@ %@= %@)", v118, v208, v224, v118)];
      [v116 appendFormat:@" END"];
      v120 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v120 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_SET AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL AND NEW.%@ NOT NULL%@)", v229, v206, v221, v104, v208, v117];
      v204 = v120;
      [v120 appendString:@" BEGIN"];
      [v120 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", v197, v199, v215, v208, v221, v104, v104, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", v208, v224, v199)];
      v121 = [v235 name];
      [v204 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v119, v121, v199, v119, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", v208, v224, v199)];
      [v204 appendFormat:@" UPDATE %@ SET %@ = NEW.%@ WHERE Z_PK = NEW.%@%@ AND %@;", v197, v118, v208, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@ IS NULL OR NEW.%@ %@ %@)", v118, v208, v224, v118)];
      v122 = [v235 name];
      [v204 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@ AND %@;", v119, v122, v199, v119, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"NEW.%@ %@= %@", v208, v224, v199)];
      [v204 appendFormat:@" END"];
      v123 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v123 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_UNSET AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL AND OLD.%@ NOT NULL AND (NEW.%@ IS NULL OR NEW.%@ IS NULL)%@)", v229, v206, v221, v104, v208, v104, v208, v213];
      [v123 appendString:@" BEGIN"];
      [v123 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", v197, v199, v215, v208, v221, v104, v104, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", v208, v224, v199)];
      v124 = [v235 name];
      [v123 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v119, v124, v118, v119, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@ IS NULL OR OLD.%@ %@= %@)", v118, v208, v224, v118)];
      [v123 appendFormat:@" END"];
      v125 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v125 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL AND OLD.%@ NOT NULL%@)", v229, v221, v104, v208, v213];
      [v125 appendString:@" BEGIN"];
      [v125 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", v197, v199, v215, v208, v221, v104, v104, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OLD.%@ %@= %@", v208, v224, v199)];
      v126 = [v235 name];
      [v125 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v119, v126, v118, v119, v104, v105, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@ IS NULL OR OLD.%@ %@= %@)", v118, v208, v224, v118)];
      [v125 appendFormat:@" END"];
      v127 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v127 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v191, v197, v187];
      [v127 appendString:@" BEGIN"];
      [v127 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", v197, v199, v215, v208, objc_msgSend(v233, "tableName"), v104];
      [v127 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v119, objc_msgSend(v235, "name"), v199, v119];
      [v127 appendFormat:@" END"];

      v237 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v184];
      [v195 addObject:v237];

      v230 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v204];
      [v195 addObject:v230];

      v225 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v123];
      [v195 addObject:v225];

      v128 = [[NSSQLiteStatement alloc] initWithEntity:v233 sqlString:v125];
      [v195 addObject:v128];

      v129 = [[NSSQLiteStatement alloc] initWithEntity:v218 sqlString:v127];
      [v195 addObject:v129];

      v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = %@.Z_PK)%@;", v119, v199, v215, v208, objc_msgSend(v233, "tableName"), v104, v119, v185];
      v131 = [[NSSQLiteStatement alloc] initWithEntity:v218 sqlString:v130];

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

    v64 = [a3 anyObject];
    objc_opt_self();
    v65 = [v235 entity];
    v66 = [v235 propertyDescription];
    v67 = [(NSSQLiteStatement *)v66 derivationExpression];
    v68 = [v64 objectAtIndexedSubscript:0];
    if (v65)
    {
      v69 = [*(v65 + 40) objectForKey:v68];
    }

    else
    {
      v69 = 0;
    }

    v70 = [v69 destinationEntity];
    v209 = [v235 columnName];
    if (v69)
    {
      v71 = v69[7];
    }

    else
    {
      v71 = 0;
    }

    v212 = [v71 columnName];
    if (sel_count_ != [v67 selector])
    {
      goto LABEL_49;
    }

    if ([v64 count] < 2)
    {
      v72 = 0;
      v203 = 1;
      v228 = v212;
      v234 = @"+ 1";
      v73 = @"- 1";
    }

    else
    {
      v84 = [v64 objectAtIndexedSubscript:1];
      if (!v70 || (v85 = [v70[5] objectForKey:v84]) == 0 || v85[24] != 1)
      {
LABEL_49:
        v72 = 0;
        v203 = 0;
        v73 = 0;
        v228 = 0;
        v234 = 0;
        goto LABEL_83;
      }

      v73 = 0;
      v228 = 0;
      v234 = 0;
      v72 = [objc_msgSend(v85 "propertyDescription")] == 800;
      v203 = v72;
    }

LABEL_83:
    v132 = [v67 selector];
    v207 = v72;
    if (v72 || (v133 = v228, sel_sum_ == v132))
    {
      v134 = [v64 objectAtIndexedSubscript:1];
      if (v70)
      {
        v135 = [v70[5] objectForKey:v134];
      }

      else
      {
        v135 = 0;
      }

      v133 = [v135 columnName];
      v234 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+ IFNULL(NEW.%@, 0)", v133];
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"- IFNULL(OLD.%@, 0)", v133];
      v228 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v212, v133];
    }

    v226 = v133;
    if (!v234 || !v73)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v249 = @"derived attribute";
      v254 = v66;
      goto LABEL_117;
    }

    v194 = v73;
    v198 = [v65 tableName];
    v216 = [v70 tableName];
    v222 = v70;
    v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", objc_msgSend(v70, "tableName"), objc_msgSend(v65, "name"), -[NSSQLiteStatement name](v66, "name")];
    v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", objc_msgSend(v65, "tableName"), objc_msgSend(v65, "name"), -[NSSQLiteStatement name](v66, "name")];
    v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v136];
    v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_INCREMENT", v136];
    v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_DECREMENT", v136];
    v219 = v136;
    v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v136];
    v192 = v137;
    v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v137];
    v143 = [MEMORY[0x1E695DF70] array];
    v144 = [MEMORY[0x1E695DF90] dictionary];
    v145 = [[NSSQLiteStatement alloc] initWithEntity:v65 sqlString:v138];
    [v143 addObject:v145];

    v146 = [[NSSQLiteStatement alloc] initWithEntity:v65 sqlString:v139];
    [v143 addObject:v146];

    v147 = [[NSSQLiteStatement alloc] initWithEntity:v65 sqlString:v140];
    [v143 addObject:v147];

    v148 = [[NSSQLiteStatement alloc] initWithEntity:v65 sqlString:v141];
    [v143 addObject:v148];

    v149 = [[NSSQLiteStatement alloc] initWithEntity:v65 sqlString:v142];
    [v143 addObject:v149];

    v254 = v145;
    v255 = v146;
    v256 = v147;
    v257 = v148;
    v258 = v149;
    v196 = v144;
    [v144 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v254, 5), @"dropStatements"}];
    v201 = v65;
    if (v65 && (*(v65 + 160) || (v155 = *(v65 + 152)) != 0 && [v155 count] && *(v65 + 160)))
    {
      v150 = *(v65 + 184);
      v151 = *(v65 + 188);
      v152 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v150 >= v151)
      {
        v188 = [v152 initWithFormat:@" WHEN %d = NEW.Z_ENT", v150];
        v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v150];
        v154 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v150, v182];
      }

      else
      {
        v188 = [v152 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v150, v151];
        v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v150, v151];
        v154 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v150, v151];
      }
    }

    else
    {
      v188 = &stru_1EF3F1768;
      v153 = &stru_1EF3F1768;
      v154 = &stru_1EF3F1768;
    }

    v190 = v154;
    v156 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v156 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL)", v219, v216, v212];
    v186 = v156;
    [v156 appendString:@" BEGIN"];
    v157 = v209;
    v158 = v198;
    [v156 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) %@ WHERE Z_PK = NEW.%@%@;", v198, v209, v209, v234, v212, v153];
    [v156 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v158, objc_msgSend(v235, "name"), v209, v158, v212, v153];
    [v156 appendFormat:@" END"];
    v159 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v159 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_INCREMENT AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL)", v219, v228, v216, v212];
    [v159 appendString:@" BEGIN"];
    [v159 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = NEW.%@%@;", v198, v157, v157, v234, v212, v153];
    [v159 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v158, objc_msgSend(v235, "name"), v209, v158, v212, v153];
    [v159 appendFormat:@" END"];
    v160 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v160 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_DECREMENT AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL)", v219, v228, v216, v212];
    v183 = v160;
    [v160 appendString:@" BEGIN"];
    [v160 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = OLD.%@%@;", v198, v157, v157, v194, v212, v153];
    [v160 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v158, objc_msgSend(v235, "name"), v209, v158, v212, v153];
    [v160 appendFormat:@" END"];
    v161 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v161 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL)", v219, v216, v212];
    [v161 appendString:@" BEGIN"];
    [v161 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = OLD.%@%@;", v198, v157, v157, v194, v212, v153];
    [v161 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v158, objc_msgSend(v235, "name"), v209, v158, v212, v153];
    [v161 appendFormat:@" END"];
    v162 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v162 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v192, v198, v188];
    [v162 appendString:@" BEGIN"];
    if ((v203 & !v207) != 0)
    {
      v163 = @"COUNT";
    }

    else
    {
      v163 = @"SUM";
    }

    [v162 appendFormat:@" UPDATE %@ SET %@ = (SELECT IFNULL(%@(%@), 0) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", v198, v209, v163, v226, objc_msgSend(v222, "tableName"), v212];
    [v162 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v198, objc_msgSend(v235, "name"), v209, v198];
    [v162 appendFormat:@" END"];

    v238 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v186];
    [v143 addObject:v238];

    v231 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v159];
    [v143 addObject:v231];

    v164 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v183];
    [v143 addObject:v164];

    v165 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v161];
    [v143 addObject:v165];

    v166 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v162];
    [v143 addObject:v166];

    v167 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT IFNULL(%@(%@), 0) FROM %@ WHERE %@ = %@.Z_PK)%@;", v198, v209, v163, v226, objc_msgSend(v222, "tableName"), v212, v198, v190];
    v168 = [[NSSQLiteStatement alloc] initWithEntity:v201 sqlString:v167];

    v261[0] = v168;
    [v196 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v261, 1), @"dataStatements"}];
    v249 = v238;
    v250 = v231;
    v251 = v164;
    v252 = v165;
    v253 = v166;
    [v196 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v249, 5), @"triggerCreationStatements"}];

    v259 = v143;
    v260 = v196;
    goto LABEL_103;
  }

  if (v6 != 3)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v239 = @"derived attribute";
    v240 = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
    v13 = @"currently unsupported (unsupported expression type)";
    goto LABEL_118;
  }

  if (v9 != 1)
  {
    if (v9 != 7)
    {
      if (v9 == 8)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v245 = @"derived attribute";
        v246 = v5;
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
      v244 = v5;
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
  v46 = +[NSSQLDerivedAttributeSQLGenerator _triggerColumnListComponentForAttributeKeypaths:startingAt:](NSSQLDerivedAttributeSQLGenerator, a3, [a2 entity]);
  [a2 entity];
  objc_opt_self();
  objc_opt_self();
  v47 = +[NSSQLDerivedAttributeSQLGenerator _computeNewColumnTokenForKeypathExpression:governingEntity:](NSSQLDerivedAttributeSQLGenerator, [objc_msgSend(a2 "propertyDescription")], objc_msgSend(a2, "entity"));
  v48 = [v47 stringByReplacingOccurrencesOfString:@"NEW." withString:&stru_1EF3F1768];
  v49 = *MEMORY[0x1E69E9840];

  return [NSSQLDerivedAttributeSQLGenerator _generateTriggerForAttribute:a2 newToken:v47 updateToken:v48 triggerColumnListComponent:v46 triggerColumnWhereComponent:?];
}

+ (uint64_t)generateSQLForDerivedAttribute:(void *)a3 keypaths:
{
  v19[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 propertyDescription];
  if ([v5 filteringPredicate])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v18 = @"derived attribute";
    v19[0] = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = @"currently unsupported (predicate)";
    goto LABEL_15;
  }

  if ([a3 count])
  {
    if ([a3 count] == 1)
    {
      v6 = [a3 anyObject];
      if ([v6 count] == 1 || objc_msgSend(v6, "count") == 2)
      {
        v7 = *MEMORY[0x1E69E9840];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForDerivedAttributeWithOneParameterKeypath:a2 keypaths:a3];
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v16 = @"derived attribute";
      v17 = v5;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = @"currently unsupported (too many steps)";
    }

    else
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v14 = @"derived attribute";
      v15 = v5;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13 = @"currently unsupported (too many keypaths)";
    }

LABEL_15:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v13 userInfo:v12]);
  }

  v9 = *MEMORY[0x1E69E9840];

  return [NSSQLDerivedAttributeSQLGenerator _generateSQLForAttributeFunctionDerivationForDerivedAttribute:a2 keypaths:a3];
}

@end