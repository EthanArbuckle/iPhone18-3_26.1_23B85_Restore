@interface NSSQLiteStoreMigrator
@end

@implementation NSSQLiteStoreMigrator

id __70___NSSQLiteStoreMigrator_initWithStore_destinationModel_mappingModel___block_invoke(uint64_t a1)
{
  result = [(NSSQLiteConnection *)*(*(a1 + 32) + 48) fetchTableNames];
  *(*(a1 + 32) + 64) = result;
  return result;
}

void __43___NSSQLiteStoreMigrator_performMigration___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v982 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v712 = [MEMORY[0x1E695DF90] dictionary];
  v775 = v1;
  if (*(v1 + 64) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning lightweight migration on connection\n", &v976, 2u);
        }
      }

      else
      {
        v6 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v976) = 0;
          _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning lightweight migration on connection\n", &v976, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    _NSCoreDataLog_console(v7, "Beginning lightweight migration on connection");
    objc_autoreleasePoolPop(v4);
    v693 = (v1 + 65);
    v8 = *(v1 + 64);
    if ((*(v1 + 65) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(v1 + 64))
    {
      v9 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v10 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: Increasing SQLite cache size to 117MB\n", &v976, 2u);
          }
        }

        else
        {
          v11 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Increasing SQLite cache size to 117MB\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v12 = 1;
      }

      else
      {
        v12 = 4;
      }

      _NSCoreDataLog_console(v12, "Increasing SQLite cache size to 117MB");
      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v693 = (v1 + 65);
    if ((*(v1 + 65) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  [(NSSQLiteConnection *)*(*(v1 + 32) + 48) _executeSQLString:?];
  v8 = *(v1 + 64);
LABEL_28:
  if (v8)
  {
    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v14 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning creation of schema migration statements\n", &v976, 2u);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v976) = 0;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning creation of schema migration statements\n", &v976, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    _NSCoreDataLog_console(v16, "Beginning creation of schema migration statements");
    objc_autoreleasePoolPop(v13);
  }

LABEL_40:
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = objc_autoreleasePoolPush();
  v20 = [(_NSSQLiteStoreMigrator *)*(v1 + 32) createEntityMigrationStatements];
  objc_autoreleasePoolPop(v19);
  v696 = v20;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v964[0] = @"Creation of entity migration statements";
  v964[1] = [MEMORY[0x1E696AD98] numberWithDouble:v21 - v18];
  [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v964, 2), @"1.1"}];
  if (!v20)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to generate statements to perform migration", @"reason", 0}];
    v771 = 0;
    v742 = 0;
    v696 = 0;
    v26 = 0;
    *(*(*(v1 + 40) + 8) + 40) = [v24 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v25];
    *(*(*(v1 + 48) + 8) + 24) = 0;
    goto LABEL_1290;
  }

  if ([*(*(v1 + 32) + 72) count])
  {
    if (*(v1 + 64) == 1)
    {
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: Creating statements to update entity keys\n", &v976, 2u);
          }
        }

        else
        {
          v27 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Creating statements to update entity keys\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v28 = 1;
      }

      else
      {
        v28 = 4;
      }

      _NSCoreDataLog_console(v28, "Creating statements to update entity keys");
      objc_autoreleasePoolPop(v22);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v30 = v29;
    v691 = objc_autoreleasePoolPush();
    v31 = *(v1 + 32);
    if (v31 && [*(v31 + 72) count])
    {
      v688 = objc_autoreleasePoolPush();
      v701 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * objc_msgSend(*(v31 + 72), "count")}];
      v757 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v31 + 72), "count")}];
      v743 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v31 + 72), "count")}];
      v968 = 0u;
      v967 = 0u;
      v966 = 0u;
      v965 = 0u;
      v32 = *(v31 + 72);
      v33 = [v32 countByEnumeratingWithState:&v965 objects:&v976 count:16];
      if (v33)
      {
        v34 = *v966;
        do
        {
          v35 = 0;
          do
          {
            if (*v966 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v965 + 1) + 8 * v35);
            v37 = objc_autoreleasePoolPush();
            v38 = [*(v31 + 24) entityNamed:v36];
            v39 = [objc_msgSend(*(v31 + 72) objectForKey:{v36), "rootEntity"}];
            v40 = [v757 objectForKey:{objc_msgSend(v39, "name")}];
            if (v40)
            {
              [v40 addObject:v38];
            }

            else
            {
              v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v38, 0}];
              [v757 setObject:v41 forKey:{objc_msgSend(v39, "name")}];
            }

            v42 = [v743 objectForKey:{objc_msgSend(v39, "name")}];
            if (v42)
            {
              if (v38)
              {
                v43 = *(v38 + 184);
              }

              else
              {
                v43 = 0;
              }

              [v42 appendFormat:@", %u", v43];
            }

            else
            {
              v44 = objc_alloc(MEMORY[0x1E696AD60]);
              if (v38)
              {
                v45 = *(v38 + 184);
              }

              else
              {
                v45 = 0;
              }

              v46 = [v44 initWithFormat:@"%u", v45];
              [v743 setObject:v46 forKey:{objc_msgSend(v39, "name")}];
            }

            objc_autoreleasePoolPop(v37);
            ++v35;
          }

          while (v33 != v35);
          v47 = [v32 countByEnumeratingWithState:&v965 objects:&v976 count:16];
          v33 = v47;
        }

        while (v47);
      }

      v904 = 0u;
      v903 = 0u;
      v902 = 0u;
      v901 = 0u;
      obj = *(v31 + 128);
      v48 = [obj countByEnumeratingWithState:&v901 objects:v975 count:16];
      if (v48)
      {
        v690 = *v902;
        do
        {
          v694 = 0;
          v697 = v48;
          do
          {
            if (*v902 != v690)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v901 + 1) + 8 * v694);
            v692 = objc_autoreleasePoolPush();
            v50 = [*(v31 + 16) entityNamed:v49];
            v51 = [v757 objectForKey:{objc_msgSend(v50, "name")}];
            v703 = v50;
            if ([v51 count])
            {
              v772 = [v743 objectForKey:{objc_msgSend(v50, "name")}];
              v52 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
              [v52 appendString:{objc_msgSend(v50, "tableName")}];
              [v52 appendString:@" SET "];
              [v52 appendString:@"Z_ENT"];
              objc_msgSend(v52, "appendString:", @" =(CASE");
              v900 = 0u;
              v899 = 0u;
              v898 = 0u;
              v897 = 0u;
              v53 = [v51 countByEnumeratingWithState:&v897 objects:v974 count:16];
              if (!v53)
              {
                goto LABEL_97;
              }

              v54 = *v898;
              while (1)
              {
                v55 = 0;
                do
                {
                  if (*v898 != v54)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v56 = *(*(&v897 + 1) + 8 * v55);
                  v57 = [*(v31 + 72) objectForKey:{objc_msgSend(v56, "name")}];
                  [v52 appendString:@" WHEN "];
                  [v52 appendString:@"Z_ENT"];
                  if (v56)
                  {
                    v58 = v56[46];
                    if (v57)
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v58 = 0;
                    if (v57)
                    {
LABEL_91:
                      v59 = *(v57 + 184);
                      goto LABEL_92;
                    }
                  }

                  v59 = 0;
LABEL_92:
                  [v52 appendFormat:@" = %d THEN %d", v58, v59];
                  ++v55;
                }

                while (v53 != v55);
                v60 = [v51 countByEnumeratingWithState:&v897 objects:v974 count:16];
                v53 = v60;
                if (!v60)
                {
LABEL_97:
                  [v52 appendString:@" ELSE "];
                  v50 = v703;
                  [v52 appendString:@"Z_ENT"];
                  [v52 appendString:@" END WHERE "]);
                  [v52 appendString:@"Z_ENT"];
                  objc_msgSend(v52, "appendString:", @" IN (");
                  [v52 appendString:v772];
                  [v52 appendString:@""]);
                  v61 = [(NSSQLiteAdapter *)*(v31 + 32) newStatementWithSQLString:v52];
                  [v701 addObject:v61];

                  break;
                }
              }
            }

            v896 = 0u;
            v895 = 0u;
            v894 = 0u;
            v893 = 0u;
            if (v50)
            {
              v62 = v50;
              do
              {
                if (!v62)
                {
                  goto LABEL_129;
                }

                v63 = v62;
                v62 = v62[21];
              }

              while (v62 != v63);
              v64 = v63[9];
            }

            else
            {
LABEL_129:
              v64 = 0;
            }

            v705 = v64;
            v65 = [v64 countByEnumeratingWithState:&v893 objects:v973 count:16];
            v66 = v705;
            if (!v65)
            {
              goto LABEL_127;
            }

            v67 = *v894;
            v699 = *v894;
            do
            {
              v773 = 0;
              v722 = v65;
              do
              {
                if (*v894 != v67)
                {
                  objc_enumerationMutation(v66);
                }

                v68 = *(*(&v893 + 1) + 8 * v773);
                context = objc_autoreleasePoolPush();
                if (v68)
                {
                  if (v68[24] == 4)
                  {
                    v69 = [objc_msgSend(objc_msgSend(v68 "toOneRelationship")];
                    v70 = [v757 objectForKey:{objc_msgSend(v69, "name")}];
                    if ([v70 count])
                    {
                      v713 = [v743 objectForKey:{objc_msgSend(v69, "name")}];
                      v71 = [v68 columnName];
                      v72 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
                      [v72 appendString:{objc_msgSend(v703, "tableName")}];
                      [v72 appendString:@" SET "];
                      [v72 appendString:v71];
                      objc_msgSend(v72, "appendString:", @" =(CASE");
                      v892 = 0u;
                      v891 = 0u;
                      v890 = 0u;
                      v889 = 0u;
                      v73 = [v70 countByEnumeratingWithState:&v889 objects:&v969 count:16];
                      if (!v73)
                      {
                        goto LABEL_124;
                      }

                      v74 = *v890;
                      while (1)
                      {
                        v75 = 0;
                        do
                        {
                          if (*v890 != v74)
                          {
                            objc_enumerationMutation(v70);
                          }

                          v76 = *(*(&v889 + 1) + 8 * v75);
                          v77 = [*(v31 + 72) objectForKey:{objc_msgSend(v76, "name")}];
                          [v72 appendString:@" WHEN "];
                          [v72 appendString:v71];
                          if (v76)
                          {
                            v78 = v76[46];
                            if (v77)
                            {
                              goto LABEL_118;
                            }
                          }

                          else
                          {
                            v78 = 0;
                            if (v77)
                            {
LABEL_118:
                              v79 = *(v77 + 184);
                              goto LABEL_119;
                            }
                          }

                          v79 = 0;
LABEL_119:
                          [v72 appendFormat:@" = %d THEN %d", v78, v79];
                          ++v75;
                        }

                        while (v73 != v75);
                        v80 = [v70 countByEnumeratingWithState:&v889 objects:&v969 count:16];
                        v73 = v80;
                        if (!v80)
                        {
LABEL_124:
                          [v72 appendString:@" ELSE "];
                          v48 = v697;
                          v67 = v699;
                          v66 = v705;
                          [v72 appendString:v71];
                          [v72 appendString:@" END WHERE "]);
                          [v72 appendString:v71];
                          objc_msgSend(v72, "appendString:", @" IN (");
                          [v72 appendString:v713];
                          [v72 appendString:@""]);
                          v81 = [(NSSQLiteAdapter *)*(v31 + 32) newStatementWithSQLString:v72];
                          [v701 addObject:v81];

                          break;
                        }
                      }
                    }
                  }
                }

                objc_autoreleasePoolPop(context);
                v773 = v773 + 1;
              }

              while (v773 != v722);
              v65 = [v66 countByEnumeratingWithState:&v893 objects:v973 count:16];
            }

            while (v65);
LABEL_127:
            objc_autoreleasePoolPop(v692);
            ++v694;
          }

          while (v694 != v48);
          v82 = [obj countByEnumeratingWithState:&v901 objects:v975 count:16];
          v48 = v82;
        }

        while (v82);
      }

      objc_autoreleasePoolPop(v688);
      v742 = v701;
    }

    else
    {
      v742 = 0;
    }

    objc_autoreleasePoolPop(v691);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v963[0] = @"Creation of update entity keys statements";
    v963[1] = [MEMORY[0x1E696AD98] numberWithDouble:v83 - v30];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v963, 2), @"1.2"}];
  }

  else
  {
    v742 = 0;
  }

  if (*(*(v775 + 32) + 136) == 1)
  {
    if (*(v775 + 64) == 1)
    {
      v84 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v85 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: error: Creating statements to update primary key table\n", &v976, 2u);
          }
        }

        else
        {
          v86 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v86, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Creating statements to update primary key table\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v87 = 1;
      }

      else
      {
        v87 = 4;
      }

      _NSCoreDataLog_console(v87, "Creating statements to update primary key table");
      objc_autoreleasePoolPop(v84);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v89 = v88;
    v714 = objc_autoreleasePoolPush();
    v90 = *(v775 + 32);
    if (v90)
    {
      v706 = objc_autoreleasePoolPush();
      *(v90 + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v758 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ RENAME TO %@_ORIG", @"Z_PRIMARYKEY", @"Z_PRIMARYKEY"];
      v91 = [[NSSQLiteStatement alloc] initWithEntity:0];
      v92 = v91;
      if (v91)
      {
        sqlString = v91->_sqlString;
        if (sqlString != v758)
        {

          v92->_sqlString = [(NSString *)v758 copy];
        }
      }

      [*(v90 + 144) addObject:v92];
      PrimaryKeyTable = [(NSSQLiteAdapter *)*(v90 + 32) newCreatePrimaryKeyTableStatement];
      [*(v90 + 144) addObject:PrimaryKeyTable];

      v95 = *(v90 + 16);
      if (v95)
      {
        v96 = *(v95 + 32);
      }

      else
      {
        v96 = 0;
      }

      v904 = 0u;
      v903 = 0u;
      v902 = 0u;
      v901 = 0u;
      v97 = [v96 countByEnumeratingWithState:&v901 objects:&v976 count:16];
      if (v97)
      {
        v98 = *v902;
        do
        {
          v99 = 0;
          do
          {
            if (*v902 != v98)
            {
              objc_enumerationMutation(v96);
            }

            v100 = *(*(&v901 + 1) + 8 * v99);
            v101 = objc_autoreleasePoolPush();
            if (v100)
            {
              if (*(v100 + 160))
              {
                v102 = 0;
              }

              else
              {
                v102 = -1;
              }
            }

            else
            {
              v102 = 0;
            }

            v103 = [(NSSQLiteAdapter *)*(v90 + 32) newPrimaryKeyInitializeStatementForEntity:v100 withInitialMaxPK:v102];
            [*(v90 + 144) addObject:v103];

            objc_autoreleasePoolPop(v101);
            ++v99;
          }

          while (v97 != v99);
          v104 = [v96 countByEnumeratingWithState:&v901 objects:&v976 count:16];
          v97 = v104;
        }

        while (v104);
      }

      v723 = objc_autoreleasePoolPush();
      v900 = 0u;
      v899 = 0u;
      v898 = 0u;
      v897 = 0u;
      v105 = [objc_msgSend(*(v90 + 8) "ancillarySQLModels")];
      v106 = [v105 countByEnumeratingWithState:&v897 objects:v975 count:16];
      if (v106)
      {
        contexta = *v898;
        v732 = v105;
        do
        {
          v107 = 0;
          do
          {
            if (*v898 != contexta)
            {
              objc_enumerationMutation(v732);
            }

            v108 = *(*(&v897 + 1) + 8 * v107);
            v893 = 0u;
            v894 = 0u;
            v895 = 0u;
            v896 = 0u;
            if (v108)
            {
              v109 = *(v108 + 32);
            }

            else
            {
              v109 = 0;
            }

            v110 = [v109 countByEnumeratingWithState:&v893 objects:v974 count:16];
            if (v110)
            {
              v111 = *v894;
              do
              {
                v112 = 0;
                do
                {
                  if (*v894 != v111)
                  {
                    objc_enumerationMutation(v109);
                  }

                  v113 = *(*(&v893 + 1) + 8 * v112);
                  v114 = objc_autoreleasePoolPush();
                  if (v113)
                  {
                    if (*(v113 + 160))
                    {
                      v115 = 0;
                    }

                    else
                    {
                      v115 = -1;
                    }
                  }

                  else
                  {
                    v115 = 0;
                  }

                  v116 = [(NSSQLiteAdapter *)*(v90 + 32) newPrimaryKeyInitializeStatementForEntity:v113 withInitialMaxPK:v115];
                  [*(v90 + 144) addObject:v116];

                  objc_autoreleasePoolPop(v114);
                  ++v112;
                }

                while (v110 != v112);
                v117 = [v109 countByEnumeratingWithState:&v893 objects:v974 count:16];
                v110 = v117;
              }

              while (v117);
            }

            ++v107;
          }

          while (v107 != v106);
          v118 = [v732 countByEnumeratingWithState:&v897 objects:v975 count:16];
          v106 = v118;
        }

        while (v118);
      }

      objc_autoreleasePoolPop(v723);
      v892 = 0u;
      v891 = 0u;
      v890 = 0u;
      v889 = 0u;
      v119 = *(v90 + 96);
      v120 = [v119 countByEnumeratingWithState:&v889 objects:v973 count:16];
      if (v120)
      {
        v121 = *v890;
        do
        {
          v122 = 0;
          do
          {
            if (*v890 != v121)
            {
              objc_enumerationMutation(v119);
            }

            v123 = *(*(&v889 + 1) + 8 * v122);
            v124 = objc_autoreleasePoolPush();
            v125 = [*(v90 + 96) valueForKey:v123];
            if (v125)
            {
              v126 = *(v125 + 32);
              if (v126)
              {
                if (!*(v126 + 160))
                {
                  if ([*(v126 + 152) count])
                  {
                    v127 = [(_NSSQLiteStoreMigrator *)v90 _originalRootsForAddedEntity:v126];
                    v128 = v127;
                    if (!v127 || ![v127 count])
                    {
                      goto LABEL_211;
                    }

                    if ([v128 count] == 1)
                    {
                      v129 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v130 = [v128 lastObject];
                      if (v130)
                      {
                        v131 = *(v130 + 184);
                      }

                      else
                      {
                        v131 = 0;
                      }

                      v758 = [v129 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (SELECT %@ FROM %@_ORIG WHERE %@ = %d) WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT", v131, @"Z_ENT", *(v126 + 184)];
                    }

                    else
                    {
                      v132 = v758;
                    }
                  }

                  else
                  {
                    v758 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = 0 WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_ENT", *(v126 + 184)];
                  }

                  v133 = [[NSSQLiteStatement alloc] initWithEntity:0];
                  v134 = v133;
                  if (v133)
                  {
                    v135 = v133->_sqlString;
                    if (v135 != v758)
                    {

                      v134->_sqlString = [(NSString *)v758 copy];
                    }
                  }

                  [*(v90 + 144) addObject:v134];
                }
              }
            }

LABEL_211:
            objc_autoreleasePoolPop(v124);
            ++v122;
          }

          while (v120 != v122);
          v136 = [v119 countByEnumeratingWithState:&v889 objects:v973 count:16];
          v120 = v136;
        }

        while (v136);
      }

      v888 = 0u;
      v887 = 0u;
      v886 = 0u;
      v885 = 0u;
      v759 = *(v90 + 120);
      v137 = [v759 countByEnumeratingWithState:&v885 objects:&v969 count:16];
      if (v137)
      {
        v138 = *v886;
        do
        {
          v139 = 0;
          do
          {
            if (*v886 != v138)
            {
              objc_enumerationMutation(v759);
            }

            v140 = *(*(&v885 + 1) + 8 * v139);
            v141 = objc_autoreleasePoolPush();
            v142 = [*(v90 + 120) valueForKey:v140];
            if (v142)
            {
              v143 = v142[4];
              if (v143)
              {
                if (!*(v143 + 160))
                {
                  v144 = [v142 sourceEntity];
                  v145 = objc_alloc(MEMORY[0x1E696AEC0]);
                  if (v144)
                  {
                    v146 = *(v144 + 184);
                  }

                  else
                  {
                    v146 = 0;
                  }

                  v147 = [v145 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (SELECT %@ FROM %@_ORIG WHERE %@ = %d) WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT", v146, @"Z_ENT", *(v143 + 184)];
                  v148 = [[NSSQLiteStatement alloc] initWithEntity:0];
                  v149 = v148;
                  if (v148)
                  {
                    v150 = v148->_sqlString;
                    if (v150 != v147)
                    {

                      v149->_sqlString = [(NSString *)v147 copy];
                    }
                  }

                  [*(v90 + 144) addObject:v149];
                }
              }
            }

            objc_autoreleasePoolPop(v141);
            ++v139;
          }

          while (v137 != v139);
          v151 = [v759 countByEnumeratingWithState:&v885 objects:&v969 count:16];
          v137 = v151;
        }

        while (v151);
      }

      v884 = 0u;
      v883 = 0u;
      v882 = 0u;
      v881 = 0u;
      v760 = *(v90 + 112);
      v152 = [v760 countByEnumeratingWithState:&v881 objects:&v965 count:16];
      if (v152)
      {
        v153 = *v882;
        do
        {
          for (i = 0; i != v152; ++i)
          {
            if (*v882 != v153)
            {
              objc_enumerationMutation(v760);
            }

            v155 = *(*(&v881 + 1) + 8 * i);
            v156 = objc_autoreleasePoolPush();
            v157 = [*(v90 + 112) valueForKey:v155];
            if (v157)
            {
              v158 = v157[4];
              if (v158)
              {
                if (!*(v158 + 160))
                {
                  v159 = [v157 sourceEntity];
                  v160 = v159;
                  if (v159 && !v159[20])
                  {
                    v161 = objc_alloc(MEMORY[0x1E696AEC0]);
                  }

                  else
                  {
                    v160 = [v159 rootEntity];
                    v161 = objc_alloc(MEMORY[0x1E696AEC0]);
                    if (!v160)
                    {
                      v162 = 0;
                      goto LABEL_247;
                    }
                  }

                  v162 = *(v160 + 184);
LABEL_247:
                  v163 = [v161 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (SELECT %@ FROM %@_ORIG WHERE %@ = %d) WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT", v162, @"Z_ENT", *(v158 + 184)];
                  v164 = [[NSSQLiteStatement alloc] initWithEntity:0];
                  v165 = v164;
                  if (v164)
                  {
                    v166 = v164->_sqlString;
                    if (v166 != v163)
                    {

                      v165->_sqlString = [(NSString *)v163 copy];
                    }
                  }

                  [*(v90 + 144) addObject:v165];
                }
              }
            }

            objc_autoreleasePoolPop(v156);
          }

          v152 = [v760 countByEnumeratingWithState:&v881 objects:&v965 count:16];
        }

        while (v152);
      }

      v167 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TABLE %@_ORIG", @"Z_PRIMARYKEY"];
      v168 = [[NSSQLiteStatement alloc] initWithEntity:0];
      v169 = v168;
      if (v168)
      {
        v170 = v168->_sqlString;
        if (v170 != v167)
        {

          v169->_sqlString = [(NSString *)v167 copy];
        }
      }

      [*(v90 + 144) addObject:v169];
      objc_autoreleasePoolPop(v706);
    }

    objc_autoreleasePoolPop(v714);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v962[0] = @"Creation of update primary key table statements";
    v962[1] = [MEMORY[0x1E696AD98] numberWithDouble:v171 - v89];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v962, 2), @"1.3"}];
  }

  if (*(v775 + 64) == 1)
  {
    v172 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v173 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          _os_log_error_impl(&dword_18565F000, v173, OS_LOG_TYPE_ERROR, "CoreData: error: Finished creating schema migration statements\n", &v976, 2u);
        }
      }

      else
      {
        v174 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v976) = 0;
          _os_log_impl(&dword_18565F000, v174, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished creating schema migration statements\n", &v976, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v175 = 1;
    }

    else
    {
      v175 = 4;
    }

    _NSCoreDataLog_console(v175, "Finished creating schema migration statements");
    objc_autoreleasePoolPop(v172);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v961[0] = @"Total preparation time for schema migration statements";
  v961[1] = [MEMORY[0x1E696AD98] numberWithDouble:v176 - v18];
  [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v961, 2), @"1.0"}];
  if (*(v775 + 64) == 1)
  {
    v177 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v178 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          _os_log_error_impl(&dword_18565F000, v178, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning formal transaction\n", &v976, 2u);
        }
      }

      else
      {
        v179 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v976) = 0;
          _os_log_impl(&dword_18565F000, v179, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning formal transaction\n", &v976, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v180 = 1;
    }

    else
    {
      v180 = 4;
    }

    _NSCoreDataLog_console(v180, "Beginning formal transaction");
    objc_autoreleasePoolPop(v177);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v182 = v181;
  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) beginTransaction];
  v183 = *(v775 + 32);
  if (v183 && (*(v183 + 218) & 1) != 0)
  {
    if (*(v775 + 64) == 1)
    {
      v184 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v185 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v185, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning forced migration\n", &v976, 2u);
          }
        }

        else
        {
          v195 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v195, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning forced migration\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v196 = 1;
      }

      else
      {
        v196 = 4;
      }

      _NSCoreDataLog_console(v196, "Beginning forced migration");
      objc_autoreleasePoolPop(v184);
    }

    goto LABEL_316;
  }

  if (*(v775 + 64) == 1)
  {
    v186 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v187 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          _os_log_error_impl(&dword_18565F000, v187, OS_LOG_TYPE_ERROR, "CoreData: error: Checking metadata\n", &v976, 2u);
        }
      }

      else
      {
        v188 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v976) = 0;
          _os_log_impl(&dword_18565F000, v188, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Checking metadata\n", &v976, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v189 = 1;
    }

    else
    {
      v189 = 4;
    }

    _NSCoreDataLog_console(v189, "Checking metadata");
    objc_autoreleasePoolPop(v186);
    v183 = *(v775 + 32);
  }

  if (v183)
  {
    v190 = *(v183 + 16);
  }

  else
  {
    v190 = 0;
  }

  v191 = -[NSManagedObjectModel _entityVersionHashesDigest]([v190 managedObjectModel]);
  if ([objc_msgSend(-[NSSQLiteConnection fetchMetadata](*(*(v775 + 32) + 48)) objectForKey:{0x1EF3FCE28), "isEqualToString:", v191}])
  {
    v192 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v193 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          v194 = "CoreData: error: Migration was completed by another client\n";
LABEL_989:
          _os_log_error_impl(&dword_18565F000, v193, OS_LOG_TYPE_ERROR, v194, &v976, 2u);
        }
      }

      else
      {
        v193 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          v194 = "CoreData: warning: Migration was completed by another client\n";
          goto LABEL_989;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v202 = 1;
    }

    else
    {
      v202 = 2;
    }

    _NSCoreDataLog_console(v202, "Migration was completed by another client");
    objc_autoreleasePoolPop(v192);
    v771 = 0;
LABEL_328:
    if (*(v775 + 64) == 1)
    {
      v203 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v204 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v204, OS_LOG_TYPE_ERROR, "CoreData: error: Committing formal transaction\n", &v976, 2u);
          }
        }

        else
        {
          v224 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v224, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Committing formal transaction\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v225 = 1;
      }

      else
      {
        v225 = 4;
      }

      _NSCoreDataLog_console(v225, "Committing formal transaction");
      objc_autoreleasePoolPop(v203);
    }

    [(NSSQLiteConnection *)*(*(v775 + 32) + 48) commitTransaction];
    if (*(v775 + 64) == 1)
    {
      v226 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v227 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v227, OS_LOG_TYPE_ERROR, "CoreData: error: Finished committing formal transaction\n", &v976, 2u);
          }
        }

        else
        {
          v228 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v228, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished committing formal transaction\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v229 = 1;
      }

      else
      {
        v229 = 4;
      }

      _NSCoreDataLog_console(v229, "Finished committing formal transaction");
      objc_autoreleasePoolPop(v226);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v231 = v230;
    v909[0] = @"Time for COMMIT";
    v909[1] = [MEMORY[0x1E696AD98] numberWithDouble:v230 - v182];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v909, 2), @"2.17"}];
    v908[0] = @"Total formal transaction time";
    v908[1] = [MEMORY[0x1E696AD98] numberWithDouble:v231 - v18];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v908, 2), @"2.0"}];
    if (*(v775 + 64) == 1)
    {
      v232 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v233 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v233, OS_LOG_TYPE_ERROR, "CoreData: error: Checkpointing WAL journal\n", &v976, 2u);
          }
        }

        else
        {
          v234 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v234, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Checkpointing WAL journal\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v235 = 1;
      }

      else
      {
        v235 = 4;
      }

      _NSCoreDataLog_console(v235, "Checkpointing WAL journal");
      objc_autoreleasePoolPop(v232);
    }

    v236 = [(NSSQLiteConnection *)*(*(v775 + 32) + 48) copyRawIntegerRowsForSQL:?];
    if (v236)
    {
      CFRelease(v236);
    }

    if (*(v775 + 64) == 1)
    {
      v237 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v238 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v238, OS_LOG_TYPE_ERROR, "CoreData: error: Finished checkpointing WAL journal\n", &v976, 2u);
          }
        }

        else
        {
          v239 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v239, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished checkpointing WAL journal\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v240 = 1;
      }

      else
      {
        v240 = 4;
      }

      _NSCoreDataLog_console(v240, "Finished checkpointing WAL journal");
      objc_autoreleasePoolPop(v237);
    }

    *(*(*(v775 + 48) + 8) + 24) = 1;
    if (*(v775 + 64) == 1)
    {
      v241 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v242 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v242, OS_LOG_TYPE_ERROR, "CoreData: error: Successfully completed lightweight migration on connection\n", &v976, 2u);
          }
        }

        else
        {
          v243 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v243, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Successfully completed lightweight migration on connection\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v244 = 1;
      }

      else
      {
        v244 = 4;
      }

      _NSCoreDataLog_console(v244, "Successfully completed lightweight migration on connection");
      objc_autoreleasePoolPop(v241);
    }

    if (*v693 == 1)
    {
      [(NSSQLiteConnection *)*(*(v775 + 32) + 48) _executeSQLString:?];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v246 = v245;
    v907[0] = @"Checkpoint time";
    v907[1] = [MEMORY[0x1E696AD98] numberWithDouble:v245 - v231];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v907, 2), @"3.0"}];
    v906[0] = @"Total migration time (on connection)";
    v906[1] = [MEMORY[0x1E696AD98] numberWithDouble:v246 - v3];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v906, 2), @"0.0"}];
    contextc = objc_autoreleasePoolPush();
    if (*(v775 + 64) == 1)
    {
      v247 = [objc_msgSend(v712 "allKeys")];
      v779 = 0u;
      v780 = 0u;
      v777 = 0u;
      v778 = 0u;
      v248 = [v247 countByEnumeratingWithState:&v777 objects:v905 count:16];
      if (v248)
      {
        v249 = *v778;
        do
        {
          for (j = 0; j != v248; ++j)
          {
            if (*v778 != v249)
            {
              objc_enumerationMutation(v247);
            }

            v251 = *(*(&v777 + 1) + 8 * j);
            v252 = [v712 objectForKey:v251];
            v253 = [v252 firstObject];
            [objc_msgSend(v252 "lastObject")];
            v255 = v254;
            if (v254 > 0.01)
            {
              v256 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v257 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
                  {
                    v976 = 138412802;
                    p_isa = v251;
                    v978 = 2112;
                    v979 = v253;
                    v980 = 2048;
                    v981 = v255;
                    _os_log_error_impl(&dword_18565F000, v257, OS_LOG_TYPE_ERROR, "CoreData: error:     Migration step %@ '%@' took %2.2f seconds\n", &v976, 0x20u);
                  }
                }

                else
                {
                  v258 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
                  {
                    v976 = 138412802;
                    p_isa = v251;
                    v978 = 2112;
                    v979 = v253;
                    v980 = 2048;
                    v981 = v255;
                    _os_log_impl(&dword_18565F000, v258, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:     Migration step %@ '%@' took %2.2f seconds\n", &v976, 0x20u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v259 = 1;
              }

              else
              {
                v259 = 4;
              }

              _NSCoreDataLog_console(v259, "    Migration step %@ '%@' took %2.2f seconds", v251, v253, *&v255);
              objc_autoreleasePoolPop(v256);
            }
          }

          v248 = [v247 countByEnumeratingWithState:&v777 objects:v905 count:16];
        }

        while (v248);
      }
    }

    v26 = 0;
    objc_autoreleasePoolPop(contextc);
    goto LABEL_1290;
  }

LABEL_316:
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v197;
  v960[0] = @"Beginning formal transaction";
  v960[1] = [MEMORY[0x1E696AD98] numberWithDouble:v197 - v182];
  [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v960, 2), @"2.1"}];
  if ([objc_msgSend(*(*(v775 + 32) + 152) objectForKey:{@"deleted", "count"}])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v199 = v198;
    if (*(v775 + 64) == 1)
    {
      v200 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v201 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v201, OS_LOG_TYPE_ERROR, "CoreData: error: Begin dropping attribute extensions.\n", &v976, 2u);
          }
        }

        else
        {
          v205 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v205, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin dropping attribute extensions.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v206 = 1;
      }

      else
      {
        v206 = 4;
      }

      _NSCoreDataLog_console(v206, "Begin dropping attribute extensions.");
      objc_autoreleasePoolPop(v200);
    }

    v880 = 0u;
    v879 = 0u;
    v878 = 0u;
    v877 = 0u;
    v207 = [*(*(v775 + 32) + 152) objectForKey:@"deleted"];
    v208 = [v207 countByEnumeratingWithState:&v877 objects:v959 count:16];
    if (v208)
    {
      v724 = *v878;
      v707 = v207;
      do
      {
        v761 = 0;
        v715 = v208;
        do
        {
          if (*v878 != v724)
          {
            objc_enumerationMutation(v707);
          }

          v209 = *(*(&v877 + 1) + 8 * v761);
          contextb = objc_autoreleasePoolPush();
          v733 = [v209 validate:*(v775 + 56)];
          if (v733)
          {
            v876 = 0u;
            v875 = 0u;
            v874 = 0u;
            v873 = 0u;
            v210 = [v209 dropSQLStrings];
            v211 = [v210 countByEnumeratingWithState:&v873 objects:v958 count:16];
            if (v211)
            {
              v212 = *v874;
              do
              {
                for (k = 0; k != v211; ++k)
                {
                  if (*v874 != v212)
                  {
                    objc_enumerationMutation(v210);
                  }

                  v214 = *(*(&v873 + 1) + 8 * k);
                  v215 = objc_autoreleasePoolPush();
                  v216 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v214];
                  if (*(v775 + 64) == 1)
                  {
                    v217 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v218 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                        {
                          v976 = 138412290;
                          p_isa = &v216->super.isa;
                          _os_log_error_impl(&dword_18565F000, v218, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop attribute extension statement: %@\n", &v976, 0xCu);
                        }
                      }

                      else
                      {
                        v219 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
                        {
                          v976 = 138412290;
                          p_isa = &v216->super.isa;
                          _os_log_impl(&dword_18565F000, v219, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop attribute extension statement: %@\n", &v976, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v220 = 1;
                    }

                    else
                    {
                      v220 = 4;
                    }

                    _NSCoreDataLog_console(v220, "Executing drop attribute extension statement: %@", v216);
                    objc_autoreleasePoolPop(v217);
                  }

                  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v216];

                  objc_autoreleasePoolPop(v215);
                }

                v211 = [v210 countByEnumeratingWithState:&v873 objects:v958 count:16];
              }

              while (v211);
            }
          }

          else
          {
            v221 = *(*(*(v775 + 40) + 8) + 40);
            *(*(*(v775 + 48) + 8) + 24) = 0;
          }

          objc_autoreleasePoolPop(contextb);
          if (!v733)
          {
            goto LABEL_810;
          }

          v761 = v761 + 1;
        }

        while (v761 != v715);
        v208 = [v707 countByEnumeratingWithState:&v877 objects:v959 count:16];
      }

      while (v208);
    }

    if (*(v775 + 64) == 1)
    {
      v222 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v223 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v223, OS_LOG_TYPE_ERROR, "CoreData: error: Finished dropping attribute extensions.\n", &v976, 2u);
          }
        }

        else
        {
          v260 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v260, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished dropping attribute extensions.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v261 = 1;
      }

      else
      {
        v261 = 4;
      }

      _NSCoreDataLog_console(v261, "Finished dropping attribute extensions.");
      objc_autoreleasePoolPop(v222);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v957[0] = @"Drop attribute extensions";
    v957[1] = [MEMORY[0x1E696AD98] numberWithDouble:v262 - v199];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v957, 2), @"2.2"}];
  }

  if ([*(*(v775 + 32) + 184) count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v264 = v263;
    if (*(v775 + 64) == 1)
    {
      v265 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v266 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v266, OS_LOG_TYPE_ERROR, "CoreData: error: Begin dropping derived properties.\n", &v976, 2u);
          }
        }

        else
        {
          v267 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v267, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin dropping derived properties.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v268 = 1;
      }

      else
      {
        v268 = 4;
      }

      _NSCoreDataLog_console(v268, "Begin dropping derived properties.");
      objc_autoreleasePoolPop(v265);
    }

    v872 = 0u;
    v871 = 0u;
    v870 = 0u;
    v869 = 0u;
    v716 = *(*(v775 + 32) + 184);
    v734 = [v716 countByEnumeratingWithState:&v869 objects:v956 count:16];
    if (v734)
    {
      v725 = *v870;
      do
      {
        v762 = 0;
        do
        {
          if (*v870 != v725)
          {
            objc_enumerationMutation(v716);
          }

          v269 = *(*(&v869 + 1) + 8 * v762);
          contextd = objc_autoreleasePoolPush();
          if (v269)
          {
            [(NSSQLEntity_DerivedAttributesExtension *)v269 _generateTriggerSQL];
            v270 = *(v269 + 32);
          }

          else
          {
            v270 = 0;
          }

          v271 = [v270 valueForKey:@"dropStatements"];
          v868 = 0u;
          v867 = 0u;
          v866 = 0u;
          v865 = 0u;
          v272 = [v271 countByEnumeratingWithState:&v865 objects:v955 count:16];
          if (v272)
          {
            v273 = *v866;
            do
            {
              for (m = 0; m != v272; ++m)
              {
                if (*v866 != v273)
                {
                  objc_enumerationMutation(v271);
                }

                v275 = *(*(&v865 + 1) + 8 * m);
                v276 = objc_autoreleasePoolPush();
                if (*(v775 + 64) == 1)
                {
                  v277 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v278 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
                      {
                        v976 = 138412290;
                        p_isa = v275;
                        _os_log_error_impl(&dword_18565F000, v278, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop derived property statement: %@\n", &v976, 0xCu);
                      }
                    }

                    else
                    {
                      v279 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v279, OS_LOG_TYPE_DEFAULT))
                      {
                        v976 = 138412290;
                        p_isa = v275;
                        _os_log_impl(&dword_18565F000, v279, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop derived property statement: %@\n", &v976, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v280 = 1;
                  }

                  else
                  {
                    v280 = 4;
                  }

                  _NSCoreDataLog_console(v280, "Executing drop derived property statement: %@", v275);
                  objc_autoreleasePoolPop(v277);
                }

                [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v275];
                objc_autoreleasePoolPop(v276);
              }

              v272 = [v271 countByEnumeratingWithState:&v865 objects:v955 count:16];
            }

            while (v272);
          }

          objc_autoreleasePoolPop(contextd);
          v762 = v762 + 1;
        }

        while (v762 != v734);
        v281 = [v716 countByEnumeratingWithState:&v869 objects:v956 count:16];
        v734 = v281;
      }

      while (v281);
    }

    if (*(v775 + 64) == 1)
    {
      v282 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v283 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v283, OS_LOG_TYPE_ERROR, "CoreData: error: End dropping derived properties.\n", &v976, 2u);
          }
        }

        else
        {
          v284 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v284, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: End dropping derived properties.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v285 = 1;
      }

      else
      {
        v285 = 4;
      }

      _NSCoreDataLog_console(v285, "End dropping derived properties.");
      objc_autoreleasePoolPop(v282);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v954[0] = @"Drop derived properties";
    v954[1] = [MEMORY[0x1E696AD98] numberWithDouble:v286 - v264];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v954, 2), @"2.3"}];
  }

  if ([*(*(v775 + 32) + 168) count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v288 = v287;
    if (*(v775 + 64) == 1)
    {
      v289 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v290 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v290, OS_LOG_TYPE_ERROR, "CoreData: error: Begin dropping indices.\n", &v976, 2u);
          }
        }

        else
        {
          v291 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v291, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v291, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin dropping indices.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v292 = 1;
      }

      else
      {
        v292 = 4;
      }

      _NSCoreDataLog_console(v292, "Begin dropping indices.");
      objc_autoreleasePoolPop(v289);
    }

    v864 = 0u;
    v863 = 0u;
    v862 = 0u;
    v861 = 0u;
    v717 = *(*(v775 + 32) + 168);
    v735 = [v717 countByEnumeratingWithState:&v861 objects:v953 count:16];
    if (v735)
    {
      v726 = *v862;
      do
      {
        for (n = 0; n != v735; n = n + 1)
        {
          if (*v862 != v726)
          {
            objc_enumerationMutation(v717);
          }

          v293 = *(*(&v861 + 1) + 8 * n);
          contexte = objc_autoreleasePoolPush();
          v294 = [v293 dropStatementsForStore:*(*(v775 + 32) + 8)];
          v860 = 0u;
          v859 = 0u;
          v858 = 0u;
          v857 = 0u;
          v295 = [v294 countByEnumeratingWithState:&v857 objects:v952 count:16];
          if (v295)
          {
            v296 = *v858;
            do
            {
              for (ii = 0; ii != v295; ++ii)
              {
                if (*v858 != v296)
                {
                  objc_enumerationMutation(v294);
                }

                v298 = *(*(&v857 + 1) + 8 * ii);
                v299 = objc_autoreleasePoolPush();
                if (*(v775 + 64) == 1)
                {
                  v300 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v301 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v301, OS_LOG_TYPE_ERROR))
                      {
                        v976 = 138412290;
                        p_isa = v298;
                        _os_log_error_impl(&dword_18565F000, v301, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop index statement: %@\n", &v976, 0xCu);
                      }
                    }

                    else
                    {
                      v302 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                      {
                        v976 = 138412290;
                        p_isa = v298;
                        _os_log_impl(&dword_18565F000, v302, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop index statement: %@\n", &v976, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v303 = 1;
                  }

                  else
                  {
                    v303 = 4;
                  }

                  _NSCoreDataLog_console(v303, "Executing drop index statement: %@", v298);
                  objc_autoreleasePoolPop(v300);
                }

                [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v298];
                objc_autoreleasePoolPop(v299);
              }

              v295 = [v294 countByEnumeratingWithState:&v857 objects:v952 count:16];
            }

            while (v295);
          }

          objc_autoreleasePoolPop(contexte);
        }

        v735 = [v717 countByEnumeratingWithState:&v861 objects:v953 count:16];
      }

      while (v735);
    }

    if (*(v775 + 64) == 1)
    {
      v304 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v305 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v305, OS_LOG_TYPE_ERROR, "CoreData: error: Finished dropping indices.\n", &v976, 2u);
          }
        }

        else
        {
          v306 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v306, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished dropping indices.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v307 = 1;
      }

      else
      {
        v307 = 4;
      }

      _NSCoreDataLog_console(v307, "Finished dropping indices.");
      objc_autoreleasePoolPop(v304);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v951[0] = @"Drop indices";
    v951[1] = [MEMORY[0x1E696AD98] numberWithDouble:v308 - v288];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v951, 2), @"2.4"}];
  }

  if ([v696 count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v310 = v309;
    if (*(v775 + 64) == 1)
    {
      v311 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v312 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v312, OS_LOG_TYPE_ERROR, "CoreData: error: Begin entity schema & data migration statements.\n", &v976, 2u);
          }
        }

        else
        {
          v313 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v313, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin entity schema & data migration statements.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v314 = 1;
      }

      else
      {
        v314 = 4;
      }

      _NSCoreDataLog_console(v314, "Begin entity schema & data migration statements.");
      objc_autoreleasePoolPop(v311);
    }

    v856 = 0u;
    v855 = 0u;
    v854 = 0u;
    v853 = 0u;
    v315 = [v696 countByEnumeratingWithState:&v853 objects:v950 count:16];
    if (v315)
    {
      v316 = *v854;
      do
      {
        v317 = 0;
        do
        {
          if (*v854 != v316)
          {
            objc_enumerationMutation(v696);
          }

          v318 = *(*(&v853 + 1) + 8 * v317);
          v319 = objc_autoreleasePoolPush();
          if (*(v775 + 64) == 1)
          {
            v320 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v321 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
                {
                  v976 = 138412290;
                  p_isa = v318;
                  _os_log_error_impl(&dword_18565F000, v321, OS_LOG_TYPE_ERROR, "CoreData: error: Executing entity schema & data migration statement: %@\n", &v976, 0xCu);
                }
              }

              else
              {
                v322 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v322, OS_LOG_TYPE_DEFAULT))
                {
                  v976 = 138412290;
                  p_isa = v318;
                  _os_log_impl(&dword_18565F000, v322, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing entity schema & data migration statement: %@\n", &v976, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v323 = 1;
            }

            else
            {
              v323 = 4;
            }

            _NSCoreDataLog_console(v323, "Executing entity schema & data migration statement: %@", v318);
            objc_autoreleasePoolPop(v320);
          }

          if (*(v775 + 66))
          {
            v324 = [v318 sqlString];
            if ([v324 hasPrefix:@"CREATE TABLE Z_48ACTIONMEDIAPLAYBACKS_"])
            {
              v325 = *(*(v775 + 32) + 48);
              if (!v325 || ([(NSSQLiteConnection *)v325 _hasTableWithName:0 isTemp:?]& 1) == 0)
              {
                goto LABEL_605;
              }

              goto LABEL_604;
            }

            if (![v324 isEqualToString:@"DROP TABLE Z_47ACTIONMEDIAPLAYBACKS_"])
            {
              v328 = [v324 isEqualToString:@"ALTER TABLE Z_47ACTIONMEDIAPLAYBACKS_TEMP RENAME TO Z_48ACTIONMEDIAPLAYBACKS_"];
              v326 = *(*(v775 + 32) + 48);
              if (!v328)
              {
                goto LABEL_606;
              }

              if (!v326 || ![(NSSQLiteConnection *)v326 _hasTableWithName:0 isTemp:?])
              {
LABEL_605:
                v326 = *(*(v775 + 32) + 48);
LABEL_606:
                [(NSSQLiteConnection *)v326 prepareAndExecuteSQLStatement:v318];
                goto LABEL_608;
              }

LABEL_604:
              [(NSSQLiteConnection *)*(*(v775 + 32) + 48) _executeSQLString:?];
              goto LABEL_605;
            }

            v327 = *(*(v775 + 32) + 48);
            if (v327 && [(NSSQLiteConnection *)v327 _hasTableWithName:0 isTemp:?])
            {
              [(NSSQLiteConnection *)*(*(v775 + 32) + 48) _executeSQLString:?];
            }
          }

          else
          {
            [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v318];
          }

LABEL_608:
          objc_autoreleasePoolPop(v319);
          ++v317;
        }

        while (v315 != v317);
        v329 = [v696 countByEnumeratingWithState:&v853 objects:v950 count:16];
        v315 = v329;
      }

      while (v329);
    }

    if (*(v775 + 64) == 1)
    {
      v330 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v331 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v331, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v331, OS_LOG_TYPE_ERROR, "CoreData: error: Finished entity schema & data migration statements.\n", &v976, 2u);
          }
        }

        else
        {
          v332 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v332, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished entity schema & data migration statements.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v333 = 1;
      }

      else
      {
        v333 = 4;
      }

      _NSCoreDataLog_console(v333, "Finished entity schema & data migration statements.");
      objc_autoreleasePoolPop(v330);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v949[0] = @"Execution of entity schema and data migration statements";
    v949[1] = [MEMORY[0x1E696AD98] numberWithDouble:v334 - v310];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v949, 2), @"2.5"}];

    v696 = 0;
  }

  if ([v742 count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v336 = v335;
    if (*(v775 + 64) == 1)
    {
      v337 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v338 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v338, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating entity key columns.\n", &v976, 2u);
          }
        }

        else
        {
          v339 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v339, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating entity key columns.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v340 = 1;
      }

      else
      {
        v340 = 4;
      }

      _NSCoreDataLog_console(v340, "Begin updating entity key columns.");
      objc_autoreleasePoolPop(v337);
    }

    v852 = 0u;
    v851 = 0u;
    v850 = 0u;
    v849 = 0u;
    v341 = [v742 countByEnumeratingWithState:&v849 objects:v948 count:16];
    if (v341)
    {
      v342 = *v850;
      do
      {
        for (jj = 0; jj != v341; ++jj)
        {
          if (*v850 != v342)
          {
            objc_enumerationMutation(v742);
          }

          v344 = *(*(&v849 + 1) + 8 * jj);
          v345 = objc_autoreleasePoolPush();
          if (*(v775 + 64) == 1)
          {
            v346 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v347 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
                {
                  v976 = 138412290;
                  p_isa = v344;
                  _os_log_error_impl(&dword_18565F000, v347, OS_LOG_TYPE_ERROR, "CoreData: error: Executing entity key column update statement: %@\n", &v976, 0xCu);
                }
              }

              else
              {
                v348 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v348, OS_LOG_TYPE_DEFAULT))
                {
                  v976 = 138412290;
                  p_isa = v344;
                  _os_log_impl(&dword_18565F000, v348, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing entity key column update statement: %@\n", &v976, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v349 = 1;
            }

            else
            {
              v349 = 4;
            }

            _NSCoreDataLog_console(v349, "Executing entity key column update statement: %@", v344);
            objc_autoreleasePoolPop(v346);
          }

          [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v344];
          objc_autoreleasePoolPop(v345);
        }

        v341 = [v742 countByEnumeratingWithState:&v849 objects:v948 count:16];
      }

      while (v341);
    }

    if (*(v775 + 64) == 1)
    {
      v350 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v351 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v351, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating entity key columns.\n", &v976, 2u);
          }
        }

        else
        {
          v352 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v352, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v352, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating entity key columns.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v353 = 1;
      }

      else
      {
        v353 = 4;
      }

      _NSCoreDataLog_console(v353, "Finished updating entity key columns.");
      objc_autoreleasePoolPop(v350);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v947[0] = @"Execution of entity key column updates";
    v947[1] = [MEMORY[0x1E696AD98] numberWithDouble:v354 - v336];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v947, 2), @"2.6"}];

    v742 = 0;
  }

  v355 = *(v775 + 32);
  if (*(v355 + 136) == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v357 = v356;
    if (*(v775 + 64) == 1)
    {
      v358 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v359 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v359, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v359, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating primary key table.\n", &v976, 2u);
          }
        }

        else
        {
          v360 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v360, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v360, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating primary key table.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v361 = 1;
      }

      else
      {
        v361 = 4;
      }

      _NSCoreDataLog_console(v361, "Begin updating primary key table.");
      objc_autoreleasePoolPop(v358);
    }

    v848 = 0u;
    v847 = 0u;
    v846 = 0u;
    v845 = 0u;
    v362 = *(*(v775 + 32) + 144);
    v363 = [v362 countByEnumeratingWithState:&v845 objects:v946 count:16];
    if (v363)
    {
      v364 = *v846;
      do
      {
        for (kk = 0; kk != v363; ++kk)
        {
          if (*v846 != v364)
          {
            objc_enumerationMutation(v362);
          }

          v366 = *(*(&v845 + 1) + 8 * kk);
          v367 = objc_autoreleasePoolPush();
          [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v366];
          objc_autoreleasePoolPop(v367);
        }

        v363 = [v362 countByEnumeratingWithState:&v845 objects:v946 count:16];
      }

      while (v363);
    }

    if (*(v775 + 64) == 1)
    {
      v368 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v369 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v369, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating primary key table.\n", &v976, 2u);
          }
        }

        else
        {
          v370 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v370, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating primary key table.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v371 = 1;
      }

      else
      {
        v371 = 4;
      }

      _NSCoreDataLog_console(v371, "Finished updating primary key table.");
      objc_autoreleasePoolPop(v368);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v945[0] = @"Update primary key table";
    v945[1] = [MEMORY[0x1E696AD98] numberWithDouble:v372 - v357];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v945, 2), @"2.7"}];
    v355 = *(v775 + 32);
  }

  if ([*(v355 + 176) count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v374 = v373;
    if (*(v775 + 64) == 1)
    {
      v375 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v376 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v376, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating default values.\n", &v976, 2u);
          }
        }

        else
        {
          v377 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v377, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v377, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating default values.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v378 = 1;
      }

      else
      {
        v378 = 4;
      }

      _NSCoreDataLog_console(v378, "Begin updating default values.");
      objc_autoreleasePoolPop(v375);
    }

    v844 = 0u;
    v843 = 0u;
    v842 = 0u;
    v841 = 0u;
    v379 = *(*(v775 + 32) + 176);
    v380 = [v379 countByEnumeratingWithState:&v841 objects:v944 count:16];
    if (v380)
    {
      v381 = *v842;
      do
      {
        for (mm = 0; mm != v380; ++mm)
        {
          if (*v842 != v381)
          {
            objc_enumerationMutation(v379);
          }

          v383 = *(*(&v841 + 1) + 8 * mm);
          v384 = objc_autoreleasePoolPush();
          [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v383];
          objc_autoreleasePoolPop(v384);
        }

        v380 = [v379 countByEnumeratingWithState:&v841 objects:v944 count:16];
      }

      while (v380);
    }

    if (*(v775 + 64) == 1)
    {
      v385 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v386 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v386, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v386, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating default values.\n", &v976, 2u);
          }
        }

        else
        {
          v387 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v387, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating default values.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v388 = 1;
      }

      else
      {
        v388 = 4;
      }

      _NSCoreDataLog_console(v388, "Finished updating default values.");
      objc_autoreleasePoolPop(v385);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v943[0] = @"Update default values";
    v943[1] = [MEMORY[0x1E696AD98] numberWithDouble:v389 - v374];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v943, 2), @"2.7.1"}];
  }

  if (![objc_msgSend(*(*(v775 + 32) + 152) objectForKey:{@"inserted", "count"}])
  {
LABEL_818:
    if ([*(*(v775 + 32) + 160) count])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v427 = v426;
      if (*(v775 + 64) == 1)
      {
        v428 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v429 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v429, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v976) = 0;
              _os_log_error_impl(&dword_18565F000, v429, OS_LOG_TYPE_ERROR, "CoreData: error: Begin index creation and updates.\n", &v976, 2u);
            }
          }

          else
          {
            v430 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v430, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v976) = 0;
              _os_log_impl(&dword_18565F000, v430, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin index creation and updates.\n", &v976, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v431 = 1;
        }

        else
        {
          v431 = 4;
        }

        _NSCoreDataLog_console(v431, "Begin index creation and updates.");
        objc_autoreleasePoolPop(v428);
      }

      v828 = 0u;
      v827 = 0u;
      v826 = 0u;
      v825 = 0u;
      v709 = *(*(v775 + 32) + 160);
      v728 = [v709 countByEnumeratingWithState:&v825 objects:v938 count:16];
      if (v728)
      {
        v719 = *v826;
        do
        {
          for (nn = 0; nn != v728; nn = nn + 1)
          {
            if (*v826 != v719)
            {
              objc_enumerationMutation(v709);
            }

            contextg = *(*(&v825 + 1) + 8 * nn);
            v737 = objc_autoreleasePoolPush();
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v433 = v432;
            v434 = [contextg generateStatementsForStore:*(*(v775 + 32) + 8)];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v436 = v435;
            v937[0] = @"Generate index creation statements";
            v937[1] = [MEMORY[0x1E696AD98] numberWithDouble:v435 - v433];
            [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v937, 2), @"2.9.1"}];
            v824 = 0u;
            v822 = 0u;
            v823 = 0u;
            v821 = 0u;
            v437 = [v434 countByEnumeratingWithState:&v821 objects:v936 count:16];
            if (v437)
            {
              v438 = *v822;
              do
              {
                for (i1 = 0; i1 != v437; ++i1)
                {
                  if (*v822 != v438)
                  {
                    objc_enumerationMutation(v434);
                  }

                  v440 = *(*(&v821 + 1) + 8 * i1);
                  v441 = objc_autoreleasePoolPush();
                  if (*(v775 + 64) == 1)
                  {
                    v442 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v443 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v443, OS_LOG_TYPE_ERROR))
                        {
                          v976 = 138412290;
                          p_isa = v440;
                          _os_log_error_impl(&dword_18565F000, v443, OS_LOG_TYPE_ERROR, "CoreData: error: Executing index creation statement: %@\n", &v976, 0xCu);
                        }
                      }

                      else
                      {
                        v444 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
                        {
                          v976 = 138412290;
                          p_isa = v440;
                          _os_log_impl(&dword_18565F000, v444, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing index creation statement: %@\n", &v976, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v445 = 1;
                    }

                    else
                    {
                      v445 = 4;
                    }

                    _NSCoreDataLog_console(v445, "Executing index creation statement: %@", v440);
                    objc_autoreleasePoolPop(v442);
                  }

                  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v440];
                  objc_autoreleasePoolPop(v441);
                }

                v437 = [v434 countByEnumeratingWithState:&v821 objects:v936 count:16];
              }

              while (v437);
            }

            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v447 = v446;
            v935[0] = @"Execute index creation statements";
            v935[1] = [MEMORY[0x1E696AD98] numberWithDouble:v446 - v436];
            [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v935, 2), @"2.9.2"}];
            v448 = [contextg bulkUpdateStatementsForStore:*(*(v775 + 32) + 8)];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v450 = v449;
            v934[0] = @"Generate index update statements";
            v934[1] = [MEMORY[0x1E696AD98] numberWithDouble:v449 - v447];
            [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v934, 2), @"2.9.3"}];
            v819 = 0u;
            v820 = 0u;
            v817 = 0u;
            v818 = 0u;
            v451 = [v448 countByEnumeratingWithState:&v817 objects:v933 count:16];
            if (v451)
            {
              v452 = *v818;
              do
              {
                for (i2 = 0; i2 != v451; ++i2)
                {
                  if (*v818 != v452)
                  {
                    objc_enumerationMutation(v448);
                  }

                  v454 = *(*(&v817 + 1) + 8 * i2);
                  v455 = objc_autoreleasePoolPush();
                  if (*(v775 + 64) == 1)
                  {
                    v456 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v457 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v457, OS_LOG_TYPE_ERROR))
                        {
                          v976 = 138412290;
                          p_isa = v454;
                          _os_log_error_impl(&dword_18565F000, v457, OS_LOG_TYPE_ERROR, "CoreData: error: Executing index update statement: %@\n", &v976, 0xCu);
                        }
                      }

                      else
                      {
                        v458 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
                        {
                          v976 = 138412290;
                          p_isa = v454;
                          _os_log_impl(&dword_18565F000, v458, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing index update statement: %@\n", &v976, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v459 = 1;
                    }

                    else
                    {
                      v459 = 4;
                    }

                    _NSCoreDataLog_console(v459, "Executing index update statement: %@", v454);
                    objc_autoreleasePoolPop(v456);
                  }

                  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v454];
                  objc_autoreleasePoolPop(v455);
                }

                v451 = [v448 countByEnumeratingWithState:&v817 objects:v933 count:16];
              }

              while (v451);
            }

            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v932[0] = @"Execute index update statements";
            v932[1] = [MEMORY[0x1E696AD98] numberWithDouble:v460 - v450];
            [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v932, 2), @"2.9.4"}];
            objc_autoreleasePoolPop(v737);
          }

          v728 = [v709 countByEnumeratingWithState:&v825 objects:v938 count:16];
        }

        while (v728);
      }

      if (*(v775 + 64) == 1)
      {
        v461 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v462 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v462, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v976) = 0;
              _os_log_error_impl(&dword_18565F000, v462, OS_LOG_TYPE_ERROR, "CoreData: error: Finished index creation and updates.\n", &v976, 2u);
            }
          }

          else
          {
            v463 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v463, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v976) = 0;
              _os_log_impl(&dword_18565F000, v463, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished index creation and updates.\n", &v976, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v464 = 1;
        }

        else
        {
          v464 = 4;
        }

        _NSCoreDataLog_console(v464, "Finished index creation and updates.");
        objc_autoreleasePoolPop(v461);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v931[0] = @"Total index creation and update time";
      v931[1] = [MEMORY[0x1E696AD98] numberWithDouble:v465 - v427];
      [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v931, 2), @"2.9"}];
    }

    v466 = *(*(v775 + 32) + 16);
    if (v466)
    {
      v467 = *(v466 + 24);
    }

    else
    {
      v467 = 0;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v469 = v468;
    v815 = 0u;
    v816 = 0u;
    v813 = 0u;
    v814 = 0u;
    v470 = [v467 countByEnumeratingWithState:&v813 objects:v930 count:16];
    if (v470)
    {
      v471 = 0;
      v472 = *v814;
      do
      {
        v473 = 0;
        do
        {
          if (*v814 != v472)
          {
            objc_enumerationMutation(v467);
          }

          v474 = *(*(&v813 + 1) + 8 * v473);
          v475 = objc_autoreleasePoolPush();
          v476 = [v467 objectForKey:v474];
          v477 = v476;
          if (v476)
          {
            if (!*(v476 + 160))
            {
              v478 = *(v476 + 152);
              if (v478)
              {
                if ([v478 count])
                {
                  v479 = [objc_msgSend(objc_msgSend(v477 "entityDescription")];
                  v480 = v479;
                  if (v479)
                  {
                    if ([v479 isNSString])
                    {
                      v481 = [v480 lowercaseString];
                      v482 = v481;
                      if (v481)
                      {
                        if (([v481 isEqualToString:@"yes"] & 1) != 0 || objc_msgSend(v482, "isEqualToString:", @"1"))
                        {
                          v483 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP INDEX IF EXISTS %@_Z_ENT_INDEX", objc_msgSend(v477, "tableName")];
                          if (*(v775 + 64) == 1)
                          {
                            v484 = objc_autoreleasePoolPush();
                            _pflogInitialize(4);
                            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                            {
                              if (_pflogging_catastrophic_mode)
                              {
                                v485 = _PFLogGetLogStream(1);
                                if (os_log_type_enabled(v485, OS_LOG_TYPE_ERROR))
                                {
                                  v976 = 138412290;
                                  p_isa = v483;
                                  _os_log_error_impl(&dword_18565F000, v485, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop Z_ENT index statement: %@\n", &v976, 0xCu);
                                }
                              }

                              else
                              {
                                v486 = _PFLogGetLogStream(4);
                                if (os_log_type_enabled(v486, OS_LOG_TYPE_DEFAULT))
                                {
                                  v976 = 138412290;
                                  p_isa = v483;
                                  _os_log_impl(&dword_18565F000, v486, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop Z_ENT index statement: %@\n", &v976, 0xCu);
                                }
                              }
                            }

                            if (_pflogging_catastrophic_mode)
                            {
                              v487 = 1;
                            }

                            else
                            {
                              v487 = 4;
                            }

                            _NSCoreDataLog_console(v487, "Executing drop Z_ENT index statement: %@", v483);
                            objc_autoreleasePoolPop(v484);
                          }

                          [(NSSQLiteConnection *)*(*(v775 + 32) + 48) _executeSQLString:v483];
                          v471 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          objc_autoreleasePoolPop(v475);
          ++v473;
        }

        while (v470 != v473);
        v488 = [v467 countByEnumeratingWithState:&v813 objects:v930 count:16];
        v470 = v488;
      }

      while (v488);
      if (v471)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v929[0] = @"Dropping Z_ENT indices";
        v929[1] = [MEMORY[0x1E696AD98] numberWithDouble:v489 - v469];
        [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v929, 2), @"2.10"}];
      }
    }

    if ([*(*(v775 + 32) + 192) count])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v491 = v490;
      if (*(v775 + 64) == 1)
      {
        v492 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v493 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v493, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v976) = 0;
              _os_log_error_impl(&dword_18565F000, v493, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating derived properties.\n", &v976, 2u);
            }
          }

          else
          {
            v494 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v494, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v976) = 0;
              _os_log_impl(&dword_18565F000, v494, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating derived properties.\n", &v976, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v495 = 1;
        }

        else
        {
          v495 = 4;
        }

        _NSCoreDataLog_console(v495, "Begin updating derived properties.");
        objc_autoreleasePoolPop(v492);
      }

      v811 = 0u;
      v812 = 0u;
      v809 = 0u;
      v810 = 0u;
      v710 = *(*(v775 + 32) + 192);
      v729 = [v710 countByEnumeratingWithState:&v809 objects:v928 count:16];
      if (v729)
      {
        v720 = *v810;
        do
        {
          for (contexth = 0; contexth != v729; contexth = contexth + 1)
          {
            if (*v810 != v720)
            {
              objc_enumerationMutation(v710);
            }

            v766 = *(*(&v809 + 1) + 8 * contexth);
            v738 = objc_autoreleasePoolPush();
            v496 = v766;
            if (v766)
            {
              [(NSSQLEntity_DerivedAttributesExtension *)v766 _generateTriggerSQL];
              v496 = *(v766 + 32);
            }

            v497 = [v496 valueForKey:@"dataStatements"];
            v807 = 0u;
            v808 = 0u;
            v805 = 0u;
            v806 = 0u;
            v498 = [v497 countByEnumeratingWithState:&v805 objects:v927 count:16];
            if (v498)
            {
              v499 = *v806;
              do
              {
                for (i3 = 0; i3 != v498; ++i3)
                {
                  if (*v806 != v499)
                  {
                    objc_enumerationMutation(v497);
                  }

                  v501 = *(*(&v805 + 1) + 8 * i3);
                  v502 = objc_autoreleasePoolPush();
                  if (*(v775 + 64) == 1)
                  {
                    v503 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v504 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v504, OS_LOG_TYPE_ERROR))
                        {
                          v976 = 138412290;
                          p_isa = v501;
                          _os_log_error_impl(&dword_18565F000, v504, OS_LOG_TYPE_ERROR, "CoreData: error: Executing derived property update statement (data): %@\n", &v976, 0xCu);
                        }
                      }

                      else
                      {
                        v505 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
                        {
                          v976 = 138412290;
                          p_isa = v501;
                          _os_log_impl(&dword_18565F000, v505, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing derived property update statement (data): %@\n", &v976, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v506 = 1;
                    }

                    else
                    {
                      v506 = 4;
                    }

                    _NSCoreDataLog_console(v506, "Executing derived property update statement (data): %@", v501);
                    objc_autoreleasePoolPop(v503);
                  }

                  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v501];
                  objc_autoreleasePoolPop(v502);
                }

                v498 = [v497 countByEnumeratingWithState:&v805 objects:v927 count:16];
              }

              while (v498);
            }

            v507 = v766;
            if (v766)
            {
              [(NSSQLEntity_DerivedAttributesExtension *)v766 _generateTriggerSQL];
              v507 = *(v766 + 32);
            }

            v508 = [v507 valueForKey:@"triggerCreationStatements"];
            v803 = 0u;
            v804 = 0u;
            v801 = 0u;
            v802 = 0u;
            v509 = [v508 countByEnumeratingWithState:&v801 objects:v926 count:16];
            if (v509)
            {
              v510 = *v802;
              do
              {
                for (i4 = 0; i4 != v509; ++i4)
                {
                  if (*v802 != v510)
                  {
                    objc_enumerationMutation(v508);
                  }

                  v512 = *(*(&v801 + 1) + 8 * i4);
                  v513 = objc_autoreleasePoolPush();
                  if (*(v775 + 64) == 1)
                  {
                    v514 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v515 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v515, OS_LOG_TYPE_ERROR))
                        {
                          v976 = 138412290;
                          p_isa = v512;
                          _os_log_error_impl(&dword_18565F000, v515, OS_LOG_TYPE_ERROR, "CoreData: error: Executing derived property update statement (trigger): %@\n", &v976, 0xCu);
                        }
                      }

                      else
                      {
                        v516 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v516, OS_LOG_TYPE_DEFAULT))
                        {
                          v976 = 138412290;
                          p_isa = v512;
                          _os_log_impl(&dword_18565F000, v516, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing derived property update statement (trigger): %@\n", &v976, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v517 = 1;
                    }

                    else
                    {
                      v517 = 4;
                    }

                    _NSCoreDataLog_console(v517, "Executing derived property update statement (trigger): %@", v512);
                    objc_autoreleasePoolPop(v514);
                  }

                  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v512];
                  objc_autoreleasePoolPop(v513);
                }

                v509 = [v508 countByEnumeratingWithState:&v801 objects:v926 count:16];
              }

              while (v509);
            }

            objc_autoreleasePoolPop(v738);
          }

          v729 = [v710 countByEnumeratingWithState:&v809 objects:v928 count:16];
        }

        while (v729);
      }

      if (*(v775 + 64) == 1)
      {
        v518 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v519 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v519, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v976) = 0;
              _os_log_error_impl(&dword_18565F000, v519, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating derived properties.\n", &v976, 2u);
            }
          }

          else
          {
            v520 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v520, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v976) = 0;
              _os_log_impl(&dword_18565F000, v520, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating derived properties.\n", &v976, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v521 = 1;
        }

        else
        {
          v521 = 4;
        }

        _NSCoreDataLog_console(v521, "Finished updating derived properties.");
        objc_autoreleasePoolPop(v518);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v925[0] = @"Update derived properties";
      v925[1] = [MEMORY[0x1E696AD98] numberWithDouble:v522 - v491];
      [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v925, 2), @"2.11"}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v524 = v523;
    v739 = objc_autoreleasePoolPush();
    v799 = 0u;
    v800 = 0u;
    v797 = 0u;
    v798 = 0u;
    v525 = [objc_msgSend(*(*(v775 + 32) + 8) "ancillarySQLModels")];
    v526 = [v525 countByEnumeratingWithState:&v797 objects:v924 count:16];
    if (v526)
    {
      contexti = v525;
      v527 = 0;
      v767 = *v798;
      do
      {
        v528 = 0;
        v774 = v526;
        do
        {
          if (*v798 != v767)
          {
            objc_enumerationMutation(contexti);
          }

          v529 = *(*(&v797 + 1) + 8 * v528);
          v530 = objc_autoreleasePoolPush();
          v795 = 0u;
          v796 = 0u;
          v793 = 0u;
          v794 = 0u;
          if (v529)
          {
            v531 = *(v529 + 32);
          }

          else
          {
            v531 = 0;
          }

          v532 = [v531 countByEnumeratingWithState:&v793 objects:v923 count:16];
          if (v532)
          {
            v533 = *v794;
            do
            {
              for (i5 = 0; i5 != v532; ++i5)
              {
                if (*v794 != v533)
                {
                  objc_enumerationMutation(v531);
                }

                v535 = *(*(&v793 + 1) + 8 * i5);
                v536 = objc_autoreleasePoolPush();
                v537 = *(*(v775 + 32) + 48);
                v538 = [v535 tableName];
                if (v537 && [(NSSQLiteConnection *)v537 _hasTableWithName:v538 isTemp:0])
                {
                  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) generatePrimaryKeysForEntity:v535 batch:0];
                  v527 = 1;
                }

                objc_autoreleasePoolPop(v536);
              }

              v532 = [v531 countByEnumeratingWithState:&v793 objects:v923 count:16];
            }

            while (v532);
          }

          objc_autoreleasePoolPop(v530);
          ++v528;
        }

        while (v528 != v774);
        v526 = [contexti countByEnumeratingWithState:&v797 objects:v924 count:16];
      }

      while (v526);
    }

    else
    {
      v527 = 0;
    }

    objc_autoreleasePoolPop(v739);
    if (v527)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v922[0] = @"Update ancillary model primary keys";
      v922[1] = [MEMORY[0x1E696AD98] numberWithDouble:v539 - v524];
      [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v922, 2), @"2.12"}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v541 = v540;
    v542 = objc_autoreleasePoolPush();
    if ([(NSSQLiteConnection *)*(*(v775 + 32) + 48) hasIndexTrackingTable])
    {
      [(NSSQLiteConnection *)*(*(v775 + 32) + 48) dropIndexTrackingTable];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v921[0] = @"Drop index tracking table";
      v921[1] = [MEMORY[0x1E696AD98] numberWithDouble:v543 - v541];
      [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v921, 2), @"2.13"}];
    }

    objc_autoreleasePoolPop(v542);
    hasPersistentHistory = [(NSSQLiteConnection *)*(*(v775 + 32) + 48) _hasPersistentHistoryTables];
    if (!hasPersistentHistory)
    {
LABEL_1093:
      if ([*(*(v775 + 32) + 208) count])
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v584 = v583;
        if (*(v775 + 64) == 1)
        {
          v585 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v586 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v586, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v976) = 0;
                _os_log_error_impl(&dword_18565F000, v586, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning CloudKit metadata tables update\n", &v976, 2u);
              }
            }

            else
            {
              v587 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v587, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v976) = 0;
                _os_log_impl(&dword_18565F000, v587, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning CloudKit metadata tables update\n", &v976, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v588 = 1;
          }

          else
          {
            v588 = 4;
          }

          _NSCoreDataLog_console(v588, "Beginning CloudKit metadata tables update");
          objc_autoreleasePoolPop(v585);
        }

        v787 = 0u;
        v788 = 0u;
        v785 = 0u;
        v786 = 0u;
        v589 = *(*(v775 + 32) + 208);
        v590 = [v589 countByEnumeratingWithState:&v785 objects:v914 count:16];
        if (v590)
        {
          v591 = *v786;
          do
          {
            for (i6 = 0; i6 != v590; ++i6)
            {
              if (*v786 != v591)
              {
                objc_enumerationMutation(v589);
              }

              v593 = *(*(&v785 + 1) + 8 * i6);
              v594 = objc_autoreleasePoolPush();
              if (*(v775 + 64) == 1)
              {
                v595 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v596 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v596, OS_LOG_TYPE_ERROR))
                    {
                      v976 = 138412290;
                      p_isa = v593;
                      _os_log_error_impl(&dword_18565F000, v596, OS_LOG_TYPE_ERROR, "CoreData: error: Executing CloudKit metadata table update: %@\n", &v976, 0xCu);
                    }
                  }

                  else
                  {
                    v597 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v597, OS_LOG_TYPE_DEFAULT))
                    {
                      v976 = 138412290;
                      p_isa = v593;
                      _os_log_impl(&dword_18565F000, v597, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing CloudKit metadata table update: %@\n", &v976, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v598 = 1;
                }

                else
                {
                  v598 = 4;
                }

                _NSCoreDataLog_console(v598, "Executing CloudKit metadata table update: %@", v593);
                objc_autoreleasePoolPop(v595);
              }

              [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v593];
              objc_autoreleasePoolPop(v594);
            }

            v590 = [v589 countByEnumeratingWithState:&v785 objects:v914 count:16];
          }

          while (v590);
        }

        if (*(v775 + 64) == 1)
        {
          v599 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v600 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v600, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v976) = 0;
                _os_log_error_impl(&dword_18565F000, v600, OS_LOG_TYPE_ERROR, "CoreData: error: Finished CloudKit metadata tables update\n", &v976, 2u);
              }
            }

            else
            {
              v601 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v601, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v976) = 0;
                _os_log_impl(&dword_18565F000, v601, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished CloudKit metadata tables update\n", &v976, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v602 = 1;
          }

          else
          {
            v602 = 4;
          }

          _NSCoreDataLog_console(v602, "Finished CloudKit metadata tables update");
          objc_autoreleasePoolPop(v599);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v913[0] = @"CloudKit metadata updates";
        v913[1] = [MEMORY[0x1E696AD98] numberWithDouble:v603 - v584];
        [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v913, 2), @"2.15"}];
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v605 = v604;
      if (*(v775 + 64) == 1)
      {
        v606 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v607 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v607, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v976) = 0;
              _os_log_error_impl(&dword_18565F000, v607, OS_LOG_TYPE_ERROR, "CoreData: error: Updating metadata\n", &v976, 2u);
            }
          }

          else
          {
            v608 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v608, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v976) = 0;
              _os_log_impl(&dword_18565F000, v608, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Updating metadata\n", &v976, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v609 = 1;
        }

        else
        {
          v609 = 4;
        }

        _NSCoreDataLog_console(v609, "Updating metadata");
        objc_autoreleasePoolPop(v606);
      }

      v610 = [objc_msgSend(*(*(v775 + 32) + 8) "metadata")];
      v771 = v610;
      v611 = [*(*(v775 + 32) + 16) managedObjectModel];
      v612 = [v611 entityVersionHashesByName];
      [(__CFString *)v610 setObject:v612 forKey:@"NSStoreModelVersionHashes"];
      v613 = [(NSManagedObjectModel *)v611 _entityVersionHashesDigestFrom:v612];
      [(__CFString *)v610 setObject:v613 forKey:0x1EF3FCE28];
      -[__CFString setObject:forKey:](v610, "setObject:forKey:", [v611 versionChecksum], @"NSStoreModelVersionChecksumKey");
      if (v611)
      {
        v614 = [objc_msgSend(v611 "versionIdentifiers")];
      }

      else
      {
        v614 = 0;
      }

      [(__CFString *)v610 setObject:v614 forKey:@"NSStoreModelVersionIdentifiers"];
      v615 = *(v775 + 32);
      if ([objc_opt_class() _annotatesMigrationMetadata])
      {
        [(__CFString *)v610 setObject:@"NSSQLiteInPlaceMigrationManager" forKey:@"migrationManagerClass"];
      }

      v616 = *(v775 + 32);
      if (v616 && *(v616 + 217) == 1)
      {
        [(__CFString *)v610 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreDeferredLightweightMigrationOptionKey"];
      }

      v617 = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)*(*(v775 + 32) + 48) saveMetadata:v610];
      [(NSSQLiteConnection *)*(*(v775 + 32) + 48) saveCachedModel:v611];
      if (hasPersistentHistory)
      {
        [(NSSQLiteConnection *)*(*(v775 + 32) + 48) processMigrationRequestForHash:v613 stageLabel:*(*(v775 + 32) + 232)];
      }

      objc_autoreleasePoolPop(v617);
      if (*(v775 + 64) == 1)
      {
        v618 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v619 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v619, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v976) = 0;
              _os_log_error_impl(&dword_18565F000, v619, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating metadata\n", &v976, 2u);
            }
          }

          else
          {
            v620 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v620, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v976) = 0;
              _os_log_impl(&dword_18565F000, v620, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating metadata\n", &v976, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v621 = 1;
        }

        else
        {
          v621 = 4;
        }

        _NSCoreDataLog_console(v621, "Finished updating metadata");
        objc_autoreleasePoolPop(v618);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v182 = v622;
      v912[0] = @"Update store metadata";
      v912[1] = [MEMORY[0x1E696AD98] numberWithDouble:v622 - v605];
      [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v912, 2), @"2.16"}];
      if ([(NSMappingModel *)*(*(v775 + 32) + 40) _hasInferredMappingNeedingValidation])
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v624 = v623;
        if (*(v775 + 64) == 1)
        {
          v625 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v626 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v626, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v976) = 0;
                _os_log_error_impl(&dword_18565F000, v626, OS_LOG_TYPE_ERROR, "CoreData: error: Starting inferred mapping validation\n", &v976, 2u);
              }
            }

            else
            {
              v627 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v627, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v976) = 0;
                _os_log_impl(&dword_18565F000, v627, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Starting inferred mapping validation\n", &v976, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v628 = 1;
          }

          else
          {
            v628 = 4;
          }

          _NSCoreDataLog_console(v628, "Starting inferred mapping validation");
          objc_autoreleasePoolPop(v625);
        }

        v783 = 0u;
        v784 = 0u;
        v781 = 0u;
        v782 = 0u;
        v698 = [*(*(v775 + 32) + 40) entityMappings];
        v700 = [v698 countByEnumeratingWithState:&v781 objects:v911 count:16];
        if (v700)
        {
          v702 = *v782;
          do
          {
            for (i7 = 0; i7 != v700; i7 = i7 + 1)
            {
              if (*v782 != v702)
              {
                objc_enumerationMutation(v698);
              }

              v721 = *(*(&v781 + 1) + 8 * i7);
              v704 = objc_autoreleasePoolPush();
              if (v721)
              {
                v629 = [v721 userInfo];
                if ([objc_msgSend(v629 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}])
                {
                  if (*(v775 + 64) == 1)
                  {
                    v630 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v631 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v631, OS_LOG_TYPE_ERROR))
                        {
                          v632 = [v721 name];
                          v976 = 138412290;
                          p_isa = v632;
                          _os_log_error_impl(&dword_18565F000, v631, OS_LOG_TYPE_ERROR, "CoreData: error: Executing inferred mapping validation: %@\n", &v976, 0xCu);
                        }
                      }

                      else
                      {
                        v633 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v633, OS_LOG_TYPE_DEFAULT))
                        {
                          v634 = [v721 name];
                          v976 = 138412290;
                          p_isa = v634;
                          _os_log_impl(&dword_18565F000, v633, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing inferred mapping validation: %@\n", &v976, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v635 = [v721 name];
                      v636 = 1;
                    }

                    else
                    {
                      v635 = [v721 name];
                      v636 = 4;
                    }

                    _NSCoreDataLog_console(v636, "Executing inferred mapping validation: %@", v635);
                    objc_autoreleasePoolPop(v630);
                  }

                  v638 = *(v775 + 32);
                  v637 = *(v775 + 40);
                  if (!v638)
                  {
                    goto LABEL_1285;
                  }

                  v695 = *(v637 + 8);
                  v639 = [*(v638 + 16) entityNamed:{objc_msgSend(v721, "destinationEntityName")}];
                  v972 = 0u;
                  v971 = 0u;
                  v970 = 0u;
                  v969 = 0u;
                  v640 = [v721 attributeMappings];
                  v641 = [v640 countByEnumeratingWithState:&v969 objects:&v976 count:16];
                  if (v641)
                  {
                    v730 = v640;
                    v740 = *v970;
                    do
                    {
                      v642 = 0;
                      contextk = v641;
                      do
                      {
                        if (*v970 != v740)
                        {
                          objc_enumerationMutation(v640);
                        }

                        v643 = *(*(&v969 + 1) + 8 * v642);
                        v965 = 0u;
                        v966 = 0u;
                        v967 = 0u;
                        v968 = 0u;
                        if (v643)
                        {
                          v644 = v643[2];
                        }

                        else
                        {
                          v644 = 0;
                        }

                        v645 = [v644 countByEnumeratingWithState:&v965 objects:v975 count:16];
                        v769 = v642;
                        if (v645)
                        {
                          v646 = *v966;
                          do
                          {
                            v647 = 0;
                            do
                            {
                              if (*v966 != v646)
                              {
                                objc_enumerationMutation(v644);
                              }

                              if (![*(*(&v965 + 1) + 8 * v647) isEqualToString:NSPropertyTransformMandatoryPropertyValidation])
                              {
                                v674 = MEMORY[0x1E695DF30];
                                v675 = [MEMORY[0x1E695DF20] dictionaryWithObject:v643 forKey:@"propertyMapping"];
LABEL_1277:
                                objc_exception_throw([v674 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized transform validation in property mapping" userInfo:v675]);
                              }

                              v648 = [v643 name];
                              if (v639)
                              {
                                v649 = [v639[5] objectForKey:v648];
                              }

                              else
                              {
                                v649 = 0;
                              }

                              v650 = [v649 propertyDescription];
                              if (v650 && [v650 superCompositeAttribute])
                              {
                                v651 = [objc_msgSend(v649 "propertyDescription")];
                                while (([v651 isOptional] & 1) == 0)
                                {
                                  v651 = [v651 superCompositeAttribute];
                                  if (!v651)
                                  {
                                    goto LABEL_1219;
                                  }
                                }
                              }

                              else
                              {
LABEL_1219:
                                if ([(_NSSQLiteStoreMigrator *)v638 _countNullsInColumn:v649 forEntity:v639]>= 1)
                                {
                                  v676 = MEMORY[0x1E696ABC0];
                                  v677 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Validation error missing attribute values on mandatory destination attribute", @"reason", objc_msgSend(v639, "name"), @"entity", objc_msgSend(v649, "name"), @"attribute", 0}];
                                  goto LABEL_1284;
                                }
                              }

                              ++v647;
                            }

                            while (v647 != v645);
                            v652 = [v644 countByEnumeratingWithState:&v965 objects:v975 count:16];
                            v645 = v652;
                          }

                          while (v652);
                        }

                        v642 = v769 + 1;
                        v640 = v730;
                      }

                      while ((v769 + 1) != contextk);
                      v653 = [v730 countByEnumeratingWithState:&v969 objects:&v976 count:16];
                      v641 = v653;
                    }

                    while (v653);
                  }

                  v904 = 0u;
                  v903 = 0u;
                  v902 = 0u;
                  v901 = 0u;
                  v654 = [v721 relationshipMappings];
                  v655 = [v654 countByEnumeratingWithState:&v901 objects:v974 count:16];
                  if (!v655)
                  {
                    goto LABEL_1261;
                  }

                  v731 = v654;
                  v741 = *v902;
LABEL_1230:
                  v656 = 0;
                  contextl = v655;
                  while (1)
                  {
                    if (*v902 != v741)
                    {
                      objc_enumerationMutation(v654);
                    }

                    v657 = *(*(&v901 + 1) + 8 * v656);
                    v897 = 0u;
                    v898 = 0u;
                    v899 = 0u;
                    v900 = 0u;
                    v658 = v657 ? v657[2] : 0;
                    v659 = [v658 countByEnumeratingWithState:&v897 objects:v973 count:16];
                    v770 = v656;
                    if (v659)
                    {
                      break;
                    }

LABEL_1257:
                    v656 = v770 + 1;
                    v654 = v731;
                    if ((v770 + 1) == contextl)
                    {
                      v655 = [v731 countByEnumeratingWithState:&v901 objects:v974 count:16];
                      if (!v655)
                      {
                        goto LABEL_1261;
                      }

                      goto LABEL_1230;
                    }
                  }

                  v660 = *v898;
                  while (2)
                  {
                    v661 = 0;
LABEL_1238:
                    if (*v898 != v660)
                    {
                      objc_enumerationMutation(v658);
                    }

                    if (![*(*(&v897 + 1) + 8 * v661) isEqualToString:NSPropertyTransformMandatoryPropertyValidation])
                    {
                      v674 = MEMORY[0x1E695DF30];
                      v675 = [MEMORY[0x1E695DF20] dictionaryWithObject:v657 forKey:@"propertyMapping"];
                      goto LABEL_1277;
                    }

                    v662 = [v657 name];
                    if (v639 && (v663 = [v639[5] objectForKey:v662], (v664 = v663) != 0))
                    {
                      if (LOBYTE(v663->length) == 7)
                      {
                        if ([(_NSSQLiteStoreMigrator *)v638 _countNullsInColumn:v639 forEntity:?]>= 1)
                        {
                          v676 = MEMORY[0x1E696ABC0];
                          v677 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Validation error missing attribute values on mandatory destination relationship", @"reason", objc_msgSend(v639, "name"), @"entity", -[__CFString name](v664, "name"), @"attribute", 0}];
                          goto LABEL_1284;
                        }

                        goto LABEL_1252;
                      }

                      if (![(__CFString *)v663 isToMany])
                      {
                        if (LOBYTE(v664->length) == 9)
                        {
                          v666 = [(NSSQLManyToMany *)v664 inverseColumnName];
                          if ([(_NSSQLiteStoreMigrator *)v638 _countUnreferencedPrimaryKeysForEntity:v639 inForeignKeyColumnName:v666 fromTable:[(__CFString *)v664 correlationTableName]]>= 1)
                          {
LABEL_1283:
                            v676 = MEMORY[0x1E696ABC0];
                            v677 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Validation error missing relationship values on mandatory destination destination", @"reason", objc_msgSend(v639, "name"), @"entity", -[__CFString name](v664, "name"), @"relationship", 0}];
LABEL_1284:
                            *(v695 + 40) = [v676 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v677];
                            v637 = *(v775 + 40);
LABEL_1285:
                            v678 = *(*(v637 + 8) + 40);
                            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"validation error" reason:@"validation failed" userInfo:0]);
                          }
                        }

LABEL_1252:
                        if (v659 == ++v661)
                        {
                          v667 = [v658 countByEnumeratingWithState:&v897 objects:v973 count:16];
                          v659 = v667;
                          if (!v667)
                          {
                            goto LABEL_1257;
                          }

                          continue;
                        }

                        goto LABEL_1238;
                      }

                      length = v664[1].length;
                    }

                    else
                    {
                      if (([0 isToMany] & 1) == 0)
                      {
                        goto LABEL_1252;
                      }

                      v664 = 0;
                      length = 0;
                    }

                    break;
                  }

                  if (-[_NSSQLiteStoreMigrator _countUnreferencedPrimaryKeysForEntity:inForeignKeyColumnName:fromTable:](v638, v639, [objc_msgSend(length "foreignKey")], objc_msgSend(-[__CFString destinationEntity](v664, "destinationEntity"), "tableName")) >= 1)
                  {
                    goto LABEL_1283;
                  }

                  goto LABEL_1252;
                }
              }

LABEL_1261:
              objc_autoreleasePoolPop(v704);
            }

            v700 = [v698 countByEnumeratingWithState:&v781 objects:v911 count:16];
          }

          while (v700);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v669 = v668;
        if (*(v775 + 64) == 1)
        {
          v670 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v671 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v671, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v976) = 0;
                _os_log_error_impl(&dword_18565F000, v671, OS_LOG_TYPE_ERROR, "CoreData: error: Finished inferred mapping validation\n", &v976, 2u);
              }
            }

            else
            {
              v672 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v672, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v976) = 0;
                _os_log_impl(&dword_18565F000, v672, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished inferred mapping validation\n", &v976, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v673 = 1;
          }

          else
          {
            v673 = 4;
          }

          _NSCoreDataLog_console(v673, "Finished inferred mapping validation");
          objc_autoreleasePoolPop(v670);
        }

        v910[0] = @"Inferred mapping validation";
        v910[1] = [MEMORY[0x1E696AD98] numberWithDouble:v669 - v624];
        [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v910, 2), @"2.16b"}];
      }

      goto LABEL_328;
    }

    contextj = objc_autoreleasePoolPush();
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v545 = v544;
    if (*(v775 + 64) == 1)
    {
      v546 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v547 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v547, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v547, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning persistent history metadata tables update\n", &v976, 2u);
          }
        }

        else
        {
          v548 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v548, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v548, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning persistent history metadata tables update\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v549 = 1;
      }

      else
      {
        v549 = 4;
      }

      _NSCoreDataLog_console(v549, "Beginning persistent history metadata tables update");
      objc_autoreleasePoolPop(v546);
    }

    v550 = objc_autoreleasePoolPush();
    v551 = [(_NSSQLiteStoreMigrator *)*(v775 + 32) deleteStatementsForHistory];
    objc_autoreleasePoolPop(v550);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v553 = v552;
    v920[0] = @"Generate persistent history delete statements";
    v920[1] = [MEMORY[0x1E696AD98] numberWithDouble:v552 - v545];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v920, 2), @"2.14.1"}];
    v554 = [(_NSSQLiteStoreMigrator *)*(v775 + 32) updateStatementsForHistoryChanges];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v556 = v555;
    v919[0] = @"Generate persistent history update statements";
    v919[1] = [MEMORY[0x1E696AD98] numberWithDouble:v555 - v553];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v919, 2), @"2.14.2"}];
    if (v554)
    {
      v557 = v551;
    }

    else
    {
      v557 = 0;
    }

    if (v557)
    {
      v791 = 0u;
      v792 = 0u;
      v789 = 0u;
      v790 = 0u;
      v558 = [v554 countByEnumeratingWithState:&v789 objects:v917 count:16];
      if (v558)
      {
        v559 = *v790;
        do
        {
          for (i8 = 0; i8 != v558; ++i8)
          {
            if (*v790 != v559)
            {
              objc_enumerationMutation(v554);
            }

            v561 = *(*(&v789 + 1) + 8 * i8);
            v562 = objc_autoreleasePoolPush();
            if (*(v775 + 64) == 1)
            {
              v563 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v564 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v564, OS_LOG_TYPE_ERROR))
                  {
                    v976 = 138412290;
                    p_isa = v561;
                    _os_log_error_impl(&dword_18565F000, v564, OS_LOG_TYPE_ERROR, "CoreData: error: Executing history migration statement: %@\n", &v976, 0xCu);
                  }
                }

                else
                {
                  v565 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v565, OS_LOG_TYPE_DEFAULT))
                  {
                    v976 = 138412290;
                    p_isa = v561;
                    _os_log_impl(&dword_18565F000, v565, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing history migration statement: %@\n", &v976, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v566 = 1;
              }

              else
              {
                v566 = 4;
              }

              _NSCoreDataLog_console(v566, "Executing history migration statement: %@", v561);
              objc_autoreleasePoolPop(v563);
            }

            [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v561];
            objc_autoreleasePoolPop(v562);
          }

          v558 = [v554 countByEnumeratingWithState:&v789 objects:v917 count:16];
        }

        while (v558);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v916[0] = @"Execution of persistent history migration";
      v916[1] = [MEMORY[0x1E696AD98] numberWithDouble:v567 - v556];
      [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v916, 2), @"2.14.4"}];
      goto LABEL_1081;
    }

    if (*(v775 + 64) != 1)
    {
LABEL_1070:
      v572 = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)*(*(v775 + 32) + 48) dropHistoryTrackingTables];
      objc_autoreleasePoolPop(v572);
      if (*(v775 + 64) != 1)
      {
LABEL_1080:
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v918[0] = @"Drop persistent history tables";
        v918[1] = [MEMORY[0x1E696AD98] numberWithDouble:v577 - v556];
        [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v918, 2), @"2.14.3"}];
LABEL_1081:
        if (*(v775 + 64) == 1)
        {
          v578 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v579 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v579, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v976) = 0;
                _os_log_error_impl(&dword_18565F000, v579, OS_LOG_TYPE_ERROR, "CoreData: error: Completed persistent history metadata tables update\n", &v976, 2u);
              }
            }

            else
            {
              v580 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v580, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v976) = 0;
                _os_log_impl(&dword_18565F000, v580, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Completed persistent history metadata tables update\n", &v976, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v581 = 1;
          }

          else
          {
            v581 = 4;
          }

          _NSCoreDataLog_console(v581, "Completed persistent history metadata tables update");
          objc_autoreleasePoolPop(v578);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v915[0] = @"Total persistent history migration";
        v915[1] = [MEMORY[0x1E696AD98] numberWithDouble:v582 - v545];
        [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v915, 2), @"2.14"}];
        objc_autoreleasePoolPop(contextj);
        goto LABEL_1093;
      }

      v573 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(2))
      {
        if (_pflogging_catastrophic_mode)
        {
          v574 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v574, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            v575 = "CoreData: error: Finished dropping Persistent History b/c of an issue with migration\n";
LABEL_1282:
            _os_log_error_impl(&dword_18565F000, v574, OS_LOG_TYPE_ERROR, v575, &v976, 2u);
          }
        }

        else
        {
          v574 = _PFLogGetLogStream(2);
          if (os_log_type_enabled(v574, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            v575 = "CoreData: warning: Finished dropping Persistent History b/c of an issue with migration\n";
            goto LABEL_1282;
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v576 = 1;
      }

      else
      {
        v576 = 2;
      }

      _NSCoreDataLog_console(v576, "Finished dropping Persistent History b/c of an issue with migration");
      objc_autoreleasePoolPop(v573);
      goto LABEL_1080;
    }

    v568 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(2))
    {
      if (_pflogging_catastrophic_mode)
      {
        v569 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v569, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          v570 = "CoreData: error: Dropping Persistent History b/c of an issue with migration\n";
LABEL_1280:
          _os_log_error_impl(&dword_18565F000, v569, OS_LOG_TYPE_ERROR, v570, &v976, 2u);
        }
      }

      else
      {
        v569 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v569, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          v570 = "CoreData: warning: Dropping Persistent History b/c of an issue with migration\n";
          goto LABEL_1280;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v571 = 1;
    }

    else
    {
      v571 = 2;
    }

    _NSCoreDataLog_console(v571, "Dropping Persistent History b/c of an issue with migration");
    objc_autoreleasePoolPop(v568);
    goto LABEL_1070;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v391 = v390;
  if (*(v775 + 64) == 1)
  {
    v392 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v393 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v393, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v976) = 0;
          _os_log_error_impl(&dword_18565F000, v393, OS_LOG_TYPE_ERROR, "CoreData: error: Begin attribute extension updates.\n", &v976, 2u);
        }
      }

      else
      {
        v394 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v394, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v976) = 0;
          _os_log_impl(&dword_18565F000, v394, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin attribute extension updates.\n", &v976, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v395 = 1;
    }

    else
    {
      v395 = 4;
    }

    _NSCoreDataLog_console(v395, "Begin attribute extension updates.");
    objc_autoreleasePoolPop(v392);
  }

  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v396 = [*(*(v775 + 32) + 152) objectForKey:@"inserted"];
  v397 = [v396 countByEnumeratingWithState:&v837 objects:v942 count:16];
  if (!v397)
  {
LABEL_805:
    if (*(v775 + 64) == 1)
    {
      v421 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v422 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v422, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v976) = 0;
            _os_log_error_impl(&dword_18565F000, v422, OS_LOG_TYPE_ERROR, "CoreData: error: Finished attribute extension updates.\n", &v976, 2u);
          }
        }

        else
        {
          v423 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v423, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v976) = 0;
            _os_log_impl(&dword_18565F000, v423, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished attribute extension updates.\n", &v976, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v424 = 1;
      }

      else
      {
        v424 = 4;
      }

      _NSCoreDataLog_console(v424, "Finished attribute extension updates.");
      objc_autoreleasePoolPop(v421);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v939[0] = @"Update attribute extensions";
    v939[1] = [MEMORY[0x1E696AD98] numberWithDouble:v425 - v391];
    [v712 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v939, 2), @"2.8"}];
    goto LABEL_818;
  }

  v718 = *v838;
LABEL_758:
  contextf = 0;
  v708 = v397;
  while (1)
  {
    if (*v838 != v718)
    {
      objc_enumerationMutation(v396);
    }

    v764 = *(*(&v837 + 1) + 8 * contextf);
    v736 = objc_autoreleasePoolPush();
    v727 = [v764 validate:*(*(v775 + 40) + 8) + 40];
    if (v727)
    {
      v836 = 0u;
      v835 = 0u;
      v834 = 0u;
      v833 = 0u;
      v398 = [v764 insertSQLStrings];
      v399 = [v398 countByEnumeratingWithState:&v833 objects:v941 count:16];
      if (v399)
      {
        v400 = *v834;
        do
        {
          for (i9 = 0; i9 != v399; ++i9)
          {
            if (*v834 != v400)
            {
              objc_enumerationMutation(v398);
            }

            v402 = *(*(&v833 + 1) + 8 * i9);
            v403 = objc_autoreleasePoolPush();
            v404 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v402];
            if (*(v775 + 64) == 1)
            {
              v405 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v406 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
                  {
                    v976 = 138412290;
                    p_isa = &v404->super.isa;
                    _os_log_error_impl(&dword_18565F000, v406, OS_LOG_TYPE_ERROR, "CoreData: error: Executing attribute extension insert statement: %@\n", &v976, 0xCu);
                  }
                }

                else
                {
                  v407 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
                  {
                    v976 = 138412290;
                    p_isa = &v404->super.isa;
                    _os_log_impl(&dword_18565F000, v407, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing attribute extension insert statement: %@\n", &v976, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v408 = 1;
              }

              else
              {
                v408 = 4;
              }

              _NSCoreDataLog_console(v408, "Executing attribute extension insert statement: %@", v404);
              objc_autoreleasePoolPop(v405);
            }

            [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v404];

            objc_autoreleasePoolPop(v403);
          }

          v399 = [v398 countByEnumeratingWithState:&v833 objects:v941 count:16];
        }

        while (v399);
      }

      v832 = 0u;
      v831 = 0u;
      v830 = 0u;
      v829 = 0u;
      v409 = [v764 bulkUpdateSQLStrings];
      v410 = [v409 countByEnumeratingWithState:&v829 objects:v940 count:16];
      if (v410)
      {
        v411 = *v830;
        do
        {
          for (i10 = 0; i10 != v410; ++i10)
          {
            if (*v830 != v411)
            {
              objc_enumerationMutation(v409);
            }

            v413 = *(*(&v829 + 1) + 8 * i10);
            v414 = objc_autoreleasePoolPush();
            v415 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v413];
            if (*(v775 + 64) == 1)
            {
              v416 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v417 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v417, OS_LOG_TYPE_ERROR))
                  {
                    v976 = 138412290;
                    p_isa = &v415->super.isa;
                    _os_log_error_impl(&dword_18565F000, v417, OS_LOG_TYPE_ERROR, "CoreData: error: Executing attribute extension change statement: %@\n", &v976, 0xCu);
                  }
                }

                else
                {
                  v418 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v418, OS_LOG_TYPE_DEFAULT))
                  {
                    v976 = 138412290;
                    p_isa = &v415->super.isa;
                    _os_log_impl(&dword_18565F000, v418, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing attribute extension change statement: %@\n", &v976, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v419 = 1;
              }

              else
              {
                v419 = 4;
              }

              _NSCoreDataLog_console(v419, "Executing attribute extension change statement: %@", v415);
              objc_autoreleasePoolPop(v416);
            }

            [(NSSQLiteConnection *)*(*(v775 + 32) + 48) prepareAndExecuteSQLStatement:v415];

            objc_autoreleasePoolPop(v414);
          }

          v410 = [v409 countByEnumeratingWithState:&v829 objects:v940 count:16];
        }

        while (v410);
      }
    }

    else
    {
      v420 = *(*(*(v775 + 40) + 8) + 40);
      *(*(*(v775 + 48) + 8) + 24) = 0;
    }

    objc_autoreleasePoolPop(v736);
    if (!v727)
    {
      break;
    }

    contextf = contextf + 1;
    if (contextf == v708)
    {
      v397 = [v396 countByEnumeratingWithState:&v837 objects:v942 count:16];
      if (v397)
      {
        goto LABEL_758;
      }

      goto LABEL_805;
    }
  }

LABEL_810:
  v771 = 0;
  v26 = 1;
LABEL_1290:
  [(NSSQLiteConnection *)*(*(v775 + 32) + 48) endFetchAndRecycleStatement:?];

  if ((*(*(*(v775 + 48) + 8) + 24) & 1) == 0 && *(v775 + 64) == 1)
  {
    v679 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v680 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v680, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v680, OS_LOG_TYPE_ERROR, "CoreData: error: Failed lightweight migration on connection\n", buf, 2u);
        }
      }

      else
      {
        v681 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v681, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v681, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed lightweight migration on connection\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v682 = 1;
    }

    else
    {
      v682 = 4;
    }

    _NSCoreDataLog_console(v682, "Failed lightweight migration on connection");
    objc_autoreleasePoolPop(v679);
  }

  if (*(v775 + 65) == 1)
  {
    [(NSSQLiteConnection *)*(*(v775 + 32) + 48) _executeSQLString:?];
  }

  if (v26)
  {
    if (*(v775 + 64) == 1)
    {
      v683 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v684 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v684, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v684, OS_LOG_TYPE_ERROR, "CoreData: error: Rolling back formal transaction\n", buf, 2u);
          }
        }

        else
        {
          v685 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v685, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v685, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Rolling back formal transaction\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v686 = 1;
      }

      else
      {
        v686 = 4;
      }

      _NSCoreDataLog_console(v686, "Rolling back formal transaction");
      objc_autoreleasePoolPop(v683);
    }

    [(NSSQLiteConnection *)*(*(v775 + 32) + 48) rollbackTransaction];
    *(*(*(v775 + 48) + 8) + 24) = 0;
  }

  v687 = *MEMORY[0x1E69E9840];
}

uint64_t __57___NSSQLiteStoreMigrator_createEntityMigrationStatements__block_invoke(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    v5 = a2[6];
    if (a3)
    {
LABEL_3:
      v6 = a3[6];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  if (v5 != v6)
  {
    if (a2)
    {
      v12 = a2[6];
      if (v12 <= 3)
      {
        v13 = qword_18592E938[v12];
        if (!a3)
        {
          goto LABEL_41;
        }

LABEL_23:
        v18 = a3[6];
        if (v18 > 3)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = qword_18592E938[v18];
        }

LABEL_26:
        if (v13 < v19)
        {
          return -1;
        }

        if (v13 > v19)
        {
          return 1;
        }

        if (a2)
        {
          v20 = a2[6];
          if (a3)
          {
LABEL_32:
            v21 = a3[6];
            goto LABEL_33;
          }
        }

        else
        {
          v20 = 0;
          if (a3)
          {
            goto LABEL_32;
          }
        }

        v21 = 0;
LABEL_33:
        if (v20 > v21)
        {
          return 1;
        }

        else
        {
          return -1;
        }
      }

      v13 = 0x7FFFFFFFFFFFFFFFLL;
      if (a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 3;
      if (a3)
      {
        goto LABEL_23;
      }
    }

LABEL_41:
    v19 = 3;
    goto LABEL_26;
  }

  v7 = [a2 rootEntity];
  if (v7)
  {
    v8 = *(v7 + 184);
  }

  else
  {
    v8 = 0;
  }

  v9 = [a3 rootEntity];
  if (v9)
  {
    v10 = *(v9 + 184);
  }

  else
  {
    v10 = 0;
  }

  if (v8 == v10)
  {
    return 0;
  }

  v14 = [a2 rootEntity];
  if (v14)
  {
    v15 = *(v14 + 184);
  }

  else
  {
    v15 = 0;
  }

  v16 = [a3 rootEntity];
  if (v16)
  {
    v17 = *(v16 + 184);
  }

  else
  {
    v17 = 0;
  }

  if (v15 < v17)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __57___NSSQLiteStoreMigrator_createEntityMigrationStatements__block_invoke_438(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(a2 objectAtIndexedSubscript:{0), "compare:", objc_msgSend(a2, "objectAtIndexedSubscript:", 1)}];
  if (v5 == 1)
  {
    v15 = [a2 objectAtIndexedSubscript:0];
    v16 = [a3 objectAtIndexedSubscript:0];
    v17 = *MEMORY[0x1E69E9840];
    v9 = v16;
    v10 = v15;
    goto LABEL_11;
  }

  if (!v5)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit metadata migration generated a source / destination id mapping for identical ids: %@\n", &v18, 0xCu);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v18 = 138412290;
      v19 = a2;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: CloudKit metadata migration generated a source / destination id mapping for identical ids: %@", &v18, 0xCu);
    }

    goto LABEL_9;
  }

  if (v5 != -1)
  {
LABEL_9:
    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v6 = [a3 objectAtIndexedSubscript:0];
  v7 = [a2 objectAtIndexedSubscript:0];
  v8 = *MEMORY[0x1E69E9840];
  v9 = v7;
  v10 = v6;
LABEL_11:

  return [v10 compare:v9];
}

void __83___NSSQLiteStoreMigrator__indexMigrationBlockForSourceEntity_andDestinationEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = [a2 count];
  if (v6 | [a3 count])
  {
    obj = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a2];
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
    v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v7];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = a1;
    v9 = [*(*(a1 + 32) + 40) entityMappings];
    v10 = [v9 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v59;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v58 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          if ([objc_msgSend(v14 "destinationEntityName")] && objc_msgSend(v14, "mappingType") == 5)
          {
            [obj addObjectsFromArray:a2];
            [v37 addObjectsFromArray:{objc_msgSend(obj, "allObjects")}];
            [v37 minusSet:v7];
            [v8 minusSet:obj];
            objc_autoreleasePoolPop(v15);
            goto LABEL_35;
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v40 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v40)
    {
      v39 = *v55;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v54 + 1) + 8 * j);
          context = objc_autoreleasePoolPush();
          v18 = [v7 containsObject:v17];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v19 = [v7 countByEnumeratingWithState:&v50 objects:v66 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v51;
            do
            {
              for (k = 0; k != v20; ++k)
              {
                if (*v51 != v21)
                {
                  objc_enumerationMutation(v7);
                }

                v23 = *(*(&v50 + 1) + 8 * k);
                if (![v17 _compare:v23])
                {
                  v24 = [(NSFetchIndexDescription *)v17 _isUnique];
                  if (v24 == [(NSFetchIndexDescription *)v23 _isUnique])
                  {
                    if ((v18 & 1) == 0 || ([objc_msgSend(v17 "name")] & 1) == 0)
                    {
                      [v8 removeObject:v23];
                    }

                    v18 = 1;
                  }
                }
              }

              v20 = [v7 countByEnumeratingWithState:&v50 objects:v66 count:16];
            }

            while (v20);
          }

          if ((v18 & 1) == 0)
          {
            [v37 addObject:v17];
          }

          objc_autoreleasePoolPop(context);
        }

        v40 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v40);
    }

LABEL_35:
    v65 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1];
    v25 = [v8 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v65, 1)}];
    v64 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1];
    v26 = [v37 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v64, 1)}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = [v25 countByEnumeratingWithState:&v46 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(v36 + 32) + 160) addObject:{-[NSSQLEntity indexForIndexDescription:](*(v36 + 40), *(*(&v46 + 1) + 8 * m))}];
        }

        v28 = [v25 countByEnumeratingWithState:&v46 objects:v63 count:16];
      }

      while (v28);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = [v26 countByEnumeratingWithState:&v42 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v43;
      do
      {
        for (n = 0; n != v32; ++n)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(v36 + 32) + 168) addObject:{-[NSSQLEntity indexForIndexDescription:](*(v36 + 48), *(*(&v42 + 1) + 8 * n))}];
        }

        v32 = [v26 countByEnumeratingWithState:&v42 objects:v62 count:16];
      }

      while (v32);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __89___NSSQLiteStoreMigrator__determineIndexesToMigrateForSourceEntity_andDestinationEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __89___NSSQLiteStoreMigrator__determineIndexesToMigrateForSourceEntity_andDestinationEntity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __103___NSSQLiteStoreMigrator__determineUniquenessConstraintsToMigrateForSourceEntity_andDestinationEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __103___NSSQLiteStoreMigrator__determineUniquenessConstraintsToMigrateForSourceEntity_andDestinationEntity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

@end