@interface _PFEvanescentData
- (BOOL)isEqual:(id)equal;
- (_PFEvanescentData)initWithPath:(id)path;
- (_PFEvanescentData)initWithURL:(id)l;
- (const)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)subdataWithRange:(_NSRange)range;
- (id)url;
- (uint64_t)_destroyMapping;
- (uint64_t)_openMapping;
- (unint64_t)hash;
- (void)dealloc;
- (void)enumerateByteRangesUsingBlock:(id)block;
- (void)getBytes:(void *)bytes;
- (void)getBytes:(void *)bytes range:(_NSRange)range;
@end

@implementation _PFEvanescentData

- (_PFEvanescentData)initWithURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _PFEvanescentData;
  v4 = [(_PFEvanescentData *)&v21 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v4->_openfd = -1;
    memset(&v20, 0, sizeof(v20));
    v6 = [objc_msgSend(l "path")];
    v7 = stat(v6, &v20);
    v8 = __error();
    if (!v7)
    {
      v4->_length = v20.st_size;
      v4->_fileURL = l;
LABEL_10:
      [v5 drain];
      goto LABEL_11;
    }

    v9 = *v8;
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
          goto LABEL_12;
        }
      }

      else if (v13)
      {
LABEL_12:
        v18 = objc_opt_class();
        Name = class_getName(v18);
        *buf = 136315650;
        v23 = Name;
        v24 = 2080;
        v25 = v6;
        v26 = 1024;
        v27 = v9;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to initialize %s.  stat() failed on '%s' with errno %d\n", buf, 0x1Cu);
      }
    }

    v14 = objc_opt_class();
    v15 = class_getName(v14);
    _NSCoreDataLog_console(1, "Unable to initialize %s.  stat() failed on '%s' with errno %d", v15, v6, v9);
    objc_autoreleasePoolPop(v10);

    v4 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  [(_PFEvanescentData *)self _destroyMapping];

  v3.receiver = self;
  v3.super_class = _PFEvanescentData;
  [(_PFEvanescentData *)&v3 dealloc];
}

- (uint64_t)_destroyMapping
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      munmap(v2, *(v1 + 8));
      *(v1 + 32) = 0;
    }

    result = *(v1 + 24);
    if ((result & 0x80000000) == 0)
    {
      result = close(result);
      *(v1 + 24) = -1;
    }
  }

  return result;
}

- (_PFEvanescentData)initWithPath:(id)path
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];

  return [(_PFEvanescentData *)self initWithURL:v4];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  Name = class_getName(v5);
  v7 = [v4 stringWithFormat:@"NSData [%s] with address %p backed by file at '%@'", Name, self, -[_PFEvanescentData url](&self->super.super.isa)];
  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)url
{
  if (result)
  {
    v1 = result[2];

    return v1;
  }

  return result;
}

- (uint64_t)_openMapping
{
  if (result)
  {
    v1 = result;
    if (*(result + 32))
    {
LABEL_8:
      atomic_fetch_add_explicit((v1 + 40), 1u, memory_order_relaxed);
      return *(v1 + 32);
    }

    v2 = *(result + 24);
    if (v2 < 0)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v6 = open([objc_msgSend(*(v1 + 16) "path")], 0);
      if (v6 < 0)
      {
        v18 = *__error();
        [v5 drain];
        v19 = MEMORY[0x1E696ABC0];
        v9 = *MEMORY[0x1E696A798];
        v20 = MEMORY[0x1E695DF20];
        path = [*(v1 + 16) path];
        v22 = [v19 errorWithDomain:v9 code:v18 userInfo:{objc_msgSend(v20, "dictionaryWithObjectsAndKeys:", path, *MEMORY[0x1E696A368], 0)}];
        v23 = *MEMORY[0x1E695D930];
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:v22 forKey:@"NSCoreDataPrimaryError"];
        v15 = @"Could not open file.";
        v16 = v23;
        v17 = v18;
        goto LABEL_13;
      }

      *(v1 + 24) = v6;
      [v5 drain];
      if (*(v1 + 32))
      {
        goto LABEL_8;
      }

      v2 = *(v1 + 24);
    }

    v3 = mmap(0, *(v1 + 8), 1, 1, v2, 0);
    v4 = __error();
    if (v3)
    {
      *(v1 + 32) = v3;
      goto LABEL_8;
    }

    v7 = *v4;
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v10 = MEMORY[0x1E695DF20];
    path2 = [*(v1 + 16) path];
    v12 = [v8 errorWithDomain:v9 code:v7 userInfo:{objc_msgSend(v10, "dictionaryWithObjectsAndKeys:", path2, *MEMORY[0x1E696A368], 0)}];
    v13 = *MEMORY[0x1E695D930];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:@"NSCoreDataPrimaryError"];
    v15 = @"Could not map file.";
    v16 = v13;
    v17 = v7;
LABEL_13:
    v24 = [_NSCoreDataException exceptionWithName:v16 code:v17 reason:v15 userInfo:v14];
    [(_NSCoreDataException *)v24 _setDomain:v9];
    objc_exception_throw(v24);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [(_PFEvanescentData *)&self->super.super.isa url];
  v8 = *(equal + 2);

  return [v7 isEqual:v8];
}

- (unint64_t)hash
{
  v2 = [(_PFEvanescentData *)&self->super.super.isa url];

  return [v2 hash];
}

- (void)enumerateByteRangesUsingBlock:(id)block
{
  v6 = 0;
  _openMapping = [(_PFEvanescentData *)self _openMapping];
  if (_openMapping)
  {
    (*(block + 2))(block, _openMapping, 0, [(_PFEvanescentData *)self length], &v6);
  }

  if (self)
  {
    if (atomic_fetch_add_explicit(&self->_mapRefCount, 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      [(_PFEvanescentData *)self _destroyMapping];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  _openMapping = [(_PFEvanescentData *)self _openMapping];
  if (_openMapping)
  {
    _openMapping = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:_openMapping length:{-[_PFEvanescentData length](self, "length")}];
  }

  if (self && atomic_fetch_add_explicit(&self->_mapRefCount, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    [(_PFEvanescentData *)self _destroyMapping];
  }

  return _openMapping;
}

- (const)bytes
{
  v2 = [(_PFEvanescentData *)self copyWithZone:0];
  bytes = [v2 bytes];
  v4 = v2;
  return bytes;
}

- (void)getBytes:(void *)bytes
{
  v5 = [(_PFEvanescentData *)self length];

  [(_PFEvanescentData *)self getBytes:bytes length:v5];
}

- (void)getBytes:(void *)bytes range:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    _openMapping = [(_PFEvanescentData *)self _openMapping];
    if (_openMapping)
    {
      memmove(bytes, (_openMapping + location), length);
    }

    if (self && atomic_fetch_add_explicit(&self->_mapRefCount, 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {

      [(_PFEvanescentData *)self _destroyMapping];
    }
  }
}

- (id)subdataWithRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v7 = malloc_type_malloc(range.length, 0xA4157E12uLL);
    [(_PFEvanescentData *)self getBytes:v7 range:location, length];
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:length freeWhenDone:1];

    return v8;
  }

  else
  {
    v10 = MEMORY[0x1E695DEF0];

    return [v10 data];
  }
}

@end