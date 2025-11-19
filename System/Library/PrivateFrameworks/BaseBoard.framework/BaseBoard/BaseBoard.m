id BSCollectionFind(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (v4[2](v4, v9))
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void BSDispatchQueueAssert(void *a1)
{
  queue = a1;
  if (queue == MEMORY[0x1E69E96A0])
  {
    BSDispatchQueueAssertMain();
  }

  else
  {
    dispatch_assert_queue_V2(queue);
  }
}

void BSDispatchQueueAssertMain()
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_assert_queue_V2(v0);
  }
}

void BSIntegerMapSetObjectForKey(void *a1, void *a2, uint64_t a3)
{
  v11 = a1;
  v5 = a2;
  v6 = v11;
  if (v11)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapSetObjectForKey(BSMutableIntegerMap *__strong _Nonnull, __strong id _Nonnull, NSInteger)"}];
    [v9 handleFailureInFunction:v10 file:@"BSIntegerMap.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    v6 = v11;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapSetObjectForKey(BSMutableIntegerMap *__strong _Nonnull, __strong id _Nonnull, NSInteger)"}];
  [v7 handleFailureInFunction:v8 file:@"BSIntegerMap.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"map"}];

  v6 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3)
  {
LABEL_4:
    [v6[1] setObject:v5 forKey:a3];
    goto LABEL_8;
  }

LABEL_7:
  objc_storeStrong(v6 + 2, a2);
LABEL_8:
}

id BSCollectionFilter(objc_class *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [[a1 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (v6[2](v6, v12))
          {
            [v7 addObject:{v12, v14}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [v5 copyWithZone:0];
  }

  return v7;
}

id BSIntegerMapObjectForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
LABEL_3:
      v4 = [v3[1] objectForKey:a2];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable BSIntegerMapObjectForKey(BSIntegerMap *__strong _Nonnull, NSInteger)"}];
    [v5 handleFailureInFunction:v6 file:@"BSIntegerMap.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v4 = v3[2];
LABEL_6:
  v7 = v4;

  return v7;
}

id BSCollectionCompactMap(objc_class *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[a1 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    v11 = *MEMORY[0x1E695E738];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v6)
        {
          v14 = v6[2](v6, v13);

          v13 = v14;
        }

        if (v13)
        {
          v15 = v13 == v11;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v7;
}

void sub_18FEF82D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sbDefaults_getBool(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 BOOLForKey:v7];

  return v8;
}

id __getMetadataForClass(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  if (v1)
  {
    pthread_mutex_lock(&__classNameToSelectorLock);
    v2 = qword_1ED44FE18;
    if (qword_1ED44FE18 || ([MEMORY[0x1E696AAA8] currentHandler], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "BSAbstractDefaultDomainClassMetadata *__getMetadataForClass(__unsafe_unretained Class)"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, @"BSAbstractDefaultDomain.m", 54, @"Class metadata map is expected to have been initialized before using %@.", v1), v6, v5, (v2 = qword_1ED44FE18) != 0))
    {
      v3 = [v2 objectForKey:v1];
    }

    else
    {
      v3 = 0;
    }

    pthread_mutex_unlock(&__classNameToSelectorLock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle(void *a1, void *a2, void *a3)
{
  v3 = _BSLogAddStateCaptureBlockForEventWithTitle(a1, 2, a2, a3);

  return v3;
}

id BSLogAddStateCaptureBlockWithTitle(void *a1, void *a2, void *a3)
{
  v3 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle(a1, a2, a3);

  return v3;
}

id _BSLogAddStateCaptureBlockForEventWithTitle(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSInvalidatable> _BSLogAddStateCaptureBlockForEventWithTitle(__strong dispatch_queue_t, BSStateDumpCaptureLevel, NSString *__strong, __strong BSLogStateCaptureBlock)"}];
    [v30 handleFailureInFunction:v31 file:@"BSSharedStateCapturing.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"stateCaptureTitle"}];

    if (v10)
    {
LABEL_3:
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_23:
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSInvalidatable> _BSLogAddStateCaptureBlockForEventWithTitle(__strong dispatch_queue_t, BSStateDumpCaptureLevel, NSString *__strong, __strong BSLogStateCaptureBlock)"}];
      [v34 handleFailureInFunction:v35 file:@"BSSharedStateCapturing.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"level != BSStateDumpCaptureLevelNone"}];

      if (v7)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }
  }

  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSInvalidatable> _BSLogAddStateCaptureBlockForEventWithTitle(__strong dispatch_queue_t, BSStateDumpCaptureLevel, NSString *__strong, __strong BSLogStateCaptureBlock)"}];
  [v32 handleFailureInFunction:v33 file:@"BSSharedStateCapturing.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"stateCaptureBlock"}];

  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_4:
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (qword_1ED450060 != -1)
  {
    dispatch_once(&qword_1ED450060, &__block_literal_global_34);
  }

  v7 = qword_1ED450068;
LABEL_8:
  v11 = v10;
  v12 = v8;
  v13 = os_state_add_handler();
  if (v13)
  {
    v14 = v13;
    os_unfair_lock_lock(&_MergedGlobals_33);
    if (!qword_1ED450058)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = qword_1ED450058;
      qword_1ED450058 = v15;
    }

    v17 = objc_alloc_init(BSLogStateCaptureEntry);
    v18 = v11;
    v19 = v18;
    if (v17)
    {
      v20 = [v18 copy];
      captureBlock = v17->_captureBlock;
      v17->_captureBlock = v20;

      v22 = v12;
      objc_storeStrong(&v17->_title, a3);

      v23 = v7;
      objc_storeStrong(&v17->_queue, v7);
    }

    else
    {

      v36 = v7;
    }

    v24 = qword_1ED450058;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
    [v24 setObject:v17 forKey:v25];

    os_unfair_lock_unlock(&_MergedGlobals_33);
    v26 = [BSStateCaptureInvalidator alloc];
    if (v26)
    {
      v37.receiver = v26;
      v37.super_class = BSStateCaptureInvalidator;
      v27 = objc_msgSendSuper2(&v37, sel_init);
      v28 = v27;
      if (v27)
      {
        *(v27 + 1) = v14;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void BSDispatchMain(void *a1)
{
  block = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    block[2](block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

dispatch_block_t BSDispatchBlockCreateWithCurrentQualityOfService(int a1, void *a2)
{
  v3 = a2;
  v4 = BSPthreadCurrentEffectiveQualityOfService();
  if (a1 <= -15)
  {
    v5 = -15;
  }

  else
  {
    v5 = a1;
  }

  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v4, v5 & (v5 >> 31), v3);

  return v6;
}

uint64_t BSPthreadCurrentEffectiveQualityOfService()
{
  v0 = pthread_self();
  v7 = 0;
  v6 = 0;
  pthread_getschedparam(v0, &v6, &v7);
  if (v7.sched_priority <= 4)
  {
    v1 = 9;
  }

  else
  {
    v1 = 17;
  }

  if (v7.sched_priority <= 20)
  {
    v2 = v1;
  }

  else
  {
    v2 = 21;
  }

  if (v7.sched_priority <= 31)
  {
    v3 = v2;
  }

  else
  {
    v3 = 25;
  }

  if (v7.sched_priority <= 37)
  {
    v4 = v3;
  }

  else
  {
    v4 = 33;
  }

  LODWORD(result) = qos_class_self();
  if (v4 <= result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

__CFString *NSStringFromBSTransactionState(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E72CB238[a1];
  }

  return v2;
}

id BSInterfaceOrientationDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    v3 = @"INVALID";
  }

  else
  {
    v3 = off_1E72CBAC8[a1];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%li)", v3, a1, v1];

  return v4;
}

dispatch_queue_t BSDispatchQueueCreate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = +[BSDispatchQueueAttributes serial];
    if (!v4)
    {
      v10 = v3;
      goto LABEL_6;
    }
  }

  v5 = v4[2];
  v6 = v3;
  if (!v5)
  {
LABEL_6:
    v11 = [v3 UTF8String];
    v8 = [(dispatch_queue_t *)v4 attributes];
    v9 = BSDispatchQueueCreateWithQualityOfService(v11, v8, QOS_CLASS_UNSPECIFIED, 0);
    goto LABEL_7;
  }

  v7 = [v3 UTF8String];
  v8 = [(dispatch_queue_t *)v4 attributes];
  v9 = dispatch_queue_create_with_target_V2(v7, v8, v4[2]);
LABEL_7:
  v12 = v9;

  return v12;
}

dispatch_queue_t BSDispatchQueueCreateWithQualityOfService(const char *a1, void *a2, dispatch_qos_class_t a3, int a4)
{
  v5 = _BSDispatchQueueAttributesForAttributes(a2, a3, a4);
  v6 = dispatch_queue_create(a1, v5);

  return v6;
}

NSObject *_BSDispatchQueueAttributesForAttributes(void *a1, dispatch_qos_class_t a2, int a3)
{
  v5 = a1;
  if (!v5)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  if (a2)
  {
    if (a3 <= -15)
    {
      v6 = -15;
    }

    else
    {
      v6 = a3;
    }

    v7 = dispatch_queue_attr_make_with_qos_class(v5, a2, v6 & (v6 >> 31));

    v5 = v7;
  }

  return v5;
}

uint64_t BSEqualStrings(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return [a1 isEqualToString:a2];
    }
  }

  return result;
}

void sub_18FEFA8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, objc_super a13)
{
  a13.super_class = _BSCompoundAssertionAcquisitionReference;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FEFA8F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void BSSerializeStringToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v6 = a1;
  v5 = a2;
  if (v6 && v5 && a3)
  {
    xpc_dictionary_set_string(v5, a3, [v6 UTF8String]);
  }
}

xpc_object_t BSCreateSerializedXPCObjectFromCGSize(double a1, double a2)
{
  objects[2] = *MEMORY[0x1E69E9840];
  objects[0] = xpc_double_create(a1);
  objects[1] = xpc_double_create(a2);
  v3 = xpc_array_create(objects, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  return v3;
}

void sub_18FEFAB58(_Unwind_Exception *a1)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v7 = a1;
  v5 = a2;
  if (v5 && v7 && a3)
  {
    v6 = BSCreateSerializedBSXPCEncodableObject(v7);
    if (v6)
    {
      xpc_dictionary_set_value(v5, a3, v6);
    }
  }
}

uint64_t BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, a2);
    v6 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9E80])
  {
    v4 = BSCreateDeserializedStringFromXPCDictionaryWithKey(v2, "bsx_class");
    v5 = NSClassFromString(v4);
    v6 = v5;
    if (v4 && !v5)
    {
      v7 = BSCreateDeserializedStringFromXPCDictionaryWithKey(v2, "bs_fallback");
      v6 = NSClassFromString(v7);
    }

    if (v6)
    {
      v8 = [[v6 alloc] initWithXPCDictionary:v2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v3 = [v9 awakeAfterUsingCoder:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

const char *BSCreateDeserializedStringFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    string = xpc_dictionary_get_string(v3, a2);
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:string encoding:4];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

id BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

char *BSDeserializeStringFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = BSCreateDeserializedStringFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

id BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = BSCreateDeserializedSetFromXPCDictionaryWithKey(a1, a2, &__block_literal_global_31);

  return v2;
}

void *BSCreateDeserializedArrayFromXPCDictionaryWithKey(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = xpc_dictionary_get_value(v5, a2);
    v10 = v9;
    if (v9 && object_getClass(v9) == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(v10);
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v14 = xpc_array_get_value(v10, i);
          if (v14)
          {
            v15 = (v7)[2](v7, v14);
            if (v15)
            {
              [v8 addObject:v15];
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

double BSDeserializeCGSizeFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v6 = xpc_dictionary_get_value(v4, a2);
    v5 = BSDeserializeCGSizeFromXPCObject(v6);
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
  }

  return v5;
}

double BSDeserializeCGSizeFromXPCObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *MEMORY[0x1E695F060];
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v2) == 2)
  {
    v3 = xpc_array_get_double(v2, 0);
    xpc_array_get_double(v2, 1uLL);
  }

  return v3;
}

uint64_t BSIntegerMapCount(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    if (v2[2])
    {
      v4 = [v3 count] + 1;
    }

    else
    {
      v4 = [v3 count];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void BSIntegerMapEnumerateWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapEnumerateWithBlock(BSIntegerMap *__strong _Nonnull, void (^__strong _Nonnull)(NSInteger, __strong id, BOOL *))"}];
    [v7 handleFailureInFunction:v8 file:@"BSIntegerMap.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapEnumerateWithBlock(BSIntegerMap *__strong _Nonnull, void (^__strong _Nonnull)(NSInteger, __strong id, BOOL *))"}];
    [v9 handleFailureInFunction:v10 file:@"BSIntegerMap.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v14 = 0;
  v6 = *(v3 + 2);
  if (!v6 || ((v5)[2](v5, 0, v6, &v14), (v14 & 1) == 0))
  {
    value = 0;
    key = 0;
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, *(v3 + 1));
    do
    {
      if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
      {
        break;
      }

      (v5)[2](v5, key, value, &v14);
    }

    while ((v14 & 1) == 0);
    NSEndMapTableEnumeration(&enumerator);
  }
}

void sub_18FEFB494(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

double BSRectRoundForScale(double a1, double a2, double a3, double a4, double a5)
{
  v9 = BSFloatRoundForScale(a1, a5);
  BSFloatRoundForScale(a2, a5);
  BSFloatRoundForScale(a3, a5);
  BSFloatRoundForScale(a4, a5);
  return v9;
}

id _BSDefaultDescriptionStyle()
{
  if (qword_1ED44FFD8 != -1)
  {
    dispatch_once(&qword_1ED44FFD8, &__block_literal_global_31);
  }

  v1 = _MergedGlobals_31;

  return v1;
}

id _BSCollectionLineBreakEachItemStyle()
{
  if (qword_1ED450008 != -1)
  {
    dispatch_once(&qword_1ED450008, &__block_literal_global_56);
  }

  v1 = qword_1ED450000;

  return v1;
}

uint64_t BSEqualSets(CFSetRef theSet, const __CFSet *a2)
{
  if (theSet == a2)
  {
    return 1;
  }

  result = 0;
  if (theSet && a2)
  {
    Count = CFSetGetCount(theSet);
    if (Count == CFSetGetCount(a2))
    {

      return [(__CFSet *)theSet isEqualToSet:a2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BSDescribeTruncationCommit(uint64_t result)
{
  if (*(result + 1096) >= 2)
  {
    v12 = v2;
    v13 = v1;
    v7 = result;
    v8 = *(result + 1040);
    if (v8 >= 1)
    {
      *(result + 16 + v8) = 0;
      CFStringAppendCString(*(result + 1064), (result + 16), 0x8000100u);
      *(v7 + 1040) = 0;
    }

    v9 = *(v7 + 1080);
    result = [*(v7 + 1064) length];
    v10 = result - v9 - *(v7 + 1088);
    if (v10 < 1)
    {
      goto LABEL_12;
    }

    v11 = *(v7 + 1096);
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v9 = v9 + (result - v9) / 2 - (v10 >> 1);
      }

      else
      {
        if (v11 != 4)
        {
LABEL_12:
          *(v7 + 1088) = 0;
          *(v7 + 1096) = 0;
          return result;
        }

        v9 += *(v7 + 1088);
      }
    }

    result = [*(v7 + 1064) replaceCharactersInRange:v9 withString:?];
    goto LABEL_12;
  }

  return result;
}

uint64_t BSRectEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (CGRectEqualToRect(*&a1, *&a5))
  {
    return 1;
  }

  v17 = vabdd_f64(a2, a6);
  if (vabdd_f64(a1, a5) >= 2.22044605e-16 || v17 >= 2.22044605e-16)
  {
    return 0;
  }

  v19 = vabdd_f64(a3, a7) < 2.22044605e-16;
  return vabdd_f64(a4, a8) < 2.22044605e-16 && v19;
}

void sub_18FEFBC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = BSSimpleAssertion;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

uint64_t BSEqualObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return [a1 isEqual:a2];
    }
  }

  return result;
}

uint64_t BSSettingsIsEmpty(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

xpc_object_t BSCreateSerializedBSXPCEncodableObject(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v1 && v2)
  {
    v4 = BSSerializeBSXPCEncodableObjectToXPCDictionary(v1, v2);
  }

  return v3;
}

id BSSerializeBSXPCEncodableObjectToXPCDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_opt_class();
    [v3 encodeWithXPCDictionary:v5];
    v7 = NSStringFromClass(v6);
    BSSerializeStringToXPCDictionaryWithKey(v7, v5, "bsx_class");

    if (objc_opt_respondsToSelector())
    {
      v8 = NSStringFromClass([v3 fallbackXPCEncodableClass]);
      BSSerializeStringToXPCDictionaryWithKey(v8, v5, "bs_fallback");
    }

    else
    {
      if (v6 == [v3 classForCoder])
      {
        goto LABEL_8;
      }

      v8 = NSStringFromClass([v3 classForCoder]);
      BSSerializeStringToXPCDictionaryWithKey(v8, v5, "bs_fallback");
    }
  }

LABEL_8:

  return v5;
}

void BSSerializeCGSizeToXPCDictionaryWithKey(void *a1, const char *a2, double a3, double a4)
{
  xdict = a1;
  if (xdict && a2)
  {
    v7 = BSCreateSerializedXPCObjectFromCGSize(a3, a4);
    xpc_dictionary_set_value(xdict, a2, v7);
  }
}

uint64_t BSCreateDeserializedSetFromXPCDictionaryWithKey(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5 && (v7 = BSCreateDeserializedArrayFromXPCDictionaryWithKey(v5, a2, v6)) != 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void BSIntegerMapRemoveObjectForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    if (a2)
    {
LABEL_3:
      [v3[1] removeObjectForKey:a2];
      goto LABEL_6;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapRemoveObjectForKey(BSMutableIntegerMap *__strong _Nonnull, NSInteger)"}];
    [v4 handleFailureInFunction:v5 file:@"BSIntegerMap.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    v3 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = v3[2];
  v3[2] = 0;

LABEL_6:
}

double BSSizeRoundForScale(double a1, double a2, double a3)
{
  v5 = BSFloatRoundForScale(a1, a3);
  BSFloatRoundForScale(a2, a3);
  return v5;
}

double BSFloatRoundForScale(double a1, double a2)
{
  v4 = fabs(a2);
  if (a2 <= 0.0 || v4 < 2.22044605e-16)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat BSFloatRoundForScale(CGFloat, CGFloat)"}];
    [v7 handleFailureInFunction:v8 file:@"BSMath.m" lineNumber:65 description:@"Scale must be specified and cannot be less than or equal to 0."];
  }

  return round(a1 * a2) / a2;
}

void BSDescribeAppendItem(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 24);
  if (v4 == 2)
  {
    (*(a2 + 16))(a2);
    if (*(a1 + 1104) == 1)
    {
      *(a1 + 1104) = 0;
    }

    v5 = *(a1 + 1112);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *(a1 + 1112) = v5 - 1;
      if (v5 >= 2)
      {
        v6 = *(a1 + 1040);
        v7 = (a1 + 16);
        if (v6 > 1021)
        {
          v7[v6] = 0;
          CFStringAppendCString(*(a1 + 1064), v7, 0x8000100u);
          *(a1 + 1040) = 0;
          v14 = *(a1 + 1064);

          CFStringAppendCString(v14, ", ", 0x8000100u);
        }

        else
        {
          *&v7[v6] = 8236;
          *(a1 + 1040) += 2;
        }
      }
    }

    return;
  }

  v8 = *(a1 + 1104);
  if (v8 <= 2)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_41;
      }

      v9 = *(a1 + 1040);
      v10 = (a1 + 16);
      if (v9 <= 1022)
      {
        v10[v9] = 32;
        v11 = *(a1 + 1040) + 1;
LABEL_34:
        *(a1 + 1040) = v11;
        goto LABEL_40;
      }

      v10[v9] = 0;
      CFStringAppendCString(*(a1 + 1064), v10, 0x8000100u);
      *(a1 + 1040) = 0;
      v15 = *(a1 + 1064);
      v16 = " ";
      goto LABEL_39;
    }

    v12 = *(a1 + 1040);
    v13 = (a1 + 16);
    if (v4 != 3)
    {
      if (v12 <= 1021)
      {
        *&v13[v12] = 8251;
        v11 = *(a1 + 1040) + 2;
        goto LABEL_34;
      }

      v13[v12] = 0;
      CFStringAppendCString(*(a1 + 1064), v13, 0x8000100u);
      *(a1 + 1040) = 0;
      v15 = *(a1 + 1064);
      v16 = "; ";
LABEL_39:
      CFStringAppendCString(v15, v16, 0x8000100u);
      goto LABEL_40;
    }

    if (v12 > 1022)
    {
      v13[v12] = 0;
      CFStringAppendCString(*(a1 + 1064), v13, 0x8000100u);
      *(a1 + 1040) = 0;
      CFStringAppendCString(*(a1 + 1064), ";", 0x8000100u);
    }

    else
    {
      v13[v12] = 59;
      ++*(a1 + 1040);
    }

    goto LABEL_26;
  }

  if (v8 == 3)
  {
LABEL_26:
    v17 = *(a1 + 1040);
    v18 = (a1 + 16);
    if (v17 > 1022)
    {
      v18[v17] = 0;
      CFStringAppendCString(*(a1 + 1064), v18, 0x8000100u);
      *(a1 + 1040) = 0;
      CFStringAppendCString(*(a1 + 1064), "\n", 0x8000100u);
    }

    else
    {
      v18[v17] = 10;
      ++*(a1 + 1040);
    }

    goto LABEL_29;
  }

  if (v8 == 4)
  {
LABEL_29:
    v19 = *(a1 + 1072);
    if (v19 < 1)
    {
LABEL_40:
      *(a1 + 1104) = 0;
      goto LABEL_41;
    }

    if (v19 >= 8)
    {
      v19 = 8;
    }

    v20 = *(&sIndentSpaceStrings + v19);
    v21 = strlen(v20);
    v22 = *(a1 + 1040);
    if ((v22 + v21) <= 1023)
    {
      v23 = v21;
      memcpy((a1 + v22 + 16), v20, v21);
      v11 = *(a1 + 1040) + v23;
      goto LABEL_34;
    }

    if (v22 >= 1)
    {
      *(a1 + 16 + v22) = 0;
      CFStringAppendCString(*(a1 + 1064), (a1 + 16), 0x8000100u);
      *(a1 + 1040) = 0;
    }

    v15 = *(a1 + 1064);
    v16 = v20;
    goto LABEL_39;
  }

LABEL_41:
  (*(a2 + 16))(a2);
  v24 = *(a1 + 1112);
  if ((v24 & 0x8000000000000000) == 0)
  {
    *(a1 + 1112) = v24 - 1;
    if (v24 >= 2)
    {
      v25 = *(a1 + 1040);
      v26 = (a1 + 16);
      if (v25 > 1022)
      {
        v26[v25] = 0;
        CFStringAppendCString(*(a1 + 1064), v26, 0x8000100u);
        *(a1 + 1040) = 0;
        CFStringAppendCString(*(a1 + 1064), ",", 0x8000100u);
      }

      else
      {
        v26[v25] = 44;
        ++*(a1 + 1040);
      }
    }
  }

  v27 = *(a1 + 1040);
  v28 = (a1 + 16);
  if (v27 > 1022)
  {
    v28[v27] = 0;
    CFStringAppendCString(*(a1 + 1064), v28, 0x8000100u);
    *(a1 + 1040) = 0;
    CFStringAppendCString(*(a1 + 1064), "\n", 0x8000100u);
  }

  else
  {
    v28[v27] = 10;
    ++*(a1 + 1040);
  }

  *(a1 + 1104) = 4;
}

uint64_t __BSDescribeAppendObjectDescription_block_invoke_3(uint64_t a1, __CFString *a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 1104);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_31;
      }

      v7 = (v4 + 1040);
      v8 = *(v4 + 1040);
      v9 = (v4 + 16);
      if (v8 <= 1022)
      {
        v9[v8] = 32;
        v10 = 1;
        goto LABEL_24;
      }

      v9[v8] = 0;
      CFStringAppendCString(*(v4 + 1064), v9, 0x8000100u);
      v13 = (v4 + 1064);
      v14 = " ";
LABEL_29:
      *v7 = 0;
      CFStringAppendCString(*v13, v14, 0x8000100u);
      goto LABEL_30;
    }

    v7 = (v4 + 1040);
    v11 = *(v4 + 1040);
    v12 = (v4 + 16);
    if (*(*(v4 + 8) + 24) != 3)
    {
      if (v11 <= 1021)
      {
        *&v12[v11] = 8251;
        v10 = 2;
        goto LABEL_24;
      }

      v12[v11] = 0;
      CFStringAppendCString(*(v4 + 1064), v12, 0x8000100u);
      v13 = (v4 + 1064);
      v14 = "; ";
      goto LABEL_29;
    }

    if (v11 > 1022)
    {
      v12[v11] = 0;
      CFStringAppendCString(*(v4 + 1064), v12, 0x8000100u);
      *(v4 + 1040) = 0;
      CFStringAppendCString(*(v4 + 1064), ";", 0x8000100u);
    }

    else
    {
      v12[v11] = 59;
      ++*v7;
    }

    goto LABEL_16;
  }

  if (v6 == 3)
  {
LABEL_16:
    v15 = *(v4 + 1040);
    v16 = (v4 + 16);
    if (v15 > 1022)
    {
      v16[v15] = 0;
      CFStringAppendCString(*(v4 + 1064), v16, 0x8000100u);
      *(v4 + 1040) = 0;
      CFStringAppendCString(*(v4 + 1064), "\n", 0x8000100u);
    }

    else
    {
      v16[v15] = 10;
      ++*(v4 + 1040);
    }

    goto LABEL_19;
  }

  if (v6 == 4)
  {
LABEL_19:
    v17 = *(v4 + 1072);
    if (v17 < 1)
    {
LABEL_30:
      *(v4 + 1104) = 0;
      goto LABEL_31;
    }

    if (v17 >= 8)
    {
      v17 = 8;
    }

    v18 = *(&sIndentSpaceStrings + v17);
    v19 = strlen(v18);
    v7 = (v4 + 1040);
    v20 = *(v4 + 1040);
    if ((v20 + v19) > 1023)
    {
      if (v20 >= 1)
      {
        *(v4 + 16 + v20) = 0;
        CFStringAppendCString(*(v4 + 1064), (v4 + 16), 0x8000100u);
        *v7 = 0;
      }

      CFStringAppendCString(*(v4 + 1064), v18, 0x8000100u);
      goto LABEL_30;
    }

    v10 = v19;
    memcpy((v4 + v20 + 16), v18, v19);
LABEL_24:
    *v7 += v10;
    goto LABEL_30;
  }

LABEL_31:
  v21 = v5[8];
  v22 = v5[9];
  if (v21 < 2 || v22 < 1)
  {
    v22 = 0;
    v24 = 1096;
  }

  else
  {
    *(v4 + 1096) = v21;
    *(v4 + 1080) = *(v4 + 1040) + [*(v4 + 1064) length];
    v24 = 1088;
  }

  *(v4 + v24) = v22;

  v25 = *(a1 + 32);
  if (a2)
  {
    if (_NSIsNSString())
    {
      v26 = [(__CFString *)a2 length];
      v27 = *(v25 + 1040);
      if (3 * v26 + v27 > 1023)
      {
        if (v27 >= 1)
        {
          *(v25 + 16 + v27) = 0;
          CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
          *(v25 + 1040) = 0;
        }

        if (v26 > 341)
        {
          [*(v25 + 1064) appendString:a2];
          goto LABEL_117;
        }

        usedBufLen = 0;
        v67.location = 0;
        v67.length = v26;
        CFStringGetBytes(a2, v67, 0x8000100u, 0, 0, (v25 + 16), 1024, &usedBufLen);
        v28 = usedBufLen;
      }

      else
      {
        usedBufLen = 0;
        v66.location = 0;
        v66.length = v26;
        CFStringGetBytes(a2, v66, 0x8000100u, 0, 0, (v25 + v27 + 16), 1024 - v27, &usedBufLen);
        v28 = *(v25 + 1040) + usedBufLen;
      }

      goto LABEL_57;
    }

    if (_NSIsNSNumber())
    {
      v31 = a2;
      v32 = *[(__CFString *)v31 objCType];
      if (v32 <= 0x62)
      {
        if (v32 > 75)
        {
          switch(v32)
          {
            case 'L':
              v49 = *(v25 + 1040);
              if (v49 >= 1)
              {
                *(v25 + 16 + v49) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 unsignedLongValue];
              v36 = @"%lu";
              goto LABEL_115;
            case 'Q':
              v51 = *(v25 + 1040);
              if (v51 >= 1)
              {
                *(v25 + 16 + v51) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 unsignedLongLongValue];
              v36 = @"%llu";
              goto LABEL_115;
            case 'S':
              v43 = *(v25 + 1040);
              if (v43 >= 1)
              {
                *(v25 + 16 + v43) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 unsignedShortValue];
              v36 = @"%hu";
              goto LABEL_115;
          }

          goto LABEL_118;
        }

        if (v32 != 66)
        {
          if (v32 == 67)
          {
            v50 = *(v25 + 1040);
            if (v50 >= 1)
            {
              *(v25 + 16 + v50) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v34 = *(v25 + 1064);
            v35 = [(__CFString *)v31 unsignedCharValue];
          }

          else
          {
            if (v32 != 73)
            {
              goto LABEL_118;
            }

            v37 = *(v25 + 1040);
            if (v37 >= 1)
            {
              *(v25 + 16 + v37) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v34 = *(v25 + 1064);
            v35 = [(__CFString *)v31 unsignedIntValue];
          }

          v36 = @"%u";
LABEL_115:
          [v34 appendFormat:v36, v35];
          goto LABEL_116;
        }
      }

      else
      {
        if (v32 > 104)
        {
          if (v32 > 112)
          {
            if (v32 == 113)
            {
              v47 = *(v25 + 1040);
              if (v47 >= 1)
              {
                *(v25 + 16 + v47) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 longLongValue];
              v36 = @"%lld";
              goto LABEL_115;
            }

            if (v32 == 115)
            {
              v44 = *(v25 + 1040);
              if (v44 >= 1)
              {
                *(v25 + 16 + v44) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 shortValue];
              v36 = @"%hi";
              goto LABEL_115;
            }

            goto LABEL_118;
          }

          if (v32 != 105)
          {
            if (v32 == 108)
            {
              v33 = *(v25 + 1040);
              if (v33 >= 1)
              {
                *(v25 + 16 + v33) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 longValue];
              v36 = @"%ld";
              goto LABEL_115;
            }

LABEL_118:
            v54 = *(v25 + 1040);
            if (v54 >= 1)
            {
              *(v25 + 16 + v54) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            [*(v25 + 1064) appendFormat:@"<***unknown type:%s>", -[__CFString objCType](v31, "objCType")];
            goto LABEL_116;
          }

          v46 = *(v25 + 1040);
          if (v46 >= 1)
          {
            *(v25 + 16 + v46) = 0;
            CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
            *(v25 + 1040) = 0;
          }

          v34 = *(v25 + 1064);
          v35 = [(__CFString *)v31 intValue];
          goto LABEL_97;
        }

        if (v32 != 99)
        {
          if (v32 == 100)
          {
            v48 = *(v25 + 1040);
            if (v48 >= 1)
            {
              *(v25 + 16 + v48) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v39 = *(v25 + 1064);
            [(__CFString *)v31 doubleValue];
            v42 = @"%0.16g";
          }

          else
          {
            if (v32 != 102)
            {
              goto LABEL_118;
            }

            v38 = *(v25 + 1040);
            if (v38 >= 1)
            {
              *(v25 + 16 + v38) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v39 = *(v25 + 1064);
            [(__CFString *)v31 floatValue];
            v41 = v40;
            v42 = @"%0.7g";
          }

          [v39 appendFormat:v42, *&v41];
LABEL_116:

          goto LABEL_117;
        }
      }

      v45 = *(v25 + 1040);
      if (v45 >= 1)
      {
        *(v25 + 16 + v45) = 0;
        CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
        *(v25 + 1040) = 0;
      }

      v34 = *(v25 + 1064);
      v35 = [(__CFString *)v31 charValue];
LABEL_97:
      v36 = @"%d";
      goto LABEL_115;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a2 appendDescriptionToStream:v25];
      goto LABEL_117;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a2 appendDescriptionToFormatter:v25];
      goto LABEL_117;
    }

    if (_NSIsNSDictionary())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __BSDescribeAppendObjectDescription_block_invoke;
      v64 = &unk_1E72CBE40;
      v65 = v25;
      [(BSDescriptionStream *)v25 _appendDictionary:a2 withName:0 itemBlock:&usedBufLen];
      goto LABEL_117;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 appendIntegerSet:a2 withName:0 format:0];
      goto LABEL_117;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __BSDescribeAppendObjectDescription_block_invoke_2;
      v64 = &unk_1E72CBE68;
      v65 = v25;
      [v25 appendIntegerMap:a2 withName:0 keyFormat:0 valueBlock:&usedBufLen];
      goto LABEL_117;
    }

    if (objc_opt_respondsToSelector())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __BSDescribeAppendObjectDescription_block_invoke_3;
      v64 = &unk_1E72CBE68;
      v65 = v25;
      [v25 appendCollection:a2 withName:0 itemBlock:&usedBufLen];
      goto LABEL_117;
    }

    if ((*(v25 + 1056) & 1) != 0 || (v55 = *(v25 + 8), *(v55 + 8) == 2))
    {
      if (objc_opt_respondsToSelector())
      {
        v56 = [(__CFString *)a2 succinctDescription];
        goto LABEL_134;
      }

      v55 = *(v25 + 8);
    }

    if (*(v55 + 16) == 2)
    {
      [(__CFString *)a2 debugDescription];
    }

    else
    {
      [(__CFString *)a2 description];
    }
    v56 = ;
LABEL_134:
    v57 = v56;
    v58 = [(__CFString *)v56 length];
    v59 = *(v25 + 1040);
    if (v59 + 3 * v58 > 1023)
    {
      if (v59 >= 1)
      {
        *(v25 + 16 + v59) = 0;
        CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
        *(v25 + 1040) = 0;
      }

      if (v58 > 341)
      {
        [*(v25 + 1064) appendString:v57];
        goto LABEL_142;
      }

      usedBufLen = 0;
      v69.location = 0;
      v69.length = v58;
      CFStringGetBytes(v57, v69, 0x8000100u, 0, 0, (v25 + 16), 1024, &usedBufLen);
      v60 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v68.location = 0;
      v68.length = v58;
      CFStringGetBytes(v57, v68, 0x8000100u, 0, 0, (v25 + v59 + 16), 1024 - v59, &usedBufLen);
      v60 = *(v25 + 1040) + usedBufLen;
    }

    *(v25 + 1040) = v60;
LABEL_142:

    goto LABEL_117;
  }

  v29 = *(v25 + 1040);
  v30 = v25 + 16 + v29;
  if (v29 <= 1018)
  {
    *(v30 + 4) = 62;
    *v30 = 1818848828;
    v28 = *(v25 + 1040) + 5;
LABEL_57:
    *(v25 + 1040) = v28;
    goto LABEL_117;
  }

  *v30 = 0;
  CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
  *(v25 + 1040) = 0;
  CFStringAppendCString(*(v25 + 1064), "<nil>", 0x8000100u);
LABEL_117:
  v52 = *(a1 + 32);
  *(v52 + 1104) = 1;
  return BSDescribeTruncationCommit(v52);
}

void BSIntegerMapEnumerateKeysWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapEnumerateKeysWithBlock(BSIntegerMap *__strong _Nonnull, void (^__strong _Nonnull)(NSInteger, BOOL *))"}];
    [v6 handleFailureInFunction:v7 file:@"BSIntegerMap.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSIntegerMapEnumerateKeysWithBlock(BSIntegerMap *__strong _Nonnull, void (^__strong _Nonnull)(NSInteger, BOOL *))"}];
    [v8 handleFailureInFunction:v9 file:@"BSIntegerMap.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v12 = 0;
  if (!v3[2] || ((v5)[2](v5, 0, &v12), (v12 & 1) == 0))
  {
    key = 0;
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, v3[1]);
    do
    {
      if (!NSNextMapEnumeratorPair(&enumerator, &key, 0))
      {
        break;
      }

      (v5)[2](v5, key, &v12);
    }

    while ((v12 & 1) == 0);
    NSEndMapTableEnumeration(&enumerator);
  }
}

void sub_18FEFD4D0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t _BSProtobufDecodePOD(void *a1, uint64_t a2, uint64_t a3)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  v6 = *v5;
  if (v6 <= 0x63)
  {
    if (*v5 > 0x4Bu)
    {
      if (*v5 <= 0x52u)
      {
        if (v6 != 76)
        {
          if (v6 != 81)
          {
            goto LABEL_225;
          }

          goto LABEL_11;
        }

        goto LABEL_57;
      }

      if (v6 != 83)
      {
        if (v6 != 99)
        {
          goto LABEL_225;
        }

        goto LABEL_38;
      }

      goto LABEL_70;
    }

    if (v6 == 66)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      while (1)
      {
        buf[0] = 0;
        v42 = [a1 position] + 1;
        if (v42 >= [a1 position] && (v43 = objc_msgSend(a1, "position") + 1, v43 <= objc_msgSend(a1, "length")))
        {
          [objc_msgSend(a1 "data")];
          [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
        }

        else
        {
          [a1 _setError];
        }

        v41 |= (buf[0] & 0x7F) << v39;
        if ((buf[0] & 0x80) == 0)
        {
          break;
        }

        v39 += 7;
        v12 = v40++ >= 9;
        if (v12)
        {
LABEL_98:
          v38 = 0;
          goto LABEL_109;
        }
      }

      v38 = (v41 != 0) & ~[a1 hasError];
      goto LABEL_109;
    }

    if (v6 == 67)
    {
LABEL_38:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        buf[0] = 0;
        v22 = [a1 position] + 1;
        if (v22 >= [a1 position] && (v23 = objc_msgSend(a1, "position") + 1, v23 <= objc_msgSend(a1, "length")))
        {
          [objc_msgSend(a1 "data")];
          [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
        }

        else
        {
          [a1 _setError];
        }

        v21 |= (buf[0] & 0x7F) << v19;
        if ((buf[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v12 = v20++ >= 9;
        if (v12)
        {
          goto LABEL_98;
        }
      }

      if ([a1 hasError])
      {
        v38 = 0;
      }

      else
      {
        v38 = v21;
      }

LABEL_109:
      *a3 = v38;
      return 1;
    }

    if (v6 != 73)
    {
LABEL_225:
      v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported encoding:%s", *(a2 + 8)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufDecodePOD(PBDataReader *, _BSProtobufFieldEntry *, void *, NSError **)"}];
        v127 = 2114;
        v128 = @"BSProtobufSerialization.m";
        v129 = 1024;
        v130 = 987;
        v131 = 2114;
        v132 = v125;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      goto LABEL_230;
    }

    goto LABEL_27;
  }

  if (*v5 <= 0x6Bu)
  {
    if (v6 == 100)
    {
      *buf = 0;
      v44 = [a1 position] + 8;
      if (v44 >= [a1 position] && (v45 = objc_msgSend(a1, "position") + 8, v45 <= objc_msgSend(a1, "length")))
      {
        [objc_msgSend(a1 "data")];
        [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
        v46 = *buf;
      }

      else
      {
        [a1 _setError];
        v46 = 0;
      }

      *a3 = v46;
      return 1;
    }

    if (v6 == 102)
    {
      *buf = 0;
      v47 = [a1 position] + 4;
      if (v47 >= [a1 position] && (v48 = objc_msgSend(a1, "position") + 4, v48 <= objc_msgSend(a1, "length")))
      {
        [objc_msgSend(a1 "data")];
        [a1 setPosition:{objc_msgSend(a1, "position") + 4}];
        v49 = *buf;
      }

      else
      {
        [a1 _setError];
        v49 = 0;
      }

      *a3 = v49;
      return 1;
    }

    if (v6 != 105)
    {
      goto LABEL_225;
    }

LABEL_27:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      buf[0] = 0;
      v16 = [a1 position] + 1;
      if (v16 >= [a1 position] && (v17 = objc_msgSend(a1, "position") + 1, v17 <= objc_msgSend(a1, "length")))
      {
        [objc_msgSend(a1 "data")];
        [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
      }

      else
      {
        [a1 _setError];
      }

      v15 |= (buf[0] & 0x7F) << v13;
      if ((buf[0] & 0x80) == 0)
      {
        break;
      }

      v13 += 7;
      v12 = v14++ >= 9;
      if (v12)
      {
        v18 = 0;
        goto LABEL_89;
      }
    }

    if ([a1 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

LABEL_89:
    *a3 = v18;
    return 1;
  }

  if (*v5 <= 0x72u)
  {
    if (v6 != 108)
    {
      if (v6 != 113)
      {
        goto LABEL_225;
      }

LABEL_11:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        buf[0] = 0;
        v10 = [a1 position] + 1;
        if (v10 >= [a1 position] && (v11 = objc_msgSend(a1, "position") + 1, v11 <= objc_msgSend(a1, "length")))
        {
          [objc_msgSend(a1 "data")];
          [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
        }

        else
        {
          [a1 _setError];
        }

        v9 |= (buf[0] & 0x7F) << v7;
        if ((buf[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v12 = v8++ >= 9;
        if (v12)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      if ([a1 hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v9;
      }

LABEL_69:
      *a3 = v31;
      return 1;
    }

LABEL_57:
    v27 = 0;
    v28 = 0;
    v9 = 0;
    while (1)
    {
      buf[0] = 0;
      v29 = [a1 position] + 1;
      if (v29 >= [a1 position] && (v30 = objc_msgSend(a1, "position") + 1, v30 <= objc_msgSend(a1, "length")))
      {
        [objc_msgSend(a1 "data")];
        [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
      }

      else
      {
        [a1 _setError];
      }

      v9 |= (buf[0] & 0x7F) << v27;
      if ((buf[0] & 0x80) == 0)
      {
        goto LABEL_66;
      }

      v27 += 7;
      v12 = v28++ >= 9;
      if (v12)
      {
LABEL_65:
        v31 = 0;
        goto LABEL_69;
      }
    }
  }

  if (v6 == 115)
  {
LABEL_70:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      buf[0] = 0;
      v35 = [a1 position] + 1;
      if (v35 >= [a1 position] && (v36 = objc_msgSend(a1, "position") + 1, v36 <= objc_msgSend(a1, "length")))
      {
        [objc_msgSend(a1 "data")];
        [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
      }

      else
      {
        [a1 _setError];
      }

      v34 |= (buf[0] & 0x7F) << v32;
      if ((buf[0] & 0x80) == 0)
      {
        break;
      }

      v32 += 7;
      v12 = v33++ >= 9;
      if (v12)
      {
        v37 = 0;
        goto LABEL_82;
      }
    }

    if ([a1 hasError])
    {
      v37 = 0;
    }

    else
    {
      v37 = v34;
    }

LABEL_82:
    *a3 = v37;
    return 1;
  }

  if (v6 != 123)
  {
    goto LABEL_225;
  }

  if (!strncmp("{CGPoint=", *(a2 + 8), 9uLL) || !strncmp("{CGSize=", v5, 8uLL))
  {
    *buf = 0;
    v50 = [a1 position] + 8;
    if (v50 >= [a1 position] && (v51 = objc_msgSend(a1, "position") + 8, v51 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v52 = *buf;
    }

    else
    {
      [a1 _setError];
      v52 = 0;
    }

    *a3 = v52;
    *buf = 0;
    v53 = [a1 position] + 8;
    if (v53 >= [a1 position] && (v54 = objc_msgSend(a1, "position") + 8, v54 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v55 = *buf;
    }

    else
    {
      [a1 _setError];
      v55 = 0;
    }

    *(a3 + 8) = v55;
  }

  else if (!strncmp("{CGRect=", v5, 8uLL))
  {
    *buf = 0;
    v56 = [a1 position] + 8;
    if (v56 >= [a1 position] && (v57 = objc_msgSend(a1, "position") + 8, v57 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v58 = *buf;
    }

    else
    {
      [a1 _setError];
      v58 = 0;
    }

    *a3 = v58;
    *buf = 0;
    v100 = [a1 position] + 8;
    if (v100 >= [a1 position] && (v101 = objc_msgSend(a1, "position") + 8, v101 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v102 = *buf;
    }

    else
    {
      [a1 _setError];
      v102 = 0;
    }

    *(a3 + 8) = v102;
    *buf = 0;
    v103 = [a1 position] + 8;
    if (v103 >= [a1 position] && (v104 = objc_msgSend(a1, "position") + 8, v104 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v105 = *buf;
    }

    else
    {
      [a1 _setError];
      v105 = 0;
    }

    *(a3 + 16) = v105;
    *buf = 0;
    v106 = [a1 position] + 8;
    if (v106 >= [a1 position] && (v107 = objc_msgSend(a1, "position") + 8, v107 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v108 = *buf;
    }

    else
    {
      [a1 _setError];
      v108 = 0;
    }

    *(a3 + 24) = v108;
  }

  else if (!strncmp("{CGAffineTransform=", v5, 0x13uLL))
  {
    *buf = 0;
    v59 = [a1 position] + 8;
    if (v59 >= [a1 position] && (v60 = objc_msgSend(a1, "position") + 8, v60 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v61 = *buf;
    }

    else
    {
      [a1 _setError];
      v61 = 0;
    }

    *a3 = v61;
    *buf = 0;
    v109 = [a1 position] + 8;
    if (v109 >= [a1 position] && (v110 = objc_msgSend(a1, "position") + 8, v110 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v111 = *buf;
    }

    else
    {
      [a1 _setError];
      v111 = 0;
    }

    *(a3 + 8) = v111;
    *buf = 0;
    v112 = [a1 position] + 8;
    if (v112 >= [a1 position] && (v113 = objc_msgSend(a1, "position") + 8, v113 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v114 = *buf;
    }

    else
    {
      [a1 _setError];
      v114 = 0;
    }

    *(a3 + 16) = v114;
    *buf = 0;
    v115 = [a1 position] + 8;
    if (v115 >= [a1 position] && (v116 = objc_msgSend(a1, "position") + 8, v116 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v117 = *buf;
    }

    else
    {
      [a1 _setError];
      v117 = 0;
    }

    *(a3 + 24) = v117;
    *buf = 0;
    v118 = [a1 position] + 8;
    if (v118 >= [a1 position] && (v119 = objc_msgSend(a1, "position") + 8, v119 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v120 = *buf;
    }

    else
    {
      [a1 _setError];
      v120 = 0;
    }

    *(a3 + 32) = v120;
    *buf = 0;
    v121 = [a1 position] + 8;
    if (v121 >= [a1 position] && (v122 = objc_msgSend(a1, "position") + 8, v122 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v123 = *buf;
    }

    else
    {
      [a1 _setError];
      v123 = 0;
    }

    *(a3 + 40) = v123;
  }

  else
  {
    if (strncmp("{CATransform3D=", v5, 0xFuLL))
    {
      v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported encoding:%s", v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufDecodePOD(PBDataReader *, _BSProtobufFieldEntry *, void *, NSError **)"}];
        v127 = 2114;
        v128 = @"BSProtobufSerialization.m";
        v129 = 1024;
        v130 = 981;
        v131 = 2114;
        v132 = v125;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

LABEL_230:
      qword_1EAD33B00 = [v125 UTF8String];
      __break(0);
      JUMPOUT(0x18FEFED20);
    }

    *buf = 0;
    v24 = [a1 position] + 8;
    if (v24 >= [a1 position] && (v25 = objc_msgSend(a1, "position") + 8, v25 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v26 = *buf;
    }

    else
    {
      [a1 _setError];
      v26 = 0;
    }

    *a3 = v26;
    *buf = 0;
    v62 = [a1 position] + 8;
    if (v62 >= [a1 position] && (v63 = objc_msgSend(a1, "position") + 8, v63 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 8) = *buf;
    *buf = 0;
    v64 = [a1 position] + 8;
    if (v64 >= [a1 position] && (v65 = objc_msgSend(a1, "position") + 8, v65 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 16) = *buf;
    *buf = 0;
    v66 = [a1 position] + 8;
    if (v66 >= [a1 position] && (v67 = objc_msgSend(a1, "position") + 8, v67 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 24) = *buf;
    *buf = 0;
    v68 = [a1 position] + 8;
    if (v68 >= [a1 position] && (v69 = objc_msgSend(a1, "position") + 8, v69 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 32) = *buf;
    *buf = 0;
    v70 = [a1 position] + 8;
    if (v70 >= [a1 position] && (v71 = objc_msgSend(a1, "position") + 8, v71 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 40) = *buf;
    *buf = 0;
    v72 = [a1 position] + 8;
    if (v72 >= [a1 position] && (v73 = objc_msgSend(a1, "position") + 8, v73 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 48) = *buf;
    *buf = 0;
    v74 = [a1 position] + 8;
    if (v74 >= [a1 position] && (v75 = objc_msgSend(a1, "position") + 8, v75 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
    }

    else
    {
      [a1 _setError];
    }

    *(a3 + 56) = *buf;
    *buf = 0;
    v76 = [a1 position] + 8;
    if (v76 >= [a1 position] && (v77 = objc_msgSend(a1, "position") + 8, v77 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v78 = *buf;
    }

    else
    {
      [a1 _setError];
      v78 = 0;
    }

    *(a3 + 64) = v78;
    *buf = 0;
    v79 = [a1 position] + 8;
    if (v79 >= [a1 position] && (v80 = objc_msgSend(a1, "position") + 8, v80 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v81 = *buf;
    }

    else
    {
      [a1 _setError];
      v81 = 0;
    }

    *(a3 + 72) = v81;
    *buf = 0;
    v82 = [a1 position] + 8;
    if (v82 >= [a1 position] && (v83 = objc_msgSend(a1, "position") + 8, v83 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v84 = *buf;
    }

    else
    {
      [a1 _setError];
      v84 = 0;
    }

    *(a3 + 80) = v84;
    *buf = 0;
    v85 = [a1 position] + 8;
    if (v85 >= [a1 position] && (v86 = objc_msgSend(a1, "position") + 8, v86 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v87 = *buf;
    }

    else
    {
      [a1 _setError];
      v87 = 0;
    }

    *(a3 + 88) = v87;
    *buf = 0;
    v88 = [a1 position] + 8;
    if (v88 >= [a1 position] && (v89 = objc_msgSend(a1, "position") + 8, v89 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v90 = *buf;
    }

    else
    {
      [a1 _setError];
      v90 = 0;
    }

    *(a3 + 96) = v90;
    *buf = 0;
    v91 = [a1 position] + 8;
    if (v91 >= [a1 position] && (v92 = objc_msgSend(a1, "position") + 8, v92 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v93 = *buf;
    }

    else
    {
      [a1 _setError];
      v93 = 0;
    }

    *(a3 + 104) = v93;
    *buf = 0;
    v94 = [a1 position] + 8;
    if (v94 >= [a1 position] && (v95 = objc_msgSend(a1, "position") + 8, v95 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v96 = *buf;
    }

    else
    {
      [a1 _setError];
      v96 = 0;
    }

    *(a3 + 112) = v96;
    *buf = 0;
    v97 = [a1 position] + 8;
    if (v97 >= [a1 position] && (v98 = objc_msgSend(a1, "position") + 8, v98 <= objc_msgSend(a1, "length")))
    {
      [objc_msgSend(a1 "data")];
      [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
      v99 = *buf;
    }

    else
    {
      [a1 _setError];
      v99 = 0;
    }

    *(a3 + 120) = v99;
  }

  return 1;
}

uint64_t _BSProtobufDecodeObjectWithClassOverride(void *a1, void *a2, void **a3, void *a4)
{
  v12[1] = 0;
  v12[2] = 0;
  if (!PBReaderPlaceMark())
  {
    return 0;
  }

  v8 = [a2 protobufSchema];
  if (*(v8 + 73) == 1)
  {
    v9 = [[a2 alloc] initForProtobufDecoding];
  }

  else
  {
    v9 = objc_alloc_init(a2);
  }

  v12[0] = v9;
  v10 = _BSProtobufSchemaDecodeMessage(v8, v12, a1, a4);
  if (v10)
  {
    *a3 = v12[0];
    PBReaderRecallMark();
  }

  else
  {
    *a3 = 0;
  }

  return v10;
}

uint64_t _BSProtobufSchemaDecodeMessage(uint64_t a1, void **a2, void *a3, void *a4)
{
  v6 = a1;
  v64 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v7 = 0;
  v8 = *(a1 + 16);
  v9 = *MEMORY[0x1E696A798];
  v48 = *MEMORY[0x1E696A578];
LABEL_4:
  while (v6)
  {
    v49[0] = 0;
    v49[1] = 0;
    if (!v8)
    {
LABEL_24:
      while (1)
      {
        v17 = [a3 position];
        if (v17 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
        {
          break;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          buf[0] = 0;
          v21 = [a3 position] + 1;
          if (v21 >= [a3 position] && (v22 = objc_msgSend(a3, "position") + 1, v22 <= objc_msgSend(a3, "length")))
          {
            [objc_msgSend(a3 "data")];
            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v20 |= (buf[0] & 0x7F) << v18;
          if ((buf[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          if (v19++ >= 9)
          {
            v20 = 0;
            goto LABEL_37;
          }
        }

        if ([a3 hasError])
        {
          v20 = 0;
        }

LABEL_37:
        if ([a3 hasError])
        {
          if (a4)
          {
            v31 = MEMORY[0x1E696ABC0];
            v54 = v48;
            v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"decode error: mystery error decoding class %@", v6[1]];
            v7 = 1;
            *a4 = [v31 errorWithDomain:v9 code:22 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v55, &v54, 1)}];
            goto LABEL_63;
          }

LABEL_62:
          v7 = 1;
LABEL_63:
          if (v8)
          {
            PBReaderRecallMark();
          }

          v6 = v6[2];
          goto LABEL_4;
        }

        if ((v20 & 7) == 4)
        {
          goto LABEL_58;
        }

        v24 = v20 >> 3;
        v25 = v6[3];
        if (v25 < 1)
        {
LABEL_43:
          v27 = BSLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v30 = v6[1];
            *buf = 67109378;
            *v59 = v24;
            *&v59[4] = 2114;
            *&v59[6] = v30;
            _os_log_error_impl(&dword_18FEF6000, v27, OS_LOG_TYPE_ERROR, "decode error: tag %d doesn't exist in schema for class %{public}@", buf, 0x12u);
          }

          v28 = PBReaderSkipValueWithTag();
          if (v28)
          {
            v29 = 4;
          }

          else
          {
            v29 = 1;
          }

          if (a4 && (v28 & 1) == 0)
          {
            v37 = MEMORY[0x1E696ABC0];
            v52 = v48;
            v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"decode error: corruption at tag %d / class %@", v24, v6[1]];
            v38 = MEMORY[0x1E695DF20];
            v39 = &v53;
            v40 = &v52;
LABEL_77:
            *a4 = [v37 errorWithDomain:v9 code:22 userInfo:{objc_msgSend(v38, "dictionaryWithObjects:forKeys:count:", v39, v40, 1)}];
            return 0;
          }
        }

        else
        {
          v26 = v6[5];
          while (*v26 != v24)
          {
            v26 += 96;
            if (!--v25)
            {
              goto LABEL_43;
            }
          }

          if (!(*(v26 + 56))(a3))
          {
            return 0;
          }

          v29 = 0;
        }

        v7 = 0;
        if (v29 == 1)
        {
          return 0;
        }
      }

      if (v7)
      {
        goto LABEL_62;
      }

LABEL_58:
      if (![a3 hasError])
      {
        v7 = 0;
        goto LABEL_63;
      }

      if (a4)
      {
        v37 = MEMORY[0x1E696ABC0];
        v50 = v48;
        v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"decode error: mystery error (at end) decoding class %@", *(a1 + 8)];
        v38 = MEMORY[0x1E695DF20];
        v39 = &v51;
        v40 = &v50;
        goto LABEL_77;
      }

      return 0;
    }

    v10 = 0;
    while (1)
    {
      buf[0] = 0;
      v11 = [a3 position] + 1;
      if (v11 >= [a3 position] && (v12 = objc_msgSend(a3, "position") + 1, v12 <= objc_msgSend(a3, "length")))
      {
        [objc_msgSend(a3 "data")];
        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
      }

      if ((buf[0] & 0x80000000) == 0)
      {
        break;
      }

      if (v10++ > 8)
      {
        goto LABEL_16;
      }
    }

    [a3 hasError];
LABEL_16:
    v14 = PBReaderPlaceMark();
    v15 = v14;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    if (a4 && (v14 & 1) == 0)
    {
      v47 = MEMORY[0x1E696ABC0];
      v56 = v48;
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"decode error: mystery error (2) decoding class %@ (pos:%d length:%d)", v6[1], objc_msgSend(a3, "position"), objc_msgSend(a3, "length")];
      *a4 = [v47 errorWithDomain:v9 code:22 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v57, &v56, 1)}];
      v16 = 3;
    }

    if (v15)
    {
      v7 = 0;
      goto LABEL_24;
    }

    v7 = 1;
    if (v16)
    {
      break;
    }
  }

  if (v7)
  {
    return 0;
  }

  if (*(a1 + 72) != 1)
  {
    return 1;
  }

  v32 = *a2;
  v49[0] = 0;
  v33 = [v32 didFinishProtobufDecodingWithError:v49];
  v34 = v33;
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = v49[0] == 0;
  }

  v36 = !v35;
  if (!v35)
  {
    if (a4)
    {
      *a4 = v49[0];
    }

    goto LABEL_84;
  }

  if (!v33 || !v49[0])
  {
LABEL_84:
    if (v33 != v32)
    {
      v42 = v33;

      *a2 = v34;
    }

    return v36 ^ 1u;
  }

  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"non-nil return value from -[%@ didFinishProtobufDecodingWithError:], but received error %@", v32, v49[0]];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufInvokeDecodeDidFinish(id *, NSError **)"}];
    *buf = 138544130;
    *v59 = v44;
    *&v59[8] = 2114;
    *&v59[10] = @"BSProtobufSerialization.m";
    v60 = 1024;
    v61 = 694;
    v62 = 2114;
    v63 = v43;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  result = [v43 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

uint64_t _BSProtobufSchemaEncodeMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 74))
  {
    v8 = [objc_alloc(*(a1 + 8)) initProtobufTranslatorForObject:a2];
    v9 = _BSProtobufSchemaEncodeMessageWithExplicitIvarBaseAddress(a1, v8, a3, a4);
    if (v8)
    {
    }

    return v9;
  }

  else
  {
    if (objc_opt_class() != *(a1 + 8) && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"got:%@ expected:%@", objc_opt_class(), *(a1 + 8)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufSchemaEncodeMessage(BSProtobufSchema *, id, PBDataWriter *, NSError **)"}];
        v14 = 2114;
        v15 = @"BSProtobufSerialization.m";
        v16 = 1024;
        v17 = 1106;
        v18 = 2114;
        v19 = v11;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      qword_1EAD33B00 = [v11 UTF8String];
      __break(0);
      JUMPOUT(0x18FEFF76CLL);
    }

    return _BSProtobufSchemaEncodeMessageWithExplicitIvarBaseAddress(a1, a2, a3, a4);
  }
}

uint64_t _BSProtobufSchemaEncodeMessageWithExplicitIvarBaseAddress(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a1[2];
  v9 = 1;
  v22 = v8;
  do
  {
    while (1)
    {
      if (v8)
      {
        PBDataWriterPlaceMark();
      }

      v23 = v9;
      v10 = v7[3];
      if (v10 >= 1)
      {
        v11 = 0;
        while (1)
        {
          v12 = v7[5] + 96 * v11;
          v13 = *(v12 + 88);
          v14 = *(v12 + 16);
          if (*(v12 + 64) >= 1)
          {
            break;
          }

          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_17:
          if (++v11 >= v10)
          {
            goto LABEL_18;
          }
        }

        v15 = 0;
        do
        {
          v16 = *(*(v12 + 72) + 8 * v15);
          if ([objc_opt_class() isEqual:*(v16 + 32)])
          {
            v12 = v16;
            goto LABEL_15;
          }

          ++v15;
        }

        while (v15 < *(v12 + 64));
        if (v13)
        {
          v18 = MEMORY[0x1E696AEC0];
          Name = ivar_getName(*(v12 + 24));
          v20 = [v18 stringWithFormat:@"encode ivar %s: unexpected class %@", Name, objc_opt_class()];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufSchemaEncodeMessageWithExplicitIvarBaseAddress(BSProtobufSchema *, void *, PBDataWriter *, NSError **)"}];
            v26 = 2114;
            v27 = @"BSProtobufSerialization.m";
            v28 = 1024;
            v29 = 1145;
            v30 = 2114;
            v31 = v20;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

          qword_1EAD33B00 = [v20 UTF8String];
          __break(0);
          JUMPOUT(0x18FEFF9BCLL);
        }

LABEL_15:
        result = (*(v12 + 48))(a3, v12, a2 + v14, a4);
        if (!result)
        {
          return result;
        }

        v10 = v7[3];
        goto LABEL_17;
      }

LABEL_18:
      v7 = v7[2];
      v8 = v22;
      if (!v22)
      {
        break;
      }

      PBDataWriterRecallMark();
      v9 = v23 + 1;
      if (!v7)
      {
        return 1;
      }
    }

    v9 = v23;
  }

  while (v7);
  return 1;
}

uint64_t _BSProtobufEncodePOD(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *v2;
  if (v3 > 0x63)
  {
    if (*v2 <= 0x6Bu)
    {
      if (v3 != 100)
      {
        if (v3 == 102)
        {
          PBDataWriterWriteFloatField();
          return 1;
        }

        if (v3 != 105)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (*v2 <= 0x72u)
      {
        if (v3 == 108 || v3 == 113)
        {
          goto LABEL_31;
        }

        goto LABEL_40;
      }

      if (v3 == 115)
      {
        goto LABEL_31;
      }

      if (v3 != 123)
      {
        goto LABEL_40;
      }

      if (!strncmp("{CGPoint=", *(a2 + 8), 9uLL) || !strncmp("{CGSize=", v2, 8uLL))
      {
        PBDataWriterWriteDoubleField();
      }

      else if (!strncmp("{CGRect=", v2, 8uLL))
      {
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
      }

      else if (!strncmp("{CGAffineTransform=", v2, 0x13uLL))
      {
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
      }

      else
      {
        if (strncmp("{CATransform3D=", v2, 0xFuLL))
        {
          v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported encoding:%s", v2];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufEncodePOD(PBDataWriter *, _BSProtobufFieldEntry *, void *, NSError **)"}];
            v8 = 2114;
            v9 = @"BSProtobufSerialization.m";
            v10 = 1024;
            v11 = 893;
            v12 = 2114;
            v13 = v5;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

LABEL_45:
          qword_1EAD33B00 = [v5 UTF8String];
          __break(0);
          JUMPOUT(0x18FEFFE74);
        }

        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
        PBDataWriterWriteDoubleField();
      }
    }

    PBDataWriterWriteDoubleField();
    return 1;
  }

  if (*v2 <= 0x4Bu)
  {
    if (v3 == 66)
    {
      PBDataWriterWriteBOOLField();
      return 1;
    }

    if (v3 == 67 || v3 == 73)
    {
      goto LABEL_31;
    }

LABEL_40:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported encoding:%s", *(a2 + 8)];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSProtobufEncodePOD(PBDataWriter *, _BSProtobufFieldEntry *, void *, NSError **)"}];
      v8 = 2114;
      v9 = @"BSProtobufSerialization.m";
      v10 = 1024;
      v11 = 899;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    goto LABEL_45;
  }

  if (*v2 <= 0x52u)
  {
    if (v3 != 76 && v3 != 81)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (v3 != 83 && v3 != 99)
  {
    goto LABEL_40;
  }

LABEL_31:
  PBDataWriterWriteUint64Field();
  return 1;
}

double BSMonotonicReferencedTimeFromMachTime(unint64_t a1)
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once_f(&_MergedGlobals_9, 0, __machTimeScaleInit);
  }

  return *&qword_1ED44FD90 * a1;
}

objc_class *_BSProtobufValidateClassForEncoding(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (BSProtobufClassImplmementsProtobufSchema(a2))
  {
    return a2;
  }

  v5 = NSClassFromString([@"_BSProtobufTranslator_" stringByAppendingString:{objc_msgSend(a2, "description")}]);
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Class %@ does not conform to BSProtobufSerializable, and a translator class does not exist for it", a1, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class _BSProtobufValidateClassForEncoding(const char *, Class)"}];
      v13 = 2114;
      v14 = @"BSProtobufSerialization.m";
      v15 = 1024;
      v16 = 363;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF00120);
  }

  v4 = v5;
  if (!BSProtobufClassImplmementsProtobufSchema(v5))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Class %@ does not conform to BSProtobufSerializable, and neither does the translator class", a1, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class _BSProtobufValidateClassForEncoding(const char *, Class)"}];
      v13 = 2114;
      v14 = @"BSProtobufSerialization.m";
      v15 = 1024;
      v16 = 366;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF001DCLL);
  }

  if (!class_getInstanceMethod(v4, sel_initProtobufTranslatorForObject_))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Class %@ translator (%@) does not implement initProtobufTranslatorForObject:", a1, a2, v4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class _BSProtobufValidateClassForEncoding(const char *, Class)"}];
      v13 = 2114;
      v14 = @"BSProtobufSerialization.m";
      v15 = 1024;
      v16 = 369;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v9 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0029CLL);
  }

  if (!class_getInstanceMethod(v4, sel_didFinishProtobufDecodingWithError_))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Class %@ translator does not implement didFinishProtobufDecodingWithError: -- translators must return an instance of the original class", a1, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class _BSProtobufValidateClassForEncoding(const char *, Class)"}];
      v13 = 2114;
      v14 = @"BSProtobufSerialization.m";
      v15 = 1024;
      v16 = 372;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF00358);
  }

  return v4;
}

BOOL BSProtobufClassImplmementsProtobufSchema(void *a1)
{
  outCount = 0;
  Class = object_getClass(a1);
  v2 = class_copyMethodList(Class, &outCount);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Description = method_getDescription(v3[i]);
      v6 = Description->name == sel_protobufSchema;
      if (Description->name == sel_protobufSchema)
      {
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  free(v3);
  return v6;
}

uint64_t _BSProtobufEncodeRepeatFieldObject(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = *v19;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v19 != v10)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v18 + 1) + 8 * v11);
    v13 = [*(a2 + 32) protobufSchema];
    if (*(a2 + 64) >= 1)
    {
      v14 = 0;
      while (1)
      {
        v15 = *(*(a2 + 72) + 8 * v14);
        if ([objc_opt_class() isEqual:*(v15 + 32)])
        {
          break;
        }

        if (++v14 >= *(a2 + 64))
        {
          goto LABEL_12;
        }
      }

      v13 = [*(v15 + 32) protobufSchema];
    }

LABEL_12:
    PBDataWriterPlaceMark();
    result = _BSProtobufSchemaEncodeMessage(v13, v12, a1, a4);
    if (!result)
    {
      return result;
    }

    PBDataWriterRecallMark();
    if (++v11 == v9)
    {
      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 1;
    }
  }
}

uint64_t _BSProtobufEncodeObject(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3)
  {
    PBDataWriterPlaceMark();
    result = _BSProtobufSchemaEncodeMessage([*(a2 + 32) protobufSchema], v4, a1, a4);
    if (!result)
    {
      return result;
    }

    PBDataWriterRecallMark();
  }

  return 1;
}

void _BSXPCEncodeIvarsForObject(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"coder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeIvarsForObject(NSObject<BSXPCAutoCoding> *const __strong _Nonnull, const __strong id _Nonnull)"}];
      *buf = 138544130;
      v24 = v9;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 558;
      v29 = 2114;
      v30 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v10 = v8;
    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0105CLL);
  }

  if (!a1)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"object"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeIvarsForObject(NSObject<BSXPCAutoCoding> *const __strong _Nonnull, const __strong id _Nonnull)"}];
      *buf = 138544130;
      v24 = v12;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 559;
      v29 = 2114;
      v30 = v11;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v13 = v11;
    qword_1EAD33B00 = [v11 UTF8String];
    __break(0);
    JUMPOUT(0x18FF01138);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[object respondsToSelector:@selector(membersForCoder)]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeIvarsForObject(NSObject<BSXPCAutoCoding> *const __strong _Nonnull, const __strong id _Nonnull)"}];
      *buf = 138544130;
      v24 = v15;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 560;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v16 = v14;
    qword_1EAD33B00 = [v14 UTF8String];
    __break(0);
    JUMPOUT(0x18FF01214);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = objc_opt_respondsToSelector() & 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___BSXPCEncodeIvarsForObject_block_invoke;
  v19[3] = &unk_1E72CC430;
  v19[4] = a1;
  v6 = v4;
  v22 = v5;
  v20 = v6;
  v21 = a2;
  v7 = MEMORY[0x193AE5AC0](v19);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___BSXPCEncodeIvarsForObject_block_invoke_2;
    v17[3] = &unk_1E72CC458;
    v18 = v7;
    _BSXPCEncodeDictionaryWithKey(a2, @"bsx_auto", v17);
  }

  else
  {
    v7[2](v7);
  }
}

id BSLogMachPort()
{
  if (BSLogMachPort_onceToken != -1)
  {
    dispatch_once(&BSLogMachPort_onceToken, &__block_literal_global_10);
  }

  v1 = BSLogMachPort___logObj;

  return v1;
}

__CFString *NSStringFromBSVersionedPID(unint64_t a1)
{
  if (a1 == -1)
  {
    v3 = @"<invalid>";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d(v%X)", a1, HIDWORD(a1), v1];
  }

  return v3;
}

id BSXPCObjectBaseClass()
{
  if (qword_1ED44FF68 != -1)
  {
    dispatch_once(&qword_1ED44FF68, &__block_literal_global_27);
  }

  v1 = _MergedGlobals_26;

  return v1;
}

id BSXPCAutoCodingGetIvars(uint64_t a1, void *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"class"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
      v104 = 2114;
      v105 = @"BSXPCAutoCoding.m";
      v106 = 1024;
      v107 = 229;
      v108 = 2114;
      v109 = v57;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v57 UTF8String];
    __break(0);
    JUMPOUT(0x18FF020C0);
  }

  if (!a1)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"object"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
      v104 = 2114;
      v105 = @"BSXPCAutoCoding.m";
      v106 = 1024;
      v107 = 230;
      v108 = 2114;
      v109 = v58;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v58 UTF8String];
    __break(0);
    JUMPOUT(0x18FF02188);
  }

  AssociatedObject = objc_getAssociatedObject(a2, sel_membersForCoder);
  if (!AssociatedObject)
  {
    v70 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cf = objc_alloc_init(MEMORY[0x1E695DF90]);
    v98 = 0;
    if (BSObjCClassImplementsSelector(a2, sel_membersForCoder, &v98))
    {
      v5 = v98(a1, sel_membersForCoder);
    }

    else
    {
      v5 = 0;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = [v5 bs_set];
    v72 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
    if (!v72)
    {
LABEL_52:
      if ([v78 count])
      {
        v25 = [objc_msgSend(v78 "allKeys")];
        outCount = 0;
        v26 = class_copyPropertyList(a2, &outCount);
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            v28 = v26[i];
            v29 = property_copyAttributeValue(v28, "G");
            v30 = MEMORY[0x1E696AEC0];
            Name = v29;
            if (!v29)
            {
              Name = property_getName(v28);
            }

            v32 = [v30 bs_stringWithUTF8String:Name];
            if ([v25 containsObject:v32])
            {
              v33 = property_copyAttributeValue(v28, "V");
              if (!v33)
              {
                v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"property %@ from %@ has no ivar", v32, NSStringFromClass(a2)];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
                  *buf = 138544130;
                  v103 = v60;
                  v104 = 2114;
                  v105 = @"BSXPCAutoCoding.m";
                  v106 = 1024;
                  v107 = 316;
                  v108 = 2114;
                  v109 = v59;
                  _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                }

                qword_1EAD33B00 = [v59 UTF8String];
                __break(0);
                JUMPOUT(0x18FF0224CLL);
              }

              v34 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:v33];
              if ([v78 objectForKey:v34])
              {
                v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot map @selector(%@) to IVAR(%@) because a member already exists with that name", v32, v34];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
                  *buf = 138544130;
                  v103 = v62;
                  v104 = 2114;
                  v105 = @"BSXPCAutoCoding.m";
                  v106 = 1024;
                  v107 = 319;
                  v108 = 2114;
                  v109 = v61;
                  _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                }

                qword_1EAD33B00 = [v61 UTF8String];
                __break(0);
                JUMPOUT(0x18FF02308);
              }

              [v78 setObject:objc_msgSend(v78 forKey:{"objectForKey:", v32), v34}];
              [v78 removeObjectForKey:v32];
              [cf setObject:objc_msgSend(cf forKey:{"objectForKey:", v32), v34}];
              [cf removeObjectForKey:v32];
              free(v33);
            }

            free(v29);
          }
        }

        free(v26);
      }

      if ([v78 count])
      {
        v35 = [MEMORY[0x1E695DFA8] set];
        v36 = [objc_msgSend(v78 "allKeys")];
        *buf = 0;
        v37 = class_copyIvarList(a2, buf);
        if (*buf)
        {
          v38 = 0;
          v39 = MEMORY[0x1E69E9E38];
          do
          {
            v40 = v37[v38];
            v41 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:ivar_getName(v40)];
            if ([v36 containsObject:v41])
            {
              v42 = [v78 objectForKey:v41];
              v43 = [cf objectForKey:v41];
              if (v42 == v39)
              {
                v44 = 0;
              }

              else
              {
                v44 = v42;
              }

              if (v43 == v39)
              {
                v45 = 0;
              }

              else
              {
                v45 = v43;
              }

              [v35 addObject:{+[BSObjCIvar ivarWithName:ivar:containedClasses:alternateNames:](BSObjCIvar, v41, v40, v44, v45)}];
            }

            ++v38;
          }

          while (v38 < *buf);
        }

        free(v37);
      }

      else
      {
        v35 = 0;
      }

      if ([v35 count])
      {
        v50 = BSLogCommon();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v53 = NSStringFromClass(a2);
          v54 = [objc_msgSend(v35 "bs_array")];
          *buf = 138412546;
          v103 = v53;
          v104 = 2112;
          v105 = v54;
          _os_log_debug_impl(&dword_18FEF6000, v50, OS_LOG_TYPE_DEBUG, "%@ will auto-code: %@", buf, 0x16u);
        }
      }

      os_unfair_lock_lock(&_MergedGlobals_24);
      AssociatedObject = objc_getAssociatedObject(a2, sel_membersForCoder);
      if (!AssociatedObject)
      {
        if (!v35)
        {
          v35 = [MEMORY[0x1E695DFD8] set];
        }

        objc_setAssociatedObject(a2, sel_membersForCoder, v35, 3);
        AssociatedObject = objc_getAssociatedObject(a2, sel_membersForCoder);
      }

      os_unfair_lock_unlock(&_MergedGlobals_24);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v78)
      {
        CFRelease(v78);
      }

      if (v70)
      {
        CFRelease(v70);
      }

      return AssociatedObject;
    }

    v6 = 0x1E696A000uLL;
    v7 = 0x1E695D000uLL;
    v73 = *v95;
LABEL_10:
    v75 = 0;
    while (1)
    {
      if (*v95 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v94 + 1) + 8 * v75);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E69E9E38];
        v10 = MEMORY[0x1E69E9E38];
        v11 = v8;
        goto LABEL_49;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v55 = [*(v6 + 3776) stringWithFormat:@"%@ returned invalid member: %@", NSStringFromClass(a2), v8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v56 = [*(v6 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
          *buf = 138544130;
          v103 = v56;
          v104 = 2114;
          v105 = @"BSXPCAutoCoding.m";
          v106 = 1024;
          v107 = 296;
          v108 = 2114;
          v109 = v55;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        qword_1EAD33B00 = [v55 UTF8String];
        __break(0);
        JUMPOUT(0x18FF01FF8);
      }

      v74 = [v8 firstObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v65 = [*(v6 + 3776) stringWithFormat:@"%@ returned invalid array for member: %@", NSStringFromClass(a2), v8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v66 = [*(v6 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
          *buf = 138544130;
          v103 = v66;
          v104 = 2114;
          v105 = @"BSXPCAutoCoding.m";
          v106 = 1024;
          v107 = 253;
          v108 = 2114;
          v109 = v65;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        qword_1EAD33B00 = [v65 UTF8String];
        __break(0);
        JUMPOUT(0x18FF02498);
      }

      if ([v8 count] <= 1)
      {
        v67 = [*(v6 + 3776) stringWithFormat:@"%@ returned invalid array for member: %@", NSStringFromClass(a2), v8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v68 = [*(v6 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
          *buf = 138544130;
          v103 = v68;
          v104 = 2114;
          v105 = @"BSXPCAutoCoding.m";
          v106 = 1024;
          v107 = 254;
          v108 = 2114;
          v109 = v67;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        qword_1EAD33B00 = [v67 UTF8String];
        __break(0);
        JUMPOUT(0x18FF02560);
      }

      v80 = [*(v7 + 3952) array];
      v82 = [*(v7 + 3952) array];
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v12 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
      v13 = [v12 countByEnumeratingWithState:&v90 objects:v100 count:16];
      if (v13)
      {
        break;
      }

LABEL_48:
      v9 = [v82 copy];
      v10 = [v80 copy];
      v11 = v74;
LABEL_49:
      v24 = v11;
      if ([v78 objectForKey:?])
      {
        v63 = [*(v6 + 3776) stringWithFormat:@"%@ returned multiple members named %@", NSStringFromClass(a2), v24];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v64 = [*(v6 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
          *buf = 138544130;
          v103 = v64;
          v104 = 2114;
          v105 = @"BSXPCAutoCoding.m";
          v106 = 1024;
          v107 = 299;
          v108 = 2114;
          v109 = v63;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        qword_1EAD33B00 = [v63 UTF8String];
        __break(0);
        JUMPOUT(0x18FF023D0);
      }

      [v78 setObject:v9 forKey:v24];
      [cf setObject:v10 forKey:v24];
      if (++v75 == v72)
      {
        v72 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
        if (!v72)
        {
          goto LABEL_52;
        }

        goto LABEL_10;
      }
    }

    v83 = *v91;
    v81 = v12;
LABEL_20:
    v84 = v13;
    v14 = 0;
    while (1)
    {
      if (*v91 != v83)
      {
        objc_enumerationMutation(v81);
      }

      v15 = *(*(&v90 + 1) + 8 * v14);
      if (objc_opt_class() == v15)
      {
        [v82 addObject:v15];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = [*(v6 + 3776) stringWithFormat:@"%@ returned invalid sub-member of %@: %@", NSStringFromClass(a2), v74, v15];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v47 = [*(v6 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
            *buf = 138544130;
            v103 = v47;
            v104 = 2114;
            v105 = @"BSXPCAutoCoding.m";
            v106 = 1024;
            v107 = 290;
            v108 = 2114;
            v109 = v46;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

          qword_1EAD33B00 = [v46 UTF8String];
          __break(0);
          JUMPOUT(0x18FF01C80);
        }

        v16 = NSClassFromString(v15);
        if (!v16)
        {
          if ([(NSString *)v15 rangeOfString:@"xpc_"]== 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_43;
          }

          v79 = -[NSString stringByTrimmingCharactersInSet:](v15, "stringByTrimmingCharactersInSet:", [MEMORY[0x1E696AB08] punctuationCharacterSet]);
          v17 = [(NSString *)v79 componentsSeparatedByString:@"_"];
          v18 = v6;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v19 = [(NSArray *)v17 countByEnumeratingWithState:&v86 objects:v99 count:16];
          if (!v19)
          {
            goto LABEL_79;
          }

          v20 = *v87;
LABEL_31:
          v21 = 0;
          while (1)
          {
            if (*v87 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v86 + 1) + 8 * v21);
            if (([v22 isEqualToString:@"xpc"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"type") & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"t") & 1) == 0)
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [(NSArray *)v17 countByEnumeratingWithState:&v86 objects:v99 count:16];
              if (!v19)
              {
LABEL_79:
                v48 = [*(v18 + 3776) stringWithFormat:@"Unable to parse xpc type from %@", v79];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v49 = [*(v18 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
                  *buf = 138544130;
                  v103 = v49;
                  v104 = 2114;
                  v105 = @"BSXPCAutoCoding.m";
                  v106 = 1024;
                  v107 = 275;
                  v108 = 2114;
                  v109 = v48;
                  _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                }

                qword_1EAD33B00 = [v48 UTF8String];
                __break(0);
                JUMPOUT(0x18FF01D40);
              }

              goto LABEL_31;
            }
          }

          if (!v22)
          {
            goto LABEL_79;
          }

          v69 = v22;
          v6 = v18;
          v7 = 0x1E695D000;
          v23 = [*(v18 + 3776) stringWithFormat:@"OS_xpc_%@", v69];
          v16 = NSClassFromString(v23);
          if (!v16)
          {
            [MEMORY[0x1E695DF30] raise:@"BSXPCAutoCoding" format:{@"%@ is not the name of a real class", v23}];
LABEL_43:
            if (![(NSString *)v15 hasPrefix:@""]&& ![(NSString *)v15 hasPrefix:@"@"])
            {
              v51 = [*(v6 + 3776) stringWithFormat:@"%@ returned invalid sub-member of %@ that does is not a key name and does not map to a realized class: %@", NSStringFromClass(a2), v74, v15];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v52 = [*(v6 + 3776) stringWithUTF8String:{"NSSet<BSObjCIvar *> * _Nonnull BSXPCAutoCodingGetIvars(NSObject<BSXPCAutoCoding> * _Nonnull, Class _Nonnull)"}];
                *buf = 138544130;
                v103 = v52;
                v104 = 2114;
                v105 = @"BSXPCAutoCoding.m";
                v106 = 1024;
                v107 = 287;
                v108 = 2114;
                v109 = v51;
                _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
              }

              qword_1EAD33B00 = [v51 UTF8String];
              __break(0);
              JUMPOUT(0x18FF01EC8);
            }

            [v80 addObject:{-[NSString stringByTrimmingCharactersInSet:](v15, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"@"}];
            goto LABEL_46;
          }
        }

        [v82 addObject:v16];
      }

LABEL_46:
      if (++v14 == v84)
      {
        v13 = [v81 countByEnumeratingWithState:&v90 objects:v100 count:16];
        if (!v13)
        {
          goto LABEL_48;
        }

        goto LABEL_20;
      }
    }
  }

  return AssociatedObject;
}

void sub_18FF02568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CFTypeRef cf, CFTypeRef a21)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a21)
  {
    CFRelease(a21);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  _Unwind_Resume(exception_object);
}

void _BSXPCDecodeIvarsForObject(char *a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCDecodeIvarsForObject(NSObject<BSXPCAutoCoding> *const __strong _Nonnull, const __strong id _Nonnull)"}];
    [v43 handleFailureInFunction:v44 file:@"BSXPCCoder.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"coder"}];
  }

  v53 = a1;
  if (a1)
  {
    BSXPCObjectBaseClass();
    if (objc_opt_isKindOfClass())
    {
      return;
    }
  }

  else
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCDecodeIvarsForObject(NSObject<BSXPCAutoCoding> *const __strong _Nonnull, const __strong id _Nonnull)"}];
    [v45 handleFailureInFunction:v46 file:@"BSXPCCoder.m" lineNumber:689 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = 0;
    obj = 0;
LABEL_12:
    cls = objc_opt_class();
    v51 = *MEMORY[0x1E695D940];
LABEL_13:
    if (cls && cls != objc_opt_class())
    {
      context = objc_autoreleasePoolPush();
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v7 = BSXPCAutoCodingGetIvars(v53, cls);
      v52 = v7;
      v8 = [v7 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (!v8)
      {
        goto LABEL_72;
      }

      v54 = *v57;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v57 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v10 = *(*(&v56 + 1) + 8 * v9);
          if (v10)
          {
            v11 = *(v10 + 16);
            v12 = *(v10 + 40);
          }

          else
          {
            v11 = 0;
            v12 = 0;
          }

          v13 = v12;
          v14 = [v13 firstObject];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v11;
          }

          v17 = v16;

          if ([a2 containsValueForKey:v17])
          {
            if (v10)
            {
              v18 = *(v10 + 8);
              v19 = *(v10 + 24);
            }

            else
            {
              v18 = 0;
              v19 = 0;
            }

            v20 = v19;
            Offset = ivar_getOffset(v18);
            TypeEncoding = ivar_getTypeEncoding(v18);
            v23 = *TypeEncoding;
            if (v23 == 35)
            {
              v31 = [a2 decodeStringForKey:v17];
              v32 = NSClassFromString(v31);
              object_setIvarWithStrongDefault(v53, v18, v32);
            }

            else
            {
              v24 = &v53[Offset];
              if (v23 == 66)
              {
                *v24 = [a2 decodeBoolForKey:v17];
              }

              else
              {
                if (v23 != 64)
                {
                  v33 = v23 & 0xFFFFFFDF;
                  if ((v23 & 0xFFFFFFDF) <= 75)
                  {
                    if (v33 == 67)
                    {
                      *v24 = [a2 decodeUInt64ForKey:v17];
                      goto LABEL_60;
                    }

                    if (v33 == 73)
                    {
                      *v24 = [a2 decodeUInt64ForKey:v17];
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    if (v33 == 76 || v33 == 81)
                    {
                      *v24 = [a2 decodeUInt64ForKey:v17];
                      goto LABEL_60;
                    }

                    if (v33 == 83)
                    {
                      *v24 = [a2 decodeUInt64ForKey:v17];
                      goto LABEL_60;
                    }
                  }

                  if (*TypeEncoding > 0x65u)
                  {
                    if (v23 == 123)
                    {
                      v39 = [v20 encoding];
                      v40 = v39;
                      [a2 decodeStruct:v24 withObjCType:objc_msgSend(v39 forKey:{"UTF8String"), v17}];

                      goto LABEL_60;
                    }

                    if (v23 == 102)
                    {
                      [a2 decodeDoubleForKey:v17];
                      *&v36 = v36;
                      *v24 = LODWORD(v36);
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    if (v23 == 42)
                    {
                      v37 = [a2 decodeStringForKey:v17];
                      v38 = v37;
                      *v24 = strdup([v37 UTF8String]);

                      goto LABEL_60;
                    }

                    if (v23 == 100)
                    {
                      [a2 decodeDoubleForKey:v17];
                      *v24 = v35;
                      goto LABEL_60;
                    }
                  }

                  [MEMORY[0x1E695DF30] raise:v51 format:{@"Unsupported type encoding (%s) for ivar %@", TypeEncoding, v11}];
                  goto LABEL_60;
                }

                v25 = [v20 objectClass];
                if (v20 && (v26 = v25) != 0)
                {
                  v27 = [v20 objectContainedClasses];
                  v28 = [v27 firstObject];

                  if (v28)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = [v20 objectContainedClasses];
                      v30 = [a2 decodeDictionaryOfClass:objc_msgSend(v29 forKey:{"lastObject"), v17}];

                      goto LABEL_59;
                    }

                    v34 = [a2 decodeCollectionOfClass:v26 containingClass:v28 forKey:v17];
                  }

                  else
                  {
                    if ([v26 bs_isXPCObject])
                    {
                      [a2 decodeXPCObjectOfType:v26 forKey:v17];
                    }

                    else
                    {
                      [a2 decodeObjectOfClass:v26 forKey:v17];
                    }
                    v34 = ;
                  }

                  v30 = v34;
LABEL_59:
                  object_setIvarWithStrongDefault(v53, v18, v30);
                }

                else
                {
                  [MEMORY[0x1E695DF30] raise:v51 format:{@"Unable to determine class of ivar %@{public} from encoding: %s", v11, TypeEncoding}];
                }
              }
            }

LABEL_60:
          }

          ++v9;
        }

        while (v8 != v9);
        v7 = v52;
        v41 = [v52 countByEnumeratingWithState:&v56 objects:v60 count:16];
        v8 = v41;
        if (!v41)
        {
LABEL_72:

          cls = class_getSuperclass(cls);
          objc_autoreleasePoolPop(context);
          goto LABEL_13;
        }
      }
    }

    if (obj)
    {
      v42 = _BSXPCPopEncodingContext(a2, v47);
    }

    goto LABEL_77;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    v3 = *(a2 + 8);
  }

  v4 = v3;
  v5 = xpc_dictionary_get_dictionary(v4, "bsx_auto");
  v6 = v5;
  v47 = v4;
  if (v5)
  {
    obj = v5;
    if (xpc_dictionary_get_count(v5))
    {
      objc_storeStrong((a2 + 24), v6);
      goto LABEL_12;
    }
  }

  else
  {
    obj = 0;
  }

LABEL_77:
}

uint64_t _BSShortBSDProcessInfoForPID(int a1, void *a2)
{
  result = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    if (a2)
    {
      result = BSSandboxCanGetProcessInfo(a1);
      if (result)
      {
        if (proc_pidinfo(a1, 13, 0, a2, 64) == 64)
        {
          return 1;
        }

        else
        {
          v5 = BSLogCommon();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v6 = __error();
            v7 = strerror(*v6);
            v8[0] = 67109378;
            v8[1] = a1;
            v9 = 2082;
            v10 = v7;
            _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "Unable to get short BSD proc info for %d: %{public}s", v8, 0x12u);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

id _BSMachPortRightDescription(unsigned int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = getpid();
  if (a1 >= 4)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v12 = off_1E72CB770[a1];
  }

  if (a2 == 1)
  {
    v13 = @":ext";
  }

  else
  {
    v13 = &stru_1F03A1A98;
  }

  v14 = [a5 length];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@" from %@", a5];
  }

  else
  {
    v15 = &stru_1F03A1A98;
  }

  v16 = [v10 stringWithFormat:@"(%i:%x:%@%@ %@)%@", v11, a4, v12, v13, a3, v15];
  if (v14)
  {
  }

  return v16;
}

void sub_18FF03164(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t BSSandboxCanGetMachTaskName(int a1)
{
  if (getpid() == a1)
  {
    v1 = 1;
  }

  else
  {
    if (qword_1ED44FE38 != -1)
    {
      dispatch_once(&qword_1ED44FE38, &__block_literal_global_5_0);
    }

    v1 = byte_1ED44FE22;
  }

  return v1 & 1;
}

id BSProcessNameForPID(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (getpid() == a1)
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v2 processName];
  }

  else if (a1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v9 = 0u;
    memset(v10, 0, sizeof(v10));
    if (_BSShortBSDProcessInfoForPID(a1, &v9))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    }

    else
    {
      v3 = 0;
    }

    if (![v3 length])
    {
      memset(v8, 0, 512);
      if (_BSProcessInfoForPID(a1, v8))
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v8[15] + 3];

        v3 = v4;
      }
    }

    if (![v3 length])
    {
      v5 = BSExecutablePathForPID();
      v6 = [v5 lastPathComponent];

      v3 = v6;
    }
  }

  return v3;
}

void sub_18FF033A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id BSProcessDescriptionForPID(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = BSProcessNameForPID(a1);
  v4 = [v2 stringWithFormat:@"%@.%d", v3, a1];

  return v4;
}

id BSBundleIDForAuditToken(__int128 *a1)
{
  v2 = BSGetVersionedPID();
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  if (v2 == BSVersionedPIDForAuditToken(&v8))
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    [v4 bundleIdentifier];
  }

  else
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v4 = BSExecutablePathForAuditToken();
    BSBundleIDForExecutablePath(v4);
  }
  v6 = ;

  return v6;
}

uint64_t BSSandboxCanGetProcessInfo(int a1)
{
  if (getpid() == a1)
  {
    v1 = 1;
  }

  else
  {
    if (qword_1ED44FE30 != -1)
    {
      dispatch_once(&qword_1ED44FE30, &__block_literal_global_2_0);
    }

    v1 = byte_1ED44FE21;
  }

  return v1 & 1;
}

id BSExecutablePathForAuditToken()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v8 = *MEMORY[0x1E69E9840];
  v1 = BSPIDForAuditToken(v0);
  if (v1 < 1)
  {
    v5 = 0;
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (BSSandboxCanGetProcessInfo(v1) && (v3 = proc_pidpath_audittoken(v0, buffer, 0x1000u), v3 >= 1))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v3 encoding:4];
      v5 = [v4 stringByStandardizingPath];
    }

    else
    {
      v5 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  return v5;
}

uint64_t BSGetVersionedPID()
{
  if (BSGetVersionedPID_onceToken != -1)
  {
    dispatch_once(&BSGetVersionedPID_onceToken, &__block_literal_global_7);
  }

  return BSGetVersionedPID___versionedPID;
}

id BSBundleIDForExecutablePath(void *a1)
{
  v1 = _BSBundleInfoForExecutablePath(a1, 0);
  v2 = [v1 bs_safeStringForKey:*MEMORY[0x1E695E4F0]];

  return v2;
}

CFDictionaryRef _BSBundleInfoForExecutablePath(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 stringByDeletingLastPathComponent];
  if (BSSandboxCanAccessPath(v4))
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = CFBundleCopyInfoDictionaryForURL(v5);
      v8 = [v4 rangeOfString:@".bundle/"];
      if ([(__CFDictionary *)v7 count]&& v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
LABEL_19:
        v10 = v7;
        objc_autoreleasePoolPop(v6);
        if (a2)
        {
          *a2 = [(__CFURL *)v9 path];
        }

        goto LABEL_22;
      }

      v11 = _CFBundleCopyBundleURLForExecutableURL();
      v12 = v11;
      if (!v11)
      {
        v9 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v21 = CFBundleCopyInfoDictionaryInDirectory(v11);
      if ([(__CFDictionary *)v21 count])
      {
        v13 = [(__CFURL *)v5 lastPathComponent];
        v14 = [(__CFDictionary *)v21 bs_safeStringForKey:*MEMORY[0x1E695E4E8]];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v9 = v12;
          v16 = v21;

          v7 = v16;
LABEL_17:

          goto LABEL_18;
        }

        v17 = BSLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(__CFURL *)v12 path];
          v19 = [v3 lastPathComponent];
          *buf = 138412546;
          v23 = v18;
          v24 = 2112;
          v25 = v19;
          _os_log_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_DEFAULT, "Resolved bundle path %@ does not match executable %@", buf, 0x16u);
        }
      }

      v9 = 0;
      goto LABEL_17;
    }
  }

  v10 = 0;
  if (a2)
  {
    *a2 = 0;
  }

LABEL_22:

  return v10;
}

BOOL BSSandboxCanAccessPath(void *a1)
{
  v1 = a1;
  if (v1)
  {
    getpid();
    [v1 fileSystemRepresentation];
    v2 = sandbox_check() == 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BSVersionedPIDForAuditToken(uint64_t a1)
{
  if (!BSAuditTokenIsValid(a1))
  {
    return -1;
  }

  v2 = *(a1 + 16);
  *v6.val = *a1;
  *&v6.val[4] = v2;
  v3 = audit_token_to_pidversion(&v6);
  v4 = *(a1 + 16);
  *v6.val = *a1;
  *&v6.val[4] = v4;
  return audit_token_to_pid(&v6) | (v3 << 32);
}

uint64_t BSPIDForAuditToken(uint64_t a1)
{
  if (!BSAuditTokenIsValid(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  *v4.val = *a1;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

void sub_18FF0461C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BSSerializeArrayToXPCDictionaryWithKey(void *a1, void *a2, const char *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3 && v7 && v8 && [v16 count])
  {
    v10 = xpc_array_create(0, 0);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v16;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = v9[2](v9, *(*(&v17 + 1) + 8 * v14));
          if (v15)
          {
            xpc_array_append_value(v10, v15);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    xpc_dictionary_set_value(v7, a3, v10);
  }
}

void BSSerializeCGRectToXPCDictionaryWithKey(void *a1, const char *a2, double a3, double a4, double a5, double a6)
{
  xdict = a1;
  if (xdict && a2)
  {
    v11 = BSCreateSerializedXPCObjectFromCGRect(a3, a4, a5, a6);
    xpc_dictionary_set_value(xdict, a2, v11);
  }
}

id __BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = BSCreateSerializedBSXPCEncodableObject(a2);

  return v2;
}

xpc_object_t BSCreateSerializedXPCObjectFromCGRect(double a1, double a2, double a3, double a4)
{
  objects[4] = *MEMORY[0x1E69E9840];
  objects[0] = xpc_double_create(a1);
  objects[1] = xpc_double_create(a2);
  objects[2] = xpc_double_create(a3);
  objects[3] = xpc_double_create(a4);
  v7 = xpc_array_create(objects, 4uLL);
  for (i = 3; i != -1; --i)
  {
  }

  return v7;
}

void sub_18FF04BEC(_Unwind_Exception *a1)
{
  for (i = 24; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void BSSettingsEncodeAppendSettingArrayEntry(void *a1, uint64_t a2, void *a3, void *a4)
{
  objects[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v10 = v9[2](v9, a2, v8, &v19);
  v11 = v19;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSSettingsEncodeAppendSettingArrayEntry(__strong xpc_object_t, NSUInteger, __strong id, __strong BSSettingEncodeBlock)"}];
    [v17 handleFailureInFunction:v18 file:@"BSSettings.m" lineNumber:84 description:{@"encodeBlock didn't return an object for %llu -> %@", a2, v8}];
  }

  objects[0] = xpc_uint64_create(a2);
  v12 = v10;
  objects[1] = v12;
  v13 = v11;
  objects[2] = v13;
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = xpc_array_create(objects, v14);
  xpc_array_append_value(v7, v15);

  for (i = 2; i != -1; --i)
  {
  }
}

void sub_18FF04DD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(a1);
    v11 = v10;
    objc_exception_throw(v10);
  }

  _Unwind_Resume(a1);
}

id BSSettingsEncodeSettingObject(void *a1, void *a2)
{
  v3 = a1;
  if (xpc_is_kind_of_xpc_object4NSXPC())
  {
    *a2 = 0;
    v4 = v3;
  }

  else
  {
    if ([v3 supportsBSXPCSecureCoding] & 1) != 0 || (objc_opt_respondsToSelector())
    {
      *a2 = xpc_int64_create(1);
      v5 = +[BSXPCCoder coder];
      [v5 encodeObject:v3 forKey:@"__BSXPCSecureValue"];
      v6 = NSStringFromClass([v3 classForCoder]);
      [v5 encodeObject:v6 forKey:@"__BSXPCSecureClass"];

      v7 = [v5 createMessage];
    }

    else
    {
      *a2 = xpc_int64_create(2);
      v5 = objc_alloc_init(MEMORY[0x1E696B0C8]);
      [v5 beginEncoding];
      [v5 encodeObject:v3 forKey:@"__BSXPCSecureValue"];
      v7 = [v5 finishEncoding];
    }

    v4 = v7;
  }

  return v4;
}

id BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = BSCreateDeserializedArrayFromXPCDictionaryWithKey(a1, a2, &__block_literal_global_26);

  return v2;
}

id __BSCreateDeserializedArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary(a2);

  return v2;
}

double BSDeserializeCGRectFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v6 = xpc_dictionary_get_value(v4, a2);
    v5 = BSDeserializeCGRectFromXPCObject(v6);
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
  }

  return v5;
}

double BSDeserializeCGRectFromXPCObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *MEMORY[0x1E695F058];
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v2) == 4)
  {
    v3 = xpc_array_get_double(v2, 0);
    xpc_array_get_double(v2, 1uLL);
    xpc_array_get_double(v2, 2uLL);
    xpc_array_get_double(v2, 3uLL);
  }

  return v3;
}

void BSSettingsDecodeSettingEntries(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    goto LABEL_7;
  }

  Class = object_getClass(v3);
  v7 = MEMORY[0x1E69E9E50];
  if (Class == MEMORY[0x1E69E9E50])
  {
    count = xpc_array_get_count(v3);
    if (!count)
    {
      goto LABEL_7;
    }

    v10 = 0;
    while (1)
    {
      v11 = xpc_array_get_value(v3, v10);
      v12 = v11;
      if (v11 && object_getClass(v11) == v7)
      {
        v14 = xpc_array_get_count(v12);
        if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v15 = xpc_array_get_value(v12, 0);
          v13 = v15;
          if (!v15 || object_getClass(v15) != MEMORY[0x1E69E9F18])
          {
            v16 = BSLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v22 = "void BSSettingsDecodeSettingEntries(__strong xpc_object_t, __strong BSSettingDecodeBlock)";
              v23 = 2112;
              v24 = v13;
              v25 = 2114;
              v26 = v12;
              _os_log_error_impl(&dword_18FEF6000, v16, OS_LOG_TYPE_ERROR, "%s an encoded entry key format is unknown -> %@ : %{public}@", buf, 0x20u);
            }

            goto LABEL_30;
          }

          value = xpc_uint64_get_value(v13);
          v18 = xpc_array_get_value(v12, 1uLL);
          v16 = v18;
          if (v14 < 3)
          {
            v19 = 0;
            if (v18)
            {
              goto LABEL_28;
            }

LABEL_24:
            v20 = BSLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v22 = "void BSSettingsDecodeSettingEntries(__strong xpc_object_t, __strong BSSettingDecodeBlock)";
              v23 = 2114;
              v24 = v12;
              _os_log_error_impl(&dword_18FEF6000, v20, OS_LOG_TYPE_ERROR, "%s the encoded entry was empty -> %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v19 = xpc_array_get_value(v12, 2uLL);
            if (!v16)
            {
              goto LABEL_24;
            }

LABEL_28:
            (v5)[2](v5, value, v16, v19);
          }

LABEL_30:
          goto LABEL_13;
        }

        v13 = BSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_21:
          *buf = 136315394;
          v22 = "void BSSettingsDecodeSettingEntries(__strong xpc_object_t, __strong BSSettingDecodeBlock)";
          v23 = 2114;
          v24 = v12;
          _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "%s an encoded entry format is unknown -> %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v13 = BSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

LABEL_13:

      if (count == ++v10)
      {
        goto LABEL_7;
      }
    }
  }

  v8 = BSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "void BSSettingsDecodeSettingEntries(__strong xpc_object_t, __strong BSSettingDecodeBlock)";
    v23 = 2114;
    v24 = v3;
    _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "%s the encoded entries format is unknown -> %{public}@", buf, 0x16u);
  }

LABEL_7:
}

id BSSettingsDecodeSettingObject(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v11 = v3;
    goto LABEL_19;
  }

  value = xpc_int64_get_value(v4);
  if (value == 2)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696B0C0]);
    [v12 beginReadingFromXPCObject:v3];
    if (qword_1ED4500D8 != -1)
    {
      dispatch_once(&qword_1ED4500D8, &__block_literal_global_210);
    }

    v11 = [v12 decodeObjectOfClasses:_MergedGlobals_38 forKey:@"__BSXPCSecureValue"];
  }

  else
  {
    if (value == 1)
    {
      v7 = [BSXPCCoder coderWithMessage:v3];
      v8 = [v7 decodeStringForKey:@"__BSXPCSecureClass"];
      v9 = v8;
      if (v8)
      {
        v10 = NSClassFromString(v8);
        if (v10)
        {
          v11 = [v7 decodeObjectOfClass:v10 forKey:@"__BSXPCSecureValue"];
LABEL_18:

          goto LABEL_19;
        }

        v14 = BSLogCommon();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_17:

          v11 = 0;
          goto LABEL_18;
        }

        v17 = 138412290;
        v18 = v9;
        v15 = "unable to decode %@ because this class does not exist";
      }

      else
      {
        v14 = BSLogCommon();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        v17 = 138412290;
        v18 = v3;
        v15 = "no class specified in message: %@";
      }

      _os_log_error_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_ERROR, v15, &v17, 0xCu);
      goto LABEL_17;
    }

    v13 = BSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "unknown coder type (%@) specified by message: %@", &v17, 0x16u);
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

void sub_18FF058E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = BSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v14;
      _os_log_error_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_ERROR, "exception caught while decoding message: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x18FF05798);
  }

  _Unwind_Resume(a1);
}

void BSStoreRealTokenToVar(uint64_t a1, void **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"token must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreRealTokenToVar(const audit_token_t *, BSAuditToken **)"}];
      *&buf[12] = 2114;
      *&buf[14] = @"BSAuditTokenCaching.m";
      *&buf[22] = 1024;
      *&buf[24] = 126;
      *&buf[28] = 2114;
      *&buf[30] = v12;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v12 UTF8String];
    __break(0);
    JUMPOUT(0x18FF05BDCLL);
  }

  if (!a2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"var must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreRealTokenToVar(const audit_token_t *, BSAuditToken **)"}];
      *&buf[12] = 2114;
      *&buf[14] = @"BSAuditTokenCaching.m";
      *&buf[22] = 1024;
      *&buf[24] = 127;
      *&buf[28] = 2114;
      *&buf[30] = v13;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v13 UTF8String];
    __break(0);
    JUMPOUT(0x18FF05C94);
  }

  if (qword_1ED44FEA8 != -1)
  {
    dispatch_once_f(&qword_1ED44FEA8, 0, _bsxpc_auditToken_init);
  }

  v4 = *a2;
  if (BSAuditTokenIsValid(a1))
  {
    memset(buf, 0, 32);
    if (v4)
    {
      [v4 realToken];
    }

    else
    {
      *&v6 = -1;
      *(&v6 + 1) = -1;
      *buf = v6;
      *&buf[16] = v6;
    }

    if (*a1 != *buf || *(a1 + 8) != *&buf[8] || *(a1 + 16) != *&buf[16] || *(a1 + 24) != *&buf[24])
    {
      v10 = [BSAuditToken alloc];
      v11 = *(a1 + 16);
      v14[0] = *a1;
      v14[1] = v11;
      _BSStoreNewRetainedTokenToVar([(BSAuditToken *)v10 initWithAuditToken:v14], a2);
    }
  }

  else if (v4 != qword_1ED44FE98)
  {
    v5 = qword_1ED44FE98;

    _BSStoreNewRetainedTokenToVar(v5, a2);
  }
}

id getCAMediaTimingFunctionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCAMediaTimingFunctionClass_softClass;
  v7 = getCAMediaTimingFunctionClass_softClass;
  if (!getCAMediaTimingFunctionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCAMediaTimingFunctionClass_block_invoke;
    v3[3] = &unk_1E72CABA8;
    v3[4] = &v4;
    __getCAMediaTimingFunctionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18FF05DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _BSXPCEncodeObjectForKey(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (a2)
  {
    BSXPCObjectBaseClass();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 24);
      if (a3)
      {
        if (!v7)
        {
          v7 = *(a1 + 8);
        }

        v8 = v7;
        xpc_dictionary_set_value(v8, [a3 UTF8String], a2);
      }

      else
      {
        if (!v7)
        {
          v7 = *(a1 + 8);
        }

        xpc_array_append_value(v7, a2);
      }

      goto LABEL_40;
    }
  }

  if (([a2 isNSArray] & 1) != 0 || (objc_msgSend(a2, "isNSSet") & 1) != 0 || objc_msgSend(a2, "isNSOrderedSet"))
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(a1 + 8);
    }

    v39 = v9;
    v10 = xpc_array_create(0, 0);
    objc_storeStrong((a1 + 24), v10);
    v11 = v39;
    v12 = v11;
    if (a3)
    {
      if (!v11 || (Class = object_getClass(v11), v14 = MEMORY[0x1E69E9E80], v12, v12, Class != v14))
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeCollectionWithKey(BSXPCCoder *const __strong, NSString *const __strong, const __strong id<NSFastEnumeration>)"}];
        [v15 handleFailureInFunction:v16 file:@"BSXPCCoder.m" lineNumber:423 description:&stru_1F03A1A98];
        goto LABEL_55;
      }
    }

    else if (!v11 || (v17 = object_getClass(v11), v18 = MEMORY[0x1E69E9E50], v12, v12, v17 != v18))
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeCollectionWithKey(BSXPCCoder *const __strong, NSString *const __strong, const __strong id<NSFastEnumeration>)"}];
      [v15 handleFailureInFunction:v16 file:@"BSXPCCoder.m" lineNumber:422 description:&stru_1F03A1A98];
LABEL_55:

      if (!a2)
      {
        goto LABEL_56;
      }

      goto LABEL_22;
    }

    if (!a2)
    {
LABEL_56:
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeCollectionWithKey(BSXPCCoder *const __strong, NSString *const __strong, const __strong id<NSFastEnumeration>)"}];
      [v36 handleFailureInFunction:v37 file:@"BSXPCCoder.m" lineNumber:424 description:&stru_1F03A1A98];
    }

LABEL_22:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = a2;
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v20)
    {
      v21 = *v43;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v19);
          }

          _BSXPCEncodeObjectForKey(a1, *(*(&v42 + 1) + 8 * i), 0);
        }

        v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v20);
    }

    if (v10)
    {
      if (a3)
      {
        v23 = a3;
        v24 = [a3 UTF8String];
        v25 = v12;
        v26 = v10;
        v27 = v26;
        if (v24)
        {
          if (v12 && object_getClass(v26) == MEMORY[0x1E69E9E50])
          {
            xpc_dictionary_set_value(v25, v24, v27);
          }
        }

        else
        {
          v38 = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
          [v38 handleFailureInFunction:v35 file:@"BSXPCObjectUtilities.h" lineNumber:61 description:@"key must not be nil"];
        }
      }

      else
      {
        v28 = v12;
        v29 = v10;
        if (v12)
        {
          v30 = v29;
          if (object_getClass(v29) == MEMORY[0x1E69E9E50])
          {
            xpc_array_append_value(v28, v30);
          }
        }
      }
    }

    v31 = _BSXPCPopEncodingContext(a1, v12);

    goto LABEL_40;
  }

  if ([a2 isNSDictionary])
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = ___BSXPCEncodeObjectForKey_block_invoke;
    v41[3] = &unk_1E72CC4F8;
    v41[4] = a2;
    v41[5] = a1;
    _BSXPCEncodeDictionaryWithKey(a1, a3, v41);
  }

  else
  {
    v32 = _CFXPCCreateXPCObjectFromCFObject();
    if (v32)
    {
      v33 = *(a1 + 24);
      if (a3)
      {
        if (!v33)
        {
          v33 = *(a1 + 8);
        }

        v34 = v33;
        xpc_dictionary_set_value(v34, [a3 UTF8String], v32);
      }

      else
      {
        if (!v33)
        {
          v33 = *(a1 + 8);
        }

        xpc_array_append_value(v33, v32);
      }
    }

    else
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = ___BSXPCEncodeObjectForKey_block_invoke_2;
      v40[3] = &unk_1E72CC4F8;
      v40[4] = a2;
      v40[5] = a1;
      _BSXPCEncodeDictionaryWithKey(a1, a3, v40);
    }
  }

LABEL_40:
  objc_autoreleasePoolPop(v6);
}

void sub_18FF0681C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    objc_end_catch();
    JUMPOUT(0x18FF067E8);
  }

  _Unwind_Resume(a1);
}

void BSStoreTokenFromMessageToVar(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"message must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 138544130;
      *&v6[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreTokenFromMessageToVar(xpc_object_t _Nonnull, BSAuditToken * _Nullable * _Nonnull)"}];
      *&v6[12] = 2114;
      *&v6[14] = @"BSAuditTokenCaching.m";
      *&v6[22] = 1024;
      *&v6[24] = 170;
      *&v6[28] = 2114;
      *&v6[30] = v4;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v6, 0x26u);
    }

    qword_1EAD33B00 = [v4 UTF8String];
    __break(0);
    JUMPOUT(0x18FF06968);
  }

  if (!a2)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"var must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 138544130;
      *&v6[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreTokenFromMessageToVar(xpc_object_t _Nonnull, BSAuditToken * _Nullable * _Nonnull)"}];
      *&v6[12] = 2114;
      *&v6[14] = @"BSAuditTokenCaching.m";
      *&v6[22] = 1024;
      *&v6[24] = 171;
      *&v6[28] = 2114;
      *&v6[30] = v5;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v6, 0x26u);
    }

    qword_1EAD33B00 = [v5 UTF8String];
    __break(0);
    JUMPOUT(0x18FF06A20);
  }

  *&v3 = -1;
  *(&v3 + 1) = -1;
  *v6 = v3;
  *&v6[16] = v3;
  xpc_dictionary_get_audit_token();
  BSStoreRealTokenToVar(v6, a2);
}

id BSCollectionMap(objc_class *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [[a1 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      v11 = *MEMORY[0x1E695E738];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = v6[2](v6, *(*(&v15 + 1) + 8 * i));
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            [v7 addObject:{v11, v15}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [v5 copyWithZone:0];
  }

  return v7;
}

void BSDispatchQueueAssertNot(void *a1)
{
  queue = a1;
  if (queue == MEMORY[0x1E69E96A0])
  {
    BSDispatchQueueAssertNotMain();
  }

  else
  {
    dispatch_assert_queue_not_V2(queue);
  }
}

void sub_18FF06DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSCFBundle;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF06EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSXPCCoder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _BSXPCEncodeDictionaryWithKey(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = (a1 + 24);
  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  v8 = v6;
  v9 = xpc_dictionary_create(0, 0, 0);
  objc_storeStrong(v7, v9);
  v10 = v8;
  v25 = v10;
  if (a2)
  {
    if (!v10 || (Class = object_getClass(v10), v12 = MEMORY[0x1E69E9E80], v25, v25, Class != v12))
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeDictionaryWithKey(BSXPCCoder *const __strong, NSString *const __strong, void (^const __strong)(__strong xpc_object_t))"}];
      [v13 handleFailureInFunction:v14 file:@"BSXPCCoder.m" lineNumber:453 description:&stru_1F03A1A98];
LABEL_24:
    }
  }

  else if (!v10 || (v15 = object_getClass(v10), v16 = MEMORY[0x1E69E9E50], v25, v25, v15 != v16))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCEncodeDictionaryWithKey(BSXPCCoder *const __strong, NSString *const __strong, void (^const __strong)(__strong xpc_object_t))"}];
    [v13 handleFailureInFunction:v14 file:@"BSXPCCoder.m" lineNumber:452 description:&stru_1F03A1A98];
    goto LABEL_24;
  }

  (*(a3 + 16))(a3, v9);
  if (v9 && xpc_dictionary_get_count(v9))
  {
    if (a2)
    {
      v17 = [a2 UTF8String];
      v18 = v25;
      v19 = v9;
      if (v17)
      {
        if (v25 && object_getClass(v19) == MEMORY[0x1E69E9E80])
        {
          xpc_dictionary_set_value(v18, v17, v19);
        }
      }

      else
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
        [v23 handleFailureInFunction:v24 file:@"BSXPCObjectUtilities.h" lineNumber:61 description:@"key must not be nil"];
      }
    }

    else
    {
      v20 = v25;
      v21 = v9;
      if (v25 && object_getClass(v21) == MEMORY[0x1E69E9E80])
      {
        xpc_array_append_value(v20, v21);
      }
    }
  }

  v22 = _BSXPCPopEncodingContext(a1, v25);
}

void *_BSXPCPopEncodingContext(uint64_t a1, void *a2)
{
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
    v4 = *(a1 + 8);
  }

  v6 = v4;
  objc_storeStrong(v5, a2);
  v7 = *(a1 + 24);
  if (v7 == *(a1 + 8))
  {
    *v5 = 0;
  }

  return v4;
}

uint64_t _BSMachPortTypeEncode(int a1, uint64_t a2, _BYTE *a3)
{
  switch(a1)
  {
    case 3:
      *a3 = 0;
      return MEMORY[0x1EEE74E70](a2);
    case 2:
      *a3 = 1;
      return MEMORY[0x1EEE74E88](a2);
    case 1:
      *a3 = 1;
      return MEMORY[0x1EEE74E58](a2);
    default:
      *a3 = 0;
      return 0;
  }
}

id _BSXPCDecodeObjectFromContext(uint64_t a1, void *a2, uint64_t a3, objc_class *a4, _BYTE *a5)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObjectFromContext(BSXPCCoder *const __strong, const __strong xpc_object_t, NSString *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    [v61 handleFailureInFunction:v62 file:@"BSXPCCoder.m" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"expectedClass != nil"}];
  }

  v10 = (a1 + 24);
  v9 = *(a1 + 24);
  if (!v9)
  {
    v9 = *(a1 + 8);
  }

  v11 = v9;
  v12 = MEMORY[0x1E69E9E38];
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = MEMORY[0x1E69E9E38];
  }

  objc_storeStrong((a1 + 24), v13);
  v14 = objc_autoreleasePoolPush();
  aClass = a4;
  if (!a4)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    [v63 handleFailureInFunction:v64 file:@"BSXPCCoder.m" lineNumber:822 description:{@"Invalid parameter not satisfying: %@", @"expectedClass != nil"}];
  }

  v15 = *v10;
  if (!*v10)
  {
    v15 = *(a1 + 8);
  }

  v16 = v15;
  v17 = v16;
  if (v16 == v12)
  {
    goto LABEL_35;
  }

  Class = object_getClass(v16);
  if (([(objc_class *)aClass isSubclassOfClass:BSXPCObjectBaseClass()]& 1) != 0)
  {
    v19 = v17;
    goto LABEL_15;
  }

  if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (a5)
    {
      if (Class != MEMORY[0x1E69E9E50])
      {
        v22 = BSLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *applier = 0;
          _os_log_error_impl(&dword_18FEF6000, v22, OS_LOG_TYPE_ERROR, "Invalid decoding context for collection", applier, 2u);
        }

        v23 = @"Invalid decoding context for collection";
LABEL_29:

LABEL_30:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:v23];
        goto LABEL_35;
      }

      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 3221225472;
      *&applier[16] = ___BSXPCDecodeObject_block_invoke;
      *&v95 = &unk_1E72CC548;
      *(&v95 + 1) = a1;
      v97 = a5;
      v35 = v34;
      v96 = v35;
      if (xpc_array_apply(v17, applier))
      {
        v19 = [[aClass alloc] initWithArray:v35];
      }

      else
      {
        v36 = BSLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18FEF6000, v36, OS_LOG_TYPE_ERROR, "Unable to decode array: an object within the array failed to decode", buf, 2u);
        }

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unable to decode array: an object within the array failed to decode"];
        v19 = 0;
      }

      goto LABEL_15;
    }

    v24 = BSLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromClass(aClass);
      *applier = 138543362;
      *&applier[4] = v43;
      _os_log_error_impl(&dword_18FEF6000, v24, OS_LOG_TYPE_ERROR, "Attempted to decode a collection (%{public}@) without specifying the class it contains", applier, 0xCu);
    }

    v25 = MEMORY[0x1E695DF30];
    v26 = NSStringFromClass(aClass);
    [v25 raise:*MEMORY[0x1E695D940] format:{@"Attempted to decode a collection (%@) without specifying the class it contains", v26}];
LABEL_34:

    goto LABEL_35;
  }

  if (![(objc_class *)aClass isSubclassOfClass:objc_opt_class()])
  {
    if (Class != MEMORY[0x1E69E9E80])
    {
      goto LABEL_55;
    }

    v39 = xpc_dictionary_get_value(v17, "bsx_class");

    if (!v39)
    {
      goto LABEL_55;
    }

    v40 = xpc_dictionary_get_value(v17, "root");

    if (v40)
    {
      if (a5)
      {
        v38 = [MEMORY[0x1E695DFD8] setWithObjects:{aClass, a5, 0}];
        goto LABEL_67;
      }

LABEL_62:
      v38 = [MEMORY[0x1E695DFD8] setWithObjects:&aClass count:1];
LABEL_67:
      v41 = v38;
      v42 = objc_alloc_init(MEMORY[0x1E696B0C0]);
      [v42 beginReadingFromXPCObject:v17];
      v19 = [v42 decodeObjectOfClasses:v41 forKey:@"bsx"];

      goto LABEL_15;
    }

    if ([(objc_class *)aClass supportsBSXPCSecureCoding]&& ([(objc_class *)aClass instancesRespondToSelector:sel_initWithBSXPCCoder_]& 1) != 0)
    {
      v50 = 0;
      v90 = 1;
    }

    else
    {
      if (![(objc_class *)aClass instancesRespondToSelector:sel_initWithXPCDictionary_]|| ([(objc_class *)aClass instancesRespondToSelector:sel_encodeWithXPCDictionary_]& 1) == 0)
      {
        v57 = BSLogCommon();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v81 = NSStringFromClass(aClass);
          *applier = 138543362;
          *&applier[4] = v81;
          _os_log_error_impl(&dword_18FEF6000, v57, OS_LOG_TYPE_ERROR, "No valid encoding type could be determined for expected class: %{public}@", applier, 0xCu);
        }

        v58 = MEMORY[0x1E695DF30];
        v59 = NSStringFromClass(aClass);
        [v58 raise:*MEMORY[0x1E695D940] format:{@"No valid encoding type could be determined for expected class: %@", v59}];

        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
        [v26 handleFailureInFunction:v60 file:@"BSXPCCoder.m" lineNumber:1022 description:@"we should not have been able to vet the class without defining the encoding"];

        goto LABEL_34;
      }

      v90 = 0;
      v50 = 1;
    }

    v51 = BSCreateDeserializedStringFromXPCDictionaryWithKey(v17, "bsx_class");
    v52 = v51;
    if (v50 && !NSClassFromString(v51))
    {
      v53 = BSCreateDeserializedStringFromXPCDictionaryWithKey(v17, "bs_fallback");
      v54 = v53;
      if (v53)
      {
        v55 = v53;

        v52 = v55;
      }
    }

    if (v52)
    {
      v56 = NSClassFromString(v52);
      if (v56)
      {
        if (aClass == v56)
        {
          v56 = aClass;
        }

        else
        {
          if (([(objc_class *)aClass isSubclassOfClass:v56]& 1) != 0)
          {
            v56 = aClass;
            goto LABEL_97;
          }

          if (([(objc_class *)v56 isSubclassOfClass:aClass]& 1) == 0)
          {
            v79 = BSLogCommon();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v86 = NSStringFromClass(aClass);
              *applier = 138543618;
              *&applier[4] = v52;
              *&applier[12] = 2114;
              *&applier[14] = v86;
              _os_log_error_impl(&dword_18FEF6000, v79, OS_LOG_TYPE_ERROR, "Decoded class %{public}@ is not compatible with expected class %{public}@", applier, 0x16u);
            }

            v80 = MEMORY[0x1E695DF30];
            v67 = NSStringFromClass(aClass);
            [v80 raise:*MEMORY[0x1E695D940] format:{@"Decoded class %@ is not compatible with expected class %@", v52, v67}];
LABEL_96:

            v56 = 0;
          }
        }

LABEL_97:
        v68 = [v56 alloc];
        if (!v68)
        {
          v89 = [MEMORY[0x1E696AAA8] currentHandler];
          v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
          v87 = NSStringFromClass(v56);
          [v89 handleFailureInFunction:v88 file:@"BSXPCCoder.m" lineNumber:991 description:{@"Object of class %@ returned nil from +alloc", v87}];
        }

        v69 = v68;
        v70 = v69;
        if (v90)
        {
          v19 = [v69 initWithBSXPCCoder:a1];

          if (!v19)
          {
            v71 = [MEMORY[0x1E696AAA8] currentHandler];
            v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
            v73 = NSStringFromClass(v56);
            [v71 handleFailureInFunction:v72 file:@"BSXPCCoder.m" lineNumber:995 description:{@"Object of class %@ returned nil from -initWithBSXPCCoder:", v73}];
LABEL_116:

            v19 = 0;
          }
        }

        else if (v50)
        {
          v19 = [v69 initWithXPCDictionary:v17];

          if (!v19)
          {
            v71 = [MEMORY[0x1E696AAA8] currentHandler];
            v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
            v73 = NSStringFromClass(v56);
            [v71 handleFailureInFunction:v72 file:@"BSXPCCoder.m" lineNumber:998 description:{@"Object of class %@ returned nil from -initWithXPCDictionary:", v73}];
            goto LABEL_116;
          }
        }

        else
        {
          v19 = [v69 init];

          if (!v19)
          {
            v71 = [MEMORY[0x1E696AAA8] currentHandler];
            v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
            v73 = NSStringFromClass(v56);
            [v71 handleFailureInFunction:v72 file:@"BSXPCCoder.m" lineNumber:1001 description:{@"Object of class %@ returned nil from -init", v73}];
            goto LABEL_116;
          }
        }

        goto LABEL_15;
      }
    }

    v65 = BSLogCommon();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v82 = NSStringFromClass(aClass);
      *applier = 138543618;
      *&applier[4] = v52;
      *&applier[12] = 2114;
      *&applier[14] = v82;
      _os_log_error_impl(&dword_18FEF6000, v65, OS_LOG_TYPE_ERROR, "Unable to reify decoded class %{public}@ for expected class %{public}@", applier, 0x16u);
    }

    v66 = MEMORY[0x1E695DF30];
    v67 = NSStringFromClass(aClass);
    [v66 raise:*MEMORY[0x1E695D940] format:{@"Unable to reify decoded class %@ for expected class %@", v52, v67}];
    goto LABEL_96;
  }

  if (!a5)
  {
    v37 = xpc_dictionary_get_value(v17, "root");

    if (v37)
    {
      if (Class != MEMORY[0x1E69E9E80])
      {
        v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"decodingContextType == XPC_TYPE_DICTIONARY"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
          *applier = 138544130;
          *&applier[4] = v84;
          *&applier[12] = 2114;
          *&applier[14] = @"BSXPCCoder.m";
          *&applier[22] = 1024;
          LODWORD(v95) = 1006;
          WORD2(v95) = 2114;
          *(&v95 + 6) = v83;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", applier, 0x26u);
        }

        v85 = v83;
        qword_1EAD33B00 = [v83 UTF8String];
        __break(0);
        JUMPOUT(0x18FF08614);
      }

      goto LABEL_62;
    }

LABEL_55:
    v19 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v19 && Class == MEMORY[0x1E69E9F18])
    {
      v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:xpc_uint64_get_value(v17)];
    }

    if (v19)
    {
      goto LABEL_16;
    }

    v23 = @"Invalid decoding context for <CFXPCBridge>";
    goto LABEL_30;
  }

  if (Class != MEMORY[0x1E69E9E80])
  {
    v22 = BSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *applier = 0;
      _os_log_error_impl(&dword_18FEF6000, v22, OS_LOG_TYPE_ERROR, "Invalid decoding context for dictionary", applier, 2u);
    }

    v23 = @"Invalid decoding context for dictionary";
    goto LABEL_29;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v100 = __Block_byref_object_copy__9;
  v101 = __Block_byref_object_dispose__9;
  v102 = 0;
  v47 = [MEMORY[0x1E695DF90] dictionary];
  *applier = MEMORY[0x1E69E9820];
  *&applier[8] = 3221225472;
  *&applier[16] = ___BSXPCDecodeObject_block_invoke_311;
  *&v95 = &unk_1E72CC570;
  *(&v95 + 1) = a1;
  v98 = a5;
  v48 = v47;
  v96 = v48;
  v97 = buf;
  if (xpc_dictionary_apply(v17, applier))
  {
    v19 = [[aClass alloc] initWithDictionary:v48];
  }

  else
  {
    v49 = BSLogCommon();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v74 = *(*&buf[8] + 40);
      *v92 = 138543362;
      v93 = v74;
      _os_log_error_impl(&dword_18FEF6000, v49, OS_LOG_TYPE_ERROR, "Unable to decode dictionary key %{public}@", v92, 0xCu);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to decode dictionary key %@", *(*&buf[8] + 40)}];
    v19 = 0;
  }

  _Block_object_dispose(buf, 8);
LABEL_15:
  if (!v19)
  {
LABEL_35:
    v21 = 0;
    goto LABEL_36;
  }

LABEL_16:
  v20 = v19;
  v21 = [v20 awakeAfterUsingCoder:a1];
  if (!v21)
  {
    v75 = [MEMORY[0x1E696AAA8] currentHandler];
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObject(BSXPCCoder *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    [v75 handleFailureInFunction:v76 file:@"BSXPCCoder.m" lineNumber:1029 description:{@"Object of class %@ returned nil from -awakeAfterUsingCoder:", v78}];
  }

  if (v21 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = BSLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromClass(aClass);
      *buf = 138543618;
      *&buf[4] = v45;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      _os_log_error_impl(&dword_18FEF6000, v29, OS_LOG_TYPE_ERROR, "Decoded object class %{public}@ does not match expected class %{public}@", buf, 0x16u);
    }

    v30 = MEMORY[0x1E695DF30];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = NSStringFromClass(aClass);
    [v30 raise:*MEMORY[0x1E695D940] format:{@"Decoded object class %@ does not match expected class %@", v32, v33}];
  }

LABEL_36:

  v27 = _BSXPCPopEncodingContext(a1, v11);
  objc_autoreleasePoolPop(v14);

  return v21;
}

void sub_18FF0876C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    if (a2 != 2)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x18FF0784CLL);
    }

    v6 = objc_begin_catch(a1);

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18FF08AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    objc_end_catch();
    JUMPOUT(0x18FF08ABCLL);
  }

  _Unwind_Resume(a1);
}

void sub_18FF08B1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18FF08B28);
  }

  _Unwind_Resume(a1);
}

void sub_18FF08C38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    objc_end_catch();
    JUMPOUT(0x18FF08C68);
  }

  _Unwind_Resume(a1);
}

id getCATransactionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCATransactionClass_softClass;
  v7 = getCATransactionClass_softClass;
  if (!getCATransactionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCATransactionClass_block_invoke;
    v3[3] = &unk_1E72CABA8;
    v3[4] = &v4;
    __getCATransactionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18FF08D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCASpringAnimationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCASpringAnimationClass_softClass;
  v7 = getCASpringAnimationClass_softClass;
  if (!getCASpringAnimationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCASpringAnimationClass_block_invoke;
    v3[3] = &unk_1E72CABA8;
    v3[4] = &v4;
    __getCASpringAnimationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18FF08E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BSEqualArrays(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray == a2)
  {
    return 1;
  }

  result = 0;
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count == CFArrayGetCount(a2))
    {

      return [(__CFArray *)theArray isEqualToArray:a2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id _BSXPCDecodeObjectForKey(uint64_t a1, void *a2, objc_class *a3, _BYTE *a4)
{
  if (!a2)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject *_BSXPCDecodeObjectForKey(BSXPCCoder *const __strong, NSString *const __strong, __unsafe_unretained Class, __unsafe_unretained Class)"}];
    [v19 handleFailureInFunction:v20 file:@"BSXPCCoder.m" lineNumber:788 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    v8 = *(a1 + 8);
  }

  v9 = v8;
  v10 = [a2 UTF8String];
  v11 = v9;
  if (!v10)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [v21 handleFailureInFunction:v22 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v12 = v11;
  v13 = v12;
  if (v12 && (Class = object_getClass(v12), v15 = MEMORY[0x1E69E9E80], v13, v13, Class == v15))
  {
    v16 = xpc_dictionary_get_value(v13, v10);
  }

  else
  {
    v16 = 0;
  }

  v17 = _BSXPCDecodeObjectFromContext(a1, v16, a2, a3, a4);

  return v17;
}

BOOL BSMachPortIsType(mach_port_name_t name, int a2)
{
  if (name - 1 > 0xFFFFFFFD)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  ptype = 0;
  v6 = mach_port_type(*MEMORY[0x1E69E9A60], name, &ptype);
  if (v6)
  {
    _BSMachError(name, v6, @"Port has no valid type");
  }

  return (ptype & a2) != 0;
}

id BSDeserializeCFValueFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

uint64_t BSCreateDeserializedCFValueFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    v6 = xpc_dictionary_get_value(v3, a2);
    if (v6)
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t BSEqualDictionaries(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  if (theDict == a2)
  {
    return 1;
  }

  result = 0;
  if (theDict && a2)
  {
    Count = CFDictionaryGetCount(theDict);
    if (Count == CFDictionaryGetCount(a2))
    {

      return [(__CFDictionary *)theDict isEqualToDictionary:a2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v3 = BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(a1, a2, a3);

  return v3;
}

uint64_t BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v5 = a2;
  if (!a1)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject<NSSecureCoding> *BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(__unsafe_unretained Class, __strong xpc_object_t, const char *)"}];
    [v18 handleFailureInFunction:v19 file:@"BSXPCSerialization.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"class != nil"}];
  }

  if (([a1 supportsSecureCoding] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSObject<NSSecureCoding> *BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey(__unsafe_unretained Class, __strong xpc_object_t, const char *)"}];
    [v20 handleFailureInFunction:v21 file:@"BSXPCSerialization.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"[class supportsSecureCoding]"}];
  }

  v6 = 0;
  if (v5 && a3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    Class = object_getClass(v8);
    v10 = MEMORY[0x1E69E9E80];
    if (Class == MEMORY[0x1E69E9E80])
    {
      v13 = xpc_dictionary_get_value(v8, a3);
      v11 = v13;
      if (v13)
      {
        v14 = object_getClass(v13);

        if (v14 == v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

LABEL_14:
        v15 = v12;

        if (v15)
        {
          v16 = objc_alloc_init(MEMORY[0x1E696B0C0]);
          [v16 beginReadingFromXPCObject:v15];
          v6 = [v16 decodeObjectOfClass:a1 forKey:&stru_1F03A1A98];
        }

        else
        {
          v6 = 0;
        }

        objc_autoreleasePoolPop(v7);
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    goto LABEL_14;
  }

LABEL_18:

  return v6;
}

id BSStringFromCGRect(double a1, double a2, double a3, double a4)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.*g, %.*g}", 17, *&a1, 17, *&a2];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.*g, %.*g}", 17, *&a3, 17, *&a4];
  v9 = [v6 stringWithFormat:@"{%@, %@}", v7, v8];

  return v9;
}

uint64_t _BSMachPortTypeDecode(int a1, id a2)
{
  if (!a2)
  {
    return 0;
  }

  Class = object_getClass(a2);
  v5 = ((a1 - 1) > 2 ? MEMORY[0x1E69E9ED0] : qword_1E72CB790[(a1 - 1)]);
  if (Class != v5)
  {
    return 0;
  }

  switch(a1)
  {
    case 3:

      return MEMORY[0x1EEE74E68](a2);
    case 2:

      return MEMORY[0x1EEE74E90](a2);
    case 1:

      return MEMORY[0x1EEE74E60](a2);
    default:
      return 0;
  }
}

uint64_t BSPIDExists(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (getpid() == a1)
  {
    return 1;
  }

  if (a1 < 1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  return _BSShortBSDProcessInfoForPID(a1, v3);
}

uint64_t _BSSettingsEqualToSettings(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (a3 && BSSettingsIsEmpty(v5))
  {
    IsEmpty = BSSettingsIsEmpty(v6);
    if (v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = IsEmpty;
    }

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if (v5 == v6)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
  if (v5 && v6)
  {
    v9 = [v5 isEqual:v6];
  }

LABEL_12:

  return v9;
}

void sub_18FF09C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSProcessHandle;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id BSIntegerMapAllValues(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray * _Nonnull BSIntegerMapAllValues(BSIntegerMap *__strong _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"BSIntegerMap.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"map"}];
  }

  v2 = NSAllMapTableValues(v1[1]);

  return v2;
}

BOOL BSMachSendRightRelease(mach_port_name_t name)
{
  v1 = name;
  if (name - 1 <= 0xFFFFFFFD)
  {
    v2 = mach_port_deallocate(*MEMORY[0x1E69E9A60], name);
    if (v2)
    {
      _BSMachError(v1, v2, @"Unable to deallocate send right");
      v1 = 0;
    }
  }

  return (v1 - 1) < 0xFFFFFFFE;
}

void sub_18FF09EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSMachPortRight;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _BSStoreNewRetainedTokenToVar(void *a1, void **a2)
{
  v2 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2 == a1)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"constraint violation: new=%p should not be previous=%p", a1, v3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSStoreNewRetainedTokenToVar(BSAuditToken *, BSAuditToken **)"}];
      v16 = 2114;
      v17 = @"BSAuditTokenCaching.m";
      v18 = 1024;
      v19 = 82;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    goto LABEL_23;
  }

  value = 0;
  originalKey = 0;
  os_unfair_lock_lock(&_MergedGlobals_21);
  if (v2 && qword_1ED44FE98 != v2)
  {
    if (NSMapMember(qword_1ED44FEA0, v2, &originalKey, &value))
    {
      v5 = originalKey;
      v6 = value + 1;
      value = value + 1;
      if (originalKey != v2)
      {
        v7 = originalKey;

        v6 = value;
        v5 = originalKey;
        v2 = originalKey;
      }

      NSMapInsert(qword_1ED44FEA0, v5, v6);
    }

    else
    {
      value = 1;
      NSMapInsertKnownAbsent(qword_1ED44FEA0, v2, 1);
    }
  }

  *a2 = v2;
  if (v3)
  {
    if (v3 == qword_1ED44FE98)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (NSMapMember(qword_1ED44FEA0, v3, &originalKey, &value))
    {
      if (value < 2)
      {
        NSMapRemove(qword_1ED44FEA0, originalKey);
      }

      else
      {
        value = value - 1;
        NSMapInsert(qword_1ED44FEA0, originalKey, value);
      }

      goto LABEL_15;
    }

    v9 = _bsxpc_auditTokens_desc(1);
    os_unfair_lock_unlock(&_MergedGlobals_21);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find %@ in tokens %@", v3, v9];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSStoreNewRetainedTokenToVar(BSAuditToken *, BSAuditToken **)"}];
      *buf = 138544130;
      v15 = v11;
      v16 = 2114;
      v17 = @"BSAuditTokenCaching.m";
      v18 = 1024;
      v19 = 117;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
LABEL_23:
    JUMPOUT(0x18FF0A1BCLL);
  }

LABEL_16:
  os_unfair_lock_unlock(&_MergedGlobals_21);
}

void BSXPCAutoCodingInitialize(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v5 = v4;
  if (a2)
  {
    (*(a2 + 16))(a2, v4);
    v4 = v5;
  }

  _BSXPCAutoCodingInitialize(a1, v4);
}

uint64_t __BSXPCAutoCodingsDefault_block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v2[0] = &unk_1F03C7E30;
  v2[1] = &unk_1F03BFE90;
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v2, 2)}];
  qword_1ED44FF40 = result;
  return result;
}

uint64_t BSSettingsDiffIsEmpty(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void BSClearTokenVar(void **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"var must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 138544130;
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BSClearTokenVar(BSAuditToken ** _Nonnull)"];
      v5 = 2114;
      v6 = @"BSAuditTokenCaching.m";
      v7 = 1024;
      v8 = 179;
      v9 = 2114;
      v10 = v2;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
    }

    qword_1EAD33B00 = [v2 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0A820);
  }

  if (*a1)
  {
    if (qword_1ED44FEA8 != -1)
    {
      dispatch_once_f(&qword_1ED44FEA8, 0, _bsxpc_auditToken_init);
    }

    _BSStoreNewRetainedTokenToVar(0, a1);
  }
}

BOOL _BSXPCAutoCodingInitialize(uint64_t a1, void *a2)
{
  v2 = a1;
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v2;
  }

  if (objc_opt_class() == a1)
  {
    return 0;
  }

  os_unfair_lock_lock(&_MergedGlobals_24);
  v4 = qword_1ED44FF20;
  if (!qword_1ED44FF20)
  {
    qword_1ED44FF20 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:256];
    qword_1ED44FF28 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:16];
    v4 = qword_1ED44FF20;
  }

  if (NSHashInsertIfAbsent(v4, v2))
  {
    v2 = NSHashGet(qword_1ED44FF28, v2) != 0;
    goto LABEL_72;
  }

  if (![v2 instancesRespondToSelector:sel_membersForCoder])
  {
    v2 = 0;
    goto LABEL_72;
  }

  NSHashInsertKnownAbsent(qword_1ED44FF28, v2);
  if (!BSObjCClassImplementsSelector(v2, sel_membersForCoder, 0))
  {
    goto LABEL_71;
  }

  v5 = [objc_msgSend(a2 "supportedCodings")];
  if (![v5 count])
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ provided no supported codings", NSStringFromClass(v2)];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _BSXPCAutoCodingInitialize(Class, BSXPCAutoCodingOptions *)"}];
      v63 = 2114;
      v64 = @"BSXPCAutoCoding.m";
      v65 = 1024;
      v66 = 151;
      v67 = 2114;
      v68 = v52;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v52 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0B414);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v6)
  {
    v54 = *v58;
    obj = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
        if (!v8)
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"coding"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCAutoCodingImplementCoder(Class, Protocol *)"}];
            *buf = 138544130;
            *&buf[4] = v44;
            v63 = 2114;
            v64 = @"BSXPCAutoCoding.m";
            v65 = 1024;
            v66 = 69;
            v67 = 2114;
            v68 = v43;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

          qword_1EAD33B00 = [v43 UTF8String];
          __break(0);
          JUMPOUT(0x18FF0B1A4);
        }

        os_unfair_lock_assert_owner(&_MergedGlobals_24);
        if (&unk_1F03C7E30 == v8 || &unk_1F03BA528 == v8)
        {
          v10 = &selRef_encodeWithCoder_;
          v11 = &selRef_initWithCoder_;
          v12 = &selRef_supportsSecureCoding;
        }

        else
        {
          v13 = sel_encodeWithXPCDictionary_;
          v14 = sel_initWithXPCDictionary_;
          if (&unk_1F03BA3C0 == v8)
          {
            goto LABEL_31;
          }

          if (&unk_1F03BFE90 != v8)
          {
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported coding", NSStringFromProtocol(v8)];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCAutoCodingImplementCoder(Class, Protocol *)"}];
              *buf = 138544130;
              *&buf[4] = v38;
              v63 = 2114;
              v64 = @"BSXPCAutoCoding.m";
              v65 = 1024;
              v66 = 89;
              v67 = 2114;
              v68 = v37;
              _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
            }

            qword_1EAD33B00 = [v37 UTF8String];
            __break(0);
            JUMPOUT(0x18FF0B004);
          }

          v10 = &selRef_encodeWithBSXPCCoder_;
          v11 = &selRef_initWithBSXPCCoder_;
          v12 = &selRef_supportsBSXPCSecureCoding;
        }

        v15 = *v12;
        v14 = *v11;
        v13 = *v10;
        if (*v12)
        {
          Class = object_getClass(v2);
          if (BSObjCClassImplementsSelector(Class, v15, 0))
          {
            if (([v2 v15] & 1) == 0)
            {
              v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"class doesn't return YES from +%@", NSStringFromSelector(v15)];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCAutoCodingImplementCoder(Class, Protocol *)"}];
                *buf = 138544130;
                *&buf[4] = v47;
                v63 = 2114;
                v64 = @"BSXPCAutoCoding.m";
                v65 = 1024;
                v66 = 98;
                v67 = 2114;
                v68 = v45;
                _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
              }

              qword_1EAD33B00 = [v45 UTF8String];
              __break(0);
              JUMPOUT(0x18FF0B270);
            }
          }

          else
          {
            v17 = objc_opt_class();
            v18 = object_getClass(v17);
            MethodImplementation = class_getMethodImplementation(v18, sel_supportsSecureCoding);
            if (!class_addMethod(Class, v15, MethodImplementation, "B@:"))
            {
              v48 = MEMORY[0x1E696AEC0];
              v49 = NSStringFromSelector(v15);
              v50 = [v48 stringWithFormat:@"failed to add %@ to %@", v49, NSStringFromClass(v2)];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCAutoCodingImplementCoder(Class, Protocol *)"}];
                *buf = 138544130;
                *&buf[4] = v51;
                v63 = 2114;
                v64 = @"BSXPCAutoCoding.m";
                v65 = 1024;
                v66 = 102;
                v67 = 2114;
                v68 = v50;
                _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
              }

              qword_1EAD33B00 = [v50 UTF8String];
              __break(0);
              JUMPOUT(0x18FF0B348);
            }
          }
        }

LABEL_31:
        if (v14)
        {
          v20 = objc_opt_class();
          v21 = class_getMethodImplementation(v20, sel_initWithCoder_);
          v22 = class_replaceMethod(v2, v14, v21, "@@:@");
          if (v22)
          {
            if (v22 != v21)
            {
              v33 = MEMORY[0x1E696AEC0];
              v34 = NSStringFromClass(v2);
              v35 = [v33 stringWithFormat:@"Auto-coding class %@ still implements %@; migrate to -[<BSXPCAutoCoding> decodeWithCoder:].", v34, NSStringFromSelector(v14)];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCAutoCodingImplementCoder(Class, Protocol *)"}];
                *buf = 138544130;
                *&buf[4] = v36;
                v63 = 2114;
                v64 = @"BSXPCAutoCoding.m";
                v65 = 1024;
                v66 = 110;
                v67 = 2114;
                v68 = v35;
                _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
              }

              qword_1EAD33B00 = [v35 UTF8String];
              __break(0);
              JUMPOUT(0x18FF0AF38);
            }
          }
        }

        if (v13)
        {
          v23 = objc_opt_class();
          v24 = class_getMethodImplementation(v23, sel_encodeWithCoder_);
          v25 = class_replaceMethod(v2, v13, v24, "v@:@");
          if (v25)
          {
            if (v25 != v24)
            {
              if (v13 != sel_encodeWithCoder_)
              {
                v39 = MEMORY[0x1E696AEC0];
                v40 = NSStringFromClass(v2);
                v41 = [v39 stringWithFormat:@"Auto-coding class %@ still implements %@; migrate to -[<BSXPCAutoCoding> encodeWithCoder:].", v40, NSStringFromSelector(v13)];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSXPCAutoCodingImplementCoder(Class, Protocol *)"}];
                  *buf = 138544130;
                  *&buf[4] = v42;
                  v63 = 2114;
                  v64 = @"BSXPCAutoCoding.m";
                  v65 = 1024;
                  v66 = 121;
                  v67 = 2114;
                  v68 = v41;
                  _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                }

                qword_1EAD33B00 = [v41 UTF8String];
                __break(0);
                JUMPOUT(0x18FF0B0DCLL);
              }

              objc_setAssociatedObject(v2, __OriginalIMP, v25, 0);
            }
          }
        }

        if (&unk_1F03C7E30 == v8)
        {
          class_addProtocol(v2, &unk_1F03BA528);
        }

        class_addProtocol(v2, v8);
      }

      v5 = obj;
      v6 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v6);
  }

  objc_setAssociatedObject(v2, sel_supportedCodings, v5, 3);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  Superclass = v2;
  while (Superclass != objc_opt_class())
  {
    if (qword_1ED44FF38 != -1)
    {
      dispatch_once(&qword_1ED44FF38, &__block_literal_global_25);
    }

    AssociatedObject = objc_getAssociatedObject(Superclass, __OriginalIMP);
    *buf = AssociatedObject;
    if (AssociatedObject)
    {
      goto LABEL_50;
    }

    if (BSObjCClassImplementsSelector(Superclass, sel_encodeWithCoder_, buf))
    {
      AssociatedObject = *buf;
LABEL_50:
      if (AssociatedObject != qword_1ED44FF30)
      {
        if (!v26)
        {
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          AssociatedObject = *buf;
          v26 = v31;
        }

        [v26 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", AssociatedObject)}];
      }
    }

    v56 = 0;
    if (BSObjCClassImplementsSelector(Superclass, sel_decodeWithCoder_, &v56))
    {
      if (!v27)
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v27 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v56)}];
    }

    v55 = 0;
    if (BSObjCClassImplementsSelector(Superclass, sel_awakeFromCoder, &v55))
    {
      if (!v28)
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v28 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v55)}];
    }

    Superclass = class_getSuperclass(Superclass);
    if (!Superclass)
    {
      break;
    }
  }

  objc_setAssociatedObject(v2, sel_encodeWithCoder_, [objc_msgSend(v26 "reverseObjectEnumerator")], 3);
  objc_setAssociatedObject(v2, sel_decodeWithCoder_, [objc_msgSend(v27 "reverseObjectEnumerator")], 3);
  objc_setAssociatedObject(v2, sel_awakeFromCoder, [objc_msgSend(v28 "reverseObjectEnumerator")], 3);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_71:
  v2 = 1;
LABEL_72:
  os_unfair_lock_unlock(&_MergedGlobals_24);
  return v2;
}

uint64_t BSObjCClassImplementsSelector(objc_class *a1, const char *a2, IMP *a3)
{
  MethodImplementation = class_getMethodImplementation(a1, a2);
  Superclass = class_getSuperclass(a1);
  v8 = class_getMethodImplementation(Superclass, a2);
  if (MethodImplementation)
  {
    v9 = MethodImplementation == v8;
  }

  else
  {
    v9 = 1;
  }

  result = !v9 && MethodImplementation != MEMORY[0x1E69E58E8];
  if (a3)
  {
    if (result)
    {
      v12 = MethodImplementation;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
  }

  return result;
}

void sub_18FF0B75C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL BSAuditTokenForCurrentProcess@<W0>(_OWORD *a1@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *&v1 = -1;
  *(&v1 + 1) = -1;
  *a1 = v1;
  a1[1] = v1;
  result = BSAuditTokenForTask(*MEMORY[0x1E69E9A60], a1);
  if (!result)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to fetch audit token for current task."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audit_token_t BSAuditTokenForCurrentProcess(void)"];
      v6 = 138544130;
      v7 = v4;
      v8 = 2114;
      v9 = @"BSSecurityUtilities.m";
      v10 = 1024;
      v11 = 114;
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v6, 0x26u);
    }

    v5 = v3;
    qword_1EAD33B00 = [v3 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0B8C0);
  }

  return result;
}

void sub_18FF0B930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSEventQueueLock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL BSAuditTokenForTask(task_name_t a1, _OWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *task_info_out = v3;
  v12 = v3;
  if (a1 - 1 > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    task_info_outCnt = 8;
    v4 = task_info(a1, 0xFu, task_info_out, &task_info_outCnt);
    v5 = v4 == 0;
    if (v4)
    {
      v6 = BSLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = mach_error_string(v4);
        *buf = 136315650;
        v14 = "BSAuditTokenForTask";
        v15 = 2082;
        v16 = v9;
        v17 = 1024;
        v18 = v4;
        _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "%s failed: %{public}s (0x%x)", buf, 0x1Cu);
      }
    }
  }

  if (a2)
  {
    v7 = v12;
    *a2 = *task_info_out;
    a2[1] = v7;
  }

  return v5;
}

id BSSecTaskCopyEntitlementValue(__SecTask *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
    if (error)
    {
      v5 = BSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v10 = v3;
        v11 = 2114;
        v12 = error;
        _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "Unable to get entitlement %{public}@ for security task. Error: %{public}@", buf, 0x16u);
      }

      CFRelease(error);
    }
  }

  else
  {
    v6 = BSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "Invalid security task for getting entitlement %{public}@", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

void __BSXPCObjectBaseClass_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  _MergedGlobals_26 = NSClassFromString(&cfstr_OsXpcObject.isa);
  if (!_MergedGlobals_26)
  {
    v0 = BSLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v1 = 138543362;
      v2 = @"OS_xpc_object";
      _os_log_error_impl(&dword_18FEF6000, v0, OS_LOG_TYPE_ERROR, "Unable to determine xpc_object_t base class; expected '%{public}@' but didn't find it.", &v1, 0xCu);
    }
  }
}

id _BSCollectionLineBreakNoneStyle()
{
  if (qword_1ED44FFF8 != -1)
  {
    dispatch_once(&qword_1ED44FFF8, &__block_literal_global_54_0);
  }

  v1 = qword_1ED44FFF0;

  return v1;
}

id BSStackFrameInfoForAddresss(const void *a1)
{
  pthread_mutex_lock(&__StackInfoLock);
  if (!__StackInfoCache)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v3 = __StackInfoCache;
    __StackInfoCache = v2;

    [__StackInfoCache setCountLimit:100];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v5 = [__StackInfoCache objectForKey:v4];
  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [BSStackFrameInfo alloc];
    if (!v7 || (v27.receiver = v7, v27.super_class = BSStackFrameInfo, v8 = objc_msgSendSuper2(&v27, sel_init), (v9 = v8) == 0))
    {
      v5 = 0;
      goto LABEL_21;
    }

    v8[2] = a1;
    memset(&v26, 0, sizeof(v26));
    if (dladdr(a1, &v26))
    {
      if (v26.dli_fname)
      {
        v10 = objc_alloc(MEMORY[0x1E696AEC0]);
        v11 = [v10 initWithUTF8String:v26.dli_fname];
        v12 = *(v9 + 4);
        *(v9 + 4) = v11;
      }

      if (v26.dli_sname)
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [v13 initWithUTF8String:v26.dli_sname];
        v15 = *(v9 + 1);
        *(v9 + 1) = v14;
      }

      v16 = *(v9 + 1);
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = BSPrettyFunctionName([v16 UTF8String]);
      v18 = [v17 copy];
      v19 = *(v9 + 3);
      *(v9 + 3) = v18;

      v20 = [*(v9 + 3) rangeOfString:@"["];
      v21 = [*(v9 + 3) rangeOfString:@" "];
      v22 = 0;
      if (v20 != 0x7FFFFFFFFFFFFFFFLL && v21 != 0x7FFFFFFFFFFFFFFFLL && v20 < v21)
      {
        v22 = [*(v9 + 3) substringWithRange:{v20 + 1, v21 + ~v20}];
      }

      v23 = [v22 copy];
      v24 = *(v9 + 5);
      *(v9 + 5) = v23;
    }

    else
    {
      v22 = v9;
      v9 = 0;
    }

LABEL_20:
    v5 = v9;
LABEL_21:
    objc_autoreleasePoolPop(v6);
    if (v5)
    {
      [__StackInfoCache setObject:v5 forKey:v4];
    }
  }

  pthread_mutex_unlock(&__StackInfoLock);

  return v5;
}

uint64_t BSPIDForXPCConnection(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    pid = xpc_connection_get_pid(v1);
  }

  else
  {
    pid = 0xFFFFFFFFLL;
  }

  return pid;
}

id _BSBundleIDForXPCConnectionAndIKnowWhatImDoingISwear(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = xpc_connection_copy_bundle_id()) != 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void BSStoreTokenFromXPCConnectionToVar(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"connection must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 138544130;
      *&v6[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreTokenFromXPCConnectionToVar(xpc_connection_t _Nonnull, BSAuditToken * _Nullable * _Nonnull)"}];
      *&v6[12] = 2114;
      *&v6[14] = @"BSAuditTokenCaching.m";
      *&v6[22] = 1024;
      *&v6[24] = 161;
      *&v6[28] = 2114;
      *&v6[30] = v4;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v6, 0x26u);
    }

    qword_1EAD33B00 = [v4 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0C760);
  }

  if (!a2)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"var must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 138544130;
      *&v6[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreTokenFromXPCConnectionToVar(xpc_connection_t _Nonnull, BSAuditToken * _Nullable * _Nonnull)"}];
      *&v6[12] = 2114;
      *&v6[14] = @"BSAuditTokenCaching.m";
      *&v6[22] = 1024;
      *&v6[24] = 162;
      *&v6[28] = 2114;
      *&v6[30] = v5;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v6, 0x26u);
    }

    qword_1EAD33B00 = [v5 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0C818);
  }

  *&v3 = -1;
  *(&v3 + 1) = -1;
  *v6 = v3;
  *&v6[16] = v3;
  xpc_connection_get_audit_token();
  BSStoreRealTokenToVar(v6, a2);
}

id BSDescribeAppendFieldFormat(uint64_t a1, __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *(a1 + 8);
  v13 = *(a1 + 1104);
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      v24 = *(a1 + 1072);
      if (v24 < 1)
      {
        goto LABEL_31;
      }

      if (v24 >= 8)
      {
        v24 = 8;
      }

      v25 = *(&sIndentSpaceStrings + v24);
      v26 = strlen(v25);
      v14 = (a1 + 1040);
      v27 = *(a1 + 1040);
      if ((v27 + v26) <= 1023)
      {
        v17 = v26;
        memcpy((a1 + v27 + 16), v25, v26);
        goto LABEL_25;
      }

      if (v27 >= 1)
      {
        *(a1 + 16 + v27) = 0;
        CFStringAppendCString(*(a1 + 1064), (a1 + 16), 0x8000100u);
        *v14 = 0;
      }

      CFStringAppendCString(*(a1 + 1064), v25, 0x8000100u);
LABEL_31:
      *(a1 + 1104) = 0;
      if (!a2)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v22 = *(a1 + 1040);
    v23 = (a1 + 16);
    if (v22 > 1022)
    {
      v23[v22] = 0;
      CFStringAppendCString(*(a1 + 1064), v23, 0x8000100u);
      *(a1 + 1040) = 0;
      CFStringAppendCString(*(a1 + 1064), "\n", 0x8000100u);
    }

    else
    {
      v23[v22] = 10;
      ++*(a1 + 1040);
    }

    goto LABEL_20;
  }

  if (v13 == 1)
  {
    v14 = (a1 + 1040);
    v18 = *(a1 + 1040);
    v19 = (a1 + 16);
    if (*(*(a1 + 8) + 24) != 3)
    {
      if (v18 <= 1021)
      {
        *&v19[v18] = 8251;
        v17 = 2;
        goto LABEL_25;
      }

      v19[v18] = 0;
      CFStringAppendCString(*(a1 + 1064), v19, 0x8000100u);
      v20 = (a1 + 1064);
      v21 = "; ";
      goto LABEL_30;
    }

    if (v18 > 1022)
    {
      v19[v18] = 0;
      CFStringAppendCString(*(a1 + 1064), v19, 0x8000100u);
      *(a1 + 1040) = 0;
      CFStringAppendCString(*(a1 + 1064), ";", 0x8000100u);
    }

    else
    {
      v19[v18] = 59;
      ++*v14;
    }

    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = (a1 + 1040);
    v15 = *(a1 + 1040);
    v16 = (a1 + 16);
    if (v15 <= 1022)
    {
      v16[v15] = 32;
      v17 = 1;
LABEL_25:
      *v14 += v17;
      goto LABEL_31;
    }

    v16[v15] = 0;
    CFStringAppendCString(*(a1 + 1064), v16, 0x8000100u);
    v20 = (a1 + 1064);
    v21 = " ";
LABEL_30:
    *v14 = 0;
    CFStringAppendCString(*v20, v21, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!a2)
  {
    goto LABEL_63;
  }

LABEL_32:
  v28 = v12[6];
  v29 = v12[7];
  if (v28 < 2 || v29 < 1)
  {
    *(a1 + 1096) = 0;
  }

  else
  {
    *(a1 + 1096) = v28;
    *(a1 + 1080) = *(a1 + 1040) + [*(a1 + 1064) length];
    *(a1 + 1088) = v29;
  }

  v31 = [(__CFString *)a2 length];
  v32 = *(a1 + 1040);
  if (v32 + 3 * v31 > 1023)
  {
    if (v32 >= 1)
    {
      *(a1 + 16 + v32) = 0;
      CFStringAppendCString(*(a1 + 1064), (a1 + 16), 0x8000100u);
      *(a1 + 1040) = 0;
    }

    if (v31 > 341)
    {
      [*(a1 + 1064) appendString:a2];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v54.location = 0;
    v54.length = v31;
    CFStringGetBytes(a2, v54, 0x8000100u, 0, 0, (a1 + 16), 1024, &usedBufLen);
    v33 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v53.location = 0;
    v53.length = v31;
    CFStringGetBytes(a2, v53, 0x8000100u, 0, 0, (a1 + v32 + 16), 1024 - v32, &usedBufLen);
    v33 = *(a1 + 1040) + usedBufLen;
  }

  *(a1 + 1040) = v33;
LABEL_46:
  BSDescribeTruncationCommit(a1);
  if (*(a1 + 1048) <= 0)
  {
    v34 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v34 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v35 = *(*(a1 + 8) + *v34);
  if (v35 < 2)
  {
    v39 = *(a1 + 1040);
    v40 = (a1 + 16);
    if (v39 <= 1021)
    {
      *&v40[v39] = 8250;
      v38 = 2;
      goto LABEL_58;
    }

    v40[v39] = 0;
    CFStringAppendCString(*(a1 + 1064), v40, 0x8000100u);
    v43 = ": ";
  }

  else if (v35 == 2)
  {
    v41 = *(a1 + 1040);
    v42 = a1 + 16 + v41;
    if (v41 <= 1020)
    {
      *(v42 + 2) = 32;
      *v42 = 15648;
      v38 = 3;
      goto LABEL_58;
    }

    *v42 = 0;
    CFStringAppendCString(*(a1 + 1064), (a1 + 16), 0x8000100u);
    v43 = " = ";
  }

  else
  {
    if (v35 != 3)
    {
      goto LABEL_63;
    }

    v36 = *(a1 + 1040);
    v37 = (a1 + 16);
    if (v36 <= 1019)
    {
      *&v37[v36] = 540945696;
      v38 = 4;
LABEL_58:
      *(a1 + 1040) += v38;
      goto LABEL_63;
    }

    v37[v36] = 0;
    CFStringAppendCString(*(a1 + 1064), v37, 0x8000100u);
    v43 = " -> ";
  }

  *(a1 + 1040) = 0;
  CFStringAppendCString(*(a1 + 1064), v43, 0x8000100u);
LABEL_63:
  v44 = v12[8];
  v45 = v12[9];
  if (v44 <= 1 || v45 < 1)
  {
    v45 = 0;
    v47 = 1096;
  }

  else
  {
    *(a1 + 1096) = v44;
    *(a1 + 1080) = *(a1 + 1040) + [*(a1 + 1064) length];
    v47 = 1088;
  }

  *(a1 + v47) = v45;

  v48 = *(a1 + 1040);
  if (v48 >= 1)
  {
    *(a1 + 16 + v48) = 0;
    CFStringAppendCString(*(a1 + 1064), (a1 + 16), 0x8000100u);
    *(a1 + 1040) = 0;
  }

  usedBufLen = &a9;
  CFStringAppendFormatAndArguments(*(a1 + 1064), 0, a3, &a9);
  *(a1 + 1104) = 1;
  BSDescribeTruncationCommit(a1);
  v49 = a1;

  return v49;
}

id BSCollectionPartition(objc_class *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v23 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v22 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = v23[2](v23, v6);
        if (v7)
        {
          v25 = v7;
          if (_NSIsNSArray())
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v8 = v25;
            v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v9)
            {
              v10 = *v29;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v29 != v10)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v12 = *(*(&v28 + 1) + 8 * j);
                  v13 = v5;
                  v14 = v12;
                  v15 = v6;
                  v16 = [v13 objectForKey:v14];
                  if (!v16)
                  {
                    v16 = objc_alloc_init(a1);
                    [v13 setObject:v16 forKey:v14];
                  }

                  [v16 addObject:v15];
                }

                v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v9);
            }
          }

          else
          {
            v8 = v5;
            v17 = v25;
            v18 = v6;
            v19 = [v8 objectForKey:v17];
            if (!v19)
            {
              v19 = objc_alloc_init(a1);
              [v8 setObject:v19 forKey:v17];
            }

            [v19 addObject:v18];
          }

          v7 = v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  return v5;
}

objc_class *BSObjCClassCreate(void *a1, objc_class *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"preferredName != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class  _Nonnull BSObjCClassCreate(NSString *__strong _Nonnull, __unsafe_unretained Class _Nonnull, BSObjCClassConfigurator  _Nullable __strong)"}];
      *buf = 138544130;
      v25 = v19;
      v26 = 2114;
      v27 = @"BSObjCRuntime.m";
      v28 = 1024;
      v29 = 2045;
      v30 = 2114;
      v31 = v18;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v20 = v18;
    qword_1EAD33B00 = [v18 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0E298);
  }

  if (!a2)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"creating root classes is not supported"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class  _Nonnull BSObjCClassCreate(NSString *__strong _Nonnull, __unsafe_unretained Class _Nonnull, BSObjCClassConfigurator  _Nullable __strong)"}];
      *buf = 138544130;
      v25 = v22;
      v26 = 2114;
      v27 = @"BSObjCRuntime.m";
      v28 = 1024;
      v29 = 2046;
      v30 = 2114;
      v31 = v21;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v23 = v21;
    qword_1EAD33B00 = [v21 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0E368);
  }

  v7 = v5;
  v8 = v7;
  if ([v7 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  }

  os_unfair_lock_lock(&BSObjCClassCreate___ObjCLock);
  v9 = objc_lookUpClass([v8 UTF8String]);
  ClassPair = v9;
  if (v9)
  {
    if (([(objc_class *)v9 isSubclassOfClass:a2]& 1) == 0)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = NSStringFromClass(a2);
      v13 = [v11 stringWithFormat:@"class %@ is not a subclass of %@", v8, v12];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Class  _Nonnull BSObjCClassCreate(NSString *__strong _Nonnull, __unsafe_unretained Class _Nonnull, BSObjCClassConfigurator  _Nullable __strong)"}];
        *buf = 138544130;
        v25 = v14;
        v26 = 2114;
        v27 = @"BSObjCRuntime.m";
        v28 = 1024;
        v29 = 2066;
        v30 = 2114;
        v31 = v13;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v15 = v13;
      qword_1EAD33B00 = [v13 UTF8String];
      __break(0);
      JUMPOUT(0x18FF0E124);
    }
  }

  else
  {
    ClassPair = objc_allocateClassPair(a2, [v8 UTF8String], 0);
    if (v6)
    {
      v6[2](v6, ClassPair);
    }

    objc_registerClassPair(ClassPair);
  }

  os_unfair_lock_unlock(&BSObjCClassCreate___ObjCLock);
  v16 = ClassPair;

  return ClassPair;
}

id BSLogAddStateCaptureBlock(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = _BSLogAddStateCaptureBlockForEventWithTitle(a3, a1, a2, a4);

  return v4;
}

uint64_t __BSSandboxCanGetProcessInfo_block_invoke()
{
  getpid();
  result = sandbox_check();
  byte_1ED44FE21 = result == 0;
  return result;
}

uint64_t __BSSandboxCanGetMachTaskName_block_invoke()
{
  getpid();
  result = sandbox_check();
  byte_1ED44FE22 = result == 0;
  return result;
}

uint64_t _bsxpc_auditToken_init()
{
  v0 = [BSAuditToken alloc];
  *&v1 = -1;
  *(&v1 + 1) = -1;
  v3[0] = v1;
  v3[1] = v1;
  qword_1ED44FE98 = [(BSAuditToken *)v0 initWithAuditToken:v3];
  result = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:16];
  qword_1ED44FEA0 = result;
  return result;
}

void sub_18FF0E7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSCompoundAssertion;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF0E7F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t _BSCreateDataFromObject(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (([objc_opt_class() supportsSecureCoding] & 1) == 0)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v10 stringWithFormat:@"Object of type %@ does not support secure coding", v12];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData *_BSCreateDataFromObject(__strong id)"];
        *buf = 138544130;
        v25 = v14;
        v26 = 2114;
        v27 = @"NSObject+BSCoding.m";
        v28 = 1024;
        v29 = 22;
        v30 = 2114;
        v31 = v13;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      v15 = v13;
      qword_1EAD33B00 = [v13 UTF8String];
      __break(0);
      JUMPOUT(0x18FF0EABCLL);
    }

    v2 = objc_autoreleasePoolPush();
    v23 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v23];
    v4 = v23;
    if (v4)
    {
      v5 = BSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138543618;
        v25 = v8;
        v26 = 2114;
        v27 = v4;
        v9 = v8;
        _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "Error during encoding of %{public}@: %{public}@", buf, 0x16u);
      }

      v6 = &unk_1F03BA528;
      if (([v1 conformsToProtocol:v6] & 1) == 0)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v18 = NSStringFromProtocol(v6);
        v19 = [v16 stringWithFormat:@"%@ does not conform to %@", v17, v18];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData *_BSCreateDataFromObject(__strong id)"];
          *buf = 138544130;
          v25 = v20;
          v26 = 2114;
          v27 = @"NSObject+BSCoding.m";
          v28 = 1024;
          v29 = 32;
          v30 = 2114;
          v31 = v19;
          v21 = v20;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        v22 = v19;
        qword_1EAD33B00 = [v19 UTF8String];
        __break(0);
        JUMPOUT(0x18FF0EBB8);
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double BSAbsoluteMachTimeNow()
{
  v0 = mach_absolute_time();
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once_f(&_MergedGlobals_9, 0, __machTimeScaleInit);
  }

  return *&qword_1ED44FD90 * v0;
}

void sub_18FF0EECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSAbsoluteMachTimer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF0EF18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

id _BSCreateObjectOfClassesFromData(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length] && objc_msgSend(v3, "count"))
  {
    v5 = objc_autoreleasePoolPush();
    v22 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v3 fromData:v4 error:&v22];
    v7 = v22;
    if (v7)
    {
      v8 = BSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = v7;
        _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Error during decoding of data: %{public}@", buf, 0xCu);
      }
    }

    if (v6)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
      if (v10)
      {
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v9);
            }

            if (objc_opt_isKindOfClass())
            {

              v14 = v6;
              goto LABEL_25;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      if (!v7)
      {
        v13 = BSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138543618;
          v24 = v9;
          v25 = 2114;
          v26 = v17;
          _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "Error during decoding of data to types=%{public}@: decoded %{public}@ instead but unarchiver didn't filter it", buf, 0x16u);
        }
      }
    }

    v14 = 0;
LABEL_25:

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __BSDescribeAppendObjectDescription_block_invoke(uint64_t a1, __CFString *a2, __CFString *a3)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8 = *(v6 + 1104);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      v19 = *(v6 + 1072);
      if (v19 < 1)
      {
        goto LABEL_31;
      }

      if (v19 >= 8)
      {
        v19 = 8;
      }

      v20 = *(&sIndentSpaceStrings + v19);
      v21 = strlen(v20);
      v9 = (v6 + 1040);
      v22 = *(v6 + 1040);
      if ((v22 + v21) <= 1023)
      {
        v12 = v21;
        memcpy((v6 + v22 + 16), v20, v21);
        goto LABEL_25;
      }

      if (v22 >= 1)
      {
        *(v6 + 16 + v22) = 0;
        CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
        *v9 = 0;
      }

      CFStringAppendCString(*(v6 + 1064), v20, 0x8000100u);
LABEL_31:
      *(v6 + 1104) = 0;
      if (!a2)
      {
        goto LABEL_131;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = *(v6 + 1040);
    v18 = (v6 + 16);
    if (v17 > 1022)
    {
      v18[v17] = 0;
      CFStringAppendCString(*(v6 + 1064), v18, 0x8000100u);
      *(v6 + 1040) = 0;
      CFStringAppendCString(*(v6 + 1064), "\n", 0x8000100u);
    }

    else
    {
      v18[v17] = 10;
      ++*(v6 + 1040);
    }

    goto LABEL_20;
  }

  if (v8 == 1)
  {
    v9 = (v6 + 1040);
    v13 = *(v6 + 1040);
    v14 = (v6 + 16);
    if (*(*(v6 + 8) + 24) != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(*(v6 + 1064), v14, 0x8000100u);
      v15 = (v6 + 1064);
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(*(v6 + 1064), v14, 0x8000100u);
      *(v6 + 1040) = 0;
      CFStringAppendCString(*(v6 + 1064), ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*v9;
    }

    goto LABEL_17;
  }

  if (v8 == 2)
  {
    v9 = (v6 + 1040);
    v10 = *(v6 + 1040);
    v11 = (v6 + 16);
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *v9 += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(*(v6 + 1064), v11, 0x8000100u);
    v15 = (v6 + 1064);
    v16 = " ";
LABEL_30:
    *v9 = 0;
    CFStringAppendCString(*v15, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!a2)
  {
    goto LABEL_131;
  }

LABEL_32:
  v23 = *(v6 + 1056);
  *(v6 + 1056) = 1;
  v24 = v7[6];
  v25 = v7[7];
  if (v24 < 2 || v25 < 1)
  {
    *(v6 + 1096) = 0;
  }

  else
  {
    *(v6 + 1096) = v24;
    *(v6 + 1080) = *(v6 + 1040) + [*(v6 + 1064) length];
    *(v6 + 1088) = v25;
  }

  if (!_NSIsNSString())
  {
    if (_NSIsNSNumber())
    {
      v30 = a2;
      v31 = *[(__CFString *)v30 objCType];
      if (v31 <= 0x62)
      {
        if (v31 > 75)
        {
          switch(v31)
          {
            case 'L':
              v48 = *(v6 + 1040);
              if (v48 >= 1)
              {
                *(v6 + 16 + v48) = 0;
                CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
                *(v6 + 1040) = 0;
              }

              v33 = *(v6 + 1064);
              v34 = [(__CFString *)v30 unsignedLongValue];
              v35 = @"%lu";
              goto LABEL_112;
            case 'Q':
              v50 = *(v6 + 1040);
              if (v50 >= 1)
              {
                *(v6 + 16 + v50) = 0;
                CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
                *(v6 + 1040) = 0;
              }

              v33 = *(v6 + 1064);
              v34 = [(__CFString *)v30 unsignedLongLongValue];
              v35 = @"%llu";
              goto LABEL_112;
            case 'S':
              v42 = *(v6 + 1040);
              if (v42 >= 1)
              {
                *(v6 + 16 + v42) = 0;
                CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
                *(v6 + 1040) = 0;
              }

              v33 = *(v6 + 1064);
              v34 = [(__CFString *)v30 unsignedShortValue];
              v35 = @"%hu";
              goto LABEL_112;
          }

          goto LABEL_194;
        }

        if (v31 != 66)
        {
          if (v31 == 67)
          {
            v49 = *(v6 + 1040);
            if (v49 >= 1)
            {
              *(v6 + 16 + v49) = 0;
              CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
              *(v6 + 1040) = 0;
            }

            v33 = *(v6 + 1064);
            v34 = [(__CFString *)v30 unsignedCharValue];
          }

          else
          {
            if (v31 != 73)
            {
              goto LABEL_194;
            }

            v36 = *(v6 + 1040);
            if (v36 >= 1)
            {
              *(v6 + 16 + v36) = 0;
              CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
              *(v6 + 1040) = 0;
            }

            v33 = *(v6 + 1064);
            v34 = [(__CFString *)v30 unsignedIntValue];
          }

          v35 = @"%u";
LABEL_112:
          [v33 appendFormat:v35, v34];
          goto LABEL_113;
        }
      }

      else
      {
        if (v31 > 104)
        {
          if (v31 > 112)
          {
            if (v31 == 113)
            {
              v46 = *(v6 + 1040);
              if (v46 >= 1)
              {
                *(v6 + 16 + v46) = 0;
                CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
                *(v6 + 1040) = 0;
              }

              v33 = *(v6 + 1064);
              v34 = [(__CFString *)v30 longLongValue];
              v35 = @"%lld";
              goto LABEL_112;
            }

            if (v31 == 115)
            {
              v43 = *(v6 + 1040);
              if (v43 >= 1)
              {
                *(v6 + 16 + v43) = 0;
                CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
                *(v6 + 1040) = 0;
              }

              v33 = *(v6 + 1064);
              v34 = [(__CFString *)v30 shortValue];
              v35 = @"%hi";
              goto LABEL_112;
            }

            goto LABEL_194;
          }

          if (v31 != 105)
          {
            if (v31 == 108)
            {
              v32 = *(v6 + 1040);
              if (v32 >= 1)
              {
                *(v6 + 16 + v32) = 0;
                CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
                *(v6 + 1040) = 0;
              }

              v33 = *(v6 + 1064);
              v34 = [(__CFString *)v30 longValue];
              v35 = @"%ld";
              goto LABEL_112;
            }

LABEL_194:
            v88 = *(v6 + 1040);
            if (v88 >= 1)
            {
              *(v6 + 16 + v88) = 0;
              CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
              *(v6 + 1040) = 0;
            }

            [*(v6 + 1064) appendFormat:@"<***unknown type:%s>", -[__CFString objCType](v30, "objCType")];
            goto LABEL_113;
          }

          v45 = *(v6 + 1040);
          if (v45 >= 1)
          {
            *(v6 + 16 + v45) = 0;
            CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
            *(v6 + 1040) = 0;
          }

          v33 = *(v6 + 1064);
          v34 = [(__CFString *)v30 intValue];
          goto LABEL_94;
        }

        if (v31 != 99)
        {
          if (v31 == 100)
          {
            v47 = *(v6 + 1040);
            if (v47 >= 1)
            {
              *(v6 + 16 + v47) = 0;
              CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
              *(v6 + 1040) = 0;
            }

            v38 = *(v6 + 1064);
            [(__CFString *)v30 doubleValue];
            v41 = @"%0.16g";
          }

          else
          {
            if (v31 != 102)
            {
              goto LABEL_194;
            }

            v37 = *(v6 + 1040);
            if (v37 >= 1)
            {
              *(v6 + 16 + v37) = 0;
              CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
              *(v6 + 1040) = 0;
            }

            v38 = *(v6 + 1064);
            [(__CFString *)v30 floatValue];
            v40 = v39;
            v41 = @"%0.7g";
          }

          [v38 appendFormat:v41, *&v40];
LABEL_113:

          goto LABEL_114;
        }
      }

      v44 = *(v6 + 1040);
      if (v44 >= 1)
      {
        *(v6 + 16 + v44) = 0;
        CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
        *(v6 + 1040) = 0;
      }

      v33 = *(v6 + 1064);
      v34 = [(__CFString *)v30 charValue];
LABEL_94:
      v35 = @"%d";
      goto LABEL_112;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a2 appendDescriptionToStream:v6];
      goto LABEL_114;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a2 appendDescriptionToFormatter:v6];
      goto LABEL_114;
    }

    if (_NSIsNSDictionary())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __BSDescribeAppendObjectDescription_block_invoke;
      v113 = &unk_1E72CBE40;
      v114 = v6;
      [(BSDescriptionStream *)v6 _appendDictionary:a2 withName:0 itemBlock:&usedBufLen];
      goto LABEL_114;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 appendIntegerSet:a2 withName:0 format:0];
      goto LABEL_114;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __BSDescribeAppendObjectDescription_block_invoke_2;
      v113 = &unk_1E72CBE68;
      v114 = v6;
      [v6 appendIntegerMap:a2 withName:0 keyFormat:0 valueBlock:&usedBufLen];
      goto LABEL_114;
    }

    if (objc_opt_respondsToSelector())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __BSDescribeAppendObjectDescription_block_invoke_3;
      v113 = &unk_1E72CBE68;
      v114 = v6;
      [v6 appendCollection:a2 withName:0 itemBlock:&usedBufLen];
      goto LABEL_114;
    }

    if ((*(v6 + 1056) & 1) != 0 || (v100 = *(v6 + 8), *(v100 + 8) == 2))
    {
      if (objc_opt_respondsToSelector())
      {
        v101 = [(__CFString *)a2 succinctDescription];
        goto LABEL_257;
      }

      v100 = *(v6 + 8);
    }

    if (*(v100 + 16) == 2)
    {
      [(__CFString *)a2 debugDescription];
    }

    else
    {
      [(__CFString *)a2 description];
    }
    v101 = ;
LABEL_257:
    v106 = v101;
    v107 = [(__CFString *)v101 length];
    v108 = *(v6 + 1040);
    if (v108 + 3 * v107 > 1023)
    {
      if (v108 >= 1)
      {
        *(v6 + 16 + v108) = 0;
        CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
        *(v6 + 1040) = 0;
      }

      if (v107 > 341)
      {
        [*(v6 + 1064) appendString:v106];
        goto LABEL_267;
      }

      usedBufLen = 0;
      v122.location = 0;
      v122.length = v107;
      CFStringGetBytes(v106, v122, 0x8000100u, 0, 0, (v6 + 16), 1024, &usedBufLen);
      v109 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v121.location = 0;
      v121.length = v107;
      CFStringGetBytes(v106, v121, 0x8000100u, 0, 0, (v6 + v108 + 16), 1024 - v108, &usedBufLen);
      v109 = *(v6 + 1040) + usedBufLen;
    }

    *(v6 + 1040) = v109;
LABEL_267:

    goto LABEL_114;
  }

  v27 = [(__CFString *)a2 length];
  v28 = *(v6 + 1040);
  if (v28 + 3 * v27 > 1023)
  {
    if (v28 >= 1)
    {
      *(v6 + 16 + v28) = 0;
      CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
      *(v6 + 1040) = 0;
    }

    if (v27 > 341)
    {
      [*(v6 + 1064) appendString:a2];
      goto LABEL_114;
    }

    usedBufLen = 0;
    v116.location = 0;
    v116.length = v27;
    CFStringGetBytes(a2, v116, 0x8000100u, 0, 0, (v6 + 16), 1024, &usedBufLen);
    v29 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v115.location = 0;
    v115.length = v27;
    CFStringGetBytes(a2, v115, 0x8000100u, 0, 0, (v6 + v28 + 16), 1024 - v28, &usedBufLen);
    v29 = *(v6 + 1040) + usedBufLen;
  }

  *(v6 + 1040) = v29;
LABEL_114:
  BSDescribeTruncationCommit(v6);
  *(v6 + 1056) = v23;
  if (*(v6 + 1048) <= 0)
  {
    v51 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v51 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v52 = *(*(v6 + 8) + *v51);
  if (v52 < 2)
  {
    v53 = (v6 + 1040);
    v57 = *(v6 + 1040);
    v58 = (v6 + 16);
    if (v57 <= 1021)
    {
      *&v58[v57] = 8250;
      v56 = 2;
      goto LABEL_126;
    }

    v58[v57] = 0;
    CFStringAppendCString(*(v6 + 1064), v58, 0x8000100u);
    v61 = (v6 + 1064);
    v62 = ": ";
  }

  else if (v52 == 2)
  {
    v53 = (v6 + 1040);
    v59 = *(v6 + 1040);
    v60 = v6 + 16 + v59;
    if (v59 <= 1020)
    {
      *(v60 + 2) = 32;
      *v60 = 15648;
      v56 = 3;
      goto LABEL_126;
    }

    *v60 = 0;
    CFStringAppendCString(*(v6 + 1064), (v6 + 16), 0x8000100u);
    v61 = (v6 + 1064);
    v62 = " = ";
  }

  else
  {
    if (v52 != 3)
    {
      goto LABEL_131;
    }

    v53 = (v6 + 1040);
    v54 = *(v6 + 1040);
    v55 = (v6 + 16);
    if (v54 <= 1019)
    {
      *&v55[v54] = 540945696;
      v56 = 4;
LABEL_126:
      *v53 += v56;
      goto LABEL_131;
    }

    v55[v54] = 0;
    CFStringAppendCString(*(v6 + 1064), v55, 0x8000100u);
    v61 = (v6 + 1064);
    v62 = " -> ";
  }

  *v53 = 0;
  CFStringAppendCString(*v61, v62, 0x8000100u);
LABEL_131:
  v63 = v7[8];
  v64 = v7[9];
  if (v63 < 2 || v64 < 1)
  {
    v64 = 0;
    v66 = 1096;
  }

  else
  {
    *(v6 + 1096) = v63;
    *(v6 + 1080) = *(v6 + 1040) + [*(v6 + 1064) length];
    v66 = 1088;
  }

  *(v6 + v66) = v64;

  v67 = *(a1 + 32);
  if (a3)
  {
    if (_NSIsNSString())
    {
      v68 = [(__CFString *)a3 length];
      v69 = *(v67 + 1040);
      if (3 * v68 + v69 > 1023)
      {
        if (v69 >= 1)
        {
          *(v67 + 16 + v69) = 0;
          CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
          *(v67 + 1040) = 0;
        }

        if (v68 > 341)
        {
          [*(v67 + 1064) appendString:a3];
          goto LABEL_220;
        }

        usedBufLen = 0;
        v118.location = 0;
        v118.length = v68;
        CFStringGetBytes(a3, v118, 0x8000100u, 0, 0, (v67 + 16), 1024, &usedBufLen);
        v70 = usedBufLen;
      }

      else
      {
        usedBufLen = 0;
        v117.location = 0;
        v117.length = v68;
        CFStringGetBytes(a3, v117, 0x8000100u, 0, 0, (v67 + v69 + 16), 1024 - v69, &usedBufLen);
        v70 = *(v67 + 1040) + usedBufLen;
      }

      goto LABEL_157;
    }

    if (_NSIsNSNumber())
    {
      v73 = a3;
      v74 = *[(__CFString *)v73 objCType];
      if (v74 <= 0x62)
      {
        if (v74 > 75)
        {
          switch(v74)
          {
            case 'L':
              v92 = *(v67 + 1040);
              if (v92 >= 1)
              {
                *(v67 + 16 + v92) = 0;
                CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
                *(v67 + 1040) = 0;
              }

              v76 = *(v67 + 1064);
              v77 = [(__CFString *)v73 unsignedLongValue];
              v78 = @"%lu";
              goto LABEL_218;
            case 'Q':
              v94 = *(v67 + 1040);
              if (v94 >= 1)
              {
                *(v67 + 16 + v94) = 0;
                CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
                *(v67 + 1040) = 0;
              }

              v76 = *(v67 + 1064);
              v77 = [(__CFString *)v73 unsignedLongLongValue];
              v78 = @"%llu";
              goto LABEL_218;
            case 'S':
              v85 = *(v67 + 1040);
              if (v85 >= 1)
              {
                *(v67 + 16 + v85) = 0;
                CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
                *(v67 + 1040) = 0;
              }

              v76 = *(v67 + 1064);
              v77 = [(__CFString *)v73 unsignedShortValue];
              v78 = @"%hu";
              goto LABEL_218;
          }

          goto LABEL_221;
        }

        if (v74 != 66)
        {
          if (v74 == 67)
          {
            v93 = *(v67 + 1040);
            if (v93 >= 1)
            {
              *(v67 + 16 + v93) = 0;
              CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
              *(v67 + 1040) = 0;
            }

            v76 = *(v67 + 1064);
            v77 = [(__CFString *)v73 unsignedCharValue];
          }

          else
          {
            if (v74 != 73)
            {
              goto LABEL_221;
            }

            v79 = *(v67 + 1040);
            if (v79 >= 1)
            {
              *(v67 + 16 + v79) = 0;
              CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
              *(v67 + 1040) = 0;
            }

            v76 = *(v67 + 1064);
            v77 = [(__CFString *)v73 unsignedIntValue];
          }

          v78 = @"%u";
LABEL_218:
          [v76 appendFormat:v78, v77];
          goto LABEL_219;
        }
      }

      else
      {
        if (v74 > 104)
        {
          if (v74 > 112)
          {
            if (v74 == 113)
            {
              v90 = *(v67 + 1040);
              if (v90 >= 1)
              {
                *(v67 + 16 + v90) = 0;
                CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
                *(v67 + 1040) = 0;
              }

              v76 = *(v67 + 1064);
              v77 = [(__CFString *)v73 longLongValue];
              v78 = @"%lld";
              goto LABEL_218;
            }

            if (v74 == 115)
            {
              v86 = *(v67 + 1040);
              if (v86 >= 1)
              {
                *(v67 + 16 + v86) = 0;
                CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
                *(v67 + 1040) = 0;
              }

              v76 = *(v67 + 1064);
              v77 = [(__CFString *)v73 shortValue];
              v78 = @"%hi";
              goto LABEL_218;
            }

            goto LABEL_221;
          }

          if (v74 != 105)
          {
            if (v74 == 108)
            {
              v75 = *(v67 + 1040);
              if (v75 >= 1)
              {
                *(v67 + 16 + v75) = 0;
                CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
                *(v67 + 1040) = 0;
              }

              v76 = *(v67 + 1064);
              v77 = [(__CFString *)v73 longValue];
              v78 = @"%ld";
              goto LABEL_218;
            }

LABEL_221:
            v97 = *(v67 + 1040);
            if (v97 >= 1)
            {
              *(v67 + 16 + v97) = 0;
              CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
              *(v67 + 1040) = 0;
            }

            [*(v67 + 1064) appendFormat:@"<***unknown type:%s>", -[__CFString objCType](v73, "objCType")];
            goto LABEL_219;
          }

          v89 = *(v67 + 1040);
          if (v89 >= 1)
          {
            *(v67 + 16 + v89) = 0;
            CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
            *(v67 + 1040) = 0;
          }

          v76 = *(v67 + 1064);
          v77 = [(__CFString *)v73 intValue];
          goto LABEL_200;
        }

        if (v74 != 99)
        {
          if (v74 == 100)
          {
            v91 = *(v67 + 1040);
            if (v91 >= 1)
            {
              *(v67 + 16 + v91) = 0;
              CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
              *(v67 + 1040) = 0;
            }

            v81 = *(v67 + 1064);
            [(__CFString *)v73 doubleValue];
            v84 = @"%0.16g";
          }

          else
          {
            if (v74 != 102)
            {
              goto LABEL_221;
            }

            v80 = *(v67 + 1040);
            if (v80 >= 1)
            {
              *(v67 + 16 + v80) = 0;
              CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
              *(v67 + 1040) = 0;
            }

            v81 = *(v67 + 1064);
            [(__CFString *)v73 floatValue];
            v83 = v82;
            v84 = @"%0.7g";
          }

          [v81 appendFormat:v84, *&v83];
LABEL_219:

          goto LABEL_220;
        }
      }

      v87 = *(v67 + 1040);
      if (v87 >= 1)
      {
        *(v67 + 16 + v87) = 0;
        CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
        *(v67 + 1040) = 0;
      }

      v76 = *(v67 + 1064);
      v77 = [(__CFString *)v73 charValue];
LABEL_200:
      v78 = @"%d";
      goto LABEL_218;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a3 appendDescriptionToStream:v67];
      goto LABEL_220;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a3 appendDescriptionToFormatter:v67];
      goto LABEL_220;
    }

    if (_NSIsNSDictionary())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __BSDescribeAppendObjectDescription_block_invoke;
      v113 = &unk_1E72CBE40;
      v114 = v67;
      [(BSDescriptionStream *)v67 _appendDictionary:a3 withName:0 itemBlock:&usedBufLen];
      goto LABEL_220;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v67 appendIntegerSet:a3 withName:0 format:0];
      goto LABEL_220;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __BSDescribeAppendObjectDescription_block_invoke_2;
      v113 = &unk_1E72CBE68;
      v114 = v67;
      [v67 appendIntegerMap:a3 withName:0 keyFormat:0 valueBlock:&usedBufLen];
      goto LABEL_220;
    }

    if (objc_opt_respondsToSelector())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __BSDescribeAppendObjectDescription_block_invoke_3;
      v113 = &unk_1E72CBE68;
      v114 = v67;
      [v67 appendCollection:a3 withName:0 itemBlock:&usedBufLen];
      goto LABEL_220;
    }

    if ((*(v67 + 1056) & 1) != 0 || (v98 = *(v67 + 8), *(v98 + 8) == 2))
    {
      if (objc_opt_respondsToSelector())
      {
        v99 = [(__CFString *)a3 succinctDescription];
        goto LABEL_249;
      }

      v98 = *(v67 + 8);
    }

    if (*(v98 + 16) == 2)
    {
      [(__CFString *)a3 debugDescription];
    }

    else
    {
      [(__CFString *)a3 description];
    }
    v99 = ;
LABEL_249:
    v102 = v99;
    v103 = [(__CFString *)v99 length];
    v104 = *(v67 + 1040);
    if (v104 + 3 * v103 > 1023)
    {
      if (v104 >= 1)
      {
        *(v67 + 16 + v104) = 0;
        CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
        *(v67 + 1040) = 0;
      }

      if (v103 > 341)
      {
        [*(v67 + 1064) appendString:v102];
        goto LABEL_265;
      }

      usedBufLen = 0;
      v120.location = 0;
      v120.length = v103;
      CFStringGetBytes(v102, v120, 0x8000100u, 0, 0, (v67 + 16), 1024, &usedBufLen);
      v105 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v119.location = 0;
      v119.length = v103;
      CFStringGetBytes(v102, v119, 0x8000100u, 0, 0, (v67 + v104 + 16), 1024 - v104, &usedBufLen);
      v105 = *(v67 + 1040) + usedBufLen;
    }

    *(v67 + 1040) = v105;
LABEL_265:

    goto LABEL_220;
  }

  v71 = *(v67 + 1040);
  v72 = v67 + 16 + v71;
  if (v71 <= 1018)
  {
    *(v72 + 4) = 62;
    *v72 = 1818848828;
    v70 = *(v67 + 1040) + 5;
LABEL_157:
    *(v67 + 1040) = v70;
    goto LABEL_220;
  }

  *v72 = 0;
  CFStringAppendCString(*(v67 + 1064), (v67 + 16), 0x8000100u);
  *(v67 + 1040) = 0;
  CFStringAppendCString(*(v67 + 1064), "<nil>", 0x8000100u);
LABEL_220:
  v95 = *(a1 + 32);
  *(v95 + 1104) = 1;
  return BSDescribeTruncationCommit(v95);
}