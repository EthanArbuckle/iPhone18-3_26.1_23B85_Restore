@interface BKTextIndex
+ (BOOL)doesBookIndexWithNameExist:(id)a3 isLoaded:(BOOL *)a4;
+ (id)_cachedIndexFileNameForName:(id)a3 createIndicesDirectoryIfNeeded:(BOOL)a4;
+ (id)bookIndexWithName:(id)a3;
+ (void)invalidateBookIndicesWithNames:(id)a3;
- (BKTextIndex)initWithCoder:(id)a3;
- (BKTextIndex)initWithName:(id)a3;
- (BOOL)containsTextUnitWithOrdinal:(unint64_t)a3;
- (id)queryForString:(id)a3 maxOrdinal:(unint64_t)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)indexTextUnit:(id)a3 withOrdinal:(unint64_t)a4 indexSynchronously:(BOOL)a5;
- (void)save;
@end

@implementation BKTextIndex

+ (id)_cachedIndexFileNameForName:(id)a3 createIndicesDirectoryIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[UIApplication applicationCacheDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"searchIndices"];

  if (v4)
  {
    v8 = +[NSFileManager defaultManager];
    v14 = 0;
    if ([v8 fileExistsAtPath:v7 isDirectory:&v14])
    {
      if ((v14 & 1) == 0)
      {
        [NSException raise:@"BTTextIndexException" format:@"'%@' is not a directory.", v7];
      }
    }

    else
    {
      v13 = 0;
      v9 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v13];
      v10 = v13;
      if ((v9 & 1) == 0)
      {
        [NSException raise:@"BTTextIndexException" format:@"Directory '%@' could not be created (%@).", v7, v10];
      }
    }
  }

  v11 = [NSString stringWithFormat:@"%@/%@.index", v7, v5];

  return v11;
}

+ (id)bookIndexWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [IMTextIndex textIndexWithName:v4];
    if (!v6)
    {
      v7 = [v5 _cachedIndexFileNameForName:v4];
      v8 = [NSData dataWithContentsOfFile:v7];
      v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:0];
      v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      v6 = v10;
      if (v10 && [v10 version] == &dword_4 + 1 || (v11 = -[BKTextIndex initWithName:]([BKTextIndex alloc], "initWithName:", v4), v6, (v6 = v11) != 0))
      {
        [IMTextIndex addTextIndex:v6 withName:v4];
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    NSLog(@"Warning : Missing index name in %s", "+[BKTextIndex bookIndexWithName:]");
    v6 = 0;
  }

  return v6;
}

+ (void)invalidateBookIndicesWithNames:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = a1;
          objc_sync_enter(v11);
          [IMTextIndex removeTextIndexWithName:v10];
          v12 = [v11 _cachedIndexFileNameForName:v10 createIndicesDirectoryIfNeeded:0];
          v13 = v12;
          if (v12 && [v12 length])
          {
            v14 = +[NSFileManager defaultManager];
            [v14 removeItemAtPath:v13 error:0];
          }

          objc_sync_exit(v11);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v5 = v15;
  }
}

+ (BOOL)doesBookIndexWithNameExist:(id)a3 isLoaded:(BOOL *)a4
{
  v6 = a3;
  v7 = a1;
  objc_sync_enter(v7);
  v8 = [IMTextIndex textIndexWithName:v6];
  v9 = v8;
  if (a4)
  {
    *a4 = v8 != 0;
  }

  v10 = [v7 _cachedIndexFileNameForName:v6];
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  objc_sync_exit(v7);
  return (v9 != 0) | v12 & 1;
}

- (void)save
{
  [(BKTextIndex *)self closeIndex];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_isDirty)
  {
    v4 = [(BKTextIndex *)v3 name];
    v5 = [BKTextIndex _cachedIndexFileNameForName:v4];

    v8 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
    v7 = v8;
    if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1392A0(v7);
    }

    [v6 writeToFile:v5 atomically:1];
    v3->_isDirty = 0;
  }

  objc_sync_exit(v3);
}

- (BKTextIndex)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKTextIndex;
  v6 = [(BKTextIndex *)&v9 initWithCaseRule:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v7->_version = 5;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  name = self->_name;
  self->_name = 0;

  v5.receiver = self;
  v5.super_class = BKTextIndex;
  [(BKTextIndex *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7.receiver = v5;
  v7.super_class = BKTextIndex;
  [(BKTextIndex *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:v5->_name forKey:@"name"];
  v6 = [NSNumber numberWithUnsignedInteger:v5->_version];
  [v4 encodeObject:v6 forKey:@"version"];

  objc_sync_exit(v5);
}

- (BKTextIndex)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKTextIndex;
  v5 = [(BKTextIndex *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v5->_version = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)indexTextUnit:(id)a3 withOrdinal:(unint64_t)a4 indexSynchronously:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [NSString stringWithFormat:@"%lu", a4];
  [(BKTextIndex *)self indexTextUnit:v8 withIdentifier:v9 indexSynchronously:v5];

  self->_isDirty = 1;
}

- (BOOL)containsTextUnitWithOrdinal:(unint64_t)a3
{
  v4 = [NSString stringWithFormat:@"%lu", a3];
  LOBYTE(self) = [(BKTextIndex *)self containsTextUnitWithIdentifier:v4];

  return self;
}

- (id)queryForString:(id)a3 maxOrdinal:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(BKTextIndex *)v7 candidateIdentifiersForStringQuery:v6];
  v9 = [(BKTextIndex *)v7 allIdentifiers];
  v10 = [v8 count];
  if (a4 == -1 || v10 || [v9 count] != a4)
  {
    v12 = [BKTextIndexQueryResult alloc];
    v13 = [v9 count];
    if (v13 == a4)
    {
      v14 = 0;
    }

    else
    {
      v14 = [NSSet setWithArray:v9];
    }

    v11 = [(BKTextIndexQueryResult *)v12 initWithOrdinals:v8 allOrdinals:v14];
    if (v13 != a4)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(v7);

  return v11;
}

@end