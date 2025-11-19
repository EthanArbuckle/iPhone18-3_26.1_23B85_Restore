uint64_t hashProbe(void *a1, uint64_t a2, uint64_t *a3, _BYTE *a4, int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = (*(a1[3] + 16))(a2, *(a1[3] + 8));
  v10 = (0x8D6271D7234E6D5ALL - v9) ^ ((v9 - 0x24FCFFB6D7ECFEF6) << 9);
  v11 = (0x24FCFFB6D7ECFEF7 - v9 - v10) ^ (v10 >> 8);
  v12 = (v9 - 0x24FCFFB6D7ECFEF6 - v10 - v11) ^ (v11 >> 38);
  v13 = (v10 - v11 - v12) ^ (v12 << 23);
  v14 = (v11 - v12 - v13) ^ (v13 >> 5);
  v15 = (v12 - v13 - v14) ^ (v14 >> 35);
  v16 = (v13 - v14 - v15) ^ (v15 << 49);
  v17 = (v14 - v15 - v16) ^ (v16 >> 11);
  v18 = (v15 - v16 - v17) ^ (v17 >> 12);
  v26 = ((v17 - v18 - ((v16 - v17 - v18) ^ (v18 << 18))) ^ (((v16 - v17 - v18) ^ (v18 << 18)) >> 22)) & (a1[6] - 1);
  if (a4)
  {
    *a4 = 0;
  }

LABEL_3:
  for (i = v26; ; i = (a1[6] - 1) & (i + 1))
  {
    v27 = 1;
    v20 = (*(a1[4] + 24))(a1[1] + 8 * i, &v27);
    if (v20)
    {
      break;
    }

    if (v27)
    {
      return i;
    }

    if (a5)
    {
      (*(a1[4] + 48))(a1[1] + 8 * i);
      v22 = a1[5];
      if (v22)
      {
        a1[5] = v22 - 1;
      }

      else
      {
        [a1 raiseCountUnderflowException];
      }

      [a1 rehashAround:i];
      goto LABEL_3;
    }

LABEL_9:
    ;
  }

  v21 = v20;
  if (!(*(a1[3] + 24))(a2, v20, *(a1[3] + 8)))
  {
    (*(a1[4] + 32))(v21);
    goto LABEL_9;
  }

  v23 = a1[4];
  if (a3)
  {
    (*(v23 + 40))(v21);
    *a3 = v21;
  }

  else
  {
    (*(v23 + 32))(v21);
  }

  if (a4)
  {
    *a4 = 1;
  }

  return i;
}

id storeARCWeakAt(uint64_t a1, uint64_t a2, id obj)
{
  v3 = (a1 + 8 * a2);
  if (*v3 == 1)
  {
    *v3 = 0;
  }

  return objc_storeWeak(v3, obj);
}

id startReadARCWeakAutoreleasingWithSentinelAt(id *a1, BOOL *a2)
{
  v2 = *a1;
  if (a2)
  {
    *a2 = v2 == 1;
  }

  if (v2 >= 2)
  {
    return objc_loadWeak(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t probeGC(void *a1, unint64_t a2, _BYTE *a3, uint64_t *a4, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  if (*(v7 + 1) == 1)
  {
    v8 = a2;
  }

  else if (*v7 == 1)
  {
    v8 = a2 >> 3;
  }

  else
  {
    v8 = (*(v7 + 16))(a2, *(v7 + 8));
  }

  v9 = (0x8D6271D7234E6D5ALL - v8) ^ ((v8 - 0x24FCFFB6D7ECFEF6) << 9);
  v10 = (0x24FCFFB6D7ECFEF7 - v8 - v9) ^ (v9 >> 8);
  v11 = (v8 - 0x24FCFFB6D7ECFEF6 - v9 - v10) ^ (v10 >> 38);
  v12 = (v9 - v10 - v11) ^ (v11 << 23);
  v13 = (v10 - v11 - v12) ^ (v12 >> 5);
  v14 = (v11 - v12 - v13) ^ (v13 >> 35);
  v15 = (v12 - v13 - v14) ^ (v14 << 49);
  v16 = (v13 - v14 - v15) ^ (v15 >> 11);
  v17 = (v14 - v15 - v16) ^ (v16 >> 12);
  v18 = ((v16 - v17 - ((v15 - v16 - v17) ^ (v17 << 18))) ^ (((v15 - v16 - v17) ^ (v17 << 18)) >> 22)) & (a1[10] - 1);
  v32 = v18;
  while (1)
  {
    v34 = 1;
    v19 = a1 + 1;
    v20 = a1[4];
    v21 = *(v20 + 4);
    if (v21 != 1)
    {
      break;
    }

    v22 = *(*v19 + 8 * v18);
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (v34)
    {
      return v18;
    }

    if (a5)
    {
      (*(a1[4] + 48))(a1[1] + 8 * v18);
      v23 = (*(a1[8] + 24))(a1[5] + 8 * v18, 0);
      v24 = v23;
      v25 = *(a1[6] + 16);
      if (v25)
      {
        v26 = v23 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v25(v23, *(a1[7] + 8));
      }

      (*(a1[8] + 32))(v24);
      (*(a1[8] + 48))(a1[5] + 8 * v18);
      v27 = a1[9];
      if (v27)
      {
        a1[9] = v27 - 1;
      }

      else
      {
        [a1 raiseCountUnderflowException];
      }

      [a1 rehashAround:v18];
      v18 = v32;
    }

    else
    {
LABEL_21:
      if ((v21 & 1) == 0)
      {
        (*(a1[4] + 32))(v22);
      }

      v18 = (a1[10] - 1) & (v18 + 1);
    }
  }

  v22 = (*(v20 + 24))(*v19 + 8 * v18, &v34);
  if (!v22)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!(*(a1[3] + 24))(a2, v22, *(a1[3] + 8)))
  {
    goto LABEL_21;
  }

  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = v22;
    if ((v21 & 1) == 0)
    {
      v28 = 40;
      goto LABEL_33;
    }
  }

  else if ((v21 & 1) == 0)
  {
    v28 = 32;
LABEL_33:
    (*(a1[4] + v28))(v22);
  }

  return v18;
}

void *retainingAcquire(void *a1, const char *a2, int a3)
{
  if (a3)
  {
    return [a1 copy];
  }

  else
  {
    return a1;
  }
}

void *_NS_os_log_callback(void *result, _BYTE *a2, unint64_t a3, _BYTE *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    v8 = objc_autoreleasePoolPush();
    if (([v7 isProxy] & 1) != 0 || object_isClass(v7))
    {
      v7 = [v7 description];
    }

    if (_NSIsNSObject())
    {
      if (a4 && *a4 != 1)
      {
        v12 = [v7 description];
      }

      else
      {
        v9 = _NSIsNSNumber() ^ 1;
        if (!a4)
        {
          LOBYTE(v9) = 1;
        }

        if ((v9 & 1) == 0)
        {
          *a4 = 0;
        }

        v10 = _NSIsNSCFConstantString() ^ 1;
        if (!a4)
        {
          LOBYTE(v10) = 1;
        }

        if ((v10 & 1) == 0)
        {
          *a4 = 0;
        }

        v11 = objc_opt_class();
        if (class_respondsToSelector(v11, sel_redactedDescription))
        {
          v12 = [v7 redactedDescription];
          if (a4)
          {
            *a4 = 0;
          }
        }

        else
        {
          v12 = &stru_1EEEFDF90;
        }
      }

      v15 = [(__CFString *)v12 length];
      v16 = v15;
      if (v15)
      {
        if (a3 >= 2 && ((v17[0] = 0, ([(__CFString *)v12 getBytes:a2 maxLength:a3 - 1 usedLength:v17 encoding:4 options:2 range:0 remainingRange:v15, 0]& 1) != 0) || [(__CFString *)v12 getBytes:a2 maxLength:a3 - 1 usedLength:v17 encoding:7 options:2 range:0 remainingRange:v16, 0]))
        {
          a2[v17[0]] = 0;
          v13 = 1;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 1;
        if (a2)
        {
          v14 = 1;
          if (a3)
          {
            *a2 = 0;
          }

          goto LABEL_32;
        }
      }

      v14 = 1;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

LABEL_32:
    objc_autoreleasePoolPop(v8);
    return (v13 & v14);
  }

  return result;
}

void sub_18075EB98(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x18075EBACLL);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t startReadPointerAt(uint64_t *a1, BOOL *a2)
{
  result = *a1;
  if (a2)
  {
    *a2 = result == 0;
  }

  return result;
}

id NSAllocateObject(Class aClass, NSUInteger extraBytes, NSZone *zone)
{
  Instance = class_createInstance(aClass, extraBytes);
  if (!Instance)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"*** NSAllocateObject(): attempt to allocate object of class '%s' failed", class_getName(aClass)), 0}];
    objc_exception_throw(v7);
  }

  v5 = Instance;
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    object_getClassName(Instance);
    __CFSetLastAllocationEventName();
  }

  return v5;
}

uint64_t objectEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

id startReadARCWeakAutoreleasingAt(id *a1, BOOL *a2)
{
  if (*a1)
  {
    result = objc_loadWeak(a1);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = result == 0;
  return result;
}

void *__cdecl NSMapGet(NSMapTable *table, const void *key)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "void * _Nullable NSMapGet(NSMapTable * _Nonnull, const void * _Nullable)");
  }

  return [(NSMapTable *)table objectForKey:key];
}

id __NSConcreteUUID.init()()
{
  v5 = *MEMORY[0x1E69E9840];
  memset(out, 0, sizeof(out));
  _foundation_uuid_generate_random(out);
  v4 = *out;
  *&v0[OBJC_IVAR_____NSConcreteUUID__storage] = *out;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __NSConcreteUUID();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t allocateInitialCapacity(uint64_t *a1, uint64_t a2)
{
  result = (*(a1[3] + 8))(a2);
  *a1 = result;
  if (!result)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** NSHashTable unable to allocate memory -- allocation function failed" userInfo:0]);
  }

  return result;
}

uint64_t allocateInitialCapacity_0(uint64_t *a1, uint64_t a2)
{
  result = (*(a1[3] + 8))(a2);
  *a1 = result;
  if (!result)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** NSMapTable unable to allocate memory -- allocation function failed" userInfo:0]);
  }

  return result;
}

uint64_t allocateInitialCapacity_1(uint64_t *a1, uint64_t a2)
{
  result = (*(a1[3] + 8))(a2);
  *a1 = result;
  if (!result)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** NSPointerArray unable to allocate memory -- allocation function failed" userInfo:0]);
  }

  return result;
}

char *allocateStorageWithSentinel(unint64_t a1)
{
  if (a1 >> 61)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * a1, 0x80040B8603338uLL);
  if (result && a1)
  {
    v3 = (a1 + 1) & 0x3FFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a1 - 1);
    v5 = xmmword_1812187D0;
    v6 = result + 8;
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = 1;
      }

      if (v8.i8[4])
      {
        *v6 = 1;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

NSString *__cdecl NSStringFromSelector(SEL aSelector)
{
  IndirectASCIITaggedPointerString = aSelector;
  if (!aSelector)
  {
    return IndirectASCIITaggedPointerString;
  }

  if ((aSelector & 0x8000000000000000) != 0 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    if (NSStringFromSelector_warnOnce != -1)
    {
      dispatch_once(&NSStringFromSelector_warnOnce, &__block_literal_global_29);
    }

    return IndirectASCIITaggedPointerString;
  }

  Name = sel_getName(IndirectASCIITaggedPointerString);
  if (!Name)
  {
    return 0;
  }

  v3 = Name;
  v4 = strlen(Name);
  if (_CFBytesInASCII())
  {
    IndirectASCIITaggedPointerString = _CFStringCreateIndirectASCIITaggedPointerString();
    if (IndirectASCIITaggedPointerString)
    {
      return IndirectASCIITaggedPointerString;
    }
  }

  v5 = [[NSString alloc] initWithBytesNoCopy:v3 length:v4 encoding:4 freeWhenDone:0];

  return v5;
}

NSString *__cdecl NSStringFromClass(Class aClass)
{
  if (!aClass)
  {
    return 0;
  }

  Name = class_getName(aClass);
  if (!Name)
  {
    return 0;
  }

  v2 = [[NSString alloc] initWithCString:Name encoding:4];

  return v2;
}

id *clearARCWeakAt(id *location)
{
  v1 = location;
  if (*location)
  {
    location = objc_storeWeak(location, 0);
  }

  *v1 = 0;
  return location;
}

CFTypeRef _NSDescriptionWithStringProxyFunc(void *a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0;
  }

  if (a5)
  {
    *a5 = 1;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = [a1 _dynamicContextEvaluation:a2 patternString:a3];
  if (!v10)
  {
    return 0;
  }

  return CFRetain(v10);
}

CFTypeRef _NSDescriptionWithLocaleFunc(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [a1 descriptionWithLocale:a2];
    }

    else
    {
      v5 = [a1 description];
    }

    v2 = vars8;
  }

  else
  {
    v5 = @"*nil*";
  }

  if (!v5)
  {
    v5 = @"*nil description*";
  }

  return CFRetain(v5);
}

uint64_t NSKeyValueAccessorIsEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return [v5 isEqual:{v2, v3}];
  }
}

uint64_t _NSGetUsingKeyValueGetter(uint64_t a1, void *a2)
{
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {
    os_unfair_lock_assert_not_owner(&_NSKeyValueObserverRegistrationLock);
  }

  v5 = a2[5];
  v4 = a2[6];
  v6 = a2[4];
  if (v4 == 2)
  {
    if (v5)
    {
      v9 = a2[5];
    }

    else
    {
      v9 = 0;
    }

    v13 = a2[7];
    v14 = a2[8];

    return v6(a1, v9, v13, v14);
  }

  else if (v4 == 1)
  {
    if (v5)
    {
      v8 = a2[5];
    }

    else
    {
      v8 = 0;
    }

    v11 = a2[7];

    return (v6)(a1, v8, v11);
  }

  else if (v4)
  {
    if (v5)
    {
      v10 = a2[5];
    }

    else
    {
      v10 = 0;
    }

    v15 = a2[7];
    v16 = a2[8];
    v17 = a2[9];

    return (v6)(a1, v10, v15, v16, v17);
  }

  else
  {
    if (v5)
    {
      v7 = a2[5];
    }

    else
    {
      v7 = 0;
    }

    return (v6)(a1, v7);
  }
}

NSString *_NSNewStringByAppendingStrings(malloc_zone_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t a9, uint64_t a10)
{
  v39[80] = *MEMORY[0x1E69E9840];
  v38 = &a10;
  v11 = a9;
  if (a9)
  {
    v12 = 0;
    LOBYTE(v13) = 1;
    do
    {
      if (v12 == 40)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Too many strings to append" userInfo:0]);
      }

      if (v13)
      {
        v14 = [v11 fastestEncoding];
        if (__NSDefaultStringEncodingFullyInited == 1)
        {
          v15 = _NSDefaultStringEncoding;
        }

        else
        {
          v15 = _NSDefaultCStringEncoding();
        }

        v13 = v14 == v15;
      }

      else
      {
        v13 = 0;
      }

      v39[v12] = v11;
      v16 = v12 + 1;
      v17 = v38++;
      v11 = *v17;
      ++v12;
    }

    while (*v17);
    v18 = 0;
    v19 = v16 - 1;
    while (1)
    {
      v20 = v39[v18];
      if (v13)
      {
        v21 = [v20 cStringLength];
        v39[v18 + 40] = v21;
        v11 += v21;
        if (v19 == v18)
        {
          v37 = a1;
          if (v11)
          {
            v24 = a1;
            if (!a1)
            {
              v24 = malloc_default_zone();
            }

            v25 = malloc_type_zone_malloc(v24, v11, 0x409734D7uLL);
          }

          else
          {
            v25 = 0;
          }

          v28 = 0;
          v36 = v25;
          do
          {
            v29 = v39[v28];
            v30 = v39[v28 + 40];
            if (__NSDefaultStringEncodingFullyInited == 1)
            {
              v31 = _NSDefaultStringEncoding;
            }

            else
            {
              v31 = _NSDefaultCStringEncoding();
            }

            [v29 getBytes:v25 maxLength:v30 usedLength:0 encoding:v31 options:0 range:0 remainingRange:{v30, 0}];
            v25 += v30;
            ++v28;
          }

          while (v16 != v28);
          v23 = v36;
          a1 = v37;
          return [[NSString allocWithZone:?]length:"initWithCStringNoCopy:length:freeWhenDone:" freeWhenDone:v23, v11, 1];
        }
      }

      else
      {
        v22 = [v20 length];
        v39[v18 + 40] = v22;
        v11 += v22;
        if (v19 == v18)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          if (v11)
          {
            v26 = a1;
            if (!a1)
            {
              v26 = malloc_default_zone();
            }

            v27 = malloc_type_zone_malloc(v26, 2 * v11, 0x409734D7uLL);
          }

          else
          {
            v27 = 0;
          }

          v33 = 0;
          v34 = v27;
          do
          {
            v35 = v39[v33 + 40];
            [v39[v33] getCharacters:v34 range:{0, v35}];
            v34 += 2 * v35;
            ++v33;
          }

          while (v16 != v33);
          return [[NSString allocWithZone:?]length:"initWithCharactersNoCopy:length:freeWhenDone:" freeWhenDone:v27, v11, 1];
        }
      }

      ++v18;
    }
  }

  v23 = 0;
  return [[NSString allocWithZone:?]length:"initWithCStringNoCopy:length:freeWhenDone:" freeWhenDone:v23, v11, 1];
}

Class NSClassFromString(Class aClassName)
{
  v6 = *MEMORY[0x1E69E9840];
  if (aClassName)
  {
    v1 = aClassName;
    v2 = [(objc_class *)aClassName length];
    if ([(objc_class *)v1 getCString:v5 maxLength:1000 encoding:4]&& strlen(v5) == v2)
    {
      v3 = v5;
      return objc_lookUpClass(v3);
    }

    if (!v2)
    {
LABEL_9:
      v3 = [(objc_class *)v1 UTF8String];
      return objc_lookUpClass(v3);
    }

    v4 = 0;
    while ([(objc_class *)v1 characterAtIndex:v4])
    {
      if (v2 == ++v4)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return aClassName;
}

id static String._unconditionallyBridgeFromObjectiveC(_:)(id result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  isTaggedPointer = _objc_isTaggedPointer(result);
  v3 = v1;
  v4 = v3;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v3);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v6;
        }

        goto LABEL_7;
      }

      result = [v4 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v13)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return v14;
    }

LABEL_15:
    v12 = result;

    return v12;
  }

LABEL_7:
  if (__CFStringIsCF())
  {

    return 0;
  }

  v7 = v4;
  v8 = String.init(_nativeStorage:)();
  if (v9)
  {
    v10 = v8;

    return v10;
  }

  if (![v7 length])
  {

    return 0;
  }

  return String.init(_cocoaString:)();
}

uint64_t UUID.uuidString.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  v2 = *v0;
  _foundation_uuid_unparse_upper(&v2, out);
  return String.init(cString:)();
}

void __NSOQSchedule(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v26, 0, sizeof(v26));
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 168);
    v3 = *(a1 + 172);
    v4 = (v2 - v3);
    if (v2 <= v3)
    {
      os_unfair_lock_unlock((a1 + 8));
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v23 = 32;
      ptr = v26;
      do
      {
        v7 = atomic_load((a1 + 500));
        if ((v7 & 1) != 0 || v6 >= 6)
        {
          break;
        }

        v24 = ((__NSOperationPrios[v6] + ((__NSOperationPrios[v6] >> 13) & 3)) >> 2) + 2;
        v8 = *(a1 + 32 + 8 * v24);
        if (v8)
        {
          v9 = 0;
          while (1)
          {
            v10 = atomic_load((a1 + 500));
            if (v10)
            {
              goto LABEL_36;
            }

            v11 = v8;
            v8 = *(v8 + 24);
            v12 = atomic_load((v11 + 237));
            if (v12 == 80)
            {
              break;
            }

LABEL_31:
            if (v8)
            {
              v20 = v4 == 0;
            }

            else
            {
              v20 = 1;
            }

            v9 = v11;
            if (v20)
            {
              goto LABEL_36;
            }
          }

          v13 = atomic_load((v11 + 239));
          if ((v13 & 1) == 0)
          {
            os_unfair_lock_lock((v11 + 232));
            v16 = *(v11 + 56);
            os_unfair_lock_unlock((v11 + 232));
            if (!v16)
            {
              if (v5 + 1 <= v23)
              {
                v18 = ptr;
              }

              else
              {
                v17 = malloc_good_size(8 * v23 + 8);
                v23 = v17 >> 3;
                if (ptr == v26)
                {
                  v18 = malloc_type_malloc(v17 & 0xFFFFFFFFFFFFFFF8, 0x80040B8603338uLL);
                  memmove(v18, ptr, 8 * v5);
                }

                else
                {
                  v18 = malloc_type_realloc(ptr, v17 & 0xFFFFFFFFFFFFFFF8, 0x80040B8603338uLL);
                }
              }

              ptr = v18;
              *(v18 + v5++) = v11;
            }

            goto LABEL_31;
          }

          v14 = (v9 + 24);
          if (!v9)
          {
            v14 = (a1 + 32 + 8 * v24);
          }

          *v14 = v8;
          if (!v8)
          {
            *(a1 + 80 + 8 * v24) = v9;
          }

          *(v11 + 24) = 0;
          atomic_store(0x88u, (v11 + 237));
          ++*(a1 + 172);
          if (*(a1 + 506))
          {
            v15 = MEMORY[0x1E69E96A0];
            goto LABEL_22;
          }

          v15 = *(a1 + 176);
          if (v15)
          {
LABEL_22:
            dispatch_retain(v15);
          }

          else
          {
            v15 = oq_synthesize_backing_queue(a1);
          }

          os_unfair_lock_lock((v11 + 232));
          v19 = _Block_copy(*(v11 + 112));
          os_unfair_lock_unlock((v11 + 232));
          if (object_getClass(v11) == _NSBarrierOperation)
          {
            dispatch_barrier_async(v15, v19);
          }

          else
          {
            dispatch_async(v15, v19);
          }

          --v4;
          dispatch_release(v15);
          _Block_release(v19);
          v11 = v9;
          goto LABEL_31;
        }

LABEL_36:
        ++v6;
      }

      while (v4 > 0);
      os_unfair_lock_unlock((a1 + 8));
      if (v5)
      {
        v21 = ptr;
        do
        {
          if ([*v21 isReady])
          {
            atomic_store(1u, *v21 + 239);
          }

          v22 = *v21++;

          --v5;
        }

        while (v5);
      }

      if (ptr != v26)
      {
        free(ptr);
      }
    }
  }
}

uint64_t oq_get_property_qos(uint64_t a1)
{
  v1 = atomic_load((a1 + 502));
  v2 = 5;
  if (v1 > 20)
  {
    if (v1 == 21)
    {
      return -1;
    }

    v3 = 25;
    if (v1 == 33)
    {
      v2 = 33;
    }

    v4 = v1 == 25;
  }

  else
  {
    if (!v1)
    {
      return 0;
    }

    v3 = 9;
    if (v1 == 17)
    {
      v2 = 17;
    }

    v4 = v1 == 9;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void __addOperations(objc_class *a1, const char *a2, uint64_t a3, unint64_t a4, char a5)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!(a3 | a4) || a4 && ![a4 count])
  {
    return;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3052000000;
  v65 = __Block_byref_object_copy__12;
  v66 = __Block_byref_object_dispose__12;
  v67 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3052000000;
  v61[3] = __Block_byref_object_copy__12;
  v61[4] = __Block_byref_object_dispose__12;
  v61[5] = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v46 = ____addOperations_block_invoke;
  v47 = &unk_1E69F5240;
  v48 = a1;
  v49 = &v53;
  v50 = &v57;
  v51 = v61;
  v52 = &v62;
  if (a3)
  {
    ____addOperations_block_invoke(v45, a3);
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v10 = [a4 countByEnumeratingWithState:&v69 objects:v68 count:16];
    if (v10)
    {
      v11 = *v70;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v70 != v11)
          {
            objc_enumerationMutation(a4);
          }

          v46(v45, *(*(&v69 + 1) + 8 * i));
        }

        v10 = [a4 countByEnumeratingWithState:&v69 objects:v68 count:16];
      }

      while (v10);
    }
  }

  if (v58[3])
  {
    for (j = v63[5]; j; v63[5] = j)
    {
      v25 = j;
      j = *(j + 16);
      os_unfair_lock_lock((v25 + 232));
      v26 = *(v25 + 32);
      *(v25 + 32) = 0;
      v28 = *(v25 + 104);
      v27 = *(v25 + 112);
      *(v25 + 104) = 0;
      *(v25 + 112) = 0;
      os_unfair_lock_unlock((v25 + 232));

      if (v27)
      {
        _Block_release(v27);
      }

      *(v63[5] + 8) = 0;
      v29 = v63;
      *(v63[5] + 16) = 0;
      v30 = 72;
      atomic_compare_exchange_strong((v29[5] + 237), &v30, 0);
    }

    if (a4)
    {
      v21 = _NSMethodExceptionProem(a1, a2);
      v22 = v58[3];
      v23 = "s are";
      if (v22 == 1)
      {
        v23 = " is";
      }

      v24 = [NSString stringWithFormat:@"%@: %lu (of %lu) operation%s finished, executing, or already in a queue, and cannot be enqueued", v21, v22, v54[3] + v22, v23];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0]);
    }

    v31 = atomic_load((a3 + 237));
    HIDWORD(v33) = v31 - 216;
    LODWORD(v33) = v31 - 216;
    v32 = v33 >> 2;
    if ((v32 - 6) >= 2)
    {
      if (!v32 || v32 == 2)
      {
        v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: operation is executing and cannot be enqueued", _NSMethodExceptionProem(a1, a2)), 0}];
        objc_exception_throw(v34);
      }

      v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: operation is already enqueued on a queue", _NSMethodExceptionProem(a1, a2)), 0}];
      objc_exception_throw(v36);
    }

    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: operation is finished and cannot be enqueued", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v35);
  }

  v13 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = ____addOperations_block_invoke_5;
  v39 = &unk_1E69F5268;
  v44 = a5;
  v40 = a1;
  v41 = &v53;
  v42 = &v62;
  v43 = v61;
  v14 = 1;
  do
  {
    while (1)
    {
      v15 = v14;
      v16 = _NSOperationQueueOperationsAndOperationCountKeys[v13];
      if (v16 == @"operations")
      {
        break;
      }

      if (v16 == @"operationCount")
      {
        v17 = a1 + 504;
        goto LABEL_21;
      }

      v14 = 0;
      v13 = 1;
      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v17 = a1 + 503;
LABEL_21:
    v18 = atomic_load(v17);
    v19 = v18 != 0;
    if (v18)
    {
      break;
    }

    v14 = 0;
    v13 = 1;
  }

  while (((v15 ^ 1) & 1) == 0);
  if (v19)
  {
    [(objc_class *)a1 _changeValueForKeys:_NSOperationQueueOperationsAndOperationCountKeys count:2 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v37];
    goto LABEL_26;
  }

LABEL_25:
  v38(v37);
LABEL_26:
  if ((a5 & 1) == 0)
  {
    __NSOQSchedule(a1);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(v61, 8);
  _Block_object_dispose(&v62, 8);
}

void sub_18076171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void ____addOperations_block_invoke(void *a1, uint64_t a2)
{
  v3 = 0;
  block[6] = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong((a2 + 237), &v3, 0x48u);
  if (v3)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  else
  {
    ++*(*(a1[5] + 8) + 24);
    if (*(*(a1[6] + 8) + 24))
    {
      v5 = 72;
      atomic_compare_exchange_strong((a2 + 237), &v5, 0);
    }

    else
    {
      v6 = a2;
      atomic_store([a2 isReady], (a2 + 239));
      v7 = atomic_load((a2 + 241));
      if (v7)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ____addOperations_block_invoke_2;
        block[3] = &unk_1E69F2080;
        block[4] = a1[4];
        block[5] = a2;
        v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
      }

      else
      {
        v9 = a1[4];
        if (oq_get_property_qos(v9))
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ____addOperations_block_invoke_4;
          aBlock[3] = &unk_1E69F2080;
          aBlock[4] = v9;
          aBlock[5] = a2;
          v8 = _Block_copy(aBlock);
        }

        else
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = ____addOperations_block_invoke_3;
          v15[3] = &unk_1E69F2080;
          v15[4] = v9;
          v15[5] = a2;
          v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
        }
      }

      v10 = v8;
      v11 = a1[4];
      os_unfair_lock_lock((a2 + 232));
      if (*(a2 + 32))
      {
        __assert_rtn("iop_set_queue_and_adopt_schedule_locked", "NSOperation.m", 316, "iop->__queue == nil");
      }

      *(a2 + 32) = v11;
      if (*(a2 + 112))
      {
        __assert_rtn("iop_set_queue_and_adopt_schedule_locked", "NSOperation.m", 318, "iop->__schedule == nil");
      }

      *(a2 + 112) = v10;
      *(a2 + 104) = voucher_copy();
      os_unfair_lock_unlock((a2 + 232));
      *(a2 + 8) = *(*(a1[7] + 8) + 40);
      *(a2 + 16) = 0;
      v12 = *(*(a1[7] + 8) + 40);
      if (v12)
      {
        v13 = (v12 + 16);
      }

      else
      {
        v13 = (*(a1[8] + 8) + 40);
      }

      *v13 = a2;
      *(*(a1[7] + 8) + 40) = a2;
    }
  }
}

void ____addOperations_block_invoke_5(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    atomic_fetch_add_explicit((*(a1 + 32) + 144), *(*(*(a1 + 40) + 8) + 24), memory_order_relaxed);
  }

  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    *(v2 + 8) = v3;
    if (!v3)
    {
      v3 = *(a1 + 32);
    }

    *(v3 + 16) = v2;
    *(*(a1 + 32) + 24) = *(*(*(a1 + 56) + 8) + 40);
    do
    {
      if ((*(a1 + 64) & 1) == 0)
      {
        for (i = *(*(a1 + 32) + 72); i; i = i[3])
        {
          iop_addDependency((v2 + 8), i, v2);
        }
      }

      v5 = 72;
      atomic_compare_exchange_strong((v2 + 237), &v5, 0x50u);
      v6 = *(v2 + 238);
      if (v6 == 255)
      {
        if (*(*(a1 + 32) + 168) == 1)
        {
          v6 = 0;
        }

        else
        {
          property_qos = op_get_property_qos(v2);
          v6 = 0;
          if (property_qos > 16)
          {
            if (property_qos > 24)
            {
              if (property_qos == 25)
              {
                v6 = 4;
              }

              else
              {
                if (property_qos != 33)
                {
                  goto LABEL_35;
                }

                v6 = 8;
              }
            }

            else if (property_qos == 17)
            {
              v6 = 252;
            }

            else if (property_qos != 21)
            {
              goto LABEL_35;
            }
          }

          else if ((property_qos + 1) >= 2)
          {
            if (property_qos != 5 && property_qos != 9)
            {
LABEL_35:
              __break(1u);
              return;
            }

            v6 = 248;
          }
        }
      }

      *(v2 + 24) = 0;
      v7 = 8 * (((v6 + ((v6 >> 13) & 3)) << 24) >> 26) + 16;
      v8 = *(a1 + 32) + v7;
      v9 = *(v8 + 80);
      v10 = (v8 + 32);
      if (v9)
      {
        v10 = (v9 + 24);
      }

      *v10 = v2;
      *(*(a1 + 32) + v7 + 80) = v2;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v12 = (*(a1 + 32) + 8);

    os_unfair_lock_unlock(v12);
  }
}

uint64_t op_get_property_qos(uint64_t a1)
{
  v1 = atomic_load((a1 + 241));
  v2 = 5;
  if (v1 > 20)
  {
    if (v1 == 21)
    {
      return -1;
    }

    v3 = 25;
    if (v1 == 33)
    {
      v2 = 33;
    }

    v4 = v1 == 25;
  }

  else
  {
    if (!v1)
    {
      return 0;
    }

    v3 = 9;
    if (v1 == 17)
    {
      v2 = 17;
    }

    v4 = v1 == 9;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

id specialized Data.init(referencing:)(void *a1)
{
  result = [a1 length];
  if (result)
  {
    v3 = result;
    if ([a1 respondsToSelector_])
    {
      [a1 _providesConcreteBacking];
    }

    [a1 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSData();
    swift_dynamicCast();
    v4 = [v8 bytes];
    v5 = [v8 length];
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    type metadata accessor for __DataStorage();
    v7 = swift_allocObject();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 64) = 0;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    *(v7 + 48) = _NSBundleDeallocatingImmortalBundle;
    *(v7 + 56) = v6;
    return specialized Data._Representation.init(_:count:)(v7, v3);
  }

  return result;
}

uint64_t sub_180761EE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t __DataStorage.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = v1[6];
    if (v3)
    {
      v4 = v1[3];

      v3(v2, v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);
    }

    else
    {
      free(v2);
    }
  }

  v5 = v1[6];
  v1[6] = 0;
  v1[7] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v5);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v1[6]);

  return swift_deallocClassInstance();
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Int64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v8 = [a1 *a5];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v9 = [objc_allocWithZone(NSNumber) *a6];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    *a2 = v8;
    *(a2 + 8) = 0;
  }

  return v10 & 1;
}

uint64_t type metadata accessor for NSMorphologyPronoun(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id _NSGetUnsignedIntValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithUnsignedInt:{(Implementation)(a1, Name)}];

  return v8;
}

id NSFastEnumerationIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 200);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  if (*(v1 + 208) < v4)
  {
    *(v1 + 200) = 0;
    result = *v1;
    if (!*v1 || (v6 = *(v1 + 152), v33 = *(v1 + 136), v34 = v6, v7 = *(v1 + 184), v35 = *(v1 + 168), v36 = v7, v8 = *(v1 + 88), v29 = *(v1 + 72), v30 = v8, v9 = *(v1 + 120), v31 = *(v1 + 104), v32 = v9, v10 = *(v1 + 24), v25 = *(v1 + 8), v26 = v10, v11 = *(v1 + 56), v27 = *(v1 + 40), v28 = v11, v24 = 0, *&v34 = &v24, result = [result countByEnumeratingWithState:&v33 objects:&v25 count:16], v12 = v34, *(v1 + 136) = v33, *(v1 + 152) = v12, v13 = v36, *(v1 + 168) = v35, *(v1 + 184) = v13, v14 = v30, *(v1 + 72) = v29, *(v1 + 88) = v14, v15 = v32, *(v1 + 104) = v31, *(v1 + 120) = v15, v16 = v26, *(v1 + 8) = v25, *(v1 + 24) = v16, v17 = v28, *(v1 + 40) = v27, v18 = *(&v33 + 1), v19 = &v25 == *(&v33 + 1), *(v1 + 208) = result, *(v1 + 216) = v19, *(v1 + 56) = v17, !result))
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    if (&v25 == v18)
    {
LABEL_9:
      v20 = *(v1 + 8);
      if (v20)
      {
        swift_unknownObjectRetain();
        result = swift_getObjectType();
        *(a1 + 24) = result;
        *a1 = v20;
        *(v1 + 200) = 1;
        return result;
      }

      goto LABEL_50;
    }

    v3 = 0;
LABEL_11:
    v21 = *(v1 + 144);
    if (v21)
    {
      v22 = *(v21 + 8 * v3);
      if (v22)
      {
        swift_unknownObjectRetain();
        result = swift_getObjectType();
      }

      else
      {
        result = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = v22;
      *(a1 + 24) = result;
      *(v1 + 200) = v3 + 1;
      return result;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    JUMPOUT(0x180762484);
  }

  if ((*(v1 + 216) & 1) == 0)
  {
    goto LABEL_11;
  }

  switch(v3)
  {
    case 0:
      goto LABEL_9;
    case 1:
      goto LABEL_35;
    case 2:
      goto LABEL_27;
    case 3:
      goto LABEL_31;
    case 4:
      goto LABEL_21;
    case 5:
      goto LABEL_37;
    case 6:
      goto LABEL_41;
    case 7:
      goto LABEL_33;
    case 8:
      goto LABEL_45;
    case 9:
      goto LABEL_25;
    case 10:
      goto LABEL_43;
    case 11:
      goto LABEL_19;
    case 12:
      goto LABEL_23;
    case 13:
      goto LABEL_39;
    case 14:
      v23 = *(v1 + 120);
      if (v23)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_19:
      v23 = *(v1 + 96);
      if (!v23)
      {
        __break(1u);
LABEL_21:
        v23 = *(v1 + 40);
        if (!v23)
        {
          __break(1u);
LABEL_23:
          v23 = *(v1 + 104);
          if (!v23)
          {
            __break(1u);
LABEL_25:
            v23 = *(v1 + 80);
            if (!v23)
            {
              __break(1u);
LABEL_27:
              v23 = *(v1 + 24);
              if (!v23)
              {
                __break(1u);
LABEL_29:
                v23 = *(v1 + 128);
                if (!v23)
                {
                  __break(1u);
LABEL_31:
                  v23 = *(v1 + 32);
                  if (!v23)
                  {
                    __break(1u);
LABEL_33:
                    v23 = *(v1 + 64);
                    if (!v23)
                    {
                      __break(1u);
LABEL_35:
                      v23 = *(v1 + 16);
                      if (!v23)
                      {
                        __break(1u);
LABEL_37:
                        v23 = *(v1 + 48);
                        if (!v23)
                        {
                          __break(1u);
LABEL_39:
                          v23 = *(v1 + 112);
                          if (!v23)
                          {
                            __break(1u);
LABEL_41:
                            v23 = *(v1 + 56);
                            if (!v23)
                            {
                              __break(1u);
LABEL_43:
                              v23 = *(v1 + 88);
                              if (!v23)
                              {
                                __break(1u);
LABEL_45:
                                v23 = *(v1 + 72);
                                if (!v23)
                                {
                                  goto LABEL_51;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_46:
      swift_unknownObjectRetain();
      result = swift_getObjectType();
      *(a1 + 24) = result;
      *a1 = v23;
      *(v1 + 200) = v4;
      break;
    case 15:
      goto LABEL_29;
    default:
      goto LABEL_52;
  }

  return result;
}

const UInt8 *bytesInEncoding(void *a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = [a1 length];
  v11 = v10;
  v22 = 0;
  v23 = 0;
  v12 = a5;
  if (a4)
  {
    v13 = 6;
  }

  else
  {
    v13 = 4;
  }

  if (v10 > 0xA5 || ([a1 getBytes:bytes maxLength:1000 usedLength:&v23 encoding:a2 options:v13 | a5 range:0 remainingRange:{v10, 0}] & 1) == 0 || (v14 = v23, bytes[v23] = 0, v15 = CFDataCreate(0, bytes, v14 + 1), BytePtr = CFDataGetBytePtr(v15), v17 = v15, !BytePtr))
  {
    if ([a1 getBytes:0 maxLength:0x7FFFFFFFFFFFFFFELL usedLength:&v23 encoding:a2 options:v13 | v12 range:0 remainingRange:{v11, 0}] && (v18 = objc_msgSend(objc_msgSend(MEMORY[0x1E695DF88], "dataWithLength:", v23 + 1), "mutableBytes")) != 0 && (BytePtr = v18, objc_msgSend(a1, "getBytes:maxLength:usedLength:encoding:options:range:remainingRange:", v18, v23, &v22, a2, v13 | v12, 0, v11, 0)) && v22 == v23)
    {
      BytePtr[v22] = 0;
    }

    else
    {
      if (a3)
      {
        v20 = MEMORY[0x1E695DF30];
        v21 = [NSString stringWithFormat:@"Conversion to encoding %ld failed", a2];
        objc_exception_throw([v20 exceptionWithName:@"NSCharacterConversionException" reason:v21 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", a1, @"_NSString", 0)}]);
      }

      return 0;
    }
  }

  return BytePtr;
}

uint64_t _NSAppendPathComponent(unsigned __int16 *a1, uint64_t *a2, int64_t a3, void *__src, int64_t a5)
{
  if (!a5)
  {
    return 1;
  }

  v7 = *a2;
  if (*a2)
  {
    if (v7 == 1)
    {
      v8 = 47;
      v9 = a1;
    }

    else
    {
      if (v7 != 2 || (v8 = *a1, v8 != 92))
      {
        v11 = 1;
        goto LABEL_11;
      }

      v9 = a1 + 1;
    }

    v11 = *v9 != v8;
LABEL_11:
    if (v7 + a5 + v11 <= a3)
    {
      if (v11)
      {
        a1[v7++] = 47;
        *a2 = v7;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (a5 > a3)
  {
    return 0;
  }

  v7 = 0;
LABEL_17:
  memmove(&a1[v7], __src, 2 * a5);
  *a2 += a5;
  return 1;
}

id __NSConcreteUUID.init(uuidBytes:)(__int128 *a1)
{
  if (a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0uLL;
  }

  *&v1[OBJC_IVAR_____NSConcreteUUID__storage] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for __NSConcreteUUID();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL _NSTransmutePathSlashes(_WORD *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 2 && *a1 == 92)
  {
    v3 = 2 * (a1[1] == 92);
  }

  else
  {
    v3 = 0;
  }

  if (v3 < v2)
  {
    v4 = v3;
    while (1)
    {
      v5 = a1[v4];
      if (v5 == 47)
      {
        break;
      }

      v8 = v4 + 1;
      a1[v3] = v5;
LABEL_16:
      ++v3;
      v4 = v8;
      if (v8 >= v2)
      {
        goto LABEL_19;
      }
    }

    a1[v3] = 47;
    if (v2 <= v4 + 1)
    {
      v6 = v4 + 1;
    }

    else
    {
      v6 = v2;
    }

    v7 = v6 - 1;
    while (v7 != v4)
    {
      v8 = v4 + 1;
      v9 = a1[++v4];
      if (v9 != 47)
      {
        goto LABEL_16;
      }
    }

    ++v3;
  }

LABEL_19:
  *a2 = v3;
  return v2 != v3;
}

void freeWeakStorage(id *location, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = location;
    do
    {
      if (*v4 >= 2)
      {
        objc_storeWeak(v4, 0);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  free(location);
}

void *allocateStorage(size_t a1)
{
  if (a1 >> 61)
  {
    return 0;
  }

  else
  {
    return malloc_type_calloc(a1, 8uLL, 0x80040B8603338uLL);
  }
}

objc_class *_NSKVONotifyingOriginalClassForIsa(objc_class *a1)
{
  v1 = a1;
  if (class_getMethodImplementation(a1, sel__isKVOA) == NSKVOIsAutonotifying)
  {
    return *object_getIndexedIvars(v1);
  }

  return v1;
}

void NSKVOClass(void *a1, const char *a2)
{
  Class = object_getClass(a1);
  v4 = _NSKVONotifyingOriginalClassForIsa(Class);
  if (Class == v4)
  {
    class_getInstanceMethod(v4, a2);

    method_invoke();
  }

  else
  {

    objc_opt_class();
  }
}

uint64_t NSConcreteMapTable_reclaim(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = a1 + 24;
  v15 = a1 + 16;
  v16 = a1 + 8;
  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = (*(*(a1 + 32) + 24))(*(a1 + 8) + v2, 0);
    v8 = (*(*(a1 + 64) + 24))(*(a1 + 40) + v2, 0);
    if (v7 | v8)
    {
      v9 = v8;
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v12 = *(*(a1 + 16) + 16);
        if (v12)
        {
          v12(v7, *(*(a1 + 24) + 8));
        }

        (*(*(a1 + 32) + 48))(*(a1 + 8) + v2);
        *(a1 + 116) = 1;
        (*(*(v5 + 8) + 32))(v7);
      }

      else
      {
        if (v7)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8 == 0;
        }

        if (v11)
        {
          (*(*(v5 + 8) + 32))(v7);
          (*(*(v5 + 40) + 32))(v9);
          ++v3;
        }

        else
        {
          v13 = *(*(v16 + 40) + 16);
          if (v13)
          {
            v13(v8, *(*(v15 + 8) + 8));
          }

          (*(*(a1 + 64) + 48))(*(a1 + 40) + v2);
          *(a1 + 116) = 1;
          (*(*(v5 + 40) + 32))(v9);
        }
      }
    }

    objc_autoreleasePoolPop(v6);
    ++v4;
    v2 += 8;
  }

  while (v4 < *(a1 + 80));
  return v3;
}

void *_NSKeyValueRetainedObservationInfoForObject(void *a1, uint64_t a2)
{
  os_unfair_lock_lock(&NSKeyValueObservationInfoLock);
  os_unfair_lock_assert_owner(&NSKeyValueObservationInfoLock);
  if (a2)
  {
    v4 = (*(a2 + 16))(a1, sel_observationInfo);
  }

  else
  {
    v4 = [a1 observationInfo];
  }

  v5 = v4;
  v6 = v4;
  os_unfair_lock_unlock(&NSKeyValueObservationInfoLock);
  return v5;
}

void NSKeyValueWillChangeWithPerThreadPendingNotifications(void *a1, uint64_t a2, int a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, void, unint64_t, uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v31 = a5;
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v10 = _NSKeyValueRetainedObservationInfoForObject(a1, 0);
  v11 = [a1 _implicitObservationInfo];
  v12 = v11;
  if (v10)
  {
    v11 = [*(v10 + 8) count];
    v13 = v11;
    if (v12)
    {
LABEL_3:
      v11 = [*(v12 + 8) count];
      v14 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v28 = a2;
  v15 = v14 + v13;
  MEMORY[0x1EEE9AC00](v11);
  v17 = (&v26 - v16);
  if (v10)
  {
    _NSKeyValueObservationInfoGetObservances(v10, &v26 - v16, v13);
  }

  v29 = a3;
  if (v12)
  {
    _NSKeyValueObservationInfoGetObservances(v12, &v17[v13], v14);
  }

  v27 = &v17[v13];
  v18 = a6;
  if (v15)
  {
    v19 = v17;
    v20 = v14 + v13;
    do
    {
      if (([(NSKeyValueObservance *)*v19 tryRetainMembers]& 1) == 0)
      {
        *v19 = 0;
      }

      ++v19;
      --v20;
    }

    while (v20);
  }

  os_unfair_recursive_lock_unlock();
  if (v10 | v12)
  {
    v32[1] = 1;
    v21 = v28;
    v22 = v18;
    v23 = v18;
    v24 = v29;
    v32[0] = NSKVOCopyPendingNotificationStack(a1, v28, v23, v29, 1);
    v33 = v10;
    if (v10)
    {
      NSKeyValueWillChange(a1, v21, v24, v17, v13, v30, v31, NSKeyValuePushPendingNotificationPerThread, v32, v22);
    }

    if (v12)
    {
      v33 = 0;
      NSKeyValueWillChange(a1, v21, v24, v27, v14, v30, v31, NSKeyValuePushPendingNotificationPerThread, v32, v22);
    }

    if (!CFArrayGetCount(v32[0]))
    {
      NSKVOPendingNotificationStackRemove(a1, v21, v22, v24);
    }

    CFRelease(v32[0]);
  }

  for (; v15; --v15)
  {
    v25 = *v17++;
    [(NSKeyValueObservance *)v25 releaseMembers];
  }
}

CFMutableDictionaryRef NSKVOPendingPerThreadNotificationStack(char a1)
{
  v2 = _CFGetTSD();
  if (v2)
  {
    v3 = v2;
    result = *v2;
    if (!result && (a1 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (a1)
  {
    v5 = malloc_default_zone();
    v3 = malloc_type_zone_calloc(v5, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
    result = *v3;
    if (!*v3)
    {
LABEL_4:
      result = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &NSKVOPendingNotificationStackIdentifierCallbacks, MEMORY[0x1E695E9E8]);
      *v3 = result;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t dealloc(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    if (v2[3] && v2[6])
    {
      result = empty_0(result, a2);
      v2 = v4[3];
    }

    v5 = v2[2];
    if (v5)
    {
      v6 = *v4;

      return v5(v6, a2);
    }
  }

  return result;
}

id *clearARCWeakAtWithSentinel(id *location)
{
  v1 = location;
  if (*location >= 2)
  {
    location = objc_storeWeak(location, 0);
  }

  *v1 = 1;
  return location;
}

uint64_t empty(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = 0;
    do
    {
      v5 = (*(v3[3] + 24))(*v3 + v4, 0);
      v6 = v5;
      if (v5)
      {
        v7 = *(v3[1] + 16);
        if (v7)
        {
          v7(v5, *(v3[2] + 8));
        }
      }

      (*(v3[3] + 48))(*v3 + v4);
      result = (*(v3[3] + 32))(v6);
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t empty_0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = 0;
    do
    {
      v5 = (*(v3[3] + 24))(*v3 + v4, 0);
      v6 = v5;
      if (v5)
      {
        v7 = *(v3[1] + 16);
        if (v7)
        {
          v7(v5, *(v3[2] + 8));
        }
      }

      (*(v3[3] + 32))(v6);
      result = (*(v3[3] + 48))(*v3 + v4);
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

void NSKeyValueDidChangeWithPerThreadPendingNotifications(void *a1, uint64_t a2, char a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, _BOOL8, unint64_t, _OWORD *), uint64_t a5)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v10 = NSKVOCopyPendingNotificationStack(a1, a2, a5, a3, 0);
  if (v10)
  {
    v11 = v10;
    if (CFArrayGetCount(v10) >= 1)
    {
      v12 = a1;
      v13[0] = v11;
      v13[1] = 0;
      v13[2] = a5;
      NSKeyValueDidChange(a1, a2, a3, a4, 0, NSKeyValuePopPendingNotificationPerThread, v13);
      if (!CFArrayGetCount(v11))
      {
        NSKVOPendingNotificationStackRemove(a1, a2, a5, a3);
      }
    }

    CFRelease(v11);
  }
}

CFTypeRef NSKVOCopyPendingNotificationStack(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a5;
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = NSKVOPendingPerThreadNotificationStack(a5);
  }

  else
  {
    v9 = [a1 _pendingChangeNotificationsArrayForKey:a2 create:a5];
  }

  v10 = v9;
  if (!v9 || (v5 & 1) == 0 && CFDictionaryGetCount(v9) < 1)
  {
    return 0;
  }

  *&v17 = a1;
  *(&v17 + 1) = a2;
  v18 = a3;
  Value = CFDictionaryGetValue(v10, &v17);
  if (!Value)
  {
    if (v5)
    {
      Value = CFArrayCreateMutable(*MEMORY[0x1E695E4A8], 0, &NSKVOPendingNotificationArrayCallbacks);
      v12 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
      v13 = v18;
      *v12 = v17;
      *(v12 + 2) = v13;
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      CFDictionarySetValue(v10, v12, Value);
      CFRelease(Value);
    }
  }

  if (Value)
  {
    return CFRetain(Value);
  }

  else
  {
    return 0;
  }
}

void *NSSliceInitWithSlice(void *a1, void *a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x1080040B03C7EFDuLL);
  a1[1] = v4;
  v5 = a2[1];
  v6 = *(v5 + 16);
  *v4 = *v5;
  v4[2] = v6;
  result = malloc_type_malloc(0x28uLL, 0x10800408D251DEBuLL);
  a1[2] = result;
  v8 = a2[2];
  v9 = *v8;
  v10 = v8[1];
  result[4] = *(v8 + 4);
  *result = v9;
  *(result + 1) = v10;
  if (a2[3])
  {
    result = malloc_type_malloc(0x40uLL, 0x1080040E27AD052uLL);
    a1[3] = result;
    v11 = a2[3];
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[1];
    *result = *v11;
    *(result + 1) = v14;
    *(result + 2) = v13;
    *(result + 3) = v12;
  }

  *a1 = 0;
  return result;
}

uint64_t static String._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
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
      return 1;
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

  result = [v6 UTF8String];
  if (result)
  {
    v15 = String.init(utf8String:)(result);
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
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int32()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInt_];
}

double NSArray.makeIterator()@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_unknownObjectRetain();

  return NSFastEnumerationIterator.init(_:)(v2, a1);
}

double NSFastEnumerationIterator.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0;
  return result;
}

size_t _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t a5)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  getContiguousArrayStorageType<A>(for:)(a5, a5);
  v12 = *(*(a5 - 8) + 72);
  v13 = *(*(a5 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = result - ((v13 + 32) & ~v13);
  if (v15 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v17 = v15 / v12;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v14[2] = v10;
  v14[3] = isClassOrObjCExistentialType & 1 | (2 * v17);
LABEL_19:
  v19 = *(a5 - 8);
  if (v7)
  {
    if (v14 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v14 + v20 >= a4 + v20 + *(v19 + 72) * v10))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t static Array._unconditionallyBridgeFromObjectiveC(_:)(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v5 = a1;
  }

  type metadata accessor for _ContiguousArrayStorage();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    [a1 copy];
    if (isClassOrObjCExistentialType)
    {
      v7 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      specialized _arrayForceCast<A, B>(_:)(v8, a2);
      v7 = v9;
    }

    return v7;
  }

  return result;
}

void specialized _arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v11 = a1 >> 62;
  if (isClassOrObjCExistentialType)
  {
    if (v11)
    {

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      specialized _ContiguousArrayBuffer.storesOnlyElementsOfType<A>(_:)(a1 & 0xFFFFFFFFFFFFFF8, a2);
    }

    return;
  }

  if (!v11)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_20:
    _swift_isClassOrObjCExistentialType();
    return;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_6:
  v22 = MEMORY[0x1E69E7CC0];
  v20[1] = type metadata accessor for ContiguousArray();
  ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v21 = MEMORY[0x1865CC0E0](i, a1);
        swift_dynamicCast();
        v22 = v13;
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
          v13 = v22;
        }

        *(v13 + 16) = v16 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v9, a2);
      }
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v21 = *v17;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v22 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
          v13 = v22;
        }

        *(v13 + 16) = v19 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v6, a2);
        ++v17;
        --v12;
      }

      while (v12);
    }
  }
}

uint64_t CFBasicHashFindBucket@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if ((v3 & 0x3F0000) != 0)
  {
    v4 = v3 & 3;
    if (v4 <= 1)
    {
      if (v4 == 1)
      {
        return ___CFBasicHashFindBucket1(result, a2, 0, a3);
      }

      else
      {
        __break(1u);
      }
    }

    else if (v4 == 2)
    {
      return ___CFBasicHashFindBucket2(result, a2, 0, a3);
    }

    else
    {
      return ___CFBasicHashFindBucket3(result, a2, 0, a3);
    }
  }

  else
  {
    v5 = (*(result + 24) << 32) & 0xFFFFFF0000000000;
    *a3 = -1;
    *(a3 + 8) = v5;
    *(a3 + 16) = v5;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
  }

  return result;
}

unint64_t ___CFBasicHashFindBucket1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  result = (**(a1 + 32))();
  v8 = *(a1 + 16);
  if ((v8 & 0x18) != 0)
  {
    v9 = (v8 >> 3) & 3;
    if (!v9)
    {
      goto LABEL_51;
    }

    v10 = (a1 + 8 * v9 + 40);
  }

  else
  {
    v10 = (a1 + 40);
  }

  v11 = *v10;
  if ((v8 & 0xE000) == 0)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (!(v8 >> 13))
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v12 = *(a1 + 8 * (v8 >> 13) + 40);
LABEL_9:
  v13 = (*(a1 + 24) << 32) & 0xFFFFFF0000000000;
  v14 = __CFBasicHashTableSizes[(v8 >> 16) & 0x3F];
  a4[1] = ~v13;
  a4[2] = 0;
  v15 = result % v14;
  a4[3] = ~v13;
  a4[4] = 0;
  if (v14 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14;
  }

  a4[5] = 0;
  a4[6] = 0;
  v17 = -1;
  while (1)
  {
    v18 = *(v11 + 8 * v15);
    if (v18 == v13)
    {
      *a4 = v17;
      if (v17 == -1)
      {
        a4[3] = v13;
        *a4 = v15;
        a4[1] = v13;
      }

      return result;
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (v18 == ~v13)
    {
      if (v17 == -1)
      {
        v17 = v15;
      }

      goto LABEL_15;
    }

    if (v18 == a2)
    {
      break;
    }

    if (!v12 || *(v12 + 8 * v15) == result)
    {
      v31 = v12;
      v32 = result;
      v30 = v17;
      v19 = (**(a1 + 32))(a1, 20, v18, a2);
      v17 = v30;
      v12 = v31;
      v20 = v19 == 0;
      result = v32;
      if (!v20)
      {
        goto LABEL_33;
      }
    }

LABEL_15:
    if (v15 + 1 < v14)
    {
      ++v15;
    }

    else
    {
      v15 = v15 + 1 - v14;
    }

    if (!--v16)
    {
      *a4 = v17;
      return result;
    }
  }

  v18 = a2;
LABEL_33:
  *a4 = v15;
  v21 = *(a1 + 16);
  v22 = v18;
  if ((v21 & 0x18) != 0)
  {
    v22 = *(*(a1 + 40) + 8 * v15);
  }

  a4[3] = v22;
  if ((v21 & 4) != 0)
  {
    v23 = *(*(a1 + 48) + 8 * v15);
  }

  else
  {
    v23 = 0;
  }

  a4[4] = v23;
  a4[1] = v18;
  if ((v21 & 0x60) != 0)
  {
    v24 = (v21 >> 5) & 3;
    if (!v24)
    {
      goto LABEL_51;
    }

    v25 = *(*(a1 + 8 * v24 + 40) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  a4[2] = v25;
  if ((v21 & 0x380) != 0)
  {
    v26 = (v21 >> 7) & 7;
    if (!v26)
    {
      goto LABEL_51;
    }

    v27 = *(*(a1 + 8 * v26 + 40) + 8 * v15);
  }

  else
  {
    v27 = 1;
  }

  a4[5] = v27;
  if ((v21 & 0x1C00) != 0)
  {
    v28 = (v21 >> 10) & 7;
    if (!v28)
    {
      goto LABEL_51;
    }

    v29 = *(*(a1 + 8 * v28 + 40) + 8 * v15);
  }

  else
  {
    v29 = 1;
  }

  a4[6] = v29;
  return result;
}

__CFString *__NSMapTableCallback(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v7 = a5[1];
  if (a2 > 15)
  {
    if (a2 <= 21)
    {
      if (a2 != 16)
      {
        if (a2 == 20)
        {
          v11 = v7[2];
          if (v11)
          {
            return v11();
          }

          else
          {
            return (a3 == a4);
          }
        }

        return v6;
      }

      v6 = v7[4];
      if (v6)
      {
LABEL_24:
        v6();
        return 0;
      }

      return v6;
    }

    switch(a2)
    {
      case 22:
        v14 = v7[1];
        if (!v14)
        {
          return a3;
        }

        return v14();
      case 24:
        v8 = v7[9];
        if (!v8)
        {
          return CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"<%p>", a3);
        }

        break;
      case 26:
        v8 = v7[5];
        if (!v8)
        {
          return CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"<%p>", a3);
        }

        break;
      default:
        return v6;
    }

    v15 = v8();
    return CFRetain(v15);
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      v13 = v7[7];
      if (!v13)
      {
        return a3;
      }

      goto LABEL_33;
    }

    if (a2 != 12)
    {
      if (a2 != 14)
      {
        return v6;
      }

      v6 = v7[8];
      if (!v6)
      {
        return v6;
      }

      goto LABEL_24;
    }

    v13 = v7[3];
    if (v13)
    {
LABEL_33:
      v13();
    }

    return a3;
  }

  if (a2 != 8)
  {
    if (a2 == 9)
    {
      free(a5);
      return 0;
    }

    return v6;
  }

  result = malloc_type_malloc(0x10uLL, 0x71B11C72uLL);
  if (result)
  {
    v6 = result;
    *&result->isa = *a5;
    return v6;
  }

  qword_1EA7BB378 = "unable to allocate space for callbacks";
  __break(1u);
  return result;
}

void NSMapInsertKnownAbsent(NSMapTable *table, const void *key, const void *value)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "void NSMapInsertKnownAbsent(NSMapTable * _Nonnull, const void * _Nullable, const void * _Nullable)");
  }

  [(NSMapTable *)table setItem:value forKnownAbsentKey:key];
}

id static Data._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = specialized Data.init(referencing:)(v1);

  return v2;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_24;
  }

  v2 = a2;
  if (a2 <= 14)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = a1[5];
        v6 = __OFSUB__(0, v5);
        v7 = -v5;
        if (v6)
        {
          goto LABEL_29;
        }

        v8 = (v7 + v4);
      }

      else
      {
        v8 = 0;
      }

      if (a1[3] < v2)
      {
        v2 = a1[3];
      }

      v10 = &v8[v2];
      if (v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11 - v8;
      if (v8)
      {
        v13 = v11 - v8;
      }

      else
      {
        v13 = 0;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        if (v13 <= 0xFF)
        {
          __dst = 0;
          v17 = v13;
          v16 = 0;
          v15 = 0;
          if (v8 && v8 != v10)
          {
            memcpy(&__dst, v8, v12);

            return __dst;
          }

LABEL_24:

          return 0;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (a2 <= 0x7FFFFFFE)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t CFBasicHashAddValue(unint64_t result, uint64_t a2)
{
  v3 = result;
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v4 = *(result + 16);
  if ((v4 & 0x3F0000) != 0)
  {
    v5 = v4 & 3;
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      result = ___CFBasicHashFindBucket1(result, a2, 0, v11);
    }

    else if (v5 == 2)
    {
      result = ___CFBasicHashFindBucket2(result, a2, 0, v11);
    }

    else
    {
      result = ___CFBasicHashFindBucket3(result, a2, 0, v11);
    }
  }

  else
  {
    v6 = (*(result + 24) << 32) & 0xFFFFFF0000000000;
    *v11 = -1;
    *&v11[8] = v6;
    *&v11[16] = v6;
    memset(&v11[24], 0, 32);
  }

  if (*&v11[40])
  {
    *(v3 + 30) = ((*(v3 + 30) << 48) + 0x1000000000000) >> 48;
    v7 = *(v3 + 16);
    if ((v7 & 0x380) != 0)
    {
      v8 = (v7 >> 7) & 7;
      if (v8)
      {
        ++*(*(v3 + 8 * v8 + 40) + 8 * *v11);
        return result;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9[0] = *v11;
    v9[1] = *&v11[16];
    v9[2] = *&v11[32];
    v10 = *&v11[48];
    return __CFBasicHashAddValue(v3, v9, a2);
  }

  return result;
}

uint64_t __CFBasicHashAddValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  *(a1 + 30) = ((*(a1 + 30) << 48) + 0x1000000000000) >> 48;
  result = (**(a1 + 32))();
  v7 = result;
  v8 = *(a1 + 16);
  if ((v8 & 0x18) != 0)
  {
    result = (**(a1 + 32))(a1, 12, a3, 0);
    v9 = result;
    v8 = *(a1 + 16);
    if ((v8 & 4) == 0)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = result;
    if ((v8 & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  result = (**(a1 + 32))(a1, 11, 0, 0);
  v10 = result;
  v8 = *(a1 + 16);
LABEL_6:
  if ((v8 & 0x60) != 0)
  {
    result = (**(a1 + 32))(a1, 13, 0, 0);
    v11 = result;
    v8 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
  }

  if (__CFBasicHashTableCapacities[(v8 >> 16) & 0x3F] <= v8 >> 22)
  {
    __CFBasicHashRehash(a1, 1);
    if ((*(a1 + 16) & 3u) <= 1)
    {
      if ((*(a1 + 16) & 3) != 1)
      {
        goto LABEL_43;
      }

      result = ___CFBasicHashFindBucket1(a1, v9, 1, v22);
    }

    else if ((*(a1 + 16) & 3) == 2)
    {
      result = ___CFBasicHashFindBucket2(a1, v9, 1, v22);
    }

    else
    {
      result = ___CFBasicHashFindBucket3(a1, v9, 1, v22);
    }

    v12 = v22[1];
    *a2 = v22[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v22[2];
    *(a2 + 48) = v23;
  }

  v13 = *(a1 + 24);
  v14 = (v13 << 32) & 0xFFFFFF0000000000;
  if (*(a2 + 8) == ~v14)
  {
    *(a1 + 24) = v13 & 0xFFFF0000FFFFFFFFLL | (((v13 + 0xFFFF00000000) >> 32) << 32);
  }

  if (v9 == v14 || v9 == ~v14)
  {
    result = __CFBasicHashFindNewMarker(a1, v9);
  }

  v16 = a1 + 40;
  *(*(a1 + 40) + 8 * *a2) = v7;
  v17 = *(a1 + 16);
  if ((v17 & 4) != 0)
  {
    *(*(a1 + 48) + 8 * *a2) = v10;
    v17 = *(a1 + 16);
  }

  if ((v17 & 0x18) != 0)
  {
    v18 = (v17 >> 3) & 3;
    if (!v18)
    {
      goto LABEL_43;
    }

    *(*(v16 + 8 * v18) + 8 * *a2) = v9;
    v17 = *(a1 + 16);
  }

  if ((v17 & 0x60) != 0)
  {
    v19 = (v17 >> 5) & 3;
    if (!v19)
    {
      goto LABEL_43;
    }

    *(*(v16 + 8 * v19) + 8 * *a2) = v11;
    v17 = *(a1 + 16);
  }

  if ((v17 & 0x380) != 0)
  {
    v20 = (v17 >> 7) & 7;
    if (!v20)
    {
      goto LABEL_43;
    }

    *(*(v16 + 8 * v20) + 8 * *a2) = 1;
    v17 = *(a1 + 16);
  }

  if ((v17 & 0x1C00) != 0)
  {
    v21 = (v17 >> 10) & 7;
    if (!v21)
    {
      goto LABEL_43;
    }

    *(*(v16 + 8 * v21) + 8 * *a2) = 0;
    v17 = *(a1 + 16);
  }

  if ((v17 & 0xE000) != 0)
  {
    result = (**(a1 + 32))(a1, 22, v9, 0);
    if (*(a1 + 16) >> 13)
    {
      *(*(v16 + 8 * (*(a1 + 16) >> 13)) + 8 * *a2) = result;
      v17 = *(a1 + 16);
      goto LABEL_42;
    }

LABEL_43:
    __break(1u);
  }

LABEL_42:
  *(a1 + 16) = v17 + 0x400000;
  return result;
}

void _NSMutableDataGrowBytes(uint64_t a1, const char *a2, size_t a3, int a4)
{
  v8 = 1;
  if (a3 >> 19)
  {
    v8 = 2;
  }

  v9 = a3 >> v8;
  if (__CFADD__(v9, a3))
  {
    v9 = 0;
  }

  v10 = v9 + a3;
  if (*(a1 + 24) <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  v12 = [a1 length];
  if (v11 > 0x20000)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 32))
  {
    v37 = a2;
    v38 = a4;
    v14 = [a1 _canUseRealloc];
    v15 = v14;
    if (v12)
    {
      v16 = a3 / v12 > 3;
    }

    else
    {
      v16 = 1;
    }

    v17 = v14 ^ 1;
    if ((v13 & v16 & 1) != 0 || v17)
    {
      v18 = malloc_default_zone();
      v19 = malloc_type_zone_calloc(v18, 1uLL, v11, 0x5525ABDBuLL);
      if (v19)
      {
        v20 = v19;
        v21 = *(a1 + 32);
        if (v12 < 0x80000)
        {
          v23 = v12;
          if (!v12)
          {
LABEL_43:
            a4 = v38;
LABEL_55:
            [a1 _freeBytes];
            goto LABEL_58;
          }
        }

        else
        {
          v22 = MEMORY[0x1E69E9AC8];
          if (((*MEMORY[0x1E69E9AC8] - 1) & (v21 | v19)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
          {
            v19 = v20;
            v23 = v12;
          }

          else
          {
            v34 = v12 & -*v22;
            NSCopyMemoryPages(v21, v20, v34);
            v21 += v34;
            v19 = &v20[v34];
            v23 = v12 - v34;
            if (v12 == v34)
            {
              goto LABEL_43;
            }
          }
        }

        memmove(v19, v21, v23);
        goto LABEL_43;
      }
    }

    if (v15)
    {
      v24 = MEMORY[0x1865CFE30](*(a1 + 32), v11, 362851216, 0);
      if (v24)
      {
        v20 = v24;
        v13 = 0;
        a4 = v38;
        goto LABEL_58;
      }

      if (a3 > 0x20000)
      {
        v13 = v38;
      }

      else
      {
        v13 = 0;
      }

      v32 = v13 & v16;
      a4 = v38;
      if (((v32 | v17) & 1) == 0)
      {
LABEL_50:
        v20 = MEMORY[0x1865CFE30](*(a1 + 32), a3, 1461746568, 0);
        v13 = 0;
        v11 = a3;
        if (v20)
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }
    }

    else
    {
      a4 = v38;
      if (a3 > 0x20000)
      {
        v13 = v38;
      }

      else
      {
        v13 = 0;
      }
    }

    v27 = malloc_default_zone();
    v28 = malloc_type_zone_calloc(v27, 1uLL, a3, 0x5525ABDBuLL);
    if (!v28)
    {
      if (!v15)
      {
        goto LABEL_70;
      }

      goto LABEL_50;
    }

    v20 = v28;
    v29 = *(a1 + 32);
    if (v12 < 0x80000)
    {
      v23 = v12;
      if (!v12)
      {
LABEL_54:
        v11 = a3;
        goto LABEL_55;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9AC8];
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v29 | v28)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
      {
        v28 = v20;
        v23 = v12;
      }

      else
      {
        v35 = v12 & -*v30;
        NSCopyMemoryPages(v29, v20, v35);
        v29 += v35;
        v28 = &v20[v35];
        v23 = v12 - v35;
        a4 = v38;
        if (!v23)
        {
          goto LABEL_54;
        }
      }
    }

    memmove(v28, v29, v23);
    goto LABEL_54;
  }

  v25 = malloc_default_zone();
  if (v13)
  {
    v26 = malloc_type_zone_calloc(v25, 1uLL, v11, 0x5525ABDBuLL);
  }

  else
  {
    v26 = malloc_type_zone_malloc(v25, v11, 0xCEBFB2E4uLL);
  }

  v20 = v26;
  if (!v26)
  {
    v37 = a2;
    if (a4)
    {
      v31 = malloc_default_zone();
      if (a3 > 0x20000)
      {
        v13 = 1;
        v20 = malloc_type_zone_calloc(v31, 1uLL, a3, 0x5525ABDBuLL);
        if (v20)
        {
          goto LABEL_58;
        }

LABEL_70:
        v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unable to allocate memory for length (%lu)", _NSMethodExceptionProem(a1, v37), a3), 0}];
        objc_exception_throw(v36);
      }
    }

    else
    {
      v31 = malloc_default_zone();
    }

    v20 = malloc_type_zone_malloc(v31, a3, 0xCEBFB2E4uLL);
    v13 = 0;
    if (v20)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

LABEL_58:
  if (a3 > v12 && a4 && (v13 & 1) == 0)
  {
    bzero(&v20[v12], a3 - v12);
  }

  *(a1 + 32) = v20;
  *(a1 + 24) = v11;
  *(a1 + 8) &= ~4u;
  if (v13)
  {
    v33 = 0;
  }

  else
  {
    v33 = 2;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFD | v33;
}

unint64_t lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII()
{
  result = lazy protocol witness table cache variable for type Unicode.ASCII and conformance Unicode.ASCII;
  if (!lazy protocol witness table cache variable for type Unicode.ASCII and conformance Unicode.ASCII)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.ASCII and conformance Unicode.ASCII);
  }

  return result;
}

uint64_t _NSFileExists(uint64_t result, BOOL *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = [result getFileSystemRepresentation:v5 maxLength:1024];
    if (result)
    {
      memset(&v4, 0, sizeof(v4));
      v3 = stat(v5, &v4);
      result = v3 == 0;
      if (a2)
      {
        if (!v3)
        {
          *a2 = (v4.st_mode & 0xF000) == 0x4000;
        }
      }
    }
  }

  return result;
}

uint64_t _NSStandardizePathRewriteAutomountIsPathExcluded(_WORD *a1, uint64_t a2)
{
  v2 = _NSStandardizePathRewriteAutomountIsPathExcluded_exclusionList;
  v3 = "/Applications";
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    v5 = 0;
    v6 = (v3 + 1);
    v7 = a1;
    v8 = a1;
    while (a2 > v5 >> 1 && *v8 == v4)
    {
      ++v8;
      v9 = *v6++;
      v4 = v9;
      ++v7;
      v5 += 2;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v10 = v2[1];
    ++v2;
    v3 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  v7 = a1;
  v8 = a1;
LABEL_9:
  if (a2 > v7 - a1 && *v8 != 47)
  {
    goto LABEL_11;
  }

  return 1;
}

BOOL _NSFileExistsAtPath(void *a1, uint64_t a2, uint64_t a3, stat *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = [objc_allocWithZone(NSCheapMutableString) init];
  [v8 setContentsNoCopy:a2 length:a3 freeWhenDone:0 isUnicode:1];
  LODWORD(a3) = [a1 getFileSystemRepresentation:v10 maxLength:1026 withPath:v8];

  result = 0;
  if (a3)
  {
    return stat(v10, a4) == 0;
  }

  return result;
}

void _sortedObjectsUsingDescriptors(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = v9;
  v11 = 0;
  do
  {
    if (*(a1 + 8 * v11) == v9)
    {
      *(a1 + 8 * v11) = 0;
    }

    ++v11;
  }

  while (a2 != v11);
  v12 = [a3 count];
  v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00404BF391D6uLL);
  *v13 = malloc_type_calloc(v12, 0x30uLL, 0x10A004036D404F5uLL);
  if (v12)
  {
    v14 = 0;
    v15 = 8;
    do
    {
      v16 = [a3 objectAtIndex:v14];
      v17 = *v13;
      if ((*(v16 + 8) & 4) != 0)
      {
        free(v17);
        free(v13);
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Sort descriptor was decoded from a secure archive and local evaluation is not enabled." userInfo:0]);
      }

      *&v17[v15] = v16;
      ++v14;
      v15 += 48;
    }

    while (v12 != v14);
  }

  v35 = a3;
  v13[3] = 0;
  v13[4] = v12;
  v13[1] = a1;
  v13[2] = a2;
  _NSInitializeCacheLine(0, v13);
  v18 = *v13;
  if (!*(*v13 + 16))
  {
    v19 = 0;
    v20 = (*v18 + 8);
    do
    {
      v21 = v13[1];
      v22 = *(v21 + 8 * v19);
      if (*(v18 + 3))
      {
        v22 = [*(v21 + 8 * v19) valueForKeyPath:?];
      }

      if (v22 == [MEMORY[0x1E695DFB0] null])
      {
        v22 = 0;
      }

      MethodImplementation = _NSNullCompare;
      if (v22)
      {
        if (*(v18 + 5))
        {
          v24 = objc_opt_class();
          MethodImplementation = class_getMethodImplementation(v24, *(v18 + 5));
        }

        else
        {
          MethodImplementation = *(*(v18 + 1) + 32);
        }
      }

      *(v20 - 1) = MethodImplementation;
      *v20 = v22;
      ++v19;
      v20 += 2;
    }

    while (a2 != v19);
  }

  v25 = 0;
  v26 = xmmword_1812187D0;
  v27 = vdupq_n_s64(a2 - 1);
  v28 = vdupq_n_s64(2uLL);
  do
  {
    v29 = vmovn_s64(vcgeq_u64(v27, v26));
    if (v29.i8[0])
    {
      v8[v25] = v25;
    }

    if (v29.i8[4])
    {
      v8[v25 + 1] = v25 + 1;
    }

    v25 += 2;
    v26 = vaddq_s64(v26, v28);
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v25);
  [v35 count];
  CFMergeSortArray();
  v30 = 0;
  do
  {
    v31 = *(a1 + 8 * v8[v30]);
    if (!v31)
    {
      v31 = v10;
    }

    *(a4 + 8 * v30++) = v31;
  }

  while (a2 != v30);
  v32 = v13[3];
  v33 = *v13;
  if (v32)
  {
    v34 = v33 + 2;
    do
    {
      if (!*v34)
      {
        free(*(v34 - 2));
      }

      v34 += 6;
      --v32;
    }

    while (v32);
  }

  free(v33);
  free(v13);

  free(v8);
}

void *_NSInitializeCacheLine(uint64_t a1, void *a2)
{
  v3 = *a2 + 48 * a1;
  v4 = *(v3 + 8);
  *(v3 + 32) = [v4 ascending];
  *(v3 + 33) = [v4 reverseNullOrder];
  *(v3 + 40) = [v4 selector];
  *(v3 + 24) = [v4 key];
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, sel_compareObject_toObject_);
  if (MethodImplementation == _NSInternalCompareObject)
  {
    *(v3 + 16) = 0;
    result = malloc_type_calloc(a2[2], 0x10uLL, 0x80040803F642BuLL);
  }

  else
  {
    v7 = MethodImplementation;
    result = 0;
    *(v3 + 16) = v7;
  }

  *v3 = result;
  ++a2[3];
  return result;
}

SEL NSSelectorFromString(SEL aSelectorName)
{
  v6 = *MEMORY[0x1E69E9840];
  if (aSelectorName)
  {
    v1 = aSelectorName;
    v2 = [aSelectorName length];
    if ([v1 getCString:v5 maxLength:1000 encoding:4] && strlen(v5) == v2)
    {
      v3 = v5;
      return sel_registerName(v3);
    }

    if (!v2)
    {
LABEL_9:
      v3 = [v1 UTF8String];
      return sel_registerName(v3);
    }

    v4 = 0;
    while ([v1 characterAtIndex:v4])
    {
      if (v2 == ++v4)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return aSelectorName;
}

objc_class *_NSSetCheckSize(objc_class *result, const char *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %ld", _NSMethodExceptionProem(result, a2), a4, a3), 0}];
    objc_exception_throw(v4);
  }

  return result;
}

uint64_t pathifiedNSURL(void *a1, NSError **a2)
{
  if (!_NSIsNSURL() || ([a1 isFileURL] & 1) == 0 && objc_msgSend(a1, "scheme"))
  {
    return a1;
  }

  result = [a1 path];
  if (!result)
  {
    if (a2)
    {
      v5 = _NSErrorWithFilePath(258, a1);
      result = 0;
      *a2 = v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t @objc static NSData._readBytes(fromPath:maxLength:bytes:length:didMap:options:reportProgress:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char **a5, char **a6, BOOL *a7, char a8, char a9)
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static NSData._readBytes(fromPath:maxLength:bytes:length:didMap:options:reportProgress:)(v14, v15, a4, a5, a6, a7, a8, a9);

  return 1;
}

unint64_t specialized static NSData._readBytes(fromPath:maxLength:bytes:length:didMap:options:reportProgress:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char **a5, BOOL *a6, char a7, char a8)
{
  v24 = MEMORY[0x1E69E7CC8];
  v21[0] = a1;
  v21[1] = a2;
  v22 = 0;
  v16 = a3 == 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(v21, a8, v17, v16, a7, MEMORY[0x1E69E7CC0], &v24, v23);
  outlined consume of PathOrURL(a1, a2, 0);

  if (!v8)
  {
    v19 = v23[1];
    v20 = v23[2];
    *a4 = v23[0];
    *a5 = v19;
    *a6 = v20 == 1;
    return outlined consume of Data.Deallocator?(v20);
  }

  return result;
}

uint64_t readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, char **a8@<X8>)
{
  LOBYTE(v10) = a4;
  v329 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 8);
  LOBYTE(v14) = *(a1 + 16);
  v320 = *a1;
  *&v328.st_dev = *a1;
  v328.st_ino = v13;
  LOBYTE(v328.st_uid) = v14;
  if (!PathOrURL.isEmpty.getter())
  {
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
  v15 = objc_allocWithZone(NSError);
  v16 = String._bridgeToObjectiveCImpl()();

  v17 = [v15 initWithDomain:v16 code:258 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v18 = [v17 domain];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(v18);
  v10 = v19;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
  a5 = v21;
  if (v14 == v20 && v10 == v21)
  {

    return swift_willThrow();
  }

  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (a3)
  {
    return swift_willThrow();
  }

  __break(1u);
LABEL_8:
  v314 = v13;
  if (v14)
  {
    ObjectType = swift_getObjectType();
    v24 = (*(v13 + 240))(ObjectType, v13);
    v13 = v25;
  }

  else
  {

    v24 = v320;
  }

  v27 = specialized String.withFileSystemRepresentation<A>(_:)(v24, v13);
  if (v8)
  {
  }

  v28 = v27;

  if ((v28 & 0x80000000) != 0)
  {
    v33 = MEMORY[0x1865CA7A0](v29);
    v34 = v33;
    if (v14)
    {
      v35 = v314;
      if (v33 > 26)
      {
        if (v33 == 27)
        {
          v36 = 263;
          goto LABEL_156;
        }

        if (v33 != 63)
        {
          if (v33 == 102)
          {
            swift_unknownObjectRetain();
            v62 = 0;
            v36 = 256;
LABEL_161:
            v141 = swift_getObjectType();
            (*(v35 + 240))(v141, v35);
            v142 = v35;
            v143 = String._bridgeToObjectiveCImpl()();

            v144 = (*(v142 + 432))(v141, v142);
            outlined consume of PathOrURL(v320, v142, 1);
            if (v62)
            {
              *&v328.st_dev = v62;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v62 = v62;
              v145 = _getErrorEmbeddedNSError<A>(_:)();

              if (v145)
              {
              }

              else
              {
                swift_allocError();
                *v147 = v62;
              }

              v146 = _swift_stdlib_bridgeErrorToNSError();
            }

            else
            {
              v146 = 0;
            }

            [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
            swift_unknownObjectRelease();

            return swift_willThrow();
          }

LABEL_151:
          v36 = 256;
          goto LABEL_156;
        }

        v36 = 258;
      }

      else
      {
        if (v33 == 1)
        {
LABEL_30:
          v36 = 257;
          goto LABEL_156;
        }

        if (v33 != 2)
        {
          if (v33 == 13)
          {
            goto LABEL_30;
          }

          goto LABEL_151;
        }

        v36 = 260;
      }

LABEL_156:
      swift_unknownObjectRetain();
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
        v132 = POSIXErrorCode.rawValue.getter();
        v133 = objc_allocWithZone(NSError);
        v134 = String._bridgeToObjectiveCImpl()();

        v62 = [v133 initWithDomain:v134 code:v132 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v135 = [v62 domain];
        v136 = static String._unconditionallyBridgeFromObjectiveC(_:)(v135);
        v138 = v137;

        if (v136 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v138 == v139)
        {

          v35 = v314;
        }

        else
        {
          v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v35 = v314;
          if ((v140 & 1) == 0)
          {
LABEL_335:
            __break(1u);
            goto LABEL_336;
          }
        }

        goto LABEL_161;
      }

LABEL_349:
      *&v328.st_dev = 0xD000000000000014;
      v328.st_ino = 0x80000001814813E0;
      LODWORD(v325) = v34;
      v310 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v310);

      goto LABEL_350;
    }

    v48 = v314;
    if (v33 > 26)
    {
      switch(v33)
      {
        case 27:
          v49 = 263;
          goto LABEL_169;
        case 63:
          v49 = 258;
          goto LABEL_169;
        case 102:
          v63 = 0;
          v49 = 256;
LABEL_174:

          URL.init(_fileManagerFailableFileURLWithPath:)(v320, v48, &v328.st_dev);
          outlined consume of PathOrURL(v320, v48, 0);
          v157 = *&v328.st_dev;
          st_ino = v328.st_ino;
          v159 = String._bridgeToObjectiveCImpl()();
          if (v157)
          {
            v160 = swift_getObjectType();
            v161 = (*(st_ino + 432))(v160, st_ino);
            swift_unknownObjectRelease();
          }

          else
          {
            v161 = 0;
          }

          if (v63)
          {
            v325 = v63;
            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
            v63 = v63;
            v162 = _getErrorEmbeddedNSError<A>(_:)();

            if (v162)
            {
            }

            else
            {
              swift_allocError();
              *v164 = v63;
            }

            v163 = _swift_stdlib_bridgeErrorToNSError();
          }

          else
          {
            v163 = 0;
          }

          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
          swift_unknownObjectRelease();

          return swift_willThrow();
      }
    }

    else
    {
      switch(v33)
      {
        case 1:
          goto LABEL_50;
        case 2:
          v49 = 260;
          goto LABEL_169;
        case 13:
LABEL_50:
          v49 = 257;
LABEL_169:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_349;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
          v148 = POSIXErrorCode.rawValue.getter();
          v149 = objc_allocWithZone(NSError);
          v150 = String._bridgeToObjectiveCImpl()();

          v63 = [v149 initWithDomain:v150 code:v148 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v151 = [v63 domain];
          v152 = static String._unconditionallyBridgeFromObjectiveC(_:)(v151);
          v154 = v153;

          if (v152 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v154 == v155)
          {

            v48 = v314;
          }

          else
          {
            v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v48 = v314;
            if ((v156 & 1) == 0)
            {
LABEL_336:
              __break(1u);
              goto LABEL_337;
            }
          }

          goto LABEL_174;
      }
    }

    v49 = 256;
    goto LABEL_169;
  }

  if ((a5 & 2) != 0)
  {
    MEMORY[0x1865CA7C0](v28, 48, 1);
  }

  memset(&v328, 0, sizeof(v328));
  if (fstat(v28, &v328))
  {
    v30 = MEMORY[0x1865CA7A0]();
    v31 = v30;
    if (v14)
    {
      if (v30 > 26)
      {
        if (v30 == 27)
        {
          v32 = 263;
          goto LABEL_111;
        }

        if (v30 != 63)
        {
          if (v30 == 102)
          {
            v46 = v28;
            swift_unknownObjectRetain();
            v61 = 0;
            v32 = 256;
LABEL_116:
            v105 = swift_getObjectType();
            (*(v314 + 240))(v105, v314);
            v106 = String._bridgeToObjectiveCImpl()();

            v107 = (*(v314 + 432))(v105, v314);
            outlined consume of PathOrURL(v320, v314, 1);
            if (v61)
            {
              v325 = v61;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v61 = v61;
              v108 = _getErrorEmbeddedNSError<A>(_:)();

              if (v108)
              {
              }

              else
              {
                swift_allocError();
                *v110 = v61;
              }

              v109 = _swift_stdlib_bridgeErrorToNSError();
            }

            else
            {
              v109 = 0;
            }

            [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
            swift_unknownObjectRelease();

            goto LABEL_207;
          }

LABEL_106:
          v32 = 256;
          goto LABEL_111;
        }

        v32 = 258;
      }

      else
      {
        if (v30 == 1)
        {
LABEL_24:
          v32 = 257;
          goto LABEL_111;
        }

        if (v30 != 2)
        {
          if (v30 == 13)
          {
            goto LABEL_24;
          }

          goto LABEL_106;
        }

        v32 = 260;
      }

LABEL_111:
      swift_unknownObjectRetain();
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
        v96 = POSIXErrorCode.rawValue.getter();
        v97 = objc_allocWithZone(NSError);
        v98 = String._bridgeToObjectiveCImpl()();

        v61 = [v97 initWithDomain:v98 code:v96 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v99 = [v61 domain];
        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)(v99);
        v102 = v101;

        if (v100 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v102 == v103)
        {
          v46 = v28;

          goto LABEL_116;
        }

        v46 = v28;
        v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v104)
        {
          goto LABEL_116;
        }

        __break(1u);
        goto LABEL_334;
      }

LABEL_347:
      v325 = 0xD000000000000014;
      v326 = 0x80000001814813E0;
      LODWORD(v322) = v31;
      while (1)
      {
        v309 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v309);

LABEL_350:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_351:
        v325 = 0xD000000000000014;
        v326 = 0x80000001814813E0;
      }
    }

    v46 = v28;
    if (v30 > 26)
    {
      switch(v30)
      {
        case 27:
          v47 = 263;
          goto LABEL_124;
        case 63:
          v47 = 258;
          goto LABEL_124;
        case 102:
          v61 = 0;
          v47 = 256;
LABEL_129:

          URL.init(_fileManagerFailableFileURLWithPath:)(v320, v314, &v325);
          outlined consume of PathOrURL(v320, v314, 0);
          v120 = v325;
          v121 = v326;
          v93 = String._bridgeToObjectiveCImpl()();
          if (v120)
          {
            v122 = swift_getObjectType();
            v95 = (*(v121 + 432))(v122, v121);
            swift_unknownObjectRelease();
          }

          else
          {
            v95 = 0;
          }

          if (v61)
          {
            v322 = v61;
            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
            v61 = v61;
            v123 = _getErrorEmbeddedNSError<A>(_:)();

            if (v123)
            {
            }

            else
            {
              swift_allocError();
              *v125 = v61;
            }

LABEL_205:
            v124 = _swift_stdlib_bridgeErrorToNSError();
            goto LABEL_206;
          }

          v124 = 0;
          goto LABEL_206;
      }
    }

    else
    {
      switch(v30)
      {
        case 1:
          goto LABEL_45;
        case 2:
          v47 = 260;
          goto LABEL_124;
        case 13:
LABEL_45:
          v47 = 257;
LABEL_124:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_347;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
          v111 = POSIXErrorCode.rawValue.getter();
          v112 = objc_allocWithZone(NSError);
          v113 = String._bridgeToObjectiveCImpl()();

          v61 = [v112 initWithDomain:v113 code:v111 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v114 = [v61 domain];
          v115 = static String._unconditionallyBridgeFromObjectiveC(_:)(v114);
          v117 = v116;

          if (v115 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v117 == v118)
          {
          }

          else
          {
            v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v119 & 1) == 0)
            {
LABEL_334:
              __break(1u);
              goto LABEL_335;
            }
          }

          goto LABEL_129;
      }
    }

    v47 = 256;
    goto LABEL_124;
  }

  v37 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v10 & 1) == 0)
  {
    v37 = a3;
  }

  if (v37 >= v328.st_size)
  {
    st_size = v328.st_size;
  }

  else
  {
    st_size = v37;
  }

  st_mode = v328.st_mode;
  v40 = S_IFMT.getter() & st_mode;
  v325 = v320;
  v326 = v314;
  v327 = v14;
  v313 = v28;
  v41 = shouldMapFileDescriptor(_:path:options:)(v28, &v325, a5);
  if (v40 == S_IFREG.getter())
  {
    if ((st_size & 0x8000000000000000) != 0)
    {
      if (v14)
      {
        swift_unknownObjectRetain();
        v31 = 12;
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
        {
          goto LABEL_347;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
        v75 = POSIXErrorCode.rawValue.getter();
        v76 = objc_allocWithZone(NSError);
        v77 = String._bridgeToObjectiveCImpl()();

        v78 = [v76 initWithDomain:v77 code:v75 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v79 = [v78 domain];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)(v79);
        v82 = v81;

        if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v82 == v83)
        {
        }

        else
        {
          v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v181 & 1) == 0)
          {
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
          }
        }

        v182 = swift_getObjectType();
        (*(v314 + 240))(v182, v314);
        v183 = String._bridgeToObjectiveCImpl()();

        v184 = (*(v314 + 432))(v182, v314);
        outlined consume of PathOrURL(v320, v314, 1);
        v325 = v78;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v185 = v78;
        v186 = _getErrorEmbeddedNSError<A>(_:)();

        if (v186)
        {
        }

        else
        {
          swift_allocError();
          *v205 = v185;
        }

        v206 = objc_opt_self();
        [v206 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 12;
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
        {
          goto LABEL_347;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
        v166 = POSIXErrorCode.rawValue.getter();
        v167 = objc_allocWithZone(NSError);
        v168 = String._bridgeToObjectiveCImpl()();

        v169 = [v167 initWithDomain:v168 code:v166 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v170 = [v169 domain];
        v171 = static String._unconditionallyBridgeFromObjectiveC(_:)(v170);
        v173 = v172;

        if (v171 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v173 == v174)
        {
        }

        else
        {
          v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v187 & 1) == 0)
          {
            goto LABEL_340;
          }
        }

        URL.init(_fileManagerFailableFileURLWithPath:)(v320, v314, &v325);
        outlined consume of PathOrURL(v320, v314, 0);
        v188 = v325;
        v189 = v326;
        v190 = String._bridgeToObjectiveCImpl()();
        if (v188)
        {
          v191 = swift_getObjectType();
          v192 = (*(v189 + 432))(v191, v189);
          swift_unknownObjectRelease();
        }

        else
        {
          v192 = 0;
        }

        v322 = v169;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v207 = v169;
        v208 = _getErrorEmbeddedNSError<A>(_:)();

        if (v208)
        {
        }

        else
        {
          swift_allocError();
          *v209 = v207;
        }

        v210 = objc_opt_self();
        [v210 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      swift_willThrow();
      goto LABEL_332;
    }

    v42 = st_size;
    if ((a2 & 1) != 0 && (v43 = objc_opt_self(), (v44 = [v43 currentProgress]) != 0))
    {

      v45 = [v43 progressWithTotalUnitCount_];
    }

    else
    {
      v45 = 0;
    }

    if (!st_size)
    {
      if (v45)
      {
        [v45 setTotalUnitCount_];
        [v45 setCompletedUnitCount_];
      }

      v73 = 0;
      v42 = 0;
      v74 = 4;
      goto LABEL_140;
    }

    if (v41)
    {
      v72 = mmap(0, st_size, 1, 2, v28, 0);
      if (v72)
      {
        v73 = v72;
        if (v72 != MAP_FAILED.getter())
        {
          v74 = 1;
          if (v45)
          {
            [v45 setTotalUnitCount_];
            [v45 setCompletedUnitCount_];
          }

LABEL_140:
          v126 = a6;
          v127 = *(a6 + 16);
          if (v127)
          {
            v316 = v73;

            v322 = MEMORY[0x1E69E7CC8];
            v129 = (v126 + 40);
            while (1)
            {
              v130 = *(v129 - 1);
              v131 = *v129;
              MEMORY[0x1EEE9AC00](v128);
              if ((v131 & 0x1000000000000000) != 0)
              {
                break;
              }

              if ((v131 & 0x2000000000000000) != 0)
              {
                v325 = v130;
                v326 = v131 & 0xFFFFFFFFFFFFFFLL;

                closure #1 in closure #1 in readExtendedAttributesFromFileDescriptor(_:attrsToRead:)(v324, 1000, v28, &v325, 0x3E8uLL, &v322, v130, v131);
              }

              else
              {
                if ((v130 & 0x1000000000000000) == 0)
                {
                  break;
                }

                closure #1 in closure #1 in readExtendedAttributesFromFileDescriptor(_:attrsToRead:)(v323, 1000, v28, ((v131 & 0xFFFFFFFFFFFFFFFLL) + 32), 0x3E8uLL, &v322, v130, v131);
              }

LABEL_143:

              v129 += 2;
              if (!--v127)
              {

                *a7 = v322;
                v73 = v316;
                goto LABEL_200;
              }
            }

            _StringGuts._slowWithCString<A>(_:)();
            goto LABEL_143;
          }

LABEL_200:
          *a8 = v73;
          a8[1] = v42;
          a8[2] = v74;
          a8[3] = 0;
LABEL_332:
          v180 = v28;
          return close(v180);
        }

        v211 = MEMORY[0x1865CA7A0]();
        v212 = v211;
        v311 = v45;
        if (v14)
        {
          CocoaError.Code.init(fileErrno:reading:)(v211, 1);
          swift_unknownObjectRetain();
          if (v212 == 102)
          {
            v213 = v322;
            v214 = v314;
            v215 = 0;
LABEL_281:
            v269 = swift_getObjectType();
            (*(v214 + 240))(v269, v214);
            v28 = String._bridgeToObjectiveCImpl()();

            v270 = (*(v214 + 432))(v269, v214);
            outlined consume of PathOrURL(v320, v214, 1);
            if (v215)
            {
              v325 = v215;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v215 = v215;
              v271 = _getErrorEmbeddedNSError<A>(_:)();

              if (v271)
              {
                goto LABEL_310;
              }

              goto LABEL_312;
            }

            v272 = 0;
            goto LABEL_314;
          }

          v214 = v314;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_351;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
          v250 = POSIXErrorCode.rawValue.getter();
          v251 = objc_allocWithZone(NSError);
          v252 = String._bridgeToObjectiveCImpl()();

          v215 = [v251 initWithDomain:v252 code:v250 userInfo:{_NativeDictionary.bridged()(), v311}];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v253 = [v215 domain];
          v254 = static String._unconditionallyBridgeFromObjectiveC(_:)(v253);
          v256 = v255;

          v257 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
          v31 = v258;
          if (v254 == v257 && v256 == v258)
          {

LABEL_280:
            v213 = v322;
            goto LABEL_281;
          }

          v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v268)
          {
            goto LABEL_280;
          }

          goto LABEL_345;
        }

        CocoaError.Code.init(fileErrno:reading:)(v211, 1);
        v217 = v322;
        if (v212 == 102)
        {
          v228 = v314;
          v229 = 0;
        }

        else
        {
          v228 = v314;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_351;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
          v259 = POSIXErrorCode.rawValue.getter();
          v260 = objc_allocWithZone(NSError);
          v261 = String._bridgeToObjectiveCImpl()();

          v229 = [v260 initWithDomain:v261 code:v259 userInfo:{_NativeDictionary.bridged()(), v311}];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v262 = [v229 domain];
          v263 = static String._unconditionallyBridgeFromObjectiveC(_:)(v262);
          v265 = v264;

          v266 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
          v31 = v267;
          if (v263 == v266 && v265 == v267)
          {
          }

          else
          {
            v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v273 & 1) == 0)
            {
LABEL_346:
              __break(1u);
              swift_willThrow();
              __break(1u);
              goto LABEL_347;
            }
          }
        }

        URL.init(_fileManagerFailableFileURLWithPath:)(v320, v228, &v325);
        outlined consume of PathOrURL(v320, v228, 0);
        v274 = v325;
        v275 = v326;
        v276 = String._bridgeToObjectiveCImpl()();
        if (v274)
        {
          v277 = swift_getObjectType();
          v278 = (*(v275 + 432))(v277, v275);
          swift_unknownObjectRelease();
        }

        else
        {
          v278 = 0;
        }

        if (v229)
        {
          v321 = v229;
          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
          v229 = v229;
          v279 = _getErrorEmbeddedNSError<A>(_:)();

          if (v279)
          {
            goto LABEL_326;
          }

          goto LABEL_328;
        }

        v280 = 0;
        goto LABEL_330;
      }

      v193 = MEMORY[0x1865CA7A0]();
      v31 = v193;
      v311 = v45;
      if (v14)
      {
        if (v193 > 26)
        {
          switch(v193)
          {
            case 27:
              v194 = 263;
              goto LABEL_302;
            case 63:
              v194 = 258;
              goto LABEL_302;
            case 102:
              v230 = v314;
              swift_unknownObjectRetain();
              v215 = 0;
              v213 = 256;
LABEL_308:
              v291 = swift_getObjectType();
              (*(v230 + 240))(v291, v230);
              v28 = String._bridgeToObjectiveCImpl()();

              v270 = (*(v230 + 432))(v291, v230);
              outlined consume of PathOrURL(v320, v230, 1);
              if (v215)
              {
                v325 = v215;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v215 = v215;
                v292 = _getErrorEmbeddedNSError<A>(_:)();

                if (v292)
                {
LABEL_310:

LABEL_313:
                  v272 = _swift_stdlib_bridgeErrorToNSError();
                  goto LABEL_314;
                }

LABEL_312:
                swift_allocError();
                *v293 = v215;
                goto LABEL_313;
              }

              v272 = 0;
LABEL_314:
              [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
              swift_unknownObjectRelease();

              LODWORD(v28) = v313;
LABEL_331:
              swift_willThrow();

              goto LABEL_332;
          }
        }

        else
        {
          switch(v193)
          {
            case 1:
              goto LABEL_221;
            case 2:
              v194 = 260;
              goto LABEL_302;
            case 13:
LABEL_221:
              v194 = 257;
LABEL_302:
              v230 = v314;
              swift_unknownObjectRetain();
              if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
              {
                goto LABEL_347;
              }

              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v281 = POSIXErrorCode.rawValue.getter();
              v282 = objc_allocWithZone(NSError);
              v283 = String._bridgeToObjectiveCImpl()();

              v215 = [v282 initWithDomain:v283 code:v281 userInfo:{_NativeDictionary.bridged()(), v311}];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v284 = [v215 domain];
              v285 = static String._unconditionallyBridgeFromObjectiveC(_:)(v284);
              v287 = v286;

              v288 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v31 = v289;
              if (v285 == v288 && v287 == v289)
              {

LABEL_307:
                v213 = v194;
                goto LABEL_308;
              }

              v290 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v290)
              {
                goto LABEL_307;
              }

              goto LABEL_343;
          }
        }

        v194 = 256;
        goto LABEL_302;
      }

      if (v193 > 26)
      {
        if (v193 == 27)
        {
          v217 = 263;
          goto LABEL_316;
        }

        if (v193 != 63)
        {
          if (v193 == 102)
          {
            v231 = v314;
            v229 = 0;
            v217 = 256;
            goto LABEL_321;
          }

LABEL_298:
          v217 = 256;
          goto LABEL_316;
        }

        v217 = 258;
      }

      else
      {
        if (v193 == 1)
        {
LABEL_242:
          v217 = 257;
          goto LABEL_316;
        }

        if (v193 != 2)
        {
          if (v193 == 13)
          {
            goto LABEL_242;
          }

          goto LABEL_298;
        }

        v217 = 260;
      }

LABEL_316:
      v231 = v314;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_347;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v294 = POSIXErrorCode.rawValue.getter();
      v295 = objc_allocWithZone(NSError);
      v296 = String._bridgeToObjectiveCImpl()();

      v229 = [v295 initWithDomain:v296 code:v294 userInfo:{_NativeDictionary.bridged()(), v311}];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v297 = [v229 domain];
      v298 = static String._unconditionallyBridgeFromObjectiveC(_:)(v297);
      v300 = v299;

      v301 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v31 = v302;
      if (v298 == v301 && v300 == v302)
      {
      }

      else
      {
        v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v303 & 1) == 0)
        {
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }
      }

LABEL_321:

      URL.init(_fileManagerFailableFileURLWithPath:)(v320, v231, &v325);
      outlined consume of PathOrURL(v320, v231, 0);
      v304 = v325;
      v305 = v326;
      v276 = String._bridgeToObjectiveCImpl()();
      if (v304)
      {
        v306 = swift_getObjectType();
        v278 = (*(v305 + 432))(v306, v305);
        swift_unknownObjectRelease();
      }

      else
      {
        v278 = 0;
      }

      if (v229)
      {
        v322 = v229;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v229 = v229;
        v307 = _getErrorEmbeddedNSError<A>(_:)();

        if (v307)
        {
LABEL_326:

LABEL_329:
          v280 = _swift_stdlib_bridgeErrorToNSError();
          goto LABEL_330;
        }

LABEL_328:
        swift_allocError();
        *v308 = v229;
        goto LABEL_329;
      }

      v280 = 0;
LABEL_330:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      goto LABEL_331;
    }

    v165 = malloc(st_size);
    if (v165)
    {
      v73 = v165;
      if (v45)
      {
        [v45 becomeCurrentWithPendingUnitCount_];
      }

      v325 = v320;
      v326 = v314;
      v327 = v14;
      readBytesFromFileDescriptor(_:path:buffer:length:readUntilLength:reportProgress:)(v28, &v325, v73, v42, 1, a2 & 1);
      v42 = v216;
      [v45 resignCurrent];
      v74 = 2;
      goto LABEL_140;
    }

    v312 = v45;
    if (v14)
    {
      swift_unknownObjectRetain();
      v31 = 12;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_347;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v195 = POSIXErrorCode.rawValue.getter();
      v196 = objc_allocWithZone(NSError);
      v197 = String._bridgeToObjectiveCImpl()();

      v198 = [v196 initWithDomain:v197 code:v195 userInfo:{_NativeDictionary.bridged()(), v312}];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v199 = [v198 domain];
      v200 = static String._unconditionallyBridgeFromObjectiveC(_:)(v199);
      v202 = v201;

      v203 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v31 = v204;
      if (v200 == v203 && v202 == v204)
      {

LABEL_259:
        v233 = swift_getObjectType();
        (*(v314 + 240))(v233, v314);
        v234 = String._bridgeToObjectiveCImpl()();

        v235 = (*(v314 + 432))(v233, v314);
        outlined consume of PathOrURL(v320, v314, 1);
        v325 = v198;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v236 = v198;
        v237 = _getErrorEmbeddedNSError<A>(_:)();

        if (v237)
        {
        }

        else
        {
          swift_allocError();
          *v244 = v236;
        }

        v245 = objc_opt_self();
        [v245 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_331;
      }

      v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v232)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
      goto LABEL_344;
    }

    v31 = 12;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_347;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    v218 = POSIXErrorCode.rawValue.getter();
    v219 = objc_allocWithZone(NSError);
    v220 = String._bridgeToObjectiveCImpl()();

    v221 = [v219 initWithDomain:v220 code:v218 userInfo:{_NativeDictionary.bridged()(), v312}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v222 = [v221 domain];
    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)(v222);
    v225 = v224;

    v226 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    v31 = v227;
    if (v223 == v226 && v225 == v227)
    {
    }

    else
    {
      v238 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v238 & 1) == 0)
      {
        goto LABEL_342;
      }
    }

    URL.init(_fileManagerFailableFileURLWithPath:)(v320, v314, &v325);
    outlined consume of PathOrURL(v320, v314, 0);
    v239 = v325;
    v240 = v326;
    v241 = String._bridgeToObjectiveCImpl()();
    if (v239)
    {
      v242 = swift_getObjectType();
      v243 = (*(v240 + 432))(v242, v240);
      swift_unknownObjectRelease();
    }

    else
    {
      v243 = 0;
    }

    v322 = v221;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v246 = v221;
    v247 = _getErrorEmbeddedNSError<A>(_:)();

    if (v247)
    {
    }

    else
    {
      swift_allocError();
      *v248 = v246;
    }

    v249 = objc_opt_self();
    [v249 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_331;
  }

  v50 = S_IFDIR.getter();
  if (v40 == v50)
  {
    v31 = 21;
  }

  else
  {
    v31 = 13;
  }

  if (v14)
  {
    if (v40 == v50)
    {
      v51 = 256;
    }

    else
    {
      v51 = 257;
    }

    swift_unknownObjectRetain();
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v52 = POSIXErrorCode.rawValue.getter();
      v53 = objc_allocWithZone(NSError);
      v54 = String._bridgeToObjectiveCImpl()();

      v55 = [v53 initWithDomain:v54 code:v52 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v56 = [v55 domain];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)(v56);
      v59 = v58;

      v319 = v51;
      if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v59 == v60)
      {
      }

      else
      {
        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v84 & 1) == 0)
        {
LABEL_337:
          __break(1u);
          goto LABEL_338;
        }
      }

      v85 = swift_getObjectType();
      (*(v314 + 240))(v85, v314);
      v86 = String._bridgeToObjectiveCImpl()();

      v87 = (*(v314 + 432))(v85, v314);
      outlined consume of PathOrURL(v320, v314, 1);
      if (v55)
      {
        v325 = v55;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v88 = v55;
        v89 = _getErrorEmbeddedNSError<A>(_:)();

        if (v89)
        {
        }

        else
        {
          swift_allocError();
          *v178 = v88;
        }

        v175 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v175 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      v46 = v313;
      goto LABEL_208;
    }

    goto LABEL_347;
  }

  if (v40 == v50)
  {
    v47 = 256;
  }

  else
  {
    v47 = 257;
  }

  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
    goto LABEL_347;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
  v64 = POSIXErrorCode.rawValue.getter();
  v65 = objc_allocWithZone(NSError);
  v66 = String._bridgeToObjectiveCImpl()();

  v61 = [v65 initWithDomain:v66 code:v64 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v67 = [v61 domain];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)(v67);
  v70 = v69;

  if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v70 == v71)
  {
  }

  else
  {
    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v90 & 1) == 0)
    {
LABEL_338:
      __break(1u);
      goto LABEL_339;
    }
  }

  URL.init(_fileManagerFailableFileURLWithPath:)(v320, v314, &v325);
  outlined consume of PathOrURL(v320, v314, 0);
  v91 = v325;
  v92 = v326;
  v93 = String._bridgeToObjectiveCImpl()();
  v46 = v28;
  if (v91)
  {
    v94 = swift_getObjectType();
    v95 = (*(v92 + 432))(v94, v92);
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = 0;
  }

  if (v61)
  {
    v322 = v61;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v176 = v61;
    v177 = _getErrorEmbeddedNSError<A>(_:)();

    if (v177)
    {
    }

    else
    {
      swift_allocError();
      *v179 = v176;
    }

    goto LABEL_205;
  }

  v124 = 0;
LABEL_206:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

LABEL_207:
LABEL_208:
  swift_willThrow();
  v180 = v46;
  return close(v180);
}

BOOL PathOrURL.isEmpty.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    ObjectType = swift_getObjectType();
    v2 = (*(v1 + 240))(ObjectType, v1);
    v1 = v4;
  }

  else
  {
  }

  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v14 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v6 < -1)
    {
      __break(1u);
    }

    a2 = v6 + 1;
    if (v6 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = a2;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    if (String._fileSystemRepresentation(into:)(&v12 - v7, v8, a1, v3))
    {
      return open(_:_:_:)();
    }

    closure #1 in readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(0, &v12);
    if (v2)
    {
      return swift_willThrow();
    }

    else
    {
      return v12;
    }
  }

  v11 = swift_slowAlloc();
  specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v11, v10, a1, v3, &v13);
  result = MEMORY[0x1865D2690](v11, -1, -1);
  if (!v2)
  {
    return v13;
  }

  return result;
}

{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v6 < -1)
    {
      __break(1u);
    }

    a2 = v6 + 1;
    if (v6 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = a2;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = &v17[-v7];
    if ((String._fileSystemRepresentation(into:)(&v17[-v7], v9, a1, v3) & 1) != 0 && (memset(&v19, 0, sizeof(v19)), !stat(v8, &v19)))
    {
      st_mode = v19.st_mode;
      v14 = S_IFMT.getter() & st_mode;
      v10 = v14 == S_IFDIR.getter();
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    LOBYTE(v18) = v11;
    HIBYTE(v18) = v10;
    return v18;
  }

  v16 = swift_slowAlloc();
  specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v16, v15, a1, v3, &v18);
  result = MEMORY[0x1865D2690](v16, -1, -1);
  if (!v2)
  {
    return v18;
  }

  return result;
}

uint64_t _NSStartOfPathExtension(uint64_t a1, uint64_t a2)
{
  if (a2 >= 2)
  {
    v3 = a2;
    do
    {
      v2 = v3 - 1;
      if (v3 == 1)
      {
        break;
      }

      v4 = *(a1 - 4 + 2 * v3--);
    }

    while (v4 != 47);
  }

  else
  {
    v2 = 0;
  }

  _CFGetPathExtensionRangesFromPathComponentUniChars();
  return v2 - 1;
}

BOOL _NSFileCompressionTypeIsSafeForMapping(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED440038 != -1)
  {
    dispatch_once(&qword_1ED440038, &__block_literal_global_71);
  }

  if (!_MergedGlobals_145)
  {
    return 0;
  }

  memset(v4, 0, sizeof(v4));
  if (_MergedGlobals_145(a1, v4))
  {
    v2 = 1;
  }

  else
  {
    v2 = LODWORD(v4[0]) == 5;
  }

  return !v2;
}

uint64_t shouldMapFileDescriptor(_:path:options:)(Swift::Int32 a1, uint64_t a2, char a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((a3 & 8) != 0)
  {
    return 1;
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (fcntl(_:_:)(a1, 63) < 0)
  {
    return 0;
  }

  bzero(&v20, 0x878uLL);
  if (fstatfs(a1, &v20) || (v20.f_flags & 0x1200) != 0x1000)
  {
    return 0;
  }

  if (v5)
  {
    ObjectType = swift_getObjectType();
    v3 = (*(v4 + 240))(ObjectType, v4);
    v4 = v8;
  }

  else
  {
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
  }

  else if ((v4 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(v4) & 0xF;
  }

  else
  {
    isStackAllocationSafe = v3 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v11 < -1)
  {
    __break(1u);
  }

  v8 = v11 + 1;
  if (v11 >= 1024)
  {
LABEL_25:
    v16 = v8;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v17 = swift_slowAlloc();
      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v17, v16, v3, v4, &v19);
      MEMORY[0x1865D2690](v17, -1, -1);

      return v19;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v13 = &v18[-v12];
  v15 = (String._fileSystemRepresentation(into:)(&v18[-v12], v14, v3, v4) & 1) == 0 || _NSFileCompressionTypeIsSafeForMapping(v13);

  return v15;
}

uint64_t outlined consume of PathOrURL(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t outlined consume of Data.Deallocator?(unint64_t result)
{
  if (result != 4)
  {
    return outlined consume of Data.Deallocator(result);
  }

  return result;
}

unint64_t outlined consume of Data.Deallocator(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

void _convertToUnichars(unsigned __int16 *a1, size_t a2, void *a3, void **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  *__src = 0u;
  if (_NSConvertToASCIIorUnicode2(a1, a2, 4uLL, 1, &v7, 0) && (v6 = __src[1]) != 0)
  {
    if (*a4 < __src[1])
    {
      v6 = *a4;
    }

    *a4 = v6;
    if (v7 == 1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"_convertToUnichars: Didn't get Unicode" userInfo:0]);
    }

    memmove(a3, __src[0], 2 * v6);
    if (BYTE1(v7) == 1)
    {
      free(__src[0]);
    }
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t _NSConvertToASCIIorUnicode2(unsigned __int16 *a1, size_t size, unint64_t encoding, char a4, uint64_t a5, malloc_zone_t *zone)
{
  *a5 = a4 ^ 1;
  *(a5 + 1) = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  if (!size)
  {
    return 1;
  }

  v6 = zone;
  v9 = a1;
  if (encoding == 10 || !encoding)
  {
    v10 = *a1;
    v11 = v10 == 65534 || v10 == 65279;
    if (v11)
    {
      v12 = a1 + 1;
    }

    else
    {
      v12 = a1;
    }

    if (v11)
    {
      v13 = *a1;
    }

    else
    {
      v13 = 0;
    }

    v14 = (size >> 1) - (v13 != 0);
    *a5 = 0;
    *(a5 + 24) = v14;
    v15 = 2 * v14;
    if (v14 <= 0x1F8)
    {
      v16 = (a5 + 32);
    }

    else
    {
      if (!zone)
      {
        v6 = malloc_default_zone();
      }

      v16 = malloc_type_zone_malloc(v6, v15, 0x409734D7uLL);
    }

    *(a5 + 16) = v16;
    *(a5 + 1) = v14 > 0x1F8;
    if (v13 == 65279)
    {
      memmove(v16, v12, v15);
    }

    else
    {
      for (; v14; --v14)
      {
        v17 = *v12++;
        *v16++ = bswap32(v17) >> 16;
      }
    }

    return 1;
  }

  if (size >= 3 && encoding == 4 && *a1 == 239 && *(a1 + 1) == 187 && *(a1 + 2) == 191)
  {
    if (size != 3)
    {
      v9 = a1 + 3;
      goto LABEL_30;
    }

    return 1;
  }

LABEL_30:
  v19 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v19 == -1)
  {
    if (encoding == 134217984)
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", 134217984);
      }

      v19 = 1536;
    }

    else
    {
      v19 = -1;
    }
  }

  IsEncodingAvailable = CFStringIsEncodingAvailable(v19);
  if (IsEncodingAvailable)
  {
    v21 = __CFStringDecodeByteStream3();
    *a5 = 0;
    *(a5 + 24) = 0;
    v9 = v21 != 0;
    if (v21)
    {
      *(a5 + 8) = 0;
      *(a5 + 16) = a5 + 32;
      *(a5 + 1) = 0;
      memmove((a5 + 32), 0, 0);
    }

    else
    {
      *(a5 + 1) = 0;
      *(a5 + 24) = 0;
    }
  }

  return (IsEncodingAvailable != 0) & v9;
}

uint64_t _NSExpandTildeInPath(uint64_t result, uint64_t *a2)
{
  v10 = *a2;
  if (*a2 >= 1)
  {
    v18 = v6;
    v19 = v5;
    v20 = v4;
    v21 = v3;
    v22 = v2;
    v11 = result;
    if (*result == 126)
    {
      if (v10 == 1)
      {
        v13 = 0;
        v14 = 1;
      }

      else
      {
        v14 = 1;
        while (*(result + 2 * v14) != 47)
        {
          if (v10 == ++v14)
          {
            v14 = *a2;
            break;
          }
        }

        if (v14 == 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = [NSString stringWithCharacters:result + 2 length:v14 - 1];
        }
      }

      result = NSHomeDirectoryForUser(v13);
      if (result)
      {
        v15 = result;
        result = [result length];
        v16 = *a2 - v14;
        if (v16 + result <= 1024)
        {
          v17 = result;
          if (*a2 > v14)
          {
            memmove((v11 + 2 * result), (v11 + 2 * v14), 2 * v16);
          }

          result = [v15 getCharacters:v11 range:{0, v17, v7, v18, v19, v20, v21, v22, v8, v9}];
          *a2 += v17 - v14;
        }
      }
    }
  }

  return result;
}

void _NSResolveSymlinksInPathUsingCache(unsigned __int16 *a1, uint64_t *a2, int a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    memset(&v33, 0, sizeof(v33));
    v5 = [objc_allocWithZone(NSCheapMutableString) init];
    [v5 setContentsNoCopy:a1 length:v3 freeWhenDone:0 isUnicode:1];
    if ([+[NSFileManager getFileSystemRepresentation:"getFileSystemRepresentation:maxLength:withPath:"]
    {
      v28 = strlen(__s);

      if ((a3 & 1) != 0 || *a2 < 1 || (v6 = *a1, v6 != 126) && v6 != 47 || (v65 = 0u, v64 = 0u, v63 = 0u, v62 = 0u, v61 = 0u, v60 = 0u, v59 = 0u, v58 = 0u, v57 = 0u, v56 = 0u, v55 = 0u, v54 = 0u, v53 = 0u, v52 = 0u, v51 = 0u, v50 = 0u, v49 = 0u, v48 = 0u, v47 = 0u, v46 = 0u, v45 = 0u, v44 = 0u, v43 = 0u, v42 = 0u, v41 = 0u, v40 = 0u, v39 = 0u, v38 = 0u, v37 = 0u, v36 = 0u, v35 = 0u, *__src = 0u, value[1] = 0, value[2] = 0, value[0] = 0x800000000000005, getattrlist(__s, value, __src, 0x40CuLL, 0)) || !*&__src[8] || (v7 = (*&__src[8] - 1), v7 >= 0x401))
      {
        v27 = 0;
        v8 = __s;
        while (1)
        {
          v9 = v8;
          v10 = v8 - 1;
          v11 = v8 - __s;
          v12 = 2 * __s - v8;
          v13 = 1;
          do
          {
            v14 = v13;
            v15 = v11;
            v16 = v12;
            v18 = *++v10;
            v17 = v18;
            ++v13;
            ++v11;
            --v12;
          }

          while (v18 == 47);
          while (v17 && v17 != 47)
          {
            v17 = v8[v14++];
            ++v15;
            --v16;
          }

          v8[v14 - 1] = 0;
          v8 = &v8[v14 - 1];
          if (!a3)
          {
            goto LABEL_27;
          }

          os_unfair_lock_lock(&stru_1ED43F214);
          if (!qword_1ED43F220)
          {
            os_unfair_lock_unlock(&stru_1ED43F214);
            goto LABEL_27;
          }

          value[0] = 0;
          ValueIfPresent = CFDictionaryGetValueIfPresent(qword_1ED43F220, __s, value);
          os_unfair_lock_unlock(&stru_1ED43F214);
          if (ValueIfPresent)
          {
            v20 = value[0] == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            if (v27 > 0x20)
            {
              return;
            }

            __strlcpy_chk();
            v22 = strlen(__src);
            goto LABEL_39;
          }

          if (ValueIfPresent)
          {
LABEL_31:
            *v8 = v17;
            if (!v17)
            {
              v7 = v28;
              v24 = a2;
              *a2 = 1024;
              v25 = __s;
              goto LABEL_50;
            }
          }

          else
          {
LABEL_27:
            if (lstat(__s, &v33) < 0)
            {
              return;
            }

            if ((v33.st_mode & 0xF000) != 0xA000)
            {
              if (a3)
              {
                _addToStatCache(__s, 0);
              }

              goto LABEL_31;
            }

            if (v27 > 0x20)
            {
              return;
            }

            v21 = readlink(__s, __src, 0x401uLL);
            if (v21 < 0)
            {
              return;
            }

            v22 = v21;
            __src[v21] = 0;
            if (a3)
            {
              _addToStatCache(__s, __src);
            }

LABEL_39:
            v9[v14 - 1] = v17;
            if (__src[0] == 47)
            {
              v23 = 0;
            }

            else
            {
              v23 = v9 - __s + 1;
            }

            if ((v28 + v22 + v23 - v15) > 1025)
            {
              return;
            }

            if ((v28 - v15) >= 1)
            {
              memmove(&__s[v22 + v23], &v9[v14 - 1], v28 - v15);
            }

            ++v27;
            memmove(&__s[v23], __src, v22);
            *(v16 + v28 + v23 + v22) = 0;
            if (__src[0] == 47)
            {
              v8 = __s;
            }

            else
            {
              v8 = v9;
            }

            v28 = v28 + v22 + v23 - v15;
          }
        }
      }

      v26 = *&__src[4];
      v24 = a2;
      *a2 = 1024;
      v25 = &__src[v26 + 4];
LABEL_50:
      _convertToUnichars(v25, v7, a1, v24);
    }

    else
    {
    }
  }
}

uint64_t _writeJSONValue(void *a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_NSIsNSString())
  {

    return _writeJSONString(a1, a2, a4);
  }

  if (objc_opt_isKindOfClass())
  {
    __src[0] = 0;
    __src[1] = 0;
    v19 = 0;
    if (!a2 || ([(__CFString *)a2 decimalValue], (__src[0] & 0x1F00) != 0x1000))
    {
      v9 = [(__CFString *)a2 stringValue];
      return [a1 appendString:v9 range:{0, objc_msgSend(v9, "length")}];
    }

    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"NaN number in JSON write";
LABEL_32:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  if (_NSIsNSNumber())
  {
    v10 = CFGetTypeID(a2);
    if (v10 == CFBooleanGetTypeID())
    {
      if ([(__CFString *)a2 BOOLValue])
      {
        v11 = v20;
        v12 = &_writeJSONBoolean_trueData;
        v13 = a1;
        v14 = 4;
      }

      else
      {
        v11 = v20;
        v12 = "false";
        v13 = a1;
        v14 = 5;
      }

      return _appendBytes(v12, v14, v13, v11);
    }

    else
    {

      return _writeJSONNumber(a1, a2);
    }
  }

  else if (_NSIsNSDictionary())
  {

    return _writeJSONObject(a1, a2, a3, a4);
  }

  else
  {
    if (!_NSIsNSArray())
    {
      if (objc_opt_isKindOfClass())
      {
        LODWORD(__src[0]) = 1819047278;
        return _appendBytes(__src, 4uLL, a1, 110);
      }

      v17 = [NSString stringWithFormat:@"Invalid type in JSON write (%@)", objc_opt_class()];
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      goto LABEL_32;
    }

    return _writeJSONArray(a1, a2, a3, a4);
  }
}

id __NSConcreteUUID.init(uuidString:)()
{
  UUID.init(uuidString:)(v12);

  if (v13)
  {
    if ([objc_opt_self() _compatibilityBehavior])
    {
      v1 = &v0[OBJC_IVAR_____NSConcreteUUID__storage];
      v2 = type metadata accessor for __NSConcreteUUID();
      *v1 = 0;
      *(v1 + 1) = 0;
      v11.receiver = v0;
      v11.super_class = v2;
      return objc_msgSendSuper2(&v11, sel_init);
    }

    else
    {
      type metadata accessor for __NSConcreteUUID();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {
    v5 = HIDWORD(v12[0]);
    v4 = v12[1];
    v6 = v12[0] >> 8;
    v7 = v12[0] >> 16;
    v8 = v12[0] >> 24;
    v9 = &v0[OBJC_IVAR_____NSConcreteUUID__storage];
    *v9 = v12[0];
    v9[1] = v6;
    v9[2] = v7;
    v9[3] = v8;
    *(v9 + 1) = v5;
    *(v9 + 1) = v4;
    v10.receiver = v0;
    v10.super_class = type metadata accessor for __NSConcreteUUID();
    return objc_msgSendSuper2(&v10, sel_init);
  }
}

uint64_t UUID.init(uuidString:)@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *v6 = 0uLL;
  v2 = String.utf8CString.getter();
  v3 = _foundation_uuid_parse((v2 + 32), v6);

  if (v3)
  {
    v5 = 0uLL;
  }

  else
  {
    v5 = *v6;
  }

  *a1 = v5;
  *(a1 + 16) = v3 != 0;
  return result;
}

void _NSStandardizePathUsingCache(unsigned __int16 *a1, uint64_t *a2, int a3)
{
  v52 = *MEMORY[0x1E69E9840];
  _NSTransmutePathSlashes(a1, a2);
  v6 = *a2;
  if (*a2 < 2)
  {
    goto LABEL_8;
  }

  v7 = v6 - 1;
  v6 = 1;
  while (a1[v7] == 47)
  {
    *a2 = v7;
    v8 = v7-- + 1;
    if (v8 <= 2)
    {
      goto LABEL_8;
    }
  }

  v6 = v7 + 1;
  if (*a1 == 92)
  {
    v9 = a1[1] == 92;
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

  HasDotDot = _pathHasDotDot(a1, v6, v9);
  if (HasDotDot)
  {
    v50 = v6;
    __memmove_chk();
    _NSResolveSymlinksInPathUsingCache(__src, &v50, a3);
    v6 = v50;
    if (v50 > 1024)
    {
      return;
    }

    memmove(a1, __src, 2 * v50);
    *a2 = v6;
  }

  v11 = -2 * v6;
  v12 = 3;
  v49 = a3;
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v6 > 4)
  {
    do
    {
      v13 = &a1[v6];
      if (*(v13 - 2) != 47 || *(v13 - 1) != 46)
      {
        if (v9)
        {
          v12 = 3;
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      v6 -= 2;
      *a2 = v6;
      v11 += 4;
      if (v9)
      {
        goto LABEL_13;
      }

LABEL_15:
      ;
    }

    while (v6 >= 3);
    if (v6 != 2)
    {
      v18 = a1 + 1;
      goto LABEL_99;
    }

LABEL_23:
    if (a1[1] == 47)
    {
      v14 = 0;
      while (a1[v14] == 46)
      {
        v15 = v14 + 2;
        v16 = a1[v14 + 3];
        v14 += 2;
        if (v16 != 47)
        {
          goto LABEL_29;
        }
      }

      v15 = v14;
      if (!v14)
      {
        goto LABEL_30;
      }

LABEL_29:
      *a2 = v6 - v15;
      memmove(a1, &a1[v15], -(v11 + 2 * v15));
      v12 = 0;
      v6 = *a2;
    }

    else
    {
LABEL_30:
      v12 = 0;
    }
  }

LABEL_31:
  if (v6 >= 3)
  {
    while (v12 < v6 - 2)
    {
      v17 = &a1[v12];
      if (*v17 == 47 && v17[1] == 46 && v17[2] == 47)
      {
        memmove(v17 + 1, v17 + 3, 2 * (v6 - v12) - 6);
        v6 = *a2 - 2;
        *a2 = v6;
        --v12;
      }

      if (v6 < 3)
      {
        break;
      }

      ++v12;
    }
  }

  v18 = a1 + 1;
  v19 = HasDotDot ^ 1;
  if (v6 < 3)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    do
    {
      if (v9)
      {
        v20 = 3;
        if (v6 >= 4)
        {
          while (a1[v20] != 47)
          {
            if (v6 == ++v20)
            {
              v20 = v6;
              break;
            }
          }
        }

        if (v6 <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = v6;
        }

        while (1)
        {
          v22 = v20 + 1;
          if (v20 + 1 >= v6)
          {
            break;
          }

          v23 = v18[v20++];
          if (v23 == 47)
          {
            goto LABEL_55;
          }
        }

        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

LABEL_55:
      v24 = v6 - 2;
      if (v22 >= v6 - 2)
      {
        v28 = 1;
      }

      else
      {
        v25 = &a1[v22];
        do
        {
          if (v6 != 3 && v22 < v6 - 4 && *v25 == 47 && v25[1] == 46 && v25[2] == 46 && v25[3] == 47)
          {
            memmove(v25 + 1, v25 + 4, 2 * (v6 - v22) - 8);
            v6 = *a2 - 3;
            *a2 = v6;
            v26 = v22 - 1;
          }

          else
          {
            v26 = v22;
          }

          if (v6 >= 3 && v26 == v6 - 3)
          {
            v27 = &a1[v26];
            if (*v27 == 47 && v27[1] == 46 && v27[2] == 46)
            {
              v6 -= 2;
              *a2 = v6;
            }
          }

          v24 = v6 - 2;
          v28 = v6 > 2;
          if (v6 < 3)
          {
            break;
          }

          v29 = v26 + 1;
          if (v22 != v29)
          {
            break;
          }
        }

        while (v29 < v24);
      }

      if (v28 && v22 < v6)
      {
        while (v22 + 1 < v24)
        {
          v30 = 0;
          v31 = 2 * (v6 - 5 - v22);
          v32 = &a1[v22 + 3];
          while (*(v32 - 2) != 47)
          {
            ++v30;
            v31 -= 2;
            ++v32;
            if (!(1 - v24 + v22 + v30))
            {
              goto LABEL_93;
            }
          }

          v33 = v22 + v30 + 1;
          if (v6 >= 4 && v33 < v6 - 4 && *(v32 - 1) == 46 && *v32 == 46 && v32[1] == 47)
          {
            *a2 = v6 - v30 - 4;
            memmove(&v18[v22], v32 + 2, v31);
            v6 = *a2;
            break;
          }

          if (!(v22 + v30 + 4 - v6) && a1[v6 - 3] == 47 && a1[v6 - 2] == 46 && a1[v6 - 1] == 46)
          {
            *a2 = v22 + 1;
            v6 = v22 + 1;
            break;
          }

          v22 += v30 + 1;
          if (v33 >= v6)
          {
            break;
          }
        }
      }

LABEL_93:
      ;
    }

    while (_pathHasDotDot(a1, v6, v9) && v6 > 2);
  }

LABEL_99:
  _NSTransmutePathSlashes(a1, a2);
  v34 = *a2;
  if (*a2 < 2)
  {
    return;
  }

  while (a1[v34 - 1] == 47)
  {
    *a2 = v34 - 1;
    if (v34-- <= 2)
    {
      return;
    }
  }

  memset(__src, 0, 144);
  if (v34 < 0x17)
  {
    if (v34 < 0xF)
    {
      if (v34 < 9 || *a1 != 47)
      {
        return;
      }

      v36 = *v18;
LABEL_154:
      if (v36 != 112)
      {
        return;
      }

      goto LABEL_155;
    }

    if (*a1 != 47)
    {
      return;
    }

    v36 = *v18;
LABEL_134:
    if (v36 == 118)
    {
      if (a1[2] == 97 && a1[3] == 114 && a1[4] == 47 && a1[5] == 97 && a1[6] == 117 && a1[7] == 116 && a1[8] == 111 && a1[9] == 109 && a1[10] == 111 && a1[11] == 117 && a1[12] == 110 && a1[13] == 116 && a1[14] == 47 && (_NSStandardizePathRewriteAutomountIsPathExcluded(a1 + 14, v34 - 14) & 1) == 0 && _NSFileExistsAtPath(+[NSFileManager defaultManager], (a1 + 14), *a2 - 14, __src))
      {
        v39 = *a2 - 14;
        *a2 = v39;
        v40 = 2 * v39;
        v41 = a1;
        v42 = a1 + 14;
LABEL_179:
        memmove(v41, v42, v40);
        return;
      }

      return;
    }

    goto LABEL_154;
  }

  if (*a1 != 47)
  {
    return;
  }

  v36 = *v18;
  if (v36 != 112)
  {
    goto LABEL_134;
  }

  if (a1[2] == 114 && a1[3] == 105 && a1[4] == 118 && a1[5] == 97 && a1[6] == 116 && a1[7] == 101 && a1[8] == 47 && a1[9] == 118 && a1[10] == 97 && a1[11] == 114 && a1[12] == 47 && a1[13] == 97 && a1[14] == 117 && a1[15] == 116 && a1[16] == 111 && a1[17] == 109 && a1[18] == 111 && a1[19] == 117 && a1[20] == 110 && a1[21] == 116)
  {
    v37 = a1 + 22;
    if (a1[22] == 47)
    {
      if ((_NSStandardizePathRewriteAutomountIsPathExcluded(a1 + 22, v34 - 22) & 1) == 0 && _NSFileExistsAtPath(+[NSFileManager defaultManager], (a1 + 22), *a2 - 22, __src))
      {
        v38 = *a2 - 22;
LABEL_178:
        *a2 = v38;
        v40 = 2 * v38;
        v41 = a1;
        v42 = v37;
        goto LABEL_179;
      }

      return;
    }
  }

LABEL_155:
  if (a1[2] == 114 && a1[3] == 105 && a1[4] == 118 && a1[5] == 97 && a1[6] == 116 && a1[7] == 101)
  {
    v37 = a1 + 8;
    if (a1[8] == 47 && (_NSStandardizePathRewriteAutomountIsPathExcluded(a1 + 8, v34 - 8) & 1) == 0)
    {
      if (v49)
      {
        v43 = a1 + 9;
        if (v34 >= 0xA && *v43 != 47)
        {
          v44 = 10;
          do
          {
            v45 = v44 * 2;
            if (v34 <= (v44 * 2) >> 1)
            {
              break;
            }

            v46 = a1[v44++];
          }

          while (v46 != 47);
          v43 = (a1 + v45);
        }

        v47 = [[NSString alloc] initWithCharacters:a1 + 8 length:v43 - v37];
        os_unfair_lock_lock(&unk_1ED43F218);
        if (([qword_1ED43F228 containsObject:v47] & 1) == 0)
        {
          if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
          {
            os_unfair_lock_unlock(&unk_1ED43F218);

            return;
          }

          v48 = qword_1ED43F228;
          if (!qword_1ED43F228)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            qword_1ED43F228 = v48;
          }

          [v48 addObject:v47];
        }

        os_unfair_lock_unlock(&unk_1ED43F218);
      }

      else if (!_NSFileExistsAtPath(+[NSFileManager defaultManager], (a1 + 8), *a2 - 8, __src))
      {
        return;
      }

      v38 = *a2 - 8;
      goto LABEL_178;
    }
  }
}

uint64_t _pathHasDotDot(unsigned __int16 *a1, uint64_t a2, int a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v6 = v4 != 126 && v4 != 47;
  if (a2 != 1 && !v6)
  {
    if (a3)
    {
      v7 = 3;
      if (a2 >= 4)
      {
        while (a1[v7] != 47)
        {
          if (a2 == ++v7)
          {
            v7 = a2;
            break;
          }
        }
      }

      v8 = v7 + 1;
      if (a2 <= v7 + 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = a2;
      }

      v10 = v9 - 1;
      while (v8 < a2)
      {
        v11 = a1[v8++];
        if (v11 == 47)
        {
          v10 = v8 - 2;
          break;
        }
      }

      v12 = v10 + 2;
    }

    else
    {
      v12 = 0;
    }

    if (v12 < a2 - 1)
    {
      v13 = v12 + 2;
      for (i = &a1[v12 + 1]; ; ++i)
      {
        if (*(i - 1) != 46 || *i != 46)
        {
          goto LABEL_38;
        }

        if (a2 != 2 && v13 == 2)
        {
          break;
        }

        if (v13 - 2 < 1 || *(i - 2) != 47)
        {
          goto LABEL_38;
        }

        if (v13 < a2)
        {
          v15 = i[1];
LABEL_31:
          if (v15 == 47)
          {
            return 1;
          }

          goto LABEL_38;
        }

        if (v13 == a2)
        {
          return 1;
        }

LABEL_38:
        if (++v13 - a2 == 1)
        {
          return 0;
        }
      }

      v15 = a1[2];
      goto LABEL_31;
    }

    return 0;
  }

  return v3;
}

id NSString.__swiftFillFileSystemRepresentation(pointer:maxLength:)(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  if (!a2)
  {
    v11 = 0;
LABEL_47:
    objc_autoreleasePoolPop(v6);
    return (v11 & 1);
  }

  v7 = v6;
  v8 = [v3 _fastCharacterContents];
  if (v8)
  {
    v9 = v8;
    v10 = [v3 length];
    v11 = 1;
    _sSR10FoundationE11_decomposed33_A8D938B711950E5A2A1A070C68A5275BLL_2as4into14nullTerminatedSiSSAAE18_NormalizationTypeO_qd__mSrys5UInt8VGSbtK8CodeUnitQyd__Rszs12UnicodeCodecRd__lFs6UInt16V_s0U0O5UTF16OTt0g5(1, a1, a2, 1, v9, v10);
LABEL_46:
    v6 = v7;
    goto LABEL_47;
  }

  if ([v3 fastestEncoding] == 1)
  {
    v12 = [v3 _fastCStringContents_];
    if (v12)
    {
      v13 = v12;
      v14 = [v3 length];
      if (v14)
      {
        v15 = v14;
        v16 = v14;
        v17 = v13;
        while (*v17)
        {
          ++v17;
          if (!--v16)
          {
LABEL_25:
            if (v15 >= a2)
            {
              v29 = a2;
            }

            else
            {
              v29 = v15;
            }

            memcpy(a1, v13, v29);
            v30 = &v15[v13];
            v13 += v29;
            goto LABEL_30;
          }
        }

        v6 = v7;
        while (!*v17++)
        {
          if (!--v16)
          {
            goto LABEL_25;
          }
        }

        v11 = 0;
        *a1 = 0;
      }

      else
      {
        v29 = 0;
        v30 = v13;
LABEL_30:
        v6 = v7;
        if (v13 == v30 && v29 < a2)
        {
          a1[v29] = 0;
          v11 = 1;
        }

        else
        {
          if (__OFSUB__(a2, 1))
          {
            __break(1u);
          }

          v11 = 0;
          a1[a2 - 1] = 0;
        }
      }

      goto LABEL_47;
    }
  }

  isTaggedPointer = _objc_isTaggedPointer(v3);
  v19 = v3;
  v20 = v19;
  if (!isTaggedPointer)
  {
    goto LABEL_17;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v19);
  if (!TaggedPointerTag)
  {
    goto LABEL_38;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v24 = v23;

LABEL_45:
      v11 = String._fileSystemRepresentation(into:)(a1, a2, v22, v24);

      goto LABEL_46;
    }

LABEL_17:
    if (__CFStringIsCF())
    {
    }

    else
    {
      v25 = v20;
      v26 = String.init(_nativeStorage:)();
      if (v27)
      {
        v22 = v26;
        v24 = v27;

        goto LABEL_45;
      }

      if ([v25 length])
      {
        v22 = String.init(_cocoaString:)();
        v24 = v34;
        goto LABEL_45;
      }
    }

    v22 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_45;
  }

  result = [v20 UTF8String];
  if (result)
  {
    v32 = String.init(utf8String:)(result);
    if (v33)
    {
LABEL_39:
      v22 = v32;
      v24 = v33;

      goto LABEL_45;
    }

    __break(1u);
LABEL_38:
    _CFIndirectTaggedPointerStringGetContents();
    v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v33)
    {
      [v20 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = v35;
      v24 = v36;
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t _writeJSONString(uint64_t a1, CFStringRef theString, char a3)
{
  if (*(a1 + 16) == 1)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  if (_convertJSONString(a1, theString, a3, 1) & 1) != 0 || (*(a1 + 40) = v6, (_convertJSONString(a1, theString, a3, 0)))
  {
    if (*(a1 + 16) == 2)
    {
      result = _appendBytes(*(a1 + 24), *(a1 + 40), a1, 2);
      if (!result)
      {
        return result;
      }

      *(a1 + 40) = 0;
    }

    return 1;
  }

  else
  {
    v8 = MEMORY[0x1E695DF20];
    v9 = [NSString stringWithFormat:@"The string %p failed to convert to UTF8", theString];
    [a1 setFailure:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3852, objc_msgSend(v8, "dictionaryWithObjectsAndKeys:", v9, *MEMORY[0x1E695E618], 0))}];
    return 0;
  }
}

uint64_t _convertJSONString(void *a1, CFStringRef theString, char a3, int a4)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 134217984;
  }

  theStringa = theString;
  encoding = v9;
  CStringPtr = CFStringGetCStringPtr(theString, v9);
  v11 = CStringPtr;
  if (!CStringPtr)
  {
    if (a1[8] < Length)
    {
      [(_NSJSONWriter *)a1 resizeTemporaryBuffer:?];
    }

    v11 = a1[7];
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = v12 + 6 * Length + 3;
  if (v14 >= v13)
  {
    if (v14 <= 2 * v13)
    {
      v16 = 2 * v13;
    }

    else
    {
      v16 = v12 + 6 * Length + 3;
    }

    v15 = MEMORY[0x1865CFE30](a1[3], v16, 2178024471, 0);
    a1[3] = v15;
    a1[4] = v16;
    v12 = a1[5];
  }

  else
  {
    v15 = a1[3];
  }

  a1[5] = v12 + 1;
  *(v15 + v12) = 34;
  if (Length < 1)
  {
LABEL_50:
    v40 = a1[3];
    v41 = a1[5];
    a1[5] = v41 + 1;
    *(v40 + v41) = 34;
    return 1;
  }

  v17 = 0;
  v18 = Length;
  while (1)
  {
    usedBufLen[0] = 0;
    if (CStringPtr)
    {
      v18 = 0;
      usedBufLen[0] = Length;
LABEL_20:
      v21 = 0;
      while (1)
      {
        if (a4 && v11[v21] < 0)
        {
          return 0;
        }

        v22 = v11[v21];
        if (v22 == 92)
        {
          v27 = a1[3];
          v28 = a1[5];
          a1[5] = v28 + 1;
          *(v27 + v28) = 92;
          v29 = a1[3];
          v30 = a1[5];
          a1[5] = v30 + 1;
          *(v29 + v30) = 92;
        }

        else if (v22 == 34)
        {
          v23 = a1[3];
          v24 = a1[5];
          a1[5] = v24 + 1;
          *(v23 + v24) = 92;
          v25 = a1[3];
          v26 = a1[5];
          a1[5] = v26 + 1;
          *(v25 + v26) = 34;
        }

        else
        {
          if ((a3 & 8) != 0 && v22 == 47)
          {
            goto LABEL_37;
          }

          if (v22 == 47)
          {
            v36 = a1[3];
            v37 = a1[5];
            a1[5] = v37 + 1;
            *(v36 + v37) = 92;
LABEL_37:
            v38 = a1[3];
            v39 = a1[5];
            a1[5] = v39 + 1;
            *(v38 + v39) = 47;
            goto LABEL_38;
          }

          v31 = a1[3];
          v32 = a1[5];
          a1[5] = v32 + 1;
          if (v22 > 0x1F)
          {
            *(v31 + v32) = v22;
          }

          else
          {
            *(v31 + v32) = 92;
            v33 = a1[3];
            v34 = a1[5];
            a1[5] = v34 + 1;
            if (v22 <= 9)
            {
              if (v22 == 8)
              {
                v35 = 98;
              }

              else
              {
                if (v22 != 9)
                {
LABEL_48:
                  *(v33 + v34) = 117;
                  v43 = v17;
                  snprintf_l((a1[3] + a1[5]), 5uLL, 0, "%04x", v22);
                  v17 = v43;
                  a1[5] += 4;
                  goto LABEL_38;
                }

                v35 = 116;
              }
            }

            else
            {
              switch(v22)
              {
                case 10:
                  v35 = 110;
                  break;
                case 12:
                  v35 = 102;
                  break;
                case 13:
                  v35 = 114;
                  break;
                default:
                  goto LABEL_48;
              }
            }

            *(v33 + v34) = v35;
          }
        }

LABEL_38:
        if (++v21 >= usedBufLen[0])
        {
          goto LABEL_49;
        }
      }
    }

    v19 = v17;
    v47.location = v17;
    v47.length = v18;
    Bytes = CFStringGetBytes(theStringa, v47, encoding, 0, 0, v11, a1[8], usedBufLen);
    if (!Bytes)
    {
      return 0;
    }

    v18 -= Bytes;
    v17 = Bytes + v19;
    if (usedBufLen[0])
    {
      goto LABEL_20;
    }

LABEL_49:
    if (v18 <= 0)
    {
      goto LABEL_50;
    }
  }
}

uint64_t _sSR10FoundationE11_decomposed33_A8D938B711950E5A2A1A070C68A5275BLL_2as4into14nullTerminatedSiSSAAE18_NormalizationTypeO_qd__mSrys5UInt8VGSbtK8CodeUnitQyd__Rszs12UnicodeCodecRd__lFs6UInt16V_s0U0O5UTF16OTt0g5(char a1, _BYTE *a2, uint64_t a3, int a4, unsigned __int16 *a5, uint64_t a6)
{
  v157 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for Unicode._NFD();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v14 = *(v142 - 8);
  v15 = MEMORY[0x1EEE9AC00](v142);
  v141 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v140 = &v127 - v17;
  v139 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v20 = &a5[a6];
  }

  else
  {
    v20 = 0;
  }

  if (!a3)
  {
    if (a5)
    {
      v31 = v20 == a5;
    }

    else
    {
      v31 = 1;
    }

    v32 = v31;
    if (a4 & 1) == 0 && (v32)
    {
      return 0;
    }

    v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
    lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
    v43 = swift_allocError();
    *v44 = 0;
    v150 = v43;
    swift_willThrow();
    return v33;
  }

  v21 = a5;
  v136 = a4;
  v137 = a3 - 1;
  v135 = a3;
  v145 = v20;
  if (a3 < 1)
  {
    v22 = 0;
    v25 = 0;
    v28 = 1;
    v30 = v21;
    goto LABEL_21;
  }

  v127 = &a5[a6];
  v22 = 0;
  LODWORD(v23) = 0;
  v24 = 0;
  v25 = 0;
  v132 = (v18 + 8);
  v131 = (v14 + 8);
  v26 = 2;
  if ((a1 & 1) == 0)
  {
    v26 = 3;
  }

  v133 = v26;
  v27 = &__CFUniCharCanonicalDecomposableCharacterSetBitmap_1;
  if (a1)
  {
    v27 = &__CFUniCharHfsPlusDecomposableCharacterSetBitmap_0;
  }

  v129 = v27;
  v28 = 1;
  v29 = 4;
  v130 = a2;
  v30 = v21;
  while (1)
  {
    LODWORD(v155) = v24;
    BYTE4(v155) = v23;
    v149 = v28;
    if (v23)
    {
      if ((v24 & 0xF800) != 0xD800)
      {
        v148 = v30;
        v89 = v20;
        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
        v90 = WeekendRange.onsetTime.modify();
        specialized RangeReplaceableCollection.remove(at:)(0);
        LODWORD(v28) = v149;
        v90(&v153, 0);
        v20 = v89;
        v30 = v148;
        v54 = v24;
        v24 = v155;
        v23 = BYTE4(v155);
        goto LABEL_51;
      }

      if (!v30)
      {
        goto LABEL_49;
      }

      v55 = v30;
      if (v30 == v20)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!v30)
    {
      goto LABEL_21;
    }

    if (v30 == v20)
    {
      v30 = v127;
LABEL_21:
      v34 = v152;
      if (*(v152 + 2))
      {
        v35 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148 = v35;
        v146 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
        }

        v37 = *(v34 + 2);
        v29 = (v34 + 32);
        v153 = v34 + 32;
        v154 = v37;
        v38 = _minimumMergeRunLength(_:)(v37);
        if (v38 >= v37)
        {
          if (v37)
          {
            v94 = v150;
            specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v37, 1, &v153);
            v150 = v94;
          }
        }

        else
        {
          v39 = v38;
          v149 = v28;
          v40 = v150;
          v41 = v37 >> 1;
          if (v37 >= 2)
          {
            v42 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v42 + 2) = v41;
          }

          else
          {
            v42 = MEMORY[0x1E69E7CC0];
          }

          v155 = v42 + 32;
          v156 = v41;
          specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v155, v151, &v153, v39);
          v150 = v40;
          if (v40)
          {
            goto LABEL_244;
          }

          *(v42 + 2) = 0;

          v28 = v149;
        }

        v95 = v137;
        v152 = v34;
        v96 = *(v34 + 2);
        if (v96)
        {
          v97 = 0;
          while (1)
          {
            v98 = *(v29 + 4 * v97);
            if (v98 > 0x7F)
            {
              v101 = (*(v29 + 4 * v97) & 0x3F) << 8;
              if (v98 >= 0x800)
              {
                v102 = v98 >> 12;
                v103 = (v101 | (v98 >> 6) & 0x3F) << 8;
                v104 = HIWORD(v98);
                v99 = (((v103 | (v98 >> 12) & 0x3F) << 8) | (v98 >> 18)) - 2122219023;
                v105 = v102 + v103 + 8487393;
                if (!v104)
                {
                  v99 = v105;
                }
              }

              else
              {
                v99 = (v98 >> 6) + v101 + 33217;
              }
            }

            else
            {
              v99 = v98 + 1;
            }

            if (!a2)
            {
              goto LABEL_240;
            }

            if (__OFSUB__(a3, v22))
            {
              goto LABEL_218;
            }

            if (a3 - v22 < 4 - (__clz(v99) >> 3))
            {
              break;
            }

            v100 = 0;
            ++v97;
            while (1)
            {
              a2[v22 + v100] = v99 - 1;
              if (v95 - v22 == v100)
              {
                break;
              }

              ++v100;
              v75 = v99 >= 0x100;
              v99 >>= 8;
              if (!v75)
              {
                goto LABEL_138;
              }
            }

            v100 = a3 - v22;
            if (v99 > 0xFF)
            {
              goto LABEL_220;
            }

LABEL_138:
            v76 = __OFADD__(v22, v100);
            v22 += v100;
            if (v76)
            {
              goto LABEL_219;
            }

            v33 = v22;
            if (v97 == v96)
            {
              goto LABEL_146;
            }
          }

          v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
          lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
          v114 = swift_allocError();
          *v115 = 0;
          v150 = v114;
          swift_willThrow();
          if ((v136 & 1) == 0)
          {
            goto LABEL_200;
          }

          if (v22 >= v135)
          {
            v22 = (v135 - 1);
            if (__OFSUB__(v135, 1))
            {
              goto LABEL_235;
            }
          }

          else if (v22)
          {
            if (__OFSUB__(v22, 1))
            {
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
            }

            if (!a2[v22 - 1])
            {
              goto LABEL_200;
            }
          }

          a2[v22] = 0;
          goto LABEL_200;
        }

        v33 = v22;
LABEL_146:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v149 = v28;
          v106 = *(v34 + 2);
          v107 = swift_isUniquelyReferenced_nonNull_native();
          v152 = v34;
          v108 = v148;
          if ((v107 & 1) == 0)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 1, v34);
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v106, 0);
          v25 = v146;
          LOBYTE(v28) = v149;
          v30 = v108;
          if (!v108)
          {
            goto LABEL_159;
          }
        }

        else
        {
          _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1g5(0, *(v34 + 3) >> 1);

          v30 = v148;
          v25 = v146;
          if (!v148)
          {
            goto LABEL_159;
          }
        }
      }

      else
      {
        v33 = v22;
        if (!v30)
        {
          goto LABEL_159;
        }
      }

      if (v30 != v145)
      {
        v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
        lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
        v109 = swift_allocError();
        *v110 = 0;
        v150 = v109;
        swift_willThrow();
        if ((v136 & 1) == 0)
        {
          goto LABEL_200;
        }

        if (v22 < v135)
        {
          if (v22)
          {
            v111 = v22 - 1;
            if (__OFSUB__(v22, 1))
            {
LABEL_233:
              __break(1u);
              goto LABEL_234;
            }

            goto LABEL_157;
          }

          goto LABEL_158;
        }

        v119 = v135 - 1;
        if (!__OFSUB__(v135, 1))
        {
LABEL_189:
          v112 = &v119[a2];
          goto LABEL_190;
        }

LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

LABEL_159:
      if (v28)
      {
        if ((v136 & 1) == 0)
        {
          goto LABEL_200;
        }

        if (v22 < a3)
        {
          a2[v22] = 0;
          v33 = (v22 + 1);
          if (v22 + 1 >= a3)
          {
            v113 = &a2[a3 - 1];
          }

          else
          {
            if (v22 != -1)
            {
              goto LABEL_200;
            }

            v113 = a2;
          }

          goto LABEL_209;
        }

        a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
        lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
        v33 = v135;
        v120 = swift_allocError();
        *v121 = 0;
        v150 = v120;
        swift_willThrow();
        if (v22 < v33)
        {
          if (v22)
          {
            v111 = v22 - 1;
            if (!__OFSUB__(v22, 1))
            {
LABEL_157:
              if (!a2[v111])
              {
                goto LABEL_200;
              }

              goto LABEL_158;
            }

            __break(1u);
            goto LABEL_196;
          }

LABEL_158:
          v112 = &a2[v22];
LABEL_190:
          *v112 = 0;
          goto LABEL_200;
        }

        v119 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
          __break(1u);
          goto LABEL_214;
        }

        goto LABEL_189;
      }

      v33 = (v25 + 1);
      if (!__OFADD__(v25, 1))
      {
        if ((v136 & 1) == 0)
        {
          goto LABEL_200;
        }

        if (v22 < a3)
        {
          if (v22)
          {
            if (__OFSUB__(v22, 1))
            {
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            if (!a2[v22 - 1])
            {
              goto LABEL_200;
            }
          }

          v113 = &a2[v22];
          goto LABEL_209;
        }

LABEL_196:
        if (__OFSUB__(a3, 1))
        {
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
          goto LABEL_237;
        }

        v113 = &a2[a3 - 1];
LABEL_209:
        *v113 = 0;
        goto LABEL_200;
      }

      __break(1u);
      goto LABEL_231;
    }

    v54 = *v30;
    v55 = v30 + 1;
    if ((*v30 & 0xF800) != 0xD800)
    {
      v23 = 0;
      ++v30;
      goto LABEL_51;
    }

    LODWORD(v24) = v24 & 0xFFFF0000 | v54;
    LODWORD(v23) = 16;
    ++v30;
    if (v55 == v20)
    {
      goto LABEL_49;
    }

LABEL_40:
    v30 = v55 + 1;
    LODWORD(v24) = (*v55 << v23) | ((-65535 << v23) - 1) & v24;
    v56 = v23 + 16;
    if ((v23 + 16) >= 0x20u)
    {
      goto LABEL_48;
    }

    if (v30 == v20)
    {
      goto LABEL_45;
    }

    v30 = v55 + 2;
    LODWORD(v24) = (v55[1] << v56) | ((-65535 << v56) - 1) & v24;
    v56 = v23 + 32;
    if (v23 < 0xE0u)
    {
LABEL_48:
      LODWORD(v23) = v56;
    }

    else if (v30 == v20 || (v30 = v55 + 3, LODWORD(v24) = (v55[2] << v23) | ((-65535 << v23) - 1) & v24, v56 = v23 + 48, LODWORD(v23) = v23 + 48, v23 < 0x20u))
    {
LABEL_45:
      LODWORD(v23) = v56;
      if (!v56)
      {
        goto LABEL_21;
      }
    }

LABEL_49:
    if ((v24 & 0xFC00FC00) != 0xDC00D800)
    {
      goto LABEL_221;
    }

    v23 = (v23 - 32);
    v54 = (WORD1(v24) & 0x3FF | ((v24 & 0x3FF) << 10)) + 0x10000;
    v24 = 0;
LABEL_51:
    v144 = v54 != 0;
    if (!v54)
    {
      v25 = v22;
    }

    if (!((v54 == 0) | v28 & 1))
    {
      v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
      lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
      v116 = swift_allocError();
      *v117 = 1;
      v150 = v116;
      swift_willThrow();
      if ((v136 & 1) == 0)
      {
        goto LABEL_200;
      }

      if (v22 < a3)
      {
        if (v22)
        {
          if (__OFSUB__(v22, 1))
          {
            goto LABEL_239;
          }

          if (!a2[v22 - 1])
          {
            goto LABEL_200;
          }
        }

        goto LABEL_187;
      }

      goto LABEL_227;
    }

    v146 = v25;
    v147 = v23;
    v148 = v30;
    v143 = v54;
    if (v54 >= 0x80)
    {
      v57 = v138;
      Unicode.Scalar.properties.getter();
      v23 = a3;
      v58 = v140;
      Unicode.Scalar.Properties.canonicalCombiningClass.getter();
      (*v132)(v57, v139);
      v54 = v24;
      v59 = v141;
      static Unicode.CanonicalCombiningClass.notReordered.getter();
      LOBYTE(v57) = static FloatingPointRoundingRule.== infix(_:_:)();
      v28 = *v131;
      v60 = v59;
      v61 = v142;
      (*v131)(v60, v142);
      v62 = v58;
      a3 = v23;
      LODWORD(v23) = v147;
      v63 = v61;
      v24 = v54;
      LODWORD(v54) = v143;
      (v28)(v62, v63);
      v20 = v145;
      v30 = v148;
      LODWORD(v28) = v149;
      v29 = 4;
      if ((v57 & 1) == 0)
      {
LABEL_93:
        v83 = WORD1(v54);
        if (v133 > v83 && (v84 = v129[v83]) != 0 && ((v84[v54 >> 3] >> (v54 & 7)) & 1) != 0)
        {
          v45 = (v54 & 0x3F) << 8;
          v46 = (v54 >> 6) + v45 + 33217;
          v47 = (v45 | (v54 >> 6) & 0x3F) << 8;
          v48 = ((v54 >> 18) | ((v47 | (v54 >> 12) & 0x3F) << 8)) - 2122219023;
          v49 = (v54 >> 12) + v47 + 8487393;
          if (v83)
          {
            v50 = v48;
          }

          else
          {
            v50 = v49;
          }

          if (v54 < 0x800)
          {
            v50 = v46;
          }

          v153 = ((v50 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v50) >> 3)))));
          v51 = static String._uncheckedFromUTF8(_:)();
          v23 = v24;
          v52 = v134;
          MEMORY[0x1865CAFF0](v51);

          v53 = v52;
          v24 = v23;
          LODWORD(v23) = v147;
          specialized Array.append<A>(contentsOf:)(v53);
          v20 = v145;
          v30 = v148;
        }

        else
        {
          v85 = v152;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
          }

          v28 = *(v85 + 2);
          v86 = *(v85 + 3);
          v30 = v148;
          if (v28 >= v86 >> 1)
          {
            v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v28 + 1, 1, v85);
            v30 = v148;
            v85 = v91;
          }

          *(v85 + 2) = v28 + 1;
          *&v85[4 * v28 + 32] = v54;
          v152 = v85;
          v20 = v145;
          LODWORD(v28) = v149;
          LODWORD(v23) = v147;
        }

        goto LABEL_34;
      }
    }

    v42 = v152;
    if (!*(v152 + 2))
    {
      goto LABEL_92;
    }

    v54 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
    }

    v64 = *(v42 + 2);
    v153 = v42 + 32;
    v154 = v64;
    v65 = _minimumMergeRunLength(_:)(v64);
    if (v65 >= v64)
    {
      a2 = v130;
      if (v64)
      {
        v69 = v150;
        specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v64, 1, &v153);
        v150 = v69;
      }

      v68 = v137;
    }

    else
    {
      v66 = v65;
      v128 = v24;
      v67 = v150;
      v29 = MEMORY[0x1E69E7CC0];
      if (v64 >= 2)
      {
        v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v29 + 16) = v64 >> 1;
      }

      v155 = (v29 + 32);
      v156 = v64 >> 1;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v155, v151, &v153, v66);
      v150 = v67;
      if (v67)
      {
        goto LABEL_243;
      }

      *(v29 + 16) = 0;

      a2 = v130;
      a3 = v135;
      v54 = v148;
      v68 = v137;
      v24 = v128;
      v29 = 4;
    }

    v152 = v42;
    v70 = *(v42 + 2);
    if (v70)
    {
      break;
    }

LABEL_86:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v54;
      v82 = *(v42 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 1, v42);
      }

      LODWORD(v28) = v149;
      LODWORD(v54) = v143;
      if (v82)
      {
        v28 = *(v42 + 2) - v82;
        memmove(v42 + 32, &v42[4 * v82 + 32], 4 * v28);
        *(v42 + 2) = v28;
        LODWORD(v28) = v149;
      }

      v152 = v42;
      v30 = v23;
      v20 = v145;
      v29 = 4;
      LODWORD(v23) = v147;
LABEL_92:
      if (v54 > 0x7F)
      {
        goto LABEL_93;
      }

      goto LABEL_106;
    }

    v23 = MEMORY[0x1E69E7CC0];
    if (*(v42 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd);
      v23 = swift_allocObject();
      v87 = _swift_stdlib_malloc_size(v23);
      v88 = v87 - 32;
      if (v87 < 32)
      {
        v88 = v87 - 29;
      }

      *(v23 + 16) = 0;
      *(v23 + 24) = 2 * (v88 >> 2);
    }

    v152 = v23;
    v20 = v145;
    LODWORD(v28) = v149;
    LODWORD(v23) = v147;
    v30 = v54;
    LODWORD(v54) = v143;
    if (v143 > 0x7F)
    {
      goto LABEL_93;
    }

LABEL_106:
    if (v22 >= a3)
    {
      v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
      lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
      v123 = swift_allocError();
      *v124 = 0;
      v150 = v123;
      swift_willThrow();
      if ((v136 & 1) == 0)
      {
        goto LABEL_200;
      }

      v119 = v135;
      if (v22 < v135)
      {
        if (v22)
        {
          if (__OFSUB__(v22, 1))
          {
            goto LABEL_241;
          }

          if (!a2[v22 - 1])
          {
            goto LABEL_200;
          }
        }

        a2[v22] = 0;
        goto LABEL_200;
      }

LABEL_214:
      v119[a2 - 1] = 0;
      goto LABEL_200;
    }

    a2[v22++] = v54;
LABEL_34:
    v28 = v144 & v28;
    v25 = v146;
    if (v22 >= a3)
    {
      goto LABEL_21;
    }
  }

  v71 = 0;
  while (1)
  {
    v72 = *&v42[4 * v71 + 32];
    if (v72 > 0x7F)
    {
      v77 = (*&v42[4 * v71 + 32] & 0x3F) << 8;
      if (v72 >= 0x800)
      {
        v78 = v72 >> 12;
        v79 = (v77 | (v72 >> 6) & 0x3F) << 8;
        v80 = HIWORD(v72);
        v73 = (((v79 | (v72 >> 12) & 0x3F) << 8) | (v72 >> 18)) - 2122219023;
        v81 = v78 + v79 + 8487393;
        if (!v80)
        {
          v73 = v81;
        }
      }

      else
      {
        v73 = (v72 >> 6) + v77 + 33217;
      }
    }

    else
    {
      v73 = v72 + 1;
    }

    if (!a2)
    {
      goto LABEL_236;
    }

    if (__OFSUB__(a3, v22))
    {
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
      v42 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
      lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
      v125 = swift_allocError();
      *v126 = 2;
      v150 = v125;
      swift_willThrow();
      if ((v136 & 1) == 0)
      {
        goto LABEL_200;
      }

      if (v22 < a3)
      {
        if (!v22)
        {
LABEL_187:
          v118 = &a2[v22];
LABEL_228:
          *v118 = 0;
          goto LABEL_200;
        }

        if (!__OFSUB__(v22, 1))
        {
          a2 = v130;
          if (!v130[v22 - 1])
          {
            goto LABEL_200;
          }

          goto LABEL_187;
        }

        __break(1u);
LABEL_243:
        *(v29 + 16) = 0;

        __break(1u);
LABEL_244:
        *(v42 + 2) = 0;

        __break(1u);
        return result;
      }

LABEL_227:
      v118 = &a2[a3 - 1];
      goto LABEL_228;
    }

    if (a3 - v22 < 4 - (__clz(v73) >> 3))
    {
      break;
    }

    v74 = 0;
    ++v71;
    while (1)
    {
      a2[v22 + v74] = v73 - 1;
      if (v68 - v22 == v74)
      {
        break;
      }

      ++v74;
      v75 = v73 >= 0x100;
      v73 >>= 8;
      if (!v75)
      {
        goto LABEL_79;
      }
    }

    v74 = a3 - v22;
    if (v73 > 0xFF)
    {
      goto LABEL_217;
    }

LABEL_79:
    v76 = __OFADD__(v22, v74);
    v22 += v74;
    if (v76)
    {
      goto LABEL_216;
    }

    if (v71 == v70)
    {
      goto LABEL_86;
    }
  }

  v33 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
  lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys6UInt16V_GMd);
  v92 = swift_allocError();
  *v93 = 0;
  v150 = v92;
  swift_willThrow();
  if ((v136 & 1) == 0)
  {
    goto LABEL_200;
  }

  if (v22 >= v135)
  {
    v22 = v137;
    goto LABEL_179;
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  if (__OFSUB__(v22, 1))
  {
    goto LABEL_232;
  }

  if (!a2[v22 - 1])
  {
    goto LABEL_200;
  }

LABEL_179:
  a2[v22] = 0;
LABEL_200:

  return v33;
}

uint64_t String._fileSystemRepresentation(into:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  if (a1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      a3 = static String._copying(_:)();
      v11 = v10;

      a4 = v11;
      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_4:
        if ((a3 & 0x1000000000000000) != 0)
        {
          v8 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v9 = a3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter();
          v9 = v15;
        }

        goto LABEL_12;
      }
    }

    else if ((a4 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

    v9 = HIBYTE(a4) & 0xF;
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v8 = v16;
LABEL_12:
    _sSR10FoundationE11_decomposed33_A8D938B711950E5A2A1A070C68A5275BLL_2as4into14nullTerminatedSiSSAAE18_NormalizationTypeO_qd__mSrys5UInt8VGSbtK8CodeUnitQyd__Rszs12UnicodeCodecRd__lFAJ_s0U0O4UTF8OTt0g5(1, a1, a2, 1, v8, v9);

    return 1;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    a3 = static String._copying(_:)();
    v14 = v13;

    if ((v14 & 0x2000000000000000) == 0)
    {
LABEL_8:
      if ((a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }
    }
  }

  else if ((a4 & 0x2000000000000000) == 0)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _sSR10FoundationE11_decomposed33_A8D938B711950E5A2A1A070C68A5275BLL_2as4into14nullTerminatedSiSSAAE18_NormalizationTypeO_qd__mSrys5UInt8VGSbtK8CodeUnitQyd__Rszs12UnicodeCodecRd__lFAJ_s0U0O4UTF8OTt0g5(char a1, _BYTE *a2, uint64_t a3, int a4, unsigned __int8 *a5, uint64_t a6)
{
  v161 = a2;
  v155 = a4;
  v168 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for Unicode._NFD();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v13 = *(v152 - 8);
  v14 = MEMORY[0x1EEE9AC00](v152);
  v151 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v136 - v16;
  v149 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v19 = &a5[a6];
  }

  else
  {
    v19 = 0;
  }

  if (!a3)
  {
    if (a5)
    {
      v91 = v19 == a5;
    }

    else
    {
      v91 = 1;
    }

    v92 = v91;
    if (v155 & 1) == 0 && (v92)
    {
      return 0;
    }

    v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
    lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
    v100 = swift_allocError();
    *v101 = 0;
    v160 = v100;
    swift_willThrow();
    return v24;
  }

  v147 = a3 - 1;
  v158 = a3;
  v153 = v19;
  if (a3 < 1)
  {
    v20 = 0;
    v22 = 0;
    LODWORD(v27) = 1;
    goto LABEL_127;
  }

  v136 = &a5[a6];
  v137 = v12;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v143 = (v17 + 8);
  v142 = (v13 + 8);
  v23 = (a1 & 1) == 0;
  LOBYTE(v24) = 0;
  v25 = 2;
  if (v23)
  {
    v25 = 3;
  }

  v144 = v25;
  v26 = &__CFUniCharCanonicalDecomposableCharacterSetBitmap_1;
  if (!v23)
  {
    v26 = &__CFUniCharHfsPlusDecomposableCharacterSetBitmap_0;
  }

  v141 = v26;
  v140 = xmmword_1812D0920;
  v139 = xmmword_1812D0930;
  v138 = xmmword_1812D0940;
  v27 = 1;
  while (1)
  {
    LODWORD(v166) = v21;
    BYTE4(v166) = v24;
    if (v24)
    {
      if ((v21 & 0x80) == 0)
      {
        lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser();
        v90 = WeekendRange.onsetTime.modify();
        specialized RangeReplaceableCollection.remove(at:)(0);
        v90(&v164, 0);
        v31 = (v21 + 1);
        goto LABEL_33;
      }

      if (!a5)
      {
        goto LABEL_29;
      }

      v29 = a5;
      if (a5 == v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!a5)
      {
        goto LABEL_127;
      }

      if (a5 == v19)
      {
        a5 = v136;
LABEL_127:
        v24 = v163;
        if (*(v163 + 2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v156 = v20;
          v145 = v27;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_129;
          }

          goto LABEL_231;
        }

LABEL_172:
        if (!a5 || a5 == v19)
        {
          goto LABEL_180;
        }

        v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
        v20 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        v123 = swift_allocError();
        *v124 = 0;
        v160 = v123;
        swift_willThrow();
        if ((v155 & 1) == 0)
        {
          goto LABEL_220;
        }

        if (v22 < v158)
        {
          if (v22)
          {
            v108 = v22 - 1;
            if (!__OFSUB__(v22, 1))
            {
              goto LABEL_207;
            }

            __break(1u);
LABEL_180:
            if (v27)
            {
              if ((v155 & 1) == 0)
              {
                v24 = v22;

                return v24;
              }

              if (v22 < a3)
              {
                v161[v22] = 0;
                v24 = v22 + 1;
                if (v22 + 1 >= a3)
                {
                  v161[a3 - 1] = 0;
                }

                else if (v22 == -1)
                {
                  *v161 = 0;
                }

                goto LABEL_220;
              }

              v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
              lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
              v131 = swift_allocError();
              *v132 = 0;
              v160 = v131;
              swift_willThrow();
              v128 = a3 - 1;
              if (!__OFSUB__(a3, 1))
              {
LABEL_210:
                v161[v128] = 0;
                goto LABEL_220;
              }

LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
            }

            v24 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              if ((v155 & 1) == 0)
              {
                goto LABEL_220;
              }

              if (v22 >= a3)
              {
                if (!__OFSUB__(a3, 1))
                {
                  v161[a3 - 1] = 0;
                  goto LABEL_220;
                }

                goto LABEL_235;
              }

              if (v22)
              {
                if (__OFSUB__(v22, 1))
                {
                  goto LABEL_237;
                }

                if (!v161[v22 - 1])
                {
                  goto LABEL_220;
                }
              }

              v161[v22] = 0;

              return v24;
            }

            __break(1u);
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

LABEL_208:
          v161[v22] = 0;
          goto LABEL_220;
        }

        v128 = v158 - 1;
        if (!__OFSUB__(v158, 1))
        {
          goto LABEL_210;
        }

        __break(1u);
LABEL_204:
        v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        v129 = swift_allocError();
        *v130 = 1;
        v160 = v129;
        swift_willThrow();
        if ((v155 & 1) == 0)
        {
          goto LABEL_220;
        }

        if (!v22)
        {
          goto LABEL_208;
        }

        v108 = v22 - 1;
        if (__OFSUB__(v22, 1))
        {
          goto LABEL_239;
        }

LABEL_207:
        if (!v161[v108])
        {
          goto LABEL_220;
        }

        goto LABEL_208;
      }

      v28 = *a5++;
      v29 = a5;
      v30 = v28;
      if ((v28 & 0x80000000) == 0)
      {
        v31 = v30 + 1;
        goto LABEL_33;
      }

      v21 = v21 & 0xFFFFFF00 | v30;
      LOBYTE(v24) = 8;
      if (a5 == v19)
      {
        goto LABEL_29;
      }
    }

    a5 = v29 + 1;
    v21 = (*v29 << v24) | ((-255 << v24) - 1) & v21;
    v32 = v24 + 8;
    if ((v24 + 8) >= 0x20u)
    {
      goto LABEL_28;
    }

    if (a5 == v19)
    {
      goto LABEL_26;
    }

    a5 = v29 + 2;
    v21 = (v29[1] << (v24 + 8)) | ((-255 << (v24 + 8)) - 1) & v21;
    v32 = v24 + 16;
    if ((v24 + 16) > 0x1Fu)
    {
      goto LABEL_28;
    }

    if (a5 == v19)
    {
      goto LABEL_26;
    }

    a5 = v29 + 3;
    v21 = (v29[2] << v32) | ((-255 << v32) - 1) & v21;
    v32 = v24 + 24;
    if ((v24 + 24) > 0x1Fu)
    {
      goto LABEL_28;
    }

    if (a5 == v19)
    {
      goto LABEL_26;
    }

    a5 = v29 + 4;
    v21 = (v29[3] << v32) | ((-255 << v32) - 1) & v21;
    v32 = v24 + 32;
    if (v24 < 0xE0u)
    {
LABEL_28:
      LOBYTE(v24) = v32;
    }

    else if (a5 == v19 || (a5 = v29 + 5, v21 = (v29[4] << v24) | ((-255 << v24) - 1) & v21, v32 = v24 + 40, LOBYTE(v24) = v24 + 40, v24 < 0x20u))
    {
LABEL_26:
      LOBYTE(v24) = v32;
      if (!v32)
      {
        goto LABEL_127;
      }
    }

LABEL_29:
    if ((v21 & 0xC0E0) == 0x80C0)
    {
      if ((v21 & 0x1E) == 0)
      {
        goto LABEL_139;
      }

      v33 = 16;
    }

    else if ((v21 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v21 & 0x200F) == 0 || (v21 & 0x200F) == 0x200D)
      {
        goto LABEL_139;
      }

      v33 = 24;
    }

    else
    {
      if ((v21 & 0xC0C0C0F8) != 0x808080F0 || (v21 & 0x3007) == 0 || __rev16(v21 & 0x3007) > 0x400)
      {
LABEL_139:
        Unicode.UTF8.ForwardParser._invalidLength()();
        v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        v106 = swift_allocError();
        *v107 = 2;
        v160 = v106;
        swift_willThrow();
        if ((v155 & 1) == 0)
        {
          goto LABEL_220;
        }

        if (!v22)
        {
          goto LABEL_208;
        }

        v108 = v22 - 1;
        if (!__OFSUB__(v22, 1))
        {
          goto LABEL_207;
        }

        __break(1u);
        goto LABEL_144;
      }

      v33 = 32;
    }

    LODWORD(v166) = v21 >> v33;
    BYTE4(v166) = v24 - v33;
    v31 = ((1 << (v33 >> 1) << (v33 >> 1)) - 1) & (v21 + 16843009);
LABEL_33:
    v34 = __clz(v31) >> 3;
    switch(v34)
    {
      case 1u:
        v35 = ((v31 - 65793) >> 2) & 0xFC0 | ((v31 - 65793) >> 16) & 0x3F | (((v31 - 65793) & 0xF) << 12);
        break;
      case 2u:
        v35 = (((v31 - 257) & 0x1F) << 6) | ((v31 - 257) >> 8) & 0x3F;
        break;
      case 3u:
        v35 = v31 - 1;
        break;
      default:
        v36 = vdupq_n_s32(v31 - 16843009);
        v37.i64[0] = vshlq_u32(v36, v140).u64[0];
        v37.i64[1] = vshlq_u32(v36, v139).i64[1];
        v38 = vandq_s8(v37, v138);
        v39 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        v35 = (v39.i32[0] | v39.i32[1]);
        break;
    }

    if (!v35)
    {
      v20 = v22;
    }

    if (!((v35 == 0) | v27 & 1))
    {
      goto LABEL_204;
    }

    v154 = v35 != 0;
    v156 = v20;
    v157 = a5;
    v21 = v166;
    v24 = BYTE4(v166);
    v159 = v35;
    if (v35 >= 0x80)
    {
      v40 = v148;
      Unicode.Scalar.properties.getter();
      v41 = v150;
      Unicode.Scalar.Properties.canonicalCombiningClass.getter();
      (*v143)(v40, v149);
      v42 = v21;
      v43 = v151;
      static Unicode.CanonicalCombiningClass.notReordered.getter();
      LOBYTE(v40) = static FloatingPointRoundingRule.== infix(_:_:)();
      v44 = *v142;
      v45 = v43;
      v46 = v152;
      (*v142)(v45, v152);
      v47 = v46;
      v21 = v42;
      a3 = v158;
      v44(v41, v47);
      LODWORD(v35) = v159;
      a5 = v157;
      if ((v40 & 1) == 0)
      {
LABEL_82:
        if (v144 > BYTE2(v35) && (v73 = v141[BYTE2(v35)]) != 0 && ((v73[v35 >> 3] >> (v35 & 7)) & 1) != 0)
        {
          v74 = (v35 & 0x3F) << 8;
          v75 = (v35 >> 6) + v74 + 33217;
          v76 = (v74 | (v35 >> 6) & 0x3F) << 8;
          v77 = (((v76 | (v35 >> 12) & 0x3F) << 8) | (v35 >> 18)) - 2122219023;
          v78 = (v35 >> 12) + v76 + 8487393;
          if (WORD1(v35))
          {
            v78 = v77;
          }

          if (v35 >= 0x800)
          {
            v75 = v78;
          }

          v164 = ((v75 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v75) >> 3)))));
          v79 = static String._uncheckedFromUTF8(_:)();
          v145 = v27;
          v27 = a3;
          v80 = v21;
          v81 = v137;
          MEMORY[0x1865CAFF0](v79);

          v82 = v81;
          v21 = v80;
          a3 = v27;
          LODWORD(v27) = v145;
          specialized Array.append<A>(contentsOf:)(v82);
        }

        else
        {
          v83 = v163;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
          }

          v85 = *(v83 + 2);
          v84 = *(v83 + 3);
          v86 = v159;
          if (v85 >= v84 >> 1)
          {
            v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v83);
            v86 = v159;
          }

          *(v83 + 2) = v85 + 1;
          *&v83[4 * v85 + 32] = v86;
          v163 = v83;
          a5 = v157;
          a3 = v158;
        }

        goto LABEL_106;
      }
    }

    v48 = v163;
    if (!*(v163 + 2))
    {
      goto LABEL_81;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v21;
    if ((v49 & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
    }

    v50 = *(v48 + 2);
    a5 = (v48 + 32);
    v164 = v48 + 32;
    v165 = v50;
    v51 = _minimumMergeRunLength(_:)(v50);
    if (v51 >= v50)
    {
      if (v50)
      {
        v56 = v160;
        specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v50, 1, &v164);
        v160 = v56;
      }

      a3 = v158;
      v55 = v147;
    }

    else
    {
      v52 = v51;
      v145 = v27;
      v53 = v160;
      v27 = MEMORY[0x1E69E7CC0];
      if (v50 >= 2)
      {
        v27 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v27 + 16) = v50 >> 1;
      }

      v166 = (v27 + 32);
      v167 = v50 >> 1;
      v54 = v53;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v166, v162, &v164, v52);
      a3 = v158;
      v160 = v54;
      if (v54)
      {
        *(v27 + 16) = 0;

        __break(1u);
LABEL_243:
        *(v50 + 16) = 0;

        __break(1u);
        return result;
      }

      *(v27 + 16) = 0;

      v55 = v147;
      LODWORD(v27) = v145;
    }

    v21 = v146;
    v163 = v48;
    v57 = *(v48 + 2);
    if (v57)
    {
      break;
    }

LABEL_75:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v70 = v27;
      v71 = *(v48 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 1, v48);
      }

      a5 = v157;
      LODWORD(v35) = v159;
      if (v71)
      {
        v72 = *(v48 + 2) - v71;
        memmove(v48 + 32, &v48[4 * v71 + 32], 4 * v72);
        LODWORD(v35) = v159;
        *(v48 + 2) = v72;
        a5 = v157;
      }

      v163 = v48;
      LODWORD(v27) = v70;
      v21 = v146;
LABEL_81:
      if (v35 > 0x7F)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    }

    v87 = MEMORY[0x1E69E7CC0];
    if (*(v48 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd);
      v87 = swift_allocObject();
      v88 = _swift_stdlib_malloc_size(v87);
      v89 = v88 - 32;
      if (v88 < 32)
      {
        v89 = v88 - 29;
      }

      v87[2] = 0;
      v87[3] = 2 * (v89 >> 2);
    }

    v163 = v87;
    a5 = v157;
    a3 = v158;
    LODWORD(v35) = v159;
    if (v159 > 0x7F)
    {
      goto LABEL_82;
    }

LABEL_104:
    if (v22 >= a3)
    {
      v102 = v161;
      v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
      lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
      v133 = swift_allocError();
      *v134 = 0;
      v160 = v133;
      swift_willThrow();
      if ((v155 & 1) == 0)
      {
        goto LABEL_220;
      }

      v105 = v158;
      goto LABEL_219;
    }

    v161[v22++] = v35;
LABEL_106:
    v27 = v154 & v27;
    v19 = v153;
    v20 = v156;
    if (v22 >= a3)
    {
      goto LABEL_127;
    }
  }

  v58 = 0;
  while (1)
  {
    v59 = *&a5[4 * v58];
    if (v59 > 0x7F)
    {
      v65 = (*&a5[4 * v58] & 0x3F) << 8;
      if (v59 >= 0x800)
      {
        v66 = v59 >> 12;
        v67 = (v65 | (v59 >> 6) & 0x3F) << 8;
        v68 = HIWORD(v59);
        v60 = (((v67 | (v59 >> 12) & 0x3F) << 8) | (v59 >> 18)) - 2122219023;
        v69 = v66 + v67 + 8487393;
        if (!v68)
        {
          v60 = v69;
        }
      }

      else
      {
        v60 = (v59 >> 6) + v65 + 33217;
      }
    }

    else
    {
      v60 = v59 + 1;
    }

    if (!v161)
    {
      goto LABEL_240;
    }

    if (__OFSUB__(a3, v22))
    {
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
LABEL_129:
      v94 = *(v24 + 16);
      v27 = v24 + 32;
      v164 = (v24 + 32);
      v165 = v94;
      v95 = _minimumMergeRunLength(_:)(v94);
      if (v95 < v94)
      {
        v96 = v95;
        v97 = a5;
        v98 = v160;
        v99 = v94 >> 1;
        if (v94 >= 2)
        {
          v50 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v50 + 16) = v99;
        }

        else
        {
          v50 = MEMORY[0x1E69E7CC0];
        }

        v166 = (v50 + 32);
        v167 = v99;
        specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v166, v162, &v164, v96);
        v160 = v98;
        if (v98)
        {
          goto LABEL_243;
        }

        *(v50 + 16) = 0;

        a5 = v97;
LABEL_149:
        v110 = v147;
        v163 = v24;
        v111 = *(v24 + 16);
        a3 = v158;
        if (!v111)
        {
LABEL_168:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            specialized Array.replaceSubrange<A>(_:with:)(0, *(v24 + 16));
          }

          else
          {
            v122 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1g5(0, *(v24 + 24) >> 1);

            v163 = v122;
          }

          v19 = v153;
          v20 = v156;
          LOBYTE(v27) = v145;
          goto LABEL_172;
        }

        v112 = 0;
        while (1)
        {
          v113 = *(v27 + 4 * v112);
          if (v113 > 0x7F)
          {
            v117 = (*(v27 + 4 * v112) & 0x3F) << 8;
            if (v113 >= 0x800)
            {
              v118 = v113 >> 12;
              v119 = (v117 | (v113 >> 6) & 0x3F) << 8;
              v120 = HIWORD(v113);
              v114 = (((v119 | (v113 >> 12) & 0x3F) << 8) | (v113 >> 18)) - 2122219023;
              v121 = v118 + v119 + 8487393;
              if (!v120)
              {
                v114 = v121;
              }
            }

            else
            {
              v114 = (v113 >> 6) + v117 + 33217;
            }
          }

          else
          {
            v114 = v113 + 1;
          }

          if (!v161)
          {
            goto LABEL_241;
          }

          if (__OFSUB__(a3, v22))
          {
            goto LABEL_228;
          }

          if (a3 - v22 < 4 - (__clz(v114) >> 3))
          {
            break;
          }

          v115 = 0;
          ++v112;
          v116 = &v161[v22];
          while (1)
          {
            v116[v115] = v114 - 1;
            if (v110 - v22 == v115)
            {
              break;
            }

            ++v115;
            v63 = v114 >= 0x100;
            v114 >>= 8;
            if (!v63)
            {
              goto LABEL_161;
            }
          }

          v115 = a3 - v22;
          if (v114 > 0xFF)
          {
            goto LABEL_230;
          }

LABEL_161:
          v64 = __OFADD__(v22, v115);
          v22 += v115;
          if (v64)
          {
            goto LABEL_229;
          }

          if (v112 == v111)
          {
            goto LABEL_168;
          }
        }

        v125 = v161;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
        v126 = swift_allocError();
        *v127 = 0;
        v160 = v126;
        swift_willThrow();
        if ((v155 & 1) == 0)
        {
          goto LABEL_220;
        }

        if (v22 >= v158)
        {
          if (!__OFSUB__(v158, 1))
          {
            v125[v158 - 1] = 0;
            goto LABEL_220;
          }

          goto LABEL_236;
        }

        if (v22)
        {
          if (__OFSUB__(v22, 1))
          {
            goto LABEL_238;
          }

          if (!v125[v22 - 1])
          {
            goto LABEL_220;
          }
        }

        v125[v22] = 0;
        goto LABEL_220;
      }

LABEL_144:
      if (v94)
      {
        v109 = v160;
        specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v94, 1, &v164);
        v160 = v109;
      }

      goto LABEL_149;
    }

    if (a3 - v22 < 4 - (__clz(v60) >> 3))
    {
      break;
    }

    v61 = 0;
    ++v58;
    v62 = &v161[v22];
    while (1)
    {
      v62[v61] = v60 - 1;
      if (v55 - v22 == v61)
      {
        break;
      }

      ++v61;
      v63 = v60 >= 0x100;
      v60 >>= 8;
      if (!v63)
      {
        goto LABEL_68;
      }
    }

    v61 = a3 - v22;
    if (v60 > 0xFF)
    {
      goto LABEL_227;
    }

LABEL_68:
    v64 = __OFADD__(v22, v61);
    v22 += v61;
    if (v64)
    {
      goto LABEL_226;
    }

    if (v58 == v57)
    {
      goto LABEL_75;
    }
  }

  v102 = v161;
  v24 = &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
  lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError, &_sSR10FoundationE18DecompositionError33_A8D938B711950E5A2A1A070C68A5275BLLOys5UInt8V_GMd);
  v103 = swift_allocError();
  *v104 = 0;
  v160 = v103;
  swift_willThrow();
  if ((v155 & 1) == 0)
  {
    goto LABEL_220;
  }

  v105 = v158;
  if (v22 >= v158)
  {
LABEL_219:
    v102[v105 - 1] = 0;
    goto LABEL_220;
  }

  if (!v22)
  {
    goto LABEL_138;
  }

  if (__OFSUB__(v22, 1))
  {
    goto LABEL_233;
  }

  if (v102[v22 - 1])
  {
LABEL_138:
    v102[v22] = 0;
  }

LABEL_220:

  return v24;
}