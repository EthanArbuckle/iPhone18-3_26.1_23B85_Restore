@interface IMTextIndex
+ (id)textIndexWithName:(id)name;
+ (void)_lowMemoryWarning:(id)warning;
+ (void)addTextIndex:(id)index withName:(id)name;
+ (void)initialize;
+ (void)removeTextIndexWithName:(id)name;
- (BOOL)containsTextUnitWithIdentifier:(id)identifier;
- (BOOL)isEmpty;
- (IMTextIndex)initWithCaseRule:(int)rule;
- (IMTextIndex)initWithCoder:(id)coder;
- (id)_candidateIdentifiersForStringQueries:(id)queries;
- (id)_indexingDispatchGroup;
- (id)allIdentifiers;
- (id)candidateIdentifiersForStringQuery:(id)query;
- (unint64_t)textUnitCount;
- (void)_indexDispatchGroupDispatchToQueue:(id)queue block:(id)block;
- (void)_waitAndCleanupDispatchGroup;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)indexTextUnit:(id)unit withIdentifier:(id)identifier indexSynchronously:(BOOL)synchronously;
@end

@implementation IMTextIndex

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }
}

+ (void)_lowMemoryWarning:(id)warning
{
  warningCopy = warning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [qword_345E30 removeAllObjects];
  objc_sync_exit(selfCopy);
}

+ (id)textIndexWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [qword_345E30 objectForKey:nameCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

+ (void)addTextIndex:(id)index withName:(id)name
{
  indexCopy = index;
  nameCopy = name;
  if (indexCopy && nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = qword_345E30;
    if (!qword_345E30)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = qword_345E30;
      qword_345E30 = v9;

      v8 = qword_345E30;
    }

    [v8 setObject:indexCopy forKey:nameCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    NSLog(@"Warning : Missing parameters in %s (%@, %@)", "+[IMTextIndex addTextIndex:withName:]", indexCopy, nameCopy);
  }
}

+ (void)removeTextIndexWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = nameCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [qword_345E30 removeObjectForKey:v6];
    objc_sync_exit(selfCopy);

    nameCopy = v6;
  }
}

- (IMTextIndex)initWithCaseRule:(int)rule
{
  v13.receiver = self;
  v13.super_class = IMTextIndex;
  v4 = [(IMTextIndex *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_caseRule = rule;
    v11 = xmmword_2A4038;
    v12 = 4;
    v6 = [[IMLibraryFragmentFilter alloc] initWithFilterSpecification:&v11];
    library = v5->_library;
    v5->_library = v6;

    v8 = objc_alloc_init(NSRecursiveLock);
    indexingDispatchGroupLock = v5->_indexingDispatchGroupLock;
    v5->_indexingDispatchGroupLock = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeInt:selfCopy->_caseRule forKey:@"caseRule"];
  [coderCopy encodeObject:selfCopy->_library forKey:@"library"];
  objc_sync_exit(selfCopy);
}

- (IMTextIndex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IMTextIndex;
  v5 = [(IMTextIndex *)&v11 init];
  if (v5)
  {
    v5->_caseRule = [coderCopy decodeIntForKey:@"caseRule"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"library"];
    library = v5->_library;
    v5->_library = v6;

    v8 = objc_alloc_init(NSRecursiveLock);
    indexingDispatchGroupLock = v5->_indexingDispatchGroupLock;
    v5->_indexingDispatchGroupLock = v8;
  }

  return v5;
}

- (void)_waitAndCleanupDispatchGroup
{
  [(NSRecursiveLock *)self->_indexingDispatchGroupLock lock];
  indexingDispatchGroup = self->_indexingDispatchGroup;
  if (indexingDispatchGroup)
  {
    dispatch_group_wait(indexingDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
    v4 = self->_indexingDispatchGroup;
    self->_indexingDispatchGroup = 0;
  }

  indexingDispatchGroupLock = self->_indexingDispatchGroupLock;

  [(NSRecursiveLock *)indexingDispatchGroupLock unlock];
}

- (id)_indexingDispatchGroup
{
  [(NSRecursiveLock *)self->_indexingDispatchGroupLock lock];
  indexingDispatchGroup = self->_indexingDispatchGroup;
  if (!indexingDispatchGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_indexingDispatchGroup;
    self->_indexingDispatchGroup = v4;

    indexingDispatchGroup = self->_indexingDispatchGroup;
  }

  v6 = indexingDispatchGroup;
  [(NSRecursiveLock *)self->_indexingDispatchGroupLock unlock];

  return v6;
}

- (void)_indexDispatchGroupDispatchToQueue:(id)queue block:(id)block
{
  queue = queue;
  blockCopy = block;
  [(NSRecursiveLock *)self->_indexingDispatchGroupLock lock];
  _indexingDispatchGroup = [(IMTextIndex *)self _indexingDispatchGroup];
  dispatch_group_async(_indexingDispatchGroup, queue, blockCopy);

  [(NSRecursiveLock *)self->_indexingDispatchGroupLock unlock];
}

- (void)indexTextUnit:(id)unit withIdentifier:(id)identifier indexSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  unitCopy = unit;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (synchronouslyCopy)
  {
    v11 = unitCopy;
    stringByConvertingNewlineCharacterSetToSpace = [v11 stringByConvertingNewlineCharacterSetToSpace];

    if (selfCopy->_caseRule == 1)
    {
      lowercaseString = [stringByConvertingNewlineCharacterSetToSpace lowercaseString];

      stringByConvertingNewlineCharacterSetToSpace = lowercaseString;
    }

    [(IMLibraryFragmentFilter *)selfCopy->_library addDocument:stringByConvertingNewlineCharacterSetToSpace withIdentifier:identifierCopy];
  }

  else
  {
    stringByConvertingNewlineCharacterSetToSpace = dispatch_get_global_queue(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_11C2DC;
    v14[3] = &unk_2C89F8;
    v14[4] = selfCopy;
    v15 = unitCopy;
    v16 = identifierCopy;
    [(IMTextIndex *)selfCopy _indexDispatchGroupDispatchToQueue:stringByConvertingNewlineCharacterSetToSpace block:v14];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)containsTextUnitWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(IMLibraryFragmentFilter *)selfCopy->_library containsDocumentWithIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (unint64_t)textUnitCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  documentCount = [(IMLibraryFragmentFilter *)selfCopy->_library documentCount];
  objc_sync_exit(selfCopy);

  return documentCount;
}

- (id)allIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allIdentifiers = [(IMLibraryFragmentFilter *)selfCopy->_library allIdentifiers];
  objc_sync_exit(selfCopy);

  return allIdentifiers;
}

- (id)_candidateIdentifiersForStringQueries:(id)queries
{
  queriesCopy = queries;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = queriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(IMLibraryFragmentFilter *)selfCopy->_library candidateIdentifiersForQuery:*(*(&v13 + 1) + 8 * i), v13];
        [v6 unionSet:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)candidateIdentifiersForStringQuery:(id)query
{
  queryCopy = query;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  caseRule = selfCopy->_caseRule;
  if (caseRule)
  {
    if (caseRule == 1)
    {
      lowercaseString = [queryCopy lowercaseString];
      uppercaseString = [NSArray arrayWithObject:lowercaseString];
      v9 = [(IMTextIndex *)selfCopy _candidateIdentifiersForStringQueries:uppercaseString];
    }

    else
    {
      lowercaseString = [queryCopy lowercaseString];
      uppercaseString = [queryCopy uppercaseString];
      capitalizedString = [queryCopy capitalizedString];
      v11 = [NSArray arrayWithObjects:lowercaseString, uppercaseString, capitalizedString, queryCopy, 0];
      v9 = [(IMTextIndex *)selfCopy _candidateIdentifiersForStringQueries:v11];
    }
  }

  else
  {
    lowercaseString = [NSArray arrayWithObject:queryCopy];
    v9 = [(IMTextIndex *)selfCopy _candidateIdentifiersForStringQueries:lowercaseString];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)isEmpty
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allIdentifiers = [(IMLibraryFragmentFilter *)selfCopy->_library allIdentifiers];
  v4 = [allIdentifiers count] == 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)dealloc
{
  [(IMTextIndex *)self _waitAndCleanupDispatchGroup];
  indexingDispatchGroupLock = self->_indexingDispatchGroupLock;
  self->_indexingDispatchGroupLock = 0;

  library = self->_library;
  self->_library = 0;

  v5.receiver = self;
  v5.super_class = IMTextIndex;
  [(IMTextIndex *)&v5 dealloc];
}

@end