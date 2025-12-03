@interface NSKeyedUnarchiver
+ (BOOL)_evaluateCycleSecurityRules:(NSKeyedUnarchiverCycleEvaluationRules *)rules;
+ (Class)classForClassName:(NSString *)codedName;
+ (NSArray)unarchivedArrayOfObjectsOfClass:(Class)cls fromData:(NSData *)data error:(NSError *)error;
+ (NSArray)unarchivedArrayOfObjectsOfClasses:(NSSet *)classes fromData:(NSData *)data error:(NSError *)error;
+ (NSDictionary)unarchivedDictionaryWithKeysOfClass:(Class)keyCls objectsOfClass:(Class)valueCls fromData:(NSData *)data error:(NSError *)error;
+ (NSDictionary)unarchivedDictionaryWithKeysOfClasses:(NSSet *)keyClasses objectsOfClasses:(NSSet *)valueClasses fromData:(NSData *)data error:(NSError *)error;
+ (id)_copyByArchiving:(id)archiving;
+ (id)_strictlyUnarchivedObjectOfClasses:(id)classes fromData:(id)data error:(id *)error;
+ (id)unarchiveObjectWithData:(NSData *)data;
+ (id)unarchiveObjectWithFile:(NSString *)path;
+ (id)unarchiveTopLevelObjectWithData:(NSData *)data error:(NSError *)error;
+ (id)unarchivedObjectOfClass:(Class)cls fromData:(NSData *)data error:(NSError *)error;
+ (id)unarchivedObjectOfClasses:(NSSet *)classes fromData:(NSData *)data error:(NSError *)error;
+ (int)_swift_checkClassAndWarnForKeyedArchiving:(Class)archiving operation:(int)operation;
+ (void)initialize;
+ (void)setClass:(Class)cls forClassName:(NSString *)codedName;
- (BOOL)_containsNextUnkeyedObject;
- (BOOL)_strictSecureDecodingEnabled;
- (BOOL)_validateAllowedClassesContainsClass:(Class)class forKey:(id)key;
- (BOOL)_validateAllowedClassesContainsClassOfReference:(id)reference forKey:(id)key;
- (BOOL)_willEnforceExplicitPlistTypes;
- (BOOL)containsValueForKey:(NSString *)key;
- (BOOL)decodeBoolForKey:(NSString *)key;
- (BOOL)requiresSecureCoding;
- (Class)classForClassName:(NSString *)codedName;
- (NSDecodingFailurePolicy)decodingFailurePolicy;
- (NSKeyedUnarchiver)init;
- (NSKeyedUnarchiver)initForReadingWithData:(NSData *)data;
- (NSKeyedUnarchiver)initWithStream:(id)stream;
- (const)decodeBytesForKey:(NSString *)key returnedLength:(NSUInteger *)lengthp;
- (double)decodeDoubleForKey:(NSString *)key;
- (float)decodeFloatForKey:(NSString *)key;
- (id)_blobForCurrentObject;
- (id)_decodeArrayOfObjectsForKey:(id)key;
- (id)_decodeObjectOfClass:(Class)class;
- (id)_decodePropertyListForKey:(id)key;
- (id)_initForReadingFromData:(id)data error:(id *)error throwLegacyExceptions:(BOOL)exceptions;
- (id)_initWithStream:(__CFReadStream *)stream data:(id)data topDict:(__CFDictionary *)dict;
- (id)allowedClasses;
- (id)decodeArrayOfObjectsOfClasses:(id)classes forKey:(id)key;
- (id)decodeDictionaryWithKeysOfClasses:(id)classes objectsOfClasses:(id)ofClasses forKey:(id)key;
- (id)decodeObject;
- (id)decodeObjectForKey:(NSString *)key;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)description;
- (int)decodeIntForKey:(NSString *)key;
- (int32_t)decodeInt32ForKey:(NSString *)key;
- (int64_t)decodeInt64ForKey:(NSString *)key;
- (int64_t)versionForClassName:(id)name;
- (uint64_t)_validatePropertyListClass:(uint64_t)class forKey:;
- (unint64_t)_decodeCollectionOfClass:(void *)class allowedClasses:(__CFString *)classes forKey:;
- (void)_allowDecodingCyclesInSecureMode;
- (void)_enableStrictSecureDecodingMode;
- (void)_enforceExplicitPlistTypes;
- (void)_enforceSubclassesMustBeExplicitlyMentionedWhenDecoded;
- (void)_replaceObject:(id)object withObject:(id)withObject;
- (void)_setAllowedClassNames:(id)names;
- (void)_temporaryMapReplaceObject:(id)object withObject:(id)withObject;
- (void)dealloc;
- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at;
- (void)decodeBytesWithReturnedLength:(unint64_t *)length;
- (void)decodeValueOfObjCType:(const char *)type at:(void *)at;
- (void)decodeValuesOfObjCTypes:(const char *)types;
- (void)finishDecoding;
- (void)replaceObject:(id)object withObject:(id)withObject;
- (void)setClass:(Class)cls forClassName:(NSString *)codedName;
- (void)setDecodingFailurePolicy:(NSDecodingFailurePolicy)decodingFailurePolicy;
- (void)setRequiresSecureCoding:(BOOL)requiresSecureCoding;
@end

@implementation NSKeyedUnarchiver

- (BOOL)requiresSecureCoding
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v3 = atomic_load(&self->_flags);
  return (v3 >> 2) & 1;
}

- (void)finishDecoding
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    goto LABEL_13;
  }

  v4 = atomic_load(&self->_flags);
  if ((v4 & 2) != 0)
  {
    return;
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(NSKeyedUnarchiverDelegate *)self->_delegate unarchiverWillFinish:self];
  }

  v5 = atomic_load(&self->_flags);
  if (v5 != self->_pac_signature)
  {
LABEL_13:
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  atomic_store(v6 | 2, &self->_flags);
  v7 = atomic_load(&self->_flags);
  self->_pac_signature = v7;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [(NSKeyedUnarchiverDelegate *)delegate unarchiverDidFinish:self];
  }
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  data = self->_data;
  if (data)
  {
    CFRelease(data);
  }

  containers = self->_containers;
  if (containers)
  {
    for (i = CFArrayGetCount(containers); i >= 1; i = CFArrayGetCount(self->_containers))
    {
      if (!CFArrayGetValueAtIndex(self->_containers, i - 1))
      {
        break;
      }

      Count = CFArrayGetCount(self->_containers);
      ValueAtIndex = CFArrayGetValueAtIndex(self->_containers, Count - 1);
      CFArrayRemoveValueAtIndex(self->_containers, Count - 1);
      CFRelease(ValueAtIndex);
      if (Count > 1)
      {
        v8 = CFArrayGetValueAtIndex(self->_containers, Count - 2);
        v9 = CFGetTypeID(v8);
        v10 = atomic_load(&self->_flags);
        pac_signature = self->_pac_signature;
        if (v9 == 19)
        {
          if (v10 != pac_signature)
          {
            goto LABEL_32;
          }

          v12 = atomic_load(&self->_flags);
          v13 = v12 | 1;
        }

        else
        {
          if (v10 != pac_signature)
          {
LABEL_32:
            __NSPoisoned();
          }

          v14 = atomic_load(&self->_flags);
          v13 = v14 & 0xFFFFFFFFFFFFFFFELL;
        }

        atomic_store(v13, &self->_flags);
        v15 = atomic_load(&self->_flags);
        self->_pac_signature = v15;
      }
    }

    CFRelease(self->_containers);
  }

  objects = self->_objects;
  if (objects)
  {
    CFRelease(objects);
  }

  objRefMap = self->_objRefMap;
  if (objRefMap)
  {
    CFRelease(objRefMap);
  }

  replacementMap = self->_replacementMap;
  if (replacementMap)
  {
    CFRelease(replacementMap);
  }

  nameClassMap = self->_nameClassMap;
  if (nameClassMap)
  {
    CFRelease(nameClassMap);
  }

  tmpRefObjMap = self->_tmpRefObjMap;
  if (tmpRefObjMap)
  {
    CFRelease(tmpRefObjMap);
  }

  refObjMap = self->_refObjMap;
  if (refObjMap)
  {
    CFRelease(refObjMap);
  }

  offsetData = self->_offsetData;
  if (offsetData)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E4A8], offsetData);
  }

  offsetObjMap = self->_offsetObjMap;
  if (offsetObjMap)
  {
    CFRelease(offsetObjMap);
  }

  v24.receiver = self;
  v24.super_class = NSKeyedUnarchiver;
  [(NSKeyedUnarchiver *)&v24 dealloc];
}

- (NSDecodingFailurePolicy)decodingFailurePolicy
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v3 = atomic_load(&self->_flags);
  return ~(v3 >> 4) & 1;
}

- (id)allowedClasses
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v3 = atomic_load(&self->_flags);
  if ((v3 & 4) != 0)
  {
    allowedClasses = self->_helper->_allowedClasses;

    return [(NSMutableArray *)allowedClasses lastObject];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NSKeyedUnarchiver;
    return [(NSCoder *)&v6 allowedClasses];
  }
}

+ (void)initialize
{
  if (NSKeyedUnarchiver == self)
  {
    if (getenv("NSWarnAboutOldStyleArchiverMethods"))
    {
      _warnArchiverCompat = 1;
    }

    v3 = objc_lookUpClass("__NSLocalTimeZone");

    [NSKeyedUnarchiver setClass:v3 forClassName:@"NSLocalTimeZone"];
  }
}

- (void)_allowDecodingCyclesInSecureMode
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  atomic_fetch_or(&self->_flags, 0x100uLL);
  v3 = atomic_load(&self->_flags);
  self->_pac_signature = v3;
}

- (BOOL)_containsNextUnkeyedObject
{
  genericKey = self->_genericKey;
  if (genericKey <= 0x27)
  {
    genericKey = generic_keys[genericKey];
    if (genericKey)
    {
      goto LABEL_3;
    }

    return 0;
  }

  genericKey = [NSString stringWithFormat:@"$%ld", genericKey];
  if (!genericKey)
  {
    return 0;
  }

LABEL_3:
  containers = self->_containers;
  if (!containers)
  {
    return __CFBinaryPlistGetOffsetForValueFromDictionary3();
  }

  Count = CFArrayGetCount(containers);
  ValueAtIndex = CFArrayGetValueAtIndex(self->_containers, Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v9 = Value;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
  }

  else
  {
    Value = CFDictionaryGetValue(ValueAtIndex, genericKey);
    v11 = Value;
  }

  return Value != 0;
}

- (id)decodeObject
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_warnArchiverCompat == 1)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v4);
  }

  v5 = atomic_load(&self->_flags);
  if (v5 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v10);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v11[0] = 0;
  genericKey = self->_genericKey;
  self->_genericKey = genericKey + 1;
  if (genericKey > 0x27)
  {
    genericKey = [NSString stringWithFormat:@"$%ld", genericKey];
  }

  else
  {
    genericKey = generic_keys[genericKey];
  }

  _decodeObject(self, genericKey, v11);
  return v11[0];
}

+ (int)_swift_checkClassAndWarnForKeyedArchiving:(Class)archiving operation:(int)operation
{
  ObjCClassMetadata = swift_getObjCClassMetadata();

  return specialized static NSKeyedUnarchiver.__swift_checkClassAndWarnForKeyedArchiving(_:operation:)(ObjCClassMetadata, operation);
}

- (id)_blobForCurrentObject
{
  containers = self->_containers;
  if (containers)
  {
    v4 = CFArrayGetCount(containers) - 1;
    v5 = self->_containers;

    return CFArrayGetValueAtIndex(v5, v4);
  }

  else
  {
    Object = __CFBinaryPlistCreateObject();
    result = 0;
    if (Object)
    {
      return 0;
    }
  }

  return result;
}

- (NSKeyedUnarchiver)init
{
  v3 = [NSString stringWithFormat:@"%@: cannot use -init for initialization", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v3 userInfo:0]);
}

- (id)_initWithStream:(__CFReadStream *)stream data:(id)data topDict:(__CFDictionary *)dict
{
  self->_objRefMap = CFDictionaryCreateMutable(0, 0, 0, 0);
  _CFDictionarySetCapacity();
  self->_tmpRefObjMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
  _CFDictionarySetCapacity();
  self->_refObjMap = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  _CFDictionarySetCapacity();
  return self;
}

- (id)_initForReadingFromData:(id)data error:(id *)error throwLegacyExceptions:(BOOL)exceptions
{
  exceptionsCopy = exceptions;
  v64[1] = *MEMORY[0x1E69E9840];
  v57 = 0;
  valuePtr = -1;
  v58 = 0u;
  v59 = 0u;
  self->_data = 0;
  p_flags = &self->_flags;
  atomic_store(0x10uLL, &self->_flags);
  self->_delegate = 0;
  self->_containers = 0;
  self->_objects = 0;
  self->_objRefMap = 0;
  self->_replacementMap = 0;
  self->_nameClassMap = 0;
  self->_tmpRefObjMap = 0;
  self->_refObjMap = 0;
  self->_genericKey = 0;
  self->_helper = objc_alloc_init(_NSKeyedUnarchiverHelper);
  self->_offsetObjMap = 0;
  v8 = atomic_load(p_flags);
  self->_pac_signature = v8;
  v9 = atomic_load(p_flags);
  if (v9 != self->_pac_signature)
  {
    goto LABEL_92;
  }

  v10 = &self->_flags;
  v11 = atomic_load(&self->_flags);
  atomic_store(v11 | 4, &self->_flags);
  v12 = atomic_load(&self->_flags);
  self->_pac_signature = v12;
  v13 = atomic_load(&self->_flags);
  if (v13 != self->_pac_signature)
  {
    goto LABEL_92;
  }

  v14 = atomic_load(v10);
  atomic_store(v14 & 0xFFFFFFFFFFFFFFEFLL, v10);
  v15 = atomic_load(v10);
  self->_pac_signature = v15;
  if (!data)
  {
    if (error)
    {
      v21 = [[NSString alloc] initWithFormat:@"%@: data is NULL", _NSMethodExceptionProem(self, a2)];
      v63 = @"NSDebugDescription";
      v64[0] = v21;
      *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1]);
    }

    selfCopy = 0;
    goto LABEL_67;
  }

  v52 = [[_NSPerformanceMeter alloc] initWithTarget:self, data, 0];
  bytes = [data bytes];
  v17 = [data length];
  v18 = v17;
  if (!v17 || !bytes)
  {
    if (exceptionsCopy)
    {
      [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0];
    }

    [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"%@: data is empty; did you forget to send -finishEncoding to the NSKeyedArchiver?", _NSMethodExceptionProem(self, a2)];
    if (!error)
    {
      goto LABEL_62;
    }

    goto LABEL_27;
  }

  if (v17 >= 0xD)
  {
    if (*(bytes + 1) != 11)
    {
      goto LABEL_30;
    }

    if ((*(bytes + 2) != 0x7274736465707974 || *(bytes + 5) != 0x6D61657274736465) && (*(bytes + 2) != 0x79746D6165727473 || *(bytes + 5) != 0x64657079746D6165))
    {
      goto LABEL_30;
    }

    if (exceptionsCopy)
    {
      [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0];
    }

    [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"%@: non-keyed archive cannot be decoded by NSKeyedUnarchiver", _NSMethodExceptionProem(self, a2)];
    if (!error)
    {
      goto LABEL_62;
    }

LABEL_27:
    error = [(NSKeyedUnarchiver *)self error];
LABEL_28:
    selfCopy = 0;
    *error = error;
LABEL_63:
    v28 = 1;
    goto LABEL_64;
  }

  if (v17 < 8)
  {
    goto LABEL_55;
  }

LABEL_30:
  if (!__CFBinaryPlistGetTopLevelInfo() || (offsetObjMap = self->_offsetObjMap, !__CFBinaryPlistGetOffsetForValueFromDictionary3()) || !__CFBinaryPlistCreateObject() || !v57 || (v51 = CFGetTypeID(v57), v51 != CFNumberGetTypeID()) || !CFNumberGetValue(v57, kCFNumberSInt32Type, &valuePtr) || valuePtr != 100000)
  {
    if (v18 >= 0x78)
    {
      v29 = CFPropertyListCreateWithData(*MEMORY[0x1E695E4A8], data, 1uLL, 0, 0);
      if (v29)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v29))
        {
          Value = CFDictionaryGetValue(v29, @"$version");
          v57 = Value;
          if (Value)
          {
            v32 = CFGetTypeID(Value);
            if (v32 == CFNumberGetTypeID() && CFNumberGetValue(v57, kCFNumberSInt32Type, &valuePtr) && valuePtr == 100000)
            {
              v33 = CFDictionaryGetValue(v29, @"$top");
              v34 = CFDictionaryGetValue(v29, @"$objects");
              if (v33)
              {
                v35 = v34;
                if (v34)
                {
                  if (CFGetTypeID(v34) == 19)
                  {
                    self->_containers = CFArrayCreateMutable(0, 0, 0);
                    CFRetain(v33);
                    CFArrayAppendValue(self->_containers, v33);
                    v36 = CFGetTypeID(v33);
                    v37 = atomic_load(&self->_flags);
                    pac_signature = self->_pac_signature;
                    if (v36 == 19)
                    {
                      if (v37 == pac_signature)
                      {
                        v39 = atomic_load(&self->_flags);
                        v40 = v39 | 1;
LABEL_88:
                        atomic_store(v40, &self->_flags);
                        v46 = atomic_load(&self->_flags);
                        self->_pac_signature = v46;
                        self->_objects = CFRetain(v35);
                        [(NSKeyedUnarchiver *)self _initWithStream:0 data:0 topDict:v29];
                        CFRelease(v29);
                        v28 = 0;
                        goto LABEL_89;
                      }
                    }

                    else if (v37 == pac_signature)
                    {
                      v45 = atomic_load(&self->_flags);
                      v40 = v45 & 0xFFFFFFFFFFFFFFFELL;
                      goto LABEL_88;
                    }

LABEL_92:
                    __NSPoisoned();
                  }
                }
              }

              CFRelease(v29);
              if (exceptionsCopy)
              {
                [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0];
              }

              [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:@"%@: data is corrupt or archive is missing key components or object is too large to decode", _NSMethodExceptionProem(self, a2)];
              if (!error)
              {
                goto LABEL_62;
              }

LABEL_85:
              error = [(NSKeyedUnarchiver *)self error];
              goto LABEL_28;
            }
          }
        }

        else
        {
          v57 = 0;
        }

        CFRelease(v29);
        if (exceptionsCopy)
        {
          [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0];
        }

        v44 = _NSMethodExceptionProem(self, a2);
        [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"%@: incomprehensible archive version (%d)", v44, valuePtr];
        if (!error)
        {
          goto LABEL_62;
        }

        goto LABEL_85;
      }

      v57 = 0;
    }

LABEL_55:
    v60 = 0;
    if (v18 >= 8)
    {
      v41 = 8;
    }

    else
    {
      v41 = v18;
    }

    [data getBytes:&v60 range:{0, v41, offsetObjMap}];
    if (exceptionsCopy)
    {
      [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0];
    }

    v42 = _NSMethodExceptionProem(self, a2);
    [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"%@: incomprehensible archive (0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x)", v42, v60, SBYTE1(v60), SBYTE2(v60), SBYTE3(v60), SBYTE4(v60), SBYTE5(v60), SBYTE6(v60), SHIBYTE(v60)];
    if (error)
    {
      *error = [(NSKeyedUnarchiver *)self error];
    }

    goto LABEL_62;
  }

  v49 = self->_offsetObjMap;
  if ((__CFBinaryPlistGetOffsetForValueFromDictionary3() & 1) == 0)
  {
    if (exceptionsCopy)
    {
      [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0, v49];
    }

    [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:@"%@: data is corrupt or archive is missing key components or object is too large to decode", _NSMethodExceptionProem(self, a2)];
    if (!error)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

  v50 = self->_offsetObjMap;
  if ((__CFBinaryPlistGetOffsetForValueFromDictionary3() & 1) == 0)
  {
    if (exceptionsCopy)
    {
      [(NSKeyedUnarchiver *)self setDecodingFailurePolicy:0, v50];
    }

    [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:@"%@: data is corrupt or archive is missing key components or object is too large to decode", _NSMethodExceptionProem(self, a2)];
    if (!error)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

  if ((*bytes & 0xF0) != 0xA0)
  {
    if (error)
    {
      v47 = [[NSString alloc] initWithFormat:@"%@: data is corrupt or archive is missing key components or object is too large to decode", _NSMethodExceptionProem(self, a2)];
      v61 = @"NSDebugDescription";
      v62 = v47;
      *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1]);
    }

LABEL_62:
    selfCopy = 0;
    goto LABEL_63;
  }

  v24 = *MEMORY[0x1E695E4A8];
  v25 = MEMORY[0x1865CD580](*MEMORY[0x1E695E4A8], 48, 0x1000040EED21634, 0);
  self->_offsetData = v25;
  v26 = v59;
  *v25 = v58;
  *(v25 + 16) = v26;
  offsetData = self->_offsetData;
  offsetData->var1 = 0;
  offsetData->var2 = 0;
  self->_data = CFRetain(data);
  self->_bytes = bytes;
  self->_len = v18;
  self->_objRefMap = CFDictionaryCreateMutable(0, 0, 0, 0);
  self->_tmpRefObjMap = CFDictionaryCreateMutable(v24, 0, 0, 0);
  self->_refObjMap = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  _CFDictionarySetCapacity();
  _CFDictionarySetCapacity();
  v28 = 0;
  self->_offsetObjMap = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
LABEL_89:
  selfCopy = self;
LABEL_64:
  if (v52)
  {
    [(_NSPerformanceMeter *)v52 invalidate];
  }

  if (v28)
  {
LABEL_67:
  }

  return selfCopy;
}

+ (id)unarchivedObjectOfClass:(Class)cls fromData:(NSData *)data error:(NSError *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = cls;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v11 count:1];
  v9 = [self unarchivedObjectOfClasses:v8 fromData:data error:{error, v11, v12}];

  return v9;
}

+ (NSArray)unarchivedArrayOfObjectsOfClass:(Class)cls fromData:(NSData *)data error:(NSError *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = cls;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v11 count:1];
  v9 = [self unarchivedArrayOfObjectsOfClasses:v8 fromData:data error:{error, v11, v12}];

  return v9;
}

+ (NSDictionary)unarchivedDictionaryWithKeysOfClass:(Class)keyCls objectsOfClass:(Class)valueCls fromData:(NSData *)data error:(NSError *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = valueCls;
  v14[0] = keyCls;
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v14 count:1];
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v13 count:1];
  v11 = [self unarchivedDictionaryWithKeysOfClasses:v9 objectsOfClasses:v10 fromData:data error:error];

  return v11;
}

+ (id)unarchivedObjectOfClasses:(NSSet *)classes fromData:(NSData *)data error:(NSError *)error
{
  v7 = [[self alloc] initForReadingFromData:data error:error];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v7 setRequiresSecureCoding:1];
  [v8 setDecodingFailurePolicy:1];
  v9 = [v8 decodeTopLevelObjectOfClasses:classes forKey:@"root" error:error];

  return v9;
}

+ (NSArray)unarchivedArrayOfObjectsOfClasses:(NSSet *)classes fromData:(NSData *)data error:(NSError *)error
{
  v11[6] = *MEMORY[0x1E69E9840];
  v7 = [[self alloc] initForReadingFromData:data error:error];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v7 setRequiresSecureCoding:1];
  [v8 setDecodingFailurePolicy:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__NSKeyedUnarchiver_unarchivedArrayOfObjectsOfClasses_fromData_error___block_invoke;
  v11[3] = &unk_1E69F49F0;
  v11[4] = v8;
  v11[5] = classes;
  v9 = [(NSCoder *)v8 __tryDecodeObjectForKey:error error:v11 decodeBlock:?];

  return v9;
}

+ (id)_copyByArchiving:(id)archiving
{
  v3 = [[self alloc] initForReadingFromData:+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver error:{"archivedDataWithRootObject:requiringSecureCoding:error:", archiving, 0, 0), 0}];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = atomic_load(v3 + 2);
  if (v5 != v3[17])
  {
    __NSPoisoned();
  }

  v6 = atomic_load(v3 + 2);
  atomic_store(v6 & 0xFFFFFFFFFFFFFFFBLL, v3 + 2);
  v7 = atomic_load(v3 + 2);
  v3[17] = v7;
  v8 = [v3 decodeObjectForKey:@"root"];

  return v8;
}

+ (NSDictionary)unarchivedDictionaryWithKeysOfClasses:(NSSet *)keyClasses objectsOfClasses:(NSSet *)valueClasses fromData:(NSData *)data error:(NSError *)error
{
  v13[7] = *MEMORY[0x1E69E9840];
  v9 = [[self alloc] initForReadingFromData:data error:error];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  [v9 setRequiresSecureCoding:1];
  [v10 setDecodingFailurePolicy:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__NSKeyedUnarchiver_unarchivedDictionaryWithKeysOfClasses_objectsOfClasses_fromData_error___block_invoke;
  v13[3] = &unk_1E69F4A18;
  v13[4] = v10;
  v13[5] = keyClasses;
  v13[6] = valueClasses;
  v11 = [(NSCoder *)v10 __tryDecodeObjectForKey:error error:v13 decodeBlock:?];

  return v11;
}

+ (id)_strictlyUnarchivedObjectOfClasses:(id)classes fromData:(id)data error:(id *)error
{
  v7 = [[self alloc] initForReadingFromData:data error:error];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v7 setRequiresSecureCoding:1];
  [v8 setDecodingFailurePolicy:1];
  v9 = atomic_load(v8 + 2);
  if (v9 != v8[17])
  {
    __NSPoisoned();
  }

  atomic_fetch_or(v8 + 2, 0x20uLL);
  v10 = atomic_load(v8 + 2);
  v8[17] = v10;
  v11 = [v8 decodeTopLevelObjectOfClasses:classes forKey:@"root" error:error];

  return v11;
}

- (NSKeyedUnarchiver)initForReadingWithData:(NSData *)data
{
  v3 = [(NSKeyedUnarchiver *)self _initForReadingFromData:data error:0 throwLegacyExceptions:dyld_program_sdk_at_least() ^ 1];
  v4 = v3;
  if (v3)
  {
    [(NSKeyedUnarchiver *)v3 setDecodingFailurePolicy:0];
    v5 = atomic_load(&v4->_flags);
    if (v5 != v4->_pac_signature)
    {
      __NSPoisoned();
    }

    v6 = atomic_load(&v4->_flags);
    atomic_store(v6 & 0xFFFFFFFFFFFFFFFBLL, &v4->_flags);
    v7 = atomic_load(&v4->_flags);
    v4->_pac_signature = v7;
    if (_NSCoderGetTrustRestrictions() != 2)
    {
      v8 = _os_feature_enabled_impl();
      v9 = _os_feature_enabled_impl();
      if (v8)
      {
        [(NSCoder *)v4 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@: NSKeyedUnarchiver was used with secure coding disabled.", _NSMethodExceptionProem(v4, sel_initForReadingWithData_)];

        return 0;
      }

      else if (v9 && initForReadingWithData__onceToken != -1)
      {
        dispatch_once(&initForReadingWithData__onceToken, &__block_literal_global_21);
      }
    }
  }

  return v4;
}

void __44__NSKeyedUnarchiver_initForReadingWithData___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _NSRuntimeIssuesLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_18075C000, v0, OS_LOG_TYPE_FAULT, "NSKeyedUnarchiver was created with secure coding implicitly disabled. This simulated crash will soon turn into an actual crash. See rdar://104622435 for help.", v1, 2u);
  }
}

- (NSKeyedUnarchiver)initWithStream:(id)stream
{
  MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v22 = v6;
  v30 = *MEMORY[0x1E69E9840];
  if (!v3 || (v7 = v3, TypeID = CFReadStreamGetTypeID(), TypeID != CFGetTypeID(v7)))
  {
    v19 = v22;
    v20 = [NSString stringWithFormat:@"%@: stream argument is not a read stream", _NSMethodExceptionProem(v22, v5)];
    goto LABEL_27;
  }

  if ((CFReadStreamGetStatus(v7) - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v22;
    v20 = [NSString stringWithFormat:@"%@: stream is not open", _NSMethodExceptionProem(v22, v5)];
LABEL_27:
    v21 = v20;

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0]);
  }

  v9 = CFReadStreamRead(v7, buffer, 0x2000);
  allocator = *MEMORY[0x1E695E4A8];
  if (v9 < 1)
  {
    v14 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    LODWORD(v12) = 0;
    do
    {
      if ((v9 ^ 0x7FFFFFFFu) < v10 || v12 >= 0x40000000)
      {
        if (v11)
        {
          CFAllocatorDeallocate(allocator, v11);
        }

LABEL_23:
        [(objc_class *)v22 __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"stream too big"];
        v11 = 0;
        v14 = 0;
        goto LABEL_24;
      }

      v14 = v9 + v10;
      if (v12 < v14)
      {
        v12 = 2 * v12 <= v14 ? v14 : (2 * v12);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = ___NSConvertReadStreamToBytes_block_invoke;
        v24[3] = &unk_1E69F4BA8;
        v24[4] = &v25;
        v11 = MEMORY[0x1865CFE40](allocator, v11, v12, 4189258669, 0, v24);
        v15 = *(v26 + 24);
        _Block_object_dispose(&v25, 8);
        if (v15)
        {
          goto LABEL_23;
        }
      }

      memmove(&v11[v10], buffer, v9 & 0x7FFFFFFF);
      v9 = CFReadStreamRead(v7, buffer, 0x2000);
      v10 = v14;
    }

    while (v9 >= 1);
    if (v11)
    {
      goto LABEL_24;
    }
  }

  [(objc_class *)v22 __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"stream has no or too few bytes (%lu)", v14];
LABEL_24:
  v16 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v11, v14, allocator);
  v17 = [(objc_class *)v22 initForReadingWithData:v16];
  CFRelease(v16);
  return v17;
}

+ (id)unarchiveObjectWithFile:(NSString *)path
{
  if (!path)
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:path options:0 error:0];
  if (v6)
  {
    v7 = v6;
    v8 = [[self alloc] initForReadingWithData:v6];
    v9 = [v8 decodeObjectForKey:@"root"];
    [v8 finishDecoding];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

+ (id)unarchiveObjectWithData:(NSData *)data
{
  v5 = objc_autoreleasePoolPush();
  v6 = [[self alloc] initForReadingWithData:data];
  v7 = [v6 decodeObjectForKey:@"root"];
  [v6 finishDecoding];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (id)unarchiveTopLevelObjectWithData:(NSData *)data error:(NSError *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [[self alloc] initForReadingWithData:data];
  v9 = [v8 decodeTopLevelObjectForKey:@"root" error:&v15];
  v10 = v9;
  if (!error || v9)
  {
    [v8 finishDecoding];

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = v15;
    [v8 finishDecoding];

    objc_autoreleasePoolPop(v7);
    v12 = v15;
    *error = v15;
    v13 = v12;
  }

  return v10;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSKeyedUnarchiver;
  return [(NSKeyedUnarchiver *)&v3 description];
}

+ (void)setClass:(Class)cls forClassName:(NSString *)codedName
{
  os_unfair_lock_lock(&stru_1ED43EF24);
  Mutable = qword_1ED43EF30;
  if (!qword_1ED43EF30)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    qword_1ED43EF30 = Mutable;
  }

  if (cls)
  {
    CFDictionarySetValue(Mutable, codedName, cls);
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, codedName);
  }

  os_unfair_lock_unlock(&stru_1ED43EF24);
}

- (void)setClass:(Class)cls forClassName:(NSString *)codedName
{
  nameClassMap = self->_nameClassMap;
  if (!nameClassMap)
  {
    nameClassMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    self->_nameClassMap = nameClassMap;
  }

  if (cls)
  {

    CFDictionarySetValue(nameClassMap, codedName, cls);
  }

  else
  {

    CFDictionaryRemoveValue(nameClassMap, codedName);
  }
}

+ (Class)classForClassName:(NSString *)codedName
{
  os_unfair_lock_lock(&stru_1ED43EF24);
  if (qword_1ED43EF30)
  {
    Value = CFDictionaryGetValue(qword_1ED43EF30, codedName);
  }

  else
  {
    Value = 0;
  }

  os_unfair_lock_unlock(&stru_1ED43EF24);
  return Value;
}

- (Class)classForClassName:(NSString *)codedName
{
  result = self->_nameClassMap;
  if (result)
  {
    return CFDictionaryGetValue(result, codedName);
  }

  return result;
}

- (void)_setAllowedClassNames:(id)names
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = _NSRuntimeIssuesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
  }

  [(_NSKeyedUnarchiverHelper *)self->_helper setAllowedClassNames:names];
}

- (void)_temporaryMapReplaceObject:(id)object withObject:(id)withObject
{
  v15[1] = *MEMORY[0x1E69E9840];
  tmpRefObjMap = self->_tmpRefObjMap;
  if (!tmpRefObjMap)
  {
    return;
  }

  Count = CFDictionaryGetCount(tmpRefObjMap);
  v9 = Count;
  v10 = 8 * Count;
  if ((8 * Count) <= 0x200)
  {
    if (Count <= 0)
    {
      v14 = self->_tmpRefObjMap;

      CFDictionaryGetKeysAndValues(v14, 0, 0);
      return;
    }

    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, v10);
    v12 = v11;
    bzero(v11, v10);
    CFDictionaryGetKeysAndValues(self->_tmpRefObjMap, v11, v11);
  }

  else
  {
    v11 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
    v12 = malloc_type_malloc(v10, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(self->_tmpRefObjMap, v11, v12);
    if (v9 < 1)
    {
LABEL_13:
      free(v12);
      free(v11);
      return;
    }
  }

  v13 = 0;
  while (v12[v13] != object)
  {
    if (v9 == ++v13)
    {
      goto LABEL_12;
    }
  }

  CFDictionarySetValue(self->_tmpRefObjMap, *&v11[8 * v13], withObject);
LABEL_12:
  if (v10 >= 0x201)
  {
    goto LABEL_13;
  }
}

- (void)replaceObject:(id)object withObject:(id)withObject
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot replace", 0}];
    objc_exception_throw(v6);
  }

  if (object != withObject)
  {

    [NSKeyedUnarchiver _temporaryMapReplaceObject:"_temporaryMapReplaceObject:withObject:" withObject:?];
  }
}

- (void)_replaceObject:(id)object withObject:(id)withObject
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot replace", 0}];
    objc_exception_throw(v12);
  }

  if (object != withObject)
  {
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(NSKeyedUnarchiverDelegate *)self->_delegate unarchiver:self willReplaceObject:object withObject:withObject];
    }

    objRefMap = self->_objRefMap;
    if (objRefMap)
    {
      Value = CFDictionaryGetValue(objRefMap, object);
      CFDictionaryRemoveValue(self->_objRefMap, object);
      CFDictionarySetValue(self->_objRefMap, withObject, Value);
      CFDictionarySetValue(self->_refObjMap, Value, withObject);
    }

    [(NSKeyedUnarchiver *)self _temporaryMapReplaceObject:object withObject:withObject];
  }

  replacementMap = self->_replacementMap;
  if (!replacementMap)
  {
    keyCallBacks.version = 0;
    *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
    memset(&keyCallBacks.copyDescription, 0, 24);
    self->_replacementMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, 0);
    _CFDictionarySetCapacity();
    replacementMap = self->_replacementMap;
  }

  CFDictionarySetValue(replacementMap, object, withObject);
}

- (BOOL)containsValueForKey:(NSString *)key
{
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v14);
  }

  v6 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v6, 0) == 36)
  {
    v6 = [(__CFString *)v6 substringFromIndex:1];
  }

  containers = self->_containers;
  if (!containers)
  {
    return __CFBinaryPlistGetOffsetForValueFromDictionary3();
  }

  Count = CFArrayGetCount(containers);
  ValueAtIndex = CFArrayGetValueAtIndex(self->_containers, Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v11 = Value;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
  }

  else
  {
    Value = CFDictionaryGetValue(ValueAtIndex, v6);
    v13 = Value;
  }

  return Value != 0;
}

- (BOOL)_validateAllowedClassesContainsClass:(Class)class forKey:(id)key
{
  if (!class)
  {
    v15 = [NSString stringWithFormat:@"Attempt to decode an object with no class for key '%@'.", key];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v15 userInfo:0]);
  }

  allowedClasses = [(NSKeyedUnarchiver *)self allowedClasses];
  v8 = atomic_load(&self->_flags);
  if (v8 != self->_pac_signature || (v9 = atomic_load(&self->_flags), v10 = atomic_load(&self->_flags), v10 != self->_pac_signature))
  {
    __NSPoisoned();
  }

  v11 = allowedClasses;
  v12 = atomic_load(&self->_flags);
  v13 = [(NSCoder *)self _walkAllowedClassListLookingForClass:class forKey:key allowedClasses:allowedClasses strictModeEnabled:(v9 >> 5) & 1 alwaysEnforceExplicitSubclasses:(v12 & 0x40) != 0 specialCaseObject:0];
  if ((v13 & 1) == 0 && !self->_helper->_decodeError)
  {
    [(NSCoder *)self __failWithUnexpectedClass:class forKey:key allowedClasses:v11];
  }

  return v13;
}

- (BOOL)_validateAllowedClassesContainsClassOfReference:(id)reference forKey:(id)key
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  allowedClasses = [(NSKeyedUnarchiver *)self allowedClasses];
  v8 = atomic_load(&self->_flags);
  if (v8 != self->_pac_signature || (v9 = atomic_load(&self->_flags), v10 = atomic_load(&self->_flags), v10 != self->_pac_signature))
  {
    __NSPoisoned();
  }

  v11 = allowedClasses;
  v12 = atomic_load(&self->_flags);
  v13 = [(NSCoder *)self _walkAllowedClassListValidatingInstance:reference forKey:key allowedClasses:allowedClasses strictModeEnabled:(v9 >> 5) & 1 alwaysEnforceExplicitSubclasses:(v12 & 0x40) != 0 specialCaseObject:0 invalidElementClass:v15];
  if ((v13 & 1) == 0 && !self->_helper->_decodeError)
  {
    if (v15[0])
    {
      [(NSCoder *)self __failWithUnexpectedElementClass:key forContainerKey:v11 allowedClasses:?];
    }

    else
    {
      -[NSCoder __failWithUnexpectedClass:forKey:allowedClasses:](self, [reference classForCoder], key, v11);
    }
  }

  return v13;
}

- (uint64_t)_validatePropertyListClass:(uint64_t)class forKey:
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!a2)
    {
      v20 = [NSString stringWithFormat:@"Attempt to decode an object with no class for key '%@'.", class];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v20 userInfo:0]);
    }

    v5 = result;
    allowedClasses = [result allowedClasses];
    v7 = atomic_load(v5 + 2);
    if (v7 != v5[17])
    {
      goto LABEL_25;
    }

    v8 = allowedClasses;
    v9 = atomic_load(v5 + 2);
    if (([(NSCoder *)v5 _walkAllowedClassListLookingForClass:a2 forKey:class allowedClasses:allowedClasses strictModeEnabled:(v9 >> 5) & 1 alwaysEnforceExplicitSubclasses:0 specialCaseObject:0]& 1) != 0 || *(v5[15] + 32))
    {
      return 1;
    }

    v10 = _os_feature_enabled_impl();
    v11 = dyld_program_sdk_at_least();
    v12 = atomic_load(v5 + 2);
    if (v12 != v5[17])
    {
LABEL_25:
      __NSPoisoned();
    }

    v13 = atomic_load(v5 + 2);
    v14 = v13 & 0x80 | v9 & 0x20;
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10 & v11;
    }

    if (v11 && !v14)
    {
      [(NSCoder *)v5 _warnAboutPlistType:a2 forKey:class missingInAllowedClasses:v8];
    }

    if (!v15 || !v14 && _os_feature_enabled_impl() && ([(NSCoder *)v5 _shouldExemptProcessBasedOnArchivingExceptionRules:?]& 1) != 0)
    {
      return 1;
    }

    v16 = [(NSCoder *)v5 __allowedClassesDescriptionForClass:a2];
    v17 = [(NSCoder *)v5 _allowedClassesDescriptionForClasses:v8];
    if (class)
    {
      classCopy = class;
    }

    else
    {
      classCopy = @"(no key, possibly an argument to a message)";
    }

    v19 = _NSRuntimeIssuesLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = classCopy;
      v25 = 2112;
      v26 = v17;
    }

    [v5 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"value for key '%@' was of unexpected class %@.\nAllowed classes are:\n %@", classCopy, v16, v17}];
    return 0;
  }

  return result;
}

- (id)decodeObjectForKey:(NSString *)key
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v8);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [(__CFString *)v7 substringFromIndex:1];
  }

  v9[0] = 0;
  _decodeObject(self, v7, v9);
  return v9[0];
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v6 = atomic_load(&self->_flags);
  if (v6 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v8 = atomic_load(&self->_flags);
  if ((v8 & 4) != 0)
  {
    if (class)
    {
      class = [MEMORY[0x1E695DFD8] setWithObject:?];
    }

    return [(NSKeyedUnarchiver *)self decodeObjectOfClasses:class forKey:key];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSKeyedUnarchiver;
    return [(NSCoder *)&v9 decodeObjectOfClass:class forKey:key];
  }
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v6 = atomic_load(&self->_flags);
  if (v6 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v9 = atomic_load(&self->_flags);
  if ((v9 & 4) == 0)
  {
    v18.receiver = self;
    v18.super_class = NSKeyedUnarchiver;
    return [(NSCoder *)&v18 decodeObjectOfClasses:classes forKey:key];
  }

  if (classes)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [classes countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(classes);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (!object_isClass(v15))
          {
            v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ object in classes '%@' is not an Objective-C class!", _NSMethodExceptionProem(self, a2), v15), 0}];
            objc_exception_throw(v17);
          }
        }

        v12 = [classes countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->_helper->_allowedClasses addObject:classes];
    v4 = [(NSKeyedUnarchiver *)self decodeObjectForKey:key];
    [(NSMutableArray *)self->_helper->_allowedClasses removeLastObject];
    return v4;
  }

  return [(NSKeyedUnarchiver *)self decodeObjectForKey:key];
}

- (id)_decodeObjectOfClass:(Class)class
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v5 = atomic_load(&self->_flags);
  if (v5 != self->_pac_signature)
  {
    goto LABEL_20;
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 4) == 0)
  {

    return [(NSKeyedUnarchiver *)self decodeObject];
  }

  if (!class || !object_isClass(class))
  {
    v15 = [NSString stringWithFormat:@"%@ '%@' is not an Objective-C class!", _NSMethodExceptionProem(self, a2), class];
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    goto LABEL_23;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{class, 0}];
  [(NSMutableArray *)self->_helper->_allowedClasses addObject:v9];

  if (_warnArchiverCompat == 1)
  {
    v10 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v10);
  }

  v11 = atomic_load(&self->_flags);
  if (v11 != self->_pac_signature)
  {
LABEL_20:
    __NSPoisoned();
  }

  v12 = atomic_load(&self->_flags);
  if ((v12 & 2) != 0)
  {
    v15 = [NSString stringWithFormat:@"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more"];
    v16 = MEMORY[0x1E695DF30];
    v17 = @"NSInvalidUnarchiveOperationException";
LABEL_23:
    objc_exception_throw([v16 exceptionWithName:v17 reason:v15 userInfo:0]);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v18[0] = 0;
  genericKey = self->_genericKey;
  self->_genericKey = genericKey + 1;
  if (genericKey > 0x27)
  {
    genericKey = [NSString stringWithFormat:@"$%ld", genericKey];
  }

  else
  {
    genericKey = generic_keys[genericKey];
  }

  _decodeObject(self, genericKey, v18);
  [(NSMutableArray *)self->_helper->_allowedClasses removeLastObject];
  return v18[0];
}

- (unint64_t)_decodeCollectionOfClass:(void *)class allowedClasses:(__CFString *)classes forKey:
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if (*(result[15] + 32))
    {
      return 0;
    }

    else
    {
      v5 = atomic_load(result + 2);
      if (v5 != result[17])
      {
        goto LABEL_17;
      }

      v6 = atomic_load(result + 2);
      if ((v6 & 4) == 0)
      {
        v13 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This method only supports secure coding.", _NSMethodExceptionProem(result, sel__decodeCollectionOfClass_allowedClasses_forKey_)), 0}];
        objc_exception_throw(v13);
      }

      v8 = result[15];
      [*(v8 + 24) addObject:{objc_msgSend(class, "setByAddingObject:", a2)}];
      *(v8 + 40) = 1;
      if (classes && CFStringGetLength(classes) >= 1 && CFStringGetCharacterAtIndex(classes, 0) == 36)
      {
        classes = [(__CFString *)classes substringFromIndex:1];
      }

      v16[0] = 0;
      v9 = atomic_load(v4 + 2);
      if (v9 != v4[17])
      {
LABEL_17:
        __NSPoisoned();
      }

      v10 = atomic_load(v4 + 2);
      atomic_store(v10 | 8, v4 + 2);
      v11 = atomic_load(v4 + 2);
      v4[17] = v11;
      v12 = objc_autoreleasePoolPush();
      if (v4[10])
      {
        _decodeObjectXML(v4, classes, v16);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        if (_decodeOffsetAndRef(v4, classes, &v15, &v14))
        {
          _decodeObjectBinary(v4, v14, classes, v16);
        }
      }

      objc_autoreleasePoolPop(v12);
      *(v8 + 40) = 0;
      [*(v8 + 24) removeLastObject];
      return v16[0];
    }
  }

  return result;
}

- (id)decodeArrayOfObjectsOfClasses:(id)classes forKey:(id)key
{
  v7 = _NSMethodExceptionProem(self, a2);
  if (![(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:classes forMethodExceptionProem:v7])
  {
    return 0;
  }

  v8 = MEMORY[0x1E695DEC8];

  return [(NSKeyedUnarchiver *)self _decodeCollectionOfClass:v8 allowedClasses:classes forKey:key];
}

- (id)decodeDictionaryWithKeysOfClasses:(id)classes objectsOfClasses:(id)ofClasses forKey:(id)key
{
  v8 = [classes setByAddingObjectsFromSet:ofClasses];
  v9 = _NSMethodExceptionProem(self, a2);
  if (![(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:v8 forMethodExceptionProem:v9])
  {
    return 0;
  }

  v10 = MEMORY[0x1E695DF20];

  return [(NSKeyedUnarchiver *)self _decodeCollectionOfClass:v10 allowedClasses:v8 forKey:key];
}

- (void)setRequiresSecureCoding:(BOOL)requiresSecureCoding
{
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    goto LABEL_7;
  }

  v4 = atomic_load(&self->_flags);
  if ((v4 & 8) != 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchiver has started; cannot change secure coding state", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  v5 = atomic_load(&self->_flags);
  if (v5 != self->_pac_signature)
  {
LABEL_7:
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  p_flags = &self->_flags;
  v8 = v6 & 0xFFFFFFFFFFFFFFFBLL;
  v9 = 4;
  if (!requiresSecureCoding)
  {
    v9 = 0;
  }

  atomic_store(v8 | v9, p_flags);
  v10 = atomic_load(p_flags);
  self->_pac_signature = v10;
}

- (void)_enableStrictSecureDecodingMode
{
  [(NSKeyedUnarchiver *)self setRequiresSecureCoding:1];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  atomic_fetch_or(&self->_flags, 0x20uLL);
  v4 = atomic_load(&self->_flags);
  self->_pac_signature = v4;
}

- (BOOL)_strictSecureDecodingEnabled
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v3 = atomic_load(&self->_flags);
  return (v3 >> 5) & 1;
}

- (void)_enforceSubclassesMustBeExplicitlyMentionedWhenDecoded
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  atomic_fetch_or(&self->_flags, 0x40uLL);
  v3 = atomic_load(&self->_flags);
  self->_pac_signature = v3;
}

- (void)_enforceExplicitPlistTypes
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  atomic_fetch_or(&self->_flags, 0x80uLL);
  v3 = atomic_load(&self->_flags);
  self->_pac_signature = v3;
}

- (BOOL)_willEnforceExplicitPlistTypes
{
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v4 = atomic_load(&self->_flags);
  if (v4 < 0)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (void)setDecodingFailurePolicy:(NSDecodingFailurePolicy)decodingFailurePolicy
{
  if (decodingFailurePolicy >= 2)
  {
    decodingFailurePolicy = [NSString stringWithFormat:@"%@: invalid decoding error policy %lu", _NSMethodExceptionProem(self, a2), decodingFailurePolicy];
    goto LABEL_9;
  }

  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    goto LABEL_6;
  }

  v4 = atomic_load(&self->_flags);
  if ((v4 & 8) != 0)
  {
    decodingFailurePolicy = [NSString stringWithFormat:@"%@: unarchiver has started; cannot change decoding error policy", _NSMethodExceptionProem(self, a2), v9];
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:decodingFailurePolicy userInfo:0]);
  }

  v5 = atomic_load(&self->_flags);
  if (v5 != self->_pac_signature)
  {
LABEL_6:
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  atomic_store(v6 & 0xFFFFFFFFFFFFFFEFLL | (16 * (decodingFailurePolicy == NSDecodingFailurePolicyRaiseException)), &self->_flags);
  v7 = atomic_load(&self->_flags);
  self->_pac_signature = v7;
}

- (id)_decodeArrayOfObjectsForKey:(id)key
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    goto LABEL_66;
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v57 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v57);
  }

  v7 = atomic_load(&self->_flags);
  if (v7 != self->_pac_signature)
  {
    goto LABEL_66;
  }

  keyCopy = key;
  v9 = atomic_load(&self->_flags);
  atomic_store(v9 | 8, &self->_flags);
  v10 = atomic_load(&self->_flags);
  self->_pac_signature = v10;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(keyCopy, 0) == 36)
  {
    keyCopy = [(__CFString *)keyCopy substringFromIndex:1];
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v64 = __49__NSKeyedUnarchiver__decodeArrayOfObjectsForKey___block_invoke;
  v65 = &unk_1E69F4A40;
  v66 = &v68;
  v67 = &v72;
  containers = self->_containers;
  if (!containers)
  {
    bytes = self->_bytes;
    len = self->_len;
    v61 = 0;
    if ((__CFBinaryPlistGetOffsetForValueFromDictionary3() & 1) == 0)
    {
      goto LABEL_33;
    }

    v18 = &bytes[v61];
    if (__CFADD__(bytes, v61) || &bytes[len - 1] < v18)
    {
      goto LABEL_29;
    }

    v19 = *v18;
    if ((*v18 & 0xF0) != 0xA0)
    {
      [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@: value for key (%@) is not an array", _NSMethodExceptionProem(self, a2), keyCopy];
      goto LABEL_33;
    }

    v58 = &bytes[len - 1];
    v20 = v18 + 1;
    if (v18 == -1 || v58 < v20)
    {
LABEL_29:
      v22 = _NSMethodExceptionProem(self, a2);
      v23 = @"%@: data is corrupt";
    }

    else
    {
      v21 = v19 & 0xF;
      if ((v19 & 0xF) != 0xF)
      {
        goto LABEL_54;
      }

      v60 = 0x1FFFFFFFLL;
      if ((_readInt(self, v20, v58, &v60, 0) & 1) == 0)
      {
        v22 = _NSMethodExceptionProem(self, a2);
        v23 = @"%@: data is corrupt";
        goto LABEL_30;
      }

      v21 = v60;
      if (!(v60 >> 29))
      {
LABEL_54:
        v54 = _CFCreateArrayStorage();
        v69[3] = v54;
        if (v54)
        {
          v73[3] = 0;
          if (!v21)
          {
            goto LABEL_60;
          }

          while (1)
          {
            v60 = 0;
            if ((__CFBinaryPlistGetOffsetForValueFromArray2() & 1) == 0)
            {
              v64(v63);
              [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:@"%@: data is corrupt or object is too large to decode", _NSMethodExceptionProem(self, a2)];
              goto LABEL_33;
            }

            v59 = 0;
            if ((_getUIDFromData(self, &bytes[v60], v58, &v59) & 1) == 0)
            {
              break;
            }

            _decodeObjectBinary(self, v59, keyCopy, (v69[3] + 8 * v73[3]));
            v55 = v73[3];
            if (!*(v69[3] + 8 * v55))
            {
              goto LABEL_52;
            }

            v73[3] = v55 + 1;
            if (v55 + 1 >= v21)
            {
              goto LABEL_60;
            }
          }

          v64(v63);
          [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:@"%@: data is corrupt or value is not an object", _NSMethodExceptionProem(self, a2)];
          goto LABEL_33;
        }
      }

      v22 = _NSMethodExceptionProem(self, a2);
      v23 = @"%@: array is too large to decode";
    }

LABEL_30:
    [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:v23, v22];
    goto LABEL_33;
  }

  Count = CFArrayGetCount(containers);
  ValueAtIndex = CFArrayGetValueAtIndex(self->_containers, Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v15 = Value;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
  }

  else
  {
    Value = CFDictionaryGetValue(ValueAtIndex, keyCopy);
    v24 = Value;
  }

  if (Value)
  {
    if (CFGetTypeID(Value) == 19)
    {
      v21 = [Value count];
      v25 = _CFCreateArrayStorage();
      v69[3] = v25;
      if (v25)
      {
        CFRetain(Value);
        CFArrayAppendValue(self->_containers, Value);
        v26 = CFGetTypeID(Value);
        v27 = atomic_load(&self->_flags);
        pac_signature = self->_pac_signature;
        if (v26 == 19)
        {
          if (v27 != pac_signature)
          {
            goto LABEL_66;
          }

          v29 = atomic_load(&self->_flags);
          v30 = v29 | 1;
        }

        else
        {
          if (v27 != pac_signature)
          {
            goto LABEL_66;
          }

          v35 = atomic_load(&self->_flags);
          v30 = v35 & 0xFFFFFFFFFFFFFFFELL;
        }

        atomic_store(v30, &self->_flags);
        v36 = atomic_load(&self->_flags);
        self->_pac_signature = v36;
        v73[3] = 0;
        if (v21)
        {
          v37 = 0;
          v38 = v69[3];
          do
          {
            _decodeObjectXML(self, &stru_1EEEFDF90, (v38 + 8 * v37));
            v38 = v69[3];
            v39 = v73[3];
            v40 = *(v38 + 8 * v39);
            v41 = v40 == 0;
            if (!v40)
            {
              break;
            }

            v37 = v39 + 1;
            v73[3] = v37;
          }

          while (v37 < v21);
        }

        else
        {
          v41 = 0;
        }

        v42 = CFArrayGetCount(self->_containers);
        v43 = CFArrayGetValueAtIndex(self->_containers, v42 - 1);
        CFArrayRemoveValueAtIndex(self->_containers, v42 - 1);
        CFRelease(v43);
        v44 = v42 - 2;
        if (v42 < 2)
        {
LABEL_51:
          if (v41)
          {
LABEL_52:
            (v64)(v63, v44);
            v53 = 0;
LABEL_61:
            v33 = v53;
            goto LABEL_34;
          }

LABEL_60:
          v56 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
          v53 = [v56 _initByAdoptingBuffer:v69[3] count:v21 size:v62];
          goto LABEL_61;
        }

        v45 = CFArrayGetValueAtIndex(self->_containers, v44);
        v46 = CFGetTypeID(v45);
        v47 = atomic_load(&self->_flags);
        v48 = self->_pac_signature;
        if (v46 == 19)
        {
          if (v47 == v48)
          {
            v49 = atomic_load(&self->_flags);
            v50 = v49 | 1;
LABEL_50:
            atomic_store(v50, &self->_flags);
            v52 = atomic_load(&self->_flags);
            self->_pac_signature = v52;
            goto LABEL_51;
          }
        }

        else if (v47 == v48)
        {
          v51 = atomic_load(&self->_flags);
          v50 = v51 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_50;
        }

LABEL_66:
        __NSPoisoned();
      }

      v31 = _NSMethodExceptionProem(self, a2);
      v32 = @"%@: array is too large to decode";
    }

    else
    {
      v31 = _NSMethodExceptionProem(self, a2);
      v32 = @"%@: value is not an array as expected";
    }

    [(NSCoder *)self __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:v32, v31];
  }

LABEL_33:
  v33 = 0;
LABEL_34:
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  return v33;
}

void __49__NSKeyedUnarchiver__decodeArrayOfObjectsForKey___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = (v3 - 1);
    if (v3 - 1 >= 0)
    {
      do
      {
        v5 = *(*(*(*(a1 + 32) + 8) + 24) + 8 * v4);
        if (v5)
        {
        }
      }

      while (v4-- > 0);
      v2 = *(*(*(a1 + 32) + 8) + 24);
    }

    free(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (BOOL)decodeBoolForKey:(NSString *)key
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v9);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  else
  {
    v7 = key;
    if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
    {
      v7 = [(__CFString *)v7 substringFromIndex:1];
    }

    v10 = 0;
    _decodeBool(self, v7, &v10);
    return v10;
  }
}

- (int)decodeIntForKey:(NSString *)key
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    goto LABEL_14;
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v13);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v7 = atomic_load(&self->_flags);
  if (v7 != self->_pac_signature)
  {
LABEL_14:
    __NSPoisoned();
  }

  v8 = key;
  v9 = atomic_load(&self->_flags);
  atomic_store(v9 | 8, &self->_flags);
  v10 = atomic_load(&self->_flags);
  self->_pac_signature = v10;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v8, 0) == 36)
  {
    v8 = [(__CFString *)v8 substringFromIndex:1];
  }

  v14[0] = 0;
  v11 = _decodeInt64(self, v8, v14);
  v6 = v14[0];
  if (v11 && v14[0] - 0x80000000 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695DA20] errorCode:4864 format:@"%@: value (%lld) for key (%@) too large to fit in a native integer", _NSMethodExceptionProem(self, sel_decodeIntForKey_), v14[0], v8];
  }

  return v6;
}

- (int32_t)decodeInt32ForKey:(NSString *)key
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v8);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [(__CFString *)v7 substringFromIndex:1];
  }

  v9 = 0;
  _decodeInt32(self, v7, &v9);
  return v9;
}

- (int64_t)decodeInt64ForKey:(NSString *)key
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v8);
  }

  if (self->_helper->_decodeError)
  {
    return 0;
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [(__CFString *)v7 substringFromIndex:1];
  }

  v9[0] = 0;
  _decodeInt64(self, v7, v9);
  return v9[0];
}

- (float)decodeFloatForKey:(NSString *)key
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v8);
  }

  result = 0.0;
  if (!self->_helper->_decodeError)
  {
    v7 = key;
    if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
    {
      v7 = [(__CFString *)v7 substringFromIndex:1];
    }

    v9 = 0.0;
    _decodeFloat(self, v7, &v9);
    return v9;
  }

  return result;
}

- (double)decodeDoubleForKey:(NSString *)key
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(&self->_flags);
  if ((v5 & 2) != 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v8);
  }

  result = 0.0;
  if (!self->_helper->_decodeError)
  {
    v7 = key;
    if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
    {
      v7 = [(__CFString *)v7 substringFromIndex:1];
    }

    v9[0] = 0.0;
    _decodeDouble(self, v7, v9);
    return v9[0];
  }

  return result;
}

- (const)decodeBytesForKey:(NSString *)key returnedLength:(NSUInteger *)lengthp
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v10);
  }

  if (self->_helper->_decodeError)
  {
    if (lengthp)
    {
      *lengthp = 0;
    }

    return 0;
  }

  else
  {
    v9 = key;
    if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v9, 0) == 36)
    {
      v9 = [(__CFString *)v9 substringFromIndex:1];
    }

    return _decodeBytes(self, v9, lengthp);
  }
}

- (id)_decodePropertyListForKey:(id)key
{
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    goto LABEL_17;
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v18);
  }

  v7 = atomic_load(&self->_flags);
  if (v7 != self->_pac_signature)
  {
LABEL_17:
    __NSPoisoned();
  }

  keyCopy = key;
  v9 = atomic_load(&self->_flags);
  atomic_store(v9 | 8, &self->_flags);
  v10 = atomic_load(&self->_flags);
  self->_pac_signature = v10;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(keyCopy, 0) == 36)
  {
    keyCopy = [(__CFString *)keyCopy substringFromIndex:1];
  }

  containers = self->_containers;
  if (containers)
  {
    Count = CFArrayGetCount(containers);
    ValueAtIndex = CFArrayGetValueAtIndex(self->_containers, Count - 1);
    if (CFGetTypeID(ValueAtIndex) == 19)
    {
      Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      v15 = Value;
      CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
    }

    else
    {
      Value = CFDictionaryGetValue(ValueAtIndex, keyCopy);
      v16 = Value;
    }
  }

  else if (__CFBinaryPlistGetOffsetForValueFromDictionary3() && !__CFBinaryPlistCreateObject())
  {
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@: data is corrupt or object is too large to decode", _NSMethodExceptionProem(self, a2)];
    return 0;
  }

  else
  {
    return 0;
  }

  return Value;
}

+ (BOOL)_evaluateCycleSecurityRules:(NSKeyedUnarchiverCycleEvaluationRules *)rules
{
  v3 = *&rules->var0;
  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  result = 1;
  if (v3 & 0x100) == 0 && (v3 & 0x1000000) == 0 && (v3)
  {
    return ((v3 | (rules->var4 << 32)) & 0x100000000) == 0;
  }

  return result;
}

- (void)decodeBytesWithReturnedLength:(unint64_t *)length
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  if (_warnArchiverCompat == 1)
  {
    v6 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v6);
  }

  v7 = atomic_load(&self->_flags);
  if (v7 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v8 = atomic_load(&self->_flags);
  if ((v8 & 2) != 0)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v16);
  }

  if (self->_helper->_decodeError)
  {
    if (length)
    {
      result = 0;
      *length = 0;
      return result;
    }
  }

  else
  {
    genericKey = self->_genericKey;
    self->_genericKey = genericKey + 1;
    if (genericKey > 0x27)
    {
      genericKey = [NSString stringWithFormat:@"$%ld", genericKey];
    }

    else
    {
      genericKey = generic_keys[genericKey];
    }

    v12 = _decodeBytes(self, genericKey, v17);
    if (length)
    {
      *length = v17[0];
    }

    if (v12)
    {
      v13 = [MEMORY[0x1E695DF88] dataWithBytes:v12 length:v17[0]];
      if (v13)
      {
        return [v13 mutableBytes];
      }

      v14 = *MEMORY[0x1E695DA18];
      v15 = _NSMethodExceptionProem(self, sel_decodeBytesWithReturnedLength_);
      [(NSCoder *)self __failWithExceptionName:v14 errorCode:4864 format:@"%@: unable to allocate memory for length (%ld)", v15, v17[0]];
    }
  }

  return 0;
}

- (void)decodeValuesOfObjCTypes:(const char *)types
{
  if (_warnArchiverCompat == 1)
  {
    v6 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v6);
  }

  v7 = atomic_load(&self->_flags);
  if (v7 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v8 = atomic_load(&self->_flags);
  if ((v8 & 2) != 0)
  {
    v12 = [NSString stringWithFormat:@"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0];
    v13 = MEMORY[0x1E695DF30];
    v14 = @"NSInvalidUnarchiveOperationException";
LABEL_12:
    objc_exception_throw([v13 exceptionWithName:v14 reason:v12 userInfo:0]);
  }

  if (!types)
  {
    v11 = [NSString stringWithFormat:@"%@: null types pointer", _NSMethodExceptionProem(self, a2)];
LABEL_11:
    v12 = v11;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    goto LABEL_12;
  }

  v15 = &v16;
  if (*types)
  {
    while (1)
    {
      v9 = v15++;
      if (!*v9)
      {
        break;
      }

      [(NSKeyedUnarchiver *)self decodeValueOfObjCType:types at:?];
      if (!*++types)
      {
        return;
      }
    }

    v11 = [NSString stringWithFormat:@"%@: null address pointer", _NSMethodExceptionProem(self, a2)];
    goto LABEL_11;
  }
}

- (void)decodeValueOfObjCType:(const char *)type at:(void *)at
{
  if (_warnArchiverCompat == 1)
  {
    v8 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v8);
  }

  v9 = atomic_load(&self->_flags);
  if (v9 != self->_pac_signature)
  {
    goto LABEL_25;
  }

  v10 = atomic_load(&self->_flags);
  if ((v10 & 2) != 0)
  {
    v20 = [NSString stringWithFormat:@"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more"];
    v21 = MEMORY[0x1E695DF30];
    v22 = @"NSInvalidUnarchiveOperationException";
    goto LABEL_30;
  }

  if (self->_helper->_decodeError)
  {
    return;
  }

  v11 = atomic_load(&self->_flags);
  if (v11 != self->_pac_signature)
  {
LABEL_25:
    __NSPoisoned();
  }

  v12 = atomic_load(&self->_flags);
  atomic_store(v12 | 8, &self->_flags);
  v13 = atomic_load(&self->_flags);
  self->_pac_signature = v13;
  if (!type || !at)
  {
    v23 = [NSString stringWithFormat:@"%@: null type or address pointer", _NSMethodExceptionProem(self, a2)];
LABEL_29:
    v20 = v23;
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
LABEL_30:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v20 userInfo:0]);
  }

  v14 = *type;
  if (v14 != 91)
  {
    if (v14 != 123)
    {

      _compatDecodeValueOfObjCType(self, v14, at, a2);
      return;
    }

    v23 = [NSString stringWithFormat:@"%@: this unarchiver cannot decode structs", _NSMethodExceptionProem(self, a2)];
    goto LABEL_29;
  }

  v17 = *(type + 1);
  v16 = type + 1;
  v15 = v17;
  if (v17 - 48 > 9)
  {
    goto LABEL_20;
  }

  v18 = 0;
  do
  {
    v18 = 10 * v18 + v15 - 48;
    v19 = *++v16;
    v15 = v19;
  }

  while (v19 - 48 < 0xA);
  if (v18)
  {
    if (v15 == 93)
    {
      [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"%@: array type is missing", _NSMethodExceptionProem(self, a2)];
    }

    else
    {

      [NSKeyedUnarchiver decodeArrayOfObjCType:"decodeArrayOfObjCType:count:at:" count:v16 at:?];
    }
  }

  else
  {
LABEL_20:
    [(NSCoder *)self __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:@"%@: array count is missing or zero", _NSMethodExceptionProem(self, a2)];
  }
}

- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at
{
  v10 = objc_opt_class();
  if (_warnArchiverCompat == 1)
  {
    v11 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v11);
  }

  v12 = atomic_load(&self->_flags);
  if (v12 != self->_pac_signature)
  {
    goto LABEL_19;
  }

  v13 = atomic_load(&self->_flags);
  if ((v13 & 2) != 0)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unarchive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot decode anything more", 0}];
    objc_exception_throw(v21);
  }

  if (!self->_helper->_decodeError)
  {
    v14 = atomic_load(&self->_flags);
    if (v14 == self->_pac_signature)
    {
      v15 = atomic_load(&self->_flags);
      atomic_store(v15 | 8, &self->_flags);
      v16 = atomic_load(&self->_flags);
      self->_pac_signature = v16;
      if (type && at)
      {
        if (count)
        {
          v17 = [(NSKeyedUnarchiver *)self _decodeObjectOfClass:v10];
          if (objc_opt_isKindOfClass())
          {
            v18 = *type;

            [v17 fillObjCType:v18 count:count at:at];
          }

          else
          {
            [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@: encoded entity at this point is not an array of ObjC type", _NSMethodExceptionProem(self, a2)];
          }

          return;
        }

        v19 = *MEMORY[0x1E695D940];
        v22 = _NSMethodExceptionProem(self, a2);
        v20 = @"%@: count is zero";
      }

      else
      {
        v19 = *MEMORY[0x1E695D940];
        v22 = _NSMethodExceptionProem(self, a2);
        v20 = @"%@: null type or address pointer";
      }

      [(NSCoder *)self __failWithExceptionName:v19 errorCode:4864 format:v20, v22];
      return;
    }

LABEL_19:
    __NSPoisoned();
  }
}

- (int64_t)versionForClassName:(id)name
{
  v3 = NSClassFromString(name);
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(objc_class *)v3 version];
}

@end