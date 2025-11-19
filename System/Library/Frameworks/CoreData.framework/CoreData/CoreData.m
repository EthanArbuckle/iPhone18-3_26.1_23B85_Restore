void developerSubmittedBlockToNSManagedObjectContextPerform(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((v4 & 4) != 0)
  {
    v5 = objc_autoreleasePoolPush();
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x2000) != 0)
  {
LABEL_5:
    __dmb(0xBu);
  }

LABEL_6:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 712);
  v8 = a1[3];
  v20 = v7;
  if (!v8)
  {
    v11 = 0;
    if (v7 == v2)
    {
      v12 = 1;
      if (!_PF_Threading_Debugging_level)
      {
        goto LABEL_19;
      }

      goto LABEL_60;
    }

    goto LABEL_16;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = _PF_Threading_Debugging_level < 2;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    dispatch_assert_queue_V2(v9);
  }

  if (v7 != v2)
  {
    do
    {
      v11 = atomic_load((v8 + 8));
    }

    while (!_PF_actor_set_owner(v11, v8, v2));
LABEL_16:
    v12 = 0;
    *(StatusReg + 712) = v2;
    goto LABEL_18;
  }

  v11 = 0;
  v12 = 1;
LABEL_18:
  if (!_PF_Threading_Debugging_level)
  {
    goto LABEL_19;
  }

LABEL_60:
  _PFAssertSafeMultiThreadedAccess_impl(v2, sel_performBlock_);
LABEL_19:
  v3[2](v3);
  if ((v4 & 0x1000) != 0)
  {
    if (v4)
    {
      _Block_release(v3);
      free(a1);
    }

    if ((v4 & 4) != 0 && v5)
    {
      objc_autoreleasePoolPop(v5);
    }

    if (v12)
    {
      *(StatusReg + 712) = 0;
      if (v11 == v2)
      {
        _PF_actor_set_owner(v2, v8, 0);
      }
    }

    else
    {
      if (v11 == v2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      *(StatusReg + 712) = v20;
      v14 = _PF_actor_set_owner(v2, v8, v13);
      if (v8)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        do
        {
          v16 = atomic_load((v8 + 8));
        }

        while (!_PF_actor_set_owner(v16, v8, v13));
      }
    }

LABEL_54:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_55;
  }

  if (v4)
  {
    _Block_release(v3);
  }

  if ((v4 & 2) != 0)
  {
    [v2 processPendingChanges];
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_46;
  }

  if (v5)
  {
    objc_autoreleasePoolPop(v5);
  }

  [(NSManagedObjectContext *)v2 _processReferenceQueue:?];
LABEL_46:
  if ((v12 & 1) == 0)
  {
    *(StatusReg + 712) = v20;
    v17 = _PF_actor_set_owner(v2, v8, v11);
    if (v8)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      do
      {
        v19 = atomic_load((v8 + 8));
      }

      while (!_PF_actor_set_owner(v19, v8, v11));
    }
  }

  if ((v4 & 1) == 0)
  {

    goto LABEL_54;
  }

  CFRelease(v2);
  free(a1);
  if ((v4 & 0x2000) != 0)
  {
LABEL_55:
    __dmb(0xBu);
  }
}

uint64_t PFInstrumentsRecordingEnabled()
{
  result = kdebug_is_enabled();
  if (result)
  {
    if (PFInstrumentsGetLog_logtoken != -1)
    {
      dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
    }

    v1 = PFInstrumentsGetLog_coreDataInstrumentsLog;

    return os_signpost_enabled(v1);
  }

  return result;
}

void sub_185660EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __internalBlockToDeallocNSManagedObjectContext_block_invoke_2(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  if (!*(a1 + 48))
  {
    v2 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v2 = malloc_default_zone();
    }

    v3 = *(a1 + 40);

    malloc_zone_free(v2, v3);
  }
}

void _performRunLoopAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  if ((*(a3 + 20) & 0x80000000) == 0)
  {
    *(a3 + 20) = 0;
    os_unfair_lock_unlock((a3 + 12));
    os_unfair_lock_lock_with_options();
    v5 = *(a3 + 24) && (v4 = *(a3 + 32)) != 0 && CFArrayGetCount(v4) > 0;
    os_unfair_lock_unlock((a3 + 12));
    v6 = *(a3 + 24);
    if (!v6 || *(v6 + 16) || (v7 = *(v6 + 40), (v7 & 8) != 0))
    {
      v8 = 0;
    }

    else
    {
      if ((v7 & 0x100) != 0)
      {
        v8 = 1;
LABEL_14:
        v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        WeakRetained = [_PFWeakReference weakReferenceWithObject:v6];
        if (WeakRetained)
        {
          WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
        }

        v11 = WeakRetained;
        if (v11 && (v12 = v11, !*(v11 + 4)) && (v8 & ([v11 _isDeallocating] ^ 1) & 1) != 0 && ((_PF_USE_IOS_PLATFORM & 1) != 0 || !objc_msgSend(objc_msgSend(v12, "undoManager"), "groupsByEvent")))
        {
          [v12 processPendingChanges];
        }

        else
        {
          [(_PFManagedObjectReferenceQueue *)a3 _processReferenceQueue:?];
        }

        [v9 drain];
        return;
      }

      v8 = *(v6 + 40) & 1;
    }

    if ((v5 | v8) != 1)
    {
      return;
    }

    goto LABEL_14;
  }

  os_unfair_lock_unlock((a3 + 12));
}

void _sharedIMPL_pvfk_core(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (_pvfk_header(a1, a3))
  {
    v5 = *(a1 + 24);

    snapshot_get_value_as_object(v5, v3);
  }
}

id _PFRetainedObjectIDCore(uint64_t a1, void *a2, void *a3, char a4)
{
  v6 = a2;
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = [a2 persistentStore];
  v9 = [v8 _persistentStoreCoordinator];
  v10 = [a1 persistentStoreCoordinator];
  if (v8)
  {
    v11 = [v6 _isPersistentStoreAlive] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  if (*(*(a1 + 168) + 8))
  {
    if ([v6 isTemporaryID])
    {
      if (!_PFCMT_GetValue(*(a1 + 120), v6))
      {
        v12 = [**(*(a1 + 168) + 8) objectForKey:v6];
        if (v12)
        {
          v6 = v12;
        }
      }
    }
  }

  if ((v9 != v10) | v11 & 1 && (v8 || ![v6 isTemporaryID]))
  {
    v15 = [v6 URIRepresentation];
    if ([v6 isTemporaryID])
    {
      v16 = 133000;
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Temporary object ID refers to object in different NSPersistentStoreCoordinator" userInfo:0];
      if ((a4 & 1) == 0)
      {
LABEL_17:
        if (!a3)
        {
LABEL_27:
          v17 = 0;
          goto LABEL_28;
        }

        if (v17)
        {
          v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v17, @"NSUnderlyingException", 0}];
        }

LABEL_26:
        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v16 userInfo:v17];

        goto LABEL_27;
      }
    }

    else
    {
      if (-[NSPersistentStoreCoordinator _persistentStoreForIdentifier:](v10, [v6 _storeIdentifier]))
      {
        v18 = [(NSPersistentStoreCoordinator *)v10 managedObjectIDForURIRepresentation:v15 error:0];
        if (v18)
        {
          v17 = [NSManagedObjectContext _retainedObjectWithID:a1 optionalHandler:v18 withInlineStorage:0];
          if (v17)
          {
            goto LABEL_28;
          }
        }

        if ((a4 & 1) == 0)
        {
          v17 = 0;
          if (!a3)
          {
LABEL_28:
            v19 = *MEMORY[0x1E69E9840];
            return v17;
          }

          v16 = 133000;
          goto LABEL_26;
        }

LABEL_31:
        v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid state for objectID or NSManagedObjectContext" userInfo:0];
LABEL_32:
        objc_exception_throw(v17);
      }

      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object %@ persistent store is not reachable from this NSManagedObjectContext's coordinator", v6];
      v23 = @"objectID";
      v24[0] = v6;
      v17 = [v20 exceptionWithName:v21 reason:v22 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}];
      v16 = 134098;
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v13 = *MEMORY[0x1E69E9840];

  return [NSManagedObjectContext _retainedObjectWithID:a1 optionalHandler:v6 withInlineStorage:0];
}

const void *_PFCMT_GetValue(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (([a2 isTemporaryID] & 1) == 0)
  {
    v5 = _PFModelMapSlotForEntity(a1[7], [a2 entity]);
    if (v5 < 0)
    {
      v6 = a1[3];
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v6 = a1[4];
      if (!v6)
      {
        return 0;
      }
    }

    v4 = *(v6 + 8 * (v5 & 0x7FFFFFFF));
    if (v4)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v4 = a1[2];
  if (!v4)
  {
    return 0;
  }

LABEL_10:

  return CFDictionaryGetValue(v4, a2);
}

unint64_t _PFObjectIDFastHash64(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a1);
    IndexedIvars = object_getIndexedIvars(Class);
    if ((IndexedIvars[4] & 2) != 0)
    {
      v5 = object_getClass(v1);
      if (*(object_getIndexedIvars(v5) + 4))
      {
        v4 = *(v1 + 8) >> 16;
      }

      else
      {
        v4 = *(v1 + 16);
      }
    }

    else
    {
      v4 = [*(v1 + 16) hash];
    }

    return *(IndexedIvars + 8) ^ (v4 << 6);
  }

  return v1;
}

uint64_t _PFModelMapSlotForEntity(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "managedObjectModel")];
  if (a2)
  {
    result = a2[20];
    if (a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = 0;
    if (a1)
    {
      goto LABEL_4;
    }
  }

  if (v4)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Model map is unexpectedly nil\n", buf, 2u);
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v20 = 0;
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Model map is unexpectedly nil", v20, 2u);
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"Model map is nil";
LABEL_23:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:0]);
  }

LABEL_4:
  if (v4 > 16049)
  {
    switch(v4)
    {
      case 16050:
        v9 = 0;
        v6 = *(a1 + 64);
LABEL_15:
        v8 = v9 + 1;
        result += v6[v9];
        goto LABEL_16;
      case 17000:
        v7 = 0;
        v6 = *(a1 + 64);
        goto LABEL_14;
      case 18000:
        v6 = *(a1 + 64);
        result += *v6;
        v7 = 1;
LABEL_14:
        v9 = v7 + 1;
        result += v6[v7];
        goto LABEL_15;
    }

    goto LABEL_26;
  }

  if (!v4)
  {
    return result;
  }

  if (v4 != 16000)
  {
LABEL_26:
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    v17 = MEMORY[0x1E696AEC0];
    v18 = v4;
    v19 = objc_opt_class();
    v14 = [v17 stringWithFormat:@"Managed object model with offset %lu is not known to %@", v18, NSStringFromClass(v19)];
    v12 = v15;
    v13 = v16;
    goto LABEL_23;
  }

  v8 = 0;
  v6 = *(a1 + 64);
LABEL_16:
  result += v6[v8];
  return result;
}

uint64_t _pvfk_header(unsigned int *a1, unint64_t a2)
{
  if (!_PF_Threading_Debugging_level)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = MEMORY[0x10];
    goto LABEL_7;
  }

  _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_primitiveValueForKey_);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = a1[4];
  if ((v4 & 0x4000) != 0)
  {
    v5 = a1;
    v4 = a1[4] & 0xFFFFBFFF;
    a1[4] = v4;
  }

LABEL_7:
  v6 = a1[5];
  if (v6)
  {
    v7 = a1 + v6;
  }

  else
  {
    v7 = 0;
  }

  if (((v7[(a2 >> 3) - ((v4 >> 22) & 0x3FC)] >> (a2 & 7)) & 1) == 0)
  {
    _PF_FulfillDeferredFault(a1, a2);
  }

  if (*(a1 + 3))
  {
    return 1;
  }

  result = 0;
  v9 = a1[4];
  if ((v9 & 0x38000) != 0x10000 && (v9 & 0x80) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v11 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v13 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          v16 = 0;
          v14 = &v16;
LABEL_24:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NULL _cd_rawData but the object is not being turned into a fault\n", v14, 2u);
        }
      }

      else if (v13)
      {
        LOWORD(v15) = 0;
        v14 = &v15;
        goto LABEL_24;
      }
    }

    _NSCoreDataLog_console(1, "NULL _cd_rawData but the object is not being turned into a fault", v15);
    objc_autoreleasePoolPop(v10);
    return 0;
  }

  return result;
}

void snapshot_get_value_as_object(id *a1, unsigned int a2)
{
  if (!a1)
  {
    v28 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v29 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          *buf = 0;
          v32 = buf;
          goto LABEL_53;
        }
      }

      else if (v31)
      {
        LOWORD(v33) = 0;
        v32 = &v33;
LABEL_53:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: warning snapshot_get_value_as_object called on NULL\n", v32, 2u);
      }
    }

    _NSCoreDataLog_console(1, "warning snapshot_get_value_as_object called on NULL", v33);
    objc_autoreleasePoolPop(v28);
    __break(1u);
    return;
  }

  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  if ((*(a1 + (a2 >> 3) + 28) >> (a2 & 7)))
  {
    return;
  }

  v7 = *(IndexedIvars + a2 + 19);
  v8 = *(IndexedIvars[7] + a2);
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v19 = *(a1 + v7);
        v20 = MEMORY[0x1E696AD98];

        [v20 numberWithChar:v19];
        break;
      case 2u:
        v25 = *(a1 + v7);
        v26 = MEMORY[0x1E696AD98];

        [v26 numberWithShort:v25];
        break;
      case 3u:
        v12 = *(a1 + v7);
        v13 = MEMORY[0x1E696AD98];

        [v13 numberWithInt:v12];
        break;
      default:
        goto LABEL_34;
    }
  }

  else if (*(IndexedIvars[7] + a2) > 5u)
  {
    if (v8 == 6)
    {
      LODWORD(v6) = *(a1 + v7);
      v24 = MEMORY[0x1E696AD98];

      [v24 numberWithFloat:v6];
    }

    else
    {
      if (v8 != 8)
      {
        goto LABEL_34;
      }

      v14 = *(a1 + v7);
      v15 = object_getClass(v14);
      if (v15 == PFFaultingTransformedValue_Decoded || v15 == PFFaultingTransformedValue_Encoded || v15 == PFFaultingTransformedValue_Decoded_Dirty)
      {
        v18 = [objc_msgSend(objc_msgSend(a1[2] "persistentStore")];

        [(PFFaultingTransformedValue *)v14 valueWithRegistry:v18];
      }
    }
  }

  else
  {
    if (v8 != 4)
    {
      if (v8 == 5)
      {
        v9 = *(a1 + v7);
        v10 = *(*([a1[2] entity] + 96) + 24 + 8 * a2);
        if (([v10 _isRelationship] & 1) != 0 || objc_msgSend(v10, "attributeType") != 900)
        {
          v27 = MEMORY[0x1E696AD98];

          [v27 numberWithDouble:v9];
        }

        else
        {
          v11 = MEMORY[0x1E695DF00];

          [v11 dateWithTimeIntervalSinceReferenceDate:v9];
        }

        return;
      }

LABEL_34:
      v21 = *(a1 + v7);
      return;
    }

    v22 = *(a1 + v7);
    v23 = MEMORY[0x1E696AD98];

    [v23 numberWithLongLong:v22];
  }
}

void *_PFAllocateObject(Class cls, uint64_t a2)
{
  v4 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v4 = malloc_default_zone();
  }

  InstanceSize = class_getInstanceSize(cls);
  v6 = malloc_type_zone_calloc(v4, 1uLL, ((InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8) + a2, 0x43CBCCECuLL);
  v7 = v6;
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    class_getName(cls);
    __CFSetLastAllocationEventName();
    if (!v7)
    {
      return v7;
    }

    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    objc_constructInstance(cls, v7);
  }

  return v7;
}

void *PF_CALLOC_OBJECT_ARRAY(uint64_t a1)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  return malloc_type_zone_calloc(v2, 1uLL, 8 * a1, 0x80040B8603338uLL);
}

NSObject *createQueueForMOC(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  __str[0] = 0;
  v2 = [*(a1[21] + 168) copy];
  if (v2)
  {
    v3 = v2;
    snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p: ", a1);
    [v3 UTF8String];
    __strlcat_chk();
  }

  else
  {
    snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p", a1);
  }

  v4 = dispatch_queue_create(__str, 0);
  dispatch_set_context(v4, a1);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _sqlEntityForEntityDescription(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = [objc_msgSend(a2 "managedObjectModel")];
    if (v5 == *(a1 + 60) && (v6 = a2[20], *(a1 + 64) - v5 >= v6))
    {
      return *(*(a1 + 40) + 8 * v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sqlCoreLookupSQLEntityForEntityDescription(void *a1, void *a2)
{
  v2 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = _sqlEntityForEntityDescription([a1 model], a2);
      if (!v2)
      {
        v5 = [a1 ancillarySQLModels];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v14;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v14 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = _sqlEntityForEntityDescription([v5 objectForKey:*(*(&v13 + 1) + 8 * i)], a2);
              if (v10)
              {
                v2 = v10;
                goto LABEL_14;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        v2 = 0;
LABEL_14:
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

void gutsOfBlockToNSPersistentStoreCoordinatorPerform(void *a1)
{
  v1 = a1;
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (_PF_Threading_Debugging_level >= 2)
  {
    dispatch_assert_queue_V2(*(v2 + 16));
  }

  atomic_store(1u, (v2 + 28));
  if ((v4 & 4) != 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if ((v4 & 0x2000) != 0)
  {
LABEL_7:
    __dmb(0xBu);
  }

LABEL_8:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 712);
  v8 = v1[3];
  if (v7 == v2)
  {
    v9 = 0;
  }

  else
  {
    if (v8)
    {
      do
      {
        v9 = atomic_load((v8 + 8));
      }

      while (!_PF_actor_set_owner(v9, v8, v2));
    }

    else
    {
      v9 = 0;
    }

    *(StatusReg + 712) = v2;
  }

  v3[2](v3);
  if (v4)
  {
    _Block_release(v3);
    CFRelease(v2);
    free(v1);
    v1 = 0;
  }

  if ((v4 & 4) != 0)
  {
    [v5 drain];
  }

  if (v7 != v2)
  {
    *(StatusReg + 712) = v7;
    v10 = _PF_actor_set_owner(v2, v8, v9);
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      do
      {
        v12 = atomic_load((v8 + 8));
      }

      while (!_PF_actor_set_owner(v12, v8, v9));
    }
  }

  if (v4)
  {
    free(v1);
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    __dmb(0xBu);
    goto LABEL_27;
  }

  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_185662BA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    if ((v10 & 1) == 0)
    {
      JUMPOUT(0x1856628F8);
    }

    JUMPOUT(0x1856628DCLL);
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662BF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf, __int16 buf)
{
  if (a2)
  {
    objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception thrown during autorelease pool drain.\n", &buf, 2u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Exception thrown during autorelease pool drain.", &buf, 2u);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662C8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x185662908);
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (v10)
  {
    objc_end_catch();
  }

  if (v11)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void _perform(unint64_t a1, uint64_t a2)
{
  context[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
      context[0] = a2;
      context[1] = a1;
      context[2] = 0;
      context[3] = v3;
      v4 = atomic_load((a1 + 49));
      if (v4)
      {
        if (!_PFIsSerializedWithMainQueue())
        {
LABEL_26:
          dispatch_sync_f(v2, context, internalBlockToNSManagedObjectContextPerform);
          goto LABEL_27;
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_26;
        }

        v5 = 0;
        v6 = 0;
        v7 = v3;
        while (v7 != a1)
        {
          if (v7 == v5)
          {
            goto LABEL_15;
          }

          if (!v5)
          {
            v5 = v7;
          }

          v7 = atomic_load((v7 + 8));
          if (!v7)
          {
            goto LABEL_16;
          }
        }

        v6 = 1;
LABEL_15:
        if (v6)
        {
          goto LABEL_25;
        }

LABEL_16:
        v8 = 0;
        v9 = 0;
        while (a1 != v3)
        {
          if (a1 == v8)
          {
            goto LABEL_24;
          }

          if (!v8)
          {
            v8 = a1;
          }

          a1 = atomic_load((a1 + 8));
          if (!a1)
          {
            goto LABEL_26;
          }
        }

        v9 = 1;
LABEL_24:
        if (!v9)
        {
          goto LABEL_26;
        }
      }

LABEL_25:
      internalBlockToNSManagedObjectContextPerform(context);
    }
  }

LABEL_27:
  v10 = *MEMORY[0x1E69E9840];
}

void _perform_0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
    v13[0] = a2;
    v13[1] = v2;
    v13[2] = 0;
    v13[3] = v4;
    v14 = 0;
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v4;
      while (v7 != v2)
      {
        if (v7 == v5)
        {
          goto LABEL_11;
        }

        if (!v5)
        {
          v5 = v7;
        }

        v7 = atomic_load((v7 + 8));
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      v6 = 1;
LABEL_11:
      if (v6)
      {
LABEL_21:
        gutsOfBlockToNSPersistentStoreCoordinatorPerform(v13);
        goto LABEL_23;
      }

LABEL_12:
      v8 = 0;
      v9 = 0;
      while (v2 != v4)
      {
        if (v2 == v8)
        {
          goto LABEL_20;
        }

        if (!v8)
        {
          v8 = v2;
        }

        v2 = atomic_load((v2 + 8));
        if (!v2)
        {
          goto LABEL_22;
        }
      }

      v9 = 1;
LABEL_20:
      if (v9)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    dispatch_sync_f(v3, v13, internalBlockToNSPersistentStoreCoordinatorPerform);
LABEL_23:
    v10 = v14;
    if (v14)
    {
      v12 = v14;
      objc_exception_throw(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

BOOL _PF_actor_set_owner(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 && (v6 = a1, atomic_compare_exchange_strong((a2 + 8), &v6, a3), v6 != a1))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v11 = atomic_load((a2 + 8));
      v13 = 134218752;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v11;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to set actor (%p) new owner (%p).  Expected previous (%p) is now (%p)\n", &v13, 0x2Au);
    }

    v9 = _PFLogGetLogStream(17);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v12 = atomic_load((a2 + 8));
      v13 = 134218752;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v12;
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to set actor (%p) new owner (%p).  Expected previous (%p) is now (%p)", &v13, 0x2Au);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

_PFFetchPlanHeader *fetchPlanAllocateInitialize(NSFetchRequest *a1, NSPersistentStore *a2, NSManagedObjectContext *a3)
{
  v6 = objc_alloc_init(_PFFetchPlanHeader);
  v6->fetch_request = a1;
  v6->requested_batch_size = [(NSFetchRequest *)a1 fetchLimit];
  v6->sql_core = a2;
  v7 = _sqlCoreLookupSQLEntityForEntityDescription(a2, [(NSFetchRequest *)a1 entity]);
  v6->statement_entity = v7;
  v6->sql_model = [(NSSQLEntity *)v7 model];
  v6->current_context = a3;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    if (a2)
    {
      v9 = [(NSSQLCore *)a2 rowCacheForGeneration:?];
    }

    else
    {
      v9 = 0;
    }

    v6->row_cache = v9;
  }

  v6->entity_for_ek_funptr = [(NSSQLModel *)v6->sql_model methodForSelector:sel_entityForID_];
  v10 = [(NSFetchRequest *)a1 includesPropertyValues];
  v11 = [(NSFetchRequest *)a1 resultType];
  v12 = [(NSFetchRequest *)a1 resultType];
  if ([(NSFetchRequest *)a1 returnsObjectsAsFaults])
  {
    v13 = [(NSArray *)[(NSFetchRequest *)a1 relationshipKeyPathsForPrefetching] count]!= 0;
  }

  else
  {
    v13 = 1;
  }

  if ([(NSFetchRequest *)a1 resultType])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = [(NSArray *)[(NSFetchRequest *)a1 propertiesToFetch] count]!= 0;
    v10 |= v14;
  }

  statement_entity = v6->statement_entity;
  if (statement_entity)
  {
    subentities = statement_entity->_subentities;
    if (subentities)
    {
      LODWORD(statement_entity) = [(NSMutableArray *)subentities count]!= 0;
    }

    else
    {
      LODWORD(statement_entity) = 0;
    }
  }

  v17 = v11 == 1;
  if (v12 == 2)
  {
    v17 = 1;
    v18 = 16;
  }

  else
  {
    v18 = 20;
  }

  if (v11 == 1)
  {
    v18 = 4;
  }

  v19 = v17 || v14;
  if ((v12 == 2) | v10 & 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  if ((v13 & v10) != 0)
  {
    v21 = 12;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v6->flags = (v22 | v20 | statement_entity | *&v6->flags & 0x20);
  return v6;
}

void sub_185665ECC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int buf, int a55, int a56, __int16 a57, int a58, __int16 a59, __int16 a60, uint64_t a61)
{
  if (a2)
  {
    if (v62)
    {
      objc_end_catch();
    }

    if (v63)
    {
      objc_end_catch();
    }

    objc_begin_catch(exc_buf);
    *(v61 + 312) &= ~0x80u;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

uint64_t _PFRawIndexForKnownKey(void *a1, __CFString *a2)
{
  if (!a2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = _PFRawFastIndexForKnownKey(a1, a2, &v7);
  if (v4 >= a1[3])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  if (*(a1[5] + 8 * v4) != a2 && ![(__CFString *)a2 isEqualToString:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

uint64_t _PFRawFastIndexForKnownKey(void *a1, __CFString *theString, unint64_t *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    goto LABEL_65;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v7 = CStringPtr;
    v8 = [(__CFString *)theString length];
    *a3 = v8;
    v9 = a1[2];
    v10 = *v9;
    if (*v9)
    {
      v11 = *v10;
      while (1)
      {
        v12 = v8;
        if ((v11 & 0x1FF8) != 0)
        {
          v12 = v7[v11 >> 13];
        }

        v13 = *(v10 + 4);
        v18 = v12 >= v13;
        v14 = v12 - v13;
        if (v18)
        {
          if (v12 <= *(v10 + 6))
          {
            v16 = v14 <= 0xFFFE ? v14 : 0;
            v15 = v10 + v16 + 8;
          }

          else
          {
            v15 = v10 + 7;
          }
        }

        else
        {
          v15 = v10 + 5;
        }

        v17 = *v15;
        if ((v17 & 0x80000000) == 0)
        {
          break;
        }

        v10 = v9[-v17];
        v11 = *v10;
        v18 = (*v10 & 0x1FF8) != 0 && *v10 >> 13 >= v8;
        if (v18)
        {
          goto LABEL_65;
        }
      }

      result = (v17 + HIDWORD(v11));
      goto LABEL_66;
    }

LABEL_65:
    result = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_66;
  }

  v19 = a1[2];
  v20 = *v19;
  v21 = [(__CFString *)theString length];
  if (!v20)
  {
    goto LABEL_65;
  }

  v22 = v21;
  v23 = 0;
  v24 = *v20;
  while (1)
  {
    if ((v24 & 0x1FF8) != 0)
    {
      if (v24 >> 13 >= v22)
      {
        goto LABEL_46;
      }

      v25 = [(__CFString *)theString characterAtIndex:?];
    }

    else
    {
      *a3 = v22;
      v25 = v22;
    }

    if ((v24 & 7) == 1)
    {
      v26 = *(v20 + 4);
      v18 = v25 >= v26;
      v27 = v25 - v26;
      if (v18)
      {
        if (v25 <= *(v20 + 6))
        {
          if (v27 <= 0xFFFE)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v28 = v20 + v29 + 8;
        }

        else
        {
          v28 = v20 + 7;
        }
      }

      else
      {
        v28 = v20 + 5;
      }

      v23 = *v28;
    }

    if ((v23 & 0x80000000) == 0)
    {
      break;
    }

    v20 = v19[-v23];
    v24 = *v20;
    if ((*v20 & 0x1FF8) != 0 && v22 <= *v20 >> 13)
    {
      goto LABEL_65;
    }
  }

  result = (v23 + HIDWORD(v24));
  if (result == 0x200000)
  {
LABEL_46:
    v32 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v33 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v35 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        if (v35)
        {
          goto LABEL_67;
        }
      }

      else if (v35)
      {
LABEL_67:
        *buf = 138412546;
        *v48 = a1;
        *&v48[8] = 2048;
        *&v48[10] = [a1 length];
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NSKnownKeysDictionary: dumping bad mapping: %@ with length:\x05 %ld\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "NSKnownKeysDictionary: dumping bad mapping: %@ with length:\x05 %ld", a1, [a1 length]);
    objc_autoreleasePoolPop(v32);
    v36 = [a1 keys];
    if (!a1[3])
    {
LABEL_61:
      v44 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v48 = theString;
        _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: NSKnownKeysDictionary: improper mapping detected with key '%@'\n", buf, 0xCu);
      }

      v45 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *v48 = theString;
        _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: NSKnownKeysDictionary: improper mapping detected with key '%@'", buf, 0xCu);
      }

      goto LABEL_65;
    }

    v37 = v36;
    v38 = 0;
    while (1)
    {
      v39 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v40 = _pflogging_catastrophic_mode;
        v41 = _PFLogGetLogStream(1);
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        if (v40)
        {
          if (v42)
          {
            goto LABEL_60;
          }
        }

        else if (v42)
        {
LABEL_60:
          v43 = *(v37 + 8 * v38);
          *buf = 67109378;
          *v48 = v38;
          *&v48[4] = 2112;
          *&v48[6] = v43;
          _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error:  \t key[%d] = %@\n", buf, 0x12u);
        }
      }

      _NSCoreDataLog_console(1, " \t key[%d] = %@", v38, *(v37 + 8 * v38));
      objc_autoreleasePoolPop(v39);
      if (a1[3] <= ++v38)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_66:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void *_execute(uint64_t a1)
{
  v79[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v69 = 0;
  v6 = 0.0;
LABEL_4:
  for (i = 3 * v4 - 29999; ; i += 3)
  {
    result = sqlite3_step(*(a1 + 80));
    v9 = result;
    if (result > 6u)
    {
      break;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        if (result != 1)
        {
          goto LABEL_77;
        }

        goto LABEL_43;
      }

      if ((*(a1 + 312) & 2) == 0)
      {
        sqlite3_reset(*(a1 + 80));
      }

      if (*(a1 + 232) > 0.0 && v6 == 0.0)
      {
        v6 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
      }

LABEL_21:
      if (v4 <= 0xA)
      {
        v10 = 3 * v4 + 1;
      }

      else
      {
        v10 = v4 + 1101;
      }

LABEL_33:
      usleep(v10);
      goto LABEL_34;
    }

    if ((*(a1 + 312) & 2) == 0)
    {
      sqlite3_reset(*(a1 + 80));
    }

    if (*(a1 + 232) > 0.0 && v6 == 0.0)
    {
      v6 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
    }

    if (v4 >= 0x2711)
    {
      if (v4 - 10000 >= 0xB)
      {
        v10 = v4 - 8899;
      }

      else
      {
        v10 = i;
      }

      goto LABEL_33;
    }

LABEL_34:
    if (v6 != 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v6)
      {
        if (v5 <= 7)
        {
          ++v4;
          v6 = Current + *(a1 + 240);
          ++v5;
          goto LABEL_4;
        }

        v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The database operation timed out after %.2f seconds.", Current - v6 + *(a1 + 232)];
        if (+[NSSQLCore debugDefault]< 1)
        {
          goto LABEL_122;
        }

        v56 = *(a1 + 42);
        v57 = objc_autoreleasePoolPush();
        IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
        if (v56 == 1)
        {
          if (IsOSLogEnabled)
          {
            v59 = _pflogging_catastrophic_mode;
            LogStream = _PFLogGetLogStream(1);
            v61 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
            if (v59)
            {
              if (v61)
              {
                goto LABEL_116;
              }
            }

            else if (v61)
            {
LABEL_116:
              *buf = 67109378;
              v71 = v9;
              v72 = 2112;
              v73 = v55;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
            }
          }

          _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v9, v55);
LABEL_121:
          objc_autoreleasePoolPop(v57);
LABEL_122:
          v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during SQL execution : %@", v55];
          *(a1 + 312) &= 0xFFFFEFFD;
          [(NSSQLiteConnection *)a1 releaseSQLStatement];
          v66 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134090, v65, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v9), @"NSSQLiteErrorDomain"}]);
          objc_exception_throw(v66);
        }

        if (IsOSLogEnabled)
        {
          v62 = _pflogging_catastrophic_mode;
          v63 = _PFLogGetLogStream(1);
          v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
          if (v62)
          {
            if (v64)
            {
              goto LABEL_119;
            }
          }

          else if (v64)
          {
LABEL_119:
            *buf = 67109378;
            v71 = v9;
            v72 = 2112;
            v73 = v55;
            _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
          }
        }

        _NSCoreDataLog_console(1, "(%d) %@", v9, v55);
        goto LABEL_121;
      }
    }

    ++v4;
  }

  if (result <= 0x10u)
  {
    if (result <= 0xDu)
    {
      if (result != 7 && result != 10)
      {
        if (result != 11)
        {
          goto LABEL_77;
        }

LABEL_54:
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fatal error.  The database at %@ is corrupted.  SQLite error code:%d, '%s'", *(a1 + 32), v9, sqlite3_errmsg(*(a1 + 72))];
LABEL_55:
        v17 = @"NSSQLiteErrorDomain";
        v16 = v9;
        [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
LABEL_56:
        switch(v9)
        {
          case 0x613:
            *(a1 + 312) &= 0xFFFFEFFD;
            [(NSSQLiteConnection *)a1 _endFetch];
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v33 = *MEMORY[0x1E695D940];
            v74 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
            v75 = MEMORY[0x1E695E0F0];
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            v32 = @"Constraint primary key violation";
            v30 = _NSCoreDataOptimisticLockingException;
            v31 = v33;
            break;
          case 0x713:
            v27 = sqlite3_errmsg(*(a1 + 72));
            *(a1 + 312) &= 0xFFFFEFFD;
            [(NSSQLiteConnection *)a1 _endFetch];
            v28 = "no message";
            if (v27)
            {
              v28 = v27;
            }

            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Constraint trigger violation: %s", v28];
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v22 = *MEMORY[0x1E695D940];
            v76[0] = *MEMORY[0x1E696A588];
            v76[1] = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
            v77[0] = v21;
            v77[1] = MEMORY[0x1E695E0F0];
            v23 = MEMORY[0x1E695DF20];
            v24 = v77;
            v25 = v76;
            v26 = 2;
LABEL_65:
            v29 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
            v30 = _NSCoreDataConstraintViolationException;
            v31 = v22;
            v32 = v21;
            break;
          case 0x813:
            v19 = sqlite3_errmsg(*(a1 + 72));
            *(a1 + 312) &= 0xFFFFEFFD;
            v20 = "no message";
            if (v19)
            {
              v20 = v19;
            }

            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Constraint unique violation: %s", v20];
            [(NSSQLiteConnection *)a1 _endFetch];
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v22 = *MEMORY[0x1E695D940];
            v78 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
            v79[0] = MEMORY[0x1E695E0F0];
            v23 = MEMORY[0x1E695DF20];
            v24 = v79;
            v25 = &v78;
            v26 = 1;
            goto LABEL_65;
          default:
            if (v18)
            {
              v34 = [v18 UTF8String];
              v35 = 0;
              goto LABEL_79;
            }

LABEL_78:
            v34 = sqlite3_errmsg(*(a1 + 72));
            v18 = 0;
            v35 = 1;
LABEL_79:
            v37 = *(a1 + 42);
            v38 = objc_autoreleasePoolPush();
            v39 = _NSCoreDataIsOSLogEnabled(1);
            if (v37 == 1)
            {
              if (v39)
              {
                v40 = _pflogging_catastrophic_mode;
                v41 = _PFLogGetLogStream(1);
                v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  if (v42)
                  {
                    goto LABEL_89;
                  }
                }

                else if (v42)
                {
LABEL_89:
                  *buf = 67109378;
                  v71 = v9;
                  v72 = 2080;
                  v73 = v34;
                  _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
                }
              }

              _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_94:
              objc_autoreleasePoolPop(v38);
              if (v35)
              {
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during SQL execution : %s", v34];
                v68 = v9;
                v46 = @"NSSQLiteErrorDomain";
              }

              else
              {
                v46 = v17;
                v68 = v16;
              }

              [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
              v47 = *MEMORY[0x1E695D930];
              v48 = MEMORY[0x1E695DF20];
              v49 = *(a1 + 32);
              v50 = *MEMORY[0x1E696A368];
              v51 = [MEMORY[0x1E696AD98] numberWithInt:v9];
              if (v69)
              {
                v52 = [MEMORY[0x1E696AD98] numberWithInteger:?];
              }

              else
              {
                v52 = 0;
              }

              v53 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v47, v68, v18, [v48 dictionaryWithObjectsAndKeys:{v49, v50, v51, @"NSSQLiteErrorDomain", v52, *MEMORY[0x1E696A798], 0}]);
              v54 = v53;
              if (v46)
              {
                [(_NSCoreDataException *)v53 _setDomain:v46];
              }

              objc_exception_throw(v54);
            }

            if (v39)
            {
              v43 = _pflogging_catastrophic_mode;
              v44 = _PFLogGetLogStream(1);
              v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
              if (v43)
              {
                if (v45)
                {
                  goto LABEL_92;
                }
              }

              else if (v45)
              {
LABEL_92:
                *buf = 67109378;
                v71 = v9;
                v72 = 2080;
                v73 = v34;
                _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
              }
            }

            _NSCoreDataLog_console(1, "(%d) %s");
            goto LABEL_94;
        }

        objc_exception_throw([(__objc2_class *)v30 exceptionWithName:v31 reason:v32 userInfo:v29]);
      }

LABEL_43:
      v12 = result;
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
      if (v12 == 10 && (sqlite3_file_control(*(a1 + 72), 0, 4, &v69), v69))
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@' errno:%d", *(a1 + 32), v9, v13, v69];
      }

      else
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@'", *(a1 + 32), v9, v13, v67];
      }

      v18 = v14;
      if (!v14)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (result != 14)
    {
      goto LABEL_77;
    }

    if (v3 > 2)
    {
      goto LABEL_43;
    }

    if (*(a1 + 232) > 0.0 && v6 == 0.0)
    {
      v6 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
    }

    ++v3;
    goto LABEL_21;
  }

  if (result <= 0x19u)
  {
    if (result != 17)
    {
      if (result == 19)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        goto LABEL_56;
      }

      if (result != 21)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_43;
  }

  switch(result)
  {
    case 0x64u:
      *(a1 + 312) |= 2u;
      break;
    case 0x65u:
      result = [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
      *(a1 + 312) &= ~2u;
      *(a1 + 100) = 0;
      *(a1 + 92) = 0;
      *(a1 + 108) = 0;
      break;
    case 0x1Au:
      goto LABEL_54;
    default:
LABEL_77:
      v17 = 0;
      v16 = 0;
      goto LABEL_78;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

_PFArray *_newFetchedRowsForRequest(uint64_t a1)
{
  v215[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a1 + 120))
  {
    v7 = NSArray_EmptyArray;
    v8 = *MEMORY[0x1E69E9840];

    return v7;
  }

  v2 = *(a1 + 136);
  v3 = [a1 request];
  v188 = a1;
  v4 = [a1 fetchStatement];
  if (!v4 || (*(v4 + 40) & 1) != 0)
  {
    if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
    {
      if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 2)
      {
        v5 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v3;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: logically false fetch request %@ short circuits.\n", buf, 0xCu);
            }
          }

          else
          {
            v27 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v3;
              _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: logically false fetch request %@ short circuits.\n", buf, 0xCu);
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

        _NSCoreDataLog_console(v28, "logically false fetch request %@ short circuits.", v3);
        objc_autoreleasePoolPop(v5);
      }

      v29 = *(a1 + 80);
      v30 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      IsLogEnabled = _NSCoreDataIsLogEnabled(4);
      if (_pflogging_enable_oslog > 0)
      {
        v32 = IsLogEnabled;
      }

      else
      {
        v32 = 0;
      }

      if (v29)
      {
        if (v32)
        {
          if (_pflogging_catastrophic_mode)
          {
            v33 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v213 = 1024;
              v214 = 0;
              _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
            }
          }

          else
          {
            v35 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v213 = 1024;
              v214 = 0;
              _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
            }
          }
        }

        v36 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
      }

      else
      {
        if (v32)
        {
          if (_pflogging_catastrophic_mode)
          {
            v34 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v213 = 1024;
              v214 = 0;
              _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
            }
          }

          else
          {
            v37 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v213 = 1024;
              v214 = 0;
              _os_log_impl(&dword_18565F000, v37, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
            }
          }
        }

        v36 = "total fetch execution time: %.4fs for %d rows.";
      }

      if (_pflogging_catastrophic_mode)
      {
        v38 = 1;
      }

      else
      {
        v38 = 4;
      }

      _NSCoreDataLog_console(v38, v36, 0, 0);
      objc_autoreleasePoolPop(v30);
    }

    v39 = NSArray_EmptyArray;
    goto LABEL_85;
  }

  if (*(a1 + 81) == 1 && (*(v2 + 72) & 1) == 0 && (*(v2 + 72) & 0x18) != 16)
  {
    v11 = *MEMORY[0x1E69E9840];

    return newFetchedRowsForFetchPlan_MT(a1);
  }

  v12 = *(a1 + 136);
  v174 = [a1 fetchStatement];
  v185 = *(a1 + 24);
  v192 = v12;
  if ((*(v12 + 72) & 2) != 0)
  {
    v13 = 4096;
  }

  else
  {
    v13 = 512;
  }

  if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]< 1)
  {
    Current = 0.0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v15 = v12;
  if (*(v12 + 16))
  {
    v16 = *(v12 + 16);
  }

  else
  {
    v16 = -1;
  }

  v17 = +[NSSQLCore bufferedAllocationsOverride];
  v19 = v17 >= 1 && (*(v192 + 72) & 0x1C) == 0x10 && ((v18 = *(v192 + 40)) == 0 || (v15 = v192, *(v18 + 184) >> 3 < 0x84Du)) || [*(v15 + 8) allocationType] == 1 && (*(v15 + 72) & 0x1C) == 16;
  objc_opt_self();
  if (v17 != 2 || (*(v192 + 72) & 0x1C) != 0x10)
  {
    if ((_CoreData_debugVMBufferAllocations & 1) == 0)
    {
LABEL_48:
      v21 = [*(v192 + 8) allocationType] == 2;
      goto LABEL_49;
    }

LABEL_47:
    v21 = 1;
LABEL_49:
    v194 = v21;
    goto LABEL_50;
  }

  v20 = *(v192 + 40);
  if (!v20)
  {
    goto LABEL_47;
  }

  v194 = 1;
  if (*(v20 + 184) >> 3 >= 0x84Du && (_CoreData_debugVMBufferAllocations & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_50:
  objc_opt_self();
  v22 = (v17 != 3) & (_CoreData_debugOneBufferAllocations ^ 1);
  if (!v22 && v194)
  {
    v23 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v24 = _pflogging_catastrophic_mode;
      v25 = _PFLogGetLogStream(1);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        if (v26)
        {
          *buf = 0;
LABEL_341:
          _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: VM Memory is already One Buffer Row that grows!!!\n", buf, 2u);
        }
      }

      else if (v26)
      {
        *buf = 0;
        goto LABEL_341;
      }
    }

    _NSCoreDataLog_console(1, "VM Memory is already One Buffer Row that grows!!!");
    objc_autoreleasePoolPop(v23);
  }

  objc_opt_self();
  v41 = (v17 == 4) | _CoreData_debuguseManyResultSetsAllocations;
  if (v41 & v194)
  {
    v42 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v43 = _pflogging_catastrophic_mode == 0;
      v44 = _PFLogGetLogStream(1);
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        if (v45)
        {
          *buf = 0;
          goto LABEL_343;
        }
      }

      else if (v45)
      {
        *buf = 0;
LABEL_343:
        _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: VM Memory does not support multiple result sets!!!\n", buf, 2u);
      }
    }

    _NSCoreDataLog_console(1, "VM Memory does not support multiple result sets!!!");
    objc_autoreleasePoolPop(v42);
  }

  if ((*(v192 + 72) & 2) == 0 && (*(v192 + 72) & 0x18) != 0x10)
  {
    [*(v192 + 8) _disablePersistentStoreResultCaching];
  }

  v175 = *(v188 + 201);
  v191 = [*(v192 + 8) _asyncResultHandle];
  v46 = [v191 progress];
  v47 = v46;
  if (v46)
  {
    v48 = [v46 totalUnitCount];
    v49 = v48 & ~(v48 >> 31);
  }

  else
  {
    v49 = 0;
  }

  v187 = v194 | v19;
  v177 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v183 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((*(v192 + 72) & 0x1C) == 0xC)
  {
    v182 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v182 = 0;
  }

  [(NSSQLiteConnection *)v185 selectRowsWithStatement:v174 cached:v175];
  v50 = CFAbsoluteTimeGetCurrent();
  v180 = v22;
  v184 = v49;
  v186 = v47;
  v51 = 0;
  v52 = 0;
  v189 = 0;
  if ([(NSSQLStoreRequestContext *)v188 debugLogLevel]<= 0)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v50 - Current;
  }

  if (v187)
  {
    v54 = 10;
  }

  else
  {
    v54 = 12;
  }

  v55 = v41 | v187 ^ 1;
  while (2)
  {
    v193 = 0;
    v56 = v16;
    while (1)
    {
      if (v187)
      {
        if (!v193)
        {
          v57 = *(v192 + 8);
          if (v194)
          {
            Initialize = bufferResultSetAllocateWithVMMemory([v57 allocationSize], objc_msgSend(*(v192 + 8), "purgeableResult"));
          }

          else
          {
            Initialize = bufferResultSetAllocateInitialize([v57 allocationSize], v192);
          }

          v193 = Initialize;
          *(Initialize + 1) = v50;
        }
      }

      else
      {
        v59 = fetchResultSetAllocateInitialize(v51, (*(v192 + 72) >> 5) & 1);
        v59[1] = v50;
        *v59 = v189;
        v193 = v59;
      }

      v60 = v56 >= v13 ? v13 : v56;
      v16 = v56 >= v13 ? v56 - v13 : 0;
      *(v192 + 16) = v60;
      v61 = [(NSSQLStoreRequestContext *)v188 debugLogLevel]< 1 ? 0.0 : CFAbsoluteTimeGetCurrent();
      if (v191 && [v191 _isCancelled])
      {
        v189 += v52;
        v62 = v193[v54];
      }

      else
      {
        if (v187)
        {
          v63 = [(NSSQLiteConnection *)v185 fetchBufferResultSet:v193 usingFetchPlan:v192];
          v64 = 10;
        }

        else
        {
          v63 = [(NSSQLiteConnection *)v185 fetchResultSet:v193 usingFetchPlan:v192];
          v64 = 12;
        }

        v52 = v63;
        v189 += v63;
        v62 = v193[v64];
        if (!v191)
        {
          v65 = v62 ^ 1;
          goto LABEL_137;
        }
      }

      v65 = ((v62 & 1) == 0) & ~[v191 _isCancelled];
LABEL_137:
      if (v186 && ([v186 isCancelled] & 1) == 0)
      {
        v66 = v184;
        if (v184 < 1)
        {
          v67 = 0;
          v66 = 0;
        }

        else if (v189 >= v184)
        {
          if (v189 >= 2 * v184)
          {
            v66 = v189 + 1;
          }

          else
          {
            v66 = 2 * v184;
          }

          v67 = 1;
        }

        else
        {
          v67 = 0;
        }

        v68 = *(v192 + 48);
        v204[0] = MEMORY[0x1E69E9820];
        v204[1] = 3221225472;
        v204[2] = ___newFetchedRowsForFetchPlan_ST_block_invoke;
        v204[3] = &unk_1E6EC4290;
        v207 = v67;
        v204[4] = v186;
        v184 = v66;
        v205 = v66;
        v206 = v189;
        [v68 performBlock:v204];
      }

      if ([(NSSQLStoreRequestContext *)v188 debugLogLevel]>= 1)
      {
        v53 = v53 + CFAbsoluteTimeGetCurrent() - v61;
      }

      if (v55)
      {
        break;
      }

      v69 = v56 > v13;
      v56 = v16;
      if ((v65 & v69 & 1) == 0)
      {
        v75 = _prepareLargeDictionaryResults(v193, v188, 1);
        v74 = v189;
        v76 = v75;
        if (((v180 | v194) & 1) == 0)
        {
          v215[0] = v75;
          v77 = _prepareBufferedDictionaryResult([MEMORY[0x1E695DEC8] arrayWithObjects:v215 count:1], v188);

          v76 = v77;
        }

        [v183 addObject:v76];

        goto LABEL_170;
      }
    }

    if (v52)
    {
      *buf = 0;
      if (v187)
      {
        v70 = _prepareLargeDictionaryResults(v193, v188, 1);
      }

      else if ((*(v192 + 72) & 0x18) == 0x10)
      {
        v70 = _prepareDictionaryResults(v193, v188);
      }

      else
      {
        v70 = _prepareResultsFromResultSet_0(v193, buf, v188);
      }

      v71 = v70;
      [v183 addObject:v70];
      if (*buf)
      {
        [v182 addObject:?];
      }

      if ((v187 & 1) == 0)
      {
LABEL_164:
        v72 = v193[4];
        v73 = v193[5];
        fetchResultSetDeallocate(v193);
        v51 = v73 * v72;
      }
    }

    else if ((v187 & 1) == 0)
    {
      goto LABEL_164;
    }

    if ((v65 & (v56 > v13)) != 0)
    {
      continue;
    }

    break;
  }

  v193 = 0;
  v74 = v189;
LABEL_170:
  [(NSSQLiteConnection *)v185 endFetchAndRecycleStatement:v175];
  if ([(NSSQLStoreRequestContext *)v188 debugLogLevel]>= 1)
  {
    v78 = *(v188 + 80);
    v79 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    v80 = _NSCoreDataIsLogEnabled(4);
    if (_pflogging_enable_oslog > 0)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    if (v78)
    {
      if (v81)
      {
        if (_pflogging_catastrophic_mode)
        {
          v82 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v53;
            _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }

        else
        {
          v84 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v53;
            _os_log_impl(&dword_18565F000, v84, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }
      }

      v85 = "sql connection fetch time: \x1B[31m%.4f\x1B[0ms";
    }

    else
    {
      if (v81)
      {
        if (_pflogging_catastrophic_mode)
        {
          v83 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v53;
            _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: %.4fs\n", buf, 0xCu);
          }
        }

        else
        {
          v86 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v53;
            _os_log_impl(&dword_18565F000, v86, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: %.4fs\n", buf, 0xCu);
          }
        }
      }

      v85 = "sql connection fetch time: %.4fs";
    }

    if (_pflogging_catastrophic_mode)
    {
      v87 = 1;
    }

    else
    {
      v87 = 4;
    }

    _NSCoreDataLog_console(v87, v85, *&v53);
    objc_autoreleasePoolPop(v79);
  }

  v88 = [v183 count];
  v195 = *(v192 + 48);
  v89 = *(v188 + 128);
  if (v191 && ([v191 _isCancelled] & 1) != 0)
  {
    v74 = 0;
    goto LABEL_198;
  }

  if (v88 == 1)
  {
    v95 = [v183 objectAtIndex:0];
    if (v182)
    {
      v96 = [v182 objectAtIndex:0];
      v90 = malloc_type_malloc([(_PFArray *)v95 count], 0x100004077774924uLL);
      v190 = v74;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v97 = [(_PFArray *)v95 countByEnumeratingWithState:&v200 objects:buf count:16];
      if (v97)
      {
        v98 = v90;
        v99 = 0;
        v100 = 0;
        v101 = *v201;
        do
        {
          for (i = 0; i != v97; ++i)
          {
            if (*v201 != v101)
            {
              objc_enumerationMutation(v95);
            }

            v103 = *(*(&v200 + 1) + 8 * i);
            v98[v99] = (*(v103 + 16) & 0x18000) == 0x8000;
            _PFFaultHandlerFulfillFault(v89, v103, v195, [v96 objectAtIndex:v100], 0);
            ++v99;
            ++v100;
          }

          v97 = [(_PFArray *)v95 countByEnumeratingWithState:&v200 objects:buf count:16];
        }

        while (v97);
        v39 = v95;
        v90 = v98;
      }

      else
      {
        v39 = v95;
      }

      v74 = v190;
    }

    else
    {
      v90 = 0;
      v39 = v95;
    }
  }

  else
  {
    if (!v88)
    {
LABEL_198:
      v90 = 0;
      v91 = NSArray_EmptyArray;
      goto LABEL_199;
    }

    if (v187)
    {
      v90 = 0;
      v91 = _prepareBufferedDictionaryResult(v183, v188);
LABEL_199:
      v39 = v91;
    }

    else
    {
      v104 = 0;
      v105 = 0;
      do
      {
        v105 += [objc_msgSend(v183 objectAtIndex:{v104++), "count"}];
      }

      while (v88 != v104);
      v106 = malloc_type_malloc(v105, 0x100004077774924uLL);
      v172 = v105;
      v173 = PF_ALLOCATE_OBJECT_ARRAY(v105);
      v107 = [v183 objectAtIndex:0];
      v108 = 0x1EA8C5000uLL;
      if (v107)
      {
        v171 = *(v107 + 32) & 0x3B;
      }

      else
      {
        v171 = 0;
      }

      v109 = 0;
      v110 = 0;
      v111 = v173;
      v176 = v88;
      do
      {
        v112 = [v183 objectAtIndex:v109];
        [v112 getObjects:v111];
        v113 = [v112 count];
        if (v112)
        {
          *&v112[*(v108 + 1192)] &= 0xFFFFFFFFFFFFFFF9;
        }

        v179 = v111;
        v181 = v109;
        v178 = v113;
        if (v182)
        {
          v114 = [v182 objectAtIndex:v109];
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v115 = [v112 countByEnumeratingWithState:&v200 objects:buf count:16];
          if (v115)
          {
            v116 = 0;
            v117 = *v201;
            do
            {
              for (j = 0; j != v115; ++j)
              {
                if (*v201 != v117)
                {
                  objc_enumerationMutation(v112);
                }

                v119 = *(*(&v200 + 1) + 8 * j);
                v106[v110] = (*(v119 + 16) & 0x18000) == 0x8000;
                _PFFaultHandlerFulfillFault(v89, v119, v195, [v114 objectAtIndex:v116], 0);
                ++v110;
                ++v116;
              }

              v115 = [v112 countByEnumeratingWithState:&v200 objects:buf count:16];
            }

            while (v115);
          }
        }

        v111 = &v179[8 * v178];
        v109 = v181 + 1;
        v74 = v189;
        v108 = 0x1EA8C5000;
      }

      while (v181 + 1 != v176);
      v39 = [[_PFArray alloc] initWithObjects:v173 count:v172 andFlags:v171 andContext:v195];
      v90 = v106;
    }
  }

  v92 = COERCE_DOUBLE([(_PFArray *)v39 count]);
  if (v186 && ([v186 isCancelled] & 1) == 0)
  {
    v93 = v184;
    if (v184 < 1)
    {
      v94 = 0;
      v93 = 0;
    }

    else if (v74 >= v184)
    {
      if (v74 >= 2 * v184)
      {
        v93 = v74 + 1;
      }

      else
      {
        v93 = 2 * v184;
      }

      v94 = 1;
    }

    else
    {
      v94 = 0;
    }

    v120 = *(v192 + 48);
    v196[0] = MEMORY[0x1E69E9820];
    v196[1] = 3221225472;
    v196[2] = ___newFetchedRowsForFetchPlan_ST_block_invoke_287;
    v196[3] = &unk_1E6EC4290;
    v199 = v94;
    v196[4] = v186;
    v197 = v93;
    v198 = v74;
    [v120 performBlock:v196];
  }

  if (*&v92 != v74)
  {
    v121 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v122 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
LABEL_344:
          *v208 = 134218240;
          v209 = v92;
          v210 = 1024;
          v211 = v74;
          _os_log_error_impl(&dword_18565F000, v122, OS_LOG_TYPE_ERROR, "CoreData: error: result array has %lu entries, but we fetched %d rows\n", v208, 0x12u);
        }
      }

      else
      {
        v122 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_344;
        }
      }
    }

    _NSCoreDataLog_console(1, "result array has %lu entries, but we fetched %d rows", *&v92, v74);
    objc_autoreleasePoolPop(v121);
  }

  if ([(NSSQLStoreRequestContext *)v188 debugLogLevel]>= 2)
  {
    v123 = COERCE_DOUBLE(objc_alloc_init(MEMORY[0x1E696AD60]));
    [*&v123 appendFormat:@"fetch using %@ returned %lu rows", v174, *&v92];
    if ([(NSSQLStoreRequestContext *)v188 debugLogLevel]>= 3)
    {
      [*&v123 appendFormat:@" with values: %@", v39];
    }

    v124 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v125 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          *v208 = 138412290;
          v209 = v123;
          _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", v208, 0xCu);
        }
      }

      else
      {
        v126 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          *v208 = 138412290;
          v209 = v123;
          _os_log_impl(&dword_18565F000, v126, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: %@\n", v208, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v127 = 1;
    }

    else
    {
      v127 = 4;
    }

    _NSCoreDataLog_console(v127, "%@", *&v123);
    objc_autoreleasePoolPop(v124);
  }

  v128 = [*(v192 + 8) relationshipKeyPathsForPrefetching];
  v129 = *(v192 + 72);
  if (v92 == 0.0 || !v128)
  {
    v131 = 0x1E695D000;
  }

  else
  {
    v130 = (v129 >> 2) & 7;
    v131 = 0x1E695D000uLL;
    if (v130 <= 5 && ((1 << v130) & 0x29) != 0)
    {
      if ((*(v192 + 72) & 0x1C) == 4)
      {
        v132 = 0;
        v133 = v39;
      }

      else
      {
        v133 = [_PFRoutines newArrayOfObjectIDsFromCollection:v39];
        v132 = v133;
        if ((*(v192 + 72) & 0x1C) == 4)
        {
          v133 = v39;
        }
      }

      _prefetchForFetchRequest(v133, 0, v188);

      v129 = *(v192 + 72);
    }
  }

  if ((v129 & 0x1C) == 0xC && v90)
  {
    v134 = [objc_alloc(*(v131 + 3952)) initWithCapacity:{-[_PFArray count](v39, "count")}];
    v135 = 0;
    v136 = MEMORY[0x1E695E118];
    v137 = MEMORY[0x1E695E110];
    while (v135 < [(_PFArray *)v39 count])
    {
      if (v90[v135])
      {
        v138 = v136;
      }

      else
      {
        v138 = v137;
      }

      [v134 addObject:v138];
      ++v135;
    }

    [(NSSQLFetchRequestContext *)v188 addFaultsThatWereFired:v134];
  }

  [v177 drain];

  if (v191)
  {
    v139 = [v191 _isCancelled] ^ 1;
  }

  else
  {
    v139 = 1;
  }

  [*(v192 + 8) _setAsyncResultHandle:0];
  [0 drain];
  if (!((v193 == 0) | v187 & 1))
  {
    fetchResultSetDeallocate(v193);
  }

  if (v90)
  {
    free(v90);
  }

  if ([(NSSQLStoreRequestContext *)v188 debugLogLevel]< 1)
  {
    goto LABEL_85;
  }

  v140 = *(v188 + 80);
  v141 = objc_autoreleasePoolPush();
  _pflogInitialize(4);
  v142 = _NSCoreDataIsLogEnabled(4);
  if (_pflogging_enable_oslog > 0)
  {
    v143 = v142;
  }

  else
  {
    v143 = 0;
  }

  if (!v139)
  {
    if (v140)
    {
      if (v143)
      {
        if (_pflogging_catastrophic_mode)
        {
          v147 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
            v148 = CFAbsoluteTimeGetCurrent();
            *v208 = 134217984;
            v209 = v148 - Current;
            _os_log_error_impl(&dword_18565F000, v147, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", v208, 0xCu);
          }
        }

        else
        {
          v160 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            v161 = CFAbsoluteTimeGetCurrent();
            *v208 = 134217984;
            v209 = v161 - Current;
            _os_log_impl(&dword_18565F000, v160, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", v208, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v162 = CFAbsoluteTimeGetCurrent();
        v163 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
LABEL_334:
        v170 = 1;
LABEL_337:
        _NSCoreDataLog_console(v170, v163, v162 - Current);
        goto LABEL_338;
      }

      v162 = CFAbsoluteTimeGetCurrent();
      v163 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
    }

    else
    {
      if (v143)
      {
        if (_pflogging_catastrophic_mode)
        {
          v152 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            v153 = CFAbsoluteTimeGetCurrent();
            *v208 = 134217984;
            v209 = v153 - Current;
            _os_log_error_impl(&dword_18565F000, v152, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: %.4fs.\n", v208, 0xCu);
          }
        }

        else
        {
          v168 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
          {
            v169 = CFAbsoluteTimeGetCurrent();
            *v208 = 134217984;
            v209 = v169 - Current;
            _os_log_impl(&dword_18565F000, v168, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: %.4fs.\n", v208, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v162 = CFAbsoluteTimeGetCurrent();
        v163 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
        goto LABEL_334;
      }

      v162 = CFAbsoluteTimeGetCurrent();
      v163 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
    }

    v170 = 4;
    goto LABEL_337;
  }

  if (v140)
  {
    if (v143)
    {
      if (_pflogging_catastrophic_mode)
      {
        v144 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          v145 = CFAbsoluteTimeGetCurrent();
          v146 = [(_PFArray *)v39 count];
          *v208 = 134218240;
          v209 = v145 - Current;
          v210 = 1024;
          v211 = v146;
          _os_log_error_impl(&dword_18565F000, v144, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", v208, 0x12u);
        }
      }

      else
      {
        v154 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          v155 = CFAbsoluteTimeGetCurrent();
          v156 = [(_PFArray *)v39 count];
          *v208 = 134218240;
          v209 = v155 - Current;
          v210 = 1024;
          v211 = v156;
          _os_log_impl(&dword_18565F000, v154, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", v208, 0x12u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v157 = CFAbsoluteTimeGetCurrent();
      v158 = [(_PFArray *)v39 count];
      v159 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
      goto LABEL_326;
    }

    v157 = CFAbsoluteTimeGetCurrent();
    v158 = [(_PFArray *)v39 count];
    v159 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
LABEL_328:
    v167 = 4;
  }

  else
  {
    if (v143)
    {
      if (_pflogging_catastrophic_mode)
      {
        v149 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          v150 = CFAbsoluteTimeGetCurrent();
          v151 = [(_PFArray *)v39 count];
          *v208 = 134218240;
          v209 = v150 - Current;
          v210 = 1024;
          v211 = v151;
          _os_log_error_impl(&dword_18565F000, v149, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: %.4fs for %d rows.\n", v208, 0x12u);
        }
      }

      else
      {
        v164 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
        {
          v165 = CFAbsoluteTimeGetCurrent();
          v166 = [(_PFArray *)v39 count];
          *v208 = 134218240;
          v209 = v165 - Current;
          v210 = 1024;
          v211 = v166;
          _os_log_impl(&dword_18565F000, v164, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: %.4fs for %d rows.\n", v208, 0x12u);
        }
      }
    }

    if (!_pflogging_catastrophic_mode)
    {
      v157 = CFAbsoluteTimeGetCurrent();
      v158 = [(_PFArray *)v39 count];
      v159 = "total fetch execution time: %.4fs for %d rows.";
      goto LABEL_328;
    }

    v157 = CFAbsoluteTimeGetCurrent();
    v158 = [(_PFArray *)v39 count];
    v159 = "total fetch execution time: %.4fs for %d rows.";
LABEL_326:
    v167 = 1;
  }

  _NSCoreDataLog_console(v167, v159, v157 - Current, v158);
LABEL_338:
  objc_autoreleasePoolPop(v141);
LABEL_85:
  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

void sub_18566AA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (v32)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_18566AB60(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566ABACLL);
  }

  JUMPOUT(0x18566AB44);
}

void sub_18566AB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566AB84);
  }

  JUMPOUT(0x18566AB44);
}

void sub_18566AB98(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18566A3C8);
    }

    objc_begin_catch(exc_buf);

    objc_exception_rethrow();
  }

  JUMPOUT(0x18566AB44);
}

void sub_18566ABF4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566ABB8);
  }

  JUMPOUT(0x18566AB44);
}

_PFArray *newFetchedRowsForFetchPlan_MT(void *a1)
{
  v213 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[17];
  }

  else
  {
    v2 = 0;
  }

  v3 = [a1 fetchStatement];
  v193 = a1;
  v4 = [(NSSQLStoreRequestContext *)a1 debugLogLevel];
  v5 = *(v2 + 72);
  if ((v5 & 2) != 0)
  {
    v6 = 4096;
  }

  else
  {
    v6 = 512;
  }

  v195 = v4;
  if (v4 < 1)
  {
    Current = 0.0;
    LOBYTE(v8) = *(v2 + 72);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(v2 + 72);
  }

  if (*(v2 + 16))
  {
    v9 = *(v2 + 16);
  }

  else
  {
    v9 = -1;
  }

  v170 = [*(v2 + 8) relationshipKeyPathsForPrefetching];
  v196 = v2;
  v11 = (v5 & 2) == 0 && (*(v2 + 72) & 0x1C) == 12;
  v173 = v11;
  if (v193)
  {
    v12 = *(v193 + 201);
  }

  else
  {
    v12 = 0;
  }

  v209 = 1;
  v197 = [*(v196 + 8) _asyncResultHandle];
  v13 = [v197 progress];
  v191 = v13;
  if (v13)
  {
    v14 = [v13 totalUnitCount];
    v15 = v14 & ~(v14 >> 31);
  }

  else
  {
    v15 = 0;
  }

  v171 = v12;
  v172 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  count = objc_alloc_init(MEMORY[0x1E695DF70]);
  CFRetain(count);

  if (v173)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    CFRetain(v16);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v193)
  {
    v18 = *(v193 + 24);
  }

  else
  {
    v18 = 0;
  }

  [(NSSQLiteConnection *)v18 selectRowsWithStatement:v3 cached:v12 & 1];
  v19 = CFAbsoluteTimeGetCurrent();
  v183 = v15;
  v169 = v3;
  cf = v17;
  v177 = v18;
  v20 = 0;
  v21 = 0;
  v181 = 0;
  v22 = 0;
  v175 = 0;
  v23 = 0;
  ptr = 0;
  v185 = v8 & 3;
  if (v195 <= 0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v19 - Current;
  }

  allocator = *MEMORY[0x1E695E480];
  do
  {
    Initialize = fetchResultSetAllocateInitialize(v20, (*(v196 + 72) >> 5) & 1);
    Initialize[1] = v19;
    value = Initialize;
    *Initialize = ptr;
    if (v9 >= v6)
    {
      v26 = v6;
    }

    else
    {
      v26 = v9;
    }

    if (v9 >= v6)
    {
      v27 = v9 - v6;
    }

    else
    {
      v27 = 0;
    }

    *(v196 + 16) = v26;
    if (v195 <= 0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = CFAbsoluteTimeGetCurrent();
    }

    if (v197 && [v197 _isCancelled])
    {
      ptr += v23;
      v29 = *(value + 12);
    }

    else
    {
      v30 = [(NSSQLiteConnection *)v177 fetchResultSet:v196 usingFetchPlan:?];
      v23 = v30;
      ptr += v30;
      v29 = *(value + 12);
      if (!v197)
      {
        v31 = v29 ^ 1;
        goto LABEL_47;
      }
    }

    v31 = ((v29 & 1) == 0) & ~[v197 _isCancelled];
LABEL_47:
    if (v191 && ([v191 isCancelled] & 1) == 0)
    {
      v32 = v183;
      if (v183 < 1)
      {
        v34 = 0;
        v183 = 0;
      }

      else
      {
        if (ptr >= 2 * v183)
        {
          v33 = ptr + 1;
        }

        else
        {
          v33 = 2 * v183;
        }

        v34 = ptr >= v183;
        if (ptr >= v183)
        {
          v32 = v33;
        }

        v183 = v32;
      }

      if (v193)
      {
        v35 = *(v193 + 32);
      }

      else
      {
        v35 = 0;
      }

      v205[0] = MEMORY[0x1E69E9820];
      v205[1] = 3221225472;
      v205[2] = __newFetchedRowsForFetchPlan_MT_block_invoke;
      v205[3] = &unk_1E6EC4290;
      v208 = v34;
      v205[4] = v191;
      v206 = v183;
      v207 = ptr;
      [v35 performBlock:v205];
    }

    if ((v31 & (v21 == 0)) == 1)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, 0);
      if (v185 != 2)
      {
        v181 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      }

      v37 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v37 = malloc_default_zone();
      }

      v38 = malloc_type_zone_calloc(v37, 5uLL, 8uLL, 0x100004000313F17uLL);
      *v38 = v193;
      v38[1] = Mutable;
      v38[2] = count;
      v38[3] = &v209;
      v38[4] = v181;
      if (v185 == 2)
      {
        v39 = _prepareObjectIDsOnBackgroundThread;
      }

      else
      {
        v39 = _prepareRowsOnBackgroundThreads;
      }

      v21 = [[_PFTask alloc] initWithFunction:v39 withArgument:v38 andPriority:2];
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      v175 = 1;
      v22 = Mutable;
    }

    if (v195 >= 1)
    {
      v24 = v24 + CFAbsoluteTimeGetCurrent() - v28;
    }

    if (v23)
    {
      if (v21)
      {
        pthread_mutex_lock(&v21->lock);
        CFArrayAppendValue(v22, value);
        pthread_mutex_unlock(&v21->lock);
        pthread_cond_signal(&v21->condition);
        goto LABEL_82;
      }

      *buf = 0;
      v42 = _prepareResultsFromResultSet(value, buf, v193);
      [count addObject:v42];
      if (*buf)
      {
        [cf addObject:?];
        v43 = *buf;
      }

      else
      {
        v43 = 0;
      }

      v40 = *(value + 4);
      v41 = *(value + 5);
      fetchResultSetDeallocate(value);
    }

    else
    {
      v40 = *(value + 4);
      v41 = *(value + 5);
      fetchResultSetDeallocate(value);
    }

    v20 = v41 * v40;
LABEL_82:
    v44 = v9 > v6;
    v9 = v27;
  }

  while ((v31 & v44 & 1) != 0);
  [(NSSQLiteConnection *)v177 endFetchAndRecycleStatement:?];
  if (v195 >= 1)
  {
    if (v193)
    {
      v45 = *(v193 + 80);
      v46 = objc_autoreleasePoolPush();
      if (v45)
      {
        _pflogInitialize(4);
        IsLogEnabled = _NSCoreDataIsLogEnabled(4);
        v48 = "sql connection fetch time: \x1B[31m%.4f\x1B[0ms";
        if (IsLogEnabled && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
            }
          }

          else
          {
            v50 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_impl(&dword_18565F000, v50, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
            }
          }

          v48 = "sql connection fetch time: \x1B[31m%.4f\x1B[0ms";
        }

        goto LABEL_109;
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
    }

    _pflogInitialize(4);
    v51 = _NSCoreDataIsLogEnabled(4);
    v48 = "sql connection fetch time: %.4fs";
    if (v51 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v52 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_error_impl(&dword_18565F000, v52, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: %.4fs\n", buf, 0xCu);
        }
      }

      else
      {
        v53 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_impl(&dword_18565F000, v53, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: %.4fs\n", buf, 0xCu);
        }
      }

      v48 = "sql connection fetch time: %.4fs";
    }

LABEL_109:
    if (_pflogging_catastrophic_mode)
    {
      v54 = 1;
    }

    else
    {
      v54 = 4;
    }

    _NSCoreDataLog_console(v54, v48, *&v24);
    objc_autoreleasePoolPop(v46);
  }

  if (v21)
  {
    pthread_mutex_lock(&v21->lock);
    atomic_store(0, &v209);
    if (!v21->isFinishedFlag)
    {
      pthread_cond_signal(&v21->condition);
    }

    while (!v21->isFinishedFlag)
    {
      pthread_cond_wait(&v21->condition, &v21->lock);
    }

    pthread_mutex_unlock(&v21->lock);
  }

  v55 = [count count];
  v56 = v173;
  if (!v181)
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = v181;
  }

  else
  {
    CFRelease(v181);
    v57 = 0;
  }

  v182 = v57;
  if (v197 && ([v197 _isCancelled] & 1) != 0)
  {
    ptr = 0;
LABEL_133:
    v186 = 0;
    v60 = count;
    allocatora = NSArray_EmptyArray;
    goto LABEL_171;
  }

  if (!v55)
  {
    goto LABEL_133;
  }

  if (v55 == 1)
  {
    v58 = [count objectAtIndex:0];
    if (v173)
    {
      if (cf)
      {
        ValueAtIndex = [cf objectAtIndex:0];
        if (!ValueAtIndex)
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (!v182)
        {
          goto LABEL_169;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v182, 0);
        if (!ValueAtIndex)
        {
          goto LABEL_169;
        }
      }

      allocatora = v58;
      v186 = ValueAtIndex;
      v60 = count;
      CFRetain(ValueAtIndex);
      goto LABEL_171;
    }

LABEL_169:
    v186 = 0;
    allocatora = v58;
    goto LABEL_170;
  }

  v61 = 0;
  v62 = 0;
  do
  {
    v62 += [objc_msgSend(count objectAtIndex:{v61++), "count"}];
  }

  while (v55 != v61);
  v63 = PF_ALLOCATE_OBJECT_ARRAY(v62);
  if (v173)
  {
    v64 = PF_ALLOCATE_OBJECT_ARRAY(v62);
  }

  else
  {
    v64 = 0;
  }

  v65 = [count objectAtIndex:0];
  if (v65)
  {
    v66 = *(v65 + 32) & 0x23;
  }

  else
  {
    v66 = 0;
  }

  v67 = 0;
  v168 = v66 | 8;
  v187 = v64;
  allocatorb = v63;
  while (2)
  {
    v68 = [count objectAtIndex:v67];
    [v68 getObjects:v63];
    v69 = [v68 count];
    if (v68)
    {
      v68[4] &= 0xFFFFFFFFFFFFFFF9;
    }

    if (v173)
    {
      if (cf)
      {
        v70 = [cf objectAtIndex:v67];
        goto LABEL_149;
      }

      if (v182)
      {
        v70 = CFArrayGetValueAtIndex(v182, v67);
LABEL_149:
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      [v71 getObjects:v64 range:{0, objc_msgSend(v71, "count")}];
      v64 += 8 * [v71 count];
    }

    v63 = (v63 + 8 * v69);
    if (v55 != ++v67)
    {
      continue;
    }

    break;
  }

  v72 = 0;
  v73 = (*(v196 + 72) >> 2) & 7;
  if (v73 > 5)
  {
    v74 = v187;
    v75 = allocatorb;
    v76 = v168;
  }

  else
  {
    v74 = v187;
    v75 = allocatorb;
    v76 = v168;
    if (((1 << v73) & 0x29) != 0)
    {
      if (v193)
      {
        v72 = *(v193 + 32);
      }

      else
      {
        v72 = 0;
      }

      v76 = v66 | 0x28u;
    }
  }

  allocatora = [[_PFArray alloc] initWithObjects:v75 count:v62 andFlags:v76 andContext:v72];
  if (v173)
  {
    v77 = [_PFArray alloc];
    v78 = v170 ? 11 : 8;
    v79 = [(_PFArray *)v77 initWithObjects:v74 count:v62 andFlags:v78 andContext:0];
    v186 = v79;
    if (v79)
    {
      v60 = count;
      CFRetain(v79);

      goto LABEL_171;
    }
  }

  v186 = 0;
LABEL_170:
  v60 = count;
LABEL_171:
  if (v60)
  {
    CFRelease(v60);
  }

  v80 = [(_PFArray *)allocatora count];
  if (v191 && ([v191 isCancelled] & 1) == 0)
  {
    if (v183 < 1)
    {
      v81 = 0;
      v183 = 0;
    }

    else if (ptr >= v183)
    {
      v82 = 2 * v183;
      if (ptr >= 2 * v183)
      {
        v82 = ptr + 1;
      }

      v183 = v82;
      v81 = 1;
    }

    else
    {
      v81 = 0;
    }

    if (v193)
    {
      v83 = *(v193 + 32);
    }

    else
    {
      v83 = 0;
    }

    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v201[2] = __newFetchedRowsForFetchPlan_MT_block_invoke_48;
    v201[3] = &unk_1E6EC4290;
    v204 = v81;
    v201[4] = v191;
    v202 = v183;
    v203 = ptr;
    [v83 performBlock:v201];
  }

  if (v80 != ptr)
  {
    v84 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v85 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
LABEL_327:
          *buf = 134218240;
          *&buf[4] = v80;
          v211 = 1024;
          LODWORD(v212) = ptr;
          _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: error: result array has %lu entries, but we fetched %d rows\n", buf, 0x12u);
        }
      }

      else
      {
        v85 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_327;
        }
      }
    }

    _NSCoreDataLog_console(1, "result array has %lu entries, but we fetched %d rows", v80, ptr);
    objc_autoreleasePoolPop(v84);
  }

  v184 = v80;
  if (v80)
  {
    if (v170)
    {
      v86 = (*(v196 + 72) >> 2) & 7;
      if (v86 <= 5 && ((1 << v86) & 0x29) != 0)
      {
        [v172 drain];
        v87 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        if ((*(v196 + 72) & 0x1C) == 4)
        {
          v88 = 0;
          v89 = allocatora;
        }

        else
        {
          v89 = [_PFRoutines newArrayOfObjectIDsFromCollection:?];
          v88 = v89;
          if ((*(v196 + 72) & 0x1C) == 4)
          {
            v89 = allocatora;
          }
        }

        _prefetchForFetchRequest(v89, 0, v193);

        v172 = v87;
      }
    }
  }

  v90 = v173;
  if (!v80)
  {
    v90 = 0;
  }

  if (v90)
  {
    if (v175)
    {
      active = +[_PFTask getNumActiveProcessors];
    }

    else
    {
      active = 1;
    }

    v92 = [(_PFArray *)allocatora count];
    v93 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v93 = malloc_default_zone();
    }

    ptra = malloc_type_zone_calloc(v93, 1uLL, v92, 0x100004077774924uLL);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v94 = [(_PFArray *)allocatora _objectsPointer];
    }

    else
    {
      v95 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v95 = malloc_default_zone();
      }

      v94 = malloc_type_zone_calloc(v95, 1uLL, 8 * v92, 0x80040B8603338uLL);
      [(_PFArray *)allocatora getObjects:v94 range:0, v92];
    }

    objc_opt_class();
    v174 = objc_opt_isKindOfClass();
    if (v174)
    {
      v192 = [(_PFArray *)v186 _objectsPointer];
    }

    else
    {
      v96 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v96 = malloc_default_zone();
      }

      v192 = malloc_type_zone_calloc(v96, 1uLL, 8 * v92, 0x80040B8603338uLL);
      [(_PFArray *)v186 getObjects:v192 range:0, [(_PFArray *)v186 count]];
    }

    v97 = v92 / active;
    v98 = v92 % active;
    v99 = active - 1;
    if (active == 1)
    {
      v102 = 0;
    }

    else
    {
      counta = active - 1;
      v100 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v100 = malloc_default_zone();
      }

      v101 = active - 1;
      v102 = malloc_type_zone_calloc(v100, counta, 8uLL, 0x80040B8603338uLL);
      v103 = 0;
      if (counta <= 1)
      {
        v101 = 1;
      }

      do
      {
        v104 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v104 = malloc_default_zone();
        }

        v105 = malloc_type_zone_calloc(v104, 6uLL, 8uLL, 0x100004000313F17uLL);
        *v105 = v193;
        v105[1] = v94;
        v105[2] = v192;
        v105[3] = v98 + (v103 + 1) * v97;
        v105[4] = v97;
        v105[5] = ptra;
        v102[v103++] = [[_PFTask alloc] initWithFunction:_fireFaultsOnBackgroundThread withArgument:v105 andPriority:2];
      }

      while (v101 != v103);
      v99 = counta;
    }

    v106 = v97 + v98;
    if (v193)
    {
      v107 = *(v193 + 32);
      v108 = *(v193 + 128);
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    countb = v108;
    if (v106)
    {
      for (i = 0; i < v106; ++i)
      {
        v110 = v94[i];
        if (((*(v110 + 16) >> 15) & 3 | 4) == 5)
        {
          v111 = *(v110 + 48);
          if (v111 && *v111)
          {
            v112 = 3;
          }

          else
          {
            _PFFaultHandlerFulfillFault(v108, v110, v107, v192[i], 0);
            v112 = 1;
          }

          ptra[i] = v112;
        }
      }
    }

    if (v102)
    {
      if (v99)
      {
        for (j = 0; j != v99; ++j)
        {
          v114 = v102[j];
          pthread_mutex_lock((v114 + 32));
          while (!*(v114 + 144))
          {
            pthread_cond_wait((v114 + 96), (v114 + 32));
          }

          pthread_mutex_unlock((v114 + 32));
        }
      }

      PF_FREE_OBJECT_ARRAY(v102);
    }

    v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v92)
    {
      v116 = MEMORY[0x1E695E118];
      v117 = MEMORY[0x1E695E110];
      v118 = ptra;
      v119 = v94;
      v120 = v192;
      do
      {
        v122 = *v118++;
        v121 = v122;
        if (v122)
        {
          v123 = v116;
          if (v121 != 1)
          {
            _PFFaultHandlerFulfillFault(countb, *v119, v107, *v120, 1);
            v123 = v117;
          }
        }

        else
        {
          v123 = v117;
        }

        [v115 addObject:v123];
        ++v120;
        ++v119;
        --v92;
      }

      while (v92);
    }

    [(NSSQLFetchRequestContext *)v193 addFaultsThatWereFired:v115];

    v124 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v124 = malloc_default_zone();
    }

    malloc_zone_free(v124, ptra);
    if ((isKindOfClass & 1) == 0)
    {
      v125 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v125 = malloc_default_zone();
      }

      malloc_zone_free(v125, v94);
    }

    if ((v174 & 1) == 0)
    {
      v126 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v126 = malloc_default_zone();
      }

      malloc_zone_free(v126, v192);
    }
  }

  if (v186)
  {
    CFRelease(v186);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v195 >= 2)
  {
    v127 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v128 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v169;
          v211 = 2048;
          v212 = v184;
          _os_log_error_impl(&dword_18565F000, v128, OS_LOG_TYPE_ERROR, "CoreData: error: fetch using %@ returned %lu rows\n", buf, 0x16u);
        }
      }

      else
      {
        v129 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v169;
          v211 = 2048;
          v212 = v184;
          _os_log_impl(&dword_18565F000, v129, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: fetch using %@ returned %lu rows\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v130 = 1;
    }

    else
    {
      v130 = 4;
    }

    _NSCoreDataLog_console(v130, "fetch using %@ returned %lu rows", v169, v184);
    objc_autoreleasePoolPop(v127);
    if (v195 != 2 && allocatora)
    {
      v131 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v132 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = allocatora;
            _os_log_error_impl(&dword_18565F000, v132, OS_LOG_TYPE_ERROR, "CoreData: error:  with values: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v133 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = allocatora;
            _os_log_impl(&dword_18565F000, v133, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:  with values: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v134 = 1;
      }

      else
      {
        v134 = 4;
      }

      _NSCoreDataLog_console(v134, " with values: %@", allocatora);
      objc_autoreleasePoolPop(v131);
    }
  }

  [v172 drain];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v197)
  {
    v135 = [v197 _isCancelled] ^ 1;
  }

  else
  {
    v135 = 1;
  }

  [*(v196 + 8) _setAsyncResultHandle:0];
  [0 drain];
  if (v195 < 1)
  {
    goto LABEL_358;
  }

  if (!v135)
  {
    if (v193)
    {
      v141 = *(v193 + 80);
      v137 = objc_autoreleasePoolPush();
      if (v141)
      {
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v142 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              v143 = CFAbsoluteTimeGetCurrent();
              *buf = 134217984;
              *&buf[4] = v143 - Current;
              _os_log_error_impl(&dword_18565F000, v142, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", buf, 0xCu);
            }
          }

          else
          {
            v150 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              v151 = CFAbsoluteTimeGetCurrent();
              *buf = 134217984;
              *&buf[4] = v151 - Current;
              _os_log_impl(&dword_18565F000, v150, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v152 = CFAbsoluteTimeGetCurrent();
          v153 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
LABEL_353:
          v165 = 1;
LABEL_356:
          _NSCoreDataLog_console(v165, v153, v152 - Current);
          goto LABEL_357;
        }

        v152 = CFAbsoluteTimeGetCurrent();
        v153 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
        goto LABEL_355;
      }
    }

    else
    {
      v137 = objc_autoreleasePoolPush();
    }

    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v161 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          v162 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *&buf[4] = v162 - Current;
          _os_log_error_impl(&dword_18565F000, v161, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: %.4fs.\n", buf, 0xCu);
        }
      }

      else
      {
        v163 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          v164 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *&buf[4] = v164 - Current;
          _os_log_impl(&dword_18565F000, v163, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: %.4fs.\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v152 = CFAbsoluteTimeGetCurrent();
      v153 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
      goto LABEL_353;
    }

    v152 = CFAbsoluteTimeGetCurrent();
    v153 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
LABEL_355:
    v165 = 4;
    goto LABEL_356;
  }

  if (v193)
  {
    v136 = *(v193 + 80);
    v137 = objc_autoreleasePoolPush();
    if (v136)
    {
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v138 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = CFAbsoluteTimeGetCurrent();
            v140 = [(_PFArray *)allocatora count];
            *buf = 134218240;
            *&buf[4] = v139 - Current;
            v211 = 1024;
            LODWORD(v212) = v140;
            _os_log_error_impl(&dword_18565F000, v138, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
          }
        }

        else
        {
          v144 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            v145 = CFAbsoluteTimeGetCurrent();
            v146 = [(_PFArray *)allocatora count];
            *buf = 134218240;
            *&buf[4] = v145 - Current;
            v211 = 1024;
            LODWORD(v212) = v146;
            _os_log_impl(&dword_18565F000, v144, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v147 = CFAbsoluteTimeGetCurrent();
        v148 = [(_PFArray *)allocatora count];
        v149 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
        goto LABEL_339;
      }

      v147 = CFAbsoluteTimeGetCurrent();
      v148 = [(_PFArray *)allocatora count];
      v149 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
LABEL_341:
      v160 = 4;
      goto LABEL_342;
    }
  }

  else
  {
    v137 = objc_autoreleasePoolPush();
  }

  _pflogInitialize(4);
  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v154 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        v155 = CFAbsoluteTimeGetCurrent();
        v156 = [(_PFArray *)allocatora count];
        *buf = 134218240;
        *&buf[4] = v155 - Current;
        v211 = 1024;
        LODWORD(v212) = v156;
        _os_log_error_impl(&dword_18565F000, v154, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
      }
    }

    else
    {
      v157 = _PFLogGetLogStream(4);
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v158 = CFAbsoluteTimeGetCurrent();
        v159 = [(_PFArray *)allocatora count];
        *buf = 134218240;
        *&buf[4] = v158 - Current;
        v211 = 1024;
        LODWORD(v212) = v159;
        _os_log_impl(&dword_18565F000, v157, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
      }
    }
  }

  if (!_pflogging_catastrophic_mode)
  {
    v147 = CFAbsoluteTimeGetCurrent();
    v148 = [(_PFArray *)allocatora count];
    v149 = "total fetch execution time: %.4fs for %d rows.";
    goto LABEL_341;
  }

  v147 = CFAbsoluteTimeGetCurrent();
  v148 = [(_PFArray *)allocatora count];
  v149 = "total fetch execution time: %.4fs for %d rows.";
LABEL_339:
  v160 = 1;
LABEL_342:
  _NSCoreDataLog_console(v160, v149, v147 - Current, v148);
LABEL_357:
  objc_autoreleasePoolPop(v137);
LABEL_358:
  v166 = *MEMORY[0x1E69E9840];
  return allocatora;
}

void sub_18566C954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (v32)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_18566CC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18566CD34);
}

void sub_18566CC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  if (a2)
  {
    v19 = objc_begin_catch(a1);
    if (a2 == 3)
    {
      v20 = v19;
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v22 = [v20 userInfo];
        *(v17 - 176) = 138412546;
        *(v17 - 172) = v20;
        *(v17 - 164) = 2112;
        *(v17 - 162) = v22;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: exception raised during multi-threaded fetch %@ (%@)\n", (v17 - 176), 0x16u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = [v20 userInfo];
        *(v17 - 176) = 138412546;
        *(v17 - 172) = v20;
        *(v17 - 164) = 2112;
        *(v17 - 162) = v24;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: exception raised during multi-threaded fetch %@ (%@)", (v17 - 176), 0x16u);
      }

      objc_exception_rethrow();
    }

    v25 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *(v17 - 176) = 0;
      _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: unidentifiable exception during multi-threaded fetch\n", (v17 - 176), 2u);
    }

    v26 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *(v17 - 176) = 0;
      _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: unidentifiable exception during multi-threaded fetch", (v17 - 176), 2u);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18566CCFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18566CD58);
}

void sub_18566CD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      if (!v30)
      {
        JUMPOUT(0x18566C2A8);
      }

      JUMPOUT(0x18566C2A0);
    }

    objc_begin_catch(a1);

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18566CD3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CD54);
  }

  _Unwind_Resume(a1);
}

void sub_18566CD64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CD74);
  }

  _Unwind_Resume(a1);
}

void sub_18566CD80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CD9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18566CDAC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CDB4);
  }

  JUMPOUT(0x18566CA74);
}

void sub_18566CE2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566CDECLL);
  }

  _Unwind_Resume(a1);
}

void sub_18566CE44(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CE5CLL);
  }

  JUMPOUT(0x18566CA74);
}

void sub_18566CFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566D018);
  }

  _Unwind_Resume(a1);
}

void sub_18566CFE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x18566B450);
  }

  _Unwind_Resume(a1);
}

void sub_18566CFF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18566D000);
  }

  objc_terminate();
}

void sub_18566D00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566D014);
  }

  _Unwind_Resume(a1);
}

_PFArray *_executeFetchRequest(void *a1)
{
  v1 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        dispatch_assert_queue_V2(v3);
      }

      *(v2 + 312) |= 0x1000u;
    }
  }

  v4 = _newFetchedRowsForRequest(v1);
  if (v4 && [v1 shouldUseBatches])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [(_PFArray *)v4 count];
      v6 = v5;
      MEMORY[0x1EEE9AC00](v5);
      v9 = v15 - v8;
      if (v5 >= 0x201uLL)
      {
        v9 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v15 - v8, 8 * v7);
      }

      [(_PFArray *)v4 getObjects:v9 range:0, v5];
      v10 = [[_PFArray alloc] initWithObjects:v9 count:v5 andFlags:27];
      if (v6 >= 0x201)
      {
        NSZoneFree(0, v9);
      }

      v4 = v10;
    }

    if (v1)
    {
      v11 = v1[4];
      v1 = v1[24];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[_PFBatchFaultingArray alloc] initWithPFArray:v4 andRequest:v1 andContext:v11];

    v4 = v12;
  }

  result = v4;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _PFFastEntityClass(unint64_t result)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_20;
  }

  v1 = result;
  if (atomic_load((result + 56)))
  {
    result = atomic_load((result + 56));
    goto LABEL_20;
  }

  v3 = objc_opt_class();
  v4 = [(atomic_ullong *)v1 managedObjectClassName];
  v5 = _PFClassFromString(v4);
  if (!v5)
  {
    if (([@"NSManagedObject" isEqualToString:v4] & 1) == 0)
    {
      PFUseToolchainBehaviors();
    }

    goto LABEL_13;
  }

  v6 = v5;
  if (v5 != v3 && ([(objc_class *)v5 isSubclassOfClass:v3]& 1) == 0)
  {
    v14 = [(atomic_ullong *)v1 name];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"<nil entity>";
    }

    ImageName = class_getImageName(v6);
    if (ImageName)
    {
      v17 = ImageName;
    }

    else
    {
      v17 = "<unknown library>";
    }

    Name = class_getName(v6);
    v19 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_36;
    }

    v20 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v22 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
LABEL_35:
        *buf = 136315650;
        v38 = class_getName(v6);
        v39 = 2112;
        v40 = v15;
        v41 = 2080;
        v42 = v17;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Class '%s' for entity '%@' is not a subclass of NSManagedObject.  It was loaded from '%s'\n", buf, 0x20u);
      }
    }

    else if (v22)
    {
      goto LABEL_35;
    }

LABEL_36:
    v30 = class_getName(v6);
    _NSCoreDataLog_console(1, "Class '%s' for entity '%@' is not a subclass of NSManagedObject.  It was loaded from '%s'", v30, v15, v17);
    if (Name)
    {
      v31 = Name;
    }

    else
    {
      v31 = "<unknown class>";
    }

    objc_autoreleasePoolPop(v19);
    v36[0] = v15;
    v35[0] = @"entityName";
    v35[1] = @"className";
    v36[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
    v35[2] = @"sourceLibrary";
    v36[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v33 = MEMORY[0x1E695DF30];
    v34 = *MEMORY[0x1E695D930];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a subclass of NSManagedObject.", -[atomic_ullong managedObjectClassName](v1, "managedObjectClassName")];
    v27 = v33;
    v28 = v34;
    v29 = v32;
    goto LABEL_40;
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
  {
    v7 = [(objc_class *)v6 instanceMethodForSelector:sel_isEqual_];
    if (v7 == [NSManagedObject instanceMethodForSelector:sel_isEqual_])
    {
      v8 = [(objc_class *)v6 instanceMethodForSelector:sel_hash];
      if (v8 == [NSManagedObject instanceMethodForSelector:sel_hash])
      {
        goto LABEL_10;
      }

      v23 = MEMORY[0x1E695DF30];
      v24 = *MEMORY[0x1E695D930];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Class '%s' for entity '%@' has an illegal override of NSManagedObject -hash", class_getName(v6), -[atomic_ullong name](v1, "name")];
    }

    else
    {
      v23 = MEMORY[0x1E695DF30];
      v24 = *MEMORY[0x1E695D930];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Class '%s' for entity '%@' has an illegal override of NSManagedObject -isEqual:", class_getName(v6), -[atomic_ullong name](v1, "name")];
    }

    v26 = v25;
    v27 = v23;
    v28 = v24;
    v29 = 0;
LABEL_40:
    objc_exception_throw([v27 exceptionWithName:v28 reason:v26 userInfo:v29]);
  }

LABEL_10:
  v3 = v6;
LABEL_13:
  if (([(objc_class *)v3 _isGeneratedClass]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(objc_class *)v3 classForEntity:v1];
    v3 = v9;
  }

  v10 = 0;
  v11 = v1 + 7;
  atomic_compare_exchange_strong(v11, &v10, v3);
  if (v10)
  {
    v12 = atomic_load(v11);
    if (v9 != v12)
    {
      [(objc_class *)v9 _entityDeallocated];
    }
  }

  result = atomic_load(v11);
LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id _PFfastOidRetain(int a1, id a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a2);
    if (*(object_getIndexedIvars(Class) + 4))
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if ((v5 & 0x8000) != 0)
          {
            break;
          }

          v6 = *(a2 + 1);
          atomic_compare_exchange_strong(a2 + 1, &v6, v5 + 1);
          if (v6 == v5)
          {
            return a2;
          }
        }

        v7 = *(a2 + 1);
        os_unfair_lock_lock_with_options();
        v8 = v7;
        atomic_compare_exchange_strong_explicit(a2 + 1, &v8, v7, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          break;
        }

        os_unfair_lock_unlock(&_extraRetainsLock);
      }

      NSIncrementExtraRefCount(a2);
      os_unfair_lock_unlock(&_extraRetainsLock);
    }

    else
    {
      atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    }
  }

  return a2;
}

void _PFCMT_SetValue(uint64_t a1, void *a2, const void *a3)
{
  if (a2)
  {
    if ([a2 isTemporaryID])
    {
      v7 = (a1 + 16);
      v6 = *(a1 + 16);
      if (v6)
      {
LABEL_31:
        CFDictionarySetValue(v6, a2, a3);
        return;
      }

      memset(&keyCallBacks, 0, 24);
      *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
      keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
      memset(&v23, 0, sizeof(v23));
      v23.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
      v8 = *(a1 + 48) & 3;
      if (v8 != 1)
      {
        *&v23.retain = *(MEMORY[0x1E695E9E8] + 8);
        if (v8 == 3)
        {
          *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
        }
      }

      *v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &v23);
      _CFDictionarySetCapacity();
    }

    else
    {
      v9 = _PFModelMapSlotForEntity(*(a1 + 56), [a2 entity]);
      v10 = v9;
      if (v9 < 0)
      {
        v13 = v9 & 0x7FFFFFFF;
        v18 = *(a1 + 24);
        if (!v18)
        {
          v19 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v19 = malloc_default_zone();
          }

          v18 = malloc_type_zone_calloc(v19, 1uLL, 8 * *(a1 + 8), 0x80040B8603338uLL);
          *(a1 + 24) = v18;
        }

        v6 = v18[v13];
        if (v6)
        {
          goto LABEL_31;
        }

        v20 = 0;
        memset(&keyCallBacks, 0, 24);
        *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
        keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
        memset(&v23, 0, sizeof(v23));
        v23.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
        v21 = *(a1 + 48) & 3;
        if (v21 != 1)
        {
          *&v23.retain = *(MEMORY[0x1E695E9E8] + 8);
          if (v21 == 3)
          {
            *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
          }

          v20 = &v23;
        }

        *(*(a1 + 24) + 8 * v13) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, v20);
        v22 = *(*(a1 + 24) + 8 * v13);
        _CFDictionarySetCapacity();
        v17 = *(a1 + 24);
      }

      else
      {
        v11 = *(a1 + 32);
        if (!v11)
        {
          v12 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v12 = malloc_default_zone();
          }

          v11 = malloc_type_zone_calloc(v12, 1uLL, 8 * *(a1 + 8), 0x80040B8603338uLL);
          *(a1 + 32) = v11;
        }

        v13 = v10 & 0x7FFFFFFF;
        v6 = v11[v13];
        if (v6)
        {
          goto LABEL_31;
        }

        v14 = 0;
        memset(&keyCallBacks, 0, 24);
        keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
        keyCallBacks.equal = _PFObjectIDFastEquals64;
        keyCallBacks.hash = _PFObjectIDFastHash64;
        memset(&v23, 0, sizeof(v23));
        v23.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
        v15 = *(a1 + 48) & 3;
        if (v15 != 1)
        {
          *&v23.retain = *(MEMORY[0x1E695E9E8] + 8);
          if (v15 == 3)
          {
            *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
          }

          v14 = &v23;
        }

        *(*(a1 + 32) + 8 * v13) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, v14);
        v16 = *(*(a1 + 32) + 8 * v13);
        _CFDictionarySetCapacity();
        v17 = *(a1 + 32);
      }

      v7 = (v17 + 8 * v13);
    }

    v6 = *v7;
    goto LABEL_31;
  }
}

uint64_t _PF_HasCustomPrimitiveProperties(uint64_t a1)
{
  v1 = (*(a1 + 120) >> 9) & 3;
  if (v1 <= 1)
  {
    v3 = [objc_msgSend(a1 "properties")];
    v4 = *(*(a1 + 152) + 8);
    if (v4)
    {
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = _resolveForSelectorAndType(a1, sel__createValuePrimitiveGetterWithContainerClassID_key_, qword_1ED4BE9A8, 1u);
      if (!v3)
      {
LABEL_9:
        v6 = **(a1 + 152);
        if (v6)
        {
          if (v3)
          {
            goto LABEL_11;
          }

          goto LABEL_13;
        }

        v6 = _resolveForSelectorAndType(a1, sel__createValuePrimitiveSetterWithContainerClassID_key_, _MergedGlobals_70, 0);
        if (!v3)
        {
LABEL_13:
          v7 = *(a1 + 120) & 0xFFFFF9FF | 0x400;
LABEL_15:
          *(a1 + 120) = v7;
          v1 = v7 >> 9;
          return v1 & 1;
        }

LABEL_11:
        while (!*v6)
        {
          ++v6;
          if (!--v3)
          {
            goto LABEL_13;
          }
        }

LABEL_14:
        v7 = *(a1 + 120) | 0x600;
        goto LABEL_15;
      }
    }

    v5 = v3;
    while (!*v4)
    {
      ++v4;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_14;
  }

  return v1 & 1;
}

uint64_t _PFObjectIDFastEquals64(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a1);
    if (Class == objc_opt_class())
    {
      v6 = object_getClass(a1);
      if ((*(object_getIndexedIvars(v6) + 4) & 2) != 0)
      {
        v7 = object_getClass(a1);
        if (*(object_getIndexedIvars(v7) + 4))
        {
          v8 = *(a1 + 8) >> 16;
        }

        else
        {
          v8 = *(a1 + 16);
        }

        v9 = object_getClass(a2);
        if (*(object_getIndexedIvars(v9) + 4))
        {
          v10 = *(a2 + 8) >> 16;
        }

        else
        {
          v10 = *(a2 + 16);
        }

        return v8 == v10;
      }

      else
      {
        return [*(a1 + 16) isEqual:*(a2 + 16)];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id _PFFaultHandlerLookupRow(_DWORD *a1, uint64_t a2, id *a3, int a4, uint64_t a5)
{
  v9 = a1;
  v122 = *MEMORY[0x1E69E9840];
  v10 = a1[4];
  if (((v10 >> 15) & 3 | 4) != 5 && (v10 & 0x80) == 0)
  {
    goto LABEL_129;
  }

  v11 = *(a1 + 5);
  values = v11;
  v12 = _PFEntityForManagedObject(a1);
  if (!v12)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An NSManagedObject must have a valid NSEntityDescription." userInfo:0]);
  }

  v13 = v12;
  v14 = *(v9 + 4);
  v15 = [v11 isTemporaryID];
  v16 = v15;
  v86 = a3;
  v85 = a4;
  if (v15)
  {
    if (!a2 || (v17 = atomic_load((a2 + 48)), (v17 & 1) == 0))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v87 = 0;
      goto LABEL_70;
    }
  }

  v87 = 0;
  if ((v14 & 0x12) != 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_70;
  }

  [(NSManagedObjectContext *)a2 lockObjectStore];
  if (a2)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [*(a2 + 32) newValuesForObjectWithID:values withContext:a2 error:&v87];
    v23 = v87;
    objc_autoreleasePoolPop(v21);
    if (v22)
    {
      if (*(v9 + 17) & 2) != 0 || ([values isTemporaryID])
      {
        v24 = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        memset(buf, 0, sizeof(buf));
        v27 = _PFStackAllocatorCreate(buf, 1024);
        v28 = CFArrayCreate(v27, &values, 1, 0);
        [*(a2 + 32) managedObjectContextDidRegisterObjectsWithIDs:v28 generation:{objc_msgSend(a2, "_queryGenerationToken")}];
        if (*&buf[24] && v28)
        {
          CFRelease(v28);
        }

        v24 = 0;
        v19 = 0;
        v20 = 0;
        *(v9 + 4) |= 0x200u;
      }

      goto LABEL_66;
    }
  }

  if (v87 && [v87 code] != 133000)
  {
    if ([objc_msgSend(a2 "persistentStoreCoordinator")])
    {
      [a2 _setFaultingError:v87];
      v25 = [a2 persistentStoreCoordinator];
      v26 = [(NSPersistentStoreCoordinator *)v25 _handleFaultingError:v87 fromContext:a2];
      if (v26 != 1)
      {
        if (v26 != 2)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSPersistentStoreCoordinatorDelegate returned an illegal NSPersistentStoreCoordinatorDelegateErrorAction" userInfo:0]);
        }

        goto LABEL_55;
      }
    }

    else
    {
      v22 = getprogname();
      if (!v22)
      {
        v24 = 0;
        v19 = 0;
        goto LABEL_43;
      }

      if (!strncmp("avatarsd", v22, 8uLL) || !strncmp("CalendarAgent", v22, 0xDuLL))
      {
        [a2 _setFaultingError:v87];
      }
    }

    v24 = 0;
    v19 = 0;
    v22 = 0;
LABEL_43:
    v20 = 1;
    goto LABEL_66;
  }

  if ((v16 & 1) != 0 || (*(v9 + 16) & 0x24) != 0)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    v29 = a3;
    v30 = a4;
    if ((a4 & 1) == 0)
    {
      goto LABEL_56;
    }

    v31 = [*(v9 + 4) _delegate];
    goto LABEL_40;
  }

  if ((*(a2 + 41) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  v29 = a3;
  v30 = a4;
  if (a4)
  {
    v31 = [a2 _delegate];
LABEL_40:
    v32 = v31;
    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v13[12] + 24 + 8 * a5);
    }

    if (v31 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v34 = [v32 context:a2 shouldHandleInaccessibleFault:v9 forObjectID:values andTrigger:v33];
      if (v34 > 1)
      {
        if (v34 != 2)
        {
          if (v34 != 3)
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An NSManagedObjectContext delegate returned an illegal result" userInfo:0]);
          }

          v35 = objc_autoreleasePoolPush();
          if (!_NSCoreDataIsOSLogEnabled(1))
          {
            goto LABEL_134;
          }

          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = values;
LABEL_136:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: An NSManagedObjectContext delegate overrode fault handling behavior to silently substitute nil/0 for all property values for the object with ID '%@'.  This is very unwise.\n", buf, 0xCu);
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = values;
              goto LABEL_136;
            }
          }

LABEL_134:
          _NSCoreDataLog_console(1, "An NSManagedObjectContext delegate overrode fault handling behavior to silently substitute nil/0 for all property values for the object with ID '%@'.  This is very unwise.", values);
          objc_autoreleasePoolPop(v35);
LABEL_20:
          v24 = 0;
          v19 = 0;
          v20 = 0;
          v22 = 0;
          goto LABEL_66;
        }

LABEL_55:
        v24 = 0;
        v20 = 0;
        v22 = 0;
        v19 = 1;
        goto LABEL_66;
      }
    }

    else if ([a2 shouldHandleInaccessibleFault:v9 forObjectID:values triggeredByProperty:v33])
    {
      goto LABEL_55;
    }
  }

LABEL_56:
  *(v9 + 4) = *(v9 + 4) & 0xFFFC7FFF | 0x8000;
  v37 = MEMORY[0x1E695DF20];
  if (v87)
  {
    v38 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
    v39 = [v37 dictionaryWithObjectsAndKeys:{v38, @"NSAffectedObjectsErrorKey", v87, *MEMORY[0x1E696AA08], 0}];
  }

  else
  {
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v9), @"NSAffectedObjectsErrorKey", 0}];
  }

  v40 = v39;
  if (v30)
  {
    v82 = values;
    if (!values)
    {
      v82 = @"<UNKNOWN objectID>";
    }

    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData could not fulfill a fault for '%@'", v82];
    v84 = [_NSCoreDataException exceptionWithName:133000 code:v83 reason:v40 userInfo:?];
    objc_exception_throw(v84);
  }

  if (v29)
  {
    if (v87)
    {

      v87 = 0;
    }

    v41 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = [v41 initWithDomain:*MEMORY[0x1E696A250] code:133000 userInfo:v40];
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v87 = v42;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v22 = 0;
  }

  v24 = 1;
LABEL_66:
  [(NSManagedObjectContext *)a2 unlockObjectStore];
  if ((v24 & 1) == 0)
  {
    v18 = v22;
LABEL_70:
    v45 = [v18 knownKeyValuesPointer];
    if (v18)
    {
      v46 = v45 == 0;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    if (v46)
    {
      v45 = [(NSManagedObjectContext *)a2 lockObjectStore];
    }

    v48 = v19 | v20;
    if ((v19 | v20) == 1)
    {
      v49 = *(v9 + 4);
      v50 = (v49 & 0x2000) == 0;
      if ((v49 & 0x2000) == 0)
      {
        v49 |= 0x2000u;
        *(v9 + 4) = v49;
      }

      if ((v49 & 0x38000) == 0x28000)
      {
        [(NSFaultHandler *)_insertion_fault_handler turnObject:v9 intoFaultWithContext:a2];
      }
    }

    else
    {
      v50 = 0;
    }

    _PFFaultHandlerFulfillFault(v45, v9, a2, v18, v48 ^ 1);
    if (v48)
    {
      if (![v9 managedObjectContext])
      {
        [(NSManagedObjectContext *)a2 _forceRegisterLostFault:v9];
      }

      if (v19)
      {
        [a2 deleteObject:v9];
      }

      if (v50)
      {
        v44 = 0;
        *(v9 + 4) &= ~0x2000u;
        goto LABEL_94;
      }
    }

    else
    {
      v20 = 0;
    }

    v44 = 0;
LABEL_94:
    v22 = v18;
    v43 = v47;
    if (!v18)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v43 = 0;
  v44 = 1;
  if (v22)
  {
LABEL_95:
  }

LABEL_96:
  if (v43)
  {
    [(NSManagedObjectContext *)a2 unlockObjectStore];
  }

  v51 = v87;
  if ((v20 | v44))
  {
    if (!v87)
    {
      if (!v86)
      {
        goto LABEL_127;
      }

      v52 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v52, OS_LOG_TYPE_ERROR, "CoreData: fault: faulting failed to record an error for an serious condition\n", buf, 2u);
      }

      v53 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      *buf = 0;
      v54 = "CoreData: faulting failed to record an error for an serious condition";
      v55 = v53;
      v56 = 2;
LABEL_124:
      _os_log_fault_impl(&dword_18565F000, v55, OS_LOG_TYPE_FAULT, v54, buf, v56);
      goto LABEL_127;
    }

    if (v86)
    {
      *v86 = v87;
      goto LABEL_127;
    }

    if (v85)
    {
      v57 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_118;
      }

      v58 = _pflogging_catastrophic_mode == 0;
      v59 = _PFLogGetLogStream(1);
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
      if (v58)
      {
        if (!v60)
        {
          goto LABEL_118;
        }
      }

      else if (!v60)
      {
        goto LABEL_118;
      }

      v73 = v87;
      v74 = [v87 userInfo];
      *buf = 138412546;
      *&buf[4] = v73;
      *&buf[12] = 2112;
      *&buf[14] = v74;
      _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: Unhandled error occurred during faulting: %@ (%@)\n", buf, 0x16u);
LABEL_118:
      _NSCoreDataLog_console(1, "Unhandled error occurred during faulting: %@ (%@)", v87, [v87 userInfo]);
      objc_autoreleasePoolPop(v57);
      if (([objc_msgSend(v87 "domain")] & 1) == 0 && objc_msgSend(v87, "code") != 134071)
      {
        v75 = MEMORY[0x1E696AEC0];
        v76 = [v87 domain];
        v77 = [v87 code];
        v78 = [v75 stringWithFormat:@"Unhandled error (%@, %ld) occurred during faulting and was thrown: %@", v76, v77, v87];
        v79 = [v87 code];
        v89 = *MEMORY[0x1E696AA08];
        v90 = v87;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v81 = [_NSCoreDataException exceptionWithName:v79 code:v78 reason:v80 userInfo:?];
        -[_NSCoreDataException _setDomain:](v81, [v87 domain]);
        objc_exception_throw(v81);
      }

      v65 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v71 = [v87 domain];
        v72 = [v87 code];
        *buf = 138412802;
        *&buf[4] = v71;
        *&buf[12] = 2048;
        *&buf[14] = v72;
        *&buf[22] = 2112;
        *&buf[24] = v87;
        _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: fault: Unhandled error (%@, %ld) occurred during faulting and was ignored: %@\n", buf, 0x20u);
      }

      v66 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      v67 = [v87 domain];
      v68 = [v87 code];
      *buf = 138412802;
      *&buf[4] = v67;
      *&buf[12] = 2048;
      *&buf[14] = v68;
      *&buf[22] = 2112;
      *&buf[24] = v87;
      v54 = "CoreData: Unhandled error (%@, %ld) occurred during faulting and was ignored: %@";
      v55 = v66;
      v56 = 32;
      goto LABEL_124;
    }

    if ([v87 code] == 133000)
    {
      goto LABEL_127;
    }

    v61 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v62 = _pflogging_catastrophic_mode == 0;
      v63 = _PFLogGetLogStream(1);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
      if (v62)
      {
        if (v64)
        {
          *buf = 138412290;
          *&buf[4] = v87;
          goto LABEL_132;
        }
      }

      else if (v64)
      {
        *buf = 138412290;
        *&buf[4] = v87;
LABEL_132:
        _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error: Client ill advisedly ignored an I/O or unknown error from faulting: %@\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "Client ill advisedly ignored an I/O or unknown error from faulting: %@", v87);
    objc_autoreleasePoolPop(v61);
LABEL_127:
    if (v44)
    {
      v9 = 0;
    }
  }

LABEL_129:
  v69 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18566EFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, void *a16)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v18 = objc_begin_catch(exception_object);
      if ((a14 & 1) == 0)
      {
        if (a15 && !a16)
        {
          v19 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSManagedObjectContext *)v17 _handleError:v19 withError:&a16];
            v20 = a16;
          }

          else
          {
            v21 = objc_alloc(MEMORY[0x1E695DF20]);
            [MEMORY[0x1E695DEC8] arrayWithObject:v16];
            v22 = [v21 initWithObjectsAndKeys:v19];
            v23 = objc_alloc(MEMORY[0x1E696ABC0]);
            a16 = [v23 initWithDomain:*MEMORY[0x1E696A250] code:133000 userInfo:v22];
          }
        }

        objc_end_catch();
        JUMPOUT(0x18566E8C4);
      }

      a16 = 0;
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x18566E9C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_18566F190(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566F1A4);
  }

  JUMPOUT(0x18566F1D0);
}

void sub_18566F1B8()
{
  if (v0)
  {
    JUMPOUT(0x18566F1C0);
  }

  JUMPOUT(0x18566F1D0);
}

void sub_18566F1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18566F1CCLL);
  }

  objc_terminate();
}

id _PFEntityForManagedObject(id result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 5);
    if (!v2 || (result = [v2 entity]) == 0)
    {
      Class = object_getClass(v1);

      return _PFEntityForClass(Class);
    }
  }

  return result;
}

id *_PF_FulfillDeferredFault(id **a1, unint64_t a2)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_fulfillFault_withContext_forIndex_);
  }

  if ((a1[2] & 0x30000) == 0x10000 || (a1[2] & 0x80) != 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = _PFEntityForManagedObject(a1);
  v8 = v7[14];
  v9 = v8[2];
  v11 = a2 >= v9;
  v10 = a2 - v9;
  v11 = !v11 || v10 >= v8[3];
  v12 = !v11;
  v14 = *(a1 + 4);
  v13 = *(a1 + 5);
  v15 = v13 ? a1 + v13 : 0;
  v16 = &v15[-((v14 >> 22) & 0x3FC)];
  v17 = a2 >> 3;
  if ((v14 & 0x38000) == 0x8000 || v12)
  {
    [_insertion_fault_handler fulfillFault:a1 withContext:v5 forIndex:a2];
    if (((v16[v17] >> (a2 & 7)) | v12))
    {
      return 0;
    }
  }

  v18 = v8[12];
  v19 = v8[13];
  v20 = _kvcPropertysPrimitiveSetters(v7);
  v11 = a2 >= v18;
  v21 = a2 - v18;
  v22 = *(v20 + 8 * a2);
  if (!v11 || v21 >= v19)
  {
    v55 = *(v20 + 8 * a2);
    v24 = v8[28];
    v11 = a2 >= v24;
    v25 = a2 - v24;
    v27 = v11 && v25 < v8[29];
    v28 = v8[18];
    v11 = a2 >= v28;
    v29 = a2 - v28;
    v31 = v11 && v29 < v8[19];
    v32 = v8[16];
    v33 = off_1E6EC0C40;
    v11 = a2 >= v32;
    v34 = a2 - v32;
    if (!v11 || v34 >= v8[17])
    {
      v35 = v8[24];
      if (a2 - v35 >= v8[25] || a2 < v35)
      {
        v33 = off_1E6EC0C48;
      }
    }

    v37 = v8[26];
    v11 = a2 >= v37;
    v38 = a2 - v37;
    v40 = v11 && v38 < v8[27];
    if (((v27 | v31) & 1) == 0 && !v40)
    {
      if (*(_kvcPropertysPrimitiveGetters(v7) + 8 * a2))
      {
        v41 = _NSGetUsingKeyValueGetter();
      }

      else
      {
        snapshot_get_value_as_object(a1[3], a2);
      }

      v5 = v41;
      goto LABEL_77;
    }

    v44 = (a1[2] & 0x12) == 0;
    v45 = [v6 isTemporaryID];
    v46 = v5 != 0;
    v47 = *(v7[12] + 24 + 8 * a2);
    v48 = (v46 | ~v45) & v44 | v27;
    v49 = off_1E6EC0C38;
    if (!v27)
    {
      v49 = v33;
    }

    v50 = *v49;
    v51 = objc_opt_class();
    v5 = [_PFAllocateObject(v51 0)];
    _PF_CopyOnWrite_Snapshot(a1);
    if (v55)
    {
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  if (!v5)
  {
LABEL_77:
    v16[v17] |= 1 << (a2 & 7);
    return v5;
  }

  v42 = *(_kvcPropertysPrimitiveGetters(v7) + 8 * a2);
  if (v42)
  {
    v43 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(a1[3], a2);
  }

  v52 = v43;
  if (v43 != _CD_ScalarNull)
  {
    if (v43)
    {
      goto LABEL_65;
    }

    goto LABEL_76;
  }

  [_insertion_fault_handler fulfillFault:a1 withContext:v5 forIndex:a2];
  result = a1[3];
  if (result)
  {
    if (((v16[v17] >> (a2 & 7)) & 1) == 0)
    {
      if (v42)
      {
        v54 = _NSGetUsingKeyValueGetter();
      }

      else
      {
        snapshot_get_value_as_object(result, a2);
      }

      v52 = v54;
      if (v54)
      {
LABEL_65:
        v5 = [NSManagedObjectContext _retainedObjectWithID:v5 optionalHandler:v52 withInlineStorage:0];
        _PF_CopyOnWrite_Snapshot(a1);
        if (v22)
        {
LABEL_66:
          _NSSetUsingKeyValueSetter();

          goto LABEL_77;
        }

LABEL_67:
        snapshot_set_value_as_object(a1[3], a2, v5);
        goto LABEL_77;
      }

LABEL_76:
      v5 = 0;
      goto LABEL_77;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void _PFFaultHandlerFulfillFault(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v5 = (*(a2 + 16) >> 15) & 7;
  if (((*(a2 + 16) >> 15) & 3 | 4) != 5)
  {
    return;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a2 + 16) & 0xFFFC7FFF | 0x18000;
  *(a2 + 16) = v11;
  if ((v11 & 0x100) == 0)
  {
    [a2 willFireFault];
  }

  v12 = *(a2 + 40);
  v13 = _PFEntityForManagedObject(a2);
  context = v10;
  v122 = a5;
  v121 = v11;
  v116 = v12;
  if ((v11 & 0x12) != 0)
  {
    v14 = 1;
  }

  else
  {
    if (![v12 isTemporaryID])
    {
      v128 = 0;
      goto LABEL_14;
    }

    if (a3)
    {
      v15 = a4 == 0;
    }

    else
    {
      v15 = 1;
    }

    v14 = v15;
  }

  v128 = v14;
LABEL_14:
  v126 = a4;
  v16 = v13[13];
  v132 = v13[14];
  v17 = v13[12];
  v117 = *(v16 + 40);
  v18 = _kvcPropertysPrimitiveSetters(v13);
  v19 = *(a2 + 48);
  if (!v19 || !*v19 || (*(a2 + 17) & 0x20) != 0)
  {
    HasCustomPrimitiveProperties = _PF_HasCustomPrimitiveProperties(v13);
    v20 = 0;
    goto LABEL_22;
  }

  v20 = *(v13[19] + 48);
  HasCustomPrimitiveProperties = _PF_HasCustomPrimitiveProperties(v13);
  if (!v20)
  {
LABEL_22:
    v21 = 1;
    goto LABEL_23;
  }

  if (a3)
  {
    ++*(a3 + 46);
  }

  *(a2 + 16) |= 0x1000u;
  [a2 _willChangeValuesForKeys:v20];
  v21 = 0;
LABEL_23:
  v125 = a3;
  v115 = v20;
  v120 = v21;
  v118 = v5;
  if (v128)
  {
    v129 = 0;
LABEL_31:
    v24 = *(a2 + 24);
    v27 = v24;
    _PF_CopyOnWrite_Snapshot(a2);
    if (v5 == 5)
    {
      v119 = v24;
    }

    else
    {

      v119 = 0;
      v24 = 0;
    }

    HasCustomPrimitiveProperties = 1;
    v131 = 1;
    goto LABEL_40;
  }

  v22 = [v126 _snapshot];
  if (!v22)
  {
    v129 = [v126 knownKeyValuesPointer];
    *(a2 + 12) = [v126 _versionNumber];
    goto LABEL_31;
  }

  v23 = v22;
  *(a2 + 12) = *(v22 + 12);
  v24 = *(a2 + 24);
  v25 = v24;
  if (v24 == v23)
  {
    if (v5 == 5)
    {
      v131 = 0;
      v129 = 0;
      v119 = v24;
    }

    else
    {

      v119 = 0;
      v131 = 0;
      v129 = 0;
    }

    v24 = 0;
  }

  else
  {
    *(a2 + 24) = v23;
    if (v5 == 5)
    {
      v131 = 0;
      v129 = 0;
      v119 = v24;
    }

    else
    {

      v119 = 0;
      v131 = 0;
      v129 = 0;
    }
  }

LABEL_40:
  v130 = v17 + 24;
  v29 = v132[6];
  v28 = v132[7];
  v30 = v28 + v29;
  v31 = *(a2 + 20);
  if (v31)
  {
    v32 = a2 + v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32 - 4 * *(a2 + 19);
  if (v29 < v30)
  {
    v34 = v30 - 1;
    v35 = v29 >> 3;
    v36 = (v30 - 1) >> 3;
    v37 = 255 << (v29 & 7);
    if (v36 == v29 >> 3)
    {
      v38 = (0xFFu >> (~v34 & 7)) & v37;
      v36 = v29 >> 3;
    }

    else
    {
      v39 = (v33 + v35);
      *v39 |= v37;
      if (v35 + 1 < v36)
      {
        memset(v39 + 1, 255, (v36 - v35 - 2) + 1);
      }

      v38 = 0xFFu >> (~v34 & 7);
    }

    *(v33 + v36) |= v38;
  }

  v124 = &v114;
  if ((v128 & 1) == 0)
  {
    if (HasCustomPrimitiveProperties)
    {
      if (v131)
      {
        if (v29 < v30)
        {
          do
          {
            if (v129)
            {
              v42 = *(v129 + 8 * v29);
            }

            else
            {
              v42 = [v126 valueForKey:*(v117 + 8 * v29)];
            }

            v43 = *(v18 + 8 * v29);
            _PF_CopyOnWrite_Snapshot(a2);
            if (v43)
            {
              _NSSetUsingKeyValueSetter();
            }

            else
            {
              snapshot_set_value_as_object(*(a2 + 24), v29, v42);
            }

            ++v29;
            --v28;
          }

          while (v28);
        }
      }

      else if (v29 < v30)
      {
        v48 = (v117 + 8 * v29);
        v49 = (v129 + 8 * v29);
        v50 = (v18 + 8 * v29);
        do
        {
          if (*v50)
          {
            if (v129)
            {
              v51 = *v49;
            }

            else
            {
              [v126 valueForKey:*v48];
            }

            _PF_CopyOnWrite_Snapshot(a2);
            _NSSetUsingKeyValueSetter();
          }

          ++v48;
          ++v49;
          ++v50;
          --v28;
        }

        while (v28);
      }
    }

    goto LABEL_90;
  }

  if (HasCustomPrimitiveProperties)
  {
    if (v131)
    {
      if (v29 < v30)
      {
        do
        {
          v40 = *(v130 + 8 * v29);
          if ([v40 _propertyType] == 7)
          {
            v41 = [v40 _buildDefaultValue];
          }

          else
          {
            v41 = [v40 defaultValue];
          }

          v26 = v41;
          if (v41)
          {
            _PF_Handler_Primitive_Internal_SetProperty(a2, v29, v41, *(v18 + 8 * v29));
          }

          ++v29;
          --v28;
        }

        while (v28);
LABEL_90:
        v46 = v132[12];
        v52 = v132[13];
        v47 = v52 + v46;
        v53 = v128;
        if (!v126)
        {
          v53 = 1;
        }

        if (v53)
        {
          goto LABEL_93;
        }

        if (v46 >= v47)
        {
          goto LABEL_135;
        }

        v126 = NSKeyValueCoding_NullValue;
        v59 = v47 - 1;
        v60 = v46 >> 3;
        v61 = v59 >> 3;
        v62 = 0xFFu >> (8 - (v46 & 7));
        if (v59 >> 3 == v46 >> 3)
        {
          v63 = (510 << (v59 & 7)) | v62;
          v61 = v46 >> 3;
        }

        else
        {
          v66 = (v33 + v60);
          *v66 &= v62;
          if (v60 + 1 < v61)
          {
            bzero(v66 + 1, (v61 - v60 - 2) + 1);
          }

          v63 = 510 << (v59 & 7);
        }

        *(v33 + v61) &= v63;
        if (!HasCustomPrimitiveProperties)
        {
          goto LABEL_135;
        }

        while (1)
        {
          v67 = *(v18 + 8 * v46);
          v68 = v131;
          if (v67)
          {
            v68 = 1;
          }

          if (v68 != 1)
          {
            goto LABEL_132;
          }

          v69 = *(v130 + 8 * v46);
          if (!v129 || (v70 = *(v129 + 8 * v46), v70 == v126))
          {
            v72 = v125;
            [(NSManagedObjectContext *)v125 lockObjectStore];
            if (v72)
            {
              v73 = *(v72 + 32);
            }

            else
            {
              v73 = 0;
            }

            v70 = [v73 newValueForRelationship:v69 forObjectWithID:v116 withContext:v72 error:0];
            [(NSManagedObjectContext *)v72 unlockObjectStore];
            if (v70 == v126 || (v71 = 1, !v70))
            {
LABEL_126:
              if (v118 == 5)
              {
                _PF_CopyOnWrite_Snapshot(a2);
                if (v67)
                {
                  _NSSetUsingKeyValueSetter();
                }

                else
                {
                  snapshot_set_value_as_object(*(a2 + 24), v46, 0);
                }
              }

              goto LABEL_132;
            }
          }

          else
          {
            v71 = 0;
            if (!v70)
            {
              goto LABEL_126;
            }
          }

          _PF_CopyOnWrite_Snapshot(a2);
          if (v67)
          {
            break;
          }

          snapshot_set_value_as_object(*(a2 + 24), v46, v70);
          if (v71)
          {
            goto LABEL_130;
          }

LABEL_132:
          ++v46;
          if (!--v52)
          {
            goto LABEL_135;
          }
        }

        _NSSetUsingKeyValueSetter();
        if (!v71)
        {
          goto LABEL_132;
        }

LABEL_130:

        goto LABEL_132;
      }
    }

    else if (v29 < v30)
    {
      do
      {
        if (*(v18 + 8 * v29))
        {
          v44 = *(v130 + 8 * v29);
          v45 = ([v44 _propertyType] == 7 ? objc_msgSend(v44, "_buildDefaultValue") : objc_msgSend(v44, "defaultValue"));
          v26 = v45;
          if (v45)
          {
            _PF_Handler_Primitive_Internal_SetProperty(a2, v29, v45, *(v18 + 8 * v29));
          }
        }

        ++v29;
        --v28;
      }

      while (v28);
      goto LABEL_90;
    }
  }

  v46 = v132[12];
  v47 = v132[13] + v46;
LABEL_93:
  if (v46 < v47)
  {
    v54 = v47 - 1;
    v55 = v46 >> 3;
    v56 = 255 << (v46 & 7);
    if (v46 >> 3 == (v47 - 1) >> 3)
    {
      v57 = (0xFFu >> (~v54 & 7)) & v56;
      v58 = v46 >> 3;
    }

    else
    {
      v58 = v54 >> 3;
      v64 = (v33 + v55);
      *v64 |= v56;
      if (v55 + 1 < v54 >> 3)
      {
        memset(v64 + 1, 255, (v58 - v55 - 2) + 1);
      }

      v57 = 0xFFu >> (~v54 & 7);
    }

    *(v33 + v58) |= v57;
    if (v118 == 5)
    {
      do
      {
        v65 = *(v18 + 8 * v46);
        _PF_CopyOnWrite_Snapshot(a2);
        if (v65)
        {
          _NSSetUsingKeyValueSetter();
        }

        else
        {
          snapshot_set_value_as_object(*(a2 + 24), v46, 0);
        }

        ++v46;
      }

      while (v47 != v46);
    }
  }

LABEL_135:
  v74 = 0;
  v129 = v33 + 1;
  do
  {
    v75 = &v132[2 * dword_18592E450[v74]];
    v76 = *v75;
    v77 = v75[1];
    v78 = v77 + *v75;
    if (v24)
    {
      if (v76 < v78)
      {
        do
        {
          object = snapshot_get_object(v24, v76);
          if (object)
          {
            v80 = object;
            v81 = *(v18 + 8 * v76);
            _PF_CopyOnWrite_Snapshot(a2);
            if (v81)
            {
              _NSSetUsingKeyValueSetter();
            }

            else
            {
              snapshot_set_value_as_object(*(a2 + 24), v76, v80);
            }

            v82 = v76 >> 3;
            v83 = *(v33 + (v76 >> 3)) | (1 << (v76 & 7));
          }

          else
          {
            v82 = v76 >> 3;
            v83 = *(v33 + (v76 >> 3)) & ~(1 << (v76 & 7));
          }

          *(v33 + v82) = v83;
          ++v76;
          --v77;
        }

        while (v77);
      }
    }

    else if (v76 < v78)
    {
      v84 = v78 - 1;
      v85 = v76 >> 3;
      v86 = v84 >> 3;
      v87 = 0xFFu >> (8 - (v76 & 7));
      if (v84 >> 3 == v76 >> 3)
      {
        v88 = (510 << (v84 & 7)) | v87;
      }

      else
      {
        *(v33 + v85) &= v87;
        if (v85 + 1 < v86)
        {
          bzero((v129 + v85), (v86 - v85 - 2) + 1);
        }

        v88 = 510 << (v84 & 7);
        v85 = v84 >> 3;
      }

      *(v33 + v85) &= v88;
    }

    ++v74;
  }

  while (v74 != 3);
  v89 = v132[10];
  v90 = v132[11];
  v91 = v90 + v89;
  if (HasCustomPrimitiveProperties)
  {
    if (v89 < v91)
    {
      do
      {
        v92 = (1 << (v89 & 7)) & *(v33 + (v89 >> 3));
        v93 = *(v18 + 8 * v89);
        v94 = v131;
        if (v92)
        {
          v94 = 1;
        }

        if ((v94 & 1) != 0 || v93)
        {
          if (v92)
          {
            snapshot_get_value_as_object(v24, v89);
          }

          else
          {
            v96 = *(v130 + 8 * v89);
            v95 = ([v96 _propertyType] == 7 ? objc_msgSend(v96, "_buildDefaultValue") : objc_msgSend(v96, "defaultValue"));
          }

          v26 = v95;
          if (v95)
          {
            _PF_Handler_Primitive_Internal_SetProperty(a2, v89, v95, v93);
          }
        }

        ++v89;
        --v90;
      }

      while (v90);
    }
  }

  else if (v89 < v91)
  {
    do
    {
      if ((*(v33 + (v89 >> 3)) >> (v89 & 7)))
      {
        v97 = *(v18 + 8 * v89);
        snapshot_get_value_as_object(v24, v89);
        if (v98)
        {
          _PF_Handler_Primitive_Internal_SetProperty(a2, v89, v98, v97);
        }
      }

      ++v89;
      --v90;
    }

    while (v90);
  }

  v99 = v132[10];
  v100 = v132[11] + v99;
  v101 = v125;
  v102 = v120;
  if (v99 < v100)
  {
    v103 = v100 - 1;
    v104 = v99 >> 3;
    v105 = v103 >> 3;
    v106 = 255 << (v99 & 7);
    if (v103 >> 3 == v99 >> 3)
    {
      v107 = (0xFFu >> (~v103 & 7)) & v106;
      v105 = v104;
    }

    else
    {
      v108 = (v33 + v104);
      *v108 |= v106;
      if (v104 + 1 < v105)
      {
        memset(v108 + 1, 255, (v105 - v104 - 2) + 1);
      }

      v107 = 0xFFu >> (~v103 & 7);
    }

    *(v33 + v105) |= v107;
  }

  *(a2 + 16) &= 0xFFFC7FFF;
  if ((v102 & 1) == 0)
  {
    [a2 _didChangeValuesForKeys:v115];
    *(a2 + 16) &= ~0x1000u;
    if (v101)
    {
      --*(v101 + 46);
    }
  }

  v109 = context;
  v110 = v122;
  if ((v121 & 0x100) == 0)
  {
    [a2 didFireFault];
  }

  v111 = v128;
  if ((v110 & 1) == 0)
  {
    v111 = 1;
  }

  if ((v111 & 1) == 0)
  {
    *(a2 + 16) |= 0x1000u;
    [a2 awakeFromFetch];
    *(a2 + 16) &= ~0x1000u;
  }

  if (v24)
  {
  }

  objc_autoreleasePoolPop(v109);
  v112 = v119;
  v113 = 0;
}

uint64_t _kvcPropertysPrimitiveSetters(uint64_t a1)
{
  if (**(a1 + 152))
  {
    return **(a1 + 152);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValuePrimitiveSetterWithContainerClassID_key_, _MergedGlobals_70, 0);
  }
}

uint64_t _kvcPropertysPrimitiveGetters(void *a1)
{
  if (*(a1[19] + 8))
  {
    return *(a1[19] + 8);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValuePrimitiveGetterWithContainerClassID_key_, qword_1ED4BE9A8, 1u);
  }
}

CFIndex _PFCMT_GetCount(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  if (a1[3])
  {
    v4 = a1[1];
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(a1[3] + 8 * i);
        if (v6)
        {
          Count += CFDictionaryGetCount(v6);
          v4 = a1[1];
        }
      }
    }
  }

  if (a1[4])
  {
    v7 = a1[1];
    if (v7)
    {
      for (j = 0; j < v7; ++j)
      {
        v9 = *(a1[4] + 8 * j);
        if (v9)
        {
          Count += CFDictionaryGetCount(v9);
          v7 = a1[1];
        }
      }
    }
  }

  return Count;
}

void _PF_Handler_Primitive_GetProperty(id **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_PF_Threading_Debugging_level)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = MEMORY[0x10];
    goto LABEL_7;
  }

  _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_valueForKey_);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(a1 + 4);
  if ((v7 & 0x4000) != 0)
  {
    v8 = a1;
    v7 = a1[2] & 0xFFFFBFFF;
    *(a1 + 4) = v7;
  }

LABEL_7:
  v9 = *(a1 + 5);
  if (v9)
  {
    v10 = a1 + v9;
  }

  else
  {
    v10 = 0;
  }

  if (((v10[(a2 >> 3) - ((v7 >> 22) & 0x3FC)] >> (a2 & 7)) & 1) == 0)
  {
    _PF_FulfillDeferredFault(a1, a2);
  }

  v11 = a1[3];
  if (!v11)
  {
    v12 = *(a1 + 4);
    if ((v12 & 0x38000) == 0x10000 || (v12 & 0x80) != 0)
    {
      return;
    }

    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v14 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          v19 = 0;
          v17 = &v19;
LABEL_30:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NULL _cd_rawData but the object is not being turned into a fault\n", v17, 2u);
        }
      }

      else if (v16)
      {
        LOWORD(v18) = 0;
        v17 = &v18;
        goto LABEL_30;
      }
    }

    _NSCoreDataLog_console(1, "NULL _cd_rawData but the object is not being turned into a fault", v18);
    objc_autoreleasePoolPop(v13);
    return;
  }

  if (a4)
  {

    _NSGetUsingKeyValueGetter();
  }

  else
  {

    snapshot_get_value_as_object(v11, a2);
  }
}

uint64_t _kvcPropertysPublicSetters(void *a1)
{
  if (*(a1[19] + 16))
  {
    return *(a1[19] + 16);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValueSetterWithContainerClassID_key_, _MergedGlobals_70, 2u);
  }
}

void *_PF_ManagedObject_DidChangeValueForKeyIndex(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = *(result + 4);
  if ((v6 & 0x2000) == 0)
  {
    result = _PFEntityForManagedObject(result);
    v9 = result[14];
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = v5[6];
    if (v12)
    {
      if (*v12)
      {
        goto LABEL_8;
      }
    }

    v14 = a4 >= v10;
    v13 = a4 - v10;
    v14 = !v14 || v13 >= v11;
    if (!v14)
    {
LABEL_8:
      result = _NSObjectDidChangeVFKImp(v5, a2, a3);
    }
  }

  if ((v6 & 0x1000) == 0)
  {
    *(v5 + 4) &= ~0x800u;
  }

  if ((v6 & 0x40) == 0)
  {

    return [v5 didAccessValueForKey:a3];
  }

  return result;
}

void *_sharedIMPL_setvfk_core(id **a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_setValue_forKey_);
  }

  v14 = a3;
  v7 = _PFEntityForManagedObject(a1);
  v8 = *(v7[12] + 24 + 8 * a4);
  v9 = *(_kvcPropertysPrimitiveSetters(v7) + 8 * a4);
  v10 = *(*(v7[12] + 16) + 40);
  v11 = *(v10 + 8 * a4);
  v12 = *(a1 + 4);
  if ((v12 & 0x40000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeyIndex(a1, sel_willChangeValueForKey_, v11, a4, 0);
  }

  else
  {
    [a1 willChangeValueForKey:*(v10 + 8 * a4)];
  }

  _PF_CopyOnWrite_Snapshot(a1);
  _PFManagedObject_coerceValueForKeyWithDescription(a1, &v14, v11, v8);
  if (v9)
  {
    _NSSetUsingKeyValueSetter();
    if ((v12 & 0x40000) != 0)
    {
      return _PF_ManagedObject_DidChangeValueForKeyIndex(a1, sel_didChangeValueForKey_, v11, a4);
    }
  }

  else
  {
    snapshot_set_value_as_object(a1[3], a4, v14);
    if ((v12 & 0x40000) != 0)
    {
      return _PF_ManagedObject_DidChangeValueForKeyIndex(a1, sel_didChangeValueForKey_, v11, a4);
    }
  }

  return [a1 didChangeValueForKey:v11];
}

void _PFFastMOCObjectWillChange(uint64_t a1, _DWORD *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1, sel_objectWillChange_);
  }

  v4 = a2[4];
  if ((v4 & 7) != 0)
  {
    goto LABEL_28;
  }

  if ((v4 & 0x80) != 0)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v7 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          goto LABEL_29;
        }
      }

      else if (v9)
      {
LABEL_29:
        *buf = 138412546;
        v21 = [a2 objectID];
        v22 = 2048;
        v23 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Mutating a managed object %@ (%p) after it has been removed from its context.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Mutating a managed object %@ (%p) after it has been removed from its context.", [a2 objectID], a2);
    v14 = v6;
LABEL_27:
    objc_autoreleasePoolPop(v14);
    goto LABEL_28;
  }

  if (!a1)
  {
LABEL_28:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((v4 & 0x80) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 4);
  }

  if (v5 != a1)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v11 = _pflogging_catastrophic_mode;
      v12 = _PFLogGetLogStream(1);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          goto LABEL_30;
        }
      }

      else if (v13)
      {
LABEL_30:
        v18 = [a2 objectID];
        v19 = *(a2 + 4);
        *buf = 138413058;
        v21 = v18;
        v22 = 2048;
        v23 = a2;
        v24 = 2048;
        v25 = v19;
        v26 = 2048;
        v27 = a1;
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Mutating a managed object %@ (%p) that has a different context %p than the receiver %p.\n", buf, 0x2Au);
      }
    }

    _NSCoreDataLog_console(1, "Mutating a managed object %@ (%p) that has a different context %p than the receiver %p.", [a2 objectID], a2, *(a2 + 4), a1);
    v14 = v10;
    goto LABEL_27;
  }

  [(NSManagedObjectContext *)a1 _establishEventSnapshotsForObject:a2];
  v15 = *(a1 + 40);
  if ((v15 & 0x200) != 0 && (v15 & 0x100) == 0)
  {
    _PFFaultLogExcessivePrepareForPendingChangesAttempts();
    v15 = *(a1 + 40);
  }

  *(a1 + 40) = v15 | 0x100;
  [*(a1 + 56) addObject:a2];
  a2[4] |= 1u;
  [(NSManagedObjectContext *)a1 _registerClearStateWithUndoManager];
  [(NSManagedObjectContext *)a1 _enqueueEndOfEventNotification];
  if ((*(a1 + 41) & 4) != 0)
  {
    goto LABEL_28;
  }

  [a1 willChangeValueForKey:@"hasChanges"];
  *(a1 + 40) |= 0x400u;
  v16 = *MEMORY[0x1E69E9840];

  [a1 didChangeValueForKey:@"hasChanges"];
}

void _PF_ManagedObject_WillChangeValueForKeyIndex(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v10 = _PFEntityForManagedObject(a1);
  if (!v10)
  {
    v11 = 0;
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    [a1 willAccessValueForKey:a3];
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v11 = v10[14];
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    v12 = 1;
    goto LABEL_5;
  }

  _PF_Handler_WillAccess_Property(a1, sel_willAccessValueForKey_, a4);
LABEL_8:
  v12 = 0;
  v15 = v11[10];
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (!v16 || v17 >= v11[11])
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
    if ((*(a1 + 17) & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v18 = [(objc_class *)object_getClass(a1) _transientPropertiesChangesMask];
  v13 = v18;
  v19 = *(a1 + 16);
  if ((v19 & 0x8000) != 0)
  {
    v35 = *(a1 + 20);
    if (v35)
    {
      v36 = a1 + v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(v36 - ((v19 >> 22) & 0x3FC) + (a4 >> 3));
    v38 = 1 << (a4 & 7);
    v12 = 0;
    v14 = 0;
    v39 = (v38 & v37) == 0 || v18 == 0;
    if (v39 || (v38 & *(v18 + (a4 >> 3))) == 0)
    {
LABEL_6:
      [_insertion_fault_handler fulfillFault:a1 withContext:*(a1 + 32) forIndex:a4];
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

LABEL_13:
  if ((v9 & 0x1000) != 0)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x80) != 0)
  {
    v20 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v41 = v12;
      v21 = v11;
      v22 = v14;
      v23 = v13;
      v24 = v20;
      v25 = a5;
      v26 = a3;
      v27 = _pflogging_catastrophic_mode;
      log = _PFLogGetLogStream(1);
      v28 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        a3 = v26;
        a5 = v25;
        v20 = v24;
        v13 = v23;
        v14 = v22;
        v11 = v21;
        v12 = v41;
        if (v28)
        {
          goto LABEL_43;
        }
      }

      else
      {
        a3 = v26;
        a5 = v25;
        v20 = v24;
        v13 = v23;
        v14 = v22;
        v11 = v21;
        v12 = v41;
        if (v28)
        {
LABEL_43:
          *buf = 138412546;
          v43 = [a1 objectID];
          v44 = 2048;
          v45 = a1;
          _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Mutating a managed object %@ (%p) after it has been removed from its context.\n", buf, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Mutating a managed object %@ (%p) after it has been removed from its context.", [a1 objectID], a1);
    objc_autoreleasePoolPop(v20);
  }

  v29 = *(a1 + 32);
  if (v29 && (v12 & ((*&v9 & 0x400000) != 0)) == 0)
  {
    v30 = v13 ? v14 : 1;
    if ((v30 & 1) != 0 || ((*(v13 + (a4 >> 3)) >> (a4 & 7)) & 1) == 0)
    {
      _PFFastMOCObjectWillChange(v29, a1);
    }
  }

  *(a1 + 16) |= 0x800u;
LABEL_33:
  if ((v9 & 0x2000) == 0)
  {
    v31 = *(a1 + 48);
    if (v31)
    {
      LOBYTE(v31) = *v31 != 0;
    }

    if ((v31 & 1) != 0 || (a5 & 1) != 0 || (v32 = v11[4], v16 = a4 >= v32, v33 = a4 - v32, v16) && v33 < v11[5])
    {
      off_1ED4BE9C0(a1, sel_willChangeValueForKey_, a3);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

id *_PF_Handler_WillAccess_Property(id *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!_PF_Threading_Debugging_level)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = MEMORY[0x10];
    goto LABEL_7;
  }

  result = _PFAssertSafeMultiThreadedAccess_impl([result managedObjectContext], sel_willAccessValueForKey_);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *(v4 + 4);
  if ((v5 & 0x4000) != 0)
  {
    result = v4;
    v5 = v4[2] & 0xFFFFBFFF;
    *(v4 + 4) = v5;
  }

LABEL_7:
  v6 = *(v4 + 5);
  if (v6)
  {
    v7 = v4 + v6;
  }

  else
  {
    v7 = 0;
  }

  if (((v7[(a3 >> 3) - ((v5 >> 22) & 0x3FC)] >> (a3 & 7)) & 1) == 0)
  {

    return _PF_FulfillDeferredFault(v4, a3);
  }

  return result;
}

uint64_t _PFManagedObject_coerceValueForKeyWithDescription(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if ([MEMORY[0x1E695DFB0] null] == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  result = [a4 _propertyType];
  if (result != 4)
  {
    if (result != 2)
    {
      v8 = v9;
      goto LABEL_88;
    }

    if (v9)
    {
      result = [a4 attributeType];
      if (result > 699)
      {
        if (result > 999)
        {
          switch(result)
          {
            case 1000:
              if ([a4 isFileBackedFuture])
              {
                objc_opt_class();
                result = objc_opt_isKindOfClass();
                if (result)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                result = [v9 isNSData];
                if (result)
                {
                  goto LABEL_89;
                }
              }

              break;
            case 1800:
              if ([a4 usesMergeableStorage])
              {
                objc_opt_class();
                result = objc_opt_respondsToSelector();
                if (result)
                {
                  goto LABEL_89;
                }
              }

              break;
            case 2200:
              goto LABEL_89;
          }

          goto LABEL_59;
        }

        if (result != 700)
        {
          if (result != 800)
          {
            if (result == 900)
            {
              result = [v9 isNSDate];
              if (result)
              {
                goto LABEL_89;
              }
            }

            goto LABEL_59;
          }

          goto LABEL_58;
        }

        result = [v9 isNSString];
        if (result)
        {
          goto LABEL_89;
        }

LABEL_59:
        if (![a4 isFileBackedFuture])
        {
          if ([a4 usesMergeableStorage])
          {
            v25 = MEMORY[0x1E695DF30];
            v26 = *MEMORY[0x1E695D940];
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Using mergeable storage with the attribute %@ requires conformance to %@.", objc_msgSend(a4, "name"), NSStringFromProtocol(&unk_1EF444E10)];
          }

          else
          {
            v35 = [a4 _attributeValueClass];
            if (v35)
            {
              v36 = v35;
              result = objc_opt_isKindOfClass();
              if (result)
              {
                goto LABEL_88;
              }

              v37 = a3;
              if ([v9 isNSNumber] && objc_msgSend(v36, "isSubclassOfClass:", objc_opt_class()))
              {
                result = [MEMORY[0x1E696AB90] decimalNumberWithString:{objc_msgSend(v9, "stringValue")}];
                v8 = result;
                goto LABEL_88;
              }

              v25 = MEMORY[0x1E695DF30];
              v26 = *MEMORY[0x1E695D940];
              v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unacceptable type of value for attribute: property = %@; desired type = %@; given type = %@; value = %@.", a3, objc_msgSend(a4, "attributeValueClassName"), objc_opt_class(), v9];
              goto LABEL_111;
            }

            result = [a4 isTransient];
            if (result)
            {
              goto LABEL_88;
            }

            result = [a4 attributeType];
            if (result == 1800)
            {
              goto LABEL_88;
            }

            v25 = MEMORY[0x1E695DF30];
            v26 = *MEMORY[0x1E695D930];
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set value for attribute with undefined type: property = %@; entity = %@; value = %@", a3, objc_msgSend(a4, "entity"), v9, v58];
          }

LABEL_50:
          v30 = v29;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"key", v9, @"value", 0}];
LABEL_51:
          v32 = v31;
          v33 = v25;
          v34 = v26;
          goto LABEL_85;
        }

        v51 = MEMORY[0x1E695DF30];
        v52 = *MEMORY[0x1E695D940];
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unacceptable type of value for attribute: property = %@; desired type = %@; given type = %@; value = %@.", a3, @"A class implementing the NSFileBackedFuture protocol", objc_opt_class(), v9];
        goto LABEL_115;
      }

      if (result <= 299)
      {
        if (result != 100 && result != 200)
        {
          goto LABEL_59;
        }
      }

      else if (result != 300 && result != 500 && result != 600)
      {
        goto LABEL_59;
      }

LABEL_58:
      result = [v9 isNSNumber];
      if (result)
      {
        goto LABEL_89;
      }

      goto LABEL_59;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_88;
  }

  v11 = [a4 destinationEntity];
  v12 = _PFFastEntityClass(v11);
  class_getSuperclass(v12);
  result = [a4 isToMany];
  if (!result)
  {
    if (v9)
    {
      v15 = [v9 managedObjectContext];
      v16 = v15;
      if (!a1 || (*(a1 + 16) & 0x80) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 32);
      }

      if (([v15 _isSwiftBound] & 1) != 0 || (v23 = objc_msgSend(v17, "_isSwiftBound"), v16 == v17) || (v23 & 1) != 0 || objc_msgSend(a1, "valueForKey:", a3) == v9)
      {
        isKindOfClass = objc_opt_isKindOfClass();
        if (v11)
        {
          if (isKindOfClass)
          {
            result = [v11 _subentitiesIncludes:_PFEntityForManagedObject(v9)];
            if (result)
            {
              goto LABEL_88;
            }
          }
        }

        v25 = MEMORY[0x1E695DF30];
        v26 = *MEMORY[0x1E695D940];
        v27 = MEMORY[0x1E696AEC0];
        -[NSEntityDescription _entityClass]([a4 destinationEntity]);
        v28 = objc_opt_class();
        v29 = [v27 stringWithFormat:@"Unacceptable type of value for to-one relationship: property = %@; desired type = %@; given type = %@; value = %@.", a3, v28, objc_opt_class(), v9];
        goto LABEL_50;
      }

      v51 = MEMORY[0x1E695DF30];
      v52 = *MEMORY[0x1E695D940];
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal attempt to establish a relationship '%@' between objects in different contexts (source = %@, destination = %@)", a3, a1, v9, v58];
LABEL_115:
      v57 = v53;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"key", v9, @"value", 0}];
      v33 = v51;
      v34 = v52;
      v49 = v57;
      goto LABEL_86;
    }

    goto LABEL_24;
  }

  if ([a4 isOrdered])
  {
    v13 = objc_opt_class();
    v61 = objc_opt_class();
    if ([v9 isNSOrderedSet])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = objc_opt_class();
    v61 = objc_opt_class();
    if ([v9 isNSSet])
    {
LABEL_17:
      v14 = 1;
      if (!v9)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }
  }

  v14 = [v9 count] == 0;
  if (!v9)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (!v14)
  {
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v54 = MEMORY[0x1E696AEC0];
    v37 = a3;
    if ([a4 isOrdered])
    {
      v55 = @"ordered to-many";
    }

    else
    {
      v55 = @"to-many";
    }

    v56 = [v54 stringWithFormat:@"Unacceptable type of value for %@ relationship: property = %@; desired type = %@; given type = %@; value = %@.", v55, v37, v13, objc_opt_class(), v9];
LABEL_111:
    v30 = v56;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v37, @"key", v9, @"value", 0}];
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([v9 source] == a1)
    {
      result = [v9 relationship];
      if (result == a4)
      {
        goto LABEL_88;
      }
    }
  }

  v18 = [v9 count];
  if (!v18)
  {
LABEL_40:
    v8 = [[v61 alloc] initWithSource:a1 forRelationship:a4 asFault:0];
    goto LABEL_41;
  }

  v19 = v18;
  v59 = &v59;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v60 = a3;
  if (v20 > 0x200)
  {
    v22 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v59 - v21, 8 * v20);
  }

  [v9 getObjects:{v22, v59}];
  for (i = 0; i != v19; ++i)
  {
    v39 = *&v22[8 * i];
    v40 = [v39 managedObjectContext];
    if (!a1 || (*(a1 + 16) & 0x80) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(a1 + 32);
    }

    if (v40 != v41 && ([objc_msgSend(a1 valueForKey:{v60), "containsObject:", v39}] & 1) == 0)
    {
      v51 = MEMORY[0x1E695DF30];
      v52 = *MEMORY[0x1E695D940];
      a3 = v60;
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal attempt to establish a relationship '%@' between objects in different contexts (source = %@, destination = %@)", v60, a1, v39, v58];
      goto LABEL_115;
    }

    v42 = objc_opt_isKindOfClass();
    if (!v11 || !v39 || (v42 & 1) == 0 || ([v11 _subentitiesIncludes:_PFEntityForManagedObject(v39)] & 1) == 0)
    {
      v43 = MEMORY[0x1E695DF30];
      v44 = *MEMORY[0x1E695D940];
      v45 = MEMORY[0x1E696AEC0];
      -[NSEntityDescription _entityClass]([a4 destinationEntity]);
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = v60;
      v30 = [v45 stringWithFormat:@"Unacceptable type of value in to-many relationship: property = %@; problem = %@; desired type = %@; given type = %@; value = %@.", v60, v9, v46, v47, v39];
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v48, @"key", v9, @"value", 0}];
      v33 = v43;
      v34 = v44;
LABEL_85:
      v49 = v30;
LABEL_86:
      objc_exception_throw([v33 exceptionWithName:v34 reason:v49 userInfo:v32]);
    }
  }

  v8 = [[v61 alloc] initWithSource:a1 forRelationship:a4 asFault:0];
  if ([a4 isOrdered])
  {
    [v8 addObjects:v22 count:v19];
  }

  else
  {
    [v8 setSet:v9];
  }

  if (v19 >= 0x201)
  {
    NSZoneFree(0, v22);
  }

LABEL_41:
  result = v8;
LABEL_88:
  *a2 = v8;
LABEL_89:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void _PF_CopyOnWrite_Snapshot(id a1)
{
  v2 = *(a1 + 3);
  if (!v2)
  {
    v3 = _PFEntityForManagedObject(a1);
    v4 = _PFCDSnapshotClassForEntity(v3);
    if (v4)
    {
      v5 = [(_CDSnapshot *)[v4 alloc] initWithObjectID:?];
      snapshot_initialize_all_null(v5);
      *(v5 + 3) = *(a1 + 3);
      *(a1 + 3) = v5;
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v7 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          *buf = 0;
          v10 = buf;
          goto LABEL_15;
        }
      }

      else if (v9)
      {
        v12 = 0;
        v10 = &v12;
LABEL_15:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Snapshot class was nil\n", v10, 2u);
      }
    }

    _NSCoreDataLog_console(1, "Snapshot class was nil");
    objc_autoreleasePoolPop(v6);
    __break(1u);
    return;
  }

  if (v2[24])
  {
    v11 = v2;
    *(a1 + 3) = [v2 mutableCopy];
  }
}

void *snapshot_set_value_as_object(id *a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    v20 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v21 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v23 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v23)
        {
          *buf = 0;
          v24 = buf;
          goto LABEL_43;
        }
      }

      else if (v23)
      {
        v26 = 0;
        v24 = &v26;
LABEL_43:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: warning snapshot_set_value_as_object called on NULL\n", v24, 2u);
      }
    }

    _NSCoreDataLog_console(1, "warning snapshot_set_value_as_object called on NULL");
    objc_autoreleasePoolPop(v20);
    __break(1u);
    return MEMORY[0x1EEE66BB8]();
  }

  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  v7 = a1 + (a2 >> 3);
  v8 = 1 << (a2 & 7);
  v9 = v7[28];
  v10 = v9 & ~v8;
  v11 = v9 | v8;
  v12 = a3;
  if (a3)
  {
    v11 = v10;
  }

  v7[28] = v11;
  v13 = *(result + a2 + 19);
  v14 = *(result[7] + a2);
  if (v14 <= 3)
  {
    switch(v14)
    {
      case 1u:
        result = [a3 charValue];
        v12 = a3;
        *(a1 + v13) = result;
        goto LABEL_33;
      case 2u:
        result = [a3 shortValue];
        v12 = a3;
        *(a1 + v13) = result;
        goto LABEL_33;
      case 3u:
        result = [a3 intValue];
        v12 = a3;
        *(a1 + v13) = result;
        goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (*(result[7] + a2) > 5u)
  {
    if (v14 == 6)
    {
      if (a3)
      {
        result = [a3 floatValue];
        v12 = a3;
      }

      else
      {
        v18 = 0;
      }

      *(a1 + v13) = v18;
      goto LABEL_33;
    }

    if (v14 == 8)
    {
      v16 = *(a1 + v13);
      if (v16)
      {
        result = [(PFFaultingTransformedValue *)v16 setValue:a3];
        v12 = a3;
      }

      else
      {
        v19 = *(*([a1[2] entity] + 96) + 24 + 8 * a2);
        objc_opt_self();
        result = [[PFFaultingTransformedValue_Decoded alloc] initWithStorage:a3 attribute:v19];
        v12 = a3;
        *(a1 + v13) = result;
      }

      goto LABEL_33;
    }

LABEL_20:
    v17 = *(a1 + v13);
    *(a1 + v13) = a3;
    if (v17)
    {
      goto LABEL_34;
    }

    return result;
  }

  if (v14 == 4)
  {
    result = [a3 longLongValue];
    v12 = a3;
    *(a1 + v13) = result;
    goto LABEL_33;
  }

  if (v14 != 5)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    if ([a3 isNSNumber])
    {
      result = [a3 doubleValue];
    }

    else
    {
      result = [a3 timeIntervalSinceReferenceDate];
    }

    v12 = a3;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + v13) = v15;
LABEL_33:
  if (v12)
  {
LABEL_34:

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

unsigned int *snapshot_set_object(id *a1, unsigned int a2, unsigned int *a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  *(a1 + (a2 >> 3) + 28) &= ~(1 << (a2 & 7));
  v8 = result[a2 + 19];
  v9 = *(a1 + v8);
  if (*(*(result + 7) + a2) == 8)
  {
    v14 = *(a1 + v8);
    result = object_getClass(a3);
    if (result != PFFaultingTransformedValue_Decoded && result != PFFaultingTransformedValue_Encoded && result != PFFaultingTransformedValue_Decoded_Dirty)
    {
      v12 = *(*([a1[2] entity] + 96) + 24 + 8 * a2);
      v13 = a3;
      objc_opt_self();
      result = [[PFFaultingTransformedValue_Decoded alloc] initWithStorage:v13 attribute:v12];
      a3 = result;
    }

    v9 = v14;
  }

  *(a1 + v8) = a3;
  if (v9)
  {

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

const void *_sqlEntityForEntityID(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) >= a2)
  {
    return CFArrayGetValueAtIndex(*(a1 + 32), ~*(a1 + 60) + a2);
  }

  else
  {
    return 0;
  }
}

id snapshot_get_object(id *a1, unsigned int a2)
{
  Class = object_getClass(a1);
  v5 = *(object_getIndexedIvars(Class) + a2 + 19);
  v6 = object_getClass(*(a1 + v5));
  if (v6 != PFFaultingTransformedValue_Decoded && v6 != PFFaultingTransformedValue_Encoded && v6 != PFFaultingTransformedValue_Decoded_Dirty)
  {
    return *(a1 + v5);
  }

  v9 = [objc_msgSend(a1[2] "persistentStore")];
  v10 = *(a1 + v5);
  v11 = [v9 codableAdapterRegistry];

  return [(PFFaultingTransformedValue *)v10 valueWithRegistry:v11];
}

void PF_FREE_OBJECT_ARRAY(void *ptr)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  malloc_zone_free(v2, ptr);
}

_DWORD *fetchResultSetAllocateInitialize(unsigned int a1, int a2)
{
  if (a1 >= 0x20000)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = a1;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 15359;
  }

  v5 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v5 = malloc_default_zone();
  }

  v6 = malloc_type_zone_calloc(v5, 1uLL, 0x60uLL, 0x10800407186F754uLL);
  v6[4] = v4;
  v6[5] = 1;
  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
  }

  v8 = malloc_type_zone_malloc(v7, 0x10uLL, 0x80040B8603338uLL);
  *(v6 + 8) = v8;
  v8[1] = 0;
  v9 = _PF_Private_Malloc_Zone;
  if (a2)
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v9 = malloc_default_zone();
    }

    v10 = malloc_type_zone_calloc(v9, 1uLL, v4, 0x1DE6F454uLL);
  }

  else
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v9 = malloc_default_zone();
    }

    v10 = malloc_type_zone_malloc(v9, v4, 0xABEB63D1uLL);
  }

  *(v6 + 10) = v10;
  **(v6 + 8) = v10;
  *(v6 + 11) = *(v6 + 10);
  v6[6] = 0;
  *(v6 + 4) = 0;
  v11 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v11 = malloc_default_zone();
  }

  v12 = malloc_type_zone_malloc(v11, 0x10uLL, 0x100004000313F17uLL);
  *(v6 + 9) = v12;
  *v12 = v4;
  v12[1] = 0;
  v13 = *(v6 + 8);
  *(v6 + 11) = *v13;
  v14 = (v13[v6[6]] + *(v6 + 4));
  *v14 = 0u;
  v14[1] = 0u;
  v6[7] = -1;
  *v14 = -1;
  if (a2)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v6[12] = v6[12] & 0xFFFFFFFB | v15;
  return v6;
}

void *fetchResultSetPrepareNextRow(void *result)
{
  v1 = result;
  v2 = *(result + 6);
  v3 = result[4];
  v4 = result[8];
  v5 = v4[v2] + v3;
  if ((*v5 & 0x80000000) != 0)
  {
    if ((*(result + 7) & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    *(v5 + 4) = v2;
    *(v5 + 16) = v3;
  }

  *(result + 7) = v2;
  result[5] = v3;
LABEL_5:
  v6 = result[10];
  v7 = ((result[11] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*(result + 4) + v6 - v7 <= 31)
  {
    v8 = *(result + 5);
    *(result + 4) = 15359;
    *(result + 5) = v8 + 1;
    v9 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v9 = malloc_default_zone();
      v4 = v1[8];
    }

    v10 = malloc_type_zone_realloc(v9, v4, 8 * (v8 + 2), 0x80040B8603338uLL);
    v1[8] = v10;
    v10[v8 + 1] = 0;
    v11 = _PF_Private_Malloc_Zone;
    if ((v1[6] & 4) != 0)
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      v12 = malloc_type_zone_calloc(v11, 1uLL, 0x3BFFuLL, 0x9F2C2B17uLL);
    }

    else
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      v12 = malloc_type_zone_malloc(v11, 0x3BFFuLL, 0x7AE6AA9DuLL);
    }

    v1[10] = v12;
    *(v1[8] + 8 * v8) = v12;
    v7 = v1[10];
    v1[11] = v7;
    v13 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v13 = malloc_default_zone();
    }

    result = malloc_type_zone_realloc(v13, v1[9], 8 * (v8 + 2), 0x100004000313F17uLL);
    v1[9] = result;
    result[v8] = 15359;
    *(v1 + 6) = v8;
    v6 = v1[10];
  }

  v1[4] = v7 - v6;
  *v7 = 0u;
  v7[1] = 0u;
  v14 = *(v1 + 6);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v1[8] + 8 * v14) + v1[4];
  }

  v16 = *v1;
  *v15 = *v1;
  *(v15 + 4) = -1;
  *(v15 + 16) = 0;
  *v1 = v16 + 1;
  v1[11] = v15 + 32;
  return result;
}

unint64_t _sql_fetch_plan_for_entity(unint64_t *a1)
{
  v1 = a1;
  v37[5] = *MEMORY[0x1E69E9840];
  if (!atomic_load(a1 + 28))
  {
    v3 = [a1 foreignKeyColumns];
    v4 = [v1 foreignEntityKeyColumns];
    v5 = [v1 foreignOrderKeyColumns];
    v6 = [v1 attributeColumns];
    v33 = v1;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v1[18]];
    v8 = [v3 count];
    v9 = [v4 count];
    v10 = [v5 count];
    v11 = v9 + v8 + v10 + [v6 count];
    v12 = v11 + 1;
    v13 = (24 * v11 + 32);
    v14 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v14 = malloc_default_zone();
    }

    v15 = malloc_type_zone_malloc(v14, v13, 0xB7E42E29uLL);
    v16 = 0;
    v15[1] = v12;
    v32 = v15;
    v17 = (v15 + 2);
    v37[0] = v7;
    v37[1] = v3;
    v37[2] = v4;
    v37[3] = v5;
    v18 = 32;
    v37[4] = v6;
    do
    {
      v34 = v16;
      v36 = v37[v16];
      v19 = [v36 count];
      v35 = v19;
      if (v19)
      {
        v20 = 0;
        do
        {
          v21 = [v36 objectAtIndex:v20];
          v22 = [v21 slot];
          if (v21)
          {
            v23 = v21[13];
          }

          else
          {
            v23 = 0;
          }

          v24 = [v21 sqlType];
          v25 = [v21 propertyType];
          v26 = v25;
          if (v25 == 1)
          {
            v27 = [objc_msgSend(v21 "propertyDescription")];
            if (v27)
            {
              v18 += 4;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = [(NSSQLColumn *)v21 roughSizeEstimate];
          if (v21)
          {
            CFRetain(v21);
          }

          v18 += v28;
          *v17 = v22;
          *(v17 + 1) = v23;
          *(v17 + 2) = v27;
          v17[12] = v24;
          v17[13] = v26;
          *(v17 + 7) = 0;
          *(v17 + 2) = v21;
          v17 += 24;
          ++v20;
        }

        while (v35 != v20);
      }

      v16 = v34 + 1;
    }

    while (v34 != 4);
    v29 = 0;
    v1 = v33;
    *v32 = v18;
    atomic_compare_exchange_strong(v33 + 28, &v29, v32);
    if (v29)
    {
      _deallocateFetchEntityPlan(v32);
    }
  }

  result = atomic_load(v1 + 28);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _prepareResultsFromResultSet(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v218[1] = *MEMORY[0x1E69E9840];
  v181 = a2;
  if (a3)
  {
    v5 = *(a3 + 136);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 4) <= 0x40000000u)
  {
    v6 = *(a1 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = PF_ALLOCATE_OBJECT_ARRAY(v6);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v190 = a1;
  if (v3)
  {
    v9 = *(v3 + 112);
    v189 = *(v5 + 56);
    v186 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *(v3 + 32);
    if (v10)
    {
      v204 = *(v10 + 42) >> 7;
    }

    else
    {
      v204 = 0;
    }

    v11 = *(v5 + 72);
    v12 = (v11 >> 2) & 7;
    v13 = *(a1 + 64);
    v209 = (a1 + 64);
    v14 = *v13;
    if (v12 == 3)
    {
      v191 = *(v3 + 128);
      v202 = 1;
    }

    else
    {
      v202 = 0;
      v191 = 0;
    }
  }

  else
  {
    v189 = *(v5 + 56);
    v186 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    v9 = 0;
    v204 = 0;
    v191 = 0;
    v11 = *(v5 + 72);
    v12 = (v11 >> 2) & 7;
    v202 = v12 == 3;
    v172 = *(a1 + 64);
    v209 = (a1 + 64);
    v14 = *v172;
  }

  i = v5;
  v15 = [*(v5 + 8) _disablePersistentStoreResultCaching];
  v203 = v15;
  v213 = v11;
  v16 = v8;
  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8;
  }

  MEMORY[0x1EEE9AC00](v15);
  v20 = &v176[-v19];
  v21 = v10;
  if (v17 > 0x200)
  {
    v22 = NSAllocateScannedUncollectable();
    v20 = v22;
  }

  else
  {
    bzero(&v176[-v19], 8 * v18);
  }

  MEMORY[0x1EEE9AC00](v22);
  v25 = &v176[-v24];
  v187 = v26;
  if (v26 > 0x200)
  {
    v27 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v176[-v24], 8 * v23);
    v27 = v25;
  }

  if (v20)
  {
    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v21;
  v207 = v27;
  if (v28)
  {
    PF_FREE_OBJECT_ARRAY(v7);
    v7 = 0;
    v30 = 0;
  }

  else
  {
    v30 = v16;
  }

  v31 = i;
  v188 = v17;
  v185 = sel_setForeignEntityKeySlot_entityKey_;
  v184 = [NSSQLRow instanceMethodForSelector:?];
  v195 = sel_setForeignKeySlot_int64_;
  v194 = [NSSQLRow instanceMethodForSelector:?];
  v183 = sel_setForeignOrderKeySlot_orderKey_;
  v182 = [NSSQLRow instanceMethodForSelector:?];
  v193 = sel_setOptLock_;
  v192 = [NSSQLRow instanceMethodForSelector:?];
  if (v3)
  {
    v32 = [*(v3 + 8) objectIDFactoryForSQLEntity:*(v31 + 40)];
  }

  else
  {
    v32 = 0;
  }

  if ((v213 & 1) == 0)
  {
    v33 = v30;
    v34 = v29;
    v35 = v32;
    v36 = v33;
    if (v33 == [v32 allocateBatch:v20 count:v33])
    {
      v33 = v33;
    }

    else
    {
      v33 = 0;
    }

    if ((v213 & 2) != 0 || !v33)
    {
      v32 = v35;
      v29 = v34;
      v30 = v36;
      if (!v33)
      {
        PF_FREE_OBJECT_ARRAY(v7);
        v30 = 0;
        v7 = 0;
        v177 = 0;
        goto LABEL_238;
      }
    }

    else
    {
      v28 = v33 == [NSSQLRow newBatchRowAllocation:v207 count:v33 forSQLEntity:*(i + 40) withOwnedObjectIDs:v20 andTimestamp:*(v190 + 8)];
      v32 = v35;
      v29 = v34;
      v30 = v36;
      if (!v28)
      {
        PF_FREE_OBJECT_ARRAY(v7);
        v7 = 0;
        v30 = 0;
        v177 = 0;
        goto LABEL_239;
      }
    }
  }

  v211 = v32;
  v177 = v30 > 0;
  if (v30 >= 1)
  {
    v37 = 0;
    v179 = 0;
    v178 = 0;
    v180 = 0;
    v38 = 0;
    v205 = v30;
    v200 = v29;
    v201 = v7;
    v199 = v30;
    v206 = v3;
    v198 = v12;
    v197 = v9;
    v196 = v20;
    while (1)
    {
        ;
      }

      v214 = _sqlEntityForEntityID(v9, *(v14 + 8));
      v39 = v211;
      if (v214 != v38)
      {
        v39 = 0;
      }

      if (v3 && v214 != v38)
      {
        v39 = [*(v3 + 8) objectIDFactoryForSQLEntity:v214];
      }

      v40 = v213;
      v211 = v39;
      if (v213)
      {
        v44 = [[v39 alloc] initWithPK64:*(v14 + 24)];
        if ((v40 & 2) != 0)
        {
          v46 = i;
          goto LABEL_210;
        }

        v48 = v214;
        v49 = v44;
        v50 = [NSSQLRow allocForSQLEntity:v214];
        v51 = *(v190 + 8);
        v208 = v49;
        v52 = [v50 initWithSQLEntity:v48 ownedObjectID:v49 andTimestamp:v51];
        v207[i] = v52;
      }

      else
      {
        v41 = i;
        v42 = *&v20[8 * i];
        v43 = _PFSetPrimaryKey(v42, *(v14 + 24));
        v44 = v42;
        if (v42 == v43)
        {
          v46 = v41;
          if ((v213 & 2) != 0)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v45 = v43;

          *&v20[8 * v41] = v45;
          v46 = v41;
          if ((v213 & 2) != 0)
          {
            v44 = v45;
LABEL_210:
            if ((v12 - 1) < 2)
            {
              goto LABEL_233;
            }

            if (!v12 || v12 == 3)
            {
              v152 = v44;
              v153 = [NSManagedObjectContext _retainedObjectWithID:v29 optionalHandler:v44 withInlineStorage:v191];

              v46 = i;
              v44 = v153;
              goto LABEL_233;
            }

LABEL_223:
            v44 = 0;
            goto LABEL_233;
          }

          v47 = atomic_load(v207[v41] + 5);
          *(v47 + 16) = v45;
          v44 = v45;
        }

        v208 = v44;
        v52 = v207[v46];
        v48 = v214;
      }

      v212 = v52;
      v53 = atomic_load(v52 + 5);
      plan_for_entity = _sql_fetch_plan_for_entity(v48);
      v55 = *(plan_for_entity + 4);
      if (v55)
      {
        v56 = (v14 + 32);
        v210 = v53 + 28;
        v57 = (plan_for_entity + 24);
        do
        {
          v58 = *(v57 - 4);
          if ((v58 - 2) > 6)
          {
            v59 = 3;
          }

          else
          {
            v59 = qword_18592E790[(v58 - 2)];
          }

          v60 = ((v56 + v59) & ~v59);
          if (*(v57 - 1))
          {
            v62 = *v60;
            v60 = (v60 + 1);
            v61 = v62 != 0;
          }

          else
          {
            v61 = 0;
          }

          v63 = (v57 - 2);
          v64 = ~v59;
          if (*(v57 - 4) <= 6u)
          {
            if ((v58 - 4) < 3)
            {
              goto LABEL_109;
            }

            if ((v58 - 2) >= 2)
            {
              if (v58 != 1)
              {
                goto LABEL_118;
              }

              v85 = ((v60 + v59) & v64);
              v76 = v85 + 1;
              if (v61)
              {
                v56 = v60;
              }

              else
              {
                v56 = v85 + 1;
              }

              v86 = *(v57 - 3);
              switch(v86)
              {
                case 10:
                  if (v61)
                  {
                    v117 = 0;
                  }

                  else
                  {
                    v117 = *v85;
                  }

                  v122 = *v63;
                  v123 = v212;
                  v124 = v183;
                  v125 = &v216;
                  goto LABEL_165;
                case 4:
                  if (v61)
                  {
                    v117 = 0;
                  }

                  else
                  {
                    v117 = *v85;
                  }

                  v122 = *v63;
                  v123 = v212;
                  v124 = v185;
                  v125 = v218;
LABEL_165:
                  (*(v125 - 32))(v123, v124, v122, v117);
                  break;
                case 1:
                  v78 = [objc_msgSend(*v57 "propertyDescription")];
                  if (!v61)
                  {
                    if (v78)
                    {
                      v80 = [MEMORY[0x1E696AD98] numberWithInt:*v85];
LABEL_107:
                      setMultiColumnValueDictionary(v53, (v57 - 2), v80);
                    }

                    else
                    {
                      type = snapshot_get_type(v53, *v63);
                      v141 = *v63;
                      v142 = *v85;
                      if (type == 115)
                      {
                        Class = object_getClass(v53);
                        IndexedIvars = object_getIndexedIvars(Class);
                        v210[v141 >> 3] &= ~(1 << (v141 & 7));
                        *(v53 + IndexedIvars[v141 + 19]) = v142;
                      }

                      else if (type == 99)
                      {
                        v143 = object_getClass(v53);
                        v144 = object_getIndexedIvars(v143);
                        v210[v141 >> 3] &= ~(1 << (v141 & 7));
                        *(v53 + v144[v141 + 19]) = v142;
                      }

                      else
                      {
                        v149 = object_getClass(v53);
                        v150 = object_getIndexedIvars(v149);
                        v210[v141 >> 3] &= ~(1 << (v141 & 7));
                        *(v53 + v150[v141 + 19]) = v142;
                      }
                    }

                    goto LABEL_178;
                  }

LABEL_111:
                  if (v78)
                  {
                    setMultiColumnValueNullFlag(v53, v57 - 4);
                  }

                  else
                  {
                    v210[*v63 >> 3] |= 1 << (*v63 & 7);
                  }

LABEL_117:
                  v56 = v60;
                  break;
              }
            }

            else
            {
              v75 = ((v60 + v59) & v64);
              v76 = (v75 + 1);
              if (v61)
              {
                v56 = v60;
              }

              else
              {
                v56 = (v75 + 1);
              }

              v77 = *(v57 - 3);
              switch(v77)
              {
                case 6:
                  if (v61)
                  {
                    v108 = 0;
                  }

                  else
                  {
                    v108 = *v75;
                  }

                  v192(v212, v193, v108);
                  break;
                case 3:
                  if (v61)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = *v75;
                  }

                  v194(v212, v195, *v63, v107);
                  break;
                case 1:
                  v78 = [objc_msgSend(*v57 "propertyDescription")];
                  if (!v61)
                  {
                    v79 = *v75;
                    if (v78)
                    {
                      v80 = [MEMORY[0x1E696AD98] numberWithLongLong:*v75];
                      goto LABEL_107;
                    }

                    v133 = *v63;
                    v134 = object_getClass(v53);
                    v135 = object_getIndexedIvars(v134);
                    v210[v133 >> 3] &= ~(1 << (v133 & 7));
                    *(v53 + v135[v133 + 19]) = v79;
LABEL_178:
                    v56 = v76;
                    break;
                  }

                  goto LABEL_111;
              }
            }
          }

          else
          {
            if (*(v57 - 4) > 0xBu)
            {
              if ((v58 - 13) < 2)
              {
                goto LABEL_117;
              }

              if (v58 == 12)
              {
LABEL_109:
                if (!v61)
                {
                  v87 = ((v60 + v59) & v64);
                  v88 = (v87 + 4);
                  v89 = CFStringCreateWithCString(0, v87 + 4, 0x8000100u);
                  v90 = *v87;
                  v91 = *(v57 - 4);
                  if (v91 == 12)
                  {
                    v92 = [MEMORY[0x1E695DFF8] URLWithString:v89];
LABEL_129:
                    v103 = v92;
                    CFRelease(v89);
                    v89 = v103;
                  }

                  else if (v91 == 4)
                  {
                    v92 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v89];
                    goto LABEL_129;
                  }

                  v56 = (v88 + v90);
                  if ([objc_msgSend(*v57 "propertyDescription")])
                  {
                    goto LABEL_153;
                  }

                  v104 = *v63;
                  v105 = v53;
                  v106 = v89;
                  goto LABEL_132;
                }
              }

              else
              {
                if (v58 != 16)
                {
                  goto LABEL_118;
                }

                v65 = [*v57 propertyDescription];
                if (v204)
                {
                  if (![v65 _isFileBackedFuture])
                  {
                    goto LABEL_118;
                  }
                }

                if (!v61)
                {
                  v66 = ((v60 + v59) & v64);
                  v68 = (v66 + 4);
                  v67 = *(v66 + 4);
                  if (v67 != 3)
                  {
                    if (v67 == 1)
                    {
                      v69 = [_PFExternalReferenceData alloc];
                      if (v206)
                      {
                        v70 = *(v206 + 184);
                      }

                      else
                      {
                        v70 = 0;
                      }

                      v71 = *v66;
                      v72 = (v66 + 4);
                      v73 = 0;
                      v74 = 0;
                      goto LABEL_188;
                    }

                    v126 = strnlen(v66 + 5, *v66 - 1);
                    v127 = [v186 stringWithFileSystemRepresentation:v66 + 5 length:v126];
                    v128 = v179;
                    if (v179)
                    {
                      if (!v206)
                      {
                        goto LABEL_168;
                      }

LABEL_182:
                      v129 = v178;
                      if (!v178)
                      {
                        v129 = *(v206 + 96);
                      }
                    }

                    else
                    {
                      if (v206)
                      {
                        v128 = *(v206 + 88);
                        goto LABEL_182;
                      }

                      v128 = 0;
LABEL_168:
                      v129 = v178;
                    }

                    v179 = v128;
                    v136 = [v128 stringByAppendingPathComponent:v127];
                    v178 = v129;
                    v137 = [v129 stringByAppendingPathComponent:v127];
                    if ([v186 fileExistsAtPath:v136])
                    {
                      v69 = [_PFExternalReferenceData alloc];
                      if (v206)
                      {
                        v70 = *(v206 + 184);
                      }

                      else
                      {
                        v70 = 0;
                      }

                      v71 = *v66;
                      v72 = (v66 + 4);
                      v73 = v136;
                      v74 = v137;
LABEL_188:
                      v138 = [(_PFExternalReferenceData *)v69 initWithStoreBytes:v72 length:v71 externalLocation:v73 safeguardLocation:v74 protectionLevel:v70];
LABEL_195:
                      v139 = v138;
                    }

                    else
                    {
                      v139 = 0;
                    }

                    v56 = (v68 + *v66);
                    if ([objc_msgSend(*v57 "propertyDescription")])
                    {
                      setMultiColumnValueDictionary(v53, (v57 - 2), v139);

                      goto LABEL_154;
                    }

                    v104 = *v63;
                    v105 = v53;
                    v106 = v139;
                    goto LABEL_132;
                  }

                  if (v206)
                  {
                    v121 = v180;
                    if (!v180)
                    {
                      v121 = *(v206 + 104);
                    }
                  }

                  else
                  {
                    v121 = v180;
                  }

                  v145 = [MEMORY[0x1E695DEF0] dataWithBytes:v68 length:*v66];
                  v146 = [_NSDataFileBackedFuture alloc];
                  v180 = v121;
                  v138 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v146, "initWithStoreMetadata:directory:", v145, [MEMORY[0x1E695DFF8] fileURLWithPath:v121 isDirectory:1]);
                  goto LABEL_195;
                }
              }

              goto LABEL_110;
            }

            if ((v58 - 7) >= 2)
            {
              if (v58 == 9)
              {
                goto LABEL_109;
              }

LABEL_118:
              if (!v61)
              {
                v93 = ((v60 + v59) & v64);
                v94 = (v93 + 4);
                v95 = CFDataCreate(0, v93 + 4, *v93);
                v96 = v95;
                v97 = *v93;
                v98 = *(v57 - 4);
                if (v98 == 11)
                {
                  if ([(__CFData *)v95 length]== 16)
                  {
                    v102 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[__CFData bytes](v96, "bytes")}];
                    goto LABEL_171;
                  }

                  v96 = 0;
                }

                else if (v98 == 18 || v98 == 15)
                {
                  v99 = [*v57 propertyDescription];
                  if ([v99 superCompositeAttribute])
                  {
                    if (*(v57 - 4) == 18)
                    {
                      if (v206)
                      {
                        v100 = *(v206 + 32);
                      }

                      else
                      {
                        v100 = 0;
                      }

                      v101 = [objc_msgSend(v100 "persistentStoreCoordinator")];
                      v216 = 0;
                      v102 = [v99 decode:v96 withRegistry:v101 error:&v216];
                      if (!v102)
                      {
                        v173 = MEMORY[0x1E695DF30];
                        v174 = *MEMORY[0x1E695D940];
                        v175 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode for %@: %@", v99, v216];
                        v217 = *MEMORY[0x1E696AA08];
                        v218[0] = v216;
                        objc_exception_throw([v173 exceptionWithName:v174 reason:v175 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v218, &v217, 1)}]);
                      }
                    }

                    else
                    {
                      v102 = [_PFRoutines retainedDecodeValue:v96 forTransformableAttribute:v99];
                    }
                  }

                  else
                  {
                    v102 = [PFFaultingTransformedValue transformedValueWithData:v96 forAttribute:v99];
                  }

LABEL_171:
                  v130 = v102;
                  CFRelease(v96);
                  v96 = v130;
                }

                v56 = (v94 + v97);
                if ([objc_msgSend(*v57 "propertyDescription")])
                {
                  setMultiColumnValueDictionary(v53, (v57 - 2), v96);

                  goto LABEL_154;
                }

                v104 = *v63;
                v105 = v53;
                v106 = v96;
LABEL_132:
                snapshot_set_object(v105, v104, v106);
                goto LABEL_154;
              }

LABEL_110:
              v78 = [objc_msgSend(*v57 "propertyDescription")];
              goto LABEL_111;
            }

            if (v61)
            {
              goto LABEL_110;
            }

            v81 = ((v60 + v59) & v64);
            v56 = (v81 + 1);
            v82 = [objc_msgSend(*v57 "propertyDescription")];
            v83 = *(v57 - 4);
            if (v82)
            {
              if (v83 == 7)
              {
                if (snapshot_get_type(v53, *v63) == 102)
                {
                  v84 = kCFNumberFloatType;
                }

                else
                {
                  v84 = kCFNumberDoubleType;
                }

                v116 = CFNumberCreate(0, v84, v81);
              }

              else
              {
                v116 = CFDateCreate(0, *v81);
              }

              v89 = v116;
LABEL_153:
              setMultiColumnValueDictionary(v53, (v57 - 2), v89);

              goto LABEL_154;
            }

            v109 = *v63;
            if (v83 != 7)
            {
              v112 = *v81;
              v118 = object_getClass(v53);
              v119 = object_getIndexedIvars(v118);
              v210[v109 >> 3] &= ~(1 << (v109 & 7));
              v120 = &v119[4 * v109];
LABEL_176:
              *(v53 + *(v120 + 19)) = v112;
              goto LABEL_154;
            }

            v110 = snapshot_get_type(v53, *v63);
            v111 = *v63;
            v112 = *v81;
            if (v110 != 102)
            {
              v131 = object_getClass(v53);
              v132 = object_getIndexedIvars(v131);
              v210[v111 >> 3] &= ~(1 << (v111 & 7));
              v120 = &v132[4 * v111];
              goto LABEL_176;
            }

            v114 = object_getClass(v53);
            v115 = object_getIndexedIvars(v114);
            v210[v111 >> 3] &= ~(1 << (v111 & 7));
            v113 = v112;
            *(v53 + v115[v111 + 19]) = v113;
          }

LABEL_154:
          v57 += 3;
          --v55;
        }

        while (v55);
      }

      v9 = v197;
      if (v203)
      {
        v12 = v198;
        v29 = v200;
        v7 = v201;
        v30 = v199;
        v20 = v196;
        if (v198 == 2)
        {
          v44 = v212;
          v3 = v206;
LABEL_222:
          v46 = i;
          goto LABEL_233;
        }

        v154 = v212;
        [(atomic_uint *)v212 knownKeyValuesPointer];
        v155 = v53;
        v207[i] = v155;
      }

      else
      {
        v151 = v212;
        [(atomic_uint *)v212 knownKeyValuesPointer];
        [(NSPersistentStoreCache *)v189 registerRow:v151 forObjectID:v208 options:0];
        v29 = v200;
        v7 = v201;
        v30 = v199;
        v12 = v198;
        v20 = v196;
      }

      if (v12 > 1)
      {
        v3 = v206;
        v46 = i;
        if (v12 == 2)
        {
          v44 = v212;
          goto LABEL_233;
        }

        if (v12 != 3)
        {
          goto LABEL_223;
        }
      }

      else
      {
        v3 = v206;
        v46 = i;
        if (v12)
        {
          if (v12 == 1)
          {
            _PFfastOidRetain(0, v208);
            v44 = v208;
            goto LABEL_222;
          }

          goto LABEL_223;
        }
      }

      v156 = [NSManagedObjectContext _retainedObjectWithID:v29 optionalHandler:v208 withInlineStorage:v191];
      v44 = v156;
      if (v203)
      {
        goto LABEL_222;
      }

      v46 = i;
      if (!v156)
      {
        goto LABEL_227;
      }

      v157 = *(v156 + 4);
      if ((v157 & 0x200) == 0)
      {
        break;
      }

      if (!v212)
      {
        goto LABEL_233;
      }

      v158 = v212 + 3;
      if (atomic_fetch_add(v212 + 3, 0) > 0)
      {
        goto LABEL_233;
      }

LABEL_232:
      atomic_fetch_add_explicit(v158, 1u, memory_order_relaxed);
LABEL_233:
      *(v7 + v46) = v44;
      v159 = *(v14 + 4);
      if ((v159 & 0x80000000) == 0)
      {
        v160 = *(*v209 + 8 * v159);
        if (v160)
        {
          v14 = v160 + *(v14 + 16);
          v37 = v46 + 1;
          v38 = v214;
          if (v37 != v205)
          {
            continue;
          }
        }
      }

      goto LABEL_238;
    }

    *(v156 + 4) = v157 | 0x200;
LABEL_227:
    if (!v212)
    {
      goto LABEL_233;
    }

    v158 = v212 + 3;
    goto LABEL_232;
  }

LABEL_238:
  if ((v213 & 2) != 0)
  {
    v165 = v188;
    p_superclass = (&OBJC_METACLASS___NSSQLForeignOrderKey + 8);
    goto LABEL_249;
  }

LABEL_239:
  v161 = v181;
  v162 = !v202;
  if (!v181)
  {
    v162 = 1;
  }

  p_superclass = &OBJC_METACLASS___NSSQLForeignOrderKey.superclass;
  if (v162)
  {
    if (v12 != 2 && v177)
    {
      v166 = v30;
      v167 = v207;
      do
      {
        v168 = *v167++;

        --v166;
      }

      while (v166);
    }
  }

  else
  {
    v164 = [_PFArray alloc];
    *v161 = [(_PFArray *)v164 initWithObjects:v207 count:v30 andFlags:26 andContext:v29];
  }

  v165 = v188;
LABEL_249:
  if (v187 >= 0x201)
  {
    NSZoneFree(0, v207);
  }

  if (v165 >= 0x201)
  {
    NSZoneFree(0, v20);
  }

  if (v12 > 3)
  {
    v169 = 10;
  }

  else
  {
    v169 = dword_18592E780[v12];
  }

  result = [objc_alloc((p_superclass + 264)) initWithObjects:v7 count:v30 andFlags:v169 andContext:v29];
  v171 = *MEMORY[0x1E69E9840];
  return result;
}