@interface NSUnarchiver
+ (NSString)classNameDecodedForArchiveClassName:(NSString *)inArchiveName;
+ (id)unarchiveObjectWithData:(NSData *)data;
+ (id)unarchiveObjectWithFile:(NSString *)path;
+ (void)decodeClassName:(NSString *)inArchiveName asClassName:(NSString *)trueName;
+ (void)initialize;
- (NSString)classNameDecodedForArchiveClassName:(NSString *)inArchiveName;
- (NSUnarchiver)initForReadingWithData:(NSData *)data;
- (id)decodeDataObject;
- (id)decodeObject;
- (int64_t)versionForClassName:(id)name;
- (void)_setAllowedClasses:(id)classes;
- (void)dealloc;
- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at;
- (void)decodeBytesWithReturnedLength:(unint64_t *)length;
- (void)decodeClassName:(NSString *)inArchiveName asClassName:(NSString *)trueName;
- (void)decodeValueOfObjCType:(const char *)type at:(void *)at;
- (void)decodeValuesOfObjCTypes:(const char *)types;
- (void)replaceObject:(id)object withObject:(id)newObject;
@end

@implementation NSUnarchiver

+ (void)initialize
{
  if (NSUnarchiver == self)
  {
    [NSUnarchiver decodeClassName:@"NSAbsoluteURL" asClassName:@"NSURL"];

    [NSUnarchiver decodeClassName:@"NSLocalTimeZone" asClassName:@"__NSLocalTimeZone"];
  }
}

- (id)decodeDataObject
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(NSCoder *)self decodeValueOfObjCType:"i" at:&v6 size:4];
  if (v6 < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSArchiverArchiveInconsistency" reason:@"attempt to decode NSData bytes with a negative byte count" userInfo:0]);
  }

  v3 = [MEMORY[0x1E695DF88] allocWithZone:self->objectZone];
  v4 = [v3 initWithLength:v6];
  -[NSUnarchiver decodeArrayOfObjCType:count:at:](self, "decodeArrayOfObjCType:count:at:", "c", v6, [v4 mutableBytes]);
  return v4;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  datax = self->datax;
  if (!*datax || (CFRelease(*datax), (datax = self->datax) != 0))
  {
    free(datax);
  }

  pointerTable = self->pointerTable;
  if (pointerTable)
  {
    CFRelease(pointerTable);
  }

  stringTable = self->stringTable;
  if (stringTable)
  {
    if (*stringTable)
    {
      v6 = 0;
      do
      {
        free(*(*(stringTable + 3) + 8 * v6++));
      }

      while (v6 < *stringTable);
    }

    free(*(stringTable + 3));
    free(stringTable);
  }

  classVersions = self->classVersions;
  if (classVersions)
  {
  }

  allUnarchivedObjects = self->allUnarchivedObjects;
  if (allUnarchivedObjects)
  {
    v9 = *allUnarchivedObjects;
    v10 = allUnarchivedObjects[2];
    if (*allUnarchivedObjects)
    {
      do
      {
        v11 = v9 - 1;

        v9 = v11;
      }

      while (v11);
    }

    free(v10);
    free(self->allUnarchivedObjects);
  }

  v12.receiver = self;
  v12.super_class = NSUnarchiver;
  [(NSUnarchiver *)&v12 dealloc];
}

- (id)decodeObject
{
  if (self->streamerVersion >= 4)
  {
    v3 = _decodeReusedCStringUsingTable(self->datax, self->stringTable, &self->cursor, self->swap != 0);
    checkExpected(v3, "@");
  }

  return _decodeObject_old(self);
}

- (NSUnarchiver)initForReadingWithData:(NSData *)data
{
  selfCopy = self;
  if (!data)
  {

    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v28 = @"*** -initForReadingWithData: nil argument";
LABEL_31:
    objc_exception_throw([v26 exceptionWithName:v27 reason:v28 userInfo:0]);
  }

  v5 = malloc_type_malloc(0x18uLL, 0x1070040B3A6EEE0uLL);
  selfCopy->datax = v5;
  if (!v5)
  {
LABEL_29:
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695DA18];
    v28 = @"*** memory allocation failed";
    goto LABEL_31;
  }

  v6 = v5;
  *v5 = CFRetain(data);
  v6[1] = CFDataGetBytePtr(data);
  Length = CFDataGetLength(data);
  v6[2] = Length;
  if (Length < 13)
  {
    goto LABEL_18;
  }

  v8 = v6[1];
  if (*(v8 + 1) != 11)
  {
    goto LABEL_18;
  }

  if (*(v8 + 2) != 0x7274736465707974 || *(v8 + 5) != 0x6D61657274736465)
  {
    v10 = *(v8 + 2);
    v11 = *(v8 + 5);
    if (v10 != 0x79746D6165727473 || v11 != 0x64657079746D6165)
    {
      goto LABEL_18;
    }
  }

  v13 = _decodeCharAtCursor(*(selfCopy->datax + 1), *(selfCopy->datax + 2), &selfCopy->cursor);
  selfCopy->streamerVersion = v13;
  if ((v13 - 5) < 0xFEu)
  {
    goto LABEL_18;
  }

  v14 = _decodeCStringAtCursor(selfCopy->datax, &selfCopy->cursor, selfCopy->swap != 0);
  if (!strcmp(v14, "typedstream"))
  {
    v16 = 1;
  }

  else
  {
    if (strcmp(v14, "streamtyped"))
    {
      free(v14);
LABEL_18:

      return 0;
    }

    v16 = 0;
  }

  selfCopy->swap = v16;
  free(v14);
  datax = selfCopy->datax;
  v18 = selfCopy->swap != 0;
  v19 = _decodeCharAtCursor(*(datax + 8), *(datax + 16), &selfCopy->cursor);
  selfCopy->systemVersion = _decodeIntStartingWithChar(datax, v19, &selfCopy->cursor, v18);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &_NSUnarchiverCreatePointerTable__NSUnarchiverPointerTableValueCallbacks);
  selfCopy->pointerTable = Mutable;
  if (!Mutable)
  {
    goto LABEL_28;
  }

  v21 = malloc_type_malloc(0x20uLL, 0x108004019856BD9uLL);
  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = v21;
  *v21 = xmmword_1813059B0;
  v21[2] = 100;
  v23 = malloc_type_malloc(0x320uLL, 0x10040436913F5uLL);
  v22[3] = v23;
  if (!v23)
  {
    goto LABEL_29;
  }

  selfCopy->stringTable = v22;
  v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  selfCopy->classVersions = v24;
  if (!v24 || (selfCopy->objectZone = 0, selfCopy->lastLabel = -111, selfCopy->reserved = 0, v25 = malloc_type_malloc(0x18uLL, 0x108004098BBCF0FuLL), (selfCopy->allUnarchivedObjects = v25) == 0) || (*v25 = xmmword_1813059C0, (*(selfCopy->allUnarchivedObjects + 2) = NSAllocateObjectArray(0x200uLL)) == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  return selfCopy;
}

- (void)replaceObject:(id)object withObject:(id)newObject
{
  v50[129] = *MEMORY[0x1E69E9840];
  if (object == newObject)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](self);
  MEMORY[0x1EEE9AC00](v7);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  Count = CFDictionaryGetCount(*(v8 + 48));
  if (!Count)
  {
    return;
  }

  v10 = Count;
  if (Count >> 60)
  {
    count = [NSString stringWithFormat:@"*** value %lu too large (may have wrapped)", Count];
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D920];
    goto LABEL_20;
  }

  if (Count >= 0x81)
  {
    v11 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
    v12 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
  }

  else
  {
    v11 = v50;
    v12 = &v18;
  }

  if (!v11 || !v12)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695DA18];
    count = @"*** memory allocation failed";
LABEL_20:
    objc_exception_throw([v16 exceptionWithName:v17 reason:count userInfo:{0, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1)}]);
  }

  CFDictionaryGetKeysAndValues(self->pointerTable, v11, v12);
  for (i = 0; i != v10; ++i)
  {
    v14 = v12[i];
    if (*v14 == object)
    {
      *v14 = newObject;
      v14[8] = 2;
    }
  }

  if (v11 != v50)
  {
    free(v11);
  }

  if (v12 != &v18)
  {
    free(v12);
  }
}

- (void)_setAllowedClasses:(id)classes
{
  reserved = self->reserved;
  if (reserved != classes)
  {

    self->reserved = [classes copy];
  }
}

- (int64_t)versionForClassName:(id)name
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (name)
  {
    classVersions = self->classVersions;
    if (classVersions)
    {
      v6[0] = 0;
      if (CFDictionaryGetValueIfPresent(classVersions, name, v6))
      {
        return v6[0];
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return result;
}

- (void)decodeValueOfObjCType:(const char *)type at:(void *)at
{
  v7 = _decodeReusedCStringUsingTable(self->datax, self->stringTable, &self->cursor, self->swap != 0);
  checkExpected(v7, type);
  v8 = *_decodeValueOfObjCType(self, type, at);
  if (v8)
  {
    typeDescriptorError(v8, type, "excess characters in type descriptor");
  }
}

- (void)decodeValuesOfObjCTypes:(const char *)types
{
  v5 = _decodeReusedCStringUsingTable(self->datax, self->stringTable, &self->cursor, self->swap != 0);
  checkExpected(v5, types);
  for (i = &v8; *types; types = _decodeValueOfObjCType(self, types, *v6))
  {
    v6 = i++;
  }
}

- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v9 = strlen(type);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sizep - ((v10 + 30) & 0xFFFFFFFFFFFFFFF0);
  snprintf(v11, v10 + 15, "[%lu%s]", count, type);
  v12 = _decodeReusedCStringUsingTable(self->datax, self->stringTable, &self->cursor, self->swap != 0);
  checkExpected(v12, v11);
  if (*type == 99 && (v13 = type + 1, !type[1]))
  {
    _deserializeBytes(at, *(self->datax + 1), *(self->datax + 2), &self->cursor, count);
  }

  else
  {
    sizep[0] = 0;
    v14 = strlen(type);
    MEMORY[0x1EEE9AC00](v14);
    v16 = sizep - ((v15 + 18) & 0xFFFFFFFFFFFFFFF0);
    typeCopy3 = type;
    if (*type)
    {
      typeCopy3 = type;
      if (*type != 123)
      {
        typeCopy3 = type;
        if (type[1])
        {
          strlcpy(sizep - ((v15 + 18) & 0xFFFFFFFFFFFFFFF0), "{", v14 + 3);
          strlcat(v16, type, v14 + 3);
          strlcat(v16, "}", v14 + 3);
          typeCopy3 = v16;
        }
      }
    }

    v13 = NSGetSizeAndAlignment(typeCopy3, sizep, 0);
    if (count)
    {
      v18 = 0;
      do
      {
        if (v18 > 0x7FFFFFFFFFFFFFFFLL / sizep[0])
        {
          v19 = [NSString stringWithFormat:@"*** value %lu too large (may have wrapped)", v18];
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0]);
        }

        _decodeValueOfObjCType(self, typeCopy3, (at + sizep[0] * v18++));
      }

      while (count != v18);
    }
  }

  if (*v13)
  {
    typeDescriptorError(*v13, type, "excess characters in type descriptor");
  }
}

- (void)decodeBytesWithReturnedLength:(unint64_t *)length
{
  if (self->streamerVersion > 3)
  {
    v5 = _decodeReusedCStringUsingTable(self->datax, self->stringTable, &self->cursor, self->swap != 0);
    checkExpected(v5, "+");
  }

  datax = self->datax;
  v7 = self->swap != 0;
  v8 = _decodeCharAtCursor(datax[1], datax[2], &self->cursor);
  v9 = _decodeIntStartingWithChar(datax, v8, &self->cursor, v7);
  v10 = v9;
  *length = v9;
  if (v9 < 0 || ((v11 = self->datax, v12 = v11[1], cursor = self->cursor, !__CFADD__(cursor, v12)) ? (v14 = 0) : (v14 = 1), cursor == 0x8000000000000000 || ((cursor > 0) & v14) != 0 || (v15 = v11[2], cursor < 0) && v12 < -cursor || !v15 || ((result = (cursor + v12), -v15 < v12) ? (v17 = v15 == 1) : (v17 = 1), (v18 = v15 - 1 + v12, v17) ? (v19 = result >= v12) : (v19 = 0), v19 ? (v20 = v18 >= result) : (v20 = 0), !v20 || v10 && (v10 != 1 && result > -v10 || ((v21 = result + v10 - 1, v21 >= v12) ? (v22 = v18 >= v21) : (v22 = 0), !v22)))))
  {
    v23 = [NSString stringWithFormat:@"*** End of archive encountered prematurely at %ld", self->cursor];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSArchiverArchiveInconsistency" reason:v23 userInfo:0]);
  }

  self->cursor = cursor + v10;
  return result;
}

+ (id)unarchiveObjectWithData:(NSData *)data
{
  v3 = [objc_allocWithZone(self) initForReadingWithData:data];
  decodeObject = [v3 decodeObject];
  if (([v3 isAtEnd] & 1) == 0 && decodeObject)
  {
    NSLog(@"*** +[NSUnarchiver unarchiveObjectWithData:]: extra data discarded");
  }

  v5 = decodeObject;

  return decodeObject;
}

+ (id)unarchiveObjectWithFile:(NSString *)path
{
  result = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path];
  if (result)
  {

    return [self unarchiveObjectWithData:result];
  }

  return result;
}

+ (void)decodeClassName:(NSString *)inArchiveName asClassName:(NSString *)trueName
{
  Mutable = decodingMap;
  if (!decodingMap)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    decodingMap = Mutable;
    if (!Mutable)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** memory allocation failed" userInfo:0]);
    }
  }

  CFDictionarySetValue(Mutable, inArchiveName, trueName);
}

- (void)decodeClassName:(NSString *)inArchiveName asClassName:(NSString *)trueName
{
  map = self->map;
  if (!map)
  {
    map = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    self->map = map;
    if (!map)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** memory allocation failed" userInfo:0]);
    }
  }

  CFDictionarySetValue(map, inArchiveName, trueName);
}

+ (NSString)classNameDecodedForArchiveClassName:(NSString *)inArchiveName
{
  if (!inArchiveName)
  {
    return 0;
  }

  if (!decodingMap || (result = CFDictionaryGetValue(decodingMap, inArchiveName)) == 0)
  {
    v5 = [(NSString *)inArchiveName copyWithZone:0];

    return v5;
  }

  return result;
}

- (NSString)classNameDecodedForArchiveClassName:(NSString *)inArchiveName
{
  if (!inArchiveName)
  {
    return 0;
  }

  map = self->map;
  if (!map || (result = CFDictionaryGetValue(map, inArchiveName)) == 0)
  {
    v6 = [(NSString *)inArchiveName copyWithZone:0];

    return v6;
  }

  return result;
}

@end