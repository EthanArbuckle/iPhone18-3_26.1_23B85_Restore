@interface NSFaultHandler
+ (void)initialize;
- (id)fulfillFault:(id)fault withContext:(id)context forIndex:(unint64_t)index;
- (id)fulfillFault:(uint64_t)fault withContext:;
- (id)fulfillFault:(uint64_t)fault withContext:(id *)context error:;
- (id)initWithPersistenceStore:(id)result;
- (id)retainedFulfillAggregateFaultForObject:(void *)object andRelationship:(uint64_t)relationship withContext:;
- (uint64_t)retainedOrderedFaultInformationForAggregateFaultForObject:(void *)object andRelationship:(uint64_t)relationship withContext:(id *)context error:;
- (void)_fireFirstAndSecondLevelFaultsForObject:(uint64_t)object withContext:(void *)context;
- (void)turnObject:(uint64_t)object intoFaultWithContext:;
@end

@implementation NSFaultHandler

+ (void)initialize
{
  if (!_CD_ScalarNull)
  {
    objc_opt_self();
    _NSKeyValueIvarSetterClass = NSClassFromString(@"NSKeyValueIvarSetter");
    _NSKeyValueMethodSetterClass = NSClassFromString(@"NSKeyValueMethodSetter");
    _NSKeyValueIvarGetterClass = NSClassFromString(@"NSKeyValueIvarGetter");
    _NSKeyValueMethodGetterClass = NSClassFromString(@"NSKeyValueMethodGetter");
    valuePtr = 0;
    _CD_ScalarNull = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!_insertion_fault_handler)
    {
      v2 = [NSFaultHandler alloc];
      if (v2)
      {
        v4.receiver = v2;
        v4.super_class = NSFaultHandler;
        v2 = objc_msgSendSuper2(&v4, sel_init);
      }

      _insertion_fault_handler = v2;
    }
  }
}

- (id)initWithPersistenceStore:(id)result
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = NSFaultHandler;
    return objc_msgSendSuper2(&v1, sel_init);
  }

  return result;
}

- (id)fulfillFault:(uint64_t)fault withContext:(id *)context error:
{
  if (result)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(fault, sel_fulfillFault_withContext_error_);
    }

    return _PFFaultHandlerLookupRow(a2, fault, context, 0, 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (id)fulfillFault:(uint64_t)fault withContext:
{
  if (result)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(fault, sel_fulfillFault_withContext_);
    }

    return _PFFaultHandlerLookupRow(a2, fault, 0, 1, 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (id)fulfillFault:(id)fault withContext:(id)context forIndex:(unint64_t)index
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(context, a2);
  }

  return _PFFaultHandlerLookupRow(fault, context, 0, 1, index);
}

- (id)retainedFulfillAggregateFaultForObject:(void *)object andRelationship:(uint64_t)relationship withContext:
{
  v44 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_15;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(relationship, sel_retainedFulfillAggregateFaultForObject_andRelationship_withContext_);
  }

  _propertyType = [object _propertyType];
  if (relationship)
  {
    if (_propertyType == 3)
    {
      v38 = 0;
      v8 = [objc_msgSend(object "fetchRequest")];
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, @"FETCH_SOURCE", object, @"FETCHED_PROPERTY", 0}];
      v10 = [objc_msgSend(v8 "predicate")];
      [v8 setPredicate:v10];
      [v10 allowEvaluation];
      v11 = [relationship executeFetchRequest:v8 error:&v38];

      if (!v38)
      {
        v12 = v11;
LABEL_17:
        v22 = *MEMORY[0x1E69E9840];
        return v12;
      }

      v23 = *MEMORY[0x1E696A778];
      code = [v38 code];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData could not fulfill a fetched property because '%@'", objc_msgSend(v38, "localizedDescription")];
      v26 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v23, code, v25, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v38, *MEMORY[0x1E696AA08], objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", a2), @"NSAffectedObjectsErrorKey", object, @"Fetched Property", 0}]);
      v27 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(2))
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          code2 = [v38 code];
          userInfo = [v26 userInfo];
          *v39 = 138412802;
          *&v39[4] = v26;
          v40 = 2048;
          v41 = code2;
          v42 = 2112;
          v43 = userInfo;
          v31 = "CoreData: error: CoreData Debug Logging: Exception = %@ with error code = %ld and userInfo = %@\n";
        }

        else
        {
          LogStream = _PFLogGetLogStream(2);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          code3 = [v38 code];
          userInfo2 = [v26 userInfo];
          *v39 = 138412802;
          *&v39[4] = v26;
          v40 = 2048;
          v41 = code3;
          v42 = 2112;
          v43 = userInfo2;
          v31 = "CoreData: warning: CoreData Debug Logging: Exception = %@ with error code = %ld and userInfo = %@\n";
        }

        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v31, v39, 0x20u);
      }

LABEL_26:
      v34 = _pflogging_catastrophic_mode;
      code4 = [v38 code];
      userInfo3 = [v26 userInfo];
      v37 = 1;
      if (!v34)
      {
        v37 = 2;
      }

      _NSCoreDataLog_console(v37, "CoreData Debug Logging: Exception = %@ with error code = %ld and userInfo = %@", v26, code4, userInfo3);
      objc_autoreleasePoolPop(v27);
      objc_exception_throw(v26);
    }

    *v39 = 0;
    objectID = [a2 objectID];
    v17 = objectID;
    v18 = atomic_load((relationship + 48));
    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v12 = [*(relationship + 32) newValueForRelationship:object forObjectWithID:v17 withContext:relationship error:v39];
      v20 = *v39;
      objc_autoreleasePoolPop(v19);
      v21 = *v39;
      goto LABEL_17;
    }

    if ([objectID persistentStore] && (objc_msgSend(a2, "isInserted") & 1) == 0 && (objc_msgSend(object, "isTransient") & 1) == 0)
    {
      [(NSManagedObjectContext *)relationship lockObjectStore];
      v12 = [*(relationship + 32) newValueForRelationship:object forObjectWithID:v17 withContext:relationship error:v39];
      [(NSManagedObjectContext *)relationship unlockObjectStore];
      goto LABEL_17;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_17;
  }

  v13 = NSArray_EmptyArray;
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (uint64_t)retainedOrderedFaultInformationForAggregateFaultForObject:(void *)object andRelationship:(uint64_t)relationship withContext:(id *)context error:
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_14;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(relationship, sel_retainedOrderedFaultInformationForAggregateFaultForObject_andRelationship_withContext_error_);
  }

  _propertyType = [object _propertyType];
  if (relationship)
  {
    if (_propertyType == 4 && [object isOrdered])
    {
      objectID = [a2 objectID];
      v11 = objectID;
      v12 = atomic_load((relationship + 48));
      if (v12)
      {
        v23 = 0;
        v20 = objc_autoreleasePoolPush();
        v18 = [*(relationship + 32) _newOrderedRelationshipInformationForRelationship:object forObjectWithID:v11 withContext:relationship error:&v23];
        v21 = v23;
        objc_autoreleasePoolPop(v20);
        v22 = v23;
        if (context && v23)
        {
          *context = v23;
        }

        goto LABEL_15;
      }

      if ([objectID persistentStore] && (objc_msgSend(a2, "isInserted") & 1) == 0 && (objc_msgSend(object, "isTransient") & 1) == 0)
      {
        [(NSManagedObjectContext *)relationship lockObjectStore];
        v13 = [*(relationship + 32) _newOrderedRelationshipInformationForRelationship:object forObjectWithID:v11 withContext:relationship error:context];
        [(NSManagedObjectContext *)relationship unlockObjectStore];
        v14 = *MEMORY[0x1E69E9840];
        return v13;
      }
    }

    goto LABEL_14;
  }

  if (!context)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v16 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A250];
  v24 = @"message";
  v25[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to retrieve ordering information from fault for object %@ and relationship %@ due to nil NSManagedObjectContext", objc_msgSend(a2, "objectID"), objc_msgSend(object, "name")];
  v18 = 0;
  *context = [v16 errorWithDomain:v17 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, &v24, 1)}];
LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)turnObject:(uint64_t)object intoFaultWithContext:
{
  if (self)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(object, sel_turnObject_intoFaultWithContext_);
    }

    v5 = (*(a2 + 16) >> 15) & 7;
    if (v5 == 5 || v5 == 0)
    {
      v7 = objc_autoreleasePoolPush();
      [a2 willTurnIntoFault];
      v8 = _PFEntityForManagedObject(a2);
      v9 = v8;
      v10 = *(a2 + 48);
      if (v10)
      {
        v11 = *v10;
        v12 = *(a2 + 16);
        if (v11)
        {
          v13 = (*(a2 + 16) & 0x2000) == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          if (v8)
          {
            v14 = *(v8[19] + 48);
            v24 = v14 == 0;
            if (v14)
            {
              if (object)
              {
                ++*(object + 46);
              }

              *(a2 + 16) = v12 | 0x1000;
              [a2 _willChangeValuesForKeys:v14];
              v12 = *(a2 + 16);
            }

            v23 = v14;
            v15 = v7;
            *(a2 + 16) = v12 & 0xFFFC7FFF | 0x10000;
            goto LABEL_25;
          }

          *(a2 + 16) = v12 & 0xFFFC5FFF | 0x10000;
LABEL_37:
          [a2 didTurnIntoFault];
          *(a2 + 16) = *(a2 + 16) & 0xFFFC7FFF | 0x8000;

          objc_autoreleasePoolPop(v7);
          return;
        }
      }

      else
      {
        v12 = *(a2 + 16);
      }

      *(a2 + 16) = v12 & 0xFFFC7FFF | 0x10000;
      if (v8)
      {
        v15 = v7;
        v23 = 0;
        v24 = 1;
LABEL_25:
        v16 = *(v9 + 112);
        v18 = *v16;
        v17 = v16[1];
        v19 = _kvcPropertysPrimitiveSetters(v9);
        if (v18 < v17 + v18)
        {
          v20 = (v19 + 8 * v18);
          v21 = v17;
          do
          {
            if (*v20)
            {
              if (isScalarTypeForKVCSetter(*v20))
              {
                v22 = _CD_ScalarNull;
              }

              else
              {
                v22 = 0;
              }

              _PF_CopyOnWrite_Snapshot(a2);
              _NSSetUsingKeyValueSetter();
            }

            ++v20;
            --v21;
          }

          while (v21);
        }

        [(NSManagedObject *)a2 _clearRawPropertiesWithHint:v18, v17];
        v7 = v15;
        if (!v24)
        {
          [a2 _didChangeValuesForKeys:v23];
          *(a2 + 16) &= ~0x1000u;
          if (object)
          {
            --*(object + 46);
          }
        }

        goto LABEL_37;
      }

      goto LABEL_37;
    }
  }
}

- (void)_fireFirstAndSecondLevelFaultsForObject:(uint64_t)object withContext:(void *)context
{
  if (object)
  {
    [context willAccessValueForKey:0];
    entity = [context entity];
    v4 = entity[14];
    v5 = *(entity[13] + 40);
    v6 = _kvcPropertysPrimitiveGetters(entity);
    for (i = 0; i != 4; ++i)
    {
      v8 = (v4 + 16 * __const__fireFirstAndSecondLevelFaultsForObject_withContext__rangeIndices[i]);
      v9 = *v8;
      v10 = v8[1];
      if (*v8 < v10 + *v8)
      {
        do
        {
          _PF_Handler_Primitive_GetProperty(context, v9, *(v5 + 8 * v9), *(v6 + 8 * v9));
          if (i >= 2)
          {
            [v11 willRead];
          }

          ++v9;
          --v10;
        }

        while (v10);
      }
    }
  }
}

@end