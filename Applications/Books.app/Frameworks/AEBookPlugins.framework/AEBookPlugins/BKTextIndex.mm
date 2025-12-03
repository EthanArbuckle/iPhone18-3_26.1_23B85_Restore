@interface BKTextIndex
+ (BOOL)doesBookIndexWithNameExist:(id)exist isLoaded:(BOOL *)loaded;
+ (id)_cachedIndexFileNameForName:(id)name createIndicesDirectoryIfNeeded:(BOOL)needed;
+ (id)bookIndexWithName:(id)name;
+ (void)invalidateBookIndicesWithNames:(id)names;
- (BKTextIndex)initWithCoder:(id)coder;
- (BKTextIndex)initWithName:(id)name;
- (BOOL)containsTextUnitWithOrdinal:(unint64_t)ordinal;
- (id)queryForString:(id)string maxOrdinal:(unint64_t)ordinal;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)indexTextUnit:(id)unit withOrdinal:(unint64_t)ordinal indexSynchronously:(BOOL)synchronously;
- (void)save;
@end

@implementation BKTextIndex

+ (id)_cachedIndexFileNameForName:(id)name createIndicesDirectoryIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  nameCopy = name;
  v6 = +[UIApplication applicationCacheDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"searchIndices"];

  if (neededCopy)
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

  nameCopy = [NSString stringWithFormat:@"%@/%@.index", v7, nameCopy];

  return nameCopy;
}

+ (id)bookIndexWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [IMTextIndex textIndexWithName:nameCopy];
    if (!v6)
    {
      v7 = [selfCopy _cachedIndexFileNameForName:nameCopy];
      v8 = [NSData dataWithContentsOfFile:v7];
      v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:0];
      v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      v6 = v10;
      if (v10 && [v10 version] == &dword_4 + 1 || (v11 = -[BKTextIndex initWithName:]([BKTextIndex alloc], "initWithName:", nameCopy), v6, (v6 = v11) != 0))
      {
        [IMTextIndex addTextIndex:v6 withName:nameCopy];
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    NSLog(@"Warning : Missing index name in %s", "+[BKTextIndex bookIndexWithName:]");
    v6 = 0;
  }

  return v6;
}

+ (void)invalidateBookIndicesWithNames:(id)names
{
  namesCopy = names;
  v5 = namesCopy;
  if (namesCopy && [namesCopy count])
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
          selfCopy = self;
          objc_sync_enter(selfCopy);
          [IMTextIndex removeTextIndexWithName:v10];
          v12 = [selfCopy _cachedIndexFileNameForName:v10 createIndicesDirectoryIfNeeded:0];
          v13 = v12;
          if (v12 && [v12 length])
          {
            v14 = +[NSFileManager defaultManager];
            [v14 removeItemAtPath:v13 error:0];
          }

          objc_sync_exit(selfCopy);
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

+ (BOOL)doesBookIndexWithNameExist:(id)exist isLoaded:(BOOL *)loaded
{
  existCopy = exist;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [IMTextIndex textIndexWithName:existCopy];
  v9 = v8;
  if (loaded)
  {
    *loaded = v8 != 0;
  }

  v10 = [selfCopy _cachedIndexFileNameForName:existCopy];
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  objc_sync_exit(selfCopy);
  return (v9 != 0) | v12 & 1;
}

- (void)save
{
  [(BKTextIndex *)self closeIndex];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isDirty)
  {
    name = [(BKTextIndex *)selfCopy name];
    v5 = [BKTextIndex _cachedIndexFileNameForName:name];

    v8 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:selfCopy requiringSecureCoding:1 error:&v8];
    v7 = v8;
    if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1392A0(v7);
    }

    [v6 writeToFile:v5 atomically:1];
    selfCopy->_isDirty = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BKTextIndex)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = BKTextIndex;
  v6 = [(BKTextIndex *)&v9 initWithCaseRule:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = BKTextIndex;
  [(BKTextIndex *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:selfCopy->_name forKey:@"name"];
  v6 = [NSNumber numberWithUnsignedInteger:selfCopy->_version];
  [coderCopy encodeObject:v6 forKey:@"version"];

  objc_sync_exit(selfCopy);
}

- (BKTextIndex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKTextIndex;
  v5 = [(BKTextIndex *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v5->_version = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)indexTextUnit:(id)unit withOrdinal:(unint64_t)ordinal indexSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  unitCopy = unit;
  ordinal = [NSString stringWithFormat:@"%lu", ordinal];
  [(BKTextIndex *)self indexTextUnit:unitCopy withIdentifier:ordinal indexSynchronously:synchronouslyCopy];

  self->_isDirty = 1;
}

- (BOOL)containsTextUnitWithOrdinal:(unint64_t)ordinal
{
  ordinal = [NSString stringWithFormat:@"%lu", ordinal];
  LOBYTE(self) = [(BKTextIndex *)self containsTextUnitWithIdentifier:ordinal];

  return self;
}

- (id)queryForString:(id)string maxOrdinal:(unint64_t)ordinal
{
  stringCopy = string;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(BKTextIndex *)selfCopy candidateIdentifiersForStringQuery:stringCopy];
  allIdentifiers = [(BKTextIndex *)selfCopy allIdentifiers];
  v10 = [v8 count];
  if (ordinal == -1 || v10 || [allIdentifiers count] != ordinal)
  {
    v12 = [BKTextIndexQueryResult alloc];
    v13 = [allIdentifiers count];
    if (v13 == ordinal)
    {
      v14 = 0;
    }

    else
    {
      v14 = [NSSet setWithArray:allIdentifiers];
    }

    v11 = [(BKTextIndexQueryResult *)v12 initWithOrdinals:v8 allOrdinals:v14];
    if (v13 != ordinal)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

@end