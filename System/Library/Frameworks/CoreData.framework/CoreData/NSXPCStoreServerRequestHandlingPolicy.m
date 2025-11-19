@interface NSXPCStoreServerRequestHandlingPolicy
+ (void)initialize;
- (id)_coreProcessFetchRequest:(void *)a3 fromClientWithContext:(void *)a4 error:;
- (id)prefetchRelationships:(void *)a3 forFetch:(void *)a4 sourceOIDs:(void *)a5 fromClientWithContext:;
- (id)processFaultForObjectWithID:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5;
- (id)processFaultForRelationshipWithName:(id)a3 onObjectWithID:(id)a4 fromClientWithContext:(id)a5 error:(id *)a6;
- (id)processRequest:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5;
- (id)restrictingPullChangeHistoryPredicateForEntity:(id)a3 fromClientWithContext:(id)a4;
- (void)processObtainRequest:(void *)a3 inContext:(void *)a4 error:;
@end

@implementation NSXPCStoreServerRequestHandlingPolicy

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == a1)
  {
    _MergedGlobals_64 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    qword_1ED4BE8B0 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }
}

- (id)restrictingPullChangeHistoryPredicateForEntity:(id)a3 fromClientWithContext:(id)a4
{
  result = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:a3 fromClientWithContext:a4];
  if (result)
  {
    if (qword_1ED4BE8B0 != result && _MergedGlobals_64 != result)
    {
      return _MergedGlobals_64;
    }
  }

  return result;
}

- (id)_coreProcessFetchRequest:(void *)a3 fromClientWithContext:(void *)a4 error:
{
  v81 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x3052000000;
    v67 = __Block_byref_object_copy__1;
    v68 = __Block_byref_object_dispose__1;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3052000000;
    v61 = __Block_byref_object_copy__1;
    v62 = __Block_byref_object_dispose__1;
    v63 = 0;
    v48 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v7 = [a3 managedObjectContext];
    [a2 _resolveEntityWithContext:v7];
    if ([a2 resultType])
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v9 = [objc_msgSend(a2 "propertiesToFetch")] != 0;
      v21 = [a2 relationshipKeyPathsForPrefetching];
      if (v21)
      {
        v8 = [_PFRoutines _coalescedPrefetchKeypaths:v21];
        if (![v8 count])
        {
          v8 = 0;
        }

        if (+[NSXPCStoreServer debugDefault])
        {
          v22 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v8;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Coalesced prefetch keypaths to : %@\n", &buf, 0xCu);
              }
            }

            else
            {
              v46 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v8;
                _os_log_impl(&dword_18565F000, v46, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Coalesced prefetch keypaths to : %@\n", &buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v47 = 1;
          }

          else
          {
            v47 = 8;
          }

          _NSCoreDataLog_console(v47, "Coalesced prefetch keypaths to : %@", v8);
          objc_autoreleasePoolPop(v22);
        }
      }

      else
      {
        v8 = 0;
      }
    }

    [a2 setRelationshipKeyPathsForPrefetching:0];
    v10 = [a2 includesPropertyValues];
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0 && [v8 count])
    {
      [a2 setIncludesPropertyValues:1];
    }

    v12 = [v7 persistentStoreCoordinator];
    v13 = v12;
    if (a3)
    {
      v14 = a3[4];
    }

    else
    {
      v14 = 0;
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke;
    v53[3] = &unk_1E6EC1628;
    v53[4] = a2;
    v53[5] = v14;
    v53[8] = &v64;
    v53[9] = &v58;
    v53[10] = &v54;
    v53[6] = v7;
    v53[7] = a1;
    [v12 performBlockAndWait:v53];
    v15 = v65[5];
    v16 = v59[5];
    v17 = v65[5];
    v18 = v17 != 0;
    if (v17)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v77 = 0x3052000000;
      v78 = __Block_byref_object_copy__1;
      v79 = __Block_byref_object_dispose__1;
      v80 = 0;
      if (v8)
      {
        if (!v9)
        {
          [a2 setResultType:1];
        }

        v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        *v70 = 0;
        v71 = v70;
        v72 = 0x3052000000;
        v73 = __Block_byref_object_copy__1;
        v74 = __Block_byref_object_dispose__1;
        v75 = 0;
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke_8;
        v51[3] = &unk_1E6EC1650;
        v52 = v9;
        v51[6] = v70;
        v51[7] = &v64;
        v51[4] = a2;
        v51[5] = v14;
        v51[8] = &buf;
        [v13 performBlockAndWait:v51];
        v20 = [(NSXPCStoreServerRequestHandlingPolicy *)a1 prefetchRelationships:v8 forFetch:a2 sourceOIDs:*(v71 + 5) fromClientWithContext:a3];

        [v19 drain];
        _Block_object_dispose(v70, 8);
      }

      else
      {
        v20 = 0;
      }

      if ((v55[3] & 1) == 0)
      {
        v26 = v65[5];
        [a2 resultType];
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v26, v20, 0}];
        v65[5] = v27;
      }

      if (*(*(&buf + 1) + 40))
      {
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke_2;
        v50[3] = &unk_1E6EC1330;
        v50[4] = v14;
        v50[5] = &buf;
        [v13 performBlockAndWait:v50];
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v28 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v29 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v65[5] count];
              *v70 = 67109120;
              *&v70[4] = v30;
              _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request got %d results.\n", v70, 8u);
            }
          }

          else
          {
            v31 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v65[5] count];
              *v70 = 67109120;
              *&v70[4] = v32;
              _os_log_impl(&dword_18565F000, v31, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request got %d results.\n", v70, 8u);
            }
          }
        }

        v33 = v65[5];
        if (_pflogging_catastrophic_mode)
        {
          v34 = [v33 count];
          v35 = 1;
        }

        else
        {
          v34 = [v33 count];
          v35 = 8;
        }

        _NSCoreDataLog_console(v35, "Process fetch request got %d results.", v34);
        objc_autoreleasePoolPop(v28);
      }

      _Block_object_dispose(&buf, 8);
    }

    else if (+[NSXPCStoreServer debugDefault])
    {
      v24 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v25 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request got nil result (check system log for details).\n", &buf, 2u);
          }
        }

        else
        {
          v36 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_18565F000, v36, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request got nil result (check system log for details).\n", &buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v37 = 1;
      }

      else
      {
        v37 = 8;
      }

      _NSCoreDataLog_console(v37, "Process fetch request got nil result (check system log for details).");
      objc_autoreleasePoolPop(v24);
    }

    _Block_object_dispose(&v54, 8);
    v38 = v65[5];
    v39 = v59[5];
    if (a4)
    {
      v40 = v59[5];
      if (v40)
      {
        *a4 = v40;
      }
    }

    [v48 drain];
    v41 = 0;
    v42 = v59[5];
    if (v18)
    {
      v43 = v65[5];
    }

    else
    {
      v43 = 0;
    }

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v43 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

id __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) resultType] == 4)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v2 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [*(a1 + 48) executeFetchRequest:*(a1 + 32) error:*(*(a1 + 72) + 8) + 40]);
    v3 = *(a1 + 56);
    [*(a1 + 32) resultType];
    if (v3)
    {
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v2, 0, 0}];
    }

    else
    {
      v4 = 0;
    }

    *(*(*(a1 + 64) + 8) + 40) = v4;
    v5 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = [(NSSQLCore *)*(a1 + 40) _newRowDataForXPCFetch:0 variables:*(a1 + 48) context:(*(*(a1 + 72) + 8) + 40) error:?];
    v6 = *(*(*(a1 + 64) + 8) + 40);
  }

  return *(*(*(a1 + 72) + 8) + 40);
}

void __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke_8(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [_NSXPCStoreUtilities _decodeResultSetData:*(a1 + 32) forFetchRequest:0 options:*(a1 + 40) store:0 context:(*(*(a1 + 64) + 8) + 40) rowCacheRows:0 error:?];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(_PFArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "valueAtIndex:", 0)}];
        }

        v5 = [(_PFArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    *(*(*(a1 + 48) + 8) + 40) = v2;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [_NSXPCStoreUtilities _decodeResultSetData:*(a1 + 32) forFetchRequest:0 options:*(a1 + 40) store:0 context:(*(*(a1 + 64) + 8) + 40) rowCacheRows:0 error:?];
    v9 = *(a1 + 40);
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v11 = *MEMORY[0x1E69E9840];

    [(NSSQLCore *)v9 _cacheRows:v10];
  }
}

- (id)prefetchRelationships:(void *)a3 forFetch:(void *)a4 sourceOIDs:(void *)a5 fromClientWithContext:
{
  v267[1] = *MEMORY[0x1E69E9840];
  if (+[NSXPCStoreServer debugDefault])
  {
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = a3;
          *&buf[22] = 2112;
          v247 = a4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching keypaths %@, for fetch %@, sources %@\n", buf, 0x20u);
        }
      }

      else
      {
        v9 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = a3;
          *&buf[22] = 2112;
          v247 = a4;
          _os_log_impl(&dword_18565F000, v9, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetching keypaths %@, for fetch %@, sources %@\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    _NSCoreDataLog_console(v10, "Prefetching keypaths %@, for fetch %@, sources %@", a2, a3, a4);
    objc_autoreleasePoolPop(v7);
  }

  result = [a4 count];
  if (result)
  {
    result = [a2 count];
    if (result)
    {
      v156 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v148 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v163 = [a3 entity];
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v150 = [a2 countByEnumeratingWithState:&v187 objects:v237 count:16];
      if (!v150)
      {
        goto LABEL_227;
      }

      v149 = *v188;
      while (1)
      {
        for (i = 0; i != v150; ++i)
        {
          if (*v188 != v149)
          {
            objc_enumerationMutation(a2);
          }

          v172 = *(*(&v187 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v12 = [a2 objectForKey:v172];
          if ([v12 count])
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v155 = v13;
          if (+[NSXPCStoreServer debugDefault])
          {
            v14 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v15 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = v172;
                  *&buf[12] = 2112;
                  *&buf[14] = v155;
                  _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching %@, subkeypaths = %@\n", buf, 0x16u);
                }
              }

              else
              {
                v16 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v172;
                  *&buf[12] = 2112;
                  *&buf[14] = v155;
                  _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetching %@, subkeypaths = %@\n", buf, 0x16u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v17 = 1;
            }

            else
            {
              v17 = 8;
            }

            _NSCoreDataLog_console(v17, "Prefetching %@, subkeypaths = %@", v172, v155);
            objc_autoreleasePoolPop(v14);
          }

          v168 = [MEMORY[0x1E695DF90] dictionary];
          if (v163 && [objc_msgSend(v163 "propertiesByName")])
          {
            [v168 setObject:a4 forKey:{objc_msgSend(v163, "name")}];
          }

          else
          {
            if (![objc_msgSend(v163 "subentitiesByName")])
            {
              goto LABEL_225;
            }

            v133 = [objc_msgSend(v163 "subentities")];
            v165 = [MEMORY[0x1E695DF70] array];
            while ([v133 count])
            {
              v134 = [v133 objectAtIndex:0];
              [v133 removeObjectAtIndex:0];
              if ([objc_msgSend(v134 "relationshipsByName")])
              {
                [v165 addObject:v134];
              }

              else if ([objc_msgSend(v134 "subentitiesByName")])
              {
                [v133 addObjectsFromArray:{objc_msgSend(v134, "subentities")}];
              }
            }

            if ([v165 count])
            {
              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v171 = [v165 countByEnumeratingWithState:&v183 objects:v236 count:16];
              if (v171)
              {
                v135 = 0;
                v167 = *v184;
                do
                {
                  v136 = 0;
                  do
                  {
                    if (*v184 != v167)
                    {
                      v137 = v136;
                      objc_enumerationMutation(v165);
                      v136 = v137;
                    }

                    v174 = v136;
                    v138 = *(*(&v183 + 1) + 8 * v136);
                    v139 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v181 = 0u;
                    v182 = 0u;
                    v179 = 0u;
                    v180 = 0u;
                    v140 = [a4 countByEnumeratingWithState:&v179 objects:v235 count:16];
                    if (v140)
                    {
                      v141 = *v180;
                      do
                      {
                        for (j = 0; j != v140; ++j)
                        {
                          if (*v180 != v141)
                          {
                            objc_enumerationMutation(a4);
                          }

                          v143 = *(*(&v179 + 1) + 8 * j);
                          v144 = [v143 entity];
                          v145 = v144;
                          v146 = v144 == v138 || v144 == v135;
                          if (v146 || [v144 isKindOfEntity:v138])
                          {
                            [v139 addObject:v143];
                            if (v145 != v138)
                            {
                              v135 = v145;
                            }
                          }
                        }

                        v140 = [a4 countByEnumeratingWithState:&v179 objects:v235 count:16];
                      }

                      while (v140);
                    }

                    if ([v139 count])
                    {
                      [v168 setObject:v139 forKey:{objc_msgSend(v138, "name")}];
                    }

                    v136 = v174 + 1;
                  }

                  while (v174 + 1 != v171);
                  v171 = [v165 countByEnumeratingWithState:&v183 objects:v236 count:16];
                }

                while (v171);
              }
            }
          }

          if ([v168 count])
          {
            v177 = 0u;
            v178 = 0u;
            v175 = 0u;
            v176 = 0u;
            v166 = [v168 countByEnumeratingWithState:&v175 objects:v234 count:16];
            if (v166)
            {
              v162 = *v176;
              do
              {
                v18 = 0;
                do
                {
                  if (*v176 != v162)
                  {
                    objc_enumerationMutation(v168);
                  }

                  v19 = *(*(&v175 + 1) + 8 * v18);
                  v20 = objc_autoreleasePoolPush();
                  v173 = [objc_msgSend(objc_msgSend(v163 "managedObjectModel")];
                  if (v173)
                  {
                    v21 = [v168 objectForKey:v19];
                    v170 = [a5 managedObjectContext];
                    v159 = [v170 persistentStoreCoordinator];
                    if (a5 && (v22 = a5[4]) != 0)
                    {
                      v157 = v22[6];
                      v158 = a5[4];
                      v23 = _sqlCoreLookupSQLEntityForEntityDescription(v22, v173);
                      v24 = v23;
                      if (v23)
                      {
                        v25 = [*(v23 + 40) objectForKey:v172];
                        v164 = 0;
LABEL_49:
                        v26 = [(NSEntityDescription *)v173 _relationshipNamed:v172];
                        if (!v25 || !v26 || ![v21 count])
                        {
                          v31 = MEMORY[0x1E695DEC8];
                          v32 = [v173 name];
                          v33 = [v31 arrayWithObjects:{v172, v32, NSArray_EmptyArray, 0}];
                          goto LABEL_178;
                        }

                        v27 = *(v25 + 56);
                        v228 = 0;
                        v229 = &v228;
                        v230 = 0x3052000000;
                        v231 = __Block_byref_object_copy__1;
                        v232 = __Block_byref_object_dispose__1;
                        v233 = 0;
                        v222 = 0;
                        v223 = &v222;
                        v224 = 0x3052000000;
                        v225 = __Block_byref_object_copy__1;
                        v226 = __Block_byref_object_dispose__1;
                        v227 = 0;
                        v216 = 0;
                        v217 = &v216;
                        v218 = 0x3052000000;
                        v219 = __Block_byref_object_copy__1;
                        v220 = __Block_byref_object_dispose__1;
                        v221 = NSArray_EmptyArray;
                        v210 = 0;
                        v211 = &v210;
                        v212 = 0x3052000000;
                        v213 = __Block_byref_object_copy__1;
                        v214 = __Block_byref_object_dispose__1;
                        v215 = 0;
                        v160 = v20;
                        v161 = v18;
                        if (v27 && v27[24] == 7)
                        {
                          if (+[NSXPCStoreServer debugDefault])
                          {
                            v28 = objc_autoreleasePoolPush();
                            _pflogInitialize(8);
                            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                            {
                              if (_pflogging_catastrophic_mode)
                              {
                                v29 = _PFLogGetLogStream(1);
                                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                                {
                                  v30 = [v27 name];
                                  *v262 = 138412290;
                                  *&v262[4] = v30;
                                  _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching inverse to-one relationship %@.\n", v262, 0xCu);
                                }
                              }

                              else
                              {
                                v63 = _PFLogGetLogStream(8);
                                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                                {
                                  v64 = [v27 name];
                                  *v262 = 138412290;
                                  *&v262[4] = v64;
                                  _os_log_impl(&dword_18565F000, v63, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetching inverse to-one relationship %@.\n", v262, 0xCu);
                                }
                              }
                            }

                            if (_pflogging_catastrophic_mode)
                            {
                              v65 = [v27 name];
                              v66 = 1;
                            }

                            else
                            {
                              v65 = [v27 name];
                              v66 = 8;
                            }

                            _NSCoreDataLog_console(v66, "Prefetching inverse to-one relationship %@.", v65);
                            objc_autoreleasePoolPop(v28);
                          }

                          v67 = [a5 inverseIsToOnePrefetchRequestForRelationshipNamed:v172 onEntity:v173];
                          v229[5] = v67;
                          v266 = @"destinations";
                          v267[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v21];
                          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v267 forKeys:&v266 count:1];
LABEL_98:
                          v223[5] = v68;

                          v211[5] = 0;
                          *v262 = 0;
                          *&v262[8] = v262;
                          *&v262[16] = 0x3052000000;
                          v263 = __Block_byref_object_copy__1;
                          v264 = __Block_byref_object_dispose__1;
                          v265 = 0;
                          v203 = 0;
                          v204 = &v203;
                          v205 = 0x3052000000;
                          v206 = __Block_byref_object_copy__1;
                          v207 = __Block_byref_object_dispose__1;
                          v208 = 0;
                          v197 = 0;
                          v198 = &v197;
                          v199 = 0x3052000000;
                          v200 = __Block_byref_object_copy__1;
                          v201 = __Block_byref_object_dispose__1;
                          v202 = 0;
                          v193 = 0;
                          v194 = &v193;
                          v195 = 0x2020000000;
                          v196 = 0;
                          v69 = v229[5];
                          if (!v69)
                          {
                            goto LABEL_101;
                          }

                          v70 = [a1 restrictingReadPredicateForEntity:objc_msgSend(v69 fromClientWithContext:{"entity"), a5}];
                          if (_MergedGlobals_64 != v70)
                          {
                            v229[5] = 0;
                            goto LABEL_101;
                          }

                          if (v229[5])
                          {
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 3221225472;
                            *&buf[16] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_59;
                            v247 = &unk_1E6EC16C8;
                            v254 = &v228;
                            v255 = v262;
                            v248 = v158;
                            v249 = v170;
                            v256 = &v222;
                            v257 = &v210;
                            v258 = &v203;
                            v259 = &v197;
                            v250 = v155;
                            v251 = v172;
                            v260 = &v216;
                            v261 = &v193;
                            v252 = v157;
                            v253 = v173;
                            [v159 performBlockAndWait:buf];
                            if (+[NSXPCStoreServer debugDefault])
                            {
                              v79 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v80 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                                  {
                                    v81 = [v173 name];
                                    v82 = [*(*&v262[8] + 40) length];
                                    *v238 = 138412802;
                                    v239 = v81;
                                    v240 = 2112;
                                    v241 = v172;
                                    v242 = 2048;
                                    v243 = v82;
                                    _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched for source entity %@, key '%@'.  Got data with length %lu.\n", v238, 0x20u);
                                  }
                                }

                                else
                                {
                                  v126 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v127 = [v173 name];
                                    v128 = [*(*&v262[8] + 40) length];
                                    *v238 = 138412802;
                                    v239 = v127;
                                    v240 = 2112;
                                    v241 = v172;
                                    v242 = 2048;
                                    v243 = v128;
                                    _os_log_impl(&dword_18565F000, v126, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched for source entity %@, key '%@'.  Got data with length %lu.\n", v238, 0x20u);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                v129 = [v173 name];
                                v130 = [*(*&v262[8] + 40) length];
                                v131 = 1;
                              }

                              else
                              {
                                v129 = [v173 name];
                                v130 = [*(*&v262[8] + 40) length];
                                v131 = 8;
                              }

                              _NSCoreDataLog_console(v131, "Prefetched for source entity %@, key '%@'.  Got data with length %lu.", v129, v172, v130);
                              objc_autoreleasePoolPop(v79);
                            }

                            v71 = *&v262[8];
                            if (*(v194 + 24) == 1)
                            {

                              *(*&v262[8] + 40) = 0;
                              v77 = MEMORY[0x1E695DEC8];
                              v78 = [v173 name];
                              goto LABEL_113;
                            }
                          }

                          else
                          {
LABEL_101:
                            v71 = *&v262[8];
                          }

                          if (*(v71 + 40))
                          {
                            if (v155)
                            {
                              if (+[NSXPCStoreServer debugDefault])
                              {
                                v72 = objc_autoreleasePoolPush();
                                _pflogInitialize(8);
                                if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                                {
                                  if (_pflogging_catastrophic_mode)
                                  {
                                    v73 = _PFLogGetLogStream(1);
                                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                                    {
                                      v74 = v229[5];
                                      v75 = v211[5];
                                      v76 = v204[5];
                                      *v238 = 138413058;
                                      v239 = v155;
                                      v240 = 2112;
                                      v241 = v74;
                                      v242 = 2112;
                                      v243 = v75;
                                      v244 = 2112;
                                      v245 = v76;
                                      _os_log_error_impl(&dword_18565F000, v73, OS_LOG_TYPE_ERROR, "CoreData: error: Recursively prefetching subkeys %@ of fetch %@ using OIDs %@ for objects %@\n", v238, 0x2Au);
                                    }
                                  }

                                  else
                                  {
                                    v84 = _PFLogGetLogStream(8);
                                    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v85 = v229[5];
                                      v86 = v211[5];
                                      v87 = v204[5];
                                      *v238 = 138413058;
                                      v239 = v155;
                                      v240 = 2112;
                                      v241 = v85;
                                      v242 = 2112;
                                      v243 = v86;
                                      v244 = 2112;
                                      v245 = v87;
                                      _os_log_impl(&dword_18565F000, v84, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Recursively prefetching subkeys %@ of fetch %@ using OIDs %@ for objects %@\n", v238, 0x2Au);
                                    }
                                  }
                                }

                                if (_pflogging_catastrophic_mode)
                                {
                                  v88 = 1;
                                }

                                else
                                {
                                  v88 = 8;
                                }

                                _NSCoreDataLog_console(v88, "Recursively prefetching subkeys %@ of fetch %@ using OIDs %@ for objects %@", v155, v229[5], v211[5], v204[5]);
                                objc_autoreleasePoolPop(v72);
                              }

                              v89 = [_PFRoutines newArrayOfObjectIDsFromCollection:?];
                              v83 = [(NSXPCStoreServerRequestHandlingPolicy *)a1 prefetchRelationships:v155 forFetch:v229[5] sourceOIDs:v89 fromClientWithContext:a5];
                            }

                            else
                            {
                              v83 = 0;
                            }

                            if (+[NSXPCStoreServer debugDefault])
                            {
                              v90 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v91 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                                  {
                                    v92 = [v173 name];
                                    *v238 = 138412546;
                                    v239 = v92;
                                    v240 = 2112;
                                    v241 = v172;
                                    _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error: Done prefetching for %@, %@\n", v238, 0x16u);
                                  }
                                }

                                else
                                {
                                  v93 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v94 = [v173 name];
                                    *v238 = 138412546;
                                    v239 = v94;
                                    v240 = 2112;
                                    v241 = v172;
                                    _os_log_impl(&dword_18565F000, v93, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Done prefetching for %@, %@\n", v238, 0x16u);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                v95 = [v173 name];
                                v96 = 1;
                              }

                              else
                              {
                                v95 = [v173 name];
                                v96 = 8;
                              }

                              _NSCoreDataLog_console(v96, "Done prefetching for %@, %@", v95, v172);
                              objc_autoreleasePoolPop(v90);
                            }

                            v97 = MEMORY[0x1E695DEC8];
                            v98 = [v173 name];
                            v99 = v217[5];
                            v33 = [v97 arrayWithObjects:{v172, v98, v99, *(*&v262[8] + 40), v83, 0}];

                            if (v198[5])
                            {
                              v191[0] = MEMORY[0x1E69E9820];
                              v191[1] = 3221225472;
                              v191[2] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_69;
                              v191[3] = &unk_1E6EC1330;
                              v191[4] = v158;
                              v191[5] = &v197;
                              [v159 performBlockAndWait:v191];
                            }
                          }

                          else
                          {

                            if (v198[5])
                            {
                              v192[0] = MEMORY[0x1E69E9820];
                              v192[1] = 3221225472;
                              v192[2] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_65;
                              v192[3] = &unk_1E6EC1330;
                              v192[4] = v158;
                              v192[5] = &v197;
                              [v159 performBlockAndWait:v192];
                            }

                            v77 = MEMORY[0x1E695DEC8];
                            v78 = [v173 name];
LABEL_113:
                            v33 = [v77 arrayWithObjects:{v172, v78, NSArray_EmptyArray, 0}];
                          }

                          _Block_object_dispose(&v193, 8);
                          _Block_object_dispose(&v197, 8);
                          _Block_object_dispose(&v203, 8);
                          _Block_object_dispose(v262, 8);
LABEL_177:
                          _Block_object_dispose(&v210, 8);
                          _Block_object_dispose(&v216, 8);
                          _Block_object_dispose(&v222, 8);
                          _Block_object_dispose(&v228, 8);
LABEL_178:
                          [v156 addObject:v33];
                          goto LABEL_179;
                        }

                        v34 = *(v25 + 24);
                        if (v34 != 7)
                        {
                          if (v34 == 9)
                          {
                            v35 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:{objc_msgSend(*(v25 + 56), "name")}];
                            v36 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v35];

                            v37 = [v21 objectAtIndex:0];
                            v38 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v37];
                            v39 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v38 rightExpression:v36 modifier:0 type:10 options:0];

                            v40 = objc_alloc_init(NSFetchRequest);
                            -[NSFetchRequest setEntity:](v40, "setEntity:", [objc_msgSend(v25 "destinationEntity")]);
                            [(NSFetchRequest *)v40 setPredicate:v39];

                            v41 = v40;
                            v217[5] = 0;
                            v209[0] = MEMORY[0x1E69E9820];
                            v209[1] = 3221225472;
                            v209[2] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke;
                            v209[3] = &unk_1E6EC16A0;
                            v209[4] = v158;
                            v209[5] = v40;
                            v209[7] = &v216;
                            v209[6] = v21;
                            [v159 performBlockAndWait:v209];
                            if (+[NSXPCStoreServer debugDefault])
                            {
                              v42 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v43 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                                  {
                                    v44 = [v25 name];
                                    v45 = [v217[5] count];
                                    *v262 = 138412546;
                                    *&v262[4] = v44;
                                    *&v262[12] = 2048;
                                    *&v262[14] = v45;
                                    _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched for many-to-many relationship %@.  Got %lu rows\n", v262, 0x16u);
                                  }
                                }

                                else
                                {
                                  v100 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v101 = [v25 name];
                                    v102 = [v217[5] count];
                                    *v262 = 138412546;
                                    *&v262[4] = v101;
                                    *&v262[12] = 2048;
                                    *&v262[14] = v102;
                                    _os_log_impl(&dword_18565F000, v100, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched for many-to-many relationship %@.  Got %lu rows\n", v262, 0x16u);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                v103 = [v25 name];
                                v104 = [v217[5] count];
                                v105 = 1;
                              }

                              else
                              {
                                v103 = [v25 name];
                                v104 = [v217[5] count];
                                v105 = 8;
                              }

                              _NSCoreDataLog_console(v105, "Prefetched for many-to-many relationship %@.  Got %lu rows", v103, v104);
                              objc_autoreleasePoolPop(v42);
                              v106 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v107 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                                  {
                                    v108 = v217[5];
                                    *v262 = 138412290;
                                    *&v262[4] = v108;
                                    _os_log_error_impl(&dword_18565F000, v107, OS_LOG_TYPE_ERROR, "CoreData: error: Which means oidSets %@\n", v262, 0xCu);
                                  }
                                }

                                else
                                {
                                  v109 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v110 = v217[5];
                                    *v262 = 138412290;
                                    *&v262[4] = v110;
                                    _os_log_impl(&dword_18565F000, v109, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which means oidSets %@\n", v262, 0xCu);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                v111 = 1;
                              }

                              else
                              {
                                v111 = 8;
                              }

                              _NSCoreDataLog_console(v111, "Which means oidSets %@", v217[5]);
                              objc_autoreleasePoolPop(v106);
                            }

                            v112 = [v217[5] count];
                            v113 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v112 + 256];
                            v211[5] = v113;
                            if (v112)
                            {
                              for (k = 0; k < v112; k += 2)
                              {
                                v115 = [v217[5] objectAtIndex:k + 1];
                                [v211[5] addObjectsFromArray:v115];
                              }

                              v113 = v211[5];
                            }

                            if ([v113 count])
                            {
                              v116 = [a5 manyToManyPrefetchRequestsForRelationshipNamed:v172 onEntity:v173];
                              v229[5] = v116;
                              v266 = @"mtmObjects";
                              v267[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v211[5]];
                              v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v267 forKeys:&v266 count:1];
                              goto LABEL_98;
                            }

                            goto LABEL_175;
                          }

                          v56 = MEMORY[0x1E695DEC8];
                          v57 = [v173 name];
                          v58 = [v56 arrayWithObjects:{v172, v57, NSArray_EmptyArray, 0}];
LABEL_176:
                          v33 = v58;
                          goto LABEL_177;
                        }

                        v46 = [v21 count];
                        v47 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v46];
                        v211[5] = v47;
                        if (!v46)
                        {
LABEL_85:
                          if (+[NSXPCStoreServer debugDefault])
                          {
                            v59 = objc_autoreleasePoolPush();
                            _pflogInitialize(8);
                            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                            {
                              if (_pflogging_catastrophic_mode)
                              {
                                v60 = _PFLogGetLogStream(1);
                                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                                {
                                  v61 = [v25 name];
                                  v62 = [v211[5] count];
                                  *v262 = 138412546;
                                  *&v262[4] = v61;
                                  *&v262[12] = 2048;
                                  *&v262[14] = v62;
                                  _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched for one-to-many relationship %@.  Got %lu rows\n", v262, 0x16u);
                                }
                              }

                              else
                              {
                                v117 = _PFLogGetLogStream(8);
                                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                                {
                                  v118 = [v25 name];
                                  v119 = [v211[5] count];
                                  *v262 = 138412546;
                                  *&v262[4] = v118;
                                  *&v262[12] = 2048;
                                  *&v262[14] = v119;
                                  _os_log_impl(&dword_18565F000, v117, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched for one-to-many relationship %@.  Got %lu rows\n", v262, 0x16u);
                                }
                              }
                            }

                            if (_pflogging_catastrophic_mode)
                            {
                              v120 = [v25 name];
                              v121 = [v211[5] count];
                              v122 = 1;
                            }

                            else
                            {
                              v120 = [v25 name];
                              v121 = [v211[5] count];
                              v122 = 8;
                            }

                            _NSCoreDataLog_console(v122, "Prefetched for one-to-many relationship %@.  Got %lu rows", v120, v121);
                            objc_autoreleasePoolPop(v59);
                          }

                          if ([v211[5] count])
                          {
                            v123 = [a5 manyToOnePrefetchRequestForRelationshipNamed:v172 onEntity:v173];
                            v229[5] = v123;
                            v266 = @"objects";
                            v267[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v211[5]];
                            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v267 forKeys:&v266 count:1];
                            goto LABEL_98;
                          }

LABEL_175:

                          v124 = MEMORY[0x1E695DEC8];
                          v125 = [v173 name];
                          v58 = [v124 arrayWithObjects:{v172, v125, NSArray_EmptyArray, 0}];
                          goto LABEL_176;
                        }

                        v48 = 0;
                        while (2)
                        {
                          v49 = objc_autoreleasePoolPush();
                          v50 = [v21 objectAtIndex:v48];
                          *v262 = 0;
                          v51 = [v170 objectRegisteredForID:v50];
                          if (v51)
                          {
                            v52 = [v25 slot];
                            if (v164)
                            {
                              v53 = 0;
                            }

                            else
                            {
                              v53 = *(v24 + 192);
                            }

                            v54 = [v51 entity];
                            v55 = v53 + v52;
                            if (v54 != v173)
                            {
                              v55 = [v54 _offsetRelationshipIndex:v53 + v52 fromSuperEntity:? andIsToMany:?];
                            }

                            if ((_PF_InternalToOneRelationshipForeignKeyCache(v51, v55, v262) & 1) == 0 || !*v262)
                            {
LABEL_81:
                              objc_autoreleasePoolPop(v49);
                              ++v48;
                              v20 = v160;
                              v18 = v161;
                              if (v46 == v48)
                              {
                                goto LABEL_85;
                              }

                              continue;
                            }
                          }

                          else
                          {
                            *v262 = [objc_msgSend(objc_msgSend(v170 existingObjectWithID:v50 error:{0), "primitiveValueForKey:", v172), "objectID"}];
                            if (!*v262)
                            {
                              goto LABEL_81;
                            }
                          }

                          break;
                        }

                        [v211[5] addObject:?];
                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      v24 = 0;
                      v157 = 0;
                      v158 = 0;
                    }

                    v25 = 0;
                    v164 = 1;
                    goto LABEL_49;
                  }

LABEL_179:
                  objc_autoreleasePoolPop(v20);
                  ++v18;
                }

                while (v18 != v166);
                v132 = [v168 countByEnumeratingWithState:&v175 objects:v234 count:16];
                v166 = v132;
              }

              while (v132);
            }
          }

LABEL_225:
          objc_autoreleasePoolPop(context);
        }

        v150 = [a2 countByEnumeratingWithState:&v187 objects:v237 count:16];
        if (!v150)
        {
LABEL_227:
          [v148 drain];
          result = v156;
          break;
        }
      }
    }
  }

  v147 = *MEMORY[0x1E69E9840];
  return result;
}

id __95__NSXPCStoreServerRequestHandlingPolicy__coreFaultForObjectWithID_fromClientWithContext_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) newValuesForObjectWithID:*(a1 + 40) withContext:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
  *(*(*(a1 + 72) + 8) + 40) = [*(*(*(a1 + 56) + 8) + 40) _snapshot];
  v2 = *(*(*(a1 + 64) + 8) + 40);

  return v2;
}

- (id)processFaultForObjectWithID:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5
{
  v41 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v10 = -[NSXPCStoreServerRequestHandlingPolicy restrictingReadPredicateForEntity:fromClientWithContext:](self, "restrictingReadPredicateForEntity:fromClientWithContext:", [a3 entity], a4);
  v11 = v10;
  if (v10)
  {
    if (qword_1ED4BE8B0 == v10)
    {
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1EF435A70, 0}];
    }

    else
    {
      if (_MergedGlobals_64 != v10)
      {
        v12 = objc_alloc_init(NSFetchRequest);
        -[NSFetchRequest setEntity:](v12, "setEntity:", [a3 entity]);
        v13 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v14 = [MEMORY[0x1E696ABC8] expressionForConstantValue:a3];
        v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v13 rightExpression:v14 modifier:0 type:4 options:0];
        -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v15, v11, 0)}]);
        v16 = [(NSXPCStoreServerRequestHandlingPolicy *)self _coreProcessFetchRequest:v12 fromClientWithContext:a4 error:&v41];
        v17 = 1;
        goto LABEL_30;
      }

      v19 = MEMORY[0x1E695DEC8];
      if (self)
      {
        v20 = [a4 managedObjectContext];
        v21 = [v20 persistentStoreCoordinator];
        if (a4)
        {
          v22 = *(a4 + 4);
        }

        else
        {
          v22 = 0;
        }

        v55 = 0;
        v56 = &v55;
        v57 = 0x3052000000;
        v58 = __Block_byref_object_copy__1;
        v59 = __Block_byref_object_dispose__1;
        v60 = 0;
        v49 = 0;
        v50 = &v49;
        v51 = 0x3052000000;
        v52 = __Block_byref_object_copy__1;
        v53 = __Block_byref_object_dispose__1;
        v54 = 0;
        v43 = 0;
        v44 = &v43;
        v45 = 0x3052000000;
        v46 = __Block_byref_object_copy__1;
        v47 = __Block_byref_object_dispose__1;
        v48 = 0;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __95__NSXPCStoreServerRequestHandlingPolicy__coreFaultForObjectWithID_fromClientWithContext_error___block_invoke;
        v42[3] = &unk_1E6EC1678;
        v42[4] = v22;
        v42[5] = a3;
        v42[6] = v20;
        v42[7] = &v55;
        v42[8] = &v43;
        v42[9] = &v49;
        [v21 performBlockAndWait:v42];
        v23 = v44[5];
        if (v56[5])
        {
          v24 = [MEMORY[0x1E695DF70] array];
          v25 = [objc_msgSend(a3 "entity")];
          v26 = v25;
          v27 = *(v25 + 56);
          if (v27)
          {
            v28 = *(v25 + 48);
            do
            {
              snapshot_get_value_as_object(v50[5], v28);
              v30 = v29;
              if (!v29)
              {
                v30 = [MEMORY[0x1E695DFB0] null];
              }

              [v24 addObject:v30];
              LODWORD(v28) = v28 + 1;
              --v27;
            }

            while (v27);
          }

          v31 = *(v26 + 104);
          if (v31)
          {
            v32 = *(v26 + 96);
            do
            {
              snapshot_get_value_as_object(v50[5], v32);
              v34 = v33;
              if (!v33)
              {
                v34 = [MEMORY[0x1E695DFB0] null];
              }

              [v24 addObject:v34];
              LODWORD(v32) = v32 + 1;
              --v31;
            }

            while (v31);
          }

          [v24 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(v50[5] + 12))}];
        }

        else
        {
          v24 = 0;
        }

        if (v44[5])
        {
          v41 = v44[5];
        }

        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v49, 8);
        _Block_object_dispose(&v55, 8);
      }

      else
      {
        v24 = 0;
      }

      v18 = [v19 arrayWithObjects:{&unk_1EF435A70, v24, 0}];
    }

    v16 = v18;
    v17 = 0;
    a4 = v18;
    goto LABEL_30;
  }

  v17 = 0;
  v16 = 0;
  a4 = 0;
  if (a5)
  {
    v41 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
  }

LABEL_30:
  v35 = v16;
  v36 = v41;
  if (a5 && v41)
  {
    *a5 = v41;
  }

  [v9 drain];
  v37 = v41;
  v38 = 0;
  v39 = v16;
  if (v17)
  {
    return [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1EF435A88, v16, 0}];
  }

  return a4;
}

- (id)processFaultForRelationshipWithName:(id)a3 onObjectWithID:(id)a4 fromClientWithContext:(id)a5 error:(id *)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v70 = 0;
  v69 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!self)
  {
    goto LABEL_59;
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v12 = [a4 entity];
  if (v12)
  {
    if (atomic_load((v12 + 124)))
    {
      v14 = *(v12 + 72);
    }

    else
    {
      do
      {
        v14 = v12;
        v12 = [v12 superentity];
      }

      while (v12);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v14 fromClientWithContext:a5];
  if (v15)
  {
    v16 = [objc_msgSend(a5 "managedObjectContext")];
    if (v16)
    {
      if ([v15 evaluateWithObject:v16])
      {
        v17 = 0;
        v18 = 1;
      }

      else
      {
        if (+[NSXPCStoreServer debugDefault])
        {
          v22 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Source object does not match restricting predicate, so returning an error\n", buf, 2u);
              }
            }

            else
            {
              v26 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v26, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Source object does not match restricting predicate, so returning an error\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v27 = 1;
          }

          else
          {
            v27 = 8;
          }

          _NSCoreDataLog_console(v27, "Source object does not match restricting predicate, so returning an error");
          objc_autoreleasePoolPop(v22);
        }

        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134093 userInfo:0];
        v18 = 0;
      }

      goto LABEL_38;
    }

    if (+[NSXPCStoreServer debugDefault])
    {
      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v21 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v74 = a4;
            _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Source object %@ does not exist for relationship fault.\n", buf, 0xCu);
          }
        }

        else
        {
          v24 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = a4;
            _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Source object %@ does not exist for relationship fault.\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v25 = 1;
      }

      else
      {
        v25 = 8;
      }

      _NSCoreDataLog_console(v25, "Source object %@ does not exist for relationship fault.", a4);
      objc_autoreleasePoolPop(v20);
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134093 userInfo:0];
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
  }

  v17 = v19;
  v18 = 0;
  v16 = 0;
LABEL_38:
  v28 = v17;
  v29 = v16;
  [v11 drain];
  if (v17)
  {
    v70 = v17;
  }

  v30 = v17;
  if (!v18)
  {
    goto LABEL_58;
  }

  v31 = v16;
  if (!v31)
  {
    goto LABEL_58;
  }

  v68 = [a5 managedObjectContext];
  v32 = -[NSEntityDescription _relationshipNamed:]([a4 entity], a3);
  v33 = v32;
  if (v32)
  {
    v34 = [v32 destinationEntity];
    v35 = v34;
    if (v34)
    {
      if (atomic_load((v34 + 124)))
      {
        v37 = *(v34 + 72);
      }

      else
      {
        do
        {
          v37 = v34;
          v34 = [v34 superentity];
        }

        while (v34);
      }
    }

    else
    {
      v37 = 0;
    }

    v41 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v37 fromClientWithContext:a5];
    if (v41)
    {
      if ([MEMORY[0x1E696AE18] predicateWithValue:1] == v41)
      {
        v56 = [v31 valueForKey:a3];
        if (v56)
        {
          v57 = [v56 valueForKey:@"objectID"];
          goto LABEL_89;
        }

        if ([v33 isToMany])
        {
LABEL_70:
          v57 = [MEMORY[0x1E695DEC8] array];
          goto LABEL_89;
        }
      }

      else
      {
        if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v41)
        {
          v42 = [v33 inverseRelationship];
          v43 = objc_alloc_init(NSFetchRequest);
          [(NSFetchRequest *)v43 setResultType:1];
          [(NSFetchRequest *)v43 setIncludesPropertyValues:0];
          if (v42)
          {
            v44 = [v42 isToMany];
            v45 = MEMORY[0x1E696AE18];
            if (v44)
            {
              v46 = [v42 name];
              v47 = @"%@ IN %K";
              v48 = a4;
              a4 = v46;
            }

            else
            {
              v48 = [v42 name];
              v47 = @"%K == %@";
            }

            v64 = [v45 predicateWithFormat:v47, v48, a4];
            v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v64, v41, 0}];
            v66 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v65];
            [(NSFetchRequest *)v43 setEntity:v35];
            [(NSFetchRequest *)v43 setPredicate:v66];
          }

          else
          {
            if (a5)
            {
              v58 = *(a5 + 4);
            }

            else
            {
              v58 = 0;
            }

            v59 = [v58 newValueForRelationship:v33 forObjectWithID:a4 withContext:v68 error:&v70];
            if (!v59 || [MEMORY[0x1E695DFB0] null] == v59)
            {
              v63 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v35 fromClientWithContext:a5];
            }

            else
            {
              if ([v33 isToMany])
              {
                v60 = @"self IN %@";
              }

              else
              {
                v60 = @"self == %@";
              }

              v61 = [MEMORY[0x1E696AE18] predicateWithFormat:v60, v59];
              v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v61, v41, 0}];
              v63 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v62];
            }

            v67 = v63;
            [(NSFetchRequest *)v43 setEntity:v35];
            [(NSFetchRequest *)v43 setPredicate:v67];
          }

          [(NSFetchRequest *)v43 setResultType:1];
          v49 = [v68 executeFetchRequest:v43 error:&v70];
          if ([v33 isToMany])
          {
            goto LABEL_90;
          }

          if ([v49 count])
          {
            v57 = [v49 lastObject];
          }

          else
          {
            v57 = [MEMORY[0x1E695DFB0] null];
          }

LABEL_89:
          v49 = v57;
LABEL_90:
          LODWORD(self) = 1;
          goto LABEL_60;
        }

        if ([v33 isToMany])
        {
          goto LABEL_70;
        }
      }

      v57 = [MEMORY[0x1E695DFB0] null];
      goto LABEL_89;
    }

    if (a6)
    {
      v40 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (!a6)
  {
LABEL_58:
    LODWORD(self) = 0;
LABEL_59:
    v49 = 0;
    goto LABEL_60;
  }

  v38 = MEMORY[0x1E696ABC0];
  v71[0] = @"relationship name";
  v71[1] = @"objectID";
  v72[0] = a3;
  v72[1] = a4;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v40 = [v38 errorWithDomain:*MEMORY[0x1E696A250] code:134094 userInfo:v39];
LABEL_57:
  LODWORD(self) = 0;
  v49 = 0;
  v70 = v40;
LABEL_60:
  v50 = v49;
  v51 = v70;
  [v69 drain];
  v52 = v70;
  if (a6 && v70)
  {
    *a6 = v70;
  }

  v53 = v52;
  if (self)
  {
    result = v49;
  }

  else
  {
    result = 0;
  }

  v55 = *MEMORY[0x1E69E9840];
  return result;
}

id __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke(uint64_t a1)
{
  result = [(NSSQLCore *)*(a1 + 32) newObjectIDSetsForToManyPrefetchingRequest:*(a1 + 48) andSourceObjectIDs:0 orderColumnName:?];
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

void __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_59(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (+[NSXPCStoreServer debugDefault])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v4 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412290;
          v44 = v4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoding prefetched rows for fetch %@\n", buf, 0xCu);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412290;
          v44 = v6;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoding prefetched rows for fetch %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 8;
    }

    _NSCoreDataLog_console(v7, "Decoding prefetched rows for fetch %@", *(*(*(a1 + 80) + 8) + 40));
    objc_autoreleasePoolPop(v2);
  }

  *(*(*(a1 + 88) + 8) + 40) = [(NSSQLCore *)*(a1 + 32) _newRowDataForXPCFetch:*(*(*(a1 + 96) + 8) + 40) variables:*(a1 + 40) context:0 error:?];
  if ([*(a1 + 48) count])
  {

    *(*(*(a1 + 104) + 8) + 40) = 0;
    *(*(*(a1 + 112) + 8) + 40) = [_NSXPCStoreUtilities _decodeResultSetData:*(*(*(a1 + 80) + 8) + 40) forFetchRequest:0 options:*(a1 + 32) store:*(a1 + 40) context:(*(*(a1 + 120) + 8) + 40) rowCacheRows:0 error:?];
    [(NSSQLCore *)*(a1 + 32) _cacheRows:?];
    if (*(*(*(a1 + 112) + 8) + 40))
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(*(*(a1 + 112) + 8) + 40)];
    }

    else
    {
      v8 = 0;
    }

    *(*(*(a1 + 104) + 8) + 40) = v8;
    if ([*(*(*(a1 + 104) + 8) + 40) count])
    {
      if (+[NSXPCStoreServer debugDefault])
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v10 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v11 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v12 = *(a1 + 56);
              v13 = *(*(*(a1 + 104) + 8) + 40);
              *buf = 138412802;
              v44 = v11;
              v45 = 2112;
              v46 = v12;
              v47 = 2112;
              v48 = v13;
              _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched %@/%@ and got %@\n", buf, 0x20u);
            }
          }

          else
          {
            v18 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v20 = *(a1 + 56);
              v21 = *(*(*(a1 + 104) + 8) + 40);
              *buf = 138412802;
              v44 = v19;
              v45 = 2112;
              v46 = v20;
              v47 = 2112;
              v48 = v21;
              _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched %@/%@ and got %@\n", buf, 0x20u);
            }
          }
        }

        v22 = *(*(*(a1 + 80) + 8) + 40);
        if (_pflogging_catastrophic_mode)
        {
          v23 = [v22 entity];
          v24 = 1;
        }

        else
        {
          v23 = [v22 entity];
          v24 = 8;
        }

        v25 = *(a1 + 56);
        _NSCoreDataLog_console(v24, "Prefetched %@/%@ and got %@", v23, v25, *(*(*(a1 + 104) + 8) + 40));
        objc_autoreleasePoolPop(v9);
      }

      if (*(*(*(a1 + 120) + 8) + 40))
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v26 = *(*(*(a1 + 112) + 8) + 40);
        v27 = [v26 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v27)
        {
          v28 = 0;
          v29 = *v39;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v39 != v29)
              {
                objc_enumerationMutation(v26);
              }

              _PFFaultHandlerFulfillFault(*(a1 + 64), *(*(&v38 + 1) + 8 * i), *(a1 + 40), [*(*(*(a1 + 120) + 8) + 40) objectAtIndex:v28++], 0);
            }

            v27 = [v26 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v27);
        }
      }
    }

    else
    {
      if (+[NSXPCStoreServer debugDefault])
      {
        v14 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v15 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v17 = *(a1 + 56);
              *buf = 138412546;
              v44 = v16;
              v45 = 2112;
              v46 = v17;
              _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched %@/%@ and got no results, stopping now\n", buf, 0x16u);
            }
          }

          else
          {
            v31 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v33 = *(a1 + 56);
              *buf = 138412546;
              v44 = v32;
              v45 = 2112;
              v46 = v33;
              _os_log_impl(&dword_18565F000, v31, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched %@/%@ and got no results, stopping now\n", buf, 0x16u);
            }
          }
        }

        v34 = *(*(*(a1 + 80) + 8) + 40);
        if (_pflogging_catastrophic_mode)
        {
          v35 = [v34 entity];
          v36 = 1;
        }

        else
        {
          v35 = [v34 entity];
          v36 = 8;
        }

        _NSCoreDataLog_console(v36, "Prefetched %@/%@ and got no results, stopping now", v35, *(a1 + 56));
        objc_autoreleasePoolPop(v14);
      }

      [(NSSQLCore *)*(a1 + 32) _uncacheRows:?];
      *(*(*(a1 + 136) + 8) + 24) = 1;
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (id)processRequest:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5
{
  v142 = *MEMORY[0x1E69E9840];
  v8 = [a3 requestType];
  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 != 7)
      {
        if (v8 == 8)
        {
          if (self)
          {
            *buf = 0;
            v17 = objc_autoreleasePoolPush();
            v18 = [objc_msgSend(a4 "managedObjectContext")];
            v19 = v18;
            v20 = *buf;
            objc_autoreleasePoolPop(v17);
            v21 = *buf;
            if (a5 && *buf)
            {
              *a5 = *buf;
            }

            v22 = v21;
            v126 = v18;
            goto LABEL_196;
          }

          goto LABEL_175;
        }

        goto LABEL_40;
      }

      if (!self)
      {
        goto LABEL_175;
      }

      *buf = 0;
      v54 = objc_autoreleasePoolPush();
      v55 = [a3 fetchRequest];
      v56 = [a4 managedObjectContext];
      [v55 _resolveEntityWithContext:v56];
      v57 = [v55 entity];
      if (v57)
      {
        if (atomic_load((v57 + 124)))
        {
          v59 = *(v57 + 72);
        }

        else
        {
          do
          {
            v59 = v57;
            v57 = [v57 superentity];
          }

          while (v57);
        }
      }

      else
      {
        v59 = 0;
      }

      v60 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v59 fromClientWithContext:a4];
      if (v60)
      {
        if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v60)
        {
          v15 = [v56 executeRequest:a3 error:buf];
          v61 = *buf;
LABEL_154:
          v99 = v61;
          v100 = v15;
          objc_autoreleasePoolPop(v54);
          v96 = *buf;
          if (a5 && *buf)
          {
            *a5 = *buf;
          }

          goto LABEL_157;
        }

        if (a5)
        {
          v71 = MEMORY[0x1E696ABC0];
          v72 = *MEMORY[0x1E696A250];
          v73 = 134030;
          goto LABEL_142;
        }
      }

      else if (a5)
      {
        v71 = MEMORY[0x1E696ABC0];
        v72 = *MEMORY[0x1E696A250];
        v73 = 134092;
LABEL_142:
        v61 = [v71 errorWithDomain:v72 code:v73 userInfo:0];
        v15 = 0;
        *buf = v61;
        goto LABEL_154;
      }

      v61 = 0;
      v15 = 0;
      goto LABEL_154;
    }

    if (!self)
    {
      goto LABEL_175;
    }

    *buf = 0;
    v30 = objc_autoreleasePoolPush();
    v31 = [a4 managedObjectContext];
    [a3 _resolveEntityWithContext:v31];
    v32 = [a3 entity];
    if (v32)
    {
      if (atomic_load((v32 + 124)))
      {
        v34 = *(v32 + 72);
      }

      else
      {
        do
        {
          v34 = v32;
          v32 = [v32 superentity];
        }

        while (v32);
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v34 fromClientWithContext:a4];
    if (v35)
    {
      if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v35)
      {
        v15 = [v31 executeRequest:a3 error:buf];
        v36 = *buf;
LABEL_144:
        v94 = v36;
        v95 = v15;
        objc_autoreleasePoolPop(v30);
        v96 = *buf;
        if (a5 && *buf)
        {
          *a5 = *buf;
        }

        goto LABEL_157;
      }

      if (a5)
      {
        v65 = MEMORY[0x1E696ABC0];
        v66 = *MEMORY[0x1E696A250];
        v67 = 134030;
        goto LABEL_136;
      }
    }

    else if (a5)
    {
      v65 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A250];
      v67 = 134092;
LABEL_136:
      v36 = [v65 errorWithDomain:v66 code:v67 userInfo:0];
      v15 = 0;
      *buf = v36;
      goto LABEL_144;
    }

    v36 = 0;
    v15 = 0;
    goto LABEL_144;
  }

  if (v8 == 1)
  {
    if (self)
    {
      v23 = [objc_msgSend(a4 "persistentStoreCoordinator")];
      v24 = [a3 entityName];
      if (v23)
      {
        v25 = [*(v23 + 32) objectForKey:v24];
      }

      else
      {
        v25 = 0;
      }

      v26 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v25 fromClientWithContext:a4];
      if (v26)
      {
        v27 = v26;
        if ([qword_1ED4BE8B0 isEqual:v26])
        {
          if (+[NSXPCStoreServer debugDefault])
          {
            v28 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request returning no results (predicate is false)\n", buf, 2u);
                }
              }

              else
              {
                v108 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18565F000, v108, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request returning no results (predicate is false)\n", buf, 2u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v109 = 1;
            }

            else
            {
              v109 = 8;
            }

            _NSCoreDataLog_console(v109, "Process fetch request returning no results (predicate is false)");
            objc_autoreleasePoolPop(v28);
          }

          v126 = [MEMORY[0x1E695DEC8] array];
          goto LABEL_196;
        }

        if (([_MergedGlobals_64 isEqual:v27] & 1) == 0)
        {
          v91 = [a3 predicate];
          if (v91)
          {
            v92 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v91, v27, 0)}];
            v93 = a3;
          }

          else
          {
            v93 = a3;
            v92 = v27;
          }

          [v93 setPredicate:v92];
        }

        v102 = *MEMORY[0x1E69E9840];

        return [(NSXPCStoreServerRequestHandlingPolicy *)self _coreProcessFetchRequest:a3 fromClientWithContext:a4 error:a5];
      }

      if (a5)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v63 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v64 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request aborting (predicate is nil)\n", buf, 2u);
            }
          }

          else
          {
            v106 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v106, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request aborting (predicate is nil)\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v107 = 1;
        }

        else
        {
          v107 = 8;
        }

        _NSCoreDataLog_console(v107, "Process fetch request aborting (predicate is nil)");
        objc_autoreleasePoolPop(v63);
      }
    }

    goto LABEL_175;
  }

  if (v8 != 2)
  {
    if (v8 == 5)
    {
      if (self)
      {
        *buf = 0;
        v9 = objc_autoreleasePoolPush();
        v10 = [a4 managedObjectContext];
        [a3 _resolveEntityWithContext:v10];
        v11 = [a3 entity];
        if (v11)
        {
          if (atomic_load((v11 + 124)))
          {
            v13 = *(v11 + 72);
          }

          else
          {
            do
            {
              v13 = v11;
              v11 = [v11 superentity];
            }

            while (v11);
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v13 fromClientWithContext:a4];
        if (v14)
        {
          if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v14)
          {
            v15 = [v10 executeRequest:a3 error:buf];
            v16 = *buf;
            goto LABEL_149;
          }

          if (a5)
          {
            v68 = MEMORY[0x1E696ABC0];
            v69 = *MEMORY[0x1E696A250];
            v70 = 134030;
            goto LABEL_139;
          }
        }

        else if (a5)
        {
          v68 = MEMORY[0x1E696ABC0];
          v69 = *MEMORY[0x1E696A250];
          v70 = 134092;
LABEL_139:
          v16 = [v68 errorWithDomain:v69 code:v70 userInfo:0];
          v15 = 0;
          *buf = v16;
          goto LABEL_149;
        }

        v16 = 0;
        v15 = 0;
LABEL_149:
        v97 = v16;
        v98 = v15;
        objc_autoreleasePoolPop(v9);
        v96 = *buf;
        if (a5)
        {
          if (*buf)
          {
            *a5 = *buf;
          }
        }

LABEL_157:
        v101 = v96;
        v126 = v15;
        goto LABEL_196;
      }

LABEL_175:
      v126 = 0;
      goto LABEL_196;
    }

LABEL_40:
    if (a5)
    {
      v37 = [a3 description];
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = @"Request description was nil.";
      }

      v126 = 0;
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v38, @"Request"}];
      goto LABEL_196;
    }

    goto LABEL_175;
  }

  if (!self)
  {
    goto LABEL_175;
  }

  v139 = 0;
  v119 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v129 = [MEMORY[0x1E695DF90] dictionary];
  v118 = [a4 managedObjectContext];
  v127 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v39 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "insertedObjects"), "allObjects")}];
  [v39 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "updatedObjects"), "allObjects")}];
  [v39 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "lockedObjects"), "allObjects")}];
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v39;
  v40 = [v39 countByEnumeratingWithState:&v135 objects:buf count:16];
  if (v40)
  {
    v123 = 0;
    v41 = *v136;
    v121 = *MEMORY[0x1E696A250];
    do
    {
      v42 = 0;
      do
      {
        if (*v136 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v135 + 1) + 8 * v42);
        v44 = objc_autoreleasePoolPush();
        v45 = [v43 objectID];
        v46 = [v45 entity];
        if (v46)
        {
          if (atomic_load((v46 + 124)))
          {
            v48 = *(v46 + 72);
          }

          else
          {
            do
            {
              v48 = v46;
              v46 = [v46 superentity];
            }

            while (v46);
          }
        }

        else
        {
          v48 = 0;
        }

        v49 = [v48 name];
        v50 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v48 fromClientWithContext:a4];
        v51 = v50;
        if (v50)
        {
          if (([v50 evaluateWithObject:v43] & 1) == 0)
          {
            if (![v127 count])
            {
              [v127 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), @"NSAffectedObjectsErrorKey"}];
            }

            [objc_msgSend(v127 objectForKey:{@"NSAffectedObjectsErrorKey", "addObject:", v43}];
          }

          v52 = [v129 objectForKey:v49];
          if (!v52)
          {
            v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v129 setObject:v52 forKey:v49];
          }

          [v52 addObject:v45];
        }

        else
        {
          if (a5)
          {
            v139 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v121 code:134092 userInfo:0];
          }

          v123 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
          v126 = v123;
        }

        objc_autoreleasePoolPop(v44);
        if (!v51)
        {
          v62 = obj;
          goto LABEL_192;
        }

        ++v42;
      }

      while (v42 != v40);
      v53 = [obj countByEnumeratingWithState:&v135 objects:buf count:16];
      v40 = v53;
    }

    while (v53);
  }

  else
  {
    v123 = 0;
  }

  v74 = objc_alloc_init(NSFetchRequest);
  v75 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  [(NSManagedObjectContext *)v75 setUndoManager:0];
  -[NSManagedObjectContext setPersistentStoreCoordinator:](v75, "setPersistentStoreCoordinator:", [v118 persistentStoreCoordinator]);
  obja = [objc_msgSend(v118 "persistentStoreCoordinator")];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v76 = [v129 countByEnumeratingWithState:&v131 objects:v140 count:16];
  if (!v76)
  {
    goto LABEL_126;
  }

  v122 = *v132;
  v120 = *MEMORY[0x1E696A250];
  while (2)
  {
    for (i = 0; i != v76; ++i)
    {
      if (*v132 != v122)
      {
        objc_enumerationMutation(v129);
      }

      v78 = *(*(&v131 + 1) + 8 * i);
      v79 = objc_autoreleasePoolPush();
      v80 = [objc_msgSend(obja "entitiesByName")];
      [(NSFetchRequest *)v74 setEntity:v80];
      v81 = [v129 objectForKey:v78];
      v82 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v80 fromClientWithContext:a4];
      if (v82)
      {
        if ([objc_msgSend(MEMORY[0x1E696AE18] predicateWithValue:{0), "isEqual:", v82}])
        {
          if (![v127 count])
          {
            [v127 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), @"NSAffectedObjectsErrorKey"}];
          }

          [objc_msgSend(v127 objectForKey:{@"NSAffectedObjectsErrorKey", "addObjectsFromArray:", v81}];
        }

        else if ([objc_msgSend(MEMORY[0x1E696AE18] predicateWithValue:{1), "isEqual:", v82}])
        {
          goto LABEL_118;
        }

        if ([v81 count])
        {
          v85 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v81];
        }

        else
        {
          v85 = [MEMORY[0x1E696AE18] predicateWithValue:0];
        }

        v86 = v85;
        v87 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v82];
        -[NSFetchRequest setPredicate:](v74, "setPredicate:", [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v87, v86, 0)}]);
        v88 = [(NSManagedObjectContext *)v75 executeFetchRequest:v74 error:&v139];
        if (v88)
        {
          if ([(NSArray *)v88 count])
          {
            if (![v127 count])
            {
              [v127 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), @"NSAffectedObjectsErrorKey"}];
            }

            [objc_msgSend(v127 objectForKey:{@"NSAffectedObjectsErrorKey", "addObjectsFromArray:", v81}];
          }

LABEL_118:
          v84 = 1;
          goto LABEL_123;
        }

        if (a5)
        {
          v139 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v120 code:134030 userInfo:0];
        }

        v83 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
        v84 = 0;
        v123 = v83;
      }

      else
      {
        if (a5)
        {
          v139 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v120 code:134092 userInfo:0];
        }

        v83 = [MEMORY[0x1E696AD98] numberWithBool:0];
        v84 = 0;
      }

      v126 = v83;
LABEL_123:
      objc_autoreleasePoolPop(v79);
      if (!v84)
      {
        v62 = 0;
        goto LABEL_192;
      }
    }

    v76 = [v129 countByEnumeratingWithState:&v131 objects:v140 count:16];
    if (v76)
    {
      continue;
    }

    break;
  }

LABEL_126:
  if ([v127 count])
  {
    if (a5)
    {
      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
      v139 = [v89 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v127];
    }

    v90 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
LABEL_191:
    v62 = 0;
    v126 = v90;
    v123 = v90;
  }

  else
  {
    if (+[NSXPCStoreServer debugDefault])
    {
      v104 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v105 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            *v130 = 0;
            _os_log_error_impl(&dword_18565F000, v105, OS_LOG_TYPE_ERROR, "CoreData: error: Saving.\n", v130, 2u);
          }
        }

        else
        {
          v110 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            *v130 = 0;
            _os_log_impl(&dword_18565F000, v110, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Saving.\n", v130, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v111 = 1;
      }

      else
      {
        v111 = 8;
      }

      _NSCoreDataLog_console(v111, "Saving.");
      objc_autoreleasePoolPop(v104);
      NSLog(@"\tInserted = %@", [v118 insertedObjects]);
      NSLog(@"\tUpdated = %@", [v118 updatedObjects]);
      NSLog(@"\tDeleted = %@", [v118 deletedObjects]);
    }

    v112 = [v118 save:&v139];
    v113 = v139;
    if (v112)
    {
      v90 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
      goto LABEL_191;
    }

    v62 = 0;
    v126 = v123;
  }

LABEL_192:

  [v119 drain];
  v114 = v123;
  v115 = v139;
  if (a5 && v139)
  {
    *a5 = v139;
  }

  v116 = v115;
LABEL_196:
  v117 = *MEMORY[0x1E69E9840];
  return v126;
}

- (void)processObtainRequest:(void *)a3 inContext:(void *)a4 error:
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v41 = [MEMORY[0x1E695DF90] dictionary];
    context = objc_autoreleasePoolPush();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = a2;
    v40 = [a2 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v40)
    {
      v5 = 0;
      v38 = *v45;
      v37 = *MEMORY[0x1E696A250];
      while (1)
      {
        v6 = 0;
        do
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v44 + 1) + 8 * v6);
          v8 = [obj objectForKey:v7];
          v52 = 0;
          v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v10 = [a3 managedObjectContext];
          v11 = [objc_msgSend(v10 "persistentStoreCoordinator")];
          if (!v11)
          {
            v13 = 0;
LABEL_37:
            v15 = 0;
            goto LABEL_12;
          }

          v12 = [*(v11 + 32) objectForKey:v7];
          v13 = v12;
          if (!v12)
          {
            goto LABEL_37;
          }

          if (atomic_load((v12 + 124)))
          {
            v15 = *(v12 + 72);
          }

          else
          {
            do
            {
              v15 = v12;
              v12 = [v12 superentity];
            }

            while (v12);
          }

LABEL_12:
          v16 = [a1 restrictingWritePredicateForEntity:v15 fromClientWithContext:a3];
          if (!v16)
          {
            v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v37 code:134092 userInfo:0];
LABEL_27:
            v26 = 0;
            v24 = 0;
            v52 = v25;
            goto LABEL_30;
          }

          if ([MEMORY[0x1E696AE18] predicateWithValue:0] == v16)
          {
            v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v37 code:134030 userInfo:0];
            goto LABEL_27;
          }

          v17 = [v8 unsignedIntegerValue];
          for (i = objc_alloc_init(MEMORY[0x1E695DF70]); v17; --v17)
          {
            v19 = [[NSManagedObject alloc] initWithEntity:v13 insertIntoManagedObjectContext:v10];
            [i addObject:v19];
          }

          if ([v10 obtainPermanentIDsForObjects:i error:&v52])
          {
            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v21 = [i countByEnumeratingWithState:&v48 objects:v54 count:16];
            if (v21)
            {
              v22 = *v49;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(i);
                  }

                  [v20 addObject:{objc_msgSend(*(*(&v48 + 1) + 8 * j), "objectID")}];
                }

                v21 = [i countByEnumeratingWithState:&v48 objects:v54 count:16];
              }

              while (v21);
            }

            v24 = v20;
          }

          else
          {
            v24 = 0;
          }

          v26 = 1;
LABEL_30:
          v27 = v52;
          [v9 drain];
          if (v52)
          {
            v5 = v52;
          }

          v28 = v52;
          if ((v26 & 1) == 0 || (v29 = v24) == 0)
          {
            v41 = 0;
            goto LABEL_42;
          }

          [v41 setValue:v29 forKey:v7];
          ++v6;
        }

        while (v6 != v40);
        v30 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        v40 = v30;
        if (!v30)
        {
          goto LABEL_42;
        }
      }
    }

    v5 = 0;
LABEL_42:
    v31 = v5;
    objc_autoreleasePoolPop(context);
    v32 = v5;
    if (a4 && v5)
    {
      *a4 = v5;
    }
  }

  else
  {
    v41 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v41;
}

@end