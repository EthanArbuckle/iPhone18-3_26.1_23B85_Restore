@interface SIIndexer
+ (id)indexerWithPath:(id)a3 options:(unint64_t)a4;
+ (id)indexerWithPath:(id)a3 rootPath:(id)a4;
+ (id)indexerWithPath:(id)a3 rootPath:(id)a4 options:(unint64_t)a5;
+ (void)initialize;
+ (void)setLogLevel:(int)a3 forCategory:(char *)a4;
- (BOOL)openWithOptions:(unint64_t)a3;
- (NSDictionary)indexProperties;
- (NSDictionary)propertyMap;
- (NSDictionary)propertyNumMap;
- (SIIndexer)init;
- (_opaque_pthread_rwlock_t)queryTasksRdWrLock;
- (id)allQueryTasks;
- (id)getAttributes:(id)a3 forOid:(int64_t)a4;
- (id)getQueryTaskForID:(id)a3;
- (id)path:(int64_t)a3;
- (id)propertyName:(unint64_t)a3;
- (id)resultsForPommesUserQuery:(id)a3 withFields:(id)a4 maxCount:(int64_t)a5 languages:(id)a6 liftingRules:(id)a7 scope:(id)a8 pommesBundles:(id)a9 clientBundleID:(id)a10;
- (id)termIndex:(unint64_t)a3;
- (int64_t)oidForPath:(const char *)a3 allowCreate:(BOOL)a4;
- (unint64_t)oidForDocID:(unint64_t)a3;
- (unint64_t)termIndexCount;
- (unsigned)groupForDocID:(unint64_t)a3;
- (unsigned)relativeDocID:(unint64_t)a3;
- (void)_indexFinalize;
- (void)_reopen:(const char *)a3;
- (void)addRecords:(id)a3 forIDs:(unint64_t *)a4 completionHandler:(id)a5;
- (void)bulkSetCSAttributes:(id)a3 bundle:(id)a4;
- (void)close;
- (void)dealloc;
- (void)deleteFilesInDirectory:(int)a3;
- (void)deleteOID:(int64_t)a3;
- (void)fullMerge;
- (void)issueCommit;
- (void)iterateTermIndexes:(id)a3;
- (void)iterateTermIndexes:(int64_t)a3 block:(id)a4;
- (void)merge;
- (void)oidParents:(id)a3;
- (void)removeRecordsForIDs:(unint64_t *)a3 count:(unint64_t)a4 completionHandler:(id)a5;
- (void)rename:(const char *)a3 toPath:(const char *)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)setQueryTask:(id)a3 forID:(id)a4;
- (void)setQueryTasksRdWrLock:(_opaque_pthread_rwlock_t *)a3;
- (void)split;
- (void)updateRecords:(id)a3 forIDs:(unint64_t *)a4 completionHandler:(id)a5;
- (void)verify;
- (void)waitFor:(int)a3;
@end

@implementation SIIndexer

+ (void)setLogLevel:(int)a3 forCategory:(char *)a4
{
  if ((a3 + 3) > 8)
  {
    return;
  }

  if (!a4 || (v5 = *a4, !*a4))
  {
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    SISetLogging();
    goto LABEL_19;
  }

  if (!strcmp(a4, "general"))
  {
    goto LABEL_20;
  }

  if (!strcmp(a4, "query"))
  {
LABEL_19:
    SISetLogging();
LABEL_20:

    SISetLogging();
    return;
  }

  if (!strcmp(a4, "scheduler") || !strcmp(a4, "store") || !strcmp(a4, "fetch") || !strcmp(a4, "path") || !strcmp(a4, "sdb") || v5 == 99 && a4[1] == 105 && !a4[2] || !strcmp(a4, "state") || !strcmp(a4, "power") || !strcmp(a4, "qos"))
  {
    goto LABEL_20;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [SIIndexer setLogLevel:3 forCategory:0];
  }
}

+ (id)indexerWithPath:(id)a3 rootPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SIIndexer);
  [(SIIndexer *)v7 setPath:v6];

  [(SIIndexer *)v7 setRootPath:v5];

  return v7;
}

+ (id)indexerWithPath:(id)a3 rootPath:(id)a4 options:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(SIIndexer);
  [(SIIndexer *)v9 setPath:v8];

  [(SIIndexer *)v9 setRootPath:v7];
  [(SIIndexer *)v9 openWithOptions:a5];

  return v9;
}

+ (id)indexerWithPath:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(SIIndexer);
  [(SIIndexer *)v6 setPath:v5];

  [(SIIndexer *)v6 openWithOptions:a4];

  return v6;
}

- (SIIndexer)init
{
  v6.receiver = self;
  v6.super_class = SIIndexer;
  v2 = [(SIIndexer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    queryTasks = v2->_queryTasks;
    v2->_queryTasks = v3;

    pthread_rwlock_init(&v2->_queryTasksRdWrLock, 0);
  }

  return v2;
}

- (void)dealloc
{
  [(SIIndexer *)self close];
  pthread_rwlock_destroy(&self->_queryTasksRdWrLock);
  v3.receiver = self;
  v3.super_class = SIIndexer;
  [(SIIndexer *)&v3 dealloc];
}

- (void)deleteFilesInDirectory:(int)a3
{
  v4 = dup(a3);
  v5 = fdopendir(v4);
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v7 = readdir(v6);
      if (!v7)
      {
        break;
      }

      if (v7->d_type != 4)
      {
        unlinkat(a3, v7->d_name, 0);
      }
    }

    closedir(v6);
  }
}

- (BOOL)openWithOptions:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 0x30) == 0)
  {
    if (self->_readOnly)
    {
      v5 = a3 | 0x20;
    }

    else
    {
      v5 = a3;
    }

    if (self->_permissions)
    {
      v3 = v5 | 0x10;
    }

    else
    {
      v3 = v5;
    }
  }

  self->_readOnly = (v3 & 0x20) != 0;
  self->_permissions = (v3 & 0x10) != 0;
  if ((v3 & 0xF) != 0 || [(SIIndexer *)self isSpotlightIndex])
  {
LABEL_15:
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_16;
  }

  if ([(SIIndexer *)self isCoreSpotlight])
  {
    v3 |= 2u;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_37;
    }

LABEL_16:
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_38;
    }

LABEL_17:
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

  if ([(SIIndexer *)self isFSOnly])
  {
    v3 |= 4u;
    goto LABEL_15;
  }

  if ([(SIIndexer *)self isXcodeIndex])
  {
    v3 |= 8u;
  }

  if ((v3 & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_37:
  self->_persistentFileIDs = 1;
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_17;
  }

LABEL_38:
  self->_isHFS = 1;
  if ((v3 & 0x200) != 0)
  {
LABEL_39:
    self->_isAPFS = 1;
    if ((v3 & 4) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
LABEL_40:
    v14 = 0;
    self->_indexType = 3;
    return v14;
  }

LABEL_19:
  if ([(SIIndexer *)self isOpen])
  {
    return 0;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [(SIIndexer *)self path];
  v41 = 0;
  if (![v6 fileExistsAtPath:v7 isDirectory:&v41])
  {
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if ((v3 & 0x40) != 0 && (v41 & 1) == 0)
  {
LABEL_25:
    if ([v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0])
    {
      goto LABEL_26;
    }

LABEL_30:
    NSLog(@"### Expected directory at %@", v7);
LABEL_32:

    return 0;
  }

LABEL_26:
  v8 = [v6 fileSystemRepresentationWithPath:v7];
  v9 = open(v8, 0x8000);
  if (v9 == -1)
  {
    v38 = *__error();
    NSLog(@"### Open %d error at %s", v38, v8);
    goto LABEL_32;
  }

  v10 = v9;
  self->_cancel = 0;
  readOnly = self->_readOnly;
  if ((v3 & 2) != 0)
  {
    if (self->_readOnly)
    {
      v43 = @"kIndexOptionReadOnly";
      v16 = [NSNumber numberWithBool:1];
      v44 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    }

    else
    {
      v17 = 0;
    }

    self->_indexType = 2;
    v18 = SIOpenIndexAtPathWithCallbacks();

    goto LABEL_88;
  }

  self->_indexType = (v3 >> 3) & 1;
  v12 = malloc_type_malloc(0x98uLL, 0x800407567D3B1uLL);
  *&v12->var12 = *&off_100035228;
  *&v12->var14 = *&off_100035238;
  *&v12->var16 = xmmword_100035248;
  *&v12->var4 = *off_1000351E8;
  *&v12->var6 = *off_1000351F8;
  *&v12->var8 = *&off_100035208;
  *&v12->var10 = *&off_100035218;
  *&v12->var0 = *off_1000351C8;
  *&v12->var2 = *off_1000351D8;
  v12->var18 = self;
  self->_indexCallbacks = v12;
  indexType = self->_indexType;
  v40 = 0u;
  if ((indexType - 1) > 1)
  {
    memset(&v42, 0, sizeof(v42));
    if (!sub_10001B1E8(v8, &v42))
    {
      DWORD2(v40) = v42.st_dev;
      if (indexType == 3 || (bzero(&v45, 0x400uLL), snprintf(&v45, 0x400uLL, "%s/%s", v8, "psid.db"), sub_10001B1E8(&v45, &v42)) || v42.st_size <= 0)
      {
        bzero(&v45, 0x878uLL);
        statfs(v8, &v45);
      }
    }
  }

  self->_device = DWORD2(v40);
  self->_permissions;
  self->_persistentFileIDs;
  self->_isHFS;
  self->_isAPFS;
  psid = self->_psid;
  if (psid)
  {
    CFRelease(psid);
    self->_psid = 0;
  }

  v20 = self->_indexType;
  if (v20)
  {
    if (v20 == 1)
    {
      v21 = sub_10000B48C();
LABEL_59:
      v22 = v21;
      self->_psid = v21;
      goto LABEL_64;
    }
  }

  else if (self->_persistentFileIDs)
  {
    memset(&v45, 0, 144);
    if (!fstatat(v10, "psid.db", &v45, 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000241B0();
      }

      v18 = -4;
      goto LABEL_70;
    }

    v21 = sub_100022C5C(self->_volumeObject);
    goto LABEL_59;
  }

  v22 = SIPersistentIDStoreCreate();
  self->_psid = v22;
  if (v22)
  {
    rootPath = self->_rootPath;
    if (rootPath)
    {
      if (!self->_indexType)
      {
        [(NSString *)rootPath UTF8String];
        SIPersistentIDStoreSetRootPath();
        v22 = self->_psid;
      }
    }
  }

LABEL_64:
  indexCallbacks = self->_indexCallbacks;
  memset(&v45, 0, 24);
  v37 = v22;
  p_cancel = &self->_cancel;
  v18 = SIOpenIndex();
  if ((v18 & 0x80000000) == 0)
  {
    if (!self->_readOnly)
    {
      index = self->_index;
      SISetScanCount();
    }

    goto LABEL_88;
  }

LABEL_70:
  if ((v3 & 0x40) != 0 && !self->_readOnly)
  {
    v26 = self->_psid;
    if (v26)
    {
      CFRelease(v26);
      self->_psid = 0;
    }

    [(SIIndexer *)self deleteFilesInDirectory:v10, v37, p_cancel];
    if (!self->_indexCallbacks)
    {
      v27 = malloc_type_malloc(0x98uLL, 0x800407567D3B1uLL);
      *&v27->var12 = *&off_100035228;
      *&v27->var14 = *&off_100035238;
      *&v27->var16 = xmmword_100035248;
      *&v27->var4 = *off_1000351E8;
      *&v27->var6 = *off_1000351F8;
      *&v27->var8 = *&off_100035208;
      *&v27->var10 = *&off_100035218;
      *&v27->var0 = *off_1000351C8;
      *&v27->var2 = *off_1000351D8;
      v27->var18 = self;
      self->_indexCallbacks = v27;
    }

    v28 = self->_indexType;
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = sub_10000B48C();
LABEL_81:
        self->_psid = v29;
LABEL_86:
        self->_cancel = 0;
        v33 = self->_indexCallbacks;
        memset(&v45, 0, 24);
        v18 = SICreateNewIndex();
        if ((v18 & 0x80000000) == 0)
        {
          v34 = self->_index;
          SISetScanCount();
          v35 = self->_index;
          SIInitialIndexingEnded();
          v36 = self->_index;
          SISyncIndex();
        }

        goto LABEL_88;
      }
    }

    else if (self->_persistentFileIDs)
    {
      v29 = sub_100022C5C(self->_volumeObject);
      goto LABEL_81;
    }

    v30 = SIPersistentIDStoreCreate();
    self->_psid = v30;
    if (v30)
    {
      v31 = self->_rootPath;
      if (v31)
      {
        if (!self->_indexType)
        {
          [(NSString *)v31 UTF8String];
          SIPersistentIDStoreSetRootPath();
          v32 = self->_psid;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_88:
  v14 = v18 >= 0;
  if ((v18 & 0x80000000) == 0)
  {
    self->_isOpen = 1;
  }

  close(v10);
  return v14;
}

- (void)close
{
  psid = self->_psid;
  if (psid)
  {
    CFRelease(psid);
    self->_psid = 0;
  }

  if ([(SIIndexer *)self isOpen])
  {
    [(SIIndexer *)self setIsOpen:0];
    index = self->_index;

    _SICloseIndex(index);
  }
}

- (unint64_t)termIndexCount
{
  result = self->_index;
  if (result)
  {
    return sub_10001C58C(result);
  }

  return result;
}

- (id)path:(int64_t)a3
{
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = &off_100036C30;
  v7 = &NSLog_ptr;
  v8 = &NSLog_ptr;
  v25 = v5;
  do
  {
    v9 = [(SIIndexer *)self getAttributes:v6 forOid:a3];
    v10 = v7[435];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v9 count] != 3)
    {
      v16 = 1;
LABEL_9:
      v15 = [v8[398] stringWithFormat:@"<%lld>", a3];
      goto LABEL_10;
    }

    v11 = [v9 objectAtIndexedSubscript:0];
    v12 = v8[398];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v13 = [v9 objectAtIndexedSubscript:2];

    v14 = v8[398];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v13;
LABEL_7:
      v15 = v11;
      v13 = v15;
      goto LABEL_13;
    }

    v15 = 0;
LABEL_13:
    v16 = (a3 & 0xFFFFFFFFFFFFFFFDLL) == 0;
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v17 = self;
      v18 = v8;
      v19 = v6;
      v20 = v7;
      v21 = [v9 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v21 integerValue];
      }

      v7 = v20;
      v6 = v19;
      v8 = v18;
      self = v17;
      v5 = v25;
    }

    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_10:
    [v5 insertObject:v15 atIndex:0];
  }

  while (!v16);
  if ([v5 count])
  {
    [v5 insertObject:&stru_100035EB0 atIndex:0];
  }

  v22 = [v5 componentsJoinedByString:@"/"];

  objc_autoreleasePoolPop(context);

  return v22;
}

- (id)termIndex:(unint64_t)a3
{
  if ([(SIIndexer *)self termIndexCount]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(SIIndexer *)self termIndex];
    v6 = v5;
    if (!v5 || [(TermIndex *)v5 cindex]!= a3)
    {
      v7 = [TermIndex alloc];
      index = self->_index;
      v9 = [(SIIndexer *)self path];
      v10 = -[TermIndex initWithIndex:cindex:atPath:coreSpotlight:](v7, "initWithIndex:cindex:atPath:coreSpotlight:", index, a3, [v9 UTF8String], -[SIIndexer isCoreSpotlight](self, "isCoreSpotlight"));

      [(SIIndexer *)self setTermIndex:v10];
      v6 = v10;
    }
  }

  v11 = v6;

  return v11;
}

- (void)iterateTermIndexes:(id)a3
{
  v4 = a3;
  v5 = [(SIIndexer *)self termIndexCount];
  v9 = 0;
  if (v5)
  {
    v6 = v5;
    for (i = 0; i < v6; ++i)
    {
      v8 = [(SIIndexer *)self termIndex:i];
      if (v8)
      {
        v4[2](v4, v8, &v9);
      }

      if (v9)
      {
        break;
      }
    }
  }
}

- (void)iterateTermIndexes:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(SIIndexer *)self termIndex:a3];
  if (v7)
  {
    v8 = 0;
    v6[2](v6, v7, &v8);
  }

  else
  {
    [(SIIndexer *)self iterateTermIndexes:v6];
  }
}

- (NSDictionary)indexProperties
{
  index = self->_index;
  if (index)
  {
    index = SICopyProperties();
    v2 = vars8;
  }

  return index;
}

- (NSDictionary)propertyMap
{
  propertyMap = self->_propertyMap;
  if (!propertyMap)
  {
    propertyMap = self->_index;
    if (propertyMap)
    {
      v4 = _SICopyPropertyIDMap();
      v5 = self->_propertyMap;
      self->_propertyMap = v4;

      propertyMap = self->_propertyMap;
    }
  }

  return propertyMap;
}

- (NSDictionary)propertyNumMap
{
  propertyNumMap = self->_propertyNumMap;
  if (!propertyNumMap)
  {
    v4 = [(SIIndexer *)self propertyMap];
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 unsignedIntValue] & 0xFFFFFFF);
          v13 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v13 forKeyedSubscript:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
    v15 = self->_propertyNumMap;
    self->_propertyNumMap = v14;

    propertyNumMap = self->_propertyNumMap;
  }

  return propertyNumMap;
}

- (id)propertyName:(unint64_t)a3
{
  v4 = [(SIIndexer *)self propertyNumMap];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)verify
{
  if ([(SIIndexer *)self isOpen]|| [(SIIndexer *)self openWithOptions:0])
  {
    index = self->_index;
    _SIConsistencyCheck();
    v4 = self->_index;
    _SICheckIndexForDuplicateOids();
    v5 = self->_index;

    __SIIssueVerify(v5, 0xFFFFLL);
  }
}

- (void)addRecords:(id)a3 forIDs:(unint64_t *)a4 completionHandler:(id)a5
{
  v5 = __chkstk_darwin(self, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v12 = v11;
  v13 = v7;
  v14 = [v12 count];
  if (*(v10 + 136))
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 22;
    goto LABEL_32;
  }

  v17 = v14;
  v18 = v41;
  bzero(v41, 0x2008uLL);
  v19 = v40;
  bzero(v40, 0x2008uLL);
  v20 = [v10 isXcodeIndex];
  if (!v20)
  {
    v19 = 0;
  }

  if (v17 >= 0x401)
  {
    v21 = v20;
    v22 = malloc_type_malloc(8 * v17 + 8, 0x100004000313F17uLL);
    v23 = v22;
    if ((v21 & 1) == 0)
    {
      v19 = 0;
      atomic_fetch_add((v10 + 20), v17);
      atomic_fetch_add((v10 + 24), v17);
      v24 = 1;
      v18 = v22;
      goto LABEL_16;
    }

    v19 = malloc_type_malloc(8 * v17 + 8, 0x100004000313F17uLL);
    v18 = v23;
  }

  atomic_fetch_add((v10 + 20), v17);
  atomic_fetch_add((v10 + 24), v17);
  *v18 = 0;
  if (!v19)
  {
    v24 = 1;
    goto LABEL_17;
  }

  v24 = 0;
  v23 = v19;
LABEL_16:
  *v23 = 0;
LABEL_17:
  v25 = 0;
  while (1)
  {
    v26 = *(v9 + 8 * v25);
    if (v26 < 2)
    {
      break;
    }

    v18[v25 + 1] = v26;
    if ((v24 & 1) == 0)
    {
      *&v19[8 * v25 + 8] = 2 * (v26 != 2);
    }

    if (v17 == ++v25)
    {
      objc_initWeak(&location, v10);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10000C150;
      v35[3] = &unk_100035158;
      v37[1] = v17;
      v36 = v13;
      objc_copyWeak(v37, &location);
      v34 = objc_retainBlock(v35);
      v39 = kCFNull;
      v27 = [NSArray arrayWithObjects:&v39 count:1];
      v28 = [v27 arrayByAddingObjectsFromArray:v12];

      v29 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
      v30 = *(v10 + 136);
      v31 = [v34 copy];
      *v29 = v30;
      v29[1] = v31;
      v32 = *(v10 + 136);
      if (SIBulkSetAttributes())
      {
        v16 = 0;
      }

      else
      {
        v16 = 22;
      }

      objc_destroyWeak(v37);
      objc_destroyWeak(&location);
      goto LABEL_29;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100024234();
  }

  v16 = 22;
LABEL_29:
  if (v18 != v41)
  {
    free(v18);
    if ((v24 & 1) == 0)
    {
      free(v19);
    }
  }

LABEL_32:
  if (v13 && v16)
  {
    v33 = [NSError errorWithDomain:@"SIIndexer" code:v16 userInfo:0];
    (*(v13 + 2))(v13, v33);
  }
}

- (void)updateRecords:(id)a3 forIDs:(unint64_t *)a4 completionHandler:(id)a5
{
  v5 = __chkstk_darwin(self, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v12 = v11;
  v13 = v7;
  v14 = [v12 count];
  if (*(v10 + 136))
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 22;
  }

  else
  {
    v17 = v14;
    v18 = v34;
    bzero(v34, 0x2008uLL);
    if (v17 >= 0x401)
    {
      v18 = malloc_type_malloc(8 * v17 + 8, 0x100004000313F17uLL);
    }

    v19 = 0;
    atomic_fetch_add((v10 + 20), v17);
    atomic_fetch_add((v10 + 24), v17);
    *v18 = 0;
    while (1)
    {
      v20 = *(v9 + 8 * v19);
      if (v20 <= 1)
      {
        break;
      }

      v18[++v19] = v20;
      if (v17 == v19)
      {
        objc_initWeak(&location, v10);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10000C694;
        v29[3] = &unk_100035158;
        v31[1] = v17;
        v30 = v13;
        objc_copyWeak(v31, &location);
        v21 = objc_retainBlock(v29);
        v33 = kCFNull;
        v22 = [NSArray arrayWithObjects:&v33 count:1];
        v23 = [v22 arrayByAddingObjectsFromArray:v12];

        v24 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
        v25 = *(v10 + 136);
        v26 = [v21 copy];
        *v24 = v25;
        v24[1] = v26;
        v27 = *(v10 + 136);
        if (SIBulkSetAttributes())
        {
          v16 = 0;
        }

        else
        {
          v16 = 22;
        }

        objc_destroyWeak(v31);
        objc_destroyWeak(&location);
        goto LABEL_19;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100024234();
    }

    v16 = 22;
LABEL_19:
    if (v18 != v34)
    {
      free(v18);
    }
  }

  if (v13 && v16)
  {
    v28 = [NSError errorWithDomain:@"SIIndexer" code:v16 userInfo:0];
    (*(v13 + 2))(v13, v28);
  }
}

- (void)removeRecordsForIDs:(unint64_t *)a3 count:(unint64_t)a4 completionHandler:(id)a5
{
  v5 = __chkstk_darwin(self, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v12 = v11;
  v13 = 22;
  if (v7 && v10[17])
  {
    v14 = v27;
    bzero(v27, 0x2008uLL);
    if (v7 >= 0x401)
    {
      v14 = malloc_type_malloc(8 * v7 + 8, 0x100004000313F17uLL);
    }

    v15 = 0;
    *v14 = 0;
    while (1)
    {
      v16 = *(v9 + 8 * v15);
      if (v16 <= 1)
      {
        break;
      }

      v14[++v15] = v16;
      if (v7 == v15)
      {
        objc_initWeak(&location, v10);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10000CAF0;
        v23[3] = &unk_100035158;
        v25[1] = v7;
        v24 = v12;
        objc_copyWeak(v25, &location);
        v17 = objc_retainBlock(v23);
        v18 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
        v19 = v10[17];
        v20 = [v17 copy];
        *v18 = v19;
        v18[1] = v20;
        v21 = v10[17];
        if (SIBulkSetAttributes())
        {
          v13 = 0;
        }

        else
        {
          v13 = 22;
        }

        objc_destroyWeak(v25);
        objc_destroyWeak(&location);
        goto LABEL_15;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100024234();
    }

    v13 = 22;
LABEL_15:
    if (v14 != v27)
    {
      free(v14);
    }
  }

  if (v12 && v13)
  {
    v22 = [NSError errorWithDomain:@"SIIndexer" code:v13 userInfo:0];
    (*(v12 + 2))(v12, v22);
  }
}

- (void)issueCommit
{
  index = self->_index;
  if (index)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000CD0C;
    v5[3] = &unk_100035180;
    v5[4] = self;
    v3 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
    v4 = [v5 copy];
    *v3 = index;
    v3[1] = v4;
    SISynchedOp();
  }
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  if (self->_index)
  {
    SISetProperty();
  }
}

- (void)split
{
  if ([(SIIndexer *)self isOpen])
  {
    index = self->_index;

    _SIIssueSplit();
  }
}

- (void)merge
{
  if ([(SIIndexer *)self isOpen])
  {
    index = self->_index;

    __SIIssueMerge(index, 1);
  }
}

- (void)fullMerge
{
  if ([(SIIndexer *)self isOpen])
  {
    index = self->_index;

    __SIIssueFullMerge(index);
  }
}

- (void)oidParents:(id)a3
{
  v5 = a3;
  if (([(SIIndexer *)self isSpotlightIndex]|| [(SIIndexer *)self isCoreSpotlight]) && ([(SIIndexer *)self isOpen]|| [(SIIndexer *)self openWithOptions:0]))
  {
    index = self->_index;
    _SIReverseStoreIterate();
  }
}

- (unsigned)relativeDocID:(unint64_t)a3
{
  v5 = [(SIIndexer *)self termIndex];
  v6 = v5;
  if (!v5 || [v5 base] >= a3 || (v7 = a3 - objc_msgSend(v6, "base"), v7 >= objc_msgSend(v6, "doc_ids_limit")))
  {
    v8 = sub_10001C58C(self->_index);
    if (v8 < 1)
    {
LABEL_8:
      LODWORD(v7) = 0;
    }

    else
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        v11 = v6;
        v6 = [(SIIndexer *)self termIndex:v10];

        v12 = a3 - [v6 base];
        if (v12 < [v6 doc_ids_limit])
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_8;
        }
      }

      LODWORD(v7) = v12;
    }
  }

  return v7;
}

- (unint64_t)oidForDocID:(unint64_t)a3
{
  v5 = [(SIIndexer *)self termIndex];
  v6 = v5;
  if (v5)
  {
    if ([v5 base] < a3)
    {
      v7 = a3 - [v6 base];
      if (v7 < [v6 doc_ids_limit])
      {
        v8 = v6;
        v9 = v7;
LABEL_11:
        v15 = [v8 oidForDocID:v9];
        goto LABEL_12;
      }
    }
  }

  v10 = sub_10001C58C(self->_index);
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = v6;
      v6 = [(SIIndexer *)self termIndex:v12];

      v14 = a3 - [v6 base];
      if (v14 < [v6 doc_ids_limit])
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    v8 = v6;
    v9 = v14;
    goto LABEL_11;
  }

LABEL_9:
  v15 = 0;
LABEL_12:

  return v15;
}

- (unsigned)groupForDocID:(unint64_t)a3
{
  v5 = [(SIIndexer *)self termIndex];
  v6 = v5;
  if (v5)
  {
    if ([v5 base] < a3)
    {
      v7 = a3 - [v6 base];
      if (v7 < [v6 doc_ids_limit])
      {
        v8 = v6;
        v9 = v7;
LABEL_11:
        v15 = [v8 groupForDocID:v9];
        goto LABEL_12;
      }
    }
  }

  v10 = sub_10001C58C(self->_index);
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = v6;
      v6 = [(SIIndexer *)self termIndex:v12];

      v14 = a3 - [v6 base];
      if (v14 < [v6 doc_ids_limit])
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    v8 = v6;
    v9 = v14;
    goto LABEL_11;
  }

LABEL_9:
  v15 = 0;
LABEL_12:

  return v15;
}

- (int64_t)oidForPath:(const char *)a3 allowCreate:(BOOL)a4
{
  result = self->_psid;
  if (result)
  {
    return _SIPersistentIDStoreGetOIDForCPath();
  }

  return result;
}

- (void)rename:(const char *)a3 toPath:(const char *)a4
{
  if (self->_psid)
  {
    _SIPersistentIDStoreRename();
  }
}

- (void)deleteOID:(int64_t)a3
{
  if (self->_psid)
  {
    _SIPersistentIDStoreDelete();
  }
}

- (id)getAttributes:(id)a3 forOid:(int64_t)a4
{
  v5 = a3;
  if (![v5 count] || !-[SIIndexer isOpen](self, "isOpen") && !-[SIIndexer openWithOptions:](self, "openWithOptions:", 0))
  {
    v9 = 0;
    goto LABEL_13;
  }

  v6 = [SIIndexer createUserContext:0];
  index = self->_index;
  v8 = SIGetAttributes();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
  {
    goto LABEL_8;
  }

  v9 = [v8 objectAtIndexedSubscript:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_8:
    v9 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_13:

  return v9;
}

- (void)_indexFinalize
{
  indexCallbacks = self->_indexCallbacks;
  if (indexCallbacks)
  {
    free(indexCallbacks);
    self->_indexCallbacks = 0;
  }

  self->_index = 0;
}

- (void)_reopen:(const char *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = a3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exit from bad index state %s", &v4, 0xCu);
  }

  exit(0);
}

- (void)setQueryTask:(id)a3 forID:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_rwlock_wrlock(&self->_queryTasksRdWrLock);
  [(NSMutableDictionary *)self->_queryTasks setObject:v7 forKeyedSubscript:v6];

  pthread_rwlock_unlock(&self->_queryTasksRdWrLock);
}

- (id)getQueryTaskForID:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_queryTasksRdWrLock);
  v5 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:v4];

  pthread_rwlock_unlock(&self->_queryTasksRdWrLock);

  return v5;
}

- (id)allQueryTasks
{
  pthread_rwlock_rdlock(&self->_queryTasksRdWrLock);
  v3 = [(NSMutableDictionary *)self->_queryTasks allValues];
  pthread_rwlock_unlock(&self->_queryTasksRdWrLock);

  return v3;
}

- (void)waitFor:(int)a3
{
  group = dispatch_group_create();
  dispatch_group_enter(group);
  index = self->_index;
  SISynchedOp();
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)bulkSetCSAttributes:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSConditionLock alloc] initWithCondition:0];
  index = self->_index;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000D72C;
  v17 = &unk_1000351A8;
  v18 = self;
  v19 = v7;
  v20 = v6;
  v21 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  v13 = [&v14 copy];
  _SIScheduleBackgroundOperation();

  [v10 lockWhenCondition:{1, v14, v15, v16, v17, v18}];
  [v10 unlock];
}

- (id)resultsForPommesUserQuery:(id)a3 withFields:(id)a4 maxCount:(int64_t)a5 languages:(id)a6 liftingRules:(id)a7 scope:(id)a8 pommesBundles:(id)a9 clientBundleID:(id)a10
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v36 = v16;
  v21 = SIUserCtxCreateWithLanguages();
  [NSString stringWithFormat:@"**=%@*cwdt", v14];
  v37 = v15;
  v35 = v17;
  CFAbsoluteTimeGetCurrent();
  v34 = v19;
  if (SIQueryCreateWithParameters())
  {
    SIResultQueueCreate();
    index = self->_index;
    SIExecuteQuery();
    v23 = +[NSMutableDictionary dictionary];
    while (1)
    {
      while (1)
      {
        do
        {
          v24 = SIResultQueueDequeue();
        }

        while (!v24);
        v25 = v24;
        if (*v24 != 10)
        {
          break;
        }

        v29 = *(v24 + 32);
        v30 = _MDPlistContainerCopyRootObject();
        NSLog(@"%@", v30);
        CFRelease(v30);
        SIResultBatchFree();
      }

      if (*v24 == 4)
      {
        break;
      }

      v26 = v23;
      v27 = *(v25 + 32);
      v38 = v26;
      v39 = *(v25 + 40);
      _MDStoreOIDArrayGetVectorCount();
      v28 = *(v25 + 32);
      _MDStoreOIDArrayApplyFunction();
      SIResultBatchFree();
    }

    SIResultBatchFree();
    v31 = self->_index;
    SICancel();
    SIResultQueueRelease();
    SIQueryRelease();
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
    if (v21)
    {
LABEL_9:
      CFRelease(v21);
    }
  }

  return v23;
}

- (_opaque_pthread_rwlock_t)queryTasksRdWrLock
{
  v3 = *&self[1].__opaque[24];
  v4 = *&self[1].__opaque[40];
  v5 = *&self->__opaque[160];
  v6 = *&self[1].__sig;
  *&retstr->__opaque[24] = *&self->__opaque[176];
  *&retstr->__opaque[40] = v6;
  *&retstr->__opaque[56] = *&self[1].__opaque[8];
  *&retstr->__opaque[72] = v3;
  *&retstr->__sig = *&self->__opaque[144];
  *&retstr->__opaque[8] = v5;
  v7 = *&self[1].__opaque[88];
  v8 = *&self[1].__opaque[120];
  *&retstr->__opaque[152] = *&self[1].__opaque[104];
  *&retstr->__opaque[168] = v8;
  v9 = *&self[1].__opaque[56];
  v10 = *&self[1].__opaque[72];
  *&retstr->__opaque[88] = v4;
  *&retstr->__opaque[104] = v9;
  *&retstr->__opaque[184] = *&self[1].__opaque[136];
  *&retstr->__opaque[120] = v10;
  *&retstr->__opaque[136] = v7;
  return self;
}

- (void)setQueryTasksRdWrLock:(_opaque_pthread_rwlock_t *)a3
{
  *&self->_queryTasksRdWrLock.__sig = *&a3->__sig;
  v3 = *&a3->__opaque[8];
  v4 = *&a3->__opaque[24];
  v5 = *&a3->__opaque[40];
  *&self->_queryTasksRdWrLock.__opaque[56] = *&a3->__opaque[56];
  *&self->_queryTasksRdWrLock.__opaque[40] = v5;
  *&self->_queryTasksRdWrLock.__opaque[24] = v4;
  *&self->_queryTasksRdWrLock.__opaque[8] = v3;
  v6 = *&a3->__opaque[72];
  v7 = *&a3->__opaque[88];
  v8 = *&a3->__opaque[120];
  *&self->_queryTasksRdWrLock.__opaque[104] = *&a3->__opaque[104];
  *&self->_queryTasksRdWrLock.__opaque[120] = v8;
  *&self->_queryTasksRdWrLock.__opaque[88] = v7;
  *&self->_queryTasksRdWrLock.__opaque[72] = v6;
  v9 = *&a3->__opaque[136];
  v10 = *&a3->__opaque[152];
  v11 = *&a3->__opaque[168];
  *&self->_queryTasksRdWrLock.__opaque[184] = *&a3->__opaque[184];
  *&self->_queryTasksRdWrLock.__opaque[152] = v10;
  *&self->_queryTasksRdWrLock.__opaque[168] = v11;
  *&self->_queryTasksRdWrLock.__opaque[136] = v9;
}

@end