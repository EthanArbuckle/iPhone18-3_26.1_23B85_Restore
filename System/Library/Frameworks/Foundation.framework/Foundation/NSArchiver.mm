@interface NSArchiver
+ (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path;
+ (NSData)archivedDataWithRootObject:(id)rootObject;
+ (id)classNameEncodedForTrueClassName:(id)a3;
+ (void)encodeClassName:(id)a3 intoClassName:(id)a4;
+ (void)initialize;
- (NSArchiver)initForWritingWithMutableData:(NSMutableData *)mdata;
- (NSString)classNameEncodedForTrueClassName:(NSString *)trueName;
- (int64_t)versionForClassName:(id)a3;
- (void)dealloc;
- (void)encodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(const void *)a5;
- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)encodeClassName:(NSString *)trueName intoClassName:(NSString *)inArchiveName;
- (void)encodeConditionalObject:(id)object;
- (void)encodeDataObject:(id)a3;
- (void)encodeObject:(id)a3;
- (void)encodeRootObject:(id)rootObject;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
- (void)encodeValuesOfObjCTypes:(const char *)a3;
- (void)replaceObject:(id)object withObject:(id)newObject;
@end

@implementation NSArchiver

+ (void)initialize
{
  if (NSArchiver == a1)
  {
    [NSArchiver encodeClassName:@"__NSLocalTimeZone" intoClassName:@"NSLocalTimeZone"];

    [NSArchiver encodeClassName:@"__NSLocalTimeZoneI" intoClassName:@"NSLocalTimeZone"];
  }
}

- (NSArchiver)initForWritingWithMutableData:(NSMutableData *)mdata
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = *byte_1EEEF8AD0;
  if (!mdata)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** -initForWritingWithMutableData: nil argument" userInfo:{0, *&v8.version, *&v8.release, *&v8.equal}]);
  }

  self->mdata = mdata;
  v4 = *MEMORY[0x1E695E4A8];
  self->stringTable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &v8, 0);
  self->pointerTable = CFDictionaryCreateMutable(v4, 0, 0, 0);
  v5 = self->mdata;
  LOBYTE(v9) = 4;
  [v5 appendBytes:&v9 length:{1, *&v8.version, *&v8.release, *&v8.equal}];
  _encodeCString(self->mdata, "streamtyped");
  v6 = self->mdata;
  v9 = 1000;
  v10 = -127;
  [v6 appendBytes:&v10 length:1];
  [v6 appendBytes:&v9 length:2];
  return self;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];

  replacementTable = self->replacementTable;
  if (replacementTable)
  {
    CFRelease(replacementTable);
  }

  pointerTable = self->pointerTable;
  if (pointerTable)
  {
    CFRelease(pointerTable);
  }

  stringTable = self->stringTable;
  if (stringTable)
  {
    CFRelease(stringTable);
  }

  ids = self->ids;
  if (ids)
  {
    CFRelease(ids);
  }

  map = self->map;
  if (map)
  {
    CFRelease(map);
  }

  v8.receiver = self;
  v8.super_class = NSArchiver;
  [(NSArchiver *)&v8 dealloc];
}

- (void)replaceObject:(id)object withObject:(id)newObject
{
  replacementTable = self->replacementTable;
  if (!replacementTable)
  {
    replacementTable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
    self->replacementTable = replacementTable;
  }

  v8 = [newObject replacementObjectForArchiver:self];

  CFDictionarySetValue(replacementTable, object, v8);
}

+ (void)encodeClassName:(id)a3 intoClassName:(id)a4
{
  Mutable = encodingMap;
  if (!encodingMap)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    encodingMap = Mutable;
  }

  CFDictionarySetValue(Mutable, a3, a4);
}

+ (id)classNameEncodedForTrueClassName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (!encodingMap || (result = CFDictionaryGetValue(encodingMap, a3)) == 0)
  {
    v5 = [a3 copyWithZone:0];

    return v5;
  }

  return result;
}

- (int64_t)versionForClassName:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = NSClassFromString(a3);
  if (v3)
  {
    return class_getVersion(v3);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, a3, self->stringTable);
  }

  v8 = *_encodeValueOfObjCType(self, a3, a4);
  if (v8)
  {
    typeDescriptorError(v8, a3, "excess characters in type descriptor");
  }
}

- (void)encodeValuesOfObjCTypes:(const char *)a3
{
  v3 = a3;
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, a3, self->stringTable);
  }

  for (i = &v8; *v3; v3 = _encodeValueOfObjCType(self, v3, *v6))
  {
    v6 = i++;
  }
}

- (void)encodeArrayOfObjCType:(const char *)a3 count:(unint64_t)a4 at:(const void *)a5
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v9 = strlen(a3);
  if (self->mdata)
  {
    v10 = v9 + 15;
    if (v9 + 15 < 0x201)
    {
      if (v9 == -15)
      {
        v11 = 0;
      }

      else
      {
        v11 = sizep - ((v9 + 30) & 0xFFFFFFFFFFFFFFF0);
        bzero(v11, v10);
      }
    }

    else
    {
      v11 = malloc_type_malloc(v9 + 15, 0x100004077774924uLL);
    }

    snprintf(v11, v10, "[%lu%s]", a4, a3);
    _encodeOrReuseCString(self->mdata, v11, self->stringTable);
    if (v10 >= 0x201)
    {
      free(v11);
    }
  }

  v12 = *a3;
  if (v12 == 99 && (v13 = a3 + 1, !a3[1]))
  {
    [self->mdata appendBytes:a5 length:a4];
  }

  else
  {
    sizep[0] = 0;
    v14 = strlen(a3);
    v15 = v14 + 3;
    if (v14 + 3 < 0x201)
    {
      if (v14 == -3)
      {
        v16 = 0;
      }

      else
      {
        v16 = sizep - ((v14 + 18) & 0xFFFFFFFFFFFFFFF0);
        bzero(v16, v15);
      }
    }

    else
    {
      v16 = malloc_type_malloc(v14 + 3, 0x100004077774924uLL);
      v12 = *a3;
    }

    v17 = a3;
    if (v12)
    {
      v17 = a3;
      if (v12 != 123)
      {
        v17 = a3;
        if (a3[1])
        {
          strlcpy(v16, "{", v15);
          strlcat(v16, a3, v15);
          strlcat(v16, "}", v15);
          v17 = v16;
        }
      }
    }

    v13 = NSGetSizeAndAlignment(v17, sizep, 0);
    if (a4)
    {
      v18 = 0;
      do
      {
        _encodeValueOfObjCType(self, v17, (a5 + sizep[0] * v18++));
      }

      while (a4 != v18);
    }

    if (v15 >= 0x201)
    {
      free(v16);
    }
  }

  if (*v13)
  {
    typeDescriptorError(*v13, a3, "excess characters in type descriptor");
  }
}

- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4
{
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, "+", self->stringTable);
    _encodeInt(self->mdata, a4);
    v8 = self->mdata;

    [v8 appendBytes:a3 length:a4];
  }
}

- (void)encodeObject:(id)a3
{
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, "@", self->stringTable);
  }

  _encodeObject_old(self, a3);
}

- (void)encodeDataObject:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [a3 length];
  if (v6 >> 31)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: data length (%qd) makes data too large to fit in non-keyed archive", _NSMethodExceptionProem(self, a2), v6), 0}];
    objc_exception_throw(v7);
  }

  v8 = v6;
  [(NSArchiver *)self encodeValueOfObjCType:"i" at:&v8];
  -[NSArchiver encodeArrayOfObjCType:count:at:](self, "encodeArrayOfObjCType:count:at:", "c", v8, [a3 bytes]);
}

- (void)encodeRootObject:(id)rootObject
{
  mdata = self->mdata;
  if (!mdata)
  {
    v7 = [NSString stringWithFormat:@"*** -encodeRootObject: already done for %p", rootObject];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  if (!self->ids)
  {
    self->ids = CFSetCreateMutable(*MEMORY[0x1E695E4A8], 0, 0);
    mdata = self->mdata;
  }

  v6 = mdata;
  self->mdata = 0;
  [(NSArchiver *)self encodeObject:rootObject];
  self->mdata = v6;

  [(NSArchiver *)self encodeObject:rootObject];
}

- (void)encodeConditionalObject:(id)object
{
  if (self->mdata)
  {
    if (!self->ids)
    {
      v7 = [NSString stringWithFormat:@"*** encodeConditionalObject: -encodeRootObject: has not been previously done for %p", object];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
    }

    v5 = _replacementObjectForObject(self, object);
    if (v5)
    {
      if (CFSetGetValue(self->ids, v5))
      {
        v6 = object;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    [(NSArchiver *)self encodeObject:v6];
  }
}

+ (NSData)archivedDataWithRootObject:(id)rootObject
{
  v5 = [MEMORY[0x1E695DF88] data];
  v6 = _CFExecutableLinkedOnOrAfter();
  if (v6)
  {
    _CFAutoreleasePoolPush();
  }

  [objc_msgSend(objc_allocWithZone(a1) initForWritingWithMutableData:{v5), "encodeRootObject:", rootObject}];
  if (v6)
  {
    _CFAutoreleasePoolPop();
  }

  return v5;
}

+ (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path
{
  v5 = [a1 archivedDataWithRootObject:rootObject];

  return [v5 writeToFile:path atomically:1];
}

- (void)encodeClassName:(NSString *)trueName intoClassName:(NSString *)inArchiveName
{
  map = self->map;
  if (!map)
  {
    map = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    self->map = map;
  }

  CFDictionarySetValue(map, trueName, inArchiveName);
}

- (NSString)classNameEncodedForTrueClassName:(NSString *)trueName
{
  if (!trueName)
  {
    return 0;
  }

  map = self->map;
  if (!map || (result = CFDictionaryGetValue(map, trueName)) == 0)
  {
    v6 = [(NSString *)trueName copyWithZone:0];

    return v6;
  }

  return result;
}

@end