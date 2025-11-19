@interface NSSQLBinaryIndex
- (id)dropStatementsForStore:(id)a3;
- (id)generateStatementsForStore:(id)a3;
@end

@implementation NSSQLBinaryIndex

- (id)generateStatementsForStore:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_autoreleasePoolPush();
  if (-[NSFetchIndexDescription _isMappedSinglePropertyIndex](-[NSSQLIndex indexDescription](self, "indexDescription")) && [objc_msgSend(-[NSArray firstObject](-[NSFetchIndexDescription elements](-[NSSQLIndex indexDescription](self "indexDescription")] == 4 && !-[NSFetchIndexDescription _isUnique](-[NSSQLIndex indexDescription](self, "indexDescription")))
  {
    goto LABEL_54;
  }

  if (![(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] partialIndexPredicate]&& ([(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] _isPurelyModeledIndex]& 1) != 0)
  {
    v7 = MEMORY[0x1E696AD60];
    if ([(NSSQLIndex *)self isUnique])
    {
      v8 = @"UNIQUE ";
    }

    else
    {
      v8 = &stru_1EF3F1768;
    }

    v43 = objc_msgSend(v7, "stringWithFormat:", @"CREATE %@INDEX IF NOT EXISTS Z_%@_%@ ON %@ ("), v8, -[NSSQLEntity name](-[NSSQLIndex sqlEntity](self, "sqlEntity"), "name"), -[NSFetchIndexDescription name](-[NSSQLIndex indexDescription](self, "indexDescription"), "name"), -[NSSQLEntity tableName](-[NSSQLIndex sqlEntity](self, "sqlEntity"), "tableName");
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = [(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] elements];
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (!v10)
    {
      goto LABEL_54;
    }

    v11 = v10;
    v12 = self;
    v41 = v6;
    v42 = v5;
    v13 = 0;
    v14 = *v45;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 property];
        v19 = [v18 _propertyType];
        if ([v18 isTransient])
        {
          v20 = v19 == 5;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          if ([v18 _isAttribute])
          {
            if (v18 && [v18 superCompositeAttribute])
            {
              v21 = [v18 _qualifiedName];
              v22 = [(NSSQLIndex *)v12 sqlEntity];
              if (!v22)
              {
                goto LABEL_47;
              }

              v23 = *(v22 + 40);
              v24 = v21;
LABEL_29:
              v27 = [v23 objectForKey:v24];
              if (!v27)
              {
                goto LABEL_47;
              }

LABEL_30:
              v28 = [v27 columnName];
              if (v13)
              {
                [v43 appendString:{@", "}];
              }

              v29 = [v16 isAscending];
              v30 = @"DESC";
              if (v29)
              {
                v30 = @"ASC";
              }

              [v43 appendFormat:@"%@ COLLATE BINARY %@", v28, v30];
              v13 = 1;
              goto LABEL_47;
            }

LABEL_27:
            v25 = [(NSSQLIndex *)v12 sqlEntity];
            v26 = [v18 name];
            if (!v25)
            {
              goto LABEL_47;
            }

            v24 = v26;
            v23 = *(v25 + 40);
            goto LABEL_29;
          }

          if ([v18 _isRelationship])
          {
            if ([v18 inverseRelationship] && (objc_msgSend(v18, "isToMany") & 1) != 0)
            {
              goto LABEL_47;
            }

            goto LABEL_27;
          }

          if (v19 != 5)
          {
            goto LABEL_47;
          }

          v31 = [v18 expression];
          v32 = [v31 expressionType];
          if (v32 == 3)
          {
            v33 = [v31 keyPath];
            if ([@"self" isEqual:v33])
            {
              goto LABEL_40;
            }

            if (![@"entity" isEqual:v33])
            {
              goto LABEL_47;
            }

            v34 = [(NSSQLIndex *)v12 sqlEntity];
            if (!v34)
            {
              goto LABEL_47;
            }

            v35 = 136;
          }

          else
          {
            if (v32 != 1)
            {
              goto LABEL_47;
            }

LABEL_40:
            v34 = [(NSSQLIndex *)v12 sqlEntity];
            if (!v34)
            {
              goto LABEL_47;
            }

            v35 = 128;
          }

          v27 = *(v34 + v35);
          if (!v27)
          {
            goto LABEL_47;
          }

          goto LABEL_30;
        }

LABEL_47:
        objc_autoreleasePoolPop(v17);
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v11)
      {
        v6 = v41;
        v5 = v42;
        if (v13)
        {
          [v43 appendString:@""]);
          v36 = [[NSSQLiteStatement alloc] initWithEntity:[(NSSQLIndex *)v12 sqlEntity] sqlString:v43];
          [v42 addObject:v36];
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }
  }

  v36 = [[NSSQLGenerator alloc] initWithPersistentStore:a3];
  v37 = [(NSSQLGenerator *)v36 newSQLStatmentForBinaryIndex:a3 inStore:?];
  if (v37)
  {
    v38 = v37;
    [v5 addObject:v37];
  }

LABEL_53:

LABEL_54:
  objc_autoreleasePoolPop(v6);
  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dropStatementsForStore:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", -[NSSQLIndex sqlEntity](self, "sqlEntity"), [MEMORY[0x1E696AD60] stringWithFormat:@"DROP INDEX IF EXISTS Z_%@_%@", -[NSSQLEntity name](-[NSSQLIndex sqlEntity](self, "sqlEntity", a3), "name"), -[NSFetchIndexDescription name](-[NSSQLIndex indexDescription](self, "indexDescription"), "name")]);
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end