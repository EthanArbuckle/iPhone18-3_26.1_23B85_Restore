@interface _NSSQLGenerator
+ (void)initialize;
- (uint64_t)prepareConstrainedValuesUpdateStatementWithRow:(uint64_t)result;
- (uint64_t)prepareDeleteStatementForRelationship:(uint64_t)result;
- (uint64_t)prepareInsertStatementForRelationship:(uint64_t)result;
- (uint64_t)prepareMasterReorderStatementForRelationship:(uint64_t)result;
- (uint64_t)prepareMasterReorderStatementPart2ForRelationship:(uint64_t)result;
- (uint64_t)prepareReorderStatementForRelationship:(uint64_t)result;
- (uint64_t)prepareUpdateStatementWithRow:(uint64_t)a3 originalRow:(const __CFBitVector *)a4 withMask:;
- (void)dealloc;
- (void)initWithStatement:(uint64_t)a3 forAdapter:;
- (void)prepareDeleteStatementWithRow:(uint64_t)a1;
- (void)prepareInsertStatementWithRow:(int)a3 includeConstraints:(int)a4 includeOnConflict:(void *)a5 onConflictKeys:;
@end

@implementation _NSSQLGenerator

- (void)dealloc
{
  self->_selectList = 0;
  *&self->_sqlString = 0u;
  *&self->_statement = 0u;
  v3.receiver = self;
  v3.super_class = _NSSQLGenerator;
  [(_NSSQLGenerator *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_opt_self();

    objc_opt_self();
  }
}

- (void)initWithStatement:(uint64_t)a3 forAdapter:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _NSSQLGenerator;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[1] = a2;
    v5[2] = a3;
    v5[3] = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6[4] = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6[5] = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  return v6;
}

- (void)prepareInsertStatementWithRow:(int)a3 includeConstraints:(int)a4 includeOnConflict:(void *)a5 onConflictKeys:
{
  v101 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      v10 = 0;
    }

    else
    {
      v9 = atomic_load((a2 + 40));
      v10 = [*(v9 + 16) _storeInfo1];
    }

    v89 = v10;
    v84 = [v10 foreignKeyColumns];
    v11 = [v89 foreignEntityKeyColumns];
    v12 = [v89 foreignOrderKeyColumns];
    v85 = [v89 attributeColumns];
    if (v89)
    {
      v13 = v89[16];
      v14 = v89[17];
      v78 = v13;
      v79 = v89[18];
    }

    else
    {
      v14 = 0;
      v78 = 0;
      v79 = 0;
    }

    v87 = [v85 count];
    v15 = [v11 count];
    v16 = [v84 count];
    v81 = v12;
    v82 = [v12 count];
    v77 = a4;
    if (a3 ^ 1 | a4)
    {
      v17 = @"INSERT INTO ";
    }

    else
    {
      v17 = @"INSERT OR IGNORE INTO ";
    }

    [*(a1 + 24) appendString:v17];
    [*(a1 + 24) appendString:{objc_msgSend(v89, "tableName")}];
    objc_msgSend(*(a1 + 24), "appendString:", @"(");
    [*(a1 + 24) appendString:{objc_msgSend(v78, "columnName")}];
    [*(a1 + 24) appendString:{@", "}];
    v76 = v14;
    [*(a1 + 24) appendString:{objc_msgSend(v14, "columnName")}];
    [*(a1 + 24) appendString:{@", "}];
    [*(a1 + 24) appendString:{objc_msgSend(v79, "columnName")}];
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v19 = [v84 objectAtIndex:i];
        if (![objc_msgSend(v19 "toOneRelationship")] || a3)
        {
          [*(a1 + 24) appendString:{@", "}];
          [*(a1 + 24) appendString:{objc_msgSend(v19, "columnName")}];
        }
      }
    }

    if (v15)
    {
      for (j = 0; j != v15; ++j)
      {
        v21 = [v11 objectAtIndex:j];
        [*(a1 + 24) appendString:{@", "}];
        [*(a1 + 24) appendString:{objc_msgSend(v21, "columnName")}];
      }
    }

    v80 = v15;
    if (v82)
    {
      for (k = 0; k != v82; ++k)
      {
        v23 = [v81 objectAtIndex:k];
        [*(a1 + 24) appendString:{@", "}];
        [*(a1 + 24) appendString:{objc_msgSend(v23, "columnName")}];
      }
    }

    if (v87)
    {
      for (m = 0; m != v87; ++m)
      {
        v25 = [v85 objectAtIndex:m];
        if (![v25 isConstrained] || a3)
        {
          [*(a1 + 24) appendString:{@", "}];
          [*(a1 + 24) appendString:{objc_msgSend(v25, "columnName")}];
        }
      }
    }

    [*(a1 + 24) appendString:{@" VALUES(?, ?, ?")}];
    v26 = [NSSQLBindVariable alloc];
    if (a2)
    {
      v27 = atomic_load((a2 + 40));
      v28 = [*(v27 + 16) _referenceData64];
    }

    else
    {
      v28 = 0;
    }

    v29 = -[NSSQLBindVariable initWithInt64:sqlType:](v26, "initWithInt64:sqlType:", v28, [v78 sqlType]);
    [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v29];

    v30 = [NSSQLBindVariable alloc];
    if (a2 && (v31 = atomic_load((a2 + 40)), (v32 = [*(v31 + 16) _storeInfo1]) != 0))
    {
      v33 = *(v32 + 184);
    }

    else
    {
      v33 = 0;
    }

    v34 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:](v30, "initWithUnsignedInt:sqlType:", v33, [v76 sqlType]);
    [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v34];

    v35 = [NSSQLBindVariable alloc];
    if (a2)
    {
      v36 = atomic_load((a2 + 40));
      v37 = *(v36 + 12);
    }

    else
    {
      v37 = 0;
    }

    v38 = -[NSSQLBindVariable initWithInt64:sqlType:](v35, "initWithInt64:sqlType:", v37, [v79 sqlType]);
    [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v38];

    if (v16)
    {
      for (n = 0; n != v16; ++n)
      {
        v40 = [v84 objectAtIndex:n];
        if (![objc_msgSend(v40 "toOneRelationship")] || a3)
        {
          v41 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", -[NSSQLRow foreignKeyForSlot:](a2, [v40 slot]), objc_msgSend(v40, "sqlType"));
          [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v41];

          [*(a1 + 24) appendString:{@", "}];
          [*(a1 + 24) appendString:@"?"];
        }
      }
    }

    if (v15)
    {
      v42 = 0;
      do
      {
        v43 = [v11 objectAtIndex:v42];
        v44 = [v43 slot];
        if (a2)
        {
          v45 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + ((*(a2 + 16) >> 13) & 0xFFFC) + 2 * v44);
        }

        else
        {
          v45 = 0;
        }

        v46 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v45, [v43 sqlType]);
        [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v46];

        [*(a1 + 24) appendString:{@", "}];
        [*(a1 + 24) appendString:@"?"];
        ++v42;
      }

      while (v80 != v42);
    }

    if (v82)
    {
      for (ii = 0; ii != v82; ++ii)
      {
        v48 = [v81 objectAtIndex:ii];
        v49 = [v48 slot];
        if (a2)
        {
          v50 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + 4 * v49);
        }

        else
        {
          v50 = 0;
        }

        v51 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v50, [v48 sqlType]);
        [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v51];

        [*(a1 + 24) appendString:{@", "}];
        [*(a1 + 24) appendString:@"?"];
      }
    }

    v52 = a3;
    if (v87)
    {
      for (jj = 0; jj != v87; ++jj)
      {
        v54 = [v85 objectAtIndex:jj];
        if (![v54 isConstrained] || v52)
        {
          v55 = [v54 attributeDescription];
          if (v55)
          {
            v56 = [v55 superCompositeAttribute] != 0;
          }

          else
          {
            v56 = 0;
          }

          v57 = -[NSSQLRow attributeValueForSlot:](a2, [v54 slot]);
          if (v56)
          {
            v57 = [v57 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v54, "propertyDescription"))}];
          }

          v58 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v57, [v54 sqlType], objc_msgSend(v54, "attributeDescription"));
          [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v58];

          [*(a1 + 24) appendString:{@", "}];
          [*(a1 + 24) appendString:@"?"];
          v52 = a3;
        }
      }
    }

    [*(a1 + 24) appendString:@""]);
    if (v77)
    {
      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v89)
      {
        v60 = v89;
        do
        {
          [v59 addObjectsFromArray:v60[27]];
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v61 = v60[26];
          v62 = [v61 countByEnumeratingWithState:&v94 objects:v100 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v95;
            do
            {
              for (kk = 0; kk != v63; ++kk)
              {
                if (*v95 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v99 = *(*(&v94 + 1) + 8 * kk);
                [v59 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v99, 1)}];
              }

              v63 = [v61 countByEnumeratingWithState:&v94 objects:v100 count:16];
            }

            while (v63);
          }

          v60 = v60[20];
        }

        while (v60);
      }

      if ([v59 count])
      {
        if (![a5 count])
        {
          a5 = [objc_msgSend(v89 "attributes")];
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = [v59 countByEnumeratingWithState:&v90 objects:v98 count:16];
        if (v88)
        {
          v86 = *v91;
          do
          {
            for (mm = 0; mm != v88; ++mm)
            {
              if (*v91 != v86)
              {
                objc_enumerationMutation(v59);
              }

              v67 = *(*(&v90 + 1) + 8 * mm);
              [*(a1 + 24) appendString:@" ON CONFLICT"];
              objc_msgSend(*(a1 + 24), "appendString:", @"(");
              if ([v67 count])
              {
                v68 = 0;
                do
                {
                  v69 = [v67 objectAtIndex:v68];
                  if (v68)
                  {
                    [*(a1 + 24) appendString:{@", "}];
                  }

                  [*(a1 + 24) appendString:{objc_msgSend(v69, "columnName")}];
                  ++v68;
                }

                while ([v67 count] > v68);
              }

              [*(a1 + 24) appendString:@""]);
              [*(a1 + 24) appendString:@" DO UPDATE SET Z_OPT = Z_OPT+1"];
              if ([a5 count])
              {
                v70 = 0;
                do
                {
                  v71 = [a5 objectAtIndexedSubscript:v70];
                  if (v89)
                  {
                    v72 = v89[5];
                  }

                  else
                  {
                    v72 = 0;
                  }

                  v73 = [v72 objectForKey:v71];
                  if ([v73 propertyType] == 1)
                  {
                    v74 = [v73 columnName];
                    if (([v67 containsObject:v73] & 1) == 0)
                    {
                      [*(a1 + 24) appendString:{@", "}];
                      [*(a1 + 24) appendString:v74];
                      [*(a1 + 24) appendString:@" = "];
                      [*(a1 + 24) appendString:@"excluded."];
                      [*(a1 + 24) appendString:v74];
                    }
                  }

                  ++v70;
                }

                while ([a5 count] > v70);
              }
            }

            v88 = [v59 countByEnumeratingWithState:&v90 objects:v98 count:16];
          }

          while (v88);
        }
      }
    }
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (uint64_t)prepareInsertStatementForRelationship:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = a2[1].length == a2;
    }

    else
    {
      v4 = 0;
    }

    [*(result + 24) appendString:@"INSERT OR REPLACE INTO "];
    [*(v3 + 24) appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    objc_msgSend(*(v3 + 24), "appendString:", @"(");
    [*(v3 + 24) appendString:{-[__CFString columnName](a2, "columnName")}];
    [*(v3 + 24) appendString:{@", "}];
    [*(v3 + 24) appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v5 = [(NSSQLManyToMany *)a2 inverseOrderColumnName];
    v6 = *(v3 + 24);
    if (v5)
    {
      [v6 appendString:{@", "}];
      [*(v3 + 24) appendString:v5];
      v7 = *(v3 + 24);
      if (v4)
      {
        [v7 appendString:{@", "}];
        if (a2)
        {
          data = a2[2].data;
        }

        else
        {
          data = 0;
        }

        [*(v3 + 24) appendString:data];
        [*(v3 + 24) appendString:{@" VALUES (?, ?")}];
        [*(v3 + 24) appendString:{@", ?"}];
        v6 = *(v3 + 24);
        v9 = @", ?";
      }

      else
      {
        [v7 appendString:{@" VALUES (?, ?")}];
        v6 = *(v3 + 24);
        v9 = @", ?";
      }
    }

    else
    {
      v9 = @" VALUES (?, ?");
    }

    [v6 appendString:v9];
    v10 = *(v3 + 24);

    return [v10 appendString:@""]);
  }

  return result;
}

- (uint64_t)prepareMasterReorderStatementForRelationship:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 24) appendString:@"UPDATE OR FAIL "];
    [*(v3 + 24) appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [*(v3 + 24) appendString:@" SET "];
    [*(v3 + 24) appendString:-[NSSQLManyToMany inverseOrderColumnName](a2)];
    [*(v3 + 24) appendString:@" = ? WHERE "];
    [*(v3 + 24) appendString:{-[__CFString columnName](a2, "columnName")}];
    [*(v3 + 24) appendString:@" = ? AND "];
    [*(v3 + 24) appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v4 = *(v3 + 24);

    return [v4 appendString:@" = ?"];
  }

  return result;
}

- (uint64_t)prepareMasterReorderStatementPart2ForRelationship:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 24) appendString:@"UPDATE OR FAIL "];
    [*(v3 + 24) appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [*(v3 + 24) appendString:@" SET "];
    if (a2)
    {
      data = a2[2].data;
    }

    else
    {
      data = 0;
    }

    [*(v3 + 24) appendString:data];
    [*(v3 + 24) appendString:@" = ? WHERE "];
    [*(v3 + 24) appendString:{-[__CFString columnName](a2, "columnName")}];
    [*(v3 + 24) appendString:@" = ? AND "];
    [*(v3 + 24) appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v5 = *(v3 + 24);

    return [v5 appendString:@" = ?"];
  }

  return result;
}

- (uint64_t)prepareReorderStatementForRelationship:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 24) appendString:@"UPDATE OR FAIL "];
    [*(v3 + 24) appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [*(v3 + 24) appendString:@" SET "];
    if (a2)
    {
      data = a2[2].data;
    }

    else
    {
      data = 0;
    }

    [*(v3 + 24) appendString:data];
    [*(v3 + 24) appendString:@" = ?"];
    [*(v3 + 24) appendString:@" WHERE "];
    [*(v3 + 24) appendString:{-[__CFString columnName](a2, "columnName")}];
    [*(v3 + 24) appendString:@" = ? AND "];
    [*(v3 + 24) appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v5 = *(v3 + 24);

    return [v5 appendString:@" = ?"];
  }

  return result;
}

- (uint64_t)prepareDeleteStatementForRelationship:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 24) appendString:@"DELETE FROM "];
    [*(v3 + 24) appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [*(v3 + 24) appendString:@" WHERE "];
    [*(v3 + 24) appendString:{-[__CFString columnName](a2, "columnName")}];
    [*(v3 + 24) appendString:@" = ? AND "];
    [*(v3 + 24) appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v4 = *(v3 + 24);

    return [v4 appendString:@" = ?"];
  }

  return result;
}

- (uint64_t)prepareConstrainedValuesUpdateStatementWithRow:(uint64_t)result
{
  v56 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v4 = atomic_load((a2 + 40));
      v5 = [*(v4 + 16) _storeInfo1];
    }

    v6 = [v5 foreignKeyColumns];
    obj = [v5 foreignEntityKeyColumns];
    v38 = [v5 foreignOrderKeyColumns];
    [*(v3 + 24) appendString:@"UPDATE OR FAIL "];
    [*(v3 + 24) appendString:{objc_msgSend(v5, "tableName")}];
    [*(v3 + 24) appendString:@" SET "];
    if (a2)
    {
      bv = [(NSSQLRow *)a2 newColumnMaskFrom:8uLL columnInclusionOptions:?];
    }

    else
    {
      bv = 0;
    }

    v42 = a2;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
    v39 = v5;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v49;
      v11 = 1;
      v12 = bv;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v48 + 1) + 8 * i);
          if (CFBitVectorGetBitAtIndex(v12, v9) && [objc_msgSend(v14 "toOneRelationship")])
          {
            v15 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", [objc_msgSend(v42 valueForKey:{objc_msgSend(v14, "name")), "_referenceData64"}], 2);
            [(NSSQLiteStatement *)*(v3 + 8) addBindVariable:v15];

            if ((v11 & 1) == 0)
            {
              [*(v3 + 24) appendString:{@", "}];
            }

            [*(v3 + 24) appendString:{objc_msgSend(v14, "columnName")}];
            [*(v3 + 24) appendString:@" = ?"];
            v11 = 0;
            v12 = bv;
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v11 = 1;
    }

    v16 = [obj count];
    v17 = [v38 count];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obja = [v39 attributeColumns];
    v18 = [obja countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = v16 + v9 + v17;
      v21 = *v45;
      v22 = bv;
      do
      {
        v23 = 0;
        do
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(obja);
          }

          v24 = *(*(&v44 + 1) + 8 * v23);
          if (CFBitVectorGetBitAtIndex(v22, v20))
          {
            v25 = [v24 attributeDescription];
            if (v25)
            {
              v26 = [v25 superCompositeAttribute] != 0;
            }

            else
            {
              v26 = 0;
            }

            v27 = -[NSSQLRow attributeValueForSlot:](v42, [v24 slot]);
            if (v26)
            {
              v27 = [v27 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v24, "propertyDescription"))}];
            }

            v28 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v27, [v24 sqlType], objc_msgSend(v24, "attributeDescription"));
            [(NSSQLiteStatement *)*(v3 + 8) addBindVariable:v28];

            if ((v11 & 1) == 0)
            {
              [*(v3 + 24) appendString:{@", "}];
            }

            [*(v3 + 24) appendString:{objc_msgSend(v24, "columnName")}];
            [*(v3 + 24) appendString:@" = ?"];
            v11 = 0;
            v22 = bv;
          }

          ++v23;
          ++v20;
        }

        while (v19 != v23);
        v29 = [obja countByEnumeratingWithState:&v44 objects:v54 count:16];
        v19 = v29;
      }

      while (v29);
    }

    if (v11)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v36 = [v39 name];
        *buf = 138412290;
        v53 = v36;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Updating a constrained entity generated an UPDATE statement with no columns on entity %@\n", buf, 0xCu);
      }

      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v37 = [v39 name];
        *buf = 138412290;
        v53 = v37;
        _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Updating a constrained entity generated an UPDATE statement with no columns on entity %@", buf, 0xCu);
      }
    }

    if (bv)
    {
      CFRelease(bv);
    }

    if (v42)
    {
      v32 = atomic_load(v42 + 5);
      v33 = [*(v32 + 16) _referenceData64];
    }

    else
    {
      v33 = 0;
    }

    v34 = [[NSSQLBindVariable alloc] initWithInt64:v33 sqlType:3];
    [(NSSQLiteStatement *)*(v3 + 8) addBindVariable:v34];

    result = [*(v3 + 24) appendString:@" WHERE Z_PK = ?"];
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)prepareUpdateStatementWithRow:(uint64_t)a3 originalRow:(const __CFBitVector *)a4 withMask:
{
  v86 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_85;
  }

  v4 = a2;
  v5 = result;
  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = atomic_load((a2 + 40));
    v7 = [*(v6 + 16) _storeInfo1];
  }

  v8 = [v7 foreignKeyColumns];
  v61 = [v7 foreignEntityKeyColumns];
  v63 = [v7 foreignOrderKeyColumns];
  v62 = [v7 attributeColumns];
  [*(v5 + 24) appendString:@"UPDATE OR FAIL "];
  v58 = v7;
  [*(v5 + 24) appendString:{objc_msgSend(v7, "tableName")}];
  [*(v5 + 24) appendString:@" SET "];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v79;
    v13 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v79 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v78 + 1) + 8 * i);
        if (CFBitVectorGetBitAtIndex(a4, v11))
        {
          v16 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", -[NSSQLRow foreignKeyForSlot:](v4, [v15 slot]), objc_msgSend(v15, "sqlType"));
          [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v16];

          if ((v13 & 1) == 0)
          {
            [*(v5 + 24) appendString:{@", "}];
          }

          [*(v5 + 24) appendString:{objc_msgSend(v15, "columnName")}];
          [*(v5 + 24) appendString:@" = ?"];
          v13 = 0;
        }

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v17 = [v61 countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v75;
    do
    {
      v20 = 0;
      do
      {
        if (*v75 != v19)
        {
          objc_enumerationMutation(v61);
        }

        v21 = *(*(&v74 + 1) + 8 * v20);
        if (CFBitVectorGetBitAtIndex(a4, v11))
        {
          v22 = [v21 slot];
          if (v4)
          {
            v23 = *(v4 + _NSSQLRowInstanceSize + ((4 * *(v4 + 16)) & 0x1FFF8) + ((*(v4 + 16) >> 13) & 0xFFFC) + 2 * v22);
          }

          else
          {
            v23 = 0;
          }

          v24 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v23, [v21 sqlType]);
          [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v24];

          if ((v13 & 1) == 0)
          {
            [*(v5 + 24) appendString:{@", "}];
          }

          [*(v5 + 24) appendString:{objc_msgSend(v21, "columnName")}];
          [*(v5 + 24) appendString:@" = ?"];
          v13 = 0;
        }

        ++v20;
        ++v11;
      }

      while (v18 != v20);
      v25 = [v61 countByEnumeratingWithState:&v74 objects:v84 count:16];
      v18 = v25;
    }

    while (v25);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v26 = [v63 countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v71;
    do
    {
      v29 = 0;
      do
      {
        if (*v71 != v28)
        {
          objc_enumerationMutation(v63);
        }

        v30 = *(*(&v70 + 1) + 8 * v29);
        if (CFBitVectorGetBitAtIndex(a4, v11))
        {
          v31 = [v30 slot];
          if (v4)
          {
            v32 = *(v4 + _NSSQLRowInstanceSize + ((4 * *(v4 + 16)) & 0x1FFF8) + 4 * v31);
          }

          else
          {
            v32 = 0;
          }

          v33 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v32, [v30 sqlType]);
          [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v33];

          if ((v13 & 1) == 0)
          {
            [*(v5 + 24) appendString:{@", "}];
          }

          [*(v5 + 24) appendString:{objc_msgSend(v30, "columnName")}];
          [*(v5 + 24) appendString:@" = ?"];
          v13 = 0;
        }

        ++v29;
        ++v11;
      }

      while (v27 != v29);
      v34 = [v63 countByEnumeratingWithState:&v70 objects:v83 count:16];
      v27 = v34;
    }

    while (v34);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v35 = [v62 countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v35)
  {
    v36 = v35;
    v64 = *v67;
    do
    {
      v37 = 0;
      do
      {
        if (*v67 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v38 = *(*(&v66 + 1) + 8 * v37);
        if (CFBitVectorGetBitAtIndex(a4, v11))
        {
          if ([v38 isConstrained])
          {
            v39 = 0;
          }

          else
          {
            v40 = [v38 attributeDescription];
            if (v40)
            {
              v41 = [v40 superCompositeAttribute] != 0;
            }

            else
            {
              v41 = 0;
            }

            v39 = -[NSSQLRow attributeValueForSlot:](v4, [v38 slot]);
            if (v41)
            {
              v39 = [v39 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v38, "propertyDescription"))}];
            }
          }

          v42 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v39, [v38 sqlType], objc_msgSend(v38, "attributeDescription"));
          [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v42];

          if ((v13 & 1) == 0)
          {
            [*(v5 + 24) appendString:{@", "}];
          }

          [*(v5 + 24) appendString:{objc_msgSend(v38, "columnName")}];
          [*(v5 + 24) appendString:@" = ?"];
          v13 = 0;
        }

        ++v37;
        ++v11;
      }

      while (v36 != v37);
      v43 = [v62 countByEnumeratingWithState:&v66 objects:v82 count:16];
      v36 = v43;
    }

    while (v43);
  }

  if (v58)
  {
    v44 = v58[18];
  }

  else
  {
    v44 = 0;
  }

  if (a3)
  {
    v45 = atomic_load((a3 + 40));
    v46 = *(v45 + 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  [v4 setOptLock:v46];
  v47 = [NSSQLBindVariable alloc];
  if (v4)
  {
    v48 = atomic_load((v4 + 40));
    v49 = *(v48 + 12);
  }

  else
  {
    v49 = 0;
  }

  v50 = -[NSSQLBindVariable initWithInt64:sqlType:](v47, "initWithInt64:sqlType:", v49, [v44 sqlType]);
  [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v50];

  if ((v13 & 1) == 0)
  {
    [*(v5 + 24) appendString:{@", "}];
  }

  [*(v5 + 24) appendString:{objc_msgSend(v44, "columnName")}];
  [*(v5 + 24) appendString:@" = ?"];
  [*(v5 + 24) appendString:@" "];
  if (!a3)
  {
    v52 = 0;
    if (!v4)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v51 = atomic_load((a3 + 40));
  v52 = *(v51 + 12);
  if (v4)
  {
LABEL_79:
    v53 = atomic_load((v4 + 40));
    v4 = [*(v53 + 16) _referenceData64];
  }

LABEL_80:
  if (v52)
  {
    v54 = @" WHERE Z_PK = ? AND Z_OPT = ?";
  }

  else
  {
    v54 = @" WHERE Z_PK = ? AND (Z_OPT = ? OR Z_OPT IS NULL)";
  }

  v55 = [[NSSQLBindVariable alloc] initWithInt64:v4 sqlType:3];
  [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v55];

  v56 = [[NSSQLBindVariable alloc] initWithInt64:v52 sqlType:3];
  [(NSSQLiteStatement *)*(v5 + 8) addBindVariable:v56];

  [*(v5 + 32) appendString:v54];
  result = [@" WHERE  (1 = 1) " isEqual:*(v5 + 32)];
  if ((result & 1) == 0)
  {
    result = [*(v5 + 24) appendString:*(v5 + 32)];
  }

LABEL_85:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)prepareDeleteStatementWithRow:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v4 = atomic_load((a2 + 40));
      v5 = [*(v4 + 16) _storeInfo1];
    }

    [*(a1 + 24) appendString:@"DELETE FROM "];
    [*(a1 + 24) appendString:{objc_msgSend(objc_msgSend(*(a1 + 8), "entity"), "tableName")}];
    if (v5)
    {
      v6 = v5[16];
      v5 = v5[18];
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 24) appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @" WHERE %@ = ? AND %@ = ?", objc_msgSend(v6, "columnName"), objc_msgSend(v5, "columnName"))}];
    v7 = [NSSQLBindVariable alloc];
    if (v2)
    {
      v8 = atomic_load((v2 + 40));
      v9 = [*(v8 + 16) _referenceData64];
    }

    else
    {
      v9 = 0;
    }

    v10 = -[NSSQLBindVariable initWithInt64:sqlType:](v7, "initWithInt64:sqlType:", v9, [v6 sqlType]);
    [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v10];

    v11 = [NSSQLBindVariable alloc];
    if (v2)
    {
      v12 = atomic_load((v2 + 40));
      v2 = *(v12 + 12);
    }

    v13 = -[NSSQLBindVariable initWithInt64:sqlType:](v11, "initWithInt64:sqlType:", v2, [v5 sqlType]);
    [(NSSQLiteStatement *)*(a1 + 8) addBindVariable:v13];
  }
}

@end