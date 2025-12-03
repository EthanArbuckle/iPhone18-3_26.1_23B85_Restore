@interface NSKeyedArchiver
+ (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path;
+ (NSData)archivedDataWithRootObject:(id)object requiringSecureCoding:(BOOL)requiresSecureCoding error:(NSError *)error;
+ (NSData)archivedDataWithRootObject:(id)rootObject;
+ (NSString)classNameForClass:(Class)cls;
+ (void)initialize;
+ (void)setClassName:(NSString *)codedName forClass:(Class)cls;
- (BOOL)requiresSecureCoding;
- (NSData)encodedData;
- (NSKeyedArchiver)init;
- (NSKeyedArchiver)initRequiringSecureCoding:(BOOL)requiresSecureCoding;
- (NSPropertyListFormat)outputFormat;
- (NSString)classNameForClass:(Class)cls;
- (id)_blobForCurrentObject;
- (id)_initWithOutput:(id)output;
- (id)description;
- (int64_t)versionForClassName:(id)name;
- (void)_encodeArrayOfObjects:(id)objects forKey:(id)key;
- (void)_encodePropertyList:(id)list forKey:(id)key;
- (void)_setBlobForCurrentObject:(id)object;
- (void)dealloc;
- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at;
- (void)encodeBool:(BOOL)value forKey:(NSString *)key;
- (void)encodeBytes:(const uint8_t *)bytes length:(NSUInteger)length forKey:(NSString *)key;
- (void)encodeBytes:(const void *)bytes length:(unint64_t)length;
- (void)encodeConditionalObject:(id)object;
- (void)encodeConditionalObject:(id)object forKey:(NSString *)key;
- (void)encodeDouble:(double)value forKey:(NSString *)key;
- (void)encodeFloat:(float)value forKey:(NSString *)key;
- (void)encodeInt32:(int32_t)value forKey:(NSString *)key;
- (void)encodeInt64:(int64_t)value forKey:(NSString *)key;
- (void)encodeInt:(int)value forKey:(NSString *)key;
- (void)encodeObject:(id)object;
- (void)encodeObject:(id)object forKey:(NSString *)key;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
- (void)encodeValuesOfObjCTypes:(const char *)types;
- (void)finishEncoding;
- (void)replaceObject:(id)object withObject:(id)withObject;
- (void)setClassName:(NSString *)codedName forClass:(Class)cls;
- (void)setOutputFormat:(NSPropertyListFormat)outputFormat;
- (void)setRequiresSecureCoding:(BOOL)requiresSecureCoding;
@end

@implementation NSKeyedArchiver

- (NSKeyedArchiver)init
{
  v3 = objc_opt_new();

  return [(NSKeyedArchiver *)self _initWithOutput:v3];
}

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

- (NSData)encodedData
{
  if (_NSIsNSData())
  {
    v3 = atomic_load(&self->_flags);
    if (v3 != self->_pac_signature)
    {
      __NSPoisoned();
    }

    v4 = atomic_load(&self->_flags);
    if ((v4 & 2) == 0)
    {
      [(NSKeyedArchiver *)self finishEncoding];
    }

    v5 = self->_stream;

    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E695DEF0];

    return [v7 data];
  }
}

- (void)finishEncoding
{
  v24 = *MEMORY[0x1E69E9840];
  valuePtr = 100000;
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    goto LABEL_19;
  }

  v4 = atomic_load(&self->_flags);
  if ((v4 & 2) != 0)
  {
    return;
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(NSKeyedArchiverDelegate *)self->_delegate archiverWillFinish:self];
  }

  v6 = atomic_load(&self->_flags);
  if (v6 != self->_pac_signature)
  {
LABEL_19:
    __NSPoisoned();
  }

  v7 = atomic_load(&self->_flags);
  atomic_store(v7 | 2, &self->_flags);
  v8 = atomic_load(&self->_flags);
  self->_pac_signature = v8;
  v9 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v9, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  CFDictionarySetValue(Mutable, @"$archiver", v13);
  CFDictionarySetValue(Mutable, @"$version", v10);
  CFDictionarySetValue(Mutable, @"$objects", self->_objects);
  ValueAtIndex = CFArrayGetValueAtIndex(self->_containers, 0);
  CFDictionarySetValue(Mutable, @"$top", ValueAtIndex);
  CFRelease(v10);
  self->_estimatedCount += 12;
  if ([(NSKeyedArchiver *)self outputFormat]== NSPropertyListXMLFormat_v1_0)
  {
    XMLDataWithExtras = _CFPropertyListCreateXMLDataWithExtras();
    if (!XMLDataWithExtras)
    {
      v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: could not create XML data", _NSMethodExceptionProem(self, a2)), 0}];
      objc_exception_throw(v22);
    }

    v16 = XMLDataWithExtras;
    v17 = CFGetTypeID(self->_stream);
    TypeID = CFDataGetTypeID();
    stream = self->_stream;
    BytePtr = CFDataGetBytePtr(v16);
    Length = CFDataGetLength(v16);
    if (v17 == TypeID)
    {
      CFDataAppendBytes(stream, BytePtr, Length);
    }

    else
    {
      CFWriteStreamWrite(stream, BytePtr, Length);
    }

    CFRelease(v16);
  }

  else if ([(NSKeyedArchiver *)self outputFormat]== NSPropertyListBinaryFormat_v1_0)
  {
    __CFBinaryPlistWriteToStreamWithOptions();
  }

  CFRelease(Mutable);
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NSKeyedArchiverDelegate *)self->_delegate archiverDidFinish:self];
    }
  }
}

- (NSPropertyListFormat)outputFormat
{
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v3 = atomic_load(&self->_flags);
  return v3 >> 16;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_flags);
  if (v2 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v4 = atomic_load(&self->_flags);
  if ((v4 & 2) == 0)
  {
    v6 = _NSOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = _NSMethodExceptionProem(self, a2);
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "%@: warning: NSKeyedArchiver deallocated without having had -finishEncoding called on it.", buf, 0xCu);
    }
  }

  cacheSize = self->_cacheSize;
  if (cacheSize)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = self->_cache[v8];
      if (v10)
      {
        CFRelease(v10);
        cacheSize = self->_cacheSize;
      }

      v8 = v9;
    }

    while (cacheSize > v9++);
  }

  cache = self->_cache;
  if (cache)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E4A8], cache);
  }

  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
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

  classNameMap = self->_classNameMap;
  if (classNameMap)
  {
    CFRelease(classNameMap);
  }

  conditionals = self->_conditionals;
  if (conditionals)
  {
    CFRelease(conditionals);
  }

  classes = self->_classes;
  if (classes)
  {
    CFRelease(classes);
  }

  visited = self->_visited;
  if (visited)
  {
    CFRelease(visited);
  }

  v20.receiver = self;
  v20.super_class = NSKeyedArchiver;
  [(NSKeyedArchiver *)&v20 dealloc];
}

+ (void)initialize
{
  if (NSKeyedArchiver == self)
  {
    if (getenv("NSWarnAboutOldStyleArchiverMethods"))
    {
      _warnArchiverCompat = 1;
    }

    [NSKeyedArchiver setClassName:@"NSLocalTimeZone" forClass:objc_lookUpClass("__NSLocalTimeZone")];
    v3 = objc_lookUpClass("__NSLocalTimeZoneI");

    [NSKeyedArchiver setClassName:@"NSLocalTimeZone" forClass:v3];
  }
}

- (void)_setBlobForCurrentObject:(id)object
{
  v5 = [(NSMutableArray *)self->_containers count]- 1;
  [(NSMutableArray *)self->_containers addObject:object];
  containers = self->_containers;

  [(NSMutableArray *)containers removeObjectAtIndex:v5];
}

- (id)_blobForCurrentObject
{
  v3 = [(NSMutableArray *)self->_containers count]- 1;
  containers = self->_containers;

  return [(NSMutableArray *)containers objectAtIndexedSubscript:v3];
}

- (NSKeyedArchiver)initRequiringSecureCoding:(BOOL)requiresSecureCoding
{
  v3 = requiresSecureCoding;
  v4 = [(NSKeyedArchiver *)self init];
  [(NSKeyedArchiver *)v4 setRequiresSecureCoding:v3];
  return v4;
}

+ (NSData)archivedDataWithRootObject:(id)object requiringSecureCoding:(BOOL)requiresSecureCoding error:(NSError *)error
{
  v6 = [[self alloc] initRequiringSecureCoding:requiresSecureCoding];
  [v6 encodeObject:object forKey:@"root"];
  encodedData = [v6 encodedData];
  [v6 finishEncoding];

  return encodedData;
}

- (id)_initWithOutput:(id)output
{
  v12 = *MEMORY[0x1E69E9840];
  self->_stream = CFRetain(output);
  p_flags = &self->_flags;
  atomic_store(0xC80000uLL, &self->_flags);
  self->_delegate = 0;
  self->_containers = 0;
  self->_objects = 0;
  self->_objRefMap = 0;
  self->_replacementMap = 0;
  self->_classNameMap = 0;
  self->_conditionals = 0;
  self->_classes = 0;
  self->_visited = 0;
  self->_cache = 0;
  self->_cacheSize = 0;
  self->_estimatedCount = 0;
  self->_containers = objc_opt_new();
  self->_objects = objc_opt_new();
  _CFArraySetCapacity();
  [(NSMutableArray *)self->_objects addObject:@"$null"];
  keyCallBacks.version = 0;
  keyCallBacks.retain = __karetain;
  keyCallBacks.release = __karelease;
  memset(&keyCallBacks.copyDescription, 0, 24);
  self->_objRefMap = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
  _CFDictionarySetCapacity();
  self->_conditionals = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
  v5 = atomic_load(&self->_flags);
  self->_pac_signature = v5;
  v6 = objc_opt_new();
  _CFDictionarySetCapacity();
  [(NSMutableArray *)self->_containers addObject:v6];
  ++self->_estimatedCount;

  v7 = atomic_load(&self->_flags);
  if (v7 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v8 = atomic_load(p_flags);
  atomic_store(v8 & 0xFFFFFFFFFFFFFFFELL, p_flags);
  v9 = atomic_load(p_flags);
  self->_pac_signature = v9;
  self->_genericKey = 0;
  return self;
}

+ (NSData)archivedDataWithRootObject:(id)rootObject
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength:0];
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_allocWithZone(self) initForWritingWithMutableData:v5];
  [v7 encodeObject:rootObject forKey:@"root"];
  [v7 finishEncoding];
  objc_autoreleasePoolPop(v6);
  return v5;
}

+ (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v16 = 0;
  v17[0] = 0;
  if (_NSCreateTemporaryFile(path, v17, 0, &v16, 0))
  {
    v8 = CFWriteStreamCreateWithFile(0, [MEMORY[0x1E695DFF8] fileURLWithPath:v17[0] isDirectory:0]);
    v9 = CFWriteStreamOpen(v8);
    Status = CFWriteStreamGetStatus(v8);
    if (v9)
    {
      v11 = Status == kCFStreamStatusOpen;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && (v12 = [objc_allocWithZone(self) _initWithOutput:v8], objc_msgSend(v12, "encodeObject:forKey:", rootObject, @"root"), objc_msgSend(v12, "finishEncoding"), v13 = CFWriteStreamGetStatus(v8), CFWriteStreamClose(v8), v13 != kCFStreamStatusError))
    {
      v14 = _NSMoveTemporaryFileToDestination(v17[0], path);
    }

    else
    {
      v14 = 0;
    }

    _NSCleanupTemporaryDirectory(v16);
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v14;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSKeyedArchiver;
  return [(NSKeyedArchiver *)&v3 description];
}

- (void)setOutputFormat:(NSPropertyListFormat)outputFormat
{
  if (outputFormat != NSPropertyListXMLFormat_v1_0 && outputFormat != NSPropertyListBinaryFormat_v1_0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid format (%ld)", _NSMethodExceptionProem(self, a2), outputFormat), 0}];
    objc_exception_throw(v7);
  }

  p_flags = &self->_flags;
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v5 = atomic_load(p_flags);
  atomic_store(v5 | (outputFormat << 16), p_flags);
  v6 = atomic_load(&self->_flags);
  self->_pac_signature = v6;
}

+ (void)setClassName:(NSString *)codedName forClass:(Class)cls
{
  os_unfair_lock_lock(&_MergedGlobals_43);
  Mutable = qword_1ED43EF28;
  if (!qword_1ED43EF28)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, MEMORY[0x1E695E9E8]);
    qword_1ED43EF28 = Mutable;
  }

  if (codedName)
  {
    CFDictionarySetValue(Mutable, cls, codedName);
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, cls);
  }

  os_unfair_lock_unlock(&_MergedGlobals_43);
}

- (void)setClassName:(NSString *)codedName forClass:(Class)cls
{
  classNameMap = self->_classNameMap;
  if (!classNameMap)
  {
    classNameMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, MEMORY[0x1E695E9E8]);
    self->_classNameMap = classNameMap;
  }

  if (codedName)
  {

    CFDictionarySetValue(classNameMap, cls, codedName);
  }

  else
  {

    CFDictionaryRemoveValue(classNameMap, cls);
  }
}

+ (NSString)classNameForClass:(Class)cls
{
  os_unfair_lock_lock(&_MergedGlobals_43);
  if (qword_1ED43EF28)
  {
    Value = CFDictionaryGetValue(qword_1ED43EF28, cls);
  }

  else
  {
    Value = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_43);
  return Value;
}

- (NSString)classNameForClass:(Class)cls
{
  result = self->_classNameMap;
  if (result)
  {
    return CFDictionaryGetValue(result, cls);
  }

  return result;
}

- (void)replaceObject:(id)object withObject:(id)withObject
{
  value[1] = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot replace", 0}];
    objc_exception_throw(v11);
  }

  if (object != withObject)
  {
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(NSKeyedArchiverDelegate *)self->_delegate archiver:self willReplaceObject:object withObject:withObject];
    }

    value[0] = 0;
    if (CFDictionaryGetValueIfPresent(self->_objRefMap, object, value))
    {
      v9 = LODWORD(value[0]) == 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      CFDictionaryRemoveValue(self->_objRefMap, object);
      CFDictionarySetValue(self->_objRefMap, withObject, value[0]);
    }
  }

  if (!self->_replacementMap)
  {
    self->_replacementMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
    _CFDictionarySetCapacity();
  }

  visited = self->_visited;
  if (!visited)
  {
    self->_visited = CFSetCreateMutable(*MEMORY[0x1E695E4A8], 0, 0);
    _CFSetSetCapacity();
    visited = self->_visited;
  }

  CFSetAddValue(visited, object);
  if (object != withObject)
  {
    CFDictionarySetValue(self->_replacementMap, object, withObject);
  }
}

- (void)encodeObject:(id)object forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeObject(self, v7, object, 0);
}

- (void)encodeConditionalObject:(id)object forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeObject(self, v7, object, 1);
}

- (void)_encodeArrayOfObjects:(id)objects forKey:(id)key
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    goto LABEL_26;
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v28);
  }

  keyCopy = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(keyCopy, 0) == 36)
  {
    keyCopy = [@"$" stringByAppendingString:keyCopy];
  }

  v9 = objc_opt_new();
  _CFArraySetCapacity();
  [(NSMutableArray *)self->_containers addObject:v9];
  ++self->_estimatedCount;

  v10 = atomic_load(&self->_flags);
  if (v10 != self->_pac_signature)
  {
    goto LABEL_26;
  }

  v11 = atomic_load(&self->_flags);
  atomic_store(v11 | 1, &self->_flags);
  v12 = atomic_load(&self->_flags);
  self->_pac_signature = v12;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [objects countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(objects);
        }

        _encodeObject(self, &stru_1EEEFDF90, *(*(&v30 + 1) + 8 * v16++), 0);
      }

      while (v14 != v16);
      v14 = [objects countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v14);
  }

  v17 = [(NSMutableArray *)self->_containers count]- 1;
  if (v17 < 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = [(NSMutableArray *)self->_containers objectAtIndexedSubscript:v17];
  }

  v19 = CFRetain(v18);
  v20 = [(NSMutableArray *)self->_containers count];
  [(NSMutableArray *)self->_containers removeObjectAtIndex:v20 - 1];
  if (v20 - 1 >= 1)
  {
    v21 = CFGetTypeID([(NSMutableArray *)self->_containers objectAtIndexedSubscript:v20 - 2]);
    v22 = atomic_load(&self->_flags);
    pac_signature = self->_pac_signature;
    if (v21 == 19)
    {
      if (v22 == pac_signature)
      {
        v24 = atomic_load(&self->_flags);
        v25 = v24 | 1;
LABEL_24:
        atomic_store(v25, &self->_flags);
        v27 = atomic_load(&self->_flags);
        self->_pac_signature = v27;
        goto LABEL_25;
      }
    }

    else if (v22 == pac_signature)
    {
      v26 = atomic_load(&self->_flags);
      v25 = v26 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_24;
    }

LABEL_26:
    __NSPoisoned();
  }

LABEL_25:
  addValueToTopContainerE(self, keyCopy, v19);
  CFRelease(v19);
}

- (void)encodeBool:(BOOL)value forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v11);
  }

  v7 = key;
  v8 = value;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  v9 = MEMORY[0x1E695E4D0];
  if (!v8)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  v10 = *v9;

  addValueToTopContainerE(self, v7, v10);
}

- (void)encodeInt:(int)value forKey:(NSString *)key
{
  v11 = *MEMORY[0x1E69E9840];
  valuePtr = value;
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(key, 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  addValueToTopContainerE(self, key, v8);
  CFRelease(v8);
}

- (void)encodeInt32:(int32_t)value forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeInt32(self, v7, value);
}

- (void)encodeInt64:(int64_t)value forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeInt64(self, v7, value);
}

- (void)encodeFloat:(float)value forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeFloat(self, v7, value);
}

- (void)encodeDouble:(double)value forKey:(NSString *)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  v7 = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeDouble(self, v7, value);
}

- (void)encodeBytes:(const uint8_t *)bytes length:(NSUInteger)length forKey:(NSString *)key
{
  atomic_load(&self->_flags);
  if (self->_pac_signature != 12333)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v10 = [NSString stringWithFormat:@"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more"];
    v11 = MEMORY[0x1E695DF30];
    v12 = @"NSInvalidArchiveOperationException";
    goto LABEL_15;
  }

  v7 = key;
  if (!bytes && length)
  {
    v10 = [NSString stringWithFormat:@"%@: argument inconsistency: bytes pointer is null but length (%ld) is not zero", _NSMethodExceptionProem(self, a2), length];
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
LABEL_15:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v10 userInfo:0]);
  }

  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(v7, 0) == 36)
  {
    v7 = [@"$" stringByAppendingString:v7];
  }

  _encodeBytes(self, bytes, length, v7);
}

- (void)_encodePropertyList:(id)list forKey:(id)key
{
  v4 = atomic_load(&self->_flags);
  if (v4 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 2) != 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v9);
  }

  keyCopy = key;
  if (key && CFStringGetLength(key) >= 1 && CFStringGetCharacterAtIndex(keyCopy, 0) == 36)
  {
    keyCopy = [@"$" stringByAppendingString:keyCopy];
  }

  addValueToTopContainerE(self, keyCopy, list);
}

- (void)encodeObject:(id)object
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
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v11);
  }

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

  _encodeObject(self, genericKey, object, 0);
}

- (void)encodeConditionalObject:(id)object
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
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v11);
  }

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

  _encodeObject(self, genericKey, object, 1);
}

- (void)encodeBytes:(const void *)bytes length:(unint64_t)length
{
  if (_warnArchiverCompat == 1)
  {
    v8 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v8);
  }

  v9 = atomic_load(&self->_flags);
  if (v9 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v10 = atomic_load(&self->_flags);
  if ((v10 & 2) != 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidArchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0}];
    objc_exception_throw(v13);
  }

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

  _encodeBytes(self, bytes, length, genericKey);
}

- (void)encodeValuesOfObjCTypes:(const char *)types
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
    v12 = [NSString stringWithFormat:@"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more", 0];
    v13 = MEMORY[0x1E695DF30];
    v14 = @"NSInvalidArchiveOperationException";
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

      [(NSKeyedArchiver *)self encodeValueOfObjCType:types at:?];
      if (!*++types)
      {
        return;
      }
    }

    v11 = [NSString stringWithFormat:@"%@: null address pointer", _NSMethodExceptionProem(self, a2)];
    goto LABEL_11;
  }
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  if (_warnArchiverCompat == 1)
  {
    v8 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v8);
  }

  v9 = atomic_load(&self->_flags);
  if (v9 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v10 = atomic_load(&self->_flags);
  if ((v10 & 2) != 0)
  {
    v17 = [NSString stringWithFormat:@"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more"];
    v18 = MEMORY[0x1E695DF30];
    v19 = @"NSInvalidArchiveOperationException";
    goto LABEL_27;
  }

  if (!type || !at)
  {
    v20 = [NSString stringWithFormat:@"%@: null type or address pointer", _NSMethodExceptionProem(self, a2)];
LABEL_26:
    v17 = v20;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
LABEL_27:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v17 userInfo:0]);
  }

  v11 = *type;
  if (v11 != 91)
  {
    if (v11 != 123)
    {

      _compatEncodeValueOfObjCType(self, v11, at, a2);
      return;
    }

    v20 = [NSString stringWithFormat:@"%@: this archiver cannot encode structs", _NSMethodExceptionProem(self, a2)];
    goto LABEL_26;
  }

  v14 = *(type + 1);
  v13 = type + 1;
  v12 = v14;
  if (v14 - 48 > 9)
  {
    goto LABEL_23;
  }

  v15 = 0;
  do
  {
    v15 = 10 * v15 + v12 - 48;
    v16 = *++v13;
    v12 = v16;
  }

  while (v16 - 48 < 0xA);
  if (!v15)
  {
LABEL_23:
    v20 = [NSString stringWithFormat:@"%@: array count is missing or zero", _NSMethodExceptionProem(self, a2)];
    goto LABEL_26;
  }

  if (v12 == 93)
  {
    v20 = [NSString stringWithFormat:@"%@: array type is missing", _NSMethodExceptionProem(self, a2)];
    goto LABEL_26;
  }

  [NSKeyedArchiver encodeArrayOfObjCType:"encodeArrayOfObjCType:count:at:" count:v13 at:?];
}

- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at
{
  if (_warnArchiverCompat == 1)
  {
    v10 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: warning: old archiving compatibility method called", v10);
  }

  v11 = atomic_load(&self->_flags);
  if (v11 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v12 = atomic_load(&self->_flags);
  if ((v12 & 2) != 0)
  {
    v16 = [NSString stringWithFormat:@"%@: archive already finished, %@", _NSMethodExceptionProem(self, a2), @"cannot encode anything more"];
    v17 = MEMORY[0x1E695DF30];
    v18 = @"NSInvalidArchiveOperationException";
    goto LABEL_19;
  }

  if (!type || !at)
  {
    v20 = _NSMethodExceptionProem(self, a2);
    v19 = @"%@: null type or address pointer";
LABEL_17:
    type = [NSString stringWithFormat:v19, v20, v21];
    goto LABEL_18;
  }

  if (!count)
  {
    v20 = _NSMethodExceptionProem(self, a2);
    v19 = @"%@: count is zero";
    goto LABEL_17;
  }

  v13 = *type;
  if (v13 == 40 || v13 == 123 || v13 == 91)
  {
    type = [NSString stringWithFormat:@"%@: unsupported type %s for array encoding", _NSMethodExceptionProem(self, a2), type];
LABEL_18:
    v16 = type;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
LABEL_19:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v16 userInfo:0]);
  }

  v14 = [objc_allocWithZone(_NSKeyedCoderOldStyleArray) initWithObjCType:*type count:count at:at];
  [(NSKeyedArchiver *)self encodeObject:v14];
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

- (void)setRequiresSecureCoding:(BOOL)requiresSecureCoding
{
  v3 = atomic_load(&self->_flags);
  if (v3 != self->_pac_signature)
  {
    __NSPoisoned();
  }

  v4 = atomic_load(&self->_flags);
  p_flags = &self->_flags;
  v6 = v4 & 0xFFFFFFFFFFFFFFFBLL;
  v7 = 4;
  if (!requiresSecureCoding)
  {
    v7 = 0;
  }

  atomic_store(v6 | v7, p_flags);
  v8 = atomic_load(p_flags);
  self->_pac_signature = v8;
}

@end