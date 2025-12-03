@interface NSPersistentHistoryResult
+ (_NSPersistentHistoryChange)_changeFromResult:(uint64_t)result withTransaction:;
+ (_NSPersistentHistoryTransaction)_transactionFromResult:(void *)result withChanges:;
+ (id)_processResult:(id)result forRequest:(id)request withProvider:(id)provider;
- (NSPersistentHistoryResult)initWithResultType:(int64_t)type andResult:(id)result;
- (NSPersistentHistoryResult)initWithSubresults:(id)subresults;
- (id)description;
- (void)dealloc;
@end

@implementation NSPersistentHistoryResult

- (void)dealloc
{
  self->_aggregatedResult = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentHistoryResult;
  [(NSPersistentHistoryResult *)&v3 dealloc];
}

- (NSPersistentHistoryResult)initWithResultType:(int64_t)type andResult:(id)result
{
  v9.receiver = self;
  v9.super_class = NSPersistentHistoryResult;
  v6 = [(NSPersistentHistoryResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_resultType = type;
    v6->_aggregatedResult = result;
  }

  return v7;
}

- (NSPersistentHistoryResult)initWithSubresults:(id)subresults
{
  v93 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = NSPersistentHistoryResult;
  v4 = [(NSPersistentHistoryResult *)&v75 init];
  if (!v4)
  {
    goto LABEL_60;
  }

  if ([subresults count])
  {
    resultType = [objc_msgSend(subresults "lastObject")];
    v4->_resultType = resultType;
  }

  else
  {
    resultType = v4->_resultType;
  }

  if (resultType > 2)
  {
    if (resultType > 4)
    {
      if (resultType != 5)
      {
        if (resultType != 6)
        {
          goto LABEL_60;
        }

        goto LABEL_13;
      }

      goto LABEL_23;
    }

    if (resultType == 3)
    {
LABEL_23:
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v14 = [subresults countByEnumeratingWithState:&v58 objects:v79 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v59;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v59 != v16)
            {
              objc_enumerationMutation(subresults);
            }

            v18 = *(*(&v58 + 1) + 8 * i);
            v19 = v4->_resultType;
            if (v19 != [v18 resultType])
            {
              v51 = MEMORY[0x1E695DF30];
              v52 = *MEMORY[0x1E695D930];
              v77 = @"Results";
              subresultsCopy = subresults;
              v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy forKeys:&v77 count:1];
              v54 = @"Mismatched result types during aggregation of history results";
              goto LABEL_69;
            }

            [v13 addObjectsFromArray:{objc_msgSend(v18, "result")}];
          }

          v15 = [subresults countByEnumeratingWithState:&v58 objects:v79 count:16];
        }

        while (v15);
      }

      v20 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"timestamp" ascending:1];
      v76 = v20;
      v4->_aggregatedResult = [v13 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v76, 1)}];

      goto LABEL_60;
    }

    v47 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v48 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v50 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v48)
      {
        if (!v50)
        {
          goto LABEL_73;
        }

        *buf = 0;
      }

      else
      {
        if (!v50)
        {
          goto LABEL_73;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: History Change Request failed NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores\n", buf, 2u);
    }

LABEL_73:
    _NSCoreDataLog_console(1, "History Change Request failed NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores");
    objc_autoreleasePoolPop(v47);
    v55 = *MEMORY[0x1E695D930];
    v80 = @"Results";
    subresultsCopy2 = subresults;
    v56 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v55, 134091, @"NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores", [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy2 forKeys:&v80 count:1]);
    objc_exception_throw(v56);
  }

  if (resultType)
  {
    if (resultType == 1)
    {
      v57 = [MEMORY[0x1E695DFA8] set];
      v28 = [MEMORY[0x1E695DFA8] set];
      v29 = [MEMORY[0x1E695DFA8] set];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v30 = [subresults countByEnumeratingWithState:&v63 objects:v86 count:16];
      if (!v30)
      {
        goto LABEL_54;
      }

      v31 = v30;
      v32 = *v64;
      while (1)
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v64 != v32)
          {
            objc_enumerationMutation(subresults);
          }

          v34 = *(*(&v63 + 1) + 8 * j);
          v35 = v4->_resultType;
          if (v35 != [v34 resultType])
          {
            v51 = MEMORY[0x1E695DF30];
            v52 = *MEMORY[0x1E695D930];
            v84 = @"Results";
            subresultsCopy3 = subresults;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy3 forKeys:&v84 count:1];
            v54 = @"Mismatched result types during aggregation of history object IDs results";
LABEL_69:
            objc_exception_throw([v51 exceptionWithName:v52 reason:v54 userInfo:v53]);
          }

          result = [v34 result];
          if (result)
          {
            v37 = result;
            [v57 unionSet:{objc_msgSend(result, "objectForKey:", @"inserted_objectIDs"}];
            [v28 unionSet:{objc_msgSend(v37, "objectForKey:", @"updated_objectIDs"}];
            [v29 unionSet:{objc_msgSend(v37, "objectForKey:", @"deleted_objectIDs"}];
          }
        }

        v31 = [subresults countByEnumeratingWithState:&v63 objects:v86 count:16];
        if (!v31)
        {
LABEL_54:
          [v57 minusSet:v29];
          [v28 minusSet:v29];
          [v28 minusSet:v57];
          v38 = [v57 copy];
          v39 = [v28 copy];
          v40 = [v29 copy];
          v41 = objc_alloc(MEMORY[0x1E695DF20]);
          v83[0] = v38;
          v83[1] = v39;
          v83[2] = v40;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
          v82[0] = @"inserted_objectIDs";
          v82[1] = @"updated_objectIDs";
          v82[2] = @"deleted_objectIDs";
          v43 = [v41 initWithObjects:v42 forKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v82, 3)}];

          v4->_aggregatedResult = v43;
          goto LABEL_60;
        }
      }
    }

    if (resultType == 2)
    {
LABEL_13:
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v6 = [subresults countByEnumeratingWithState:&v67 objects:v89 count:16];
      if (!v6)
      {
        v8 = 0;
        goto LABEL_56;
      }

      v7 = v6;
      v8 = 0;
      v9 = *v68;
      while (1)
      {
        for (k = 0; k != v7; ++k)
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(subresults);
          }

          v11 = *(*(&v67 + 1) + 8 * k);
          v12 = v4->_resultType;
          if (v12 != [v11 resultType])
          {
            v51 = MEMORY[0x1E695DF30];
            v52 = *MEMORY[0x1E695D930];
            v87 = @"Results";
            subresultsCopy4 = subresults;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy4 forKeys:&v87 count:1];
            v54 = @"Mismatched result types during aggregation of history count results";
            goto LABEL_69;
          }

          v8 += [objc_msgSend(v11 "result")];
        }

        v7 = [subresults countByEnumeratingWithState:&v67 objects:v89 count:16];
        if (!v7)
        {
LABEL_56:
          v44 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v8];
          goto LABEL_59;
        }
      }
    }
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v21 = [subresults countByEnumeratingWithState:&v71 objects:v92 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v72;
      LOBYTE(v24) = 1;
      do
      {
        for (m = 0; m != v22; ++m)
        {
          if (*v72 != v23)
          {
            objc_enumerationMutation(subresults);
          }

          v26 = *(*(&v71 + 1) + 8 * m);
          v27 = v4->_resultType;
          if (v27 != [v26 resultType])
          {
            v51 = MEMORY[0x1E695DF30];
            v52 = *MEMORY[0x1E695D930];
            v90 = @"Results";
            subresultsCopy5 = subresults;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy5 forKeys:&v90 count:1];
            v54 = @"Mismatched result types during aggregation of history status results";
            goto LABEL_69;
          }

          if (v24)
          {
            v24 = [objc_msgSend(v26 "result")];
          }

          else
          {
            v24 = 0;
          }
        }

        v22 = [subresults countByEnumeratingWithState:&v71 objects:v92 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = 1;
    }

    v44 = [MEMORY[0x1E696AD98] numberWithBool:v24];
LABEL_59:
    v4->_aggregatedResult = v44;
  }

LABEL_60:
  v45 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"%s <%p> with @property result: %@", class_getName(v5), self, self->_aggregatedResult];
  objc_autoreleasePoolPop(v3);

  return v6;
}

+ (_NSPersistentHistoryTransaction)_transactionFromResult:(void *)result withChanges:
{
  objc_opt_self();
  v5 = -[_NSPersistentHistoryTransaction initWithDictionary:andObjectID:]([_NSPersistentHistoryTransaction alloc], "initWithDictionary:andObjectID:", a2, [a2 objectForKey:@"self"]);
  [(_NSPersistentHistoryTransaction *)v5 _setChanges:result];
  return v5;
}

+ (_NSPersistentHistoryChange)_changeFromResult:(uint64_t)result withTransaction:
{
  objc_opt_self();
  v5 = -[_NSPersistentHistoryChange initWithDictionary:andChangeObjectID:]([_NSPersistentHistoryChange alloc], "initWithDictionary:andChangeObjectID:", a2, [a2 objectForKey:@"self"]);
  [(_NSPersistentHistoryChange *)v5 _setTransaction:result];
  return v5;
}

+ (id)_processResult:(id)result forRequest:(id)request withProvider:(id)provider
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if ([request resultType] == 2 || objc_msgSend(request, "resultType") == 6 || !objc_msgSend(request, "resultType"))
  {
    firstObject = [result firstObject];
LABEL_29:
    result = firstObject;
    goto LABEL_30;
  }

  if ([request resultType] != 1)
  {
    if (![result isNSArray])
    {
      result = 0;
      goto LABEL_30;
    }

    if ([request fetchBatchSize])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [result description];
        goto LABEL_30;
      }

      firstObject = [[_PFBatchHistoryFaultingArray alloc] initWithPFBatchFaultingArray:result];
      goto LABEL_29;
    }

    v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([request resultType] == 5 && objc_msgSend(result, "count") == 2)
    {
      v37 = [result objectAtIndexedSubscript:0];
      v38 = [result objectAtIndexedSubscript:1];
      v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v37, "count")}];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obja = v37;
      v68 = [v37 countByEnumeratingWithState:&v73 objects:v82 count:16];
      if (v68)
      {
        v64 = v36;
        requestCopy = request;
        v40 = 0;
        v67 = *v74;
        do
        {
          for (i = 0; i != v68; ++i)
          {
            v42 = v40;
            if (*v74 != v67)
            {
              objc_enumerationMutation(obja);
            }

            v43 = *(*(&v73 + 1) + 8 * i);
            v44 = objc_autoreleasePoolPush();
            array = [MEMORY[0x1E695DF70] array];
            v46 = [NSPersistentHistoryResult _transactionFromResult:v43 withChanges:array];
            transactionNumber = [(_NSPersistentHistoryTransaction *)v46 transactionNumber];
            if ([v38 count] > v40)
            {
              v40 = v40;
              while (1)
              {
                v48 = [v38 objectAtIndexedSubscript:v40];
                if ([objc_msgSend(v48 objectForKey:{@"TRANSACTIONID", "_referenceData64"}] != transactionNumber)
                {
                  break;
                }

                v49 = [NSPersistentHistoryResult _changeFromResult:v48 withTransaction:v46];
                [array addObject:v49];

                v40 = (v42 + 1);
                v42 = v40;
                if ([v38 count] <= v40)
                {
                  goto LABEL_49;
                }
              }
            }

            v40 = v42;
LABEL_49:
            [v39 addObject:v46];

            objc_autoreleasePoolPop(v44);
          }

          v68 = [obja countByEnumeratingWithState:&v73 objects:v82 count:16];
        }

        while (v68);
        request = requestCopy;
        v36 = v64;
      }

LABEL_65:

      result = v39;
      goto LABEL_30;
    }

    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(result, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = [result countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (!v50)
    {
      goto LABEL_65;
    }

    v51 = v50;
    v52 = *v70;
LABEL_55:
    v53 = 0;
    while (1)
    {
      if (*v70 != v52)
      {
        objc_enumerationMutation(result);
      }

      v54 = *(*(&v69 + 1) + 8 * v53);
      if ([request resultType] == 3)
      {
        break;
      }

      if ([request resultType] == 4)
      {
        v55 = [NSPersistentHistoryResult _changeFromResult:v54 withTransaction:0];
        goto LABEL_62;
      }

LABEL_63:
      if (v51 == ++v53)
      {
        v51 = [result countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (!v51)
        {
          goto LABEL_65;
        }

        goto LABEL_55;
      }
    }

    v55 = [NSPersistentHistoryResult _transactionFromResult:v54 withChanges:0];
LABEL_62:
    v56 = v55;
    [v39 addObject:v55];

    goto LABEL_63;
  }

  requestCopy2 = request;
  v59 = v8;
  obj = [MEMORY[0x1E695DFA8] set];
  v63 = [MEMORY[0x1E695DFA8] set];
  v62 = [MEMORY[0x1E695DFA8] set];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v9 = [result countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = *v78;
  v12 = @"ENTITY";
  providerCopy = provider;
  do
  {
    v13 = 0;
    do
    {
      if (*v78 != v11)
      {
        objc_enumerationMutation(result);
      }

      v14 = *(*(&v77 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [provider newObjectIDForEntity:objc_msgSend(objc_msgSend(provider pk:{"model"), "entityForID:", objc_msgSend(objc_msgSend(v14, "objectForKey:", v12), "intValue")), objc_msgSend(objc_msgSend(v14, "objectForKey:", @"ENTITYPK", "intValue")}];
      v17 = [objc_msgSend(v14 objectForKey:{@"CHANGETYPE", "unsignedIntegerValue"}];
      if (v17 == 2)
      {
        v19 = v62;
        goto LABEL_16;
      }

      v18 = v17;
      if (v17 == 1)
      {
        v19 = v63;
        goto LABEL_16;
      }

      if (!v17)
      {
        v19 = obj;
LABEL_16:
        [v19 addObject:v16];
        goto LABEL_23;
      }

      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v21 = v20;
        v22 = v10;
        v23 = v12;
        v24 = v11;
        resultCopy = result;
        v26 = _pflogging_catastrophic_mode;
        log = _PFLogGetLogStream(1);
        v27 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          result = resultCopy;
          v11 = v24;
          v12 = v23;
          v10 = v22;
          v20 = v21;
          provider = providerCopy;
          if (v27)
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = resultCopy;
          v11 = v24;
          v12 = v23;
          v10 = v22;
          v20 = v21;
          provider = providerCopy;
          if (v27)
          {
LABEL_25:
            *buf = 134217984;
            v86 = v18;
            _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: error: unexpected type of change : %lu\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "error: unexpected type of change : %lu", v18);
      objc_autoreleasePoolPop(v20);
LABEL_23:

      objc_autoreleasePoolPop(v15);
      ++v13;
    }

    while (v10 != v13);
    v28 = [result countByEnumeratingWithState:&v77 objects:v87 count:16];
    v10 = v28;
  }

  while (v28);
LABEL_27:
  [obj minusSet:v62];
  [v63 minusSet:v62];
  [v63 minusSet:obj];
  v29 = [obj copy];
  v30 = [v63 copy];
  v31 = [v62 copy];
  v83[0] = @"inserted_objectIDs";
  v83[1] = @"updated_objectIDs";
  v84[0] = v29;
  v84[1] = v30;
  v83[2] = @"deleted_objectIDs";
  v84[2] = v31;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:3];

  request = requestCopy2;
  v8 = v59;
LABEL_30:
  v33 = -[NSPersistentHistoryResult initWithResultType:andResult:]([NSPersistentHistoryResult alloc], "initWithResultType:andResult:", [request resultType], result);
  objc_autoreleasePoolPop(v8);
  result = v33;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

@end