@interface MailPersistentStorage
+ (id)defaultFilePath;
+ (id)sharedStorage;
+ (void)wipePersistentStorage;
- (MailPersistentStorage)init;
- (MailPersistentStorage)initWithFilePath:(id)path;
- (id)_objectForKey:(id)key inGroup:(id)group;
- (id)bodyBackfillDateForSource:(id)source;
- (id)fetchDateForSource:(id)source;
- (void)_setObject:(id)object forKey:(id)key inGroup:(id)group;
- (void)removeAllDataBelongingToAccount:(id)account;
- (void)save;
- (void)searchedServer;
- (void)setBodyBackfillDate:(id)date forSource:(id)source;
- (void)setFetchDate:(id)date forSource:(id)source;
- (void)touchLastLoadOlder;
@end

@implementation MailPersistentStorage

+ (id)sharedStorage
{
  pthread_once(&stru_1006D26C0, sub_10000B484);
  v2 = qword_1006DD110;

  return v2;
}

+ (id)defaultFilePath
{
  v2 = MFMailDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"metadata.plist"];

  return v3;
}

+ (void)wipePersistentStorage
{
  v2 = qword_1006DD110;
  qword_1006DD110 = 0;

  sub_10000B484();
}

- (MailPersistentStorage)initWithFilePath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MailPersistentStorage;
  v5 = [(MailPersistentStorage *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    saveOperationQueue = v5->_saveOperationQueue;
    v5->_saveOperationQueue = v6;

    [(NSOperationQueue *)v5->_saveOperationQueue setQualityOfService:17];
    [(NSOperationQueue *)v5->_saveOperationQueue setMaxConcurrentOperationCount:1];
    v8 = [pathCopy copy];
    filePath = v5->_filePath;
    v5->_filePath = v8;

    v10 = [[NSMutableDictionary alloc] initWithContentsOfFile:pathCopy];
    groups = v5->_groups;
    v5->_groups = v10;

    if (!v5->_groups)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = v5->_groups;
      v5->_groups = v12;
    }
  }

  return v5;
}

- (MailPersistentStorage)init
{
  defaultFilePath = [objc_opt_class() defaultFilePath];
  v4 = [(MailPersistentStorage *)self initWithFilePath:defaultFilePath];

  return v4;
}

- (void)save
{
  [(MailPersistentStorage *)self mf_lock];
  v4 = [[MailPersistentStorageSaveOperation alloc] initWithDestinationPath:self->_filePath groupDictionary:self->_groups];
  [(MailPersistentStorage *)self mf_unlock];
  saveOperationQueue = [(MailPersistentStorage *)self saveOperationQueue];
  [saveOperationQueue addOperation:v4];
}

- (void)_setObject:(id)object forKey:(id)key inGroup:(id)group
{
  objectCopy = object;
  keyCopy = key;
  groupCopy = group;
  if (!keyCopy)
  {
    __assert_rtn("[MailPersistentStorage _setObject:forKey:inGroup:]", "MailPersistentStorage.m", 165, "key");
  }

  [(MailPersistentStorage *)self mf_lock];
  if (!groupCopy)
  {
    groupCopy = @"GenericData";
  }

  v10 = [(NSMutableDictionary *)self->_groups objectForKey:groupCopy];
  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  if (objectCopy)
  {
    [v10 setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [v10 removeObjectForKey:keyCopy];
  }

  [(NSMutableDictionary *)self->_groups setObject:v10 forKey:groupCopy];
  [(MailPersistentStorage *)self mf_unlock];
}

- (id)_objectForKey:(id)key inGroup:(id)group
{
  keyCopy = key;
  groupCopy = group;
  if (!groupCopy)
  {
    v11 = "group";
    v12 = 185;
    goto LABEL_8;
  }

  if (!keyCopy)
  {
    v11 = "key";
    v12 = 186;
LABEL_8:
    __assert_rtn("[MailPersistentStorage _objectForKey:inGroup:]", "MailPersistentStorage.m", v12, v11);
  }

  [(MailPersistentStorage *)self mf_lock];
  v8 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:groupCopy];
  v9 = [v8 objectForKeyedSubscript:keyCopy];
  [(MailPersistentStorage *)self mf_unlock];

  return v9;
}

- (void)setFetchDate:(id)date forSource:(id)source
{
  dateCopy = date;
  sourceCopy = source;
  if (sourceCopy)
  {
    [(MailPersistentStorage *)self _setObject:dateCopy forKey:sourceCopy inGroup:@"FetchingData"];
  }
}

- (id)fetchDateForSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    v5 = [(MailPersistentStorage *)self _objectForKey:sourceCopy inGroup:@"FetchingData"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBodyBackfillDate:(id)date forSource:(id)source
{
  dateCopy = date;
  sourceCopy = source;
  if (sourceCopy)
  {
    [(MailPersistentStorage *)self _setObject:dateCopy forKey:sourceCopy inGroup:@"BodyBackfillData"];
  }
}

- (id)bodyBackfillDateForSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    v5 = [(MailPersistentStorage *)self _objectForKey:sourceCopy inGroup:@"BodyBackfillData"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)touchLastLoadOlder
{
  v3 = +[NSDate date];
  [MailPersistentStorage _setObject:"_setObject:forKey:inGroup:" forKey:? inGroup:?];
}

- (void)searchedServer
{
  v3 = +[NSDate date];
  [MailPersistentStorage _setObject:"_setObject:forKey:inGroup:" forKey:? inGroup:?];
}

- (void)removeAllDataBelongingToAccount:(id)account
{
  accountCopy = account;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [&off_100674F40 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v18 = *v30;
    do
    {
      v19 = v5;
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(&off_100674F40);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_groups objectForKey:v7];
        v8 = objc_alloc_init(NSMutableArray);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          allKeys = [v20 allKeys];
          v10 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v10)
          {
            v11 = *v26;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v26 != v11)
                {
                  objc_enumerationMutation(allKeys);
                }

                v13 = *(*(&v25 + 1) + 8 * j);
                if ([accountCopy ownsMailboxUidWithURL:v13])
                {
                  [v8 addObject:v13];
                }
              }

              v10 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v10);
          }
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = v8;
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v15)
        {
          v16 = *v22;
          do
          {
            for (k = 0; k != v15; k = k + 1)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v14);
              }

              [(MailPersistentStorage *)self _setObject:0 forKey:*(*(&v21 + 1) + 8 * k) inGroup:v7];
            }

            v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
          }

          while (v15);
        }
      }

      v5 = [&off_100674F40 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  [(MailPersistentStorage *)self save];
}

@end