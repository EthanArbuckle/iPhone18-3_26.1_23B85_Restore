@interface DirNameCache
- (DirNameCache)initWithDirEntrySize:(unsigned int)size;
- (id)insertDirEntryNamed:(char *)named ofLength:(unint64_t)length offsetInDir:(unint64_t)dir;
- (id)insertDirEntryNamedUtf16:(unistr255 *)utf16 offsetInDir:(unint64_t)dir;
- (void)lookupDirEntryNamed:(char *)named ofLength:(unint64_t)length replyHandler:(id)handler;
- (void)lookupDirEntryNamedUtf16:(unistr255 *)utf16 replyHandler:(id)handler;
- (void)removeDirEntryNamed:(char *)named ofLength:(unint64_t)length offsetInDir:(unint64_t)dir;
- (void)removeDirEntryNamedUtf16:(unistr255 *)utf16 offsetInDir:(unint64_t)dir;
@end

@implementation DirNameCache

- (DirNameCache)initWithDirEntrySize:(unsigned int)size
{
  v8.receiver = self;
  v8.super_class = DirNameCache;
  v4 = [(DirNameCache *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:64];
    nameCacheBuckets = v4->_nameCacheBuckets;
    v4->_nameCacheBuckets = v5;

    v4->_dirEntrySize = size;
  }

  return v4;
}

- (id)insertDirEntryNamed:(char *)named ofLength:(unint64_t)length offsetInDir:(unint64_t)dir
{
  memset(v9, 0, sizeof(v9));
  if (CONV_UTF8ToUnistr255(named, length, v9, 32))
  {
    fs_errorForPOSIXError();
  }

  else
  {
    [(DirNameCache *)self insertDirEntryNamedUtf16:v9 offsetInDir:dir];
  }
  v7 = ;

  return v7;
}

- (void)removeDirEntryNamed:(char *)named ofLength:(unint64_t)length offsetInDir:(unint64_t)dir
{
  memset(v7, 0, sizeof(v7));
  if (!CONV_UTF8ToUnistr255(named, length, v7, 32))
  {
    [(DirNameCache *)self removeDirEntryNamedUtf16:v7 offsetInDir:dir];
  }
}

- (void)lookupDirEntryNamed:(char *)named ofLength:(unint64_t)length replyHandler:(id)handler
{
  handlerCopy = handler;
  memset(v10, 0, sizeof(v10));
  if (CONV_UTF8ToUnistr255(named, length, v10, 32))
  {
    v9 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    [(DirNameCache *)self lookupDirEntryNamedUtf16:v10 replyHandler:handlerCopy];
  }
}

- (id)insertDirEntryNamedUtf16:(unistr255 *)utf16 offsetInDir:(unint64_t)dir
{
  p_numHashValues = &self->_numHashValues;
  if (self->_numHashValues == 50000)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002E3C4(p_numHashValues);
    }

    v5 = 0;
    v6 = 0;
  }

  else
  {
    v9 = dir / self->_dirEntrySize;
    CONV_Unistr255ToLowerCase(utf16);
    v10 = [(DirNameCache *)self hash:utf16];
    snprintf(__str, 5uLL, "%u", v10 & 0x3F);
    v5 = [[NSString alloc] initWithUTF8String:__str];
    v11 = [(NSMutableDictionary *)self->_nameCacheBuckets objectForKey:v5];
    if (v11)
    {
      v6 = v11;
      if ([(NameCacheBucket *)v11 currCount])
      {
        v12 = 0;
        v13 = 4;
        while (*(&v6->elements->var0 + v13) != v9)
        {
          ++v12;
          v13 += 8;
          if (v12 >= [(NameCacheBucket *)v6 currCount])
          {
            goto LABEL_12;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_10002E2A8(v9);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = objc_alloc_init(NameCacheBucket);
      [(NSMutableDictionary *)self->_nameCacheBuckets setObject:v6 forKey:v5];
      ++self->_numHashBuckets;
    }

LABEL_12:
    if (![(NameCacheBucket *)v6 addEntry:v10 | (v9 << 32)])
    {
      v14 = 0;
      ++*p_numHashValues;
      goto LABEL_20;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E33C();
    }
  }

LABEL_19:
  v14 = fs_errorForPOSIXError();
LABEL_20:

  return v14;
}

- (void)removeDirEntryNamedUtf16:(unistr255 *)utf16 offsetInDir:(unint64_t)dir
{
  if (self->_numHashValues)
  {
    dirEntrySize = self->_dirEntrySize;
    CONV_Unistr255ToLowerCase(utf16);
    snprintf(__str, 5uLL, "%u", [(DirNameCache *)self hash:utf16]& 0x3F);
    v8 = [[NSString alloc] initWithUTF8String:__str];
    v9 = [(NSMutableDictionary *)self->_nameCacheBuckets objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      if ([v9 removeEntryAtIndex:dir / dirEntrySize])
      {
        --self->_numHashValues;
      }

      if (![v10 currCount])
      {
        free(v10[1]);
        v10[1] = 0;
        [(NSMutableDictionary *)self->_nameCacheBuckets removeObjectForKey:v8];
        --self->_numHashBuckets;
      }
    }
  }
}

- (void)lookupDirEntryNamedUtf16:(unistr255 *)utf16 replyHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_numHashValues && self->_numHashBuckets)
  {
    CONV_Unistr255ToLowerCase(utf16);
    v7 = [(DirNameCache *)self hash:utf16];
    snprintf(__str, 5uLL, "%u", v7 & 0x3F);
    v8 = [[NSString alloc] initWithUTF8String:__str];
    v9 = [(NSMutableDictionary *)self->_nameCacheBuckets objectForKey:v8];
    v10 = v9;
    if (v9 && [v9 currCount])
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = v10[1];
        if (*(v13 + v11) == v7)
        {
          break;
        }

        ++v12;
        v11 += 8;
        if (v12 >= [v10 currCount])
        {
          goto LABEL_8;
        }
      }

      handlerCopy[2](handlerCopy, 0, self->_dirEntrySize * *(v13 + v11 + 4));
    }

    else
    {
LABEL_8:
      v14 = fs_errorForPOSIXError();
      (handlerCopy)[2](handlerCopy, v14, 0);
    }
  }

  else
  {
    v15 = fs_errorForPOSIXError();
    (handlerCopy)[2](handlerCopy, v15, 0);
  }
}

@end