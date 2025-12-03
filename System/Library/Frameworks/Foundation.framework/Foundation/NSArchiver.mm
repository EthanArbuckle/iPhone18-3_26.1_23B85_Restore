@interface NSArchiver
+ (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path;
+ (NSData)archivedDataWithRootObject:(id)rootObject;
+ (id)classNameEncodedForTrueClassName:(id)name;
+ (void)encodeClassName:(id)name intoClassName:(id)className;
+ (void)initialize;
- (NSArchiver)initForWritingWithMutableData:(NSMutableData *)mdata;
- (NSString)classNameEncodedForTrueClassName:(NSString *)trueName;
- (int64_t)versionForClassName:(id)name;
- (void)dealloc;
- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at;
- (void)encodeBytes:(const void *)bytes length:(unint64_t)length;
- (void)encodeClassName:(NSString *)trueName intoClassName:(NSString *)inArchiveName;
- (void)encodeConditionalObject:(id)object;
- (void)encodeDataObject:(id)object;
- (void)encodeObject:(id)object;
- (void)encodeRootObject:(id)rootObject;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
- (void)encodeValuesOfObjCTypes:(const char *)types;
- (void)replaceObject:(id)object withObject:(id)newObject;
@end

@implementation NSArchiver

+ (void)initialize
{
  if (NSArchiver == self)
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

+ (void)encodeClassName:(id)name intoClassName:(id)className
{
  Mutable = encodingMap;
  if (!encodingMap)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    encodingMap = Mutable;
  }

  CFDictionarySetValue(Mutable, name, className);
}

+ (id)classNameEncodedForTrueClassName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if (!encodingMap || (result = CFDictionaryGetValue(encodingMap, name)) == 0)
  {
    v5 = [name copyWithZone:0];

    return v5;
  }

  return result;
}

- (int64_t)versionForClassName:(id)name
{
  if (!name)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = NSClassFromString(name);
  if (v3)
  {
    return class_getVersion(v3);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, type, self->stringTable);
  }

  v8 = *_encodeValueOfObjCType(self, type, at);
  if (v8)
  {
    typeDescriptorError(v8, type, "excess characters in type descriptor");
  }
}

- (void)encodeValuesOfObjCTypes:(const char *)types
{
  typesCopy = types;
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, types, self->stringTable);
  }

  for (i = &v8; *typesCopy; typesCopy = _encodeValueOfObjCType(self, typesCopy, *v6))
  {
    v6 = i++;
  }
}

- (void)encodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(const void *)at
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v9 = strlen(type);
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

    snprintf(v11, v10, "[%lu%s]", count, type);
    _encodeOrReuseCString(self->mdata, v11, self->stringTable);
    if (v10 >= 0x201)
    {
      free(v11);
    }
  }

  v12 = *type;
  if (v12 == 99 && (v13 = type + 1, !type[1]))
  {
    [self->mdata appendBytes:at length:count];
  }

  else
  {
    sizep[0] = 0;
    v14 = strlen(type);
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
      v12 = *type;
    }

    typeCopy3 = type;
    if (v12)
    {
      typeCopy3 = type;
      if (v12 != 123)
      {
        typeCopy3 = type;
        if (type[1])
        {
          strlcpy(v16, "{", v15);
          strlcat(v16, type, v15);
          strlcat(v16, "}", v15);
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
        _encodeValueOfObjCType(self, typeCopy3, (at + sizep[0] * v18++));
      }

      while (count != v18);
    }

    if (v15 >= 0x201)
    {
      free(v16);
    }
  }

  if (*v13)
  {
    typeDescriptorError(*v13, type, "excess characters in type descriptor");
  }
}

- (void)encodeBytes:(const void *)bytes length:(unint64_t)length
{
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, "+", self->stringTable);
    _encodeInt(self->mdata, length);
    v8 = self->mdata;

    [v8 appendBytes:bytes length:length];
  }
}

- (void)encodeObject:(id)object
{
  mdata = self->mdata;
  if (mdata)
  {
    _encodeOrReuseCString(mdata, "@", self->stringTable);
  }

  _encodeObject_old(self, object);
}

- (void)encodeDataObject:(id)object
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [object length];
  if (v6 >> 31)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: data length (%qd) makes data too large to fit in non-keyed archive", _NSMethodExceptionProem(self, a2), v6), 0}];
    objc_exception_throw(v7);
  }

  v8 = v6;
  [(NSArchiver *)self encodeValueOfObjCType:"i" at:&v8];
  -[NSArchiver encodeArrayOfObjCType:count:at:](self, "encodeArrayOfObjCType:count:at:", "c", v8, [object bytes]);
}

- (void)encodeRootObject:(id)rootObject
{
  mdata = self->mdata;
  if (!mdata)
  {
    rootObject = [NSString stringWithFormat:@"*** -encodeRootObject: already done for %p", rootObject];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:rootObject userInfo:0]);
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
      object = [NSString stringWithFormat:@"*** encodeConditionalObject: -encodeRootObject: has not been previously done for %p", object];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:object userInfo:0]);
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
  data = [MEMORY[0x1E695DF88] data];
  v6 = _CFExecutableLinkedOnOrAfter();
  if (v6)
  {
    _CFAutoreleasePoolPush();
  }

  [objc_msgSend(objc_allocWithZone(self) initForWritingWithMutableData:{data), "encodeRootObject:", rootObject}];
  if (v6)
  {
    _CFAutoreleasePoolPop();
  }

  return data;
}

+ (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path
{
  v5 = [self archivedDataWithRootObject:rootObject];

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