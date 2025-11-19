@interface NSCoder
+ (BOOL)__categorizeException:(id)a3 intoError:(id *)a4;
- (BOOL)__failWithException:(void *)a1;
- (BOOL)__failWithExceptionName:(id)a3 errorCode:(int64_t)a4 format:(id)a5;
- (BOOL)_enforceCollectionTyping;
- (BOOL)_validateAllowedClass:(Class)a3 forKey:(id)a4 allowingInvocations:(BOOL)a5;
- (BOOL)_validateAllowedClassesContainsClass:(Class)a3 forKey:(id)a4;
- (BOOL)_validateDecodeCollectionAllowedClassesRequirementsWithClasses:(uint64_t)a3 forMethodExceptionProem:;
- (BOOL)validateClassSupportsSecureCoding:(Class)a3;
- (Class)_isPossibleNestedCollectionClass:(uint64_t)a1;
- (NSArray)decodeArrayOfObjectsOfClass:(Class)cls forKey:(NSString *)key;
- (NSArray)decodeArrayOfObjectsOfClasses:(NSSet *)classes forKey:(NSString *)key;
- (NSDictionary)decodeDictionaryWithKeysOfClass:(Class)keyCls objectsOfClass:(Class)objectCls forKey:(NSString *)key;
- (NSDictionary)decodeDictionaryWithKeysOfClasses:(NSSet *)keyClasses objectsOfClasses:(NSSet *)objectClasses forKey:(NSString *)key;
- (NSPoint)decodePoint;
- (NSPoint)decodePointForKey:(NSString *)key;
- (NSRect)decodeRect;
- (NSRect)decodeRectForKey:(NSString *)key;
- (NSSize)decodeSize;
- (NSSize)decodeSizeForKey:(NSString *)key;
- (NSString)__allowedClassesDescriptionForClass:(NSString *)result;
- (NSString)__descriptionForUnexpectedClass:(__CFString *)a3 forKey:(void *)a4 allowedClasses:;
- (NSString)__descriptionForUnexpectedElementClass:(__CFString *)a3 forContainerKey:(void *)a4 allowedClasses:;
- (NSString)__failWithUnexpectedClass:(__CFString *)a3 forKey:(void *)a4 allowedClasses:;
- (NSString)__failWithUnexpectedElementClass:(__CFString *)a3 forContainerKey:(void *)a4 allowedClasses:;
- (const)decodeBytesForKey:(id)a3 minimumLength:(unint64_t)a4;
- (id)_allowedClassesDescriptionForClasses:(uint64_t)a1;
- (id)decodeObject;
- (id)decodeObjectOfClass:(Class)aClass forKey:(NSString *)key;
- (id)decodeObjectOfClasses:(NSSet *)classes forKey:(NSString *)key;
- (id)decodePropertyListForKey:(NSString *)key;
- (id)decodeTopLevelObjectAndReturnError:(NSError *)error;
- (id)decodeTopLevelObjectForKey:(NSString *)key error:(NSError *)error;
- (id)decodeTopLevelObjectOfClass:(Class)aClass forKey:(NSString *)key error:(NSError *)error;
- (id)decodeTopLevelObjectOfClasses:(NSSet *)classes forKey:(NSString *)key error:(NSError *)error;
- (uint64_t)__tryDecodeObjectForKey:(void *)a3 error:(uint64_t)a4 decodeBlock:;
- (uint64_t)_shouldExemptProcessBasedOnArchivingExceptionRules:(uint64_t)a1;
- (uint64_t)_walkAllowedClassListLookingForClass:(uint64_t)a3 forKey:(id)obj allowedClasses:(int)a5 strictModeEnabled:(char)a6 alwaysEnforceExplicitSubclasses:(int)a7 specialCaseObject:;
- (uint64_t)_walkAllowedClassListValidatingInstance:(uint64_t)a3 forKey:(void *)a4 allowedClasses:(int)a5 strictModeEnabled:(char)a6 alwaysEnforceExplicitSubclasses:(int)a7 specialCaseObject:(uint64_t *)a8 invalidElementClass:;
- (uint64_t)_warnAboutNSObjectInAllowedClassesWithException:(uint64_t)result;
- (void)_warnAboutPlistType:(uint64_t)a3 forKey:(void *)a4 missingInAllowedClasses:;
- (void)decodeArrayOfObjCType:(const char *)itemType count:(NSUInteger)count at:(void *)array;
- (void)decodeBytesWithMinimumLength:(unint64_t)a3;
- (void)decodeBytesWithReturnedLength:(NSUInteger *)lengthp;
- (void)decodeValueOfObjCType:(const char *)type at:(void *)data;
- (void)decodeValueOfObjCType:(const char *)type at:(void *)data size:(NSUInteger)size;
- (void)decodeValuesOfObjCTypes:(const char *)types;
- (void)encodeArrayOfObjCType:(const char *)type count:(NSUInteger)count at:(const void *)array;
- (void)encodeBool:(BOOL)value forKey:(NSString *)key;
- (void)encodeBytes:(const uint8_t *)bytes length:(NSUInteger)length forKey:(NSString *)key;
- (void)encodeBytes:(const void *)byteaddr length:(NSUInteger)length;
- (void)encodeConditionalObject:(id)object forKey:(NSString *)key;
- (void)encodeDataObject:(NSData *)data;
- (void)encodeDouble:(double)value forKey:(NSString *)key;
- (void)encodeFloat:(float)value forKey:(NSString *)key;
- (void)encodeInt32:(int32_t)value forKey:(NSString *)key;
- (void)encodeInt64:(int64_t)value forKey:(NSString *)key;
- (void)encodeInt:(int)value forKey:(NSString *)key;
- (void)encodeObject:(id)object;
- (void)encodeObject:(id)object forKey:(NSString *)key;
- (void)encodePoint:(NSPoint)point;
- (void)encodePoint:(NSPoint)point forKey:(NSString *)key;
- (void)encodeRect:(NSRect)rect;
- (void)encodeRect:(NSRect)rect forKey:(NSString *)key;
- (void)encodeSize:(NSSize)size;
- (void)encodeSize:(NSSize)size forKey:(NSString *)key;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)addr;
- (void)encodeValuesOfObjCTypes:(const char *)types;
- (void)failWithError:(NSError *)error;
@end

@implementation NSCoder

- (BOOL)_enforceCollectionTyping
{
  if (qword_1ED43F580 != -1)
  {
    dispatch_once(&qword_1ED43F580, &__block_literal_global_5);
  }

  return dword_1ED43F57C == 0;
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)addr
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeDataObject:(NSData *)data
{
  v5 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)decodeValueOfObjCType:(const char *)type at:(void *)data
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = objc_opt_class();
  v9 = [v8 instanceMethodForSelector:sel_decodeValueOfObjCType_at_size_];
  if (v9 == +[NSCoder instanceMethodForSelector:](NSCoder, "instanceMethodForSelector:", sel_decodeValueOfObjCType_at_size_) || (v10 = [v8 instanceMethodForSelector:sel_decodeValueOfObjCType_at_], v10 != +[NSCoder instanceMethodForSelector:](NSCoder, "instanceMethodForSelector:", sel_decodeValueOfObjCType_at_)))
  {
    v12 = NSClassFromString(@"NSCoder");

    NSRequestConcreteImplementation(self, a2, v12);
  }

  v11 = _NSOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *v13 = 138412290;
    *&v13[4] = v8;
    _os_log_fault_impl(&dword_18075C000, v11, OS_LOG_TYPE_FAULT, "%@ overrode the default implementation of '-decodeValueOfObjCType:at:', which is insecure and deprecated, but not '-decodeValueOfObjCType:at:size:' which is insecure as it can lead to potential buffer overflows. Use the safer '-decodeValueOfObjCType:at:size:' method", v13, 0xCu);
  }

  *v13 = 0;
  NSGetSizeAndAlignment(type, v13, 0);
  [(NSCoder *)self decodeValueOfObjCType:type at:data size:*v13];
}

- (void)decodeValueOfObjCType:(const char *)type at:(void *)data size:(NSUInteger)size
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v10 = objc_opt_class();
  sizep[0] = 0;
  NSGetSizeAndAlignment(type, sizep, 0);
  if (sizep[0] != size)
  {
    v14 = [NSString stringWithFormat:@"Cannot get decode with size %zu. The type encoded as %s is expected to be %zu bytes", size, type, sizep[0]];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v11 = [v10 instanceMethodForSelector:sel_decodeValueOfObjCType_at_];
  if (v11 == +[NSCoder instanceMethodForSelector:](NSCoder, "instanceMethodForSelector:", sel_decodeValueOfObjCType_at_) || (v12 = [v10 instanceMethodForSelector:sel_decodeValueOfObjCType_at_size_], v12 != +[NSCoder instanceMethodForSelector:](NSCoder, "instanceMethodForSelector:", sel_decodeValueOfObjCType_at_size_)))
  {
    v13 = NSClassFromString(@"NSCoder");
    NSRequestConcreteImplementation(self, a2, v13);
  }

  [(NSCoder *)self decodeValueOfObjCType:type at:data];
}

- (void)encodeObject:(id)object
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = object;
  [(NSCoder *)self encodeValueOfObjCType:"@" at:v3];
}

- (void)encodeValuesOfObjCTypes:(const char *)types
{
  va_start(va, types);
  va_copy(v6, va);
  if (*types)
  {
    v3 = types;
    do
    {
      [(NSCoder *)self encodeValueOfObjCType:v3 at:*v6, v6 + 8];
    }

    while (*++v3);
  }
}

- (void)encodeArrayOfObjCType:(const char *)type count:(NSUInteger)count at:(const void *)array
{
  v12[1] = *MEMORY[0x1E69E9840];
  v9 = strlen(type);
  v10 = v9 + 16;
  if (v9 + 16 < 0x201)
  {
    if (v9 == -16)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12 - ((v9 + 31) & 0xFFFFFFFFFFFFFFF0);
      bzero(v11, v10);
    }
  }

  else
  {
    v11 = malloc_type_malloc(v9 + 16, 0x100004077774924uLL);
  }

  snprintf(v11, v10, "[%lu%s]", count, type);
  [(NSCoder *)self encodeValueOfObjCType:v11 at:array];
  if (v10 >= 0x201)
  {
    free(v11);
  }
}

- (void)encodeBytes:(const void *)byteaddr length:(NSUInteger)length
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = length;
  [(NSCoder *)self encodeValueOfObjCType:"I" at:&v6];
  [(NSCoder *)self encodeArrayOfObjCType:"c" count:v6 at:byteaddr];
}

- (id)decodeObject
{
  v4[1] = *MEMORY[0x1E69E9840];
  if ([(NSCoder *)self error])
  {
    return 0;
  }

  v4[0] = 0;
  [(NSCoder *)self decodeValueOfObjCType:"@" at:v4 size:8];
  return v4[0];
}

- (id)decodeTopLevelObjectAndReturnError:(NSError *)error
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__NSCoder_decodeTopLevelObjectAndReturnError___block_invoke;
  v4[3] = &unk_1E69F2788;
  v4[4] = self;
  return [(NSCoder *)self __tryDecodeObjectForKey:error error:v4 decodeBlock:?];
}

- (uint64_t)__tryDecodeObjectForKey:(void *)a3 error:(uint64_t)a4 decodeBlock:
{
  if (!a1)
  {
    return 0;
  }

  if (!a4)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSCoder.m", 1400, @"Invalid parameter not satisfying: %@", @"decodeBlock != nil"];
  }

  v8 = [a1 decodingFailurePolicy];
  v9 = (*(a4 + 16))(a4);
  if (v8)
  {
    v10 = [a1 error];
    if (v10)
    {
      if (a3)
      {
        *a3 = v10;
      }

      [a1 __setError:0];
      return 0;
    }
  }

  if (a3 && !v9)
  {
    if (a2)
    {
      v11 = MEMORY[0x1E695DF20];
      v12 = [NSString stringWithFormat:@"requested key: '%@'", a2];
      v13 = [v11 dictionaryWithObject:v12 forKey:*MEMORY[0x1E695E618]];
    }

    else
    {
      v13 = 0;
    }

    v9 = 0;
    *a3 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:4865 userInfo:v13];
  }

  return v9;
}

- (void)decodeValuesOfObjCTypes:(const char *)types
{
  va_start(va, types);
  va_copy(v6, va);
  if (*types)
  {
    v3 = types;
    do
    {
      [(NSCoder *)self decodeValueOfObjCType:v3 at:*v6, v6 + 8];
    }

    while (*++v3);
  }
}

- (void)decodeArrayOfObjCType:(const char *)itemType count:(NSUInteger)count at:(void *)array
{
  v12[1] = *MEMORY[0x1E69E9840];
  v9 = strlen(itemType);
  v10 = v9 + 23;
  if (v9 + 23 < 0x201)
  {
    if (v9 == -23)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12 - ((v9 + 38) & 0xFFFFFFFFFFFFFFF0);
      bzero(v11, v10);
    }
  }

  else
  {
    v11 = malloc_type_malloc(v9 + 23, 0x100004077774924uLL);
  }

  snprintf(v11, v10, "[%lu%s]", count, itemType);
  [(NSCoder *)self decodeValueOfObjCType:v11 at:array];
  if (v10 >= 0x201)
  {
    free(v11);
  }
}

- (void)decodeBytesWithReturnedLength:(NSUInteger *)lengthp
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  [(NSCoder *)self decodeValueOfObjCType:"I" at:&v7 size:4];
  v5 = [objc_msgSend(MEMORY[0x1E695DF88] dataWithLength:{v7), "mutableBytes"}];
  [(NSCoder *)self decodeArrayOfObjCType:"c" count:v7 at:v5];
  *lengthp = v7;
  return v5;
}

- (void)decodeBytesWithMinimumLength:(unint64_t)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = [(NSCoder *)self decodeBytesWithReturnedLength:v6];
  if (result)
  {
    if (v6[0] < a3)
    {
      [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"decoded bytes were not of required length"];
      return 0;
    }
  }

  return result;
}

- (void)encodeObject:(id)object forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (id)decodeTopLevelObjectForKey:(NSString *)key error:(NSError *)error
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__NSCoder_decodeTopLevelObjectForKey_error___block_invoke;
  v5[3] = &unk_1E69F27B0;
  v5[4] = self;
  v5[5] = key;
  return [(NSCoder *)self __tryDecodeObjectForKey:error error:v5 decodeBlock:?];
}

- (void)encodeConditionalObject:(id)object forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeBool:(BOOL)value forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeInt:(int)value forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeInt32:(int32_t)value forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeInt64:(int64_t)value forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeFloat:(float)value forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeDouble:(double)value forKey:(NSString *)key
{
  v6 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)encodeBytes:(const uint8_t *)bytes length:(NSUInteger)length forKey:(NSString *)key
{
  v7 = NSClassFromString(@"NSCoder");

  NSRequestConcreteImplementation(self, a2, v7);
}

- (const)decodeBytesForKey:(id)a3 minimumLength:(unint64_t)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  result = [(NSCoder *)self decodeBytesForKey:a3 returnedLength:v8];
  if (result)
  {
    if (v8[0] < a4)
    {
      [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"decoded bytes for key %@ were not of required length", a3];
      return 0;
    }
  }

  return result;
}

- (id)decodeObjectOfClass:(Class)aClass forKey:(NSString *)key
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:aClass];

  return [(NSCoder *)self decodeObjectOfClasses:v6 forKey:key];
}

- (id)decodeTopLevelObjectOfClass:(Class)aClass forKey:(NSString *)key error:(NSError *)error
{
  v8 = [MEMORY[0x1E695DFD8] setWithObject:aClass];

  return [(NSCoder *)self decodeObjectOfClasses:v8 forKey:key error:error];
}

- (NSArray)decodeArrayOfObjectsOfClass:(Class)cls forKey:(NSString *)key
{
  v7 = [MEMORY[0x1E695DFD8] setWithObject:cls];
  v8 = _NSMethodExceptionProem(self, a2);
  if (![(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:v7 forMethodExceptionProem:v8])
  {
    return 0;
  }

  return [(NSCoder *)self decodeArrayOfObjectsOfClasses:v7 forKey:key];
}

- (BOOL)_validateDecodeCollectionAllowedClassesRequirementsWithClasses:(uint64_t)a3 forMethodExceptionProem:
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = *v24;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(a2);
      }

      v9 = *(*(&v23 + 1) + 8 * v8);
      if (!object_isClass(v9))
      {
        v14 = [NSString stringWithFormat:@"%@ object in class list '%@' is not an Objective-C class!", a3, v9];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
      }

      if (v9 == MEMORY[0x1E69E58C0] && ![(NSCoder *)a1 _warnAboutNSObjectInAllowedClassesWithException:?])
      {
        return 0;
      }

      if (v6 == ++v8)
      {
        v6 = [a2 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__NSCoder__validateDecodeCollectionAllowedClassesRequirementsWithClasses_forMethodExceptionProem___block_invoke;
  v15[3] = &unk_1E69F2800;
  v15[4] = a1;
  v15[5] = &v16;
  [a2 enumerateObjectsUsingBlock:v15];
  v10 = v17[5];
  v11 = v10 == 0;
  if (v10)
  {
    [v10 appendString:@"\n\t\n"]);
    v12 = [NSString stringWithFormat:@"%@: This method only supports decoding non-nested collections. Please remove the following or use '-decodeObjectOfClasses: forKey:' instead: %@", a3, v17[5]];

    [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@", v12}];
  }

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (NSDictionary)decodeDictionaryWithKeysOfClass:(Class)keyCls objectsOfClass:(Class)objectCls forKey:(NSString *)key
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = keyCls;
  v14[1] = objectCls;
  v10 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 2)}];
  v11 = _NSMethodExceptionProem(self, a2);
  if (![(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:v10 forMethodExceptionProem:v11])
  {
    return 0;
  }

  v12 = [MEMORY[0x1E695DFD8] setWithObject:keyCls];
  return -[NSCoder decodeDictionaryWithKeysOfClasses:objectsOfClasses:forKey:](self, "decodeDictionaryWithKeysOfClasses:objectsOfClasses:forKey:", v12, [MEMORY[0x1E695DFD8] setWithObject:objectCls], key);
}

- (id)decodeObjectOfClasses:(NSSet *)classes forKey:(NSString *)key
{
  if (![(NSCoder *)self allowsKeyedCoding])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This method is only implemented for coders which allowKeyedCoding.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  if ([(NSCoder *)self requiresSecureCoding])
  {
    v8 = NSClassFromString(@"NSCoder");
    NSRequestConcreteImplementation(self, a2, v8);
  }

  return [(NSCoder *)self decodeObjectForKey:key];
}

- (id)decodeTopLevelObjectOfClasses:(NSSet *)classes forKey:(NSString *)key error:(NSError *)error
{
  v6[7] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__NSCoder_decodeTopLevelObjectOfClasses_forKey_error___block_invoke;
  v6[3] = &unk_1E69F27D8;
  v6[4] = self;
  v6[5] = classes;
  v6[6] = key;
  return [(NSCoder *)self __tryDecodeObjectForKey:error error:v6 decodeBlock:?];
}

- (Class)_isPossibleNestedCollectionClass:(uint64_t)a1
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      while (1)
      {
        if (v4 == MEMORY[0x1E69E58C0])
        {
          return 0;
        }

        if (qword_1ED43F598 != -1)
        {
          dispatch_once(&qword_1ED43F598, &__block_literal_global_284);
        }

        if ([qword_1ED43F590 containsObject:v4])
        {
          break;
        }

        result = class_getSuperclass(v4);
        v4 = result;
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

- (NSArray)decodeArrayOfObjectsOfClasses:(NSSet *)classes forKey:(NSString *)key
{
  v7 = _NSMethodExceptionProem(self, a2);
  if ([(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:v7 forMethodExceptionProem:?])
  {
    if ([(NSCoder *)self allowsKeyedCoding])
    {
      if ([(NSCoder *)self requiresSecureCoding])
      {
        v9 = NSClassFromString(@"NSCoder");
        NSRequestConcreteImplementation(self, a2, v9);
      }

      v10 = [NSString stringWithFormat:@"%@: This method only supports secure coding.", _NSMethodExceptionProem(self, a2)];
      v11 = MEMORY[0x1E695DF30];
      v12 = &NSInvalidUnarchiveOperationException;
    }

    else
    {
      v10 = [NSString stringWithFormat:@"%@: This method is only implemented for coders which allowKeyedCoding.", _NSMethodExceptionProem(self, a2)];
      v11 = MEMORY[0x1E695DF30];
      v12 = MEMORY[0x1E695D940];
    }

    objc_exception_throw([v11 exceptionWithName:*v12 reason:v10 userInfo:0]);
  }

  return 0;
}

- (NSDictionary)decodeDictionaryWithKeysOfClasses:(NSSet *)keyClasses objectsOfClasses:(NSSet *)objectClasses forKey:(NSString *)key
{
  v7 = [(NSSet *)keyClasses setByAddingObjectsFromSet:objectClasses];
  v8 = _NSMethodExceptionProem(self, a2);
  if ([(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:v7 forMethodExceptionProem:v8])
  {
    if ([(NSCoder *)self allowsKeyedCoding])
    {
      if ([(NSCoder *)self requiresSecureCoding])
      {
        v10 = NSClassFromString(@"NSCoder");
        NSRequestConcreteImplementation(self, a2, v10);
      }

      v11 = [NSString stringWithFormat:@"%@: This method only supports secure coding.", _NSMethodExceptionProem(self, a2)];
      v12 = MEMORY[0x1E695DF30];
      v13 = &NSInvalidUnarchiveOperationException;
    }

    else
    {
      v11 = [NSString stringWithFormat:@"%@: This method is only implemented for coders which allowKeyedCoding.", _NSMethodExceptionProem(self, a2)];
      v12 = MEMORY[0x1E695DF30];
      v13 = MEMORY[0x1E695D940];
    }

    objc_exception_throw([v12 exceptionWithName:*v13 reason:v11 userInfo:0]);
  }

  return 0;
}

- (id)decodePropertyListForKey:(NSString *)key
{
  if (![(NSCoder *)self allowsKeyedCoding])
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This method is only implemented for coders which allowKeyedCoding.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v14);
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];

  return [(NSCoder *)self decodeObjectOfClasses:v12 forKey:key];
}

- (uint64_t)_warnAboutNSObjectInAllowedClassesWithException:(uint64_t)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result __decoderInfoForAllowedClassesWarning];
  v5 = _NSRuntimeIssuesLog();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    if (a2)
    {
      goto LABEL_4;
    }

    return 1;
  }

  *buf = 138543874;
  v8 = _NSMethodExceptionProem(v3, sel_validateAllowedClass_forKey_);
  v9 = 2114;
  v10 = [(NSCoder *)v3 _allowedClassesDescriptionForClasses:?];
  v11 = 2114;
  v12 = v4;
  _os_log_fault_impl(&dword_18075C000, v5, OS_LOG_TYPE_FAULT, "%{public}@: NSSecureCoding allowed classes list contains [NSObject class], which bypasses security by allowing any Objective-C class to be implicitly decoded. Consider reducing the scope of allowed classes during decoding by listing only the classes you expect to decode, or a more specific base class than NSObject. This will become an error in the future. Allowed class list: %{public}@%{public}@", buf, 0x20u);
  if (!a2)
  {
    return 1;
  }

LABEL_4:
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  if (qword_1ED43F580 != -1)
  {
    dispatch_once(&qword_1ED43F580, &__block_literal_global_5);
  }

  if (dword_1ED43F57C == 2)
  {
    return 1;
  }

  v6 = _NSMethodExceptionProem(v3, sel_validateAllowedClass_forKey_);
  [(objc_class *)v3 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@: NSSecureCoding allowed classes list contains '[NSObject class]', which bypasses security by allowing any Objective-C class to be implicitly decoded. Consider reducing the scope of allowed classes during decoding by listing only the classes you expect to decode, or a more specific base class than NSObject. Allowed class list: %@%@", v6, [(NSCoder *)v3 _allowedClassesDescriptionForClasses:?], v4];
  return 0;
}

NSMutableString *__98__NSCoder__validateDecodeCollectionAllowedClassesRequirementsWithClasses_forMethodExceptionProem___block_invoke(uint64_t a1, objc_class *a2)
{
  result = [(NSCoder *)*(a1 + 32) _isPossibleNestedCollectionClass:a2];
  if (result)
  {
    v5 = [NSString stringWithFormat:@"\n\t\t%@", [(NSCoder *)*(a1 + 32) __allowedClassesDescriptionForClass:a2]];
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {

      return [v6 appendString:v5];
    }

    else
    {
      result = -[NSString initWithFormat:]([NSMutableString alloc], "initWithFormat:", @"\n\t(%@"), v5;
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  return result;
}

- (NSString)__allowedClassesDescriptionForClass:(NSString *)result
{
  if (result)
  {
    return [NSString stringWithFormat:@"'%@' (%p) [%@]", a2, a2, [(NSURL *)[[NSBundle bundleForClass:?]] path]];
  }

  return result;
}

- (uint64_t)_walkAllowedClassListLookingForClass:(uint64_t)a3 forKey:(id)obj allowedClasses:(int)a5 strictModeEnabled:(char)a6 alwaysEnforceExplicitSubclasses:(int)a7 specialCaseObject:
{
  v51 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v10 = obj;
  v13 = result;
  if (object_isClass(obj))
  {
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  }

  if (!v10)
  {
    return 0;
  }

  if (!object_isClass(a2))
  {
    v32 = [NSString stringWithFormat:@"%@ object in class list '%@' is not an Objective-C class!", _NSMethodExceptionProem(v13, sel_validateAllowedClass_forKey_), a2];
LABEL_57:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0]);
  }

  if (!a5)
  {
    v14 = 0x1E69E5000uLL;
    v15 = [v10 containsObject:MEMORY[0x1E69E58C0]];
    if (v15)
    {
      v16 = [(NSCoder *)v13 _warnAboutNSObjectInAllowedClassesWithException:?];
      result = 0;
      if (!a2)
      {
        return result;
      }

      v37 = v15;
      obja = a2;
      v33 = a3;
      v34 = v13;
      v35 = a7;
      if ((v16 & 1) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v37 = 0;
    v33 = a3;
    v34 = v13;
    v35 = a7;
    obja = a2;
    if (a2)
    {
LABEL_15:
      v17 = obja;
      while (1)
      {
        if (!object_isClass(v17))
        {
          v32 = [NSString stringWithFormat:@"%@ object in class list '%@' is not an Objective-C class!", _NSMethodExceptionProem(v34, sel_validateAllowedClass_forKey_), obja];
          goto LABEL_57;
        }

        if ([v10 containsObject:v17])
        {
          return 1;
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = [v17 _subclassesMustBeExplicitlyMentionedWhenDecoded];
          if (a6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v18 = 0;
          if (a6)
          {
LABEL_22:
            v19 = 0;
            goto LABEL_23;
          }
        }

        v19 = _os_feature_enabled_impl() ^ 1;
LABEL_23:
        if ((dyld_program_sdk_at_least() & v18) != 1)
        {
          goto LABEL_49;
        }

        MethodImplementation = class_getMethodImplementation(*(v14 + 2240), sel_classForCoder);
        v21 = class_getMethodImplementation(v17, sel_classForCoder);
        if (object_getClass(v17) == *(v14 + 2240))
        {
          goto LABEL_49;
        }

        v22 = v14;
        v23 = *(v14 + 2240);
        if (v21 == MethodImplementation)
        {
          InstanceMethod = class_getInstanceMethod(v17, sel_classForCoder);
          if (InstanceMethod == class_getInstanceMethod(v23, sel_classForCoder))
          {
            goto LABEL_48;
          }
        }

        Superclass = class_getSuperclass(v17);
        if (v21 == class_getMethodImplementation(Superclass, sel_classForCoder))
        {
          v26 = class_getInstanceMethod(v17, sel_classForCoder);
          if (v26 == class_getInstanceMethod(Superclass, sel_classForCoder))
          {
            goto LABEL_48;
          }
        }

        v14 = v22;
        if (qword_1ED43F5A8 != -1)
        {
          dispatch_once(&qword_1ED43F5A8, &__block_literal_global_286);
        }

        Value = CFDictionaryGetValue(qword_1ED43F5A0, v17);
        if (!Value)
        {
          goto LABEL_39;
        }

        v28 = Value;
        if ([v10 containsObject:Value])
        {
          return 1;
        }

        if (qword_1ED43F5A8 != -1)
        {
          dispatch_once(&qword_1ED43F5A8, &__block_literal_global_286);
        }

        v29 = CFDictionaryGetValue(qword_1ED43F5A0, v28);
        if (v29)
        {
          result = [v10 containsObject:v29];
          if (result & 1) != 0 || (a6)
          {
            return result;
          }
        }

        else
        {
LABEL_39:
          if (a6)
          {
            return 0;
          }
        }

        if (qword_1ED43F580 != -1)
        {
          dispatch_once(&qword_1ED43F580, &__block_literal_global_5);
        }

        if (dword_1ED43F57C != 2)
        {
          if ((v37 & 1) == 0)
          {
            v38 = [(objc_class *)v34 __decoderInfoForAllowedClassesWarning];
            v30 = [NSString stringWithFormat:@"'%@' (%p) [%@]", obja, obja, [(NSURL *)[[NSBundle bundleForClass:?]] path]];
            v31 = _NSRuntimeIssuesLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              *buf = 138544642;
              v40 = v17;
              v41 = 2114;
              v42 = Superclass;
              v43 = 2114;
              v44 = v33;
              v45 = 2114;
              v46 = v17;
              v47 = 2114;
              v48 = v30;
              v49 = 2114;
              v50 = v38;
              _os_log_fault_impl(&dword_18075C000, v31, OS_LOG_TYPE_FAULT, "Attempted to decode a collection type '%{public}@' (subclass of '%{public}@') for key '%{public}@'. '%{public}@' requires its subclasses to be explicitly added to the allowed classes list but it is not present. Allowing this has been a source of security issues. Please ensure you meant this type to be in archives: %{public}@%{public}@", buf, 0x3Eu);
            }
          }

          if (((v19 | v35) & 1) == 0)
          {
            return [(NSCoder *)v34 _shouldExemptProcessBasedOnArchivingExceptionRules:?];
          }

          v37 = 1;
LABEL_48:
          v14 = v22;
        }

LABEL_49:
        result = class_getSuperclass(v17);
        v17 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return [v10 containsObject:a2];
}

- (uint64_t)_shouldExemptProcessBasedOnArchivingExceptionRules:(uint64_t)a1
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__NSCoder__shouldExemptProcessBasedOnArchivingExceptionRules___block_invoke;
    v4[3] = &__block_descriptor_40_e5_v8__0l;
    v4[4] = a2;
    if (qword_1ED43F588 != -1)
    {
      dispatch_once(&qword_1ED43F588, v4);
    }

    v2 = _MergedGlobals_93;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_walkAllowedClassListValidatingInstance:(uint64_t)a3 forKey:(void *)a4 allowedClasses:(int)a5 strictModeEnabled:(char)a6 alwaysEnforceExplicitSubclasses:(int)a7 specialCaseObject:(uint64_t *)a8 invalidElementClass:
{
  v32[128] = *MEMORY[0x1E69E9840];
  if (!a1 || !-[NSCoder _walkAllowedClassListLookingForClass:forKey:allowedClasses:strictModeEnabled:alwaysEnforceExplicitSubclasses:specialCaseObject:](a1, [a2 classForCoder], a3, a4, a5, a6, a7))
  {
    return 0;
  }

  if (![a1 _enforceCollectionTyping] || (_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0 && !_NSIsNSDictionary())
  {
    return 1;
  }

  v12 = *MEMORY[0x1E695E480];
  memset(&callBacks, 0, sizeof(callBacks));
  v13 = CFSetCreateMutable(v12, 32, &callBacks);
  memset(&v26, 0, sizeof(v26));
  v14 = CFArrayCreateMutable(v12, 32, &v26);
  CFArrayAppendValue(v14, a2);
  Count = CFArrayGetCount(v14);
  if (!Count)
  {
LABEL_24:
    v23 = 1;
    goto LABEL_25;
  }

  v25 = a8;
  while (1)
  {
    v16 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(v14, Count - 1);
    CFArrayRemoveValueAtIndex(v14, v16);
    if (!CFSetContainsValue(v13, ValueAtIndex))
    {
      break;
    }

LABEL_23:
    Count = CFArrayGetCount(v14);
    if (!Count)
    {
      goto LABEL_24;
    }
  }

  CFSetAddValue(v13, ValueAtIndex);
  v18 = [ValueAtIndex classForCoder];
  if ([a1 _validateAllowedClassesContainsClass:v18 forKey:a3])
  {
    if ((_NSIsNSArray() & 1) != 0 || (_NSIsNSSet() & 1) != 0 || (_NSIsNSOrderedSet() & 1) != 0 || _NSIsNSDictionary())
    {
      v19 = _NSIsNSDictionary();
      v30 = 0u;
      v31 = 0u;
      *newValues = 0u;
      v29 = 0u;
      v20 = [ValueAtIndex countByEnumeratingWithState:newValues objects:v32 count:128];
      if (v20)
      {
        v21 = v20;
        do
        {
          v33.location = v16;
          v33.length = 0;
          CFArrayReplaceValues(v14, v33, newValues[1], v21);
          v16 += v21;
          if (v19)
          {
            for (i = 0; i != v21; ++i)
            {
              v32[i] = [ValueAtIndex objectForKey:newValues[1][i]];
            }

            v34.location = v16;
            v34.length = 0;
            CFArrayReplaceValues(v14, v34, v32, v21);
            v16 += v21;
          }

          v21 = [ValueAtIndex countByEnumeratingWithState:newValues objects:v32 count:128];
        }

        while (v21);
      }
    }

    goto LABEL_23;
  }

  v23 = 0;
  if (v25)
  {
    *v25 = v18;
  }

LABEL_25:
  CFRelease(v13);
  CFRelease(v14);
  return v23;
}

void __62__NSCoder__shouldExemptProcessBasedOnArchivingExceptionRules___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  getpid();
  v7 = *(a1 + 32);
  if (sandbox_check() || (v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", *(a1 + 32), 4, v7), (v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfFile:v4]) == 0))
  {
    byte_1ED43F579 = 1;
    v2 = _NSOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v2, OS_LOG_TYPE_ERROR, "No ArchivingExceptions available / readable. Allowing all.", buf, 2u);
    }

    v3 = 0;
  }

  else
  {
    v3 = v5;
    byte_1ED43F579 = [v5 containsObject:{-[NSProcessInfo processName](+[NSProcessInfo processInfo](NSProcessInfo, "processInfo"), "processName")}];
  }

  if (byte_1ED43F579)
  {
    v6 = 1;
  }

  else
  {
    if (qword_1ED43F580 != -1)
    {
      dispatch_once(&qword_1ED43F580, &__block_literal_global_5);
    }

    v6 = byte_1ED43F579 | (dword_1ED43F57C == 2);
  }

  _MergedGlobals_93 = v6 & 1;
}

- (BOOL)validateClassSupportsSecureCoding:(Class)a3
{
  if (([(objc_class *)a3 conformsToProtocol:&unk_1EEF5E4A0]& 1) == 0)
  {
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"This decoder will only decode classes that adopt NSSecureCoding. Class '%s' does not adopt it.", class_getName(a3), v9];
    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"Class '%s' disallows secure coding. It must implement supportsSecureCoding and return YES.", class_getName(a3), v9];
    return 0;
  }

  if (![(objc_class *)a3 supportsSecureCoding])
  {
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"Class '%s' disallows secure coding. It must return YES from supportsSecureCoding.", class_getName(a3), v9];
    return 0;
  }

  if (!a3)
  {
LABEL_8:
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"Class '%s' does not implement initWithCoder:.", class_getName(a3), v9];
    return 0;
  }

  Superclass = a3;
  while ((_classOverridesSelector(Superclass, sel_initWithCoder_) & 1) == 0)
  {
    Superclass = class_getSuperclass(Superclass);
    if (!Superclass)
    {
      goto LABEL_8;
    }
  }

  Class = object_getClass(Superclass);
  if ((_classOverridesSelector(Class, sel_supportsSecureCoding) & 1) == 0)
  {
    Name = class_getName(a3);
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"Class '%s' has a superclass that supports secure coding, but '%s' overrides -initWithCoder: and does not override +supportsSecureCoding. The class must implement +supportsSecureCoding and return YES to verify that its implementation of -initWithCoder: is secure coding compliant.", Name, class_getName(a3)];
    return 0;
  }

  return 1;
}

- (NSString)__descriptionForUnexpectedClass:(__CFString *)a3 forKey:(void *)a4 allowedClasses:
{
  if (result)
  {
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = @"(no key, possibly an argument to a message)";
    }

    return [NSString stringWithFormat:@"value for key '%@' was of unexpected class %@.\nAllowed classes are:\n %@", v4, [NSString stringWithFormat:@"'%@' (%p) [%@]", a2, a2, [(NSURL *)[[NSBundle bundleForClass:?]] path]], [(NSCoder *)result _allowedClassesDescriptionForClasses:a4]];
  }

  return result;
}

- (id)_allowedClassesDescriptionForClasses:(uint64_t)a1
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__NSCoder__allowedClassesDescriptionForClasses___block_invoke;
  v6[3] = &unk_1E69F2828;
  v6[4] = v4;
  v6[5] = a1;
  [a2 enumerateObjectsUsingBlock:v6];
  return v4;
}

- (NSString)__descriptionForUnexpectedElementClass:(__CFString *)a3 forContainerKey:(void *)a4 allowedClasses:
{
  if (result)
  {
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = @"(no key, possibly an argument to a message)";
    }

    return [NSString stringWithFormat:@"collection for key '%@' recursively contained an element of unexpected class %@.\nAllowed classes are:\n %@", v4, [NSString stringWithFormat:@"'%@' (%p) [%@]", a2, a2, [(NSURL *)[[NSBundle bundleForClass:?]] path]], [(NSCoder *)result _allowedClassesDescriptionForClasses:a4]];
  }

  return result;
}

uint64_t __48__NSCoder__allowedClassesDescriptionForClasses___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [(NSCoder *)*(a1 + 40) __allowedClassesDescriptionForClass:a2];

  return [v2 addObject:v3];
}

- (void)_warnAboutPlistType:(uint64_t)a3 forKey:(void *)a4 missingInAllowedClasses:
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = _NSOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138544386;
      v10 = _NSMethodExceptionProem(a1, sel_validateAllowedClass_forKey_);
      v11 = 2114;
      v12 = [NSString stringWithFormat:@"'%@' (%p) [%@]", a2, a2, [(NSURL *)[[NSBundle bundleForClass:?]] path]];
      v13 = 2114;
      v14 = a3;
      v15 = 2114;
      v16 = [(NSCoder *)a1 _allowedClassesDescriptionForClasses:a4];
      v17 = 2114;
      v18 = [(objc_class *)a1 __decoderInfoForAllowedClassesWarning];
      _os_log_fault_impl(&dword_18075C000, v8, OS_LOG_TYPE_FAULT, "%{public}@ allowed unarchiving safe plist type '%{public}@' for key '%{public}@', even though it was not explicitly included in the client allowed classes set: '%{public}@'. This will be disallowed in the future.%{public}@", buf, 0x34u);
    }
  }
}

- (BOOL)_validateAllowedClassesContainsClass:(Class)a3 forKey:(id)a4
{
  v4 = a4;
  if (!a3)
  {
    v11 = [NSString stringWithFormat:@"Attempt to decode an object with no class for key '%@'.", a4];
    v12 = MEMORY[0x1E695DF30];
    v13 = &NSInvalidUnarchiveOperationException;
    goto LABEL_15;
  }

  if (!object_isClass(a3))
  {
    v11 = [NSString stringWithFormat:@"%@ object in class list '%@' is not an Objective-C class!", _NSMethodExceptionProem(self, sel_validateAllowedClass_forKey_), a3];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695D940];
LABEL_15:
    objc_exception_throw([v12 exceptionWithName:*v13 reason:v11 userInfo:0]);
  }

  v7 = [(NSCoder *)self allowedClasses];
  if (![(NSSet *)v7 containsObject:MEMORY[0x1E69E58C0]]|| (v8 = [(NSCoder *)self _warnAboutNSObjectInAllowedClassesWithException:?]) != 0)
  {
    Superclass = a3;
    do
    {
      if ([(NSSet *)v7 containsObject:Superclass])
      {
        LOBYTE(v8) = 1;
        return v8;
      }

      Superclass = class_getSuperclass(Superclass);
    }

    while (Superclass);
    if (!v4)
    {
      v4 = @"(no key, possibly an argument to a message)";
    }

    v10 = [(NSCoder *)self __allowedClassesDescriptionForClass:a3];
    [(NSCoder *)self __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"value for key '%@' was of unexpected class %@.\nAllowed classes are:\n %@", v4, v10, [(NSCoder *)self _allowedClassesDescriptionForClasses:v7]];
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_validateAllowedClass:(Class)a3 forKey:(id)a4 allowingInvocations:(BOOL)a5
{
  v5 = a5;
  if (![(NSCoder *)self _validateAllowedClassesContainsClass:a3 forKey:a4]|| v5 && (MEMORY[0x1E695DF50] == a3 || MEMORY[0x1E695DED8] == a3))
  {
    return 0;
  }

  return [(NSCoder *)self validateClassSupportsSecureCoding:a3];
}

- (void)failWithError:(NSError *)error
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (!self)
    {
      return;
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSCoder.m", 1384, @"Invalid parameter not satisfying: %@", @"error != nil"];
    if (!self)
    {
      return;
    }
  }

  v6 = @"__NSCoderError";
  v7[0] = error;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  -[NSCoder __failWithException:](self, [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:-[NSError localizedDescription](error userInfo:{"localizedDescription"), v5}]);
}

- (BOOL)__failWithException:(void *)a1
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (![a1 decodingFailurePolicy] || (v5[0] = 0, !objc_msgSend(objc_opt_class(), "__categorizeException:intoError:", a2, v5)))
    {
      objc_exception_throw(a2);
    }

    [a1 __setError:v5[0]];
  }

  return a1 != 0;
}

- (NSString)__failWithUnexpectedClass:(__CFString *)a3 forKey:(void *)a4 allowedClasses:
{
  if (result)
  {
    return [(NSString *)result __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@", [(NSCoder *)result __descriptionForUnexpectedClass:a2 forKey:a3 allowedClasses:a4]];
  }

  return result;
}

- (NSString)__failWithUnexpectedElementClass:(__CFString *)a3 forContainerKey:(void *)a4 allowedClasses:
{
  if (result)
  {
    return [(NSString *)result __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:@"%@", [(NSCoder *)result __descriptionForUnexpectedElementClass:a2 forContainerKey:a3 allowedClasses:a4]];
  }

  return result;
}

- (BOOL)__failWithExceptionName:(id)a3 errorCode:(int64_t)a4 format:(id)a5
{
  v9 = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSCoder.m", 1494, @"Invalid parameter not satisfying: %@", @"exceptionName != nil"];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  if (v9 >> 1 != 2432)
  {
    __NSCoderInvalidState(@"invalid error code: %ld", a2, a3, a4, a5, v5, v6, v7, v9);
  }

  v14 = @"__NSCoderInternalErrorCode";
  v15[0] = [NSNumber numberWithInteger:v9];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
LABEL_5:
  if (a5)
  {
    v12 = [[NSString alloc] initWithFormat:a5 arguments:&v16];
  }

  else
  {
    v12 = &stru_1EEEFDF90;
  }

  return -[NSCoder __failWithException:](self, [MEMORY[0x1E695DF30] exceptionWithName:a3 reason:v12 userInfo:v9]);
}

+ (BOOL)__categorizeException:(id)a3 intoError:(id *)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:+[NSString stringWithUTF8String:](NSString lineNumber:"stringWithUTF8String:" description:"+[NSCoder(Exceptions) __categorizeException:intoError:]"), @"NSCoder.m", 1531, @"Invalid parameter not satisfying: %@", @"exception != nil"];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:+[NSString stringWithUTF8String:](NSString lineNumber:"stringWithUTF8String:" description:"+[NSCoder(Exceptions) __categorizeException:intoError:]"), @"NSCoder.m", 1532, @"Invalid parameter not satisfying: %@", @"outError != NULL"];
LABEL_3:
  v6 = [a3 userInfo];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 objectForKey:@"__NSCoderInternalErrorCode"];
    v9 = [v7 objectForKey:@"__NSCoderError"];
    v17 = v9;
    if (v8 && v9)
    {
      __NSCoderInvalidState(@"expected only one of: internal error code (%@) or external error (%@) not both", v10, v11, v12, v13, v14, v15, v16, v8);
    }

    if (v8)
    {
      if ((_NSIsNSNumber() & 1) == 0)
      {
        v29 = objc_opt_class();
        __NSCoderInvalidState(@"wrong type for error code value %@, expecting NSNumber", v30, v31, v32, v33, v34, v35, v36, v29);
      }

      v18 = [v8 integerValue];
      v26 = v18;
      if (v18 >> 1 != 2432)
      {
        __NSCoderInvalidState(@"invalid error code: %ld", v19, v20, v21, v22, v23, v24, v25, v18);
      }

      if (!a4)
      {
        goto LABEL_19;
      }

      v27 = [a3 reason];
      if ([v27 length])
      {
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObject:v27 forKey:*MEMORY[0x1E695E618]];
      }

      else
      {
        v28 = 0;
      }

      v17 = [[NSError alloc] initWithDomain:@"NSCocoaErrorDomain" code:v26 userInfo:v28];
LABEL_18:
      *a4 = v17;
LABEL_19:
      LOBYTE(v6) = 1;
      return v6;
    }

    if (v9)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        __NSCoderInvalidState(@"expected external to be a kind of NSError, instead it is a '%@'", v39, v40, v41, v42, v43, v44, v45, v38);
      }

      if (!a4)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)encodePoint:(NSPoint)point
{
  v7 = *MEMORY[0x1E69E9840];
  x = point.x;
  v6 = x;
  y = point.y;
  v5 = y;
  [(NSCoder *)self encodeValuesOfObjCTypes:"ff", &v6, &v5];
}

- (NSPoint)decodePoint
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  v4 = 0.0;
  [(NSCoder *)self decodeValuesOfObjCTypes:"ff", &v5, &v4];
  v2 = v5;
  v3 = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)encodeSize:(NSSize)size
{
  v7 = *MEMORY[0x1E69E9840];
  width = size.width;
  v6 = width;
  height = size.height;
  v5 = height;
  [(NSCoder *)self encodeValuesOfObjCTypes:"ff", &v6, &v5];
}

- (NSSize)decodeSize
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  v4 = 0.0;
  [(NSCoder *)self decodeValuesOfObjCTypes:"ff", &v5, &v4];
  v2 = v5;
  v3 = v4;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)encodeRect:(NSRect)rect
{
  v11 = *MEMORY[0x1E69E9840];
  x = rect.origin.x;
  y = rect.origin.y;
  v9 = y;
  v10 = x;
  width = rect.size.width;
  height = rect.size.height;
  v7 = height;
  v8 = width;
  [(NSCoder *)self encodeValuesOfObjCTypes:"ffff", &v10, &v9, &v8, &v7];
}

- (NSRect)decodeRect
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  [(NSCoder *)self decodeValuesOfObjCTypes:"ffff", v7 + 4, v7, &v6 + 4, &v6];
  v2 = *(v7 + 1);
  v3 = *v7;
  v4 = *(&v6 + 1);
  v5 = *&v6;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)encodePoint:(NSPoint)point forKey:(NSString *)key
{
  v6 = NSStringFromPoint(point);

  [(NSCoder *)self encodeObject:v6 forKey:key];
}

- (void)encodeSize:(NSSize)size forKey:(NSString *)key
{
  v6 = NSStringFromSize(size);

  [(NSCoder *)self encodeObject:v6 forKey:key];
}

- (void)encodeRect:(NSRect)rect forKey:(NSString *)key
{
  v6 = NSStringFromRect(rect);

  [(NSCoder *)self encodeObject:v6 forKey:key];
}

- (NSPoint)decodePointForKey:(NSString *)key
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  if (v3)
  {
    v6 = 0.0;
    v7 = 0.0;
    parseFloats(v3, 2, &v6);
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (NSSize)decodeSizeForKey:(NSString *)key
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  if (v3)
  {
    v6 = 0.0;
    v7 = 0.0;
    parseFloats(v3, 2, &v6);
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (NSRect)decodeRectForKey:(NSString *)key
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  if (v3)
  {
    v8 = 0u;
    *v9 = 0u;
    parseFloats(v3, 4, &v8);
    v5 = *(&v8 + 1);
    v4 = *&v8;
    v7 = v9[1];
    v6 = v9[0];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end