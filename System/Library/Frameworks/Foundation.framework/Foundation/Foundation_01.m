uint64_t closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  _CFNonObjCStringGetBytes();

  return 0;
}

void *_NSNewValue(float64x2_t *a1, char *__s1, NSZone *a3)
{
  value[2] = *MEMORY[0x1E69E9840];
  v35 = 0uLL;
  v34 = 0uLL;
  v33 = 0uLL;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v25 = 0uLL;
  if (!strcmp(__s1, "{_NSRange=II}"))
  {
    *&v7 = *&a1->f64[0];
    *(&v7 + 1) = HIDWORD(*&a1->f64[0]);
    v35 = v7;
    v8 = &_NSCachedTypeInfoRange64;
    a1 = &v35;
LABEL_24:
    v9 = 4;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{_NSRange=QQ}"))
  {
    v8 = &_NSCachedTypeInfoRange64;
    goto LABEL_24;
  }

  if (!strcmp(__s1, "{CGPoint=ff}"))
  {
    v34 = vcvtq_f64_f32(*&a1->f64[0]);
    v8 = &_NSCachedTypeInfoPoint64;
    a1 = &v34;
LABEL_27:
    v9 = 1;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{CGPoint=dd}"))
  {
    v8 = &_NSCachedTypeInfoPoint64;
    goto LABEL_27;
  }

  if (!strcmp(__s1, "{CGSize=ff}"))
  {
    v33 = vcvtq_f64_f32(*&a1->f64[0]);
    v8 = &_NSCachedTypeInfoSize64;
    a1 = &v33;
LABEL_30:
    v9 = 2;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{CGSize=dd}"))
  {
    v8 = &_NSCachedTypeInfoSize64;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "{CGRect={CGPoint=ff}{CGSize=ff}}"))
  {
    v10 = vcvtq_f64_f32(*&a1->f64[1]);
    v31 = vcvtq_f64_f32(*&a1->f64[0]);
    v32 = v10;
    v8 = &_NSCachedTypeInfoRect64;
    a1 = &v31;
LABEL_33:
    v9 = 3;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v8 = &_NSCachedTypeInfoRect64;
    goto LABEL_33;
  }

  if (!strcmp(__s1, "{CGAffineTransform=ffffff}"))
  {
    v11 = vcvtq_f64_f32(*&a1->f64[1]);
    v28 = vcvtq_f64_f32(*&a1->f64[0]);
    v29 = v11;
    v30 = vcvtq_f64_f32(*&a1[1].f64[0]);
    v8 = &_NSCachedTypeInfoCGAffineTransform64;
    a1 = &v28;
LABEL_36:
    v9 = 10;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{CGAffineTransform=dddddd}"))
  {
    v8 = &_NSCachedTypeInfoCGAffineTransform64;
    goto LABEL_36;
  }

  if (!strcmp(__s1, "{UIEdgeInsets=ffff}"))
  {
    v12 = vcvtq_f64_f32(*&a1->f64[1]);
    v26 = vcvtq_f64_f32(*&a1->f64[0]);
    v27 = v12;
    v8 = &_NSCachedTypeInfoUIEdgeInsets64;
    a1 = &v26;
LABEL_39:
    v9 = 11;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{UIEdgeInsets=dddd}"))
  {
    v8 = &_NSCachedTypeInfoUIEdgeInsets64;
    goto LABEL_39;
  }

  if (!strcmp(__s1, "{NSEdgeInsets=ffff}"))
  {
    v13 = vcvtq_f64_f32(*&a1->f64[1]);
    v26 = vcvtq_f64_f32(*&a1->f64[0]);
    v27 = v13;
    v8 = &_NSCachedTypeInfoNSEdgeInsets64;
    a1 = &v26;
LABEL_42:
    v9 = 12;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{NSEdgeInsets=dddd}"))
  {
    v8 = &_NSCachedTypeInfoNSEdgeInsets64;
    goto LABEL_42;
  }

  if (!strcmp(__s1, "{NSDirectionalEdgeInsets=ffff}"))
  {
    v14 = vcvtq_f64_f32(*&a1->f64[1]);
    v26 = vcvtq_f64_f32(*&a1->f64[0]);
    v27 = v14;
    v8 = &_NSCachedTypeInfoNSDirectionalEdgeInsets64;
    a1 = &v26;
LABEL_45:
    v9 = 14;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{NSDirectionalEdgeInsets=dddd}"))
  {
    v8 = &_NSCachedTypeInfoNSDirectionalEdgeInsets64;
    goto LABEL_45;
  }

  if (!strcmp(__s1, "{UIOffset=ff}"))
  {
    v25 = vcvtq_f64_f32(*&a1->f64[0]);
    v8 = &_NSCachedTypeInfoUIOffset64;
    a1 = &v25;
LABEL_48:
    v9 = 13;
    goto LABEL_57;
  }

  if (!strcmp(__s1, "{UIOffset=dd}"))
  {
    v8 = &_NSCachedTypeInfoUIOffset64;
    goto LABEL_48;
  }

  value[0] = 0;
  value[1] = __s1;
  os_unfair_lock_lock(&_MergedGlobals_24);
  v6 = qword_1ED43F198;
  if (!qword_1ED43F198)
  {
    os_unfair_lock_unlock(&_MergedGlobals_24);
    memset(&callBacks, 0, 32);
    callBacks.hash = cachedObjCTypeInfoHash;
    callBacks.equal = cachedObjCTypeInfoIsEqual;
    v6 = CFSetCreateMutable(*MEMORY[0x1E695E4A8], 0, &callBacks);
    os_unfair_lock_lock(&_MergedGlobals_24);
    if (qword_1ED43F198)
    {
      CFRelease(v6);
      v6 = qword_1ED43F198;
    }

    else
    {
      qword_1ED43F198 = v6;
    }
  }

  v8 = CFSetGetValue(v6, value);
  os_unfair_lock_unlock(&_MergedGlobals_24);
  if (!v8)
  {
    callBacks.version = 0;
    NSGetSizeAndAlignment(__s1, &callBacks, 0);
    version = callBacks.version;
    v16 = strlen(__s1);
    v17 = malloc_type_malloc(v16 + 17, 0x1050040606E6C2FuLL);
    v24 = v17;
    if (!v17)
    {
      return 0;
    }

    *v17 = version;
    *(v17 + 1) = v17 + 16;
    strlcpy(v17 + 16, __s1, v16 + 1);
    os_unfair_lock_lock(&_MergedGlobals_24);
    v8 = CFSetGetValue(qword_1ED43F198, value);
    if (v8)
    {
      free(v24);
    }

    else
    {
      CFSetSetValue(qword_1ED43F198, v24);
      v8 = v24;
    }

    os_unfair_lock_unlock(&_MergedGlobals_24);
  }

  v9 = 0;
LABEL_57:
  v18 = __NSConcreteValueClass;
  if (!__NSConcreteValueClass)
  {
    v18 = objc_opt_self();
    __NSConcreteValueClass = v18;
  }

  v19 = *v8;
  v20 = [NSAllocateObject(v18 *v8];
  v21 = v20;
  if (v20)
  {
    v20[2] = v8;
    v20[1] = v9;
    IndexedIvars = object_getIndexedIvars(v20);
    memmove(IndexedIvars, a1, v19);
  }

  return v21;
}

uint64_t _decodeObjectReference(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  value[1] = *MEMORY[0x1E69E9840];
  *a5 = 0;
  v9 = [a1 requiresSecureCoding];
  value[0] = 0;
  if (!CFDictionaryGetValueIfPresent(*(a1 + 48), a4, value))
  {
    result = CFDictionaryGetValueIfPresent(*(a1 + 56), a4, value);
    if (!result)
    {
      return result;
    }

    if (v9 && ![a1 _validateAllowedClassesContainsClassOfReference:value[0] forKey:a3])
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (decodingCyclesIsAllowedForCoder(a1))
  {
LABEL_3:
    if (v9 && ([a1 _validateAllowedClassesContainsClass:objc_msgSend(value[0] forKey:{"classForCoder"), a3}] & 1) == 0)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

LABEL_9:
    v11 = value[0];
LABEL_15:
    *a5 = v11;
    return 1;
  }

  v12 = atomic_load((a1 + 16));
  if (v12 != *(a1 + 136))
  {
    __NSPoisoned();
  }

  v13 = atomic_load((a1 + 16));
  if ((v13 & 0x20) == 0 && !_os_feature_enabled_impl())
  {
    if (_decodeObjectReference_onceToken != -1)
    {
      dispatch_once(&_decodeObjectReference_onceToken, &__block_literal_global_733);
    }

    goto LABEL_3;
  }

  [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@: object cycles are disallowed", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
  return 1;
}

uint64_t _getUIDFromData(void *a1, _BYTE *a2, unint64_t a3, unint64_t *a4)
{
  v4 = *a2;
  if ((*a2 & 0xF0) != 0x80)
  {
    return 0;
  }

  v5 = v4 & 0xF;
  v6 = (v4 & 0xF) + 2;
  if (__CFADD__(a2, v6) || &a2[v6] > a3)
  {
    [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"overflow while attempting to read %lu bytes (uid)", v6}];
    return 0;
  }

  v7 = a2 + 1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v8 = bswap32(*(a2 + 1));
      goto LABEL_18;
    }

    if (v5 == 7)
    {
      v8 = bswap64(*(a2 + 1));
      goto LABEL_18;
    }

LABEL_13:
    v8 = 0;
    v10 = (v5 + 1);
    do
    {
      v11 = *v7++;
      v8 = v11 | (v8 << 8);
      --v10;
    }

    while (v10);
    goto LABEL_18;
  }

  if (!v5)
  {
    v8 = *v7;
    goto LABEL_18;
  }

  if (v5 != 1)
  {
    goto LABEL_13;
  }

  v8 = __rev16(*(a2 + 1));
LABEL_18:
  *a4 = v8;
  return 1;
}

uint64_t _decodeObject(unint64_t *a1, const void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v3 = atomic_load(a1 + 2);
  if (v3 != a1[17])
  {
    __NSPoisoned();
  }

  v7 = atomic_load(a1 + 2);
  atomic_store(v7 | 8, a1 + 2);
  v8 = atomic_load(a1 + 2);
  a1[17] = v8;
  v9 = objc_autoreleasePoolPush();
  if (a1[10])
  {
    v10 = _decodeObjectXML(a1, a2, v15);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (!_decodeOffsetAndRef(a1, a2, &v14, &v13))
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = _decodeObjectBinary(a1, v13, a2, v15);
  }

  v11 = v10;
LABEL_7:
  objc_autoreleasePoolPop(v9);
  *a3 = v15[0];
  return v11;
}

NSNumber *_decodeObject_0(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v3 = 0;
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = @"<no key>";
  }

  v5 = *a3;
  if (!*a3)
  {
    return v3;
  }

  v7 = *(a3 + 8);
  if (v7 == 255)
  {
    return v3;
  }

  HIDWORD(v10) = v7 - 16;
  LODWORD(v10) = v7 - 16;
  v9 = v10 >> 4;
  if (v9 > 8)
  {
    v3 = 0;
    if (v9 <= 10)
    {
      if (v9 == 9)
      {
        return v3;
      }

      [a1 _validateAllowedClass:NSNumber forKey:v4 allowingInvocations:1];
      v17 = 1;
    }

    else
    {
      if (v9 != 11)
      {
        if (v9 != 13)
        {
          if (v9 != 14)
          {
LABEL_39:
            v19 = *(a1 + 16);
            *(a1 + 16) = 0;
            if (++*(a1 + 2260) >= 0x110u)
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"decodeObjectForKey: too many nested collections" userInfo:0]);
            }

            v20 = *(a1 + 2248);
            *(a1 + 2248) = 0;
            *(a1 + 56 + 8 * *(a1 + 2260)) = a3;
            v36 = 0;
            v37 = 0;
            if (_NSXPCSerializationCreateObjectInDictionaryForASCIIKey((a1 + 24), a3, "$xpc", &v36))
            {
              v3 = [a1 _xpcObjectForIndex:{_NSXPCSerializationIntegerForObject((a1 + 24), &v36)}];
              [a1 _validateAllowedXPCType:object_getClass(v3) forKey:v4];
            }

            else
            {
              v35[0] = 0;
              v35[1] = 0;
              if ((_NSXPCSerializationCreateObjectInDictionaryForASCIIKey((a1 + 24), a3, "$class", v35) & 1) == 0)
              {
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"decodeObjectForKey: class name missing" userInfo:0]);
              }

              v21 = _NSXPCSerializationASCIIStringForObject((a1 + 24), v35);
              if (!v21)
              {
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"decodeObjectForKey: class name missing (2)" userInfo:0]);
              }

              v22 = v21;
              v23 = objc_lookUpClass(v21);
              if (!v23)
              {
                v30 = [NSString stringWithFormat:@"decodeObjectForKey: class %s not loaded or does not exist", v22];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v30 userInfo:0]);
              }

              [a1 _validateAllowedClass:v23 forKey:v4 allowingInvocations:1];
              if (v20)
              {
                _removeAllowedClass(a1, v20);
              }

              v24 = -[objc_class allocWithZone:](v23, "allocWithZone:", [a1 zone]);
              if (!v24)
              {
                v31 = [NSString stringWithFormat:@"decodeObjectForKey: Class %s returned nil from +alloc while being decoded for key %@", v22, v4];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v31 userInfo:0]);
              }

              v25 = [(objc_class *)v24 initWithCoder:a1];
              if (!v25)
              {
                v32 = [NSString stringWithFormat:@"decodeObjectForKey: Object of class %s returned nil from -initWithCoder: while being decoded for key %@", v22, v4];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v32 userInfo:0]);
              }

              v26 = [(objc_class *)v25 awakeAfterUsingCoder:a1];
              v3 = v26;
              if (!v26)
              {
                v33 = [NSString stringWithFormat:@"decodeObjectForKey: Object of class %s returned nil from -awakeAfterUsingCoder: while being decoded for key %@", v22, v4];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v33 userInfo:0]);
              }

              v27 = v26;
            }

            *(a1 + 16) = v19;
            --*(a1 + 2260);
            *(a1 + 2248) = 0;
            if (v3)
            {
              v28 = *(a1 + 40);
              if (v28)
              {
                CFDictionaryAddValue(v28, v5, v3);
              }
            }

            return v3;
          }

          goto LABEL_17;
        }

        return v3;
      }

      [a1 _validateAllowedClass:NSNumber forKey:v4 allowingInvocations:1];
      v17 = 0;
    }

    return [NSNumber numberWithBool:v17];
  }

  else
  {
    if (v9 <= 4)
    {
      if (v9 >= 2)
      {
        if (v9 == 3)
        {
          [a1 _validateAllowedClass:MEMORY[0x1E695DEF0] forKey:v4 allowingInvocations:1];

          return _NSXPCSerializationDataForObject((a1 + 24), a3);
        }

        goto LABEL_39;
      }

LABEL_17:
      [a1 _validateAllowedClass:NSNumber forKey:v4 allowingInvocations:1];

      return _NSXPCSerializationNumberForObject((a1 + 24), a3, v12);
    }

    if (v9 != 5)
    {
      if (v9 != 6)
      {
        if (v9 == 7)
        {
          v13 = _NSXPCSerializationReferenceForObject((a1 + 24), a3);
          v14 = _NSXPCSerializationTypeForReference((a1 + 24), v13);
          if (v14 == 255)
          {
            v29 = [NSString stringWithFormat:@"decodeObjectForKey: Invalid reference marker for object with key %@", v4];
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v29 userInfo:0]);
          }

          v15 = v14;
          Value = CFDictionaryGetValue(*(a1 + 40), v13);
          if (Value)
          {
            v3 = Value;
            [a1 _validateReusedReference:Value forKey:v4];
          }

          else
          {
            v36 = v13;
            v37 = v15;
            v3 = _decodeObject_0(a1, v4, &v36);
            if (!v3)
            {
              v34 = [NSString stringWithFormat:@"decodeObjectForKey: Invalid reference object for reference with key %@", v4];
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v34 userInfo:0]);
            }
          }

          return v3;
        }

        goto LABEL_39;
      }

      [a1 _validateAllowedClass:NSString forKey:v4 allowingInvocations:1];
      v18 = _NSXPCSerializationASCIIStringForObject((a1 + 24), a3);
      if (v18)
      {

        return [NSString stringWithUTF8String:v18];
      }

      return 0;
    }

    [a1 _validateAllowedClass:NSString forKey:v4 allowingInvocations:1];

    return _NSXPCSerializationStringForObject((a1 + 24), a3);
  }
}

void sub_18077171C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x180771464);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t _NSThreadGet0(int a1)
{
  v2 = pthread_self();
  v3 = pthread_main_thread_np();
  v4 = pthread_equal(v2, v3);
  v5 = a1 == 1;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1 == 1;
  }

  if (!v4)
  {
    v5 = 0;
  }

  if (a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v6 || (v8 = _CFGetTSD()) == 0)
  {
    if (v7)
    {
      if (_MergedGlobals_7_1 != -1)
      {
        dispatch_once(&_MergedGlobals_7_1, &__block_literal_global_51);
      }

      v8 = qword_1ED43F448;
    }

    else
    {
      v8 = objc_opt_new();
      atomic_store(0xEu, (*(v8 + 8) + 63));
      *(*(v8 + 8) + 144) = pthread_self();
    }

    _CFSetTSD();
    if (v6)
    {
      _CFSetTSD();
    }
  }

  return v8;
}

uint64_t _decodeOffsetAndRef(objc_class *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  result = __CFBinaryPlistGetOffsetForValueFromDictionary3();
  if (result)
  {
    if (_getUIDFromData(a1, (*(a1 + 13) + *a3), *(a1 + 13) + *(a1 + 14) - 1, a4))
    {
      return *a4 != 0;
    }

    else
    {
      v9 = _NSRuntimeIssuesLog();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      if (result)
      {
        *buf = 138543618;
        v11 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
        v12 = 2114;
        v13 = a2;
        _os_log_fault_impl(&dword_18075C000, v9, OS_LOG_TYPE_FAULT, "%{public}@: value for key (%{public}@) is not an object. This will become an error in the future.", buf, 0x16u);
        return 0;
      }
    }
  }

  return result;
}

BOOL _decodeObjectBinary(uint64_t a1, unsigned int a2, uint64_t a3, CFTypeRef *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (_decodeObjectReference(a1, 200, a3, a2, a4))
  {
    return *a4 != 0;
  }

  v39 = 0;
  cf = 0;
  if (!__CFBinaryPlistGetOffsetForValueFromArray2() || (v9 = *(a1 + 104), v10 = (v9 + v39), __CFADD__(v9, v39)) || v9 + *(a1 + 112) - 1 <= v10)
  {
    [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: object reference beyond limit or other data corruption", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
    goto LABEL_9;
  }

  v11 = *v10 >> 4;
  v12 = v11 >= 5;
  v13 = v11 - 5;
  if (v12 && v13 >= 2)
  {
    v38 = 0;
    if (!__CFBinaryPlistGetOffsetForValueFromDictionary3() || (v14 = *(a1 + 104), __CFADD__(v14, v38)) || (v15 = v14 + *(a1 + 112) - 1, v15 < v14 + v38))
    {
      [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: missing class information for object", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
      goto LABEL_9;
    }

    v37 = 0;
    _getUIDFromData(a1, (v14 + v38), v15, &v37);
    if (!v37)
    {
      [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: null class for object", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
      goto LABEL_9;
    }

    if (!__CFBinaryPlistGetOffsetForValueFromArray2() || (*(a1 + 104) + *(a1 + 112) - 1) < *(a1 + 104))
    {
      [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: bogus class information for object", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
      goto LABEL_9;
    }

    if (!__CFBinaryPlistGetOffsetForValueFromDictionary3() || (*(a1 + 104) + *(a1 + 112) - 1) < *(a1 + 104))
    {
      [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: missing class name for class", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
      goto LABEL_9;
    }

    if ((__CFBinaryPlistCreateObject() & 1) == 0)
    {
      [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: corrupt data or object is too large to decode", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)}];
      goto LABEL_9;
    }

    if ((_NSIsNSString() & 1) == 0)
    {
      [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@: cannot decode object of class (%@) for key (%@); the archive appears to be corrupt (non-string class name)", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), 0, a3}];
      goto LABEL_9;
    }

    __CFBinaryPlistGetOffsetForValueFromDictionary3();
    v34 = *(a1 + 128);
    __CFBinaryPlistGetOffsetForValueFromDictionary3();
    v16 = [a1 classForClassName:{0, v34}];
    if (v16)
    {
      goto LABEL_33;
    }

    v16 = [objc_opt_class() classForClassName:0];
    if (v16)
    {
      goto LABEL_33;
    }

    v16 = NSClassFromString(0);
    if (v16)
    {
      goto LABEL_33;
    }

    v41 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = [0 countByEnumeratingWithState:&v43 objects:value count:16];
    if (v36)
    {
      v35 = *v44;
      while (2)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(0);
          }

          v23 = *(*(&v43 + 1) + 8 * i);
          if ((_NSIsNSString() & 1) == 0)
          {
            v20 = [NSString stringWithFormat:@"%@: data is corrupt or object is too large to decode", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_)];
            CFRelease(v41);
            goto LABEL_43;
          }

          v16 = NSClassFromString(v23);
          if (v16)
          {
            goto LABEL_63;
          }
        }

        v36 = [0 countByEnumeratingWithState:&v43 objects:value count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_63:
    if (v41)
    {
      CFRelease(v41);
    }

    if (v16)
    {
LABEL_33:
      if (([*(a1 + 120) classNameAllowed:v16] & 1) == 0)
      {
        v18 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
        v19 = [NSString stringWithFormat:@"%@: data to unarchive contains class (%@) which has not been allowed", v18, NSStringFromClass(v16)];
        goto LABEL_42;
      }
    }

    else
    {
      if (!*(a1 + 8) || (objc_opt_respondsToSelector() & 1) == 0)
      {
        v16 = 0;
        goto LABEL_35;
      }

      v41 = 0;
      v16 = [*(a1 + 8) unarchiver:a1 cannotDecodeObjectOfClassName:0 originalClasses:0];
      if (v41)
      {
        CFRelease(v41);
      }

      if (!v16)
      {
        goto LABEL_35;
      }
    }

    if (_coderValidateClassValidToMessageForUnarchiving(v16))
    {
LABEL_35:
      v17 = [(objc_class *)v16 classForKeyedUnarchiver];
      if (v17)
      {
        if ([a1 requiresSecureCoding])
        {
          if (a3)
          {
            if (([a1 validateAllowedClass:v17 forKey:a3] & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          else
          {
            [a1 validateClassSupportsSecureCoding:v17];
          }
        }

        _NSCoderCheckPotentiallyMangledClassNameAndWarn(v17, 0);
        v21 = *(a1 + 120);
        if ([(NSCoder *)a1 _isPossibleNestedCollectionClass:v17]&& *(v21 + 40) == 1)
        {
          if (*(v21 + 41) == 1)
          {
            *(v21 + 40) = 0;
            [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%1$@: value for key (%2$@) contains too many nested (%3$@)s", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), a3, 0}];
            goto LABEL_9;
          }

          *(v21 + 41) = 1;
        }

        LOBYTE(v43) = 1;
        v24 = coderAllocateClassForUnarchival(a1, v17, &v43);
        cf = v24;
        if (v43)
        {
          v25 = *(a1 + 64);
          *(a1 + 64) = 0;
          v26 = *(a1 + 72);
          v27 = *(v26 + 32);
          *(v26 + 32) = v39;
          CFDictionarySetValue(*(a1 + 48), a2, v24);
          v28 = [objc_msgSend(cf initWithCoder:{a1), "awakeAfterUsingCoder:", a1}];
          v29 = v28;
          *(*(a1 + 120) + 16) = a2;
          *(*(a1 + 72) + 32) = v27;
          *(a1 + 64) = v25;
          cf = v28;
          if (v28)
          {
            value[0] = v28;
            v30 = *(a1 + 32);
            if (v30 && CFDictionaryGetValueIfPresent(v30, v29, value))
            {
              if (value[0] != v29)
              {

                v31 = value[0];
              }
            }

            else
            {
              v32 = v29;
              if (*(a1 + 8) && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v33 = [*(a1 + 8) unarchiver:a1 didDecodeObject:v29];
                value[0] = v33;
              }

              else
              {
                v33 = value[0];
              }

              if (v33)
              {
                [a1 _replaceObject:v29 withObject:?];
              }

              else
              {
                value[0] = v29;
              }
            }

            cf = value[0];
            CFDictionarySetValue(*(a1 + 24), value[0], a2);
            CFDictionarySetValue(*(a1 + 56), a2, cf);
          }

          CFDictionaryRemoveValue(*(a1 + 48), a2);
          *a4 = cf;
          return 1;
        }

LABEL_9:
        result = 0;
        *a4 = 0;
        return result;
      }

      v20 = 0;
LABEL_43:
      if (v20)
      {
        [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@", v20}];
      }

      else
      {
        [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%1$@: cannot decode object of class (%2$@) for key (%3$@) because no class named %2$@ was found; the class needs to be defined in source code or linked in from a library (ensure the class is part of the correct target). If the class was renamed, use setClassName:forClass: to add a class translation mapping to NSKeyedUnarchiver", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), 0, a3}];
      }

      goto LABEL_9;
    }

    v19 = [NSString stringWithFormat:@"%@: unexpected non-objectlike class (%@)", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), 0];
LABEL_42:
    v20 = v19;
    goto LABEL_43;
  }

  __CFBinaryPlistCreateObject();
  *a4 = 0;
  return 1;
}

void sub_18077273C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    CFDictionaryRemoveValue(*(v27 + 48), v28);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL _coderValidateClassValidToMessageForUnarchiving(objc_class *a1)
{
  if (!class_respondsToSelector(a1, sel_methodSignatureForSelector_) || !class_respondsToSelector(a1, sel_doesNotRecognizeSelector_))
  {
    return 0;
  }

  return class_respondsToSelector(a1, sel_forwardInvocation_);
}

uint64_t _NSCoderCheckPotentiallyMangledClassNameAndWarn(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    result = class_getName(result);
    if (*result == 95 && *(result + 1) == 84 && *(result + 2))
    {
      v4 = atomic_load(_NSCoderCheckPotentiallyMangledClassNameAndWarn_warningMethodIsAvailable);
      if ((v4 & 1) == 0)
      {
        result = objc_opt_respondsToSelector();
        if ((result & 1) == 0)
        {
          return result;
        }

        atomic_store(1u, _NSCoderCheckPotentiallyMangledClassNameAndWarn_warningMethodIsAvailable);
      }

      return [NSKeyedUnarchiver _swift_checkClassAndWarnForKeyedArchiving:v3 operation:a2 ^ 1u];
    }
  }

  return result;
}

id coderAllocateClassForUnarchival(void *a1, objc_class *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *a3 = 1;
  if ([a1 requiresSecureCoding])
  {
    if (qword_1ED43EF38 != -1)
    {
      dispatch_once(&qword_1ED43EF38, &__block_literal_global_751);
    }

    *buf = sel_classForKeyedArchiver;
    *&buf[8] = sel_classForArchiver;
    *&buf[16] = sel_classForCoder;
    Superclass = class_getSuperclass(a2);
    v7 = 0;
    while (1)
    {
      v8 = *&buf[v7];
      MethodImplementation = class_getMethodImplementation(a2, v8);
      if (MethodImplementation != *(&_MergedGlobals_43 + v7 + 32))
      {
        break;
      }

      v7 += 8;
      if (v7 == 24)
      {
        goto LABEL_11;
      }
    }

    if (Superclass != MEMORY[0x1E69E58C0] && MethodImplementation == class_getMethodImplementation(Superclass, v8))
    {
      *a3 = 0;
    }
  }

LABEL_11:
  if (*a3)
  {

    return objc_allocWithZone(a2);
  }

  else
  {
    v11 = _NSOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = a2;
      *&buf[12] = 2114;
      *&buf[14] = a2;
      _os_log_fault_impl(&dword_18075C000, v11, OS_LOG_TYPE_FAULT, "Class '%{public}@' unexpectedly found in possibly-altered archive. [%{public}@ classForCoder] is inherited from a superclass and should likely have replaced this object at encode time. To be allowed in archives, it should override -classForCoder itself.", buf, 0x16u);
    }

    [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: class '%@' unexpectedly found in possibly-altered archive. -[%@ classForCoder] is inherited from a superclass and should likely have replaced this object at encode time. To be allowed in archives, it should override -classForCoder itself", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), a2, a2}];
    return 0;
  }
}

uint64_t _decodeInt64(uint64_t a1, const void *a2, unint64_t *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 16));
  if (v3 != *(a1 + 136))
  {
    __NSPoisoned();
  }

  v7 = atomic_load((a1 + 16));
  atomic_store(v7 | 8, (a1 + 16));
  v8 = atomic_load((a1 + 16));
  *(a1 + 136) = v8;
  valuePtr = 0;
  v9 = *(a1 + 80);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), Count - 1);
    if (CFGetTypeID(ValueAtIndex) == 19)
    {
      Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      v13 = Value;
      CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
      if (!Value)
      {
        goto LABEL_13;
      }
    }

    else
    {
      Value = CFDictionaryGetValue(ValueAtIndex, a2);
      v18 = Value;
      if (!Value)
      {
LABEL_13:
        v17 = 0;
        result = 0;
        goto LABEL_16;
      }
    }

    if (CFGetTypeID(Value) == 22 && !CFNumberIsFloatType(Value))
    {
      result = CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr) != 0;
      v17 = valuePtr;
      goto LABEL_16;
    }

LABEL_12:
    [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@: value for key (%@) is not an integer number", _NSMethodExceptionProem(a1, sel_decodeInt64ForKey_), a2}];
    goto LABEL_13;
  }

  result = __CFBinaryPlistGetOffsetForValueFromDictionary3();
  if (!result)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v15 = *(a1 + 104);
  v16 = &v15[*(a1 + 112) - 1];
  v20[0] = 0;
  if (!_readInt(a1, v15, v16, v20, 0))
  {
    goto LABEL_12;
  }

  v17 = v20[0];
  result = 1;
LABEL_16:
  *a3 = v17;
  return result;
}

uint64_t _readInt(void *a1, _BYTE *a2, unint64_t a3, unint64_t *a4, void *a5)
{
  v5 = *a2;
  if ((*a2 & 0xF0) != 0x10)
  {
    return 0;
  }

  v6 = v5 & 0xF;
  v7 = 1 << (v5 & 0xF);
  v8 = &a2[v7 + 1];
  if (__CFADD__(a2, v7 + 1) || v8 > a3)
  {
    [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"overflow while attempting to read %lu bytes (int)", v7 + 1}];
    return 0;
  }

  v9 = a2 + 1;
  if (v7 > 3u)
  {
    if (v7 == 4)
    {
      v10 = bswap32(*(a2 + 1));
      goto LABEL_19;
    }

    if (v7 == 8)
    {
      v10 = bswap64(*(a2 + 1));
      goto LABEL_19;
    }
  }

  else
  {
    if (v7 == 1)
    {
      v10 = *v9;
      goto LABEL_19;
    }

    if (v7 == 2)
    {
      v10 = __rev16(*(a2 + 1));
      goto LABEL_19;
    }
  }

  if (v6 <= 7)
  {
    v10 = 0;
    v7 = v7;
    do
    {
      v12 = *v9++;
      v10 = v12 | (v10 << 8);
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = 0;
  }

LABEL_19:
  *a4 = v10;
  if (a5)
  {
    *a5 = v8;
  }

  return 1;
}

uint64_t _decodeBool(uint64_t a1, const void *a2, BOOL *a3)
{
  v3 = atomic_load((a1 + 16));
  if (v3 != *(a1 + 136))
  {
    __NSPoisoned();
  }

  v7 = atomic_load((a1 + 16));
  atomic_store(v7 | 8, (a1 + 16));
  v8 = atomic_load((a1 + 16));
  *(a1 + 136) = v8;
  v9 = *(a1 + 80);
  if (!v9)
  {
    result = __CFBinaryPlistGetOffsetForValueFromDictionary3();
    if (!result)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v15 = **(a1 + 104);
    if (v15 == 8)
    {
      v16 = 0;
      goto LABEL_17;
    }

    if (v15 == 9)
    {
      v16 = 1;
LABEL_17:
      result = 1;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  Count = CFArrayGetCount(v9);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v13 = Value;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
    if (!Value)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (CFGetTypeID(Value) == 21)
    {
      v16 = CFBooleanGetValue(Value) != 0;
      goto LABEL_17;
    }

LABEL_13:
    [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@: value for key (%@) is not a BOOLean", _NSMethodExceptionProem(a1, sel_decodeBoolForKey_), a2}];
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, a2);
  v17 = Value;
  if (Value)
  {
    goto LABEL_11;
  }

LABEL_14:
  v16 = 0;
  result = 0;
LABEL_18:
  *a3 = v16;
  return result;
}

void __NSOQSchedule_f(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = pthread_self();
  os_unfair_lock_lock((a1 + 8));
  [*(a1 + 152) addPointer:v5];
  os_unfair_lock_unlock((a1 + 8));
  os_unfair_lock_lock((a2 + 232));
  v6 = voucher_adopt();
  *(a2 + 104) = 0;
  os_unfair_lock_unlock((a2 + 232));
  _CFSetTSD();
  _CFSetTSD();
  atomic_store(0xD8u, (a2 + 237));
  __NSOPERATIONQUEUE_IS_STARTING_AN_OPERATION__(a2);
  _CFSetTSD();
  _CFSetTSD();
  if ([a2 isFinished])
  {
    v7 = atomic_load((a2 + 237));
    if (v7 <= 0xEF)
    {
      [__NSOperationInternalObserver _observeValueForKeyPath:@"isFinished" ofObject:a2 changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
    }
  }

  v8 = pthread_self();
  os_unfair_lock_lock((a1 + 8));
  v9 = [*(a1 + 152) count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while ([*(a1 + 152) pointerAtIndex:v11] != v8)
    {
      if (v10 == ++v11)
      {
        goto LABEL_11;
      }
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 152) removePointerAtIndex:v11];
    }
  }

LABEL_11:
  os_unfair_lock_unlock((a1 + 8));

  objc_autoreleasePoolPop(v4);
}

void sub_180773EA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x180773B20);
  }

  _Unwind_Resume(a1);
}

void *_NSXPCSerializationEndArrayWrite(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1[1024];
  if (!v1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unbalanced end of array collection" userInfo:0]);
  }

  v2 = a1[1025];
  v3 = v1 - 1;
  a1[1024] = v3;
  v4 = a1[v3];
  v6[0] = v2 - 1;
  return _replaceBytes(a1, v4, 8, v6);
}

NSNumber *_NSXPCSerializationNumberForObject(void *a1, unint64_t *a2, double a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (*a1 + *a2);
  v5 = *v4;
  v6 = v5 & 0xF0;
  if (v6 == 240)
  {
    v14 = a1[1];
    if (v5 >= 0xF0 && v14 > v3 && ((v3 >= 0xFFFFFFFFFFFFFFF8) << 63) >> 63 == v3 >= 0xFFFFFFFFFFFFFFF8 && v14 > v3 + 8)
    {
      v17 = *(v4 + 1);
      v22[0] = 0;
      v22[1] = v17;
      v7 = *MEMORY[0x1E695E4A8];
      v8 = v22;
      v9 = kCFNumberMaxType|kCFNumberSInt8Type;
      return CFNumberCreate(v7, v9, v8);
    }

    return 0;
  }

  if (v6 != 32)
  {
    if (v6 == 16)
    {
      v23[0] = 0;
      if (_getIntAtMarker(a1, v23, v3, v22))
      {
        v7 = *MEMORY[0x1E695E4A8];
        v8 = v23;
        v9 = kCFNumberSInt64Type;
        return CFNumberCreate(v7, v9, v8);
      }
    }

    return 0;
  }

  if ((v5 & 0xF) == 3)
  {
    v18 = a1[1];
    if (v5 != 35 || v18 <= v3)
    {
      return 0;
    }

    if (((v3 >= 0xFFFFFFFFFFFFFFF8) << 63) >> 63 != v3 >= 0xFFFFFFFFFFFFFFF8 || v18 <= v3 + 8)
    {
      return 0;
    }

    v21 = *(v4 + 1);

    return [NSNumber numberWithDouble:v21];
  }

  else
  {
    if ((v5 & 0xF) != 2)
    {
      return 0;
    }

    v10 = a1[1];
    if (v5 != 34 || v10 <= v3)
    {
      return 0;
    }

    if (((v3 >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 != v3 >= 0xFFFFFFFFFFFFFFFCLL || v10 <= v3 + 4)
    {
      return 0;
    }

    LODWORD(a3) = *(v4 + 1);

    return [NSNumber numberWithFloat:a3];
  }
}

uint64_t _objc_getTaggedPointerTag(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  do
  {
    if ((v3 & 7) == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  v4 = v1 | v3;
  v5 = v1 & 7;
  v6 = (v4 >> 55) + 8;
  if (v5 == 7)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)(uint64_t result)
{
  if (result)
  {
    return _NSTaggedPointerStringGetBytes();
  }

  __break(1u);
  return result;
}

atomic_uint *_timerRelease(atomic_uint *result)
{
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    v2 = result;
    _CFAutoreleasePoolPush();

    free(v2);

    return _CFAutoreleasePoolPop();
  }

  return result;
}

BOOL NSNextMapEnumeratorPair(NSMapEnumerator *enumerator, void **key, void **value)
{
  if (!enumerator)
  {
    NSLog(@"%s: state argument is NULL", key, value, "BOOL NSNextMapEnumeratorPair(NSMapEnumerator * _Nonnull, void ** _Nullable, void ** _Nullable)");
LABEL_9:
    LOBYTE(bs) = 1;
    return bs;
  }

  pi = enumerator->_pi;
  si = enumerator->_si;
  if (enumerator->_pi > si)
  {
    if (key)
    {
      *key = *(enumerator->_bs + si);
    }

    if (value)
    {
      *value = *(enumerator->_bs + pi + si);
    }

    enumerator->_si = si + 1;
    goto LABEL_9;
  }

  bs = enumerator->_bs;
  if (bs)
  {
    free(bs);
    LOBYTE(bs) = 0;
    enumerator->_bs = 0;
  }

  return bs;
}

void NSEndMapTableEnumeration(NSMapEnumerator *enumerator)
{
  if (enumerator)
  {
    enumerator->_si = enumerator->_pi;
    free(enumerator->_bs);
    enumerator->_bs = 0;
  }

  else
  {
    NSLog(@"%s: state argument is NULL", "void NSEndMapTableEnumeration(NSMapEnumerator * _Nonnull)");
  }
}

void NSSliceDealloc(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  v2 = *(a1 + 24);

  free(v2);
}

id _NSGetBoolValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithBool:{(Implementation)(a1, Name)}];

  return v8;
}

void *_NSXPCSerializationAddInteger(uint64_t a1, unint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  if (HIDWORD(a2))
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

  if (a2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (a2 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  _reserveSpace(a1, 1);
  *(*(a1 + 8216) + (*(a1 + 8200))++) = v5 | 0x10;
  _reserveSpace(a1, v5);
  result = memmove((*(a1 + 8216) + *(a1 + 8200)), v7, v5);
  *(a1 + 8200) += v5;
  return result;
}

void *_NSXPCSerializationAddASCIIString(uint64_t a1, void *key, uint64_t a3, int a4)
{
  if (a3 && a4)
  {
    Mutable = *(a1 + 8240);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
      *(a1 + 8240) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (Value)
    {

      return _NSXPCSerializationAddReference(a1, Value);
    }

    CFDictionaryAddValue(*(a1 + 8240), key, *(a1 + 8200));
  }

  v10 = a3 + 1;
  _reserveSpace(a1, 1);
  v11 = 15;
  if ((a3 + 1) < 0xF)
  {
    v11 = a3 + 1;
  }

  *(*(a1 + 8216) + (*(a1 + 8200))++) = v11 | 0x70;
  if (v10 >= 0xF)
  {
    _NSXPCSerializationAddInteger(a1, a3 + 1);
  }

  _reserveSpace(a1, a3 + 1);
  result = memmove((*(a1 + 8216) + *(a1 + 8200)), key, a3 + 1);
  *(a1 + 8200) += v10;
  return result;
}

void _reserveSpace(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8200);
  v3 = __CFADD__(v2, a2);
  v4 = v2 + a2;
  if (v3)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"Unable to allocate enough memory to encode data (overflow)";
    goto LABEL_21;
  }

  if (v4 <= *(a1 + 8208))
  {
    return;
  }

  if (v4 > 1.1529e19)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"Unable to allocate enough memory to encode data (overflow 2)";
    goto LABEL_21;
  }

  v6 = v4 * 1.6;
  v7 = v6;
  if (v6 <= 0x20000)
  {
    if (*(a1 + 8249) != 1)
    {
      *(a1 + 8216) = MEMORY[0x1865CFE30](*(a1 + 8216), v6, 283457332, &__block_literal_global_93);
      *(a1 + 8208) = v7;
      return;
    }

    v10 = malloc_type_malloc(v6, 0xE89404CCuLL);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, *(a1 + 8216), *(a1 + 8200));
      *(a1 + 8216) = v11;
      *(a1 + 8208) = v7;
      *(a1 + 8249) = 0;
      return;
    }

    goto LABEL_20;
  }

  __dst = 0;
  v8 = v7 + *MEMORY[0x1E69E9AC8] - 1;
  if ((v8 & -*MEMORY[0x1E69E9AC8]) > v7)
  {
    v7 = v8 & -*MEMORY[0x1E69E9AC8];
  }

  v9 = MEMORY[0x1E69E9A60];
  if (mach_vm_allocate(*MEMORY[0x1E69E9A60], &__dst, v7, 687865857))
  {
LABEL_20:
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"Unable to allocate enough memory to encode data";
LABEL_21:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:{0, __dst, v16}]);
  }

  memmove(__dst, *(a1 + 8216), *(a1 + 8200));
  if (*(a1 + 8248) == 1)
  {
    mach_vm_deallocate(*v9, *(a1 + 8216), *(a1 + 8208));
  }

  else if ((*(a1 + 8249) & 1) == 0)
  {
    free(*(a1 + 8216));
  }

  *(a1 + 8216) = __dst;
  *(a1 + 8208) = v7;
  *(a1 + 8248) = 1;
}

void _NSXPCSerializationStartWrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 0x2000) = 0;
  if (a2 && (v4 = a3) != 0)
  {
    *(a1 + 8216) = a2;
    v5 = 1;
  }

  else
  {
    v4 = 8196;
    v6 = malloc_type_malloc(0x2004uLL, 0xC229F0EAuLL);
    *(a1 + 8216) = v6;
    if (!v6)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unable to allocate enough memory to encode data" userInfo:0]);
    }

    v5 = 0;
  }

  *(a1 + 8208) = v4;
  *(a1 + 8200) = 0;
  *(a1 + 8248) = 0;
  *(a1 + 8249) = v5;
  _reserveSpace(a1, 8);
  *(*(a1 + 8216) + *(a1 + 8200)) = 0x37317473696C7062;
  *(a1 + 8200) += 8;
}

void _NSXPCSerializationStartDictionaryWrite(uint64_t *a1)
{
  if (a1[1024] >= 1024)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Data structure has too many nested collections to encode" userInfo:0]);
  }

  _reserveSpace(a1, 1);
  *(a1[1027] + a1[1025]) = -48;
  v2 = a1[1025] + 1;
  a1[1025] = v2;
  v3 = a1[1024];
  a1[1024] = v3 + 1;
  a1[v3] = v2;
  _reserveSpace(a1, 8);
  *(a1[1027] + a1[1025]) = 0;
  a1[1025] += 8;
}

void *_replaceBytes(void *result, uint64_t a2, int64_t a3, void *__src)
{
  v4 = a2 + a3;
  if ((BYTE8(v4) & 1) == 0 && result[1025] >= v4)
  {
    return memmove((result[1027] + a2), __src, a3);
  }

  return result;
}

xpc_object_t _NSXPCSerializationCreateWriteData(uint64_t a1)
{
  v2 = *(a1 + 8224);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8224) = 0;
  }

  v3 = *(a1 + 8232);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8232) = 0;
  }

  v4 = *(a1 + 8240);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8240) = 0;
  }

  v5 = *(a1 + 8216);
  if (*(a1 + 8248) == 1)
  {
    v6 = dispatch_data_create(v5, *(a1 + 8208), 0, *MEMORY[0x1E69E9660]);
    v7 = xpc_data_create_with_dispatch_data(v6);
    dispatch_release(v6);
  }

  else
  {
    v7 = xpc_data_create(v5, *(a1 + 8200));
    if ((*(a1 + 8249) & 1) == 0)
    {
      free(*(a1 + 8216));
    }
  }

  return v7;
}

void _NSXPCSerializationAddString(uint64_t a1, CFStringRef theString, int a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  if (Length >= 1)
  {
    Mutable = *(a1 + 8232);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
      *(a1 + 8232) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, theString);
    if (Value)
    {

      _NSXPCSerializationAddReference(a1, Value);
      return;
    }

    CFDictionaryAddValue(*(a1 + 8232), theString, *(a1 + 8200));
  }

  if (a3 && (v11[0] = 0, (v9 = _stringIsASCII(theString, v11)) != 0))
  {
    _NSXPCSerializationAddASCIIString(a1, v9, v11[0], 0);
  }

  else
  {
    _reserveSpace(a1, 1);
    v10 = 15;
    if (Length < 15)
    {
      v10 = Length;
    }

    *(*(a1 + 8216) + (*(a1 + 8200))++) = v10 | 0x60;
    if (Length >= 15)
    {
      _NSXPCSerializationAddInteger(a1, Length);
    }

    _reserveSpace(a1, 2 * Length);
    v13.location = 0;
    v13.length = Length;
    CFStringGetCharacters(theString, v13, (*(a1 + 8216) + *(a1 + 8200)));
    *(a1 + 8200) += 2 * Length;
  }
}

void _resetAllowedClasses(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    *(a1 + 2264 + 8 * (*(a1 + 4440))--) = 0;
  }
}

void *_setAllowedClasses(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[555];
    if (v3 >= 271)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"decodeObjectOfClass:forKey: too many nested collections" userInfo:0]);
    }

    result[555] = v3 + 1;
    result = a2;
    v2[v2[555] + 283] = result;
  }

  return result;
}

uint64_t _NSXPCSerializationCreateObjectInDictionaryForKey(uint64_t *a1, void *a2, const __CFString *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12 = 0;
  v8 = _stringIsASCII(a3, &v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___NSXPCSerializationCreateObjectInDictionaryForKey_block_invoke;
  v11[3] = &unk_1E69FAA30;
  v11[6] = a1;
  v11[7] = v8;
  v11[4] = a3;
  v11[5] = &v13;
  v11[8] = v12;
  v11[9] = a4;
  if (_iterateDictionaryKeysAndValues(a1, a2, v11))
  {
    v9 = *(v14 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v9 & 1;
}

void sub_180775C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSNumber *_decodeObjectAfterSettingAllowListForKey(uint64_t a1, __CFString *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  v4 = *(a1 + 56 + 8 * *(a1 + 2260));
  if (a2)
  {
    if (_NSXPCSerializationCreateObjectInDictionaryForKey((a1 + 24), v4, a2, v7))
    {
      return _decodeObject_0(a1, a2, v7);
    }
  }

  else
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = v6 + 1;
    if (_NSXPCSerializationCreateObjectInDictionaryForGenericKey((a1 + 24), v4, v6, v7))
    {
      return _decodeObject_0(a1, a2, v7);
    }
  }

  return 0;
}

void _NSXPCSerializationAddNumber(uint64_t a1, CFNumberRef number)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E4D0] == number)
  {
    _reserveSpace(a1, 1);
    v4 = *(a1 + 8216);
    v5 = *(a1 + 8200);
    v6 = -80;
LABEL_8:
    *(v4 + v5) = v6;
    ++*(a1 + 8200);
    return;
  }

  if (*MEMORY[0x1E695E4C0] == number)
  {
    _reserveSpace(a1, 1);
    v4 = *(a1 + 8216);
    v5 = *(a1 + 8200);
    v6 = -64;
    goto LABEL_8;
  }

  if (CFNumberIsFloatType(number))
  {
    if (CFNumberGetByteSize(number) > 4)
    {
      valuePtr = 0.0;
      CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr);
      _NSXPCSerializationAddDouble(a1, valuePtr);
    }

    else
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      _NSXPCSerializationAddFloat(a1, *&valuePtr);
    }
  }

  else if (_CFNumberGetType2() == 17)
  {
    valuePtr = 0.0;
    v8 = 0;
    CFNumberGetValue(number, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
    _NSXPCSerializationAddUnsignedInteger(a1, v8);
  }

  else
  {
    valuePtr = 0.0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    _NSXPCSerializationAddInteger(a1, *&valuePtr);
  }
}

uint64_t _iterateDictionaryKeysAndValues(uint64_t *a1, void *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = *a2 + 8;
  if (((*a2 >= 0xFFFFFFFFFFFFFFF8) << 63) >> 63 != *a2 >= 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 <= v3)
  {
    return 0;
  }

  v6 = *(*a1 + *a2 + 1);
  if (v6 != v3)
  {
    v7 = *a2 + 9;
    v23[0] = v7;
    if (((v3 == -1) << 63) >> 63 != (v3 == -1) || v5 <= v7)
    {
      return 0;
    }

    if (v6 >= v7)
    {
      while (1)
      {
        v21 = v7;
        v22 = 255;
        v10 = *a1;
        LODWORD(v22) = *(*a1 + v7) & 0xF0;
        v19 = v7;
        v20 = 0;
        if (v22 == 128)
        {
          if (!_getReferenceAtMarker(a1, &v19, v7, &v20))
          {
            return 0;
          }

          v11 = v19;
          if (!_getLastByteOfValueIncludingMarker(a1, v19, &v20))
          {
            return 0;
          }

          v21 = v7;
          LODWORD(v22) = *(v10 + v11) & 0xF0;
        }

        if (!_getLastByteOfValueIncludingMarker(a1, v7, &v20))
        {
          break;
        }

        v12 = v20 + 1;
        if (((v20 == -1) << 63) >> 63 != (v20 == -1) || v5 <= v12)
        {
          break;
        }

        v17 = v20 + 1;
        v18 = 255;
        LODWORD(v18) = *(v10 + v12) & 0xF0;
        if (!(*(a3 + 16))(a3, &v21, &v17))
        {
          return 1;
        }

        result = _getLastByteOfValueIncludingMarker(a1, v12, v23);
        if (!result)
        {
          return result;
        }

        v15 = v23[0] + 1;
        v16 = v23[0]++ == -1;
        if (v16 << 63 >> 63 != v16)
        {
          return 0;
        }

        v5 = a1[1];
        if (v5 > v15)
        {
          if (v7 >= v15)
          {
            return 0;
          }

          v7 = v15;
          if (v6 >= v15)
          {
            continue;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return 1;
}

const char *_stringIsASCII(const __CFString *a1, CFIndex *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  result = CFStringGetCStringPtr(a1, 0x600u);
  if (result)
  {
    goto LABEL_31;
  }

  memset(v22, 0, sizeof(v22));
  theString = a1;
  v26 = 0;
  v27 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v24 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v28 = 0;
  v29 = 0;
  v25 = CStringPtr;
  if (Length)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 64;
    while (1)
    {
      if (v10 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v10;
      }

      v13 = v27;
      if (v27 <= v10)
      {
        goto LABEL_16;
      }

      if (v24)
      {
        break;
      }

      if (!v25)
      {
        if (v29 <= v10 || v9 > v10)
        {
          v17 = v12 + v8;
          v18 = v11 - v12;
          v19 = v10 - v12;
          v20 = v19 + 64;
          if (v19 + 64 >= v27)
          {
            v20 = v27;
          }

          v28 = v19;
          v29 = v20;
          if (v27 >= v18)
          {
            v13 = v18;
          }

          v31.location = v19 + v26;
          v31.length = v13 + v17;
          CFStringGetCharacters(theString, v31, v22);
          v9 = v28;
        }

        v14 = v22 - v9;
        goto LABEL_12;
      }

      v15 = v25[v26 + v10];
LABEL_15:
      if (v15 > 0x7Eu)
      {
        return 0;
      }

LABEL_16:
      ++v10;
      --v8;
      ++v11;
      if (Length == v10)
      {
        goto LABEL_28;
      }
    }

    v14 = &v24[v26];
LABEL_12:
    v15 = v14[v10];
    goto LABEL_15;
  }

LABEL_28:
  v21 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v21 = __CFStringComputeEightBitStringEncoding();
  }

  result = CFStringGetCStringPtr(a1, v21);
  if (result)
  {
LABEL_31:
    if (a2)
    {
      *a2 = Length;
    }
  }

  return result;
}

uint64_t _NSXPCSerializationStartRead(void *a1, void *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  data = xpc_dictionary_get_data(a1, "root", v9);
  v6 = v9[0];
  if (data)
  {
    v7 = v9[0] < 9;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  *a2 = data;
  a2[1] = v6;
  if (*data != 0x37317473696C7062)
  {
    return 0;
  }

  a2[2] = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  *(a3 + 8) = 255;
  *a3 = 8;
  *(a3 + 8) = *(*a2 + 8) & 0xF0;
  return 1;
}

uint64_t _getASCIIStringAtMarker(uint64_t *a1, void *a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = a3;
  v5 = a1[1];
  if (v5 <= a3)
  {
    return 0;
  }

  v10 = *(*a1 + a3);
  if ((v10 & 0xF0) == 0x80)
  {
    result = _getReferenceAtMarker(a1, v20, a3, a5);
    if (result)
    {
      return _getASCIIStringAtMarker(a1, a2, v20[0], a4, &v19);
    }

    return result;
  }

  if ((v10 & 0xF0) != 0x70)
  {
    return 0;
  }

  v12 = v10 & 0xF;
  v13 = a3 + 1;
  v19 = v12;
  v20[0] = v13;
  if (v13 >= v5)
  {
    return 0;
  }

  if (v12 == 15)
  {
    result = _getIntAtMarker(a1, &v19, v13, v20);
    if (!result)
    {
      return result;
    }

    v13 = v20[0] + 1;
    v14 = ((v20[0] == -1) << 63) >> 63 == (v20[0] == -1) && v5 > v13;
    if (!v14)
    {
      return 0;
    }

    v12 = v19;
  }

  v14 = v12 < 1;
  v15 = v12 - 1;
  if (v14)
  {
    return 0;
  }

  result = 0;
  v16 = v13 + v15;
  v17 = __CFADD__(v13, v15);
  v18 = v17 << 63 >> 63;
  *a5 = v16;
  if (v18 == v17 && (v18 & 0x8000000000000000) == 0)
  {
    if (a1[1] > v16 && !*(*a1 + v16))
    {
      *a2 = *a1 + v13;
      *a4 = v15;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _getIntAtMarker(void *a1, void *a2, unint64_t a3, unint64_t *a4)
{
  if (a1[1] <= a3)
  {
    return 0;
  }

  v5 = *(*a1 + a3);
  if ((v5 & 0xF0) != 0x10)
  {
    return 0;
  }

  result = 0;
  v7 = v5 & 0xF;
  v8 = a3 + v7;
  v9 = __CFADD__(a3, v7);
  v10 = v9 << 63 >> 63;
  *a4 = v8;
  if (v10 != v9 || v10 < 0)
  {
    return result;
  }

  if (a1[1] <= v8)
  {
    return 0;
  }

  result = 0;
  v11 = *a1 + a3;
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v12 = *(v11 + 1);
    }

    else
    {
      if (v7 != 8)
      {
        return result;
      }

      v12 = *(v11 + 1);
    }
  }

  else if (v7 == 1)
  {
    v12 = *(v11 + 1);
  }

  else
  {
    if (v7 != 2)
    {
      return result;
    }

    v12 = *(v11 + 1);
  }

  *a2 = v12;
  return 1;
}

uint64_t _getLastByteOfValueIncludingMarker(void *a1, unint64_t a2, unint64_t *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (v3 <= a2)
  {
    return 0;
  }

  result = 0;
  v7 = (*a1 + a2);
  v8 = *v7;
  v9 = (v8 - 16) >> 4;
  if (v9 <= 6)
  {
    if ((v8 - 16) >> 4 <= 4)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

      if (v9 == 1)
      {
        if ((v8 & 0xF) == 3)
        {
          v18 = __CFADD__(a2, 8);
          v13 = a2 + 8;
        }

        else
        {
          if ((v8 & 0xF) != 2)
          {
            return 0;
          }

          v18 = __CFADD__(a2, 4);
          v13 = a2 + 4;
        }

        v19 = v18;
        *a3 = v13;
        if (v19 << 63 >> 63 != v19)
        {
          return 0;
        }

        return a1[1] > v13;
      }

      if (v9 != 3)
      {
        return result;
      }
    }

    v10 = v8 & 0xF;
    v20 = v10;
    if ((v8 & 0xF) == 0)
    {
LABEL_24:
      *a3 = a2;
      return 1;
    }

    if (v10 == 15)
    {
      v21[0] = a2 + 1;
      if (a2 + 1 >= v3)
      {
        return 0;
      }

      if (!_getIntAtMarker(a1, &v20, a2 + 1, v21))
      {
        return 0;
      }

      a2 = v21[0];
      if (v21[0] >= v3)
      {
        return 0;
      }

      v10 = v20;
      if (v20 < 0)
      {
        return 0;
      }
    }

    v11 = v10 << ((v8 & 0xF0) == 96);
    v12 = v11 >> 63;
    v18 = __CFADD__(a2, v11);
    v13 = a2 + v11;
    v14 = v18 ? v12 + 1 : v12;
    v15 = v14 << 63 >> 63;
    *a3 = v13;
    if (v15 != v14 || v15 < 0)
    {
      return 0;
    }

    return a1[1] > v13;
  }

  if (v9 > 0xE)
  {
    return result;
  }

  if (((1 << v9) & 0x2C00) != 0)
  {
    goto LABEL_24;
  }

  if (((1 << v9) & 0x1200) == 0)
  {
    if (((1 << v9) & 0x4080) == 0)
    {
      return result;
    }

LABEL_25:
    v16 = a2 + (v8 & 0xF);
    *a3 = v16;
    return !__CFADD__(a2, v8 & 0xF) && v16 < a1[1];
  }

  result = 0;
  if (((a2 >= 0xFFFFFFFFFFFFFFF7) << 63) >> 63 == a2 >= 0xFFFFFFFFFFFFFFF7 && v3 > a2 + 9)
  {
    v17 = *(v7 + 1);
    *a3 = v17;
    return v17 < v3;
  }

  return result;
}

unsigned __int8 *_xpc_skipAttributesOfType(unsigned __int8 *result)
{
  while (1)
  {
    v1 = *result;
    v2 = (v1 - 78) > 0x24 || ((1 << (v1 - 78)) & 0x1300000113) == 0;
    if (v2 && v1 != 43)
    {
      break;
    }

    ++result;
  }

  return result;
}

void _NSXPCSerializationStartArrayWrite(uint64_t *a1)
{
  if (a1[1024] >= 1024)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Data structure has too many nested collections to encode" userInfo:0]);
  }

  _reserveSpace(a1, 1);
  *(a1[1027] + a1[1025]) = -96;
  v2 = a1[1025] + 1;
  a1[1025] = v2;
  v3 = a1[1024];
  a1[1024] = v3 + 1;
  a1[v3] = v2;
  _reserveSpace(a1, 8);
  *(a1[1027] + a1[1025]) = 0;
  a1[1025] += 8;
}

uint64_t _NSXPCDistantObjectSimpleMessageSend2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    [v7[1] _sendSelector:a2 withProxy:v7 arg1:a3 arg2:a4];
  }

  return 0;
}

void *_NSXPCSerializationAddInvocationWithOnlyObjectArgumentsArray(SEL *a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  _NSXPCSerializationStartArrayWrite(a4);
  for (; a2; --a2)
  {
    if (objc_opt_isKindOfClass())
    {
      _reserveSpace(a4, 1);
      *(a4[1027] + a4[1025]++) = _NSXPCSerializationAddNull_nullMarker;
    }

    else
    {
      _NSXPCSerializationAddTypedObjCValuesToArray(a3, a4, "@", a1);
    }

    ++a1;
  }

  return _NSXPCSerializationEndArrayWrite(a4);
}

void _NSXPCSerializationAddTypedObjCValuesToArray(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, SEL *a4)
{
  v8 = _xpc_skipAttributesOfType(a3);
  v9 = *v8;
  if (v9 <= 0x52)
  {
    if (*v8 > 0x41u)
    {
      if (*v8 > 0x48u)
      {
        if (v9 == 73)
        {
          v15 = *a4;
          goto LABEL_34;
        }

        if (v9 != 76 && v9 != 81)
        {
          goto LABEL_63;
        }

        goto LABEL_33;
      }

      if (v9 != 66)
      {
        if (v9 != 67)
        {
          goto LABEL_63;
        }

        v15 = *a4;
        goto LABEL_34;
      }

      v21 = *a4;
      _reserveSpace(a2, 1);
      v12 = *(a2 + 8216);
      v13 = *(a2 + 8200);
      v22 = &_NSXPCSerializationAddBool_trueMarker;
      if (!v21)
      {
        v22 = &_NSXPCSerializationAddBool_falseMarker;
      }

      v23 = *v22;
LABEL_62:
      *(v12 + v13) = v23;
      ++*(a2 + 8200);
      return;
    }

    if (*v8 > 0x39u)
    {
      if (v9 != 58)
      {
        if (v9 != 64)
        {
          goto LABEL_63;
        }

        v16 = *a4;

        [a1 _encodeUnkeyedObject:v16];
        return;
      }

      Name = sel_getName(*a4);
    }

    else
    {
      if (v9 != 35)
      {
        if (v9 != 42)
        {
          goto LABEL_63;
        }

        v11 = *a4;
        _reserveSpace(a2, 1);
        v12 = *(a2 + 8216);
        v13 = *(a2 + 8200);
        if (v11)
        {
          *(v12 + v13) = _NSXPCSerializationAddBool_falseMarker;
          ++*(a2 + 8200);
          v14 = strlen(v11) + 1;

          _NSXPCSerializationAddRawData(a2, v11, v14);
          return;
        }

        v23 = _NSXPCSerializationAddBool_trueMarker;
        goto LABEL_62;
      }

      Name = class_getName(*a4);
    }

    v19 = Name;
    v20 = strlen(Name);

    _NSXPCSerializationAddASCIIString(a2, v19, v20, 1);
    return;
  }

  if (*v8 > 0x68u)
  {
    if (*v8 <= 0x70u)
    {
      if (v9 == 105)
      {
        v15 = *a4;
        goto LABEL_34;
      }

      if (v9 != 108)
      {
        goto LABEL_63;
      }
    }

    else if (v9 != 113)
    {
      if (v9 != 115)
      {
        if (v9 != 123)
        {
          goto LABEL_63;
        }

        goto LABEL_30;
      }

      v15 = *a4;
LABEL_34:

      _NSXPCSerializationAddInteger(a2, v15);
      return;
    }

LABEL_33:
    v15 = *a4;
    goto LABEL_34;
  }

  if (*v8 <= 0x62u)
  {
    if (v9 == 83)
    {
      v15 = *a4;
      goto LABEL_34;
    }

    if (v9 != 91)
    {
      goto LABEL_63;
    }

LABEL_30:
    _xpc_walkDataStructure(a1, a2, 0, v8, a3, a4, 0xFFFFFFFFLL, 1, 0, 0, 0, 0);
    return;
  }

  if (v9 == 99)
  {
    v15 = *a4;
    goto LABEL_34;
  }

  if (v9 != 100)
  {
    if (v9 == 102)
    {
      v10 = *a4;

      _NSXPCSerializationAddFloat(a2, v10);
      return;
    }

LABEL_63:
    v24 = [NSString stringWithFormat:@"encodeDataAt:ofObjCType: unencodable type (%s)", a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0]);
  }

  v17 = *a4;

  _NSXPCSerializationAddDouble(a2, *&v17);
}

void _NSXPCSerializationAddObjectRef(uint64_t a1, void *key)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8224);
  if (!v4)
  {
    keyCallBacks.version = 0;
    *&keyCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
    memset(&keyCallBacks.copyDescription, 0, 24);
    v4 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
    *(a1 + 8224) = v4;
  }

  CFDictionaryAddValue(v4, key, *(a1 + 8200));
}

uint64_t _NSXPCSerializationDecodeInvocationObjectOnlyArgumentArray(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = [a3 numberOfArguments];
  result = [a3 _argInfo:0];
  if (*(result + 34) < 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if ((v14 - v16) > a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Too many objects in signature to decode as object-only" userInfo:0]);
  }

  if (v14 > v16)
  {
    v17 = *a6;
    v18 = __CFADD__(*a6, 9);
    v19 = *a6 + 9;
    v20 = v18;
    if (v20 << 63 >> 63 != v20 || a5[1] <= v19)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find array of NSInvocation arguments but there were no entries" userInfo:0]);
    }

    v21 = *(*a5 + v17 + 1);
    v33 = v19;
    v34 = v21;
    v22 = v14;
    if (v14 > v16)
    {
      v23 = 0;
      v24 = v16;
      do
      {
        if (a7 && [a7 count] > v23)
        {
          v25 = [a7 objectAtIndex:v23];
        }

        else
        {
          v25 = 0;
        }

        v26 = [a3 _argInfo:v24];
        v27 = v26[17];
        if ((v27 & 0x80) != 0)
        {
          v27 = *(*v26 + 34);
        }

        if ((v27 & 0x2000) == 0)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find object in wire signature of object-only decode of NSInvocation arguments" userInfo:0]);
        }

        v31 = 0;
        v32 = 0;
        if (v19 > v34 || v19 >= a5[1])
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find entry in array of NSInvocation arguments but there were no entries" userInfo:0]);
        }

        LODWORD(v32) = 255;
        v31 = v19;
        LODWORD(v32) = *(*a5 + v19) & 0xF0;
        v28 = [a4 _decodeObjectOfClasses:v25 atObject:&v31];
        v29 = v28;
        *(a1 + 8 * v23) = v28;
        result = _getLastByteOfValueIncludingMarker(a5, v19, &v33);
        v19 = v33 + 1;
        v30 = v33++ == -1;
        if (v30 << 63 >> 63 != v30)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Overflow of array data" userInfo:0]);
        }

        ++v24;
        ++v23;
      }

      while (v22 != v24);
    }
  }

  return result;
}

void sub_18077727C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    if (v14 != a13)
    {
      v16 = v14 - a13;
      do
      {

        --v16;
      }

      while (v16);
    }

    [v15 debugDescription];
    v17 = [NSString stringWithFormat:@"Exception while decoding argument %ld (#%ld of invocation):\nException: %@"];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v17 userInfo:0]);
  }

  _Unwind_Resume(exception_object);
}

void *_NSXPCSerializationAddReference(uint64_t a1, unint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  if (HIDWORD(a2))
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

  if (a2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (a2 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  _reserveSpace(a1, 1);
  *(*(a1 + 8216) + (*(a1 + 8200))++) = v5 | 0x80;
  _reserveSpace(a1, v5);
  result = memmove((*(a1 + 8216) + *(a1 + 8200)), v7, v5);
  *(a1 + 8200) += v5;
  return result;
}

unint64_t static Set._unconditionallyBridgeFromObjectiveC(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)(a1, &v4, a2, a3);
  result = v4;
  if (!v4)
  {
    __break(1u);
  }

  return result;
}

unint64_t static Set._forceBridgeFromObjectiveC(_:result:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{

  swift_unknownObjectRetain();
  result = static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (result)
  {
    *a2 = result;
    return result;
  }

  if (_swift_isClassOrObjCExistentialType())
  {
    result = [a1 copyWithZone_];
    *a2 = ~(result >> 1) & 0x4000000000000000 | result;
    return result;
  }

  v9 = MEMORY[0x1E69E6158];
  if (a3 != MEMORY[0x1E69E6158])
  {
    v10 = [a1 count];
    if (v10)
    {
      type metadata accessor for _SetStorage();
      v11 = static _SetStorage.allocate(capacity:)();
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    v29 = v11;
    v30 = v10;
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = &v29;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #2 in static Set._forceBridgeFromObjectiveC(_:result:);
    *(v18 + 24) = v17;
    v27 = _sypSpy10ObjectiveC8ObjCBoolVGIgny_ypADIegny_TRTA_0;
    v28 = v18;
    v23 = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v26 = &block_descriptor_7;
    v19 = _Block_copy(&v23);

    [a1 enumerateObjectsUsingBlock_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v16 = v29;
      v21 = v30;
      v22 = *(v29 + 16);

      if (v22 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v29 = MEMORY[0x1865CB700]([a1 count], MEMORY[0x1E69E6158], a4);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a4;
  v12[4] = &v29;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in static Set._forceBridgeFromObjectiveC(_:result:);
  *(v13 + 24) = v12;
  v27 = thunk for @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v26 = &block_descriptor_13;
  v14 = _Block_copy(&v23);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v14);
  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    goto LABEL_17;
  }

  v16 = v29;

LABEL_13:
  *a2 = v16;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSValue *_NSGetValueWithMethod(void *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 methodSignatureForSelector:a2];
  v5 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v4];
  [v5 setTarget:a1];
  [v5 setSelector:a2];
  [v5 invoke];
  v6 = [v4 methodReturnLength];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  [v5 getReturnValue:{v11 - v8, v7}];
  return +[NSValue valueWithBytes:objCType:](NSValue, "valueWithBytes:objCType:", v9, [v4 methodReturnType]);
}

void _NSXPCSerializationAddFloat(uint64_t a1, float a2)
{
  _reserveSpace(a1, 1);
  *(*(a1 + 8216) + (*(a1 + 8200))++) = 34;
  _reserveSpace(a1, 4);
  *(*(a1 + 8216) + *(a1 + 8200)) = a2;
  *(a1 + 8200) += 4;
}

NSRect NSIntegralRectWithOptions(NSRect aRect, NSAlignmentOptions opts)
{
  if (opts & (BYTE1(opts) | BYTE2(opts)) | (BYTE2(opts) & BYTE1(opts)))
  {
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = @"The options parameter is invalid. Only one of {in, out, nearest} may be set for a given rect attribute.";
    goto LABEL_21;
  }

  x = aRect.origin.x;
  LODWORD(aRect.origin.x) = opts & 0x151515;
  *&aRect.origin.x = vcnt_s8(*&aRect.origin.x);
  LOWORD(aRect.origin.x) = vaddlv_u8(*&aRect.origin.x);
  if (LODWORD(aRect.origin.x) != 2)
  {
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = @"The options parameter is invalid. There should be specifiers for exactly two out of {minX, maxX, width}.";
    goto LABEL_21;
  }

  LODWORD(aRect.origin.x) = opts & 0x2A2A2A;
  *&aRect.origin.x = vcnt_s8(*&aRect.origin.x);
  LOWORD(aRect.origin.x) = vaddlv_u8(*&aRect.origin.x);
  if (LODWORD(aRect.origin.x) != 2)
  {
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = @"The options parameter is invalid. There should be specifiers for exactly two out of {minY, maxY, height}.";
LABEL_21:
    objc_exception_throw([v32 exceptionWithName:v33 reason:v34 userInfo:{0, aRect.origin.x, aRect.origin.y, aRect.size.width, aRect.size.height}]);
  }

  height = aRect.size.height;
  width = aRect.size.width;
  y = aRect.origin.y;
  if ((opts & 0x8000000000000000) != 0)
  {
    v7 = roundTowardsMinusInfinity;
  }

  else
  {
    v7 = roundTowardsPlusInfinity;
  }

  v8 = opts & 0x40404;
  v9 = opts & 0x10101;
  if ((opts & 0x10101) != 0)
  {
    aRect.origin.x = x;
    integralizeRectAttribute(v9, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AE8], MEMORY[0x1E69E9AF0], roundTowardsPlusInfinity, aRect.origin);
    v11 = v10.n128_f64[0];
    if (v8)
    {
      v10.n128_f64[0] = x + width;
      integralizeRectAttribute(opts & 0x40404, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AF0], MEMORY[0x1E69E9AE8], roundTowardsPlusInfinity, v10);
      v13 = v12.n128_f64[0] - v11;
    }

    else
    {
      v10.n128_f64[0] = width;
      integralizeRectAttribute(opts & 0x101010, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AF0], MEMORY[0x1E69E9AE8], roundTowardsPlusInfinity, v10);
      v13 = v12.n128_f64[0];
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9AF0];
    v15 = MEMORY[0x1E69E9AE8];
    aRect.origin.x = aRect.size.width;
    integralizeRectAttribute(opts & 0x101010, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AF0], MEMORY[0x1E69E9AE8], roundTowardsPlusInfinity, aRect.origin);
    v13 = v16;
    v17.n128_f64[0] = x + width;
    integralizeRectAttribute(opts & 0x40404, (opts & 0x4000000000000000) != 0, v14, v15, roundTowardsPlusInfinity, v17);
    v11 = v12.n128_f64[0] - v13;
  }

  if ((opts & 0x20202) != 0)
  {
    v12.n128_f64[0] = y;
    integralizeRectAttribute(opts & 0x20202, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AE8], MEMORY[0x1E69E9AF0], v7, v12);
    v19 = v18.n128_f64[0];
    if ((opts & 0x80808) != 0)
    {
      v18.n128_f64[0] = y + height;
      integralizeRectAttribute(opts & 0x80808, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AF0], MEMORY[0x1E69E9AE8], v7, v18);
      v21 = v20 - v19;
    }

    else
    {
      v18.n128_f64[0] = height;
      integralizeRectAttribute(opts & 0x202020, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AF0], MEMORY[0x1E69E9AE8], roundTowardsPlusInfinity, v18);
      v21 = v27;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9AF0];
    v23 = MEMORY[0x1E69E9AE8];
    v12.n128_f64[0] = height;
    integralizeRectAttribute(opts & 0x202020, (opts & 0x4000000000000000) != 0, MEMORY[0x1E69E9AF0], MEMORY[0x1E69E9AE8], roundTowardsPlusInfinity, v12);
    v21 = v24;
    v25.n128_f64[0] = y + height;
    integralizeRectAttribute(opts & 0x80808, (opts & 0x4000000000000000) != 0, v22, v23, v7, v25);
    v19 = v26 - v21;
  }

  v28 = fmax(v13, 0.0);
  v29 = fmax(v21, 0.0);
  v30 = v11;
  v31 = v19;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

uint64_t integralizeRectAttribute(uint64_t result, int a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(__n128), __n128 a6)
{
  v6 = 0.0;
  if (!a2)
  {
    v6 = 0.00390625;
  }

  if ((result & 0xFF0000) != 0)
  {
    v7 = floor(a6.n128_f64[0] + a6.n128_f64[0] + 0.5);
    if (vabdd_f64(a6.n128_f64[0] + a6.n128_f64[0], v7) < v6 + v6)
    {
      a6.n128_f64[0] = v7 * 0.5;
    }

    return a5(a6);
  }

  else if (vabdd_f64(a6.n128_f64[0], floor(a6.n128_f64[0] + 0.5)) >= v6)
  {
    if (result)
    {
      return a3();
    }

    else
    {
      return a4();
    }
  }

  return result;
}

void _filterObjectsUsingPredicate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = [a1 count];
  v9 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v9, sel_evaluateWithObject_);
  if (v8 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  v11 = MethodImplementation;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v21 - v14);
  v21[0] = 0;
  if (v8 >= 0x101)
  {
    v15 = _CFCreateArrayStorage();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [a1 getObjects:v15 range:{0, v8, v13, v21[0]}];
  for (i = 0; v8; --v8)
  {
    v18 = *v15;
    if (v11(a2, sel_evaluateWithObject_, *v15))
    {
      *(a3 + 8 * i++) = v18;
    }

    ++v15;
  }

  *a4 = i;
  free(v16);
}

BOOL NSShouldRetainWithZone(id anObject, NSZone *requestedZone)
{
  v3 = malloc_zone_from_ptr(anObject);
  v4 = v3;
  if (requestedZone)
  {
    return v3 == requestedZone;
  }

  v6 = malloc_default_zone();
  result = 1;
  if (v4 && v4 != v6)
  {
    return 0;
  }

  return result;
}

uint64_t _NSSetUsingKeyValueSetter(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[5];
  v3 = a2[6];
  v5 = a2[4];
  if (v3 == 2)
  {
    return (v5)(a1, v4, a3, a2[7], a2[8]);
  }

  if (v3 == 1)
  {
    return v5(a1, v4, a3, a2[7]);
  }

  if (v3)
  {
    return (v5)(a1, v4, a3, a2[7], a2[8], a2[9]);
  }

  if (v4)
  {
    return (v5)(a1, v4);
  }

  return (v5)(a1, 0);
}

void protocol witness for _LocaleProtocol.numberingSystem.getter in conformance _LocaleICU(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.numberingSystem.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t closure #1 in _LocaleICU.numberingSystem.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[20];
  v2 = a1[21];
  v4 = a1[22];
  v5 = a1[23];
  if (v2)
  {
    *a2 = v3;
    a2[1] = v2;
    a2[2] = v4;
    a2[3] = v5;
  }

  else
  {
    v20 = a2;

    Locale.Components.init(identifier:)(v15);
    v7 = v17;
    if (v17)
    {
      v8 = v19;
      v13 = v16;
      v14 = v18;

      outlined destroy of Locale.Components(v15);
      v9 = a1[20];
      v10 = a1[21];

      outlined consume of Locale.LanguageCode?(v9, v10);
      a1[20] = v13;
      a1[21] = v7;
      a1[22] = v14;
      a1[23] = v8;
      v11 = v20;
      *v20 = v13;
      v11[1] = v7;
      v11[2] = v14;
      v11[3] = v8;
    }

    else
    {

      Locale.NumberingSystem.init(localeIdentifier:)(v20);
      outlined destroy of Locale.Components(v15);
    }
  }

  return outlined copy of Locale.LanguageCode?(v3, v2);
}

uint64_t Locale.NumberingSystem.init(localeIdentifier:)@<X0>(uint64_t *a1@<X8>)
{
  String.utf8CString.getter();
  v2 = unumsys_open();

  if (!v2)
  {

    if (one-time initialization token for latn != -1)
    {
      swift_once();
    }

    v4 = static Locale.NumberingSystem.latn;
    v6 = unk_1EA7AE6E0;
    object = *(&xmmword_1EA7AE6E8 + 1);
    countAndFlagsBits = xmmword_1EA7AE6E8;

    goto LABEL_7;
  }

  result = MEMORY[0x1865D32B0](v2);
  if (result)
  {

    v4 = String.init(cString:)();
    v6 = v5;
    v7 = String.lowercased()();
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
LABEL_7:
    result = unumsys_close();
    *a1 = v4;
    a1[1] = v6;
    a1[2] = countAndFlagsBits;
    a1[3] = object;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for _LocaleProtocol.languageCode.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock((v1 + 536));
  partial apply for closure #1 in _LocaleICU.languageCode.getter((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 536));
  return v3;
}

unint64_t _classOverridesSelector(objc_class *a1, const char *a2)
{
  result = class_getMethodImplementation(a1, a2);
  if (result)
  {
    v5 = result;
    Superclass = class_getSuperclass(a1);
    if (Superclass && (v7 = Superclass, v5 == class_getMethodImplementation(Superclass, a2)))
    {
      InstanceMethod = class_getInstanceMethod(a1, a2);
      return InstanceMethod != class_getInstanceMethod(v7, a2);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t cachedObjCTypeInfoHash(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = strlen(v1);

  return MEMORY[0x1EEDB7AB0](v1, v2);
}

id LocaleCache.currentNSLocale()()
{
  v15 = *v0;
  v1 = *(v0 + 2);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    v17 = v15;
    v18 = v1;
    v4 = LocaleCache._currentAndCache.getter();
    v6 = v5;
    v8 = v7;
    v9 = type metadata accessor for _NSSwiftLocale();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____NSSwiftLocale_locale];
    *v11 = v4;
    *(v11 + 1) = v6;
    v12 = String._bridgeToObjectiveCImpl()();
    v16.receiver = v10;
    v16.super_class = v9;
    swift_unknownObjectRetain();
    v3 = objc_msgSendSuper2(&v16, sel_initWithLocaleIdentifier_, v12);
    v13 = swift_unknownObjectRelease();
    if (v8)
    {
      MEMORY[0x1EEE9AC00](v13);
      os_unfair_lock_lock((v1 + 24));
      partial apply for closure #2 in LocaleCache.currentNSLocale()((v1 + 16), &v17);
      os_unfair_lock_unlock((v1 + 24));

      swift_unknownObjectRelease();
      return v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_10Foundation6LocaleV12LanguageCodeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined consume of Locale.LanguageCode?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id _NSGetLongLongValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithLongLong:{(Implementation)(a1, Name)}];

  return v8;
}

id @objc static NSLocale._current.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = LocaleCache.currentNSLocale()();

  return v0;
}

uint64_t Locale.Components.init(identifier:)@<X0>(uint64_t a1@<X8>)
{
  v153 = *MEMORY[0x1E69E9840];
  memset(v152, 0, 96);
  outlined destroy of Locale.Language.Components(v152);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v3 = 0;
  v4 = 0;
  if (Language > 0)
  {
    v151[Language] = 0;
    v3 = MEMORY[0x1865CAEB0](v151);
    v4 = v5;
  }

  LODWORD(v137) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v7 = 0;
  v8 = 0;
  if (Script > 0)
  {
    v150[Script] = 0;
    v7 = MEMORY[0x1865CAEB0](v150);
    v8 = v9;
  }

  LODWORD(v137) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v11 = 0;
  v12 = 0;
  if (Country > 0)
  {
    v149[Country] = 0;
    v11 = MEMORY[0x1865CAEB0](v149, 0);
  }

  v125 = v12;
  if (!v4)
  {
    v3 = 0;
    object = 0;
    countAndFlagsBits = 0;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_11:
    v7 = 0;
    v121 = 0;
    v122 = 0;
    goto LABEL_12;
  }

  v13 = String.lowercased()();
  object = v13._object;
  countAndFlagsBits = v13._countAndFlagsBits;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v137 = v7;
  v138 = v8;

  String.init<A>(_:)();
  v14 = String._capitalized()();
  v121 = v14._object;
  v122 = v14._countAndFlagsBits;

LABEL_12:
  v126 = v3;
  v127 = v4;
  if (v125)
  {
    v15 = String.uppercased()();
    v16 = v15._countAndFlagsBits;
    v17 = v15._object;
  }

  else
  {
    v11 = 0;
    v16 = 0;
    v17 = 0;
  }

  v109 = v16;
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v137 = v126;
  v138 = v127;
  v139 = countAndFlagsBits;
  v140 = object;
  v141 = v7;
  v142 = v8;
  v143 = v122;
  v144 = v121;
  v145 = v11;
  v146 = v125;
  v147 = v16;
  v148 = v17;
  outlined copy of Locale.LanguageCode?(v126, v127);
  v114 = v8;
  outlined copy of Locale.LanguageCode?(v7, v8);
  v115 = v11;
  outlined copy of Locale.LanguageCode?(v11, v125);
  outlined destroy of Locale.Language.Components(&v137);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  LODWORD(v135._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v113 = v17;
  if (Variant > 0 && (v136[Variant] = 0, v19 = MEMORY[0x1865CAEB0](v136), v20))
  {
    v108 = v19;
    v112 = v20;
    v21 = String.lowercased()();
    v110 = v21._object;
    v111 = v21._countAndFlagsBits;
    outlined consume of Locale.LanguageCode?(0, 0);
  }

  else
  {
    v108 = 0;
    v111 = 0;
    v112 = 0;
    v110 = 0;
  }

  String.utf8CString.getter();
  v22 = uloc_openKeywords();

  v116 = v7;
  if (!v22)
  {

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v35 = 0;
    result = 0;
    v36 = 0;
    v37 = 0;
    v132 = 0;
    v128 = 0;
    v130 = 0;
    v49 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v48 = 0;
    v46 = 0;
    v25 = 4;
    v38 = 7;
    v24 = 27;
    goto LABEL_22;
  }

  type metadata accessor for ICU.Enumerator();
  *(swift_allocObject() + 16) = v22;
  LODWORD(v135._countAndFlagsBits) = 0;
  v23 = uenum_next();
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v53 = 27;
  v102 = 7;
  v54 = 4;
  while (v23)
  {
    v119 = v54;
    countAndFlagsBits_low = v53;
    v133 = v52;
    v117 = v47;
    v118 = v48;
    v55 = String.init(cString:)();
    static Locale.legacyKey(forKey:)(v55, v56, &v135._countAndFlagsBits);

    v57 = v135._object;
    if (v135._object)
    {
      v107 = v46;
      v129 = v50;
      v131 = v51;
      v58 = v135._countAndFlagsBits;
      LODWORD(v135._countAndFlagsBits) = 0;
      String.utf8CString.getter();
      String.utf8CString.getter();
      KeywordValue = uloc_getKeywordValue();

      if (SLODWORD(v135._countAndFlagsBits) <= 0 && KeywordValue > 0)
      {
        v134[KeywordValue] = 0;
        v60 = MEMORY[0x1865CAEB0](v134);
        if (!v61)
        {

          v52 = v133;
          v51 = v131;
          goto LABEL_39;
        }

        v62 = v61;
        v101 = v60;
        v51 = v131;
        if (v58 == 0x7261646E656C6163 && v57 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v63._countAndFlagsBits = v101;
          v63._object = v62;
          Calendar.Identifier.init(identifierString:)(v63);
          countAndFlagsBits_low = LOBYTE(v135._countAndFlagsBits);
          goto LABEL_35;
        }

        if (v58 == 0x6F6974616C6C6F63 && v57 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v64 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v106, v105);
          v105 = v62;
          v106 = v101;
          v103 = v64._object;
          v104 = v64._countAndFlagsBits;
          goto LABEL_35;
        }

        if (v58 == 0x79636E6572727563 && v57 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v65 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v100, v99);
          v99 = v62;
          v100 = v101;
          v97 = v65._object;
          v98 = v65._countAndFlagsBits;
          goto LABEL_35;
        }

        if (v58 == 0x737265626D756ELL && v57 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v66 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v96, v95);
          v95 = v62;
          v96 = v101;
          v93 = v66._object;
          v94 = v66._countAndFlagsBits;
          goto LABEL_35;
        }

        if (v58 == 30566 && v57 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v154._countAndFlagsBits = v101;
          v154._object = v62;
          Locale.Weekday.init(rawValue:)(v154, &v135);
          v102 = v135._countAndFlagsBits;
          goto LABEL_35;
        }

        if (v58 == 0x7372756F68 && v57 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v67._countAndFlagsBits = v101;
          v67._object = v62;
          v68 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.Components.init(identifier:), v67);

          if (v68 > 1)
          {
            if (v68 == 2)
            {
              v119 = 2;
            }

            else
            {
              if (v68 != 3)
              {
                goto LABEL_75;
              }

              v119 = 3;
            }
          }

          else if (v68)
          {
            if (v68 == 1)
            {
              v119 = 1;
              goto LABEL_35;
            }

LABEL_75:
            v119 = 4;
          }

          else
          {
            v119 = 0;
          }

LABEL_35:
          v52 = v133;
LABEL_39:
          v50 = v129;
          v46 = v107;
          goto LABEL_25;
        }

        if (v58 == 0x6572757361656DLL && v57 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (v101 == 0x6C61697265706D69 && v62 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (one-time initialization token for uk != -1)
            {
              swift_once();
            }

            v70 = static Locale.MeasurementSystem.uk;
            v69 = *algn_1EA7AFAD8;
            v71 = *(&xmmword_1EA7AFAE0 + 1);
            v72 = xmmword_1EA7AFAE0;

            outlined consume of Locale.LanguageCode?(v133, v131);
            v73 = v69;
            v52 = v70;
            v49 = v71;
            v50 = v72;
            v51 = v73;
          }

          else
          {
            v79 = String.lowercased()();
            v49 = v79._object;
            outlined consume of Locale.LanguageCode?(v133, v131);
            v52 = v101;
            v50 = v79._countAndFlagsBits;
            v51 = v62;
          }

          v46 = v107;
          goto LABEL_25;
        }

        if (v58 == 26482 && v57 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (String.count.getter() >= 3)
          {
            specialized Collection.prefix(_:)(2);

            v74 = Substring.uppercased()();

            v135 = v74;
            v75 = String.init<A>(_:)();
            v77 = v76;
            v78 = String.uppercased()();
            outlined consume of Locale.LanguageCode?(v92, v91);
            v91 = v77;
            v92 = v75;
            v89 = v78._object;
            v90 = v78._countAndFlagsBits;
            goto LABEL_37;
          }
        }

        else
        {
          if (v58 == 25715 && v57 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v80 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v88, v87);
            v87 = v62;
            v88 = v101;
            v86 = v80._countAndFlagsBits;
            v118 = v80._object;
            goto LABEL_37;
          }

          if (v58 == 0x656E6F7A656D6974 && v57 == 0xE800000000000000)
          {

LABEL_93:
            if (one-time initialization token for cache != -1)
            {
              v81 = swift_once();
            }

            v83 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v81);
            os_unfair_lock_lock(v83 + 30);
            partial apply for closure #1 in TimeZoneCache.fixed(_:)(&v135._countAndFlagsBits);
            os_unfair_lock_unlock(v83 + 30);
            v84 = v135._countAndFlagsBits;
            v85 = v135._object;

            if (v84)
            {
              v46 = v85;
            }

            else
            {
              v46 = 0;
            }

            swift_unknownObjectRelease();
            v117 = v84;
            v52 = v133;
            v50 = v129;
            v51 = v131;
            goto LABEL_25;
          }

          v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v82)
          {
            goto LABEL_93;
          }
        }
      }

LABEL_37:
      v52 = v133;
      v50 = v129;
      v51 = v131;
      v46 = v107;
      goto LABEL_25;
    }

    v52 = v133;
LABEL_25:
    LODWORD(v135._countAndFlagsBits) = 0;
    v23 = uenum_next();
    v47 = v117;
    v48 = v118;
    v53 = countAndFlagsBits_low;
    v54 = v119;
    if (SLODWORD(v135._countAndFlagsBits) > 0)
    {
      break;
    }
  }

  v128 = v50;
  v130 = v51;
  v132 = v52;
  v22 = v47;
  v24 = v53;
  v25 = v54;

  v27 = v105;
  v26 = v106;
  v29 = v103;
  v28 = v104;
  v31 = v99;
  v30 = v100;
  v33 = v97;
  v32 = v98;
  result = v95;
  v35 = v96;
  v37 = v93;
  v36 = v94;
  v38 = v102;
  v40 = v91;
  v39 = v92;
  v42 = v89;
  v41 = v90;
  v44 = v87;
  v43 = v88;
  v45 = v86;
LABEL_22:
  *a1 = v126;
  *(a1 + 8) = v127;
  *(a1 + 16) = countAndFlagsBits;
  *(a1 + 24) = object;
  *(a1 + 32) = v116;
  *(a1 + 40) = v114;
  *(a1 + 48) = v122;
  *(a1 + 56) = v121;
  *(a1 + 64) = v115;
  *(a1 + 72) = v125;
  *(a1 + 80) = v109;
  *(a1 + 88) = v113;
  *(a1 + 96) = v24;
  *(a1 + 104) = v26;
  *(a1 + 112) = v27;
  *(a1 + 120) = v28;
  *(a1 + 128) = v29;
  *(a1 + 136) = v30;
  *(a1 + 144) = v31;
  *(a1 + 152) = v32;
  *(a1 + 160) = v33;
  *(a1 + 168) = v35;
  *(a1 + 176) = result;
  *(a1 + 184) = v36;
  *(a1 + 192) = v37;
  *(a1 + 200) = v38;
  *(a1 + 201) = v25;
  *(a1 + 208) = v132;
  *(a1 + 216) = v130;
  *(a1 + 224) = v128;
  *(a1 + 232) = v49;
  *(a1 + 240) = v39;
  *(a1 + 248) = v40;
  *(a1 + 256) = v41;
  *(a1 + 264) = v42;
  *(a1 + 272) = v43;
  *(a1 + 280) = v44;
  *(a1 + 288) = v45;
  *(a1 + 296) = v48;
  *(a1 + 304) = v22;
  *(a1 + 312) = v46;
  *(a1 + 320) = v108;
  *(a1 + 328) = v112;
  *(a1 + 336) = v111;
  *(a1 + 344) = v110;
  return result;
}

uint64_t outlined copy of Locale.LanguageCode?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *closure #1 in _LocaleICU.languageCode.getter@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = result[1];
  if (!v2)
  {
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if (v2 != 1)
  {
    *a2 = *result;
    a2[1] = v2;
  }

  v34 = result;
  memset(v47, 0, sizeof(v47));
  outlined destroy of Locale.Language.Components(v47);
  LODWORD(v43[0]) = 0;
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v4 = 0;
  v5 = 0;
  if (Language > 0)
  {
    v46[Language] = 0;
    v4 = MEMORY[0x1865CAEB0](v46);
    v5 = v6;
  }

  LODWORD(v43[0]) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v8 = 0;
  v9 = 0;
  if (Script > 0)
  {
    v45[Script] = 0;
    v8 = MEMORY[0x1865CAEB0](v45);
    v9 = v10;
  }

  LODWORD(v43[0]) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v12 = 0;
  v13 = 0;
  if (Country > 0)
  {
    v44[Country] = 0;
    v12 = MEMORY[0x1865CAEB0](v44);
    v13 = v14;
  }

  if (v5)
  {
    v33 = v4;
    v15 = String.lowercased()();
    object = v15._object;
    countAndFlagsBits = v15._countAndFlagsBits;
    v16 = v5;
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_16:
    v8 = 0;
    v18 = 0;
    v19 = 0;
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  countAndFlagsBits = 0;
  v33 = 0;
  object = 0;
  v16 = 0;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  *&v43[0] = v8;
  *(&v43[0] + 1) = v9;

  String.init<A>(_:)();
  v17 = String._capitalized()();
  v18 = v17._countAndFlagsBits;
  v19 = v17._object;

  if (v13)
  {
LABEL_12:
    v20 = String.uppercased()();
    v21 = v20._countAndFlagsBits;
    v22 = v20._object;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
  v21 = 0;
  v22 = 0;
LABEL_18:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  *&v37 = v33;
  *(&v37 + 1) = v16;
  *&v38 = countAndFlagsBits;
  *(&v38 + 1) = object;
  *&v39 = v8;
  *(&v39 + 1) = v9;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  *&v41 = v12;
  *(&v41 + 1) = v13;
  *&v42 = v21;
  *(&v42 + 1) = v22;
  v23 = *(v34 + 3);
  v43[2] = *(v34 + 2);
  v43[3] = v23;
  v24 = *(v34 + 5);
  v43[4] = *(v34 + 4);
  v43[5] = v24;
  v25 = *(v34 + 1);
  v43[0] = *v34;
  v43[1] = v25;
  v26 = v42;
  *(v34 + 4) = v41;
  *(v34 + 5) = v26;
  v27 = v40;
  *(v34 + 2) = v39;
  *(v34 + 3) = v27;
  v28 = v38;
  *v34 = v37;
  *(v34 + 1) = v28;
  outlined init with copy of Locale.Language.Components(&v37, v36);
  outlined destroy of TermOfAddress?(v43, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
  v29 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v30 = v37;

    outlined destroy of Locale.Language.Components(&v37);

    result = outlined consume of Locale.LanguageCode?(v30, v29);
    *a2 = v30;
    a2[1] = v29;
  }

  else
  {
    result = outlined destroy of Locale.Language.Components(&v37);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

NSMapEnumerator *__cdecl NSEnumerateMapTable(NSMapEnumerator *__return_ptr retstr, NSMapTable *table)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "NSMapEnumerator NSEnumerateMapTable(NSMapTable * _Nonnull)");
  }

  v4 = [(NSMapTable *)table count];
  v5 = v4;
  retstr->_pi = v4;
  retstr->_si = 0;
  if (v4)
  {
    v6 = malloc_type_calloc(v4, 0x10uLL, 0x80040B8603338uLL);
  }

  else
  {
    v6 = 0;
  }

  retstr->_bs = v6;
  result = [(NSMapTable *)table getKeys:v6 values:&v6[8 * v5]];
  retstr->_pi = result;
  return result;
}

uint64_t __NSIndexSetEnumerate(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = a2;
  if (a1 < 0)
  {
    v10 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v10 = 0;
    }

    v11 = v10 ^ a1;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v11 & 7) == 0)
    {
      v12 = 0xFFFFFFFFFFFFFLL;
    }

    v13 = v12 & (v11 >> 3);
    goto LABEL_16;
  }

  if ((*(a1 + 8) & 2) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_22;
    }

    v19 = MEMORY[0xFFFFFC034];
    if (MEMORY[0xFFFFFC034] < 2u)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFFFELL;
    }

    if ((v8 & 1) == 0)
    {
LABEL_22:
      _CFAutoreleasePoolPush();
      v20 = *(a1 + 8);
      if ((v20 & 2) != 0)
      {
        v21 = (a1 + 16);
        v22 = (*(a1 + 8) & 1) == 0;
      }

      else
      {
        if (v20)
        {
          v31 = *(a1 + 24) != 0;
          goto LABEL_80;
        }

        v21 = (*(a1 + 16) + 8);
        v22 = 1;
      }

      if (*v21)
      {
        if (v22)
        {
          v30 = *(a1 + 16);
          v31 = *(v30 + 8);
          goto LABEL_49;
        }

        v31 = 1;
      }

      else
      {
        v31 = 0;
        if (v22)
        {
          v30 = *(a1 + 16);
LABEL_49:
          v32 = v30 + 16 * *(v30 + 24) + 64;
          if ((v8 & 2) != 0)
          {
            goto LABEL_50;
          }

          goto LABEL_81;
        }
      }

LABEL_80:
      v32 = a1 + 16;
      if ((v8 & 2) != 0)
      {
LABEL_50:
        LOBYTE(v58) = 0;
        v33 = a3 + a4;
        v34 = [a1 _indexOfRangeBeforeOrContainingIndex:a3 + a4 - 1];
        if (v34 <= 0x7FFFFFFFFFFFFFFELL)
        {
          for (i = v34; ; --i)
          {
            v36 = (v32 + 16 * i);
            v38 = *v36;
            v37 = v36[1];
            v39 = v37 + v38;
            v40 = v37 + v38 >= v33 ? v33 : v37 + v38;
            if (a3 > v38 || v38 >= v33)
            {
              if (v38 > a3 || a3 >= v39)
              {
                v38 = 0;
                v43 = 0;
              }

              else
              {
                v43 = v40 - a3;
                v38 = a3;
              }
            }

            else
            {
              v43 = v40 - v38;
            }

            if (!v43)
            {
              break;
            }

            if ((v8 & 0x4000000000000000) != 0)
            {
              __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
              if (i < 1)
              {
                break;
              }
            }

            else
            {
              v14 = v38 + v43;
              while (v38 < v14)
              {
                --v14;
                if ((v8 & 0x2000000000000000) != 0)
                {
                  if (__NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5))
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
                }
              }

              if (i < 1)
              {
                break;
              }
            }
          }
        }

LABEL_110:
        v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_111:
        if ((*(a1 + 8) & 1) == 0)
        {
          v54 = pthread_self();
          atomic_compare_exchange_strong((*(a1 + 16) + 56), &v54, 0);
        }

        _CFAutoreleasePoolPop();
        return v14;
      }

LABEL_81:
      LOBYTE(v58) = 0;
      v44 = [a1 _indexOfRangeAfterOrContainingIndex:a3];
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v45 = v44;
        if (v44 < v31)
        {
          v46 = a3 + a4;
          do
          {
            v47 = (v32 + 16 * v45);
            v14 = *v47;
            v48 = v47[1];
            v49 = v48 + v14;
            if (v48 + v14 >= v46)
            {
              v50 = v46;
            }

            else
            {
              v50 = v48 + v14;
            }

            if (a3 > v14 || v14 >= v46)
            {
              if (v14 > a3 || a3 >= v49)
              {
                goto LABEL_110;
              }

              v53 = v50 - a3;
              v14 = a3;
              if (v50 == a3)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v53 = v50 - v14;
              if (v50 == v14)
              {
                goto LABEL_110;
              }
            }

            if ((v8 & 0x4000000000000000) != 0)
            {
              __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
            }

            else if (v14 < v14 + v53)
            {
              do
              {
                if ((v8 & 0x2000000000000000) != 0)
                {
                  if (__NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5))
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
                }

                ++v14;
                --v53;
              }

              while (v53);
            }

            ++v45;
          }

          while (v45 < v31);
        }
      }

      goto LABEL_110;
    }

    v16 = a3 + a4;
    if ((v8 & 0x4000000000000000) != 0)
    {
      v17 = [a1 _indexOfRangeAfterOrContainingIndex:?];
      v18 = [a1 _indexOfRangeBeforeOrContainingIndex:v16 - 1];
    }

    else
    {
      v17 = [a1 indexGreaterThanOrEqualToIndex:?];
      v18 = [a1 indexLessThanIndex:a3 + a4];
    }

    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (v17 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = v18 - v17 + 1;
      v24 = 32;
      v25 = 16;
      v26 = 4;
      if (v23 < 4 * v19)
      {
        v26 = 1;
      }

      if (v23 < 16 * v19)
      {
        v25 = v26;
      }

      if (v23 < 32 * v19)
      {
        v24 = v25;
      }

      if (48 * v19 > v23)
      {
        v27 = v24;
      }

      else
      {
        v27 = 48;
      }

      if (v23 < v19 << 6)
      {
        v28 = v27;
      }

      else
      {
        v28 = 64;
      }

      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v61 = 0x7FFFFFFFFFFFFFFFLL;
      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v57 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ____NSIndexSetEnumerate_block_invoke;
      block[3] = &unk_1E69F4048;
      block[8] = v17;
      block[9] = v28;
      block[10] = v18;
      block[11] = v8;
      block[12] = a3;
      block[13] = a4;
      block[4] = a1;
      block[5] = a5;
      block[6] = v56;
      block[7] = &v58;
      dispatch_apply((v28 + v18 - v17) / v28, 0, block);
      if ((*(a1 + 8) & 1) == 0)
      {
        v29 = pthread_self();
        atomic_compare_exchange_strong((*(a1 + 16) + 56), &v29, 0);
      }

      v14 = atomic_load(v59 + 3);
      _Block_object_dispose(v56, 8);
      _Block_object_dispose(&v58, 8);
    }

    return v14;
  }

  v13 = *(a1 + 16);
LABEL_16:

  return __NSIndexSetEnumerateBitfield(v13, a2, a3, a4, a5);
}

void sub_18077B804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void _encodeObject(uint64_t a1, const void *a2, void *value, int a4)
{
  v5 = value;
  v89 = *MEMORY[0x1E69E9840];
  valuea[0] = value;
  v8 = *(a1 + 120);
  if (v8)
  {
    v9 = CFSetContainsValue(v8, value);
    v10 = v9 != 0;
    v11 = *(a1 + 56);
    if (!v11)
    {
      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v11 = *(a1 + 56);
    if (!v11)
    {
LABEL_9:
      v13 = [v5 replacementObjectForKeyedArchiver:a1];
      if (v13 && *(a1 + 24) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v13 = [*(a1 + 24) archiver:a1 willEncodeObject:v13];
      }

      [a1 replaceObject:v5 withObject:v13];
      v5 = v13;
      goto LABEL_16;
    }

    v10 = 0;
  }

  v12 = CFDictionaryContainsKey(v11, v5);
  if (!v10 && !v12)
  {
    goto LABEL_9;
  }

  if (v12)
  {
    CFDictionaryGetValueIfPresent(*(a1 + 56), v5, valuea);
    v5 = valuea[0];
  }

LABEL_16:
  v14 = [v5 classForKeyedArchiver];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = objc_opt_class();
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  if ([a1 requiresSecureCoding])
  {
    [a1 validateClassSupportsSecureCoding:v15];
  }

LABEL_21:
  if (!v5)
  {
    v17 = 0;
LABEL_30:
    v20 = __NSKeyedArchiverUIDCreateCached(*MEMORY[0x1E695E480], v17, a1);
    addValueToTopContainerE(a1, a2, v20);
    CFRelease(v20);
    return;
  }

  valuea[0] = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 48), v5, valuea);
  v17 = valuea[0];
  if (ValueIfPresent)
  {
    v18 = LODWORD(valuea[0]) == -1;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    goto LABEL_30;
  }

  valuea[0] = 0;
  if (CFDictionaryGetValueIfPresent(*(a1 + 72), v5, valuea))
  {
    CFDictionaryRemoveValue(*(a1 + 72), v5);
    v19 = valuea[0];
  }

  else
  {
    [*(a1 + 40) addObject:@"$null"];
    v19 = [*(a1 + 40) count] - 1;
  }

  v21 = v19;
  if (a4)
  {
    CFDictionaryAddValue(*(a1 + 72), v5, v19);
  }

  else
  {
    CFDictionarySetValue(*(a1 + 48), v5, v19);
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = __NSKeyedArchiverUIDCreateCached(*MEMORY[0x1E695E480], v21, a1);
  addValueToTopContainerE(a1, a2, v23);
  CFRelease(v23);
  if ((a4 & 1) == 0)
  {
    v24 = v15;
    if (*class_getName(v15) == 37)
    {
      Name = class_getName(v15);
      v24 = objc_lookUpClass(Name + 1);
    }

    if (v24)
    {
      v26 = [a1 classNameForClass:v24];
      if (v26 || (v26 = [objc_opt_class() classNameForClass:v24]) != 0)
      {
        v24 = NSClassFromString(v26);
      }
    }

    _NSCoderCheckPotentiallyMangledClassNameAndWarn(v24, 1);
    if (v24 == __NSStringClass)
    {
      if ([v5 length] != 5 || objc_msgSend(v5, "compare:", @"$null"))
      {
        goto LABEL_49;
      }
    }

    else if (v24 == NSNumber || v24 == MEMORY[0x1E695DEF0])
    {
LABEL_49:
      CFArraySetValueAtIndex(*(a1 + 40), v21, v5);
      goto LABEL_123;
    }

    v27 = *(a1 + 88);
    *(a1 + 88) = 0;
    v28 = objc_opt_new();
    _CFDictionarySetCapacity();
    [*(a1 + 32) addObject:v28];
    ++*(a1 + 112);

    v29 = atomic_load((a1 + 16));
    if (v29 != *(a1 + 128))
    {
      goto LABEL_126;
    }

    v30 = atomic_load((a1 + 16));
    atomic_store(v30 & 0xFFFFFFFFFFFFFFFELL, (a1 + 16));
    v31 = atomic_load((a1 + 16));
    *(a1 + 128) = v31;
    v32 = [*(a1 + 32) count] - 1;
    if (v32 < 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = [*(a1 + 32) objectAtIndexedSubscript:v32];
    }

    [v5 encodeWithCoder:a1];
    v34 = [*(a1 + 32) count] - 1;
    if (v34 < 0)
    {
      v35 = 0;
    }

    else
    {
      v35 = [*(a1 + 32) objectAtIndexedSubscript:v34];
    }

    if (v33 != v35)
    {
LABEL_115:
      CFArraySetValueAtIndex(*(a1 + 40), v21, v35);
      v73 = [*(a1 + 32) count];
      [*(a1 + 32) removeObjectAtIndex:v73 - 1];
      if (v73 - 1 < 1)
      {
LABEL_122:
        *(a1 + 88) = v27;
LABEL_123:
        if (*(a1 + 24))
        {
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 24) archiver:a1 didEncodeObject:v5];
          }
        }

        return;
      }

      v74 = CFGetTypeID([*(a1 + 32) objectAtIndexedSubscript:v73 - 2]);
      v75 = atomic_load((a1 + 16));
      v76 = *(a1 + 128);
      if (v74 == 19)
      {
        if (v75 == v76)
        {
          v77 = atomic_load((a1 + 16));
          v78 = v77 | 1;
LABEL_121:
          atomic_store(v78, (a1 + 16));
          v80 = atomic_load((a1 + 16));
          *(a1 + 128) = v80;
          goto LABEL_122;
        }
      }

      else if (v75 == v76)
      {
        v79 = atomic_load((a1 + 16));
        v78 = v79 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_121;
      }

LABEL_126:
      __NSPoisoned();
    }

    if (*class_getName(v15) == 37)
    {
      v36 = class_getName(v15);
      v15 = objc_lookUpClass(v36 + 1);
    }

    v83 = v27;
    if (v15)
    {
      v37 = [a1 classNameForClass:v15];
      if (v37 || (v37 = [objc_opt_class() classNameForClass:v15]) != 0)
      {
        v38 = v37;
        v15 = NSClassFromString(v37);
        v39 = v38;
        if (!v15)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v39 = 0;
      }

      v81 = 0;
      v44 = v15;
LABEL_77:
      _NSCoderCheckPotentiallyMangledClassNameAndWarn(v15, 1);
      v45 = 0;
      goto LABEL_78;
    }

    v39 = 0;
LABEL_66:
    v40 = *(a1 + 80);
    if (!v40)
    {
      goto LABEL_71;
    }

    v41 = CFDictionaryGetValue(v40, v39);
    if (v41)
    {
      v15 = v41;
      Class = object_getClass(v41);
      isMetaClass = class_isMetaClass(Class);
      v44 = 0;
      v45 = 1;
      v81 = 1;
      if (!isMetaClass)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (!*(a1 + 80))
    {
LABEL_71:
      *(a1 + 80) = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    }

    v15 = objc_opt_new();
    CFDictionarySetValue(*(a1 + 80), v39, v15);

    if (!v15)
    {
      v46 = 0;
LABEL_80:
      v47 = __NSKeyedArchiverUIDCreateCached(v22, v46, a1);
      addValueToTopContainerE(a1, @"$class", v47);
      CFRelease(v47);

      v27 = v83;
      goto LABEL_115;
    }

    v44 = 0;
    v45 = 1;
    v81 = 1;
LABEL_78:
    v82 = v45;
    valuea[0] = 0;
    if (!CFDictionaryGetValueIfPresent(*(a1 + 48), v15, valuea) || (v46 = valuea[0], LODWORD(valuea[0]) == -1))
    {
      valuea[0] = 0;
      if (CFDictionaryGetValueIfPresent(*(a1 + 72), v15, valuea))
      {
        CFDictionaryRemoveValue(*(a1 + 72), v15);
        v48 = valuea[0];
      }

      else
      {
        [*(a1 + 40) addObject:@"$null"];
        v48 = [*(a1 + 40) count] - 1;
      }

      CFDictionarySetValue(*(a1 + 48), v15, v48);
      v49 = __NSKeyedArchiverUIDCreateCached(v22, v48, a1);
      addValueToTopContainerE(a1, @"$class", v49);
      CFRelease(v49);
      v50 = objc_opt_new();
      _CFDictionarySetCapacity();
      [*(a1 + 32) addObject:v50];
      ++*(a1 + 112);

      v51 = atomic_load((a1 + 16));
      if (v51 != *(a1 + 128))
      {
        goto LABEL_126;
      }

      v52 = atomic_load((a1 + 16));
      atomic_store(v52 & 0xFFFFFFFFFFFFFFFELL, (a1 + 16));
      v53 = atomic_load((a1 + 16));
      *(a1 + 128) = v53;
      if (!v39)
      {
        v39 = NSCopyStringFromClass(v15);
      }

      addValueToTopContainerE(a1, @"$classname", v39);

      if ((v81 & 1) == 0)
      {
        for (i = objc_opt_new(); v44; v44 = [(objc_class *)v44 superclass])
        {
          v55 = NSCopyStringFromClass(v44);
          CFArrayAppendValue(i, v55);
        }

        addValueToTopContainerE(a1, @"$classes", i);
      }

      if (v82)
      {
        v56 = 0;
      }

      else
      {
        v56 = [(objc_class *)v15 classFallbacksForKeyedArchiver];
      }

      v27 = v83;
      if ([v56 count])
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v57 = [v56 countByEnumeratingWithState:&v85 objects:valuea count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v86;
          do
          {
            for (j = 0; j != v58; ++j)
            {
              if (*v86 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = NSClassFromString(*(*(&v85 + 1) + 8 * j));
              if (v61)
              {
                _NSCoderCheckPotentiallyMangledClassNameAndWarn(v61, 1);
              }
            }

            v58 = [v56 countByEnumeratingWithState:&v85 objects:valuea count:16];
          }

          while (v58);
        }

        addValueToTopContainerE(a1, @"$classhints", v56);
        v27 = v83;
      }

      v62 = *(a1 + 40);
      v63 = [*(a1 + 32) count] - 1;
      if (v63 < 0)
      {
        v64 = 0;
      }

      else
      {
        v64 = [*(a1 + 32) objectAtIndexedSubscript:v63];
      }

      CFArraySetValueAtIndex(v62, v48, v64);
      v65 = [*(a1 + 32) count];
      [*(a1 + 32) removeObjectAtIndex:v65 - 1];
      if (v65 - 1 >= 1)
      {
        v66 = CFGetTypeID([*(a1 + 32) objectAtIndexedSubscript:v65 - 2]);
        v67 = atomic_load((a1 + 16));
        v68 = *(a1 + 128);
        if (v66 == 19)
        {
          if (v67 != v68)
          {
            goto LABEL_126;
          }

          v69 = atomic_load((a1 + 16));
          v70 = v69 | 1;
        }

        else
        {
          if (v67 != v68)
          {
            goto LABEL_126;
          }

          v71 = atomic_load((a1 + 16));
          v70 = v71 & 0xFFFFFFFFFFFFFFFELL;
        }

        atomic_store(v70, (a1 + 16));
        v72 = atomic_load((a1 + 16));
        *(a1 + 128) = v72;
      }

      goto LABEL_115;
    }

    goto LABEL_80;
  }
}

void addValueToTopContainerE(uint64_t a1, const void *a2, const void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) count] - 1;
  if (v6 < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
  }

  v8 = atomic_load((a1 + 16));
  if (v8 != *(a1 + 128))
  {
    __NSPoisoned();
  }

  v9 = atomic_load((a1 + 16));
  if (v9)
  {
    CFArrayAppendValue(v7, a3);
    ++*(a1 + 112);
  }

  else
  {
    Count = CFDictionaryGetCount(v7);
    CFDictionarySetValue(v7, a2, a3);
    *(a1 + 112) += 2;
    if (Count == CFDictionaryGetCount(v7))
    {
      v11 = _NSOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = a2;
        _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "*** NSKeyedArchiver warning: replacing existing value for key '%@'; probable duplication of encoding keys in class hierarchy", &v12, 0xCu);
      }
    }
  }
}

CFTypeRef __NSKeyedArchiverUIDCreateCached(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 96);
  v6 = *(a3 + 104);
  if (v5)
  {
    v7 = v6 > a2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    LODWORD(v8) = 2 * v6;
    if (!v6)
    {
      LODWORD(v8) = 256;
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v8;
    }

    *(a3 + 104) = v8;
    v9 = MEMORY[0x1865CFE40](*MEMORY[0x1E695E4A8]);
    *(a3 + 96) = v9;
    bzero((v9 + 8 * v6), 8 * (*(a3 + 104) - v6));
    v5 = *(a3 + 96);
  }

  v10 = *(v5 + 8 * a2);
  if (!v10)
  {
    v10 = _CFKeyedArchiverUIDCreate();
    *(*(a3 + 96) + 8 * a2) = v10;
  }

  return CFRetain(v10);
}

uint64_t NSCopyStringFromClass(objc_class *a1)
{
  if (!a1)
  {
    return 0;
  }

  Name = class_getName(a1);
  if (!Name)
  {
    return 0;
  }

  v2 = Name;
  v3 = [NSString alloc];
  v4 = strlen(v2);

  return [(NSString *)v3 initWithBytesNoCopy:v2 length:v4 encoding:4 freeWhenDone:0];
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t _NSLogv()
{
  _CFAutoreleasePoolPush();
  _CFLogvEx3();

  return _CFAutoreleasePoolPop();
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      a1 = *(a1 + 16);
      if (a1 != *(v3 + 24))
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

  if (v4)
  {
    a1 = a1;
    if (v3 != v3 >> 32)
    {
      goto LABEL_7;
    }

LABEL_9:
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 8);
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  a1 = 0;
LABEL_7:
  v5 = Data._Representation.subscript.getter(a1, v3, a2);
  v6 = 0;
  return v5 | (v6 << 8);
}

void **_qfqp2_performParsing(void *a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if ((_qfqp2_InitializedGlobals & 1) == 0)
  {
    _qfqp2_InitializedGlobalData();
  }

  if (!a1)
  {
    return 0;
  }

  v6 = [a1 UTF8String];
  v7 = strlen(v6);
  result = _qfqp2_scan_bytes(v6, v7);
  v71 = result;
  if (result)
  {
    v9 = 0;
    v10 = 0u;
    v74[0] = 0;
    v74[1] = a1;
    v70 = a1;
    v11 = v76;
    v12 = 200;
    v74[2] = a2;
    v74[3] = a3;
    v74[4] = 0;
    v75 = 0;
    __src = v76;
    v13 = v77;
    v14 = v77;
    v15 = -2;
    while (1)
    {
      *v13 = v10;
      if (&v14[2 * v12 - 2] <= v13)
      {
        if (v12 >> 4 > 0x270 || ((2 * v12) >= 0x2710 ? (v12 = 10000) : (v12 *= 2), v16 = malloc_type_malloc(10 * v12 + 7, 0x1000040BDFB0063uLL), (v17 = v16) == 0))
        {
          v64 = 2;
          goto LABEL_143;
        }

        v18 = ((v13 - v14) >> 1) + 1;
        memcpy(v16, v14, 2 * v18);
        memcpy(&v17[(2 * v12 + 7) & 0x7FFFFFFFFFFFFFF8], __src, 8 * v18);
        if (v14 != v77)
        {
          free(v14);
        }

        v13 = &v17[2 * v18 - 2];
        v11 = &v17[8 * v18 - 8 + ((2 * v12 + 7) & 0x7FFFFFFFFFFFFFF8)];
        if (v12 <= v18)
        {
          v64 = 1;
          v14 = v17;
          goto LABEL_143;
        }

        __src = &v17[(2 * v12 + 7) & 0x7FFFFFFFFFFFFFF8];
        v14 = v17;
      }

      v19 = yypact[v10];
      if (v19 == -58)
      {
        break;
      }

      if (v15 == -2)
      {
        v15 = _qfqp2lex(&v75);
      }

      if (v15 < 1)
      {
        v9 = 0;
        v15 = 0u;
      }

      else
      {
        v9 = v15 > 0x153 ? 2 : yytranslate[v15];
      }

      v20 = v9 + v19;
      if ((v9 + v19) > 0x32A || v9 != yycheck[v20])
      {
        break;
      }

      v21 = yytable[v20];
      if (v21 <= 0)
      {
        if (!yytable[v20])
        {
LABEL_139:
          while (v13 != v14)
          {
            yydestruct(yystos[v10], v11--);
            v65 = *(v13 - 1);
            v13 -= 2;
            v10 = v65;
          }

          v64 = 1;
LABEL_143:
          if (v15 != -2 && v15)
          {
            yydestruct(v9, &v75);
          }

          for (; v13 != v14; v13 -= 2)
          {
            yydestruct(yystos[*v13], v11--);
          }

          if (v14 != v77)
          {
            free(v14);
          }

          if (v64 == 2)
          {
            v67 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"The predicate parser overflowed its buffer." userInfo:0];
            goto LABEL_154;
          }

          if (v64 == 1)
          {
            v66 = [NSString stringWithFormat:@"Unable to parse the format string %@", v70];
            v67 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v66 userInfo:0];
LABEL_154:
            v68 = v67;
            _qfqp2_delete_buffer(v71);
            result = v74[0];
            if (v68)
            {

              return v68;
            }
          }

          else
          {
            _qfqp2_delete_buffer(v71);
            return v74[0];
          }

          return result;
        }

        v22 = -v21;
        goto LABEL_33;
      }

      if (v20 == 71)
      {
        v64 = 0;
        goto LABEL_143;
      }

      if (v15)
      {
        v15 = -2;
      }

      else
      {
        v15 = 0;
      }

      *(v11++ + 1) = v75;
LABEL_120:
      v13 += 2;
      v10 = v21;
    }

    v22 = yydefact[v10];
    if (!yydefact[v10])
    {
      goto LABEL_139;
    }

LABEL_33:
    v23 = yyr2[v22];
    switch(v22)
    {
      case 2u:
      case 3u:
        SetExpression = *v11;
        v74[0] = *v11;
        break;
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x54u:
      case 0x55u:
      case 0x5Du:
      case 0x6Bu:
        SetExpression = *v11;
        break;
      case 9u:
        v37 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v37];

        goto LABEL_114;
      case 0xAu:
        SetExpression = objc_alloc_init(NSTruePredicate);
        break;
      case 0xBu:
        SetExpression = objc_alloc_init(NSFalsePredicate);
        break;
      case 0xCu:
      case 0x2Eu:
        SetExpression = *(v11 - 1);
        break;
      case 0x10u:
        FunctionExpression = buildANDPredicate(*(v11 - 2), *v11);

        goto LABEL_114;
      case 0x11u:
        FunctionExpression = buildORPredicate(*(v11 - 2), *v11);

        goto LABEL_114;
      case 0x12u:
        v41 = invertPredicate(*v11);
        goto LABEL_113;
      case 0x16u:
        FunctionExpression = [[NSComparisonPredicate alloc] initWithPredicateOperator:*(v11 - 1) leftExpression:*(v11 - 2) rightExpression:*v11];

        goto LABEL_114;
      case 0x17u:
        v56 = NSStringForLexedIdentifier(*(v11 - 2));
        v57 = CopyBasicOperatorAddOptions(*(v11 - 4), v56);
        FunctionExpression = [[NSComparisonPredicate alloc] initWithPredicateOperator:v57 leftExpression:*(v11 - 5) rightExpression:*v11];

        goto LABEL_114;
      case 0x18u:
        v40 = objc_alloc_init(NSAnyKeyExpression);
        FunctionExpression = [[NSComparisonPredicate alloc] initWithPredicateOperator:*(v11 - 1) leftExpression:v40 rightExpression:*v11];

        goto LABEL_114;
      case 0x19u:
        v42 = NSStringForLexedIdentifier(*(v11 - 2));
        v43 = PredicateOperatorForCustomSelector(v42);
        FunctionExpression = [[NSComparisonPredicate alloc] initWithPredicateOperator:v43 leftExpression:*(v11 - 3) rightExpression:*v11];

        goto LABEL_114;
      case 0x1Au:
        v69 = NSStringForLexedIdentifier(*(v11 - 2));
        v45 = PredicateOperatorForCustomSelector(v69);
        v46 = objc_alloc_init(NSAnyKeyExpression);
        FunctionExpression = [[NSComparisonPredicate alloc] initWithPredicateOperator:v45 leftExpression:v46 rightExpression:*v11];

        goto LABEL_114;
      case 0x1Eu:
        FunctionExpression = HandleStringAggregatePredicate(*(v11 - 2), *(v11 - 1), 0, *v11);

        goto LABEL_114;
      case 0x1Fu:
        v62 = objc_alloc_init(NSAnyKeyExpression);
        FunctionExpression = HandleStringAggregatePredicate(v62, *(v11 - 1), 0, *v11);

        goto LABEL_114;
      case 0x20u:
        v55 = NSStringForLexedIdentifier(*(v11 - 2));
        FunctionExpression = HandleStringAggregatePredicate(*(v11 - 5), *(v11 - 4), v55, *v11);

        goto LABEL_114;
      case 0x21u:
        v38 = NSStringForLexedIdentifier(*(v11 - 2));
        v39 = objc_alloc_init(NSAnyKeyExpression);
        FunctionExpression = HandleStringAggregatePredicate(v39, *(v11 - 4), v38, *v11);

        goto LABEL_114;
      case 0x22u:
        SetExpression = 7;
        break;
      case 0x23u:
        SetExpression = 6;
        break;
      case 0x24u:
        SetExpression = 10;
        break;
      case 0x25u:
        SetExpression = 99;
        break;
      case 0x26u:
        SetExpression = 8;
        break;
      case 0x27u:
        SetExpression = 9;
        break;
      case 0x28u:
        SetExpression = 1000;
        break;
      case 0x29u:
        FunctionExpression = HandleBetweenPredicate(*(v11 - 2), *v11);

        goto LABEL_114;
      case 0x2Au:
      case 0x2Bu:
        SetExpression = setOperatorModifier(*v11, 2);
        break;
      case 0x2Cu:
        SetExpression = setOperatorModifier(*v11, 1);
        break;
      case 0x2Du:
        v47 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{setOperatorModifier(*v11, 2), 0}];
        FunctionExpression = [[NSCompoundPredicate alloc] initWithType:0 subpredicates:v47];

        goto LABEL_114;
      case 0x3Bu:
        SetExpression = PredicateOperatorForName(4, 0);
        break;
      case 0x3Cu:
        SetExpression = PredicateOperatorForName(5, 0);
        break;
      case 0x3Du:
        SetExpression = PredicateOperatorForName(0, 0);
        break;
      case 0x3Eu:
        SetExpression = PredicateOperatorForName(2, 0);
        break;
      case 0x3Fu:
        SetExpression = PredicateOperatorForName(1, 0);
        break;
      case 0x40u:
        SetExpression = PredicateOperatorForName(3, 0);
        break;
      case 0x41u:
        SetExpression = [[NSUTIPredicateOperator alloc] initForVariant:0];
        break;
      case 0x42u:
        SetExpression = [[NSUTIPredicateOperator alloc] initForVariant:1];
        break;
      case 0x48u:
      case 0x49u:
        v41 = [[NSConstantValueExpression alloc] initWithObject:*v11];
        goto LABEL_113;
      case 0x4Au:
        SetExpression = [[NSConstantValueExpression alloc] initWithObject:0];
        break;
      case 0x4Bu:
        v31 = [NSConstantValueExpression alloc];
        SetExpression = [(NSConstantValueExpression *)v31 initWithObject:_MergedGlobals_136];
        break;
      case 0x4Cu:
        v63 = [NSConstantValueExpression alloc];
        SetExpression = [(NSConstantValueExpression *)v63 initWithObject:qword_1ED43FD80];
        break;
      case 0x4Du:
        SetExpression = objc_alloc_init(NSSelfExpression);
        break;
      case 0x4Eu:
        SetExpression = [[NSSymbolicExpression alloc] initWithString:@"FIRST"];
        break;
      case 0x4Fu:
        SetExpression = [[NSSymbolicExpression alloc] initWithString:@"LAST"];
        break;
      case 0x50u:
        SetExpression = [[NSSymbolicExpression alloc] initWithString:@"SIZE"];
        break;
      case 0x51u:
        UserFunctionExpression = [[NSAggregateExpression alloc] initWithCollection:*(v11 - 1)];
        goto LABEL_129;
      case 0x52u:
      case 0x53u:
      case 0x67u:
        SetExpression = NSStringForLexedIdentifier(*v11);
        break;
      case 0x56u:
        v48 = *v11;
        v49 = [NSNumber alloc];
        if (v48 > 0x7FFFFFFF)
        {
          SetExpression = [(NSNumber *)v49 initWithLongLong:v48];
        }

        else
        {
          SetExpression = [(NSNumber *)v49 initWithInt:v48];
        }

        break;
      case 0x57u:
        SetExpression = [[NSNumber alloc] initWithDouble:*v11];
        break;
      case 0x58u:
        v30 = NSStringForLexedIdentifier(*v11);
        KVCExpression = [[NSVariableExpression alloc] initWithObject:v30];
        goto LABEL_132;
      case 0x59u:
        v30 = NSStringForLexedIdentifier(*v11);
        KVCExpression = ResolvePredicateArgument(v30, v74);
        goto LABEL_132;
      case 0x5Au:
        SetExpression = ResolvePredicateArgument(@"@", v74);
        break;
      case 0x5Bu:
        SetExpression = ResolvePredicateArgument(@"%", v74);
        break;
      case 0x5Cu:
      case 0x6Au:
        SetExpression = objc_alloc_init(MEMORY[0x1E695DF70]);
        break;
      case 0x5Eu:
      case 0x6Cu:
        v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSComparisonPredicate *)v32 addObject:*v11];
        FunctionExpression = v32;
        goto LABEL_114;
      case 0x5Fu:
      case 0x6Du:
        [*(v11 - 2) addObject:*v11];
        FunctionExpression = *(v11 - 2);
        goto LABEL_114;
      case 0x60u:
        v30 = NSStringForLexedIdentifier(*v11);
        KVCExpression = CreateKVCExpression(v30);
        goto LABEL_132;
      case 0x61u:
        v29 = NSStringForLexedIdentifier(*v11);
        v30 = [[NSString alloc] initWithFormat:@"@%@", v29];
        FunctionExpression = CreateKVCExpression(v30);

        goto LABEL_115;
      case 0x62u:
        FunctionExpression = ResolveKeyPathsIntoExpressionSequence(*(v11 - 2), *v11);

        goto LABEL_114;
      case 0x63u:
        FunctionExpression = -[NSVariableAssignmentExpression initWithAssignmentVariable:expression:]([NSVariableAssignmentExpression alloc], "initWithAssignmentVariable:expression:", [*(v11 - 2) variable], *v11);

        goto LABEL_114;
      case 0x64u:
        FunctionExpression = CreateFunctionExpression(*(v11 - 3), *(v11 - 1));

        goto LABEL_135;
      case 0x65u:
        UserFunctionExpression = HandleCastingOperation(*(v11 - 1));
        goto LABEL_129;
      case 0x66u:
        UserFunctionExpression = CreateUserFunctionExpression(*(v11 - 1));
LABEL_129:
        FunctionExpression = UserFunctionExpression;
        goto LABEL_135;
      case 0x68u:
        v30 = NSStringForLexedIdentifier(*(v11 - 1));
        KVCExpression = [[NSString alloc] initWithFormat:@"%@:", v30];
LABEL_132:
        FunctionExpression = KVCExpression;
        goto LABEL_115;
      case 0x69u:
        v61 = NSStringForLexedIdentifier(*(v11 - 2));
        FunctionExpression = [[NSString alloc] initWithFormat:@"%@:%@", v61, *v11];

        goto LABEL_114;
      case 0x6Eu:
        v35 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 3), *(v11 - 1), 0}];
        FunctionExpression = CreateFunctionExpression(@"objectFrom:withIndex:", v35);

        goto LABEL_135;
      case 0x6Fu:
        v26 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"add:to:", v26);

        goto LABEL_114;
      case 0x70u:
        v25 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"from:subtract:", v25);

        goto LABEL_114;
      case 0x71u:
        v54 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"multiply:by:", v54);

        goto LABEL_114;
      case 0x72u:
        v51 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"divide:by:", v51);

        goto LABEL_114;
      case 0x73u:
        v36 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"raise:toPower:", v36);

        goto LABEL_114;
      case 0x74u:
        v34 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"bitwiseAnd:with:", v34);

        goto LABEL_114;
      case 0x75u:
        v50 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"bitwiseOr:with:", v50);

        goto LABEL_114;
      case 0x76u:
        v53 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"bitwiseXor:with:", v53);

        goto LABEL_114;
      case 0x77u:
        v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"leftshift:by:", v44);

        goto LABEL_114;
      case 0x78u:
        v52 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(v11 - 2), *v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"rightshift:by:", v52);

        goto LABEL_114;
      case 0x79u:
        v41 = HandleUnaryMinus(*v11);
LABEL_113:
        FunctionExpression = v41;
        goto LABEL_114;
      case 0x7Au:
        v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*v11, 0}];
        FunctionExpression = CreateFunctionExpression(@"onesComplement:", v28);

LABEL_114:
        v30 = *v11;
        goto LABEL_115;
      case 0x7Bu:
        FunctionExpression = -[NSSubqueryExpression initWithExpression:usingIteratorVariable:predicate:]([NSSubqueryExpression alloc], "initWithExpression:usingIteratorVariable:predicate:", *(v11 - 5), [*(v11 - 3) variable], *(v11 - 1));

        goto LABEL_135;
      case 0x7Cu:
        SetExpression = CreateSetExpression(*(v11 - 2), 5, *v11);
        break;
      case 0x7Du:
        SetExpression = CreateSetExpression(*(v11 - 2), 6, *v11);
        break;
      case 0x7Eu:
        SetExpression = CreateSetExpression(*(v11 - 2), 7, *v11);
        break;
      case 0x7Fu:
        FunctionExpression = CreateFetchExpression(*(v11 - 5), *(v11 - 3), 1);

        goto LABEL_88;
      case 0x80u:
        FunctionExpression = CreateFetchExpression(*(v11 - 5), *(v11 - 3), 0);

LABEL_88:
        v30 = *(v11 - 3);
        goto LABEL_115;
      case 0x81u:
        FunctionExpression = [[NSTernaryExpression alloc] initWithPredicate:*(v11 - 5) trueExpression:*(v11 - 3) falseExpression:*(v11 - 1)];

LABEL_135:
        v30 = *(v11 - 1);
LABEL_115:

        SetExpression = FunctionExpression;
        break;
      default:
        SetExpression = *&v11[1 - v23];
        break;
    }

    v58 = &v11[-v23];
    v13 -= 2 * v23;
    *(v58 + 1) = SetExpression;
    v11 = v58 + 1;
    v59 = yyr1[v22] - 85;
    v60 = *v13 + yypgoto[v59];
    if (v60 <= 0x32A && yycheck[v60] == *v13)
    {
      v21 = yytable[v60];
    }

    else
    {
      v21 = yydefgoto[v59];
    }

    goto LABEL_120;
  }

  return result;
}

uint64_t _qfqp2lex(double *a1)
{
  *&v91[1] = *MEMORY[0x1E69E9840];
  v2 = &_MergedGlobals_143;
  v3 = &_MergedGlobals_143;
  v4 = &unk_1ED43F000;
  v5 = &_MergedGlobals_143;
  if ((_MergedGlobals_135 & 1) == 0)
  {
    _MergedGlobals_135 = 1;
    if (!dword_1ED43FD5C)
    {
      dword_1ED43FD5C = 1;
    }

    if (!_qfqp2in)
    {
      _qfqp2in = *MEMORY[0x1E69E9850];
    }

    if (!qword_1ED43FD68)
    {
      qword_1ED43FD68 = *MEMORY[0x1E69E9858];
    }

    if (!yy_buffer_stack || (v6 = *yy_buffer_stack) == 0)
    {
      _qfqp2ensure_buffer_stack();
      v7 = _qfqp2in;
      v8 = malloc_type_malloc(0x48uLL, 0x8636E7A1uLL);
      if (!v8 || (v6 = v8, v8[3] = 0x4000, v9 = malloc_type_malloc(0x4002uLL, 0x8636E7A1uLL), (*(v6 + 8) = v9) == 0))
      {
        v79 = *MEMORY[0x1E69E9848];
        v80 = "out of dynamic memory in _qfqp2_create_buffer()";
        goto LABEL_230;
      }

      *(v6 + 40) = 1;
      _qfqp2_init_buffer(v6, v7);
      *yy_buffer_stack = v6;
      v5 = &_MergedGlobals_143;
      v2 = &_MergedGlobals_143;
      v3 = &_MergedGlobals_143;
    }

    yy_n_chars = *(v6 + 32);
    v10 = *(v6 + 16);
    *(v2 + 129) = v10;
    _qfqp2text = v10;
    _qfqp2in = *v6;
    v3[872] = *v10;
  }

  v11 = 0;
  v86 = v91;
LABEL_15:
  v12 = *(v2 + 129);
  *v12 = v3[872];
  LODWORD(v13) = v4[855];
  v87 = v11;
  v88 = v12;
  do
  {
LABEL_16:
    v14 = yy_ec[4 * *v12];
    if (yy_accept[v13])
    {
      dword_1ED43FD60 = v13;
      qword_1ED43FD70 = v12;
    }

    v15 = v13;
    v16 = yy_base[v13] + v14;
    if (yy_chk[v16] != v13)
    {
      do
      {
        v15 = yy_def[v15];
        if (v15 >= 304)
        {
          LOBYTE(v14) = yy_meta[4 * v14];
        }

        v16 = yy_base[v15] + v14;
      }

      while (yy_chk[v16] != v15);
    }

    v13 = yy_nxt[v16];
    ++v12;
  }

  while (yy_base[v13] != 1346);
  previous_state = yy_nxt[v16];
  while (2)
  {
    v18 = yy_accept[previous_state];
    if (!v18)
    {
      v12 = qword_1ED43FD70;
      v18 = yy_accept[dword_1ED43FD60];
    }

    *(v5 + 130) = v88;
    v3[872] = *v12;
    *v12 = 0;
    *(v2 + 129) = v12;
LABEL_27:
    switch(v18)
    {
      case 0:
        *v12 = v3[872];
        v12 = qword_1ED43FD70;
        previous_state = dword_1ED43FD60;
        v2 = &_MergedGlobals_143;
        continue;
      case 1:
      case 2:
        v2 = &_MergedGlobals_143;
        v11 = v87;
        goto LABEL_15;
      case 3:
        return 332;
      case 4:
        return 331;
      case 5:
        return 334;
      case 6:
        return 336;
      case 7:
        return 333;
      case 8:
        return 301;
      case 9:
        return 302;
      case 10:
        return 337;
      case 11:
        return 303;
      case 12:
        return 304;
      case 13:
        return 305;
      case 14:
        return 306;
      case 15:
        return 307;
      case 16:
        return 308;
      case 17:
        return 299;
      case 18:
        return 335;
      case 19:
        return 300;
      case 20:
        return 309;
      case 21:
        return 322;
      case 22:
      case 23:
        return 329;
      case 24:
      case 25:
        return 326;
      case 26:
      case 27:
        return 325;
      case 28:
      case 29:
        return 330;
      case 30:
        return 328;
      case 31:
        return 327;
      case 32:
        return 310;
      case 33:
        return 311;
      case 34:
        return 312;
      case 35:
        return 313;
      case 36:
        return 314;
      case 37:
        return 315;
      case 38:
        return 316;
      case 39:
        return 317;
      case 40:
        return 318;
      case 41:
        return 319;
      case 42:
        return 320;
      case 43:
      case 44:
        return 258;
      case 45:
      case 46:
        return 259;
      case 47:
        return 260;
      case 48:
      case 49:
        return 261;
      case 50:
        return 262;
      case 51:
        return 263;
      case 52:
        return 265;
      case 53:
        return 264;
      case 54:
        return 266;
      case 55:
        return 267;
      case 56:
        return 269;
      case 57:
        return 270;
      case 58:
        return 272;
      case 59:
        return 273;
      case 60:
      case 61:
        return 275;
      case 62:
        return 276;
      case 63:
        return 283;
      case 64:
        return 284;
      case 65:
      case 66:
        return 277;
      case 67:
      case 68:
        return 278;
      case 69:
        return 279;
      case 70:
        return 280;
      case 71:
        return 281;
      case 72:
        return 271;
      case 73:
        return 274;
      case 74:
        return 282;
      case 75:
        return 285;
      case 76:
        return 286;
      case 77:
        return 287;
      case 78:
        return 289;
      case 79:
        return 288;
      case 80:
        return 290;
      case 81:
        return 291;
      case 82:
        return 324;
      case 83:
        return 323;
      case 84:
        return 268;
      case 85:
        v75 = *(v5 + 130);
        v76 = a1;
        v77 = 10;
        return convertTextToInteger(v75, v76, v77);
      case 86:
        return convertTextToDecimal(*(v5 + 130), a1);
      case 87:
        v75 = *(v5 + 130);
        v76 = a1;
        v77 = 16;
        return convertTextToInteger(v75, v76, v77);
      case 88:
        v75 = *(v5 + 130);
        v76 = a1;
        v77 = 8;
        return convertTextToInteger(v75, v76, v77);
      case 89:
        v75 = *(v5 + 130);
        v76 = a1;
        v77 = 2;
        return convertTextToInteger(v75, v76, v77);
      case 90:
        v78 = *(v5 + 130);
        goto LABEL_218;
      case 91:
        v78 = (*(v5 + 130) + 1);
LABEL_218:
        *a1 = strdup(v78);
        return 295;
      case 92:
        v60 = 3;
        goto LABEL_115;
      case 93:
        v60 = 5;
        goto LABEL_115;
      case 94:
        v60 = 7;
LABEL_115:
        v4[855] = v60;
        v11 = v90;
        goto LABEL_124;
      case 95:
        v4[855] = 1;
        *v87 = 0;
        *a1 = strdup(v90);
        return 296;
      case 96:
        v4[855] = 1;
        *v87 = 0;
        *a1 = strdup(v90);
        return 297;
      case 97:
        v4[855] = 1;
        *v87 = 0;
        *a1 = strdup(v90);
        return 298;
      case 98:
      case 102:
      case 118:
      case 119:
      case 120:
        goto LABEL_131;
      case 99:
        v64 = (*(v5 + 130) + 1);
        v65 = 8;
        goto LABEL_126;
      case 100:
        v64 = (*(v5 + 130) + 2);
        v65 = 16;
LABEL_126:
        v72 = strtoul_l(v64, 0, v65, 0);
        v73 = v87;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        *v87 = v72;
        v11 = v73 + 1;
        goto LABEL_128;
      case 101:
        v85 = a1;
        v66 = [[NSString alloc] initWithFormat:@"%C", strtoul_l((*(v5 + 130) + 2), 0, 16, 0)];
        v67 = [(NSString *)v66 lengthOfBytesUsingEncoding:4];
        v68 = MEMORY[0x1EEE9AC00](v67);
        v70 = &v81 - v69;
        v89 = 0;
        [(NSString *)v66 getBytes:&v81 - v69 maxLength:v67 usedLength:&v89 encoding:4 options:0 range:0 remainingRange:[(NSString *)v66 length], 0];

        v11 = v87;
        if (&v87[v89] <= v86)
        {
          v4 = &unk_1ED43F000;
          if (v89)
          {
            v71 = 0;
            v2 = &_MergedGlobals_143;
            v3 = &_MergedGlobals_143;
            do
            {
              v11[v71] = v70[v71];
              ++v71;
            }

            while (v89 > v71);
            v11 += v71;
          }

          else
          {
            v2 = &_MergedGlobals_143;
            v3 = &_MergedGlobals_143;
          }

          a1 = v85;
          v5 = &_MergedGlobals_143;
          goto LABEL_15;
        }

        dword_1ED43FD5C = 1;
        return 321;
      case 103:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 10;
        goto LABEL_123;
      case 104:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 9;
        goto LABEL_123;
      case 105:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 13;
        goto LABEL_123;
      case 106:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 8;
        goto LABEL_123;
      case 107:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 12;
        goto LABEL_123;
      case 108:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 7;
        goto LABEL_123;
      case 109:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
          goto LABEL_131;
        }

        v63 = 11;
        goto LABEL_123;
      case 110:
        v61 = v87;
        v62 = v87 + 1;
        if (v87 + 1 > v86)
        {
LABEL_131:
          v4[855] = 1;
          return 321;
        }

        v63 = *(*(v5 + 130) + 1);
LABEL_123:
        *v61 = v63;
        v11 = v62;
LABEL_124:
        v2 = &_MergedGlobals_143;
        goto LABEL_15;
      case 111:
      case 112:
      case 113:
        v56 = v5;
        v57 = *(v5 + 130);
        v58 = strlen(v57);
        v59 = &v87[v58];
        if (v59 > v86)
        {
          dword_1ED43FD5C = 1;
          return 321;
        }

        strlcpy(v87, v57, ((v58 << 32) + 0x100000000) >> 32);
        v11 = v59;
        v4 = &unk_1ED43F000;
        v5 = v56;
LABEL_128:
        v2 = &_MergedGlobals_143;
        v3 = &_MergedGlobals_143;
        goto LABEL_15;
      case 114:
        v4[855] = 1;
        return **(v5 + 130);
      case 115:
        yy_fatal_error("flex scanner jammed");
      case 116:
        v82 = *(v5 + 130);
        *v12 = v3[872];
        v19 = yy_buffer_stack;
        v20 = *yy_buffer_stack;
        v21 = *(*yy_buffer_stack + 64);
        v85 = a1;
        if (v21)
        {
          v22 = yy_n_chars;
        }

        else
        {
          v22 = *(v20 + 32);
          yy_n_chars = v22;
          *v20 = _qfqp2in;
          v20 = *v19;
          *(*v19 + 64) = 1;
        }

        v23 = &_MergedGlobals_143;
        LODWORD(v24) = yy_c_buf_p;
        v25 = *(v20 + 8);
        if (yy_c_buf_p <= &v25[v22])
        {
          v5 = &_MergedGlobals_143;
          v88 = _qfqp2text;
          v12 = _qfqp2text + ~v82 + v12;
          yy_c_buf_p = v12;
          previous_state = yy_get_previous_state();
          if (yy_accept[previous_state])
          {
            dword_1ED43FD60 = previous_state;
            qword_1ED43FD70 = v12;
          }

          v53 = previous_state;
          v54 = yy_base[previous_state] + 1;
          a1 = v85;
          v2 = &_MergedGlobals_143;
          v3 = &_MergedGlobals_143;
          if (yy_chk[v54] != previous_state)
          {
            do
            {
              v53 = yy_def[v53];
              v54 = yy_base[v53] + 1;
            }

            while (yy_chk[v54] != v53);
          }

          LODWORD(v13) = yy_nxt[v54];
          if (v13 && v13 != 303)
          {
            yy_c_buf_p = ++v12;
            goto LABEL_16;
          }

          continue;
        }

        if (yy_c_buf_p > &v25[v22 + 1])
        {
          v79 = *MEMORY[0x1E69E9848];
          v80 = "fatal flex scanner internal error--end of buffer missed";
          goto LABEL_230;
        }

        v26 = _qfqp2text;
        v27 = yy_c_buf_p - _qfqp2text;
        if (!*(v20 + 60))
        {
          a1 = v85;
          v5 = &_MergedGlobals_143;
          if (v27 != 1)
          {
            goto LABEL_84;
          }

LABEL_80:
          *(v23 + 129) = v26;
          v4 = &unk_1ED43F000;
          v18 = (dword_1ED43FD5C - 1) / 2 + 117;
          goto LABEL_27;
        }

        v28 = v27 - 1;
        if (v27 >= 2)
        {
          v29 = v27 - 1;
          do
          {
            v30 = *v26++;
            *v25++ = v30;
            --v29;
          }

          while (v29);
          v20 = *v19;
        }

        v31 = *(v20 + 64);
        v84 = (v27 - 1);
        if (v31 == 2)
        {
          yy_n_chars = 0;
          a1 = v85;
LABEL_40:
          *(v20 + 32) = 0;
          if (v28)
          {
            goto LABEL_41;
          }

          goto LABEL_74;
        }

        v83 = v28;
        v34 = ~v28;
        v35 = *(v20 + 24);
        v36 = v35 - v27;
        if (v35 - v27 <= 0)
        {
          while (*(v20 + 40))
          {
            v37 = *(v20 + 8);
            v38 = 2 * v35;
            v39 = v35 + (v35 >> 3);
            if (v38 >= 1)
            {
              v39 = v38;
            }

            *(v20 + 24) = v39;
            v40 = malloc_type_realloc(v37, v39 + 2, 0xB9D1C62uLL);
            *(v20 + 8) = v40;
            if (!v40)
            {
              goto LABEL_223;
            }

            v24 = v40 + v24 - v37;
            yy_c_buf_p = v24;
            v20 = *yy_buffer_stack;
            v35 = *(*yy_buffer_stack + 24);
            v36 = v35 + v34;
            if (v35 + v34 >= 1)
            {
              goto LABEL_50;
            }
          }

          *(v20 + 8) = 0;
LABEL_223:
          v79 = *MEMORY[0x1E69E9848];
          v80 = "fatal error - scanner input buffer overflow";
LABEL_230:
          fprintf(v79, "%s\n", v80);
          exit(2);
        }

LABEL_50:
        if (v36 >= 0x2000)
        {
          v41 = 0x2000;
        }

        else
        {
          v41 = v36;
        }

        if (!*(v20 + 44))
        {
          *__error() = 0;
          v32 = fread((*(*yy_buffer_stack + 8) + v83), 1uLL, v41, _qfqp2in);
          yy_n_chars = v32;
          a1 = v85;
          if (v32)
          {
LABEL_69:
            v33 = 0;
            v19 = yy_buffer_stack;
            v20 = *yy_buffer_stack;
            *(*yy_buffer_stack + 32) = v32;
            v23 = &_MergedGlobals_143;
            v3 = &_MergedGlobals_143;
            goto LABEL_75;
          }

          while (ferror(_qfqp2in))
          {
            if (*__error() != 4)
            {
              goto LABEL_228;
            }

            *__error() = 0;
            clearerr(_qfqp2in);
            v32 = fread((*(*yy_buffer_stack + 8) + v83), 1uLL, v41, _qfqp2in);
            yy_n_chars = v32;
            if (v32)
            {
              goto LABEL_69;
            }
          }

          v19 = yy_buffer_stack;
          v20 = *yy_buffer_stack;
          v23 = &_MergedGlobals_143;
          v3 = &_MergedGlobals_143;
          v28 = v84;
          goto LABEL_40;
        }

        v42 = 0;
        v81 = v41;
        v43 = -v41;
        v44 = v83;
        while (1)
        {
          v45 = getc(_qfqp2in);
          if (v45 == -1 || v45 == 10)
          {
            break;
          }

          *(*(*yy_buffer_stack + 8) + v44) = v45;
          --v42;
          ++v44;
          if (v43 == v42)
          {
            v23 = &_MergedGlobals_143;
            v47 = v81;
            goto LABEL_62;
          }
        }

        v47 = -v42;
        v23 = &_MergedGlobals_143;
LABEL_62:
        a1 = v85;
        v3 = &_MergedGlobals_143;
        if (v45 == -1)
        {
          v48 = ferror(_qfqp2in);
          v3 = &_MergedGlobals_143;
          v23 = &_MergedGlobals_143;
          if (v48)
          {
LABEL_228:
            v79 = *MEMORY[0x1E69E9848];
            v80 = "input in flex scanner failed";
            goto LABEL_230;
          }
        }

        else if (v45 == 10)
        {
          v33 = 0;
          v19 = yy_buffer_stack;
          *(*(*yy_buffer_stack + 8) + v83 + v47) = 10;
          v32 = v47 + 1;
          yy_n_chars = v32;
          v20 = *v19;
          *(*v19 + 32) = v32;
          goto LABEL_75;
        }

        v32 = v47;
        yy_n_chars = v47;
        v19 = yy_buffer_stack;
        v20 = *yy_buffer_stack;
        *(*yy_buffer_stack + 32) = v47;
        if (v47)
        {
          v33 = 0;
          goto LABEL_75;
        }

        if (v84)
        {
LABEL_41:
          v32 = 0;
          v33 = 2;
          *(v20 + 64) = 2;
          goto LABEL_75;
        }

LABEL_74:
        _qfqp2_init_buffer(v20, _qfqp2in);
        v3 = &_MergedGlobals_143;
        v23 = &_MergedGlobals_143;
        v19 = yy_buffer_stack;
        v20 = *yy_buffer_stack;
        v32 = *(*yy_buffer_stack + 32);
        yy_n_chars = v32;
        yy_c_buf_p = *(v20 + 16);
        _qfqp2text = yy_c_buf_p;
        _qfqp2in = *v20;
        yy_hold_char = *yy_c_buf_p;
        v33 = 1;
LABEL_75:
        v49 = v32 + v84;
        if (v49 <= *(v20 + 24))
        {
          v52 = *(v20 + 8);
          v5 = &_MergedGlobals_143;
        }

        else
        {
          v50 = v33;
          v51 = malloc_type_realloc(*(v20 + 8), v49 + (v32 >> 1), 0xB9D1C62uLL);
          v19 = yy_buffer_stack;
          *(*yy_buffer_stack + 8) = v51;
          v52 = *(*v19 + 8);
          if (!v52)
          {
            v79 = *MEMORY[0x1E69E9848];
            v80 = "out of dynamic memory in yy_get_next_buffer()";
            goto LABEL_230;
          }

          v49 = yy_n_chars + v84;
          v5 = &_MergedGlobals_143;
          v23 = &_MergedGlobals_143;
          v3 = &_MergedGlobals_143;
          v33 = v50;
        }

        yy_n_chars = v49;
        *(v52 + v49) = 0;
        *(*(*v19 + 8) + v49 + 1) = 0;
        v26 = *(*v19 + 8);
        *(v5 + 130) = v26;
        if (v33 == 1)
        {
          goto LABEL_80;
        }

        if (!v33)
        {
          v12 = &v26[~v82 + v12];
          *(v23 + 129) = v12;
          v55 = yy_get_previous_state();
          v3 = &_MergedGlobals_143;
          v2 = &_MergedGlobals_143;
          LODWORD(v13) = v55;
          v88 = v26;
          v4 = &unk_1ED43F000;
          goto LABEL_16;
        }

        v25 = *(*yy_buffer_stack + 8);
        v22 = yy_n_chars;
LABEL_84:
        v12 = &v25[v22];
        *(v23 + 129) = &v25[v22];
        previous_state = yy_get_previous_state();
        v3 = &_MergedGlobals_143;
        v2 = &_MergedGlobals_143;
        v88 = v26;
        v4 = &unk_1ED43F000;
        continue;
      case 117:
        return 0;
      default:
        yy_fatal_error("fatal flex scanner internal error--no action found");
    }
  }
}

NSString *NSStringForLexedIdentifier(void *a1)
{
  v2 = [[NSString alloc] initWithUTF8String:a1];
  free(a1);
  return v2;
}

void _NSXPCSerializationAddDouble(uint64_t a1, double a2)
{
  _reserveSpace(a1, 1);
  *(*(a1 + 8216) + (*(a1 + 8200))++) = 35;
  _reserveSpace(a1, 8);
  *(*(a1 + 8216) + *(a1 + 8200)) = a2;
  *(a1 + 8200) += 8;
}

id _replacedWithDistantObject(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return a2;
  }

  v8 = [a3 _interfaceForArgument:a5 ofSelector:a4 reply:1];
  if (objc_opt_isKindOfClass())
  {
    if (!v8)
    {
      v9 = [NSString stringWithFormat:@"[NSXPCConnection sendInvocation]: A proxy object was passed as an argument to a reply block (argument %ld) but the interface does not specify a proxy object there.", a5];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
    }

    return a2;
  }

  if (!v8)
  {
    return a2;
  }

  v10 = [[_NSXPCDistantObject alloc] _initWithConnection:a1 exportedObject:a2 interface:v8];

  return v10;
}

void static String._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v5 = a1;
  v6 = v5;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v10 = v9;

LABEL_19:
      *a2 = v8;
      a2[1] = v10;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v8 = 0;

      v10 = 0xE000000000000000;
    }

    else
    {
      v11 = v6;
      v12 = String.init(_nativeStorage:)();
      if (v13)
      {
        v8 = v12;
        v10 = v13;
      }

      else if ([v11 length])
      {
        v8 = String.init(_cocoaString:)();
        v10 = v17;
      }

      else
      {

        v8 = 0;
        v10 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v14 = [v6 UTF8String];
  if (v14)
  {
    v15 = String.init(utf8String:)(v14);
    if (v16)
    {
LABEL_14:
      v8 = v15;
      v10 = v16;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v18;
      v10 = v19;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

id @objc static NSTimeZone._autoupdating()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  if (one-time initialization token for _bridgedAutoupdatingCurrent != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache._bridgedAutoupdatingCurrent;

  return v0;
}

unint64_t Calendar.Identifier.cfCalendarIdentifier.getter()
{
  result = 0x6169726F67657267;
  switch(*v0)
  {
    case 1:
      result = 0x7473696864647562;
      break;
    case 2:
      result = 0x6573656E696863;
      break;
    case 3:
      result = 0x636974706F63;
      break;
    case 4:
      result = 0x6369706F69687465;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x776572626568;
      break;
    case 7:
      result = 0x313036386F7369;
      break;
    case 8:
      result = 0x6E6169646E69;
      break;
    case 9:
      result = 0x63696D616C7369;
      break;
    case 0xA:
    case 0xE:
      result = 0x2D63696D616C7369;
      break;
    case 0xB:
      result = 0x6573656E6170616ALL;
      break;
    case 0xC:
      result = 0x6E616973726570;
      break;
    case 0xD:
      result = 6516594;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x616C676E6162;
      break;
    case 0x11:
      result = 0x69746172616A7567;
      break;
    case 0x12:
      result = 0x6164616E6E616BLL;
      break;
    case 0x13:
      result = 0x616C6179616C616DLL;
      break;
    case 0x14:
      result = 0x6968746172616DLL;
      break;
    case 0x15:
      result = 1634296943;
      break;
    case 0x16:
      result = 0x6C696D6174;
      break;
    case 0x17:
      result = 0x7567756C6574;
      break;
    case 0x18:
      result = 0x6D61726B6976;
      break;
    case 0x19:
      result = 0x69676E6164;
      break;
    case 0x1A:
      result = 0x656D616E74656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for _TimeZoneProtocol.identifier.getter in conformance _TimeZoneGMTICU()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t _LocaleICU.pref(for:)@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 136);
  v8 = *(v3 + 168);
  v126[6] = *(v3 + 152);
  v127[0] = v8;
  *(v127 + 12) = *(v3 + 180);
  v9 = *(v3 + 72);
  v10 = *(v3 + 104);
  v126[2] = *(v3 + 88);
  v126[3] = v10;
  v126[4] = *(v3 + 120);
  v126[5] = v7;
  v126[0] = *(v3 + 56);
  v126[1] = v9;
  v11 = *(v3 + 136);
  v12 = *(v3 + 168);
  v132 = *(v3 + 152);
  *v133 = v12;
  *&v133[12] = *(v3 + 180);
  v13 = *(v3 + 72);
  v14 = *(v3 + 104);
  v128[2] = *(v3 + 88);
  v129 = v14;
  v130 = *(v3 + 120);
  v131 = v11;
  v128[0] = *(v3 + 56);
  v128[1] = v13;
  result = _s10Foundation17LocalePreferencesVSgWOg(v128);
  if (result == 1)
  {
    goto LABEL_7;
  }

  v16 = 0xD000000000000010;
  if (a1 == 0xD000000000000010 && 0x800000018147F9D0 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v17 = LOBYTE(v128[0]);
    goto LABEL_6;
  }

  v18 = 0xD000000000000015;
  if (a1 == 0xD000000000000015 && 0x800000018147F9F0 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (v133[24] == 2)
    {
      goto LABEL_7;
    }

    v19 = (v133[24] & 1) == 0;
    v20 = 0x74656D69746E6543;
    if (v133[24])
    {
      v20 = 0x736568636E49;
    }

    v21 = 0xEB00000000737265;
    v22 = 0xE600000000000000;
LABEL_16:
    *(a3 + 24) = MEMORY[0x1E69E6158];
    if (!v19)
    {
      v21 = v22;
    }

    *a3 = v20;
    *(a3 + 8) = v21;
    return result;
  }

  result = 0xD000000000000014;
  if (a1 == 0xD000000000000014 && 0x800000018147FA10 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (v133[25] == 2)
    {
      goto LABEL_7;
    }

    v19 = (v133[25] & 1) == 0;
    v20 = 0x65686E6572686146;
    if (v133[25])
    {
      v20 = 0x737569736C6543;
    }

    v21 = 0xEA00000000007469;
    v22 = 0xE700000000000000;
    goto LABEL_16;
  }

  result = 0xD000000000000011;
  if (a1 == 0xD000000000000011 && 0x800000018147FA30 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v23 = v129;
    if (!v129)
    {
      goto LABEL_7;
    }

    v24 = v129 + 64;
    v25 = 1 << *(v129 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v129 + 64);
    outlined init with copy of FloatingPointRoundingRule?(v126, &v125, &_s10Foundation17LocalePreferencesVSgMd);
    v28 = (v25 + 63) >> 6;

    v29 = 0;
    v18 = MEMORY[0x1E69E7CC8];
    v114 = v28;
    v116 = v23;
    v118 = v23 + 64;
    while (1)
    {
      if (!v27)
      {
        while (1)
        {
          a2 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (a2 >= v28)
          {
            goto LABEL_158;
          }

          v27 = *(v24 + 8 * a2);
          ++v29;
          if (v27)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_172:
        v16 = a1;
        if (a1 == 0xD000000000000017 && 0x800000018147FAB0 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          v17 = v133[27];
          goto LABEL_6;
        }

LABEL_178:
        v38 = 0xD000000000000019;
        if (v16 == 0xD000000000000019 && 0x800000018147FAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          result = *(&v130 + 1);
          goto LABEL_182;
        }

LABEL_186:
        if (v16 == v38 && 0x800000018147FAF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          result = v131;
          goto LABEL_182;
        }

LABEL_191:
        if (v16 == 0xD00000000000001BLL && 0x800000018147FB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          result = *(&v131 + 1);
          goto LABEL_182;
        }

        if (v16 != v18 || 0x800000018147FB30 != a2)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        result = v132;
LABEL_182:
        v124 = result;
        if (!result)
        {
LABEL_7:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }

LABEL_164:
        type metadata accessor for CFDictionaryRef(0);
        *(a3 + 24) = v105;
        *a3 = v124;

        return v124;
      }

      a2 = v29;
LABEL_40:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = v31 | (a2 << 6);
      v120 = *(*(v23 + 56) + 8 * v32);
      v33 = 0xE90000000000006ELL;
      v34 = 0x6169726F67657267;
      switch(*(*(v23 + 48) + v32))
      {
        case 1:
          v33 = 0xE800000000000000;
          v34 = 0x7473696864647562;
          break;
        case 2:
          v33 = 0xE700000000000000;
          v34 = 0x6573656E696863;
          break;
        case 3:
          v33 = 0xE600000000000000;
          v34 = 0x636974706F63;
          break;
        case 4:
          v33 = 0xE800000000000000;
          v34 = 0x6369706F69687465;
          break;
        case 5:
          v34 = 0xD000000000000013;
          v33 = 0x800000018147FB50;
          break;
        case 6:
          v33 = 0xE600000000000000;
          v34 = 0x776572626568;
          break;
        case 7:
          v33 = 0xE700000000000000;
          v34 = 0x313036386F7369;
          break;
        case 8:
          v33 = 0xE600000000000000;
          v34 = 0x6E6169646E69;
          break;
        case 9:
          v33 = 0xE700000000000000;
          v34 = 0x63696D616C7369;
          break;
        case 0xA:
          v34 = 0x2D63696D616C7369;
          v33 = 0xED00006C69766963;
          break;
        case 0xB:
          v33 = 0xE800000000000000;
          v34 = 0x6573656E6170616ALL;
          break;
        case 0xC:
          v33 = 0xE700000000000000;
          v34 = 0x6E616973726570;
          break;
        case 0xD:
          v33 = 0xE300000000000000;
          v34 = 6516594;
          break;
        case 0xE:
          v34 = 0x2D63696D616C7369;
          v33 = 0xEC000000616C6274;
          break;
        case 0xF:
          v34 = 0xD000000000000010;
          v33 = 0x800000018147FB70;
          break;
        case 0x10:
          v33 = 0xE600000000000000;
          v34 = 0x616C676E6162;
          break;
        case 0x11:
          v33 = 0xE800000000000000;
          v34 = 0x69746172616A7567;
          break;
        case 0x12:
          v33 = 0xE700000000000000;
          v34 = 0x6164616E6E616BLL;
          break;
        case 0x13:
          v34 = 0x616C6179616C616DLL;
          v33 = 0xE90000000000006DLL;
          break;
        case 0x14:
          v33 = 0xE700000000000000;
          v34 = 0x6968746172616DLL;
          break;
        case 0x15:
          v33 = 0xE400000000000000;
          v34 = 1634296943;
          break;
        case 0x16:
          v33 = 0xE500000000000000;
          v34 = 0x6C696D6174;
          break;
        case 0x17:
          v33 = 0xE600000000000000;
          v34 = 0x7567756C6574;
          break;
        case 0x18:
          v33 = 0xE600000000000000;
          v34 = 0x6D61726B6976;
          break;
        case 0x19:
          v33 = 0xE500000000000000;
          v34 = 0x69676E6164;
          break;
        case 0x1A:
          v34 = 0x656D616E74656976;
          v33 = 0xEA00000000006573;
          break;
        default:
          break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v34;
      v125 = v18;
      v36 = v34;
      a1 = v33;
      v37 = v33;
      v38 = v18;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
      v40 = *(v18 + 16);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_177;
      }

      v44 = v39;
      if (*(v18 + 24) < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_72;
      }

      v106 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
      v49 = static _DictionaryStorage.copy(original:)();
      v38 = v49;
      if (*(v18 + 16))
      {
        v50 = (v49 + 64);
        __src = (v18 + 64);
        v51 = ((1 << *(v38 + 32)) + 63) >> 6;
        if (v38 != v18 || v50 >= &__src[8 * v51])
        {
          memmove(v50, __src, 8 * v51);
        }

        v52 = 0;
        *(v38 + 16) = *(v18 + 16);
        v53 = 1 << *(v18 + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v108 = v54 & *(v18 + 64);
        v110 = (v53 + 63) >> 6;
        if (v108)
        {
LABEL_82:
          v55 = __clz(__rbit64(v108));
          v108 &= v108 - 1;
          goto LABEL_88;
        }

LABEL_83:
        v56 = v52;
        while (1)
        {
          v52 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          if (v52 >= v110)
          {
            goto LABEL_90;
          }

          v57 = *&__src[8 * v52];
          ++v56;
          if (v57)
          {
            v55 = __clz(__rbit64(v57));
            v108 = (v57 - 1) & v57;
LABEL_88:
            v58 = v55 | (v52 << 6);
            v59 = (*(v18 + 48) + 16 * v58);
            v61 = *v59;
            v60 = v59[1];
            v62 = *(*(v18 + 56) + 8 * v58);
            v63 = (*(v38 + 48) + 16 * v58);
            *v63 = v61;
            v63[1] = v60;
            *(*(v38 + 56) + 8 * v58) = v62;

            if (v108)
            {
              goto LABEL_82;
            }

            goto LABEL_83;
          }
        }

        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x180781A3CLL);
      }

LABEL_90:

      result = v106;
      v24 = v118;
      if (v44)
      {
LABEL_33:
        v30 = result;

        *(*(v38 + 56) + 8 * v30) = v120;
        goto LABEL_34;
      }

LABEL_73:
      *(v38 + 8 * (result >> 6) + 64) |= 1 << result;
      v46 = (*(v38 + 48) + 16 * result);
      *v46 = v122;
      v46[1] = a1;
      *(*(v38 + 56) + 8 * result) = v120;
      v47 = *(v38 + 16);
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        __break(1u);
        goto LABEL_185;
      }

      *(v38 + 16) = v48;
LABEL_34:
      v29 = a2;
      v18 = v38;
      v28 = v114;
      v23 = v116;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
    v38 = v125;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v122, a1);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_201;
    }

LABEL_72:
    v24 = v118;
    if (v44)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

  if (a1 == 0xD000000000000017 && 0x800000018147FA50 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v64 = *(&v129 + 1);
    if (!*(&v129 + 1))
    {
      goto LABEL_7;
    }

    v65 = *(&v129 + 1) + 64;
    v66 = 1 << *(*(&v129 + 1) + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(*(&v129 + 1) + 64);
    outlined init with copy of FloatingPointRoundingRule?(v126, &v125, &_s10Foundation17LocalePreferencesVSgMd);
    v69 = (v66 + 63) >> 6;

    v70 = 0;
    v18 = MEMORY[0x1E69E7CC8];
    v115 = v69;
    v117 = v64;
    v119 = v64 + 64;
    while (1)
    {
      if (v68)
      {
        a2 = v70;
      }

      else
      {
        do
        {
          a2 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          if (a2 >= v69)
          {
LABEL_158:

            *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd);
            result = outlined destroy of TermOfAddress?(v126, &_s10Foundation17LocalePreferencesVSgMd);
            *a3 = v18;
            return result;
          }

          v68 = *(v65 + 8 * a2);
          ++v70;
        }

        while (!v68);
      }

      v72 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v73 = v72 | (a2 << 6);
      v121 = *(*(v64 + 56) + 8 * v73);
      v74 = 0xE90000000000006ELL;
      v75 = 0x6169726F67657267;
      switch(*(*(v64 + 48) + v73))
      {
        case 1:
          v74 = 0xE800000000000000;
          v75 = 0x7473696864647562;
          break;
        case 2:
          v74 = 0xE700000000000000;
          v75 = 0x6573656E696863;
          break;
        case 3:
          v74 = 0xE600000000000000;
          v75 = 0x636974706F63;
          break;
        case 4:
          v74 = 0xE800000000000000;
          v75 = 0x6369706F69687465;
          break;
        case 5:
          v75 = 0xD000000000000013;
          v74 = 0x800000018147FB50;
          break;
        case 6:
          v74 = 0xE600000000000000;
          v75 = 0x776572626568;
          break;
        case 7:
          v74 = 0xE700000000000000;
          v75 = 0x313036386F7369;
          break;
        case 8:
          v74 = 0xE600000000000000;
          v75 = 0x6E6169646E69;
          break;
        case 9:
          v74 = 0xE700000000000000;
          v75 = 0x63696D616C7369;
          break;
        case 0xA:
          v75 = 0x2D63696D616C7369;
          v74 = 0xED00006C69766963;
          break;
        case 0xB:
          v74 = 0xE800000000000000;
          v75 = 0x6573656E6170616ALL;
          break;
        case 0xC:
          v74 = 0xE700000000000000;
          v75 = 0x6E616973726570;
          break;
        case 0xD:
          v74 = 0xE300000000000000;
          v75 = 6516594;
          break;
        case 0xE:
          v75 = 0x2D63696D616C7369;
          v74 = 0xEC000000616C6274;
          break;
        case 0xF:
          v75 = 0xD000000000000010;
          v74 = 0x800000018147FB70;
          break;
        case 0x10:
          v74 = 0xE600000000000000;
          v75 = 0x616C676E6162;
          break;
        case 0x11:
          v74 = 0xE800000000000000;
          v75 = 0x69746172616A7567;
          break;
        case 0x12:
          v74 = 0xE700000000000000;
          v75 = 0x6164616E6E616BLL;
          break;
        case 0x13:
          v75 = 0x616C6179616C616DLL;
          v74 = 0xE90000000000006DLL;
          break;
        case 0x14:
          v74 = 0xE700000000000000;
          v75 = 0x6968746172616DLL;
          break;
        case 0x15:
          v74 = 0xE400000000000000;
          v75 = 1634296943;
          break;
        case 0x16:
          v74 = 0xE500000000000000;
          v75 = 0x6C696D6174;
          break;
        case 0x17:
          v74 = 0xE600000000000000;
          v75 = 0x7567756C6574;
          break;
        case 0x18:
          v74 = 0xE600000000000000;
          v75 = 0x6D61726B6976;
          break;
        case 0x19:
          v74 = 0xE500000000000000;
          v75 = 0x69676E6164;
          break;
        case 0x1A:
          v75 = 0x656D616E74656976;
          v74 = 0xEA00000000006573;
          break;
        default:
          break;
      }

      v76 = swift_isUniquelyReferenced_nonNull_native();
      v123 = v75;
      v125 = v18;
      v77 = v75;
      v78 = v74;
      v79 = v74;
      v38 = v18;
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v79);
      v82 = *(v18 + 16);
      v83 = (v81 & 1) == 0;
      v42 = __OFADD__(v82, v83);
      v84 = v82 + v83;
      if (v42)
      {
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      v85 = v81;
      if (*(v18 + 24) < v84)
      {
        break;
      }

      if (v76)
      {
        goto LABEL_138;
      }

      v107 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
      v90 = static _DictionaryStorage.copy(original:)();
      v38 = v90;
      if (*(v18 + 16))
      {
        v91 = (v90 + 64);
        __srca = (v18 + 64);
        v92 = ((1 << *(v38 + 32)) + 63) >> 6;
        if (v38 != v18 || v91 >= &__srca[8 * v92])
        {
          memmove(v91, __srca, 8 * v92);
        }

        v93 = 0;
        *(v38 + 16) = *(v18 + 16);
        v94 = 1 << *(v18 + 32);
        v95 = -1;
        if (v94 < 64)
        {
          v95 = ~(-1 << v94);
        }

        v109 = v95 & *(v18 + 64);
        v111 = (v94 + 63) >> 6;
        if (!v109)
        {
          goto LABEL_149;
        }

        while (1)
        {
          v96 = __clz(__rbit64(v109));
          for (v109 &= v109 - 1; ; v109 = (v98 - 1) & v98)
          {
            v99 = v96 | (v93 << 6);
            v100 = (*(v18 + 48) + 16 * v99);
            v102 = *v100;
            v101 = v100[1];
            v103 = *(*(v18 + 56) + 8 * v99);
            v104 = (*(v38 + 48) + 16 * v99);
            *v104 = v102;
            v104[1] = v101;
            *(*(v38 + 56) + 8 * v99) = v103;

            if (v109)
            {
              break;
            }

LABEL_149:
            v97 = v93;
            do
            {
              v93 = v97 + 1;
              if (__OFADD__(v97, 1))
              {
                goto LABEL_200;
              }

              if (v93 >= v111)
              {
                goto LABEL_156;
              }

              v98 = *&__srca[8 * v93];
              ++v97;
            }

            while (!v98);
            v96 = __clz(__rbit64(v98));
          }
        }
      }

LABEL_156:

      v80 = v107;
      v65 = v119;
      if (v85)
      {
LABEL_99:
        v71 = v80;

        *(*(v38 + 56) + 8 * v71) = v121;
        goto LABEL_100;
      }

LABEL_139:
      *(v38 + 8 * (v80 >> 6) + 64) |= 1 << v80;
      v87 = (*(v38 + 48) + 16 * v80);
      *v87 = v123;
      v87[1] = v78;
      *(*(v38 + 56) + 8 * v80) = v121;
      v88 = *(v38 + 16);
      v42 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v42)
      {
        __break(1u);
        goto LABEL_191;
      }

      *(v38 + 16) = v89;
LABEL_100:
      v70 = a2;
      v18 = v38;
      v69 = v115;
      v64 = v117;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v84, v76);
    v38 = v125;
    v80 = specialized __RawDictionaryStorage.find<A>(_:)(v123, v78);
    if ((v85 & 1) != (v86 & 1))
    {
      goto LABEL_201;
    }

LABEL_138:
    v65 = v119;
    if (v85)
    {
      goto LABEL_99;
    }

    goto LABEL_139;
  }

  if (a1 == 0xD000000000000017 && 0x800000018147FA70 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    result = v130;
    if (!v130)
    {
      goto LABEL_7;
    }

    v124 = v130;
    goto LABEL_164;
  }

  if (a1 != 0xD000000000000017 || 0x800000018147FA90 != a2)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_172;
    }
  }

  v17 = v133[26];
LABEL_6:
  if (v17 == 2)
  {
    goto LABEL_7;
  }

  *(a3 + 24) = MEMORY[0x1E69E6370];
  *a3 = v17 & 1;
  return result;
}

uint64_t _s10Foundation17LocalePreferencesVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void _NSSwiftLocale.object(forKey:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v230[4] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695D9A8];
  isTaggedPointer = _objc_isTaggedPointer(*MEMORY[0x1E695D9A8]);
  v6 = v4;
  v7 = v6;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v15 = [v7 UTF8String];
      if (!v15)
      {
        __break(1u);
        goto LABEL_204;
      }

      v16 = String.init(utf8String:)(v15);
      if (v17)
      {
LABEL_15:
        v9 = v16;
        v11 = v17;

        goto LABEL_20;
      }

      __break(1u);
    }

    v229 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v17)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v227;
      v11 = v228;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v227) = 0;
  v230[0] = 0;
  v229 = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_20;
  }

  v12 = v7;
  v13 = String.init(_nativeStorage:)();
  if (v14)
  {
    v9 = v13;
    v11 = v14;

    goto LABEL_20;
  }

  v230[0] = [v12 length];
  if (!v230[0])
  {

    goto LABEL_10;
  }

  v9 = String.init(_cocoaString:)();
  v11 = v18;
LABEL_20:
  v19 = _objc_isTaggedPointer(a1);
  v20 = a1;
  v21 = v20;
  if (!v19)
  {
    goto LABEL_25;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  if (!v22)
  {
    goto LABEL_33;
  }

  if (v22 == 22)
  {
    v29 = [v21 UTF8String];
    if (v29)
    {
      v30 = String.init(utf8String:)(v29);
      if (v31)
      {
LABEL_34:
        v23 = v30;
        v25 = v31;

        goto LABEL_39;
      }

      __break(1u);
LABEL_33:
      v229 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v31)
      {
        [v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v23 = v227;
        v25 = v228;
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  if (v22 != 2)
  {
LABEL_25:
    LOBYTE(v227) = 0;
    v230[0] = 0;
    v229 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v26 = v21;
      v27 = String.init(_nativeStorage:)();
      if (v28)
      {
        v23 = v27;
        v25 = v28;

        goto LABEL_39;
      }

      v230[0] = [v26 length];
      if (v230[0])
      {
        v23 = String.init(_cocoaString:)();
        v25 = v32;
        goto LABEL_39;
      }
    }

    v23 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](v22);
  v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v25 = v24;

LABEL_39:
  if (v9 == v23 && v11 == v25)
  {

    goto LABEL_43;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_43:
    v34 = [v2 localeIdentifier];
    v35 = _objc_isTaggedPointer(v34);
    v36 = v34;
    v2 = v36;
    if (!v35)
    {
      goto LABEL_48;
    }

    v37 = _objc_getTaggedPointerTag(v36);
    if (v37)
    {
      if (v37 != 22)
      {
        if (v37 == 2)
        {
LABEL_47:
          MEMORY[0x1EEE9AC00](v37);
          v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v40 = v39;

LABEL_130:
          *(a2 + 24) = MEMORY[0x1E69E6158];
          *a2 = v38;
          *(a2 + 8) = v40;
          return;
        }

LABEL_48:
        v230[0] = 0;
        if (__CFStringIsCF())
        {
          goto LABEL_113;
        }

LABEL_111:
        v79 = v2;
        v80 = String.init(_nativeStorage:)();
        if (v81)
        {
          v38 = v80;
          v40 = v81;

          goto LABEL_130;
        }

        if (![v79 length])
        {

          goto LABEL_114;
        }

        goto LABEL_116;
      }

      v49 = [v2 UTF8String];
      if (v49)
      {
        v50 = String.init(utf8String:)(v49);
        if (!v51)
        {
          __break(1u);
          if (v229)
          {
            if (v227 != 1)
            {
              v50 = [v2 lengthOfBytesUsingEncoding_];
            }

            MEMORY[0x1EEE9AC00](v50);
            v58 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v40 = v59;
            v60 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v60 = v58 & 0xFFFFFFFFFFFFLL;
            }

            if (v60)
            {
              v38 = v58;
LABEL_128:

              goto LABEL_129;
            }
          }

LABEL_116:
          v38 = String.init(_cocoaString:)();
          v40 = v82;
LABEL_129:

          goto LABEL_130;
        }

LABEL_127:
        v38 = v50;
        v40 = v51;
        goto LABEL_128;
      }

      __break(1u);
      goto LABEL_209;
    }

LABEL_108:
    _CFIndirectTaggedPointerStringGetContents();
    v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v51)
    {
      [v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      v78 = MEMORY[0x1E69E6158];
      swift_dynamicCast();

      *(a2 + 24) = v78;
      *a2 = v227;
      *(a2 + 8) = v228;
      return;
    }

    goto LABEL_127;
  }

  v41 = *MEMORY[0x1E695D9B0];
  v42 = _objc_isTaggedPointer(*MEMORY[0x1E695D9B0]);
  v43 = v41;
  v44 = v43;
  if (v42)
  {
    v45 = _objc_getTaggedPointerTag(v43);
    if (v45)
    {
      if (v45 != 22)
      {
        if (v45 == 2)
        {
          MEMORY[0x1EEE9AC00](v45);
          v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v48 = v47;

          goto LABEL_80;
        }

        goto LABEL_55;
      }

      v55 = [v44 UTF8String];
      if (!v55)
      {
        __break(1u);
        goto LABEL_219;
      }

      v56 = String.init(utf8String:)(v55);
      if (v57)
      {
LABEL_69:
        v46 = v56;
        v48 = v57;

        goto LABEL_80;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v57)
    {
      [v44 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v46 = v227;
      v48 = v228;
      goto LABEL_80;
    }

    goto LABEL_69;
  }

LABEL_55:
  LOBYTE(v227) = 0;
  v230[0] = 0;
  if (__CFStringIsCF())
  {

LABEL_64:
    v46 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_80;
  }

  v52 = v44;
  v53 = String.init(_nativeStorage:)();
  if (v54)
  {
    v46 = v53;
    v48 = v54;

    goto LABEL_80;
  }

  v230[0] = [v52 length];
  if (!v230[0])
  {

    goto LABEL_64;
  }

  v46 = String.init(_cocoaString:)();
  v48 = v61;
LABEL_80:
  v62 = v21;
  v63 = v62;
  if (!v19)
  {
    goto LABEL_85;
  }

  v64 = _objc_getTaggedPointerTag(v62);
  if (!v64)
  {
    goto LABEL_93;
  }

  if (v64 == 22)
  {
    v71 = [v63 UTF8String];
    if (v71)
    {
      v72 = String.init(utf8String:)(v71);
      if (v73)
      {
LABEL_94:
        v65 = v72;
        v67 = v73;

        goto LABEL_99;
      }

      __break(1u);
LABEL_93:
      _CFIndirectTaggedPointerStringGetContents();
      v72 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v73)
      {
        [v63 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v65 = v227;
        v67 = v228;
        goto LABEL_99;
      }

      goto LABEL_94;
    }

LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  if (v64 != 2)
  {
LABEL_85:
    LOBYTE(v227) = 0;
    v230[0] = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v68 = v63;
      v69 = String.init(_nativeStorage:)();
      if (v70)
      {
        v65 = v69;
        v67 = v70;

        goto LABEL_99;
      }

      v230[0] = [v68 length];
      if (v230[0])
      {
        v65 = String.init(_cocoaString:)();
        v67 = v74;
        goto LABEL_99;
      }
    }

    v65 = 0;
    v67 = 0xE000000000000000;
    goto LABEL_99;
  }

  MEMORY[0x1EEE9AC00](v64);
  v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v67 = v66;

LABEL_99:
  if (v46 == v65 && v48 == v67)
  {

LABEL_103:
    v76 = [v2 languageCode];
    a1 = _objc_isTaggedPointer(v76);
    v77 = v76;
    v2 = v77;
    if (!a1)
    {
      goto LABEL_110;
    }

    v37 = _objc_getTaggedPointerTag(v77);
    if (!v37)
    {
      goto LABEL_108;
    }

    if (v37 != 22)
    {
      if (v37 == 2)
      {
        goto LABEL_47;
      }

LABEL_110:
      v230[0] = 0;
      if (__CFStringIsCF())
      {
LABEL_113:

LABEL_114:
        v38 = 0;
        v40 = 0xE000000000000000;
        goto LABEL_130;
      }

      goto LABEL_111;
    }

    v91 = [v2 UTF8String];
    if (v91)
    {
      v50 = String.init(utf8String:)(v91);
      if (v51)
      {
        goto LABEL_127;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_224:
    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9A0]);
    v178 = v177;
    if (v176 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v178 == v179)
    {

LABEL_229:
      v102 = [v2 groupingSeparator];
      goto LABEL_148;
    }

LABEL_228:
    v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v180)
    {
      goto LABEL_229;
    }

    v181 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D988]);
    v183 = v182;
    if (v181 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v183 == v184)
    {

LABEL_234:
      v102 = [v2 currencySymbol];
      goto LABEL_148;
    }

    v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v185)
    {
      goto LABEL_234;
    }

    v186 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D980]);
    v188 = v187;
    if (v186 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v188 == v189)
    {

      goto LABEL_239;
    }

    v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v190)
    {
LABEL_239:
      v102 = [v2 currencyCode];
      if (v102)
      {
        goto LABEL_148;
      }

LABEL_179:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    v191 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D970]);
    v193 = v192;
    if (v191 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v193 == v194)
    {
      goto LABEL_248;
    }

    v195 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v195 & 1) == 0)
    {
      if (one-time initialization token for cfLocaleCollatorID != -1)
      {
        swift_once();
      }

      v196 = static String._unconditionallyBridgeFromObjectiveC(_:)(static NSLocaleKey.cfLocaleCollatorID);
      v198 = v197;
      if (v196 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v198 == v199)
      {
LABEL_248:

        goto LABEL_249;
      }

      v200 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v200 & 1) == 0)
      {
        v201 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9D8]);
        v203 = v202;
        if (v201 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v203 == v204)
        {
        }

        else
        {
          v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v205 & 1) == 0)
          {
            v206 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9E0]);
            v208 = v207;
            if (v206 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v208 == v209)
            {
            }

            else
            {
              v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v210 & 1) == 0)
              {
                v211 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D948]);
                v213 = v212;
                if (v211 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v213 == v214)
                {
                }

                else
                {
                  v215 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v215 & 1) == 0)
                  {
                    v216 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D950]);
                    v218 = v217;
                    if (v216 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v218 == v219)
                    {
                    }

                    else
                    {
                      v220 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v220 & 1) == 0)
                      {
                        if (one-time initialization token for languageIdentifier != -1)
                        {
                          swift_once();
                        }

                        v221 = static String._unconditionallyBridgeFromObjectiveC(_:)(static NSLocaleKey.languageIdentifier);
                        v223 = v222;
                        if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v223 == v224)
                        {
                        }

                        else
                        {
                          v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v225 & 1) == 0)
                          {
                            goto LABEL_179;
                          }
                        }

                        v102 = [v2 languageIdentifier];
                        goto LABEL_148;
                      }
                    }

                    v102 = [v2 alternateQuotationEndDelimiter];
                    goto LABEL_148;
                  }
                }

                v102 = [v2 alternateQuotationBeginDelimiter];
                goto LABEL_148;
              }
            }

            v102 = [v2 quotationEndDelimiter];
            goto LABEL_148;
          }
        }

        v102 = [v2 quotationBeginDelimiter];
        goto LABEL_148;
      }
    }

LABEL_249:
    v102 = [v2 collatorIdentifier];
    goto LABEL_148;
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v75)
  {
    goto LABEL_103;
  }

  v83 = *MEMORY[0x1E695D978];
  v84 = _objc_isTaggedPointer(*MEMORY[0x1E695D978]);
  v85 = v83;
  v86 = v85;
  if (!v84)
  {
    goto LABEL_122;
  }

  v87 = _objc_getTaggedPointerTag(v85);
  switch(v87)
  {
    case 0:
      goto LABEL_136;
    case 0x16:
      v95 = [v86 UTF8String];
      if (!v95)
      {
        __break(1u);
        goto LABEL_228;
      }

      v96 = String.init(utf8String:)(v95);
      if (v97)
      {
LABEL_137:
        v88 = v96;
        v90 = v97;

        goto LABEL_142;
      }

      __break(1u);
LABEL_136:
      _CFIndirectTaggedPointerStringGetContents();
      v96 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v97)
      {
        [v86 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v88 = v227;
        v90 = v228;
        goto LABEL_142;
      }

      goto LABEL_137;
    case 2:
      MEMORY[0x1EEE9AC00](v87);
      v88 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v90 = v89;

      goto LABEL_142;
  }

LABEL_122:
  LOBYTE(v227) = 0;
  v230[0] = 0;
  if (__CFStringIsCF())
  {
    v88 = v230[0];

    v90 = 0xE000000000000000;
  }

  else
  {
    v92 = v86;
    v93 = String.init(_nativeStorage:)();
    if (v94)
    {
      v88 = v93;
      v90 = v94;
    }

    else
    {
      v230[0] = [v92 length];
      if (v230[0])
      {
        v88 = String.init(_cocoaString:)();
        v90 = v98;
      }

      else
      {

        v88 = 0;
        v90 = 0xE000000000000000;
      }
    }
  }

LABEL_142:
  if (v88 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v90 == v99)
  {

LABEL_146:
    v101 = [v2 countryCode];
    goto LABEL_147;
  }

  v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v100)
  {
    goto LABEL_146;
  }

  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9E8]);
  v109 = v108;
  if (v107 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v109 == v110)
  {

LABEL_153:
    v101 = [v2 scriptCode];
    goto LABEL_147;
  }

  v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v111)
  {
    goto LABEL_153;
  }

  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695DA10]);
  v114 = v113;
  if (v112 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v114 == v115)
  {

LABEL_158:
    v101 = [v2 variantCode];
LABEL_147:
    v102 = v101;
    if (!v102)
    {
      goto LABEL_179;
    }

LABEL_148:
    v103 = v102;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)(v102);
    v106 = v105;

    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = v104;
    *(a2 + 8) = v106;
    return;
  }

  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v116)
  {
    goto LABEL_158;
  }

  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D998]);
  v119 = v118;
  if (v117 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v119 == v120)
  {

LABEL_163:
    v122 = [v2 exemplarCharacterSet];
    [v122 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for CFCharacterSetRef(0);
    swift_dynamicCast();
    type metadata accessor for __CharacterSetStorage();
    v123 = swift_allocObject();
    *(v123 + 16) = v227;
    *(v123 + 24) = 0;

    *(a2 + 24) = &type metadata for CharacterSet;
    *a2 = v123;
    return;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v121)
  {
    goto LABEL_163;
  }

  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D960]);
  v126 = v125;
  if (v124 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v126 == v127)
  {

LABEL_168:
    v102 = [v2 calendarIdentifier];
    goto LABEL_148;
  }

  v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v128)
  {
    goto LABEL_168;
  }

  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D958]);
  v131 = v130;
  if (v129 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v131 == v132)
  {

LABEL_173:
    v134 = &v2[OBJC_IVAR____NSSwiftLocale_locale];
    v136 = *&v2[OBJC_IVAR____NSSwiftLocale_locale];
    v135 = *(v134 + 1);
    *(a2 + 24) = &type metadata for Calendar;
    ObjectType = swift_getObjectType();
    v138 = *(v135 + 192);
    swift_unknownObjectRetain();
    v138(ObjectType, v135);
    v230[0] = v136;
    v230[1] = v135;
    Calendar.locale.setter(v230);
    return;
  }

  v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v133)
  {
    goto LABEL_173;
  }

  v139 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D968]);
  v141 = v140;
  if (v139 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v141 == v142)
  {

    goto LABEL_178;
  }

  v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v143)
  {
LABEL_178:
    v102 = [v2 collationIdentifier];
    if (!v102)
    {
      goto LABEL_179;
    }

    goto LABEL_148;
  }

  v144 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695DA08]);
  v146 = v145;
  if (v144 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v146 == v147)
  {

LABEL_184:
    v149 = [v2 usesMetricSystem];
    *(a2 + 24) = MEMORY[0x1E69E6370];
    *a2 = v149;
    return;
  }

  v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v148)
  {
    goto LABEL_184;
  }

  v150 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9B8]);
  v152 = v151;
  if (v150 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v152 == v153)
  {

LABEL_189:
    v155 = *&v2[OBJC_IVAR____NSSwiftLocale_locale + 8];
    v156 = swift_getObjectType();
    v157 = *(v155 + 296);
    swift_unknownObjectRetain();
    v157(v230, v156, v155);
    swift_unknownObjectRelease();
    v158 = v230[2];
    v159 = v230[3];
    if (one-time initialization token for us != -1)
    {
      swift_once();
    }

    if (xmmword_1EA7B2450 == __PAIR128__(v159, v158) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v160 = MEMORY[0x1E695D9D0];
    }

    else
    {
      if (one-time initialization token for uk != -1)
      {
        swift_once();
      }

      if (xmmword_1EA7AFAE0 == __PAIR128__(v159, v158) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v160 = MEMORY[0x1E695D9C8];
      }

      else
      {
        if (one-time initialization token for metric != -1)
        {
          swift_once();
        }

        if (xmmword_1EA7B0100 != __PAIR128__(v159, v158))
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v160 = MEMORY[0x1E695D9C0];
      }
    }

    goto LABEL_194;
  }

  v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v154)
  {
    goto LABEL_189;
  }

  v163 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9F0]);
  v165 = v164;
  if (v163 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v165 == v166)
  {

    goto LABEL_206;
  }

LABEL_205:
  v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v167 & 1) == 0)
  {
    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D990]);
    v173 = v172;
    if (v171 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v173 == v174)
    {

LABEL_221:
      v102 = [v2 decimalSeparator];
      goto LABEL_148;
    }

LABEL_220:
    v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v175 & 1) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_221;
  }

LABEL_206:
  v168 = *&v2[OBJC_IVAR____NSSwiftLocale_locale + 8];
  v169 = swift_getObjectType();
  v170 = *(v168 + 408);
  swift_unknownObjectRetain();
  v170(v230, v169, v168);
  swift_unknownObjectRelease();
  if (LOBYTE(v230[0]) != 1)
  {
LABEL_209:
    v160 = MEMORY[0x1E695DA00];
    goto LABEL_194;
  }

  v160 = MEMORY[0x1E695D9F8];
LABEL_194:
  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)(*v160);
  *(a2 + 24) = MEMORY[0x1E69E6158];
  *a2 = v161;
  *(a2 + 8) = v162;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _NSXPCSerializationDecodeInvocationArgumentArray(void *a1, void *a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v33 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v11 = [a2 numberOfArguments];
  result = [a2 _argInfo:0];
  if (*(result + 34) < 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v32 = v13;
  if (v13 < v11)
  {
    v14 = *a5;
    v15 = *a5 + 9;
    if (((*a5 >= 0xFFFFFFFFFFFFFFF7) << 63) >> 63 != *a5 >= 0xFFFFFFFFFFFFFFF7 || a4[1] <= v15)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find array of NSInvocation arguments but there were no entries" userInfo:0]);
    }

    v31 = a5;
    v16 = *(*a4 + v14 + 1);
    v35 = v15;
    v36 = v16;
    v17 = v11;
    if (v11 > v32)
    {
      v18 = v32;
      do
      {
        if (v15 > v36 || v15 >= a4[1])
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find entry in array of NSInvocation arguments but there were no entries" userInfo:0]);
        }

        v19 = *(*a4 + v15);
        v20 = [a2 _argInfo:v18];
        v21 = v20;
        if ((*(v20 + 34) & 0x80) != 0)
        {
          v21 = *v20;
        }

        if (a6 && (v20 = [a6 count], v20 > v18 - v32))
        {
          v20 = [a6 objectAtIndex:?];
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        if ((*(v21 + 34) & 0x1000) != 0)
        {
          if ((v19 & 0xF0) == 0xE0)
          {
            [a1 setArgument:&_NSXPCSerializationDecodeInvocationArgumentArray_argument atIndex:v18];
          }

          else
          {
            v34 = 0;
            v25 = v21;
            do
            {
              v26 = v25;
              if ((*(v25 + 34) & 0x1000) == 0)
              {
                break;
              }

              v25 = *v25;
            }

            while (*v26);
            v27 = *(v26 + 16);
            v28 = [MEMORY[0x1E695DF88] dataWithLength:v27];
            v34 = [v28 mutableBytes];
            [a1 _addAttachedObject:v28];
            _NSXPCSerializationDecodeTypedObjCValuesFromArray(v33, a4, (*v21 + 37), v34, v27, 0, v31, &v35, a1, v22);
            [a1 setArgument:&v34 atIndex:v18];
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](v20);
          v24 = (&v30 - ((v23 + 15) & 0x1FFFFFFF0));
          _NSXPCSerializationDecodeTypedObjCValuesFromArray(v33, a4, (v21 + 37), v24, v23, 0, v31, &v35, a1, v22);
          [a1 setArgument:v24 atIndex:v18];
        }

        result = _getLastByteOfValueIncludingMarker(a4, v35, &v35);
        v15 = v35 + 1;
        v29 = v35++ == -1;
        if (v29 << 63 >> 63 != v29)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Overflow of array data" userInfo:0]);
        }

        ++v18;
      }

      while (v18 != v17);
    }
  }

  return result;
}