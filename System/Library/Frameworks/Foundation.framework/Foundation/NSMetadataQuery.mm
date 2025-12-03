@interface NSMetadataQuery
+ (Class)_stitchingClass;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)willBeginPossibleCreationOfItemAtURL:(id)l;
+ (id)willBeginPossibleDeletionOfItemAtURL:(id)l;
+ (id)willBeginPossibleMoveOfItemAtURL:(id)l toURL:(id)rL;
+ (void)didEndPossibleFileOperation:(id)operation;
- (BOOL)_canModifyQueryOrObserversInCurrentContext;
- (BOOL)startQuery;
- (NSArray)groupedResults;
- (NSArray)groupingAttributes;
- (NSArray)results;
- (NSArray)searchScopes;
- (NSArray)sortDescriptors;
- (NSArray)valueListAttributes;
- (NSDictionary)valueLists;
- (NSMetadataQuery)init;
- (NSPredicate)predicate;
- (NSUInteger)indexOfResult:(id)result;
- (NSUInteger)resultCount;
- (id)_allAttributes;
- (id)_pendingChangeNotificationsArrayForKey:(id)key create:(BOOL)create;
- (id)_sortingAttributes;
- (id)resultAtIndex:(NSUInteger)idx;
- (id)valueOfAttribute:(NSString *)attrName forResultAtIndex:(NSUInteger)idx;
- (void)_disableAutoUpdates;
- (void)_enableAutoUpdates;
- (void)_inOriginalContextInvokeBlock:(id)block;
- (void)_noteNote1:(id)note1;
- (void)_noteNote2:(id)note2;
- (void)_noteNote3:(id)note3;
- (void)_noteNote4:(id)note4;
- (void)_postNotificationName:(id)name userInfo:(id)info;
- (void)_recreateQuery;
- (void)_resetQueryState;
- (void)_setBatchingParams;
- (void)_setExternalDocumentsBundleIdentifier:(id)identifier;
- (void)_update;
- (void)_validateInvocationContext;
- (void)_validatePredicate:(id)predicate withScopes:(id)scopes;
- (void)_zapResultArrayIfIdenticalTo:(id)to;
- (void)dealloc;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)enumerateResultsUsingBlock:(void *)block;
- (void)enumerateResultsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)setDelegate:(id)delegate;
- (void)setGroupingAttributes:(NSArray *)groupingAttributes;
- (void)setNotificationBatchingInterval:(NSTimeInterval)notificationBatchingInterval;
- (void)setOperationQueue:(NSOperationQueue *)operationQueue;
- (void)setPredicate:(NSPredicate *)predicate;
- (void)setSearchItems:(NSArray *)searchItems;
- (void)setSearchScopes:(NSArray *)searchScopes;
- (void)setSortDescriptors:(NSArray *)sortDescriptors;
- (void)setValueListAttributes:(NSArray *)valueListAttributes;
- (void)stopQuery;
@end

@implementation NSMetadataQuery

+ (Class)_stitchingClass
{
  if (qword_1ED43F418 != -1)
  {
    dispatch_once(&qword_1ED43F418, &__block_literal_global_25);
  }

  return qword_1ED43F410;
}

uint64_t __55__NSMetadataQuery_NSMetadataStitching___stitchingClass__block_invoke()
{
  qword_1ED43F410 = objc_lookUpClass("BRQuery");
  result = objc_opt_respondsToSelector();
  if ((result & 1) == 0)
  {
    qword_1ED43F410 = 0;
  }

  return result;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] set];
  if (([key isEqualToString:@"resultCount"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"valueLists") & 1) != 0 || objc_msgSend(key, "isEqualToString:", @"groupedResults"))
  {
    [v5 addObject:@"results"];
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___NSMetadataQuery;
  [v5 unionSet:{objc_msgSendSuper2(&v7, sel_keyPathsForValuesAffectingValueForKey_, key)}];
  return v5;
}

- (NSMetadataQuery)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSMetadataQuery;
  v2 = [(NSMetadataQuery *)&v4 init];
  if (qword_1ED43F420 != -1)
  {
    dispatch_once(&qword_1ED43F420, &__block_literal_global_646);
  }

  if (_MergedGlobals_7)
  {
    v2->_interval = 1.0;
    v2->_private[10] = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_private[1] = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_private[2] = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_private[3] = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_reserved = objc_alloc_init(_NSMetadataQueryPrivateIvars);
    LODWORD(v2->_flags) = v2->_flags & 0xFFFFFFE7 | 8;
  }

  else
  {

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];

  v3 = self->_private[5];
  if (v3)
  {
    if ((self->_flags & 2) == 0)
    {
      [v3 stop];
      flags = self->_flags;
      LODWORD(self->_flags) = flags | 2;
      if (flags)
      {
        if (-[NSMetadataQuery operationQueue](self, "operationQueue") || (v5 = self->_private[9], v5 != [MEMORY[0x1E695DFD0] currentRunLoop]) || _CFExecutableLinkedOnOrAfter())
        {
          if ([(NSMetadataQuery *)self operationQueue])
          {
            NSLog(@"%@ is being deallocated without first calling -stopQuery. To avoid race conditions, you should first invoke -stopQuery on self.operationQueue.", self);
          }

          else
          {
            NSLog(@"%@ is being deallocated without first calling -stopQuery. To avoid race conditions, you should first invoke -stopQuery on the run loop on which -startQuery was called", self);
          }
        }
      }
    }

    resultCount = [self->_private[5] resultCount];
    if (resultCount >= 1)
    {
      v7 = resultCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [self->_private[5] resultAtIndex:i];
        if (objc_opt_isKindOfClass())
        {
          [v9 _setQuery:0];
        }
      }
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"__kMDQueryWillChangeNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryProgressNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryDidUpdateNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryDidFinishNotification", self->_private[5]];

    self->_private[5] = 0;
  }

  self->_private[8] = 0;
  reserved = self->_reserved;
  if (reserved)
  {
  }

  v11.receiver = self;
  v11.super_class = NSMetadataQuery;
  [(NSMetadataQuery *)&v11 dealloc];
}

- (BOOL)_canModifyQueryOrObserversInCurrentContext
{
  if ((self->_flags & 3) != 1)
  {
    return 1;
  }

  if ([(NSMetadataQuery *)self operationQueue])
  {
    v3 = +[NSOperationQueue currentQueue];
    return v3 == [(NSMetadataQuery *)self operationQueue];
  }

  else
  {
    if (!self->_private[9])
    {
      return 0;
    }

    return [MEMORY[0x1E695DFD0] currentRunLoop] == self->_private[9];
  }
}

- (void)_validateInvocationContext
{
  if (![(NSMetadataQuery *)self _canModifyQueryOrObserversInCurrentContext])
  {
    NSLog(@"%@ has been started, but a modification to it was made from a different run loop or queue. Here's the backtrace: %@", self, +[NSThread callStackSymbols]);
  }
}

- (void)setDelegate:(id)delegate
{
  self->_private[8] = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  LODWORD(self->_flags) = self->_flags & 0xFFFFFFDF | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 64;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(self->_flags) = self->_flags & 0xFFFFFFBF | v5;
}

- (NSPredicate)predicate
{
  v2 = self->_private[0];

  return v2;
}

- (void)_validatePredicate:(id)predicate withScopes:(id)scopes
{
  if (predicate && [scopes count])
  {

    [predicate _validateForMetadataQueryScopes:scopes];
  }
}

- (void)setPredicate:(NSPredicate *)predicate
{
  if (self->_private[0] != predicate)
  {
    [(NSMetadataQuery *)self _validateInvocationContext];
    [(NSMetadataQuery *)self _validatePredicate:predicate withScopes:self->_private[10]];
    [(NSMetadataQuery *)self willChangeValueForKey:@"predicate"];

    self->_private[0] = [(NSPredicate *)predicate copyWithZone:0];
    [(NSMetadataQuery *)self didChangeValueForKey:@"predicate"];
    if ((self->_flags & 3) == 1)
    {

      [(NSMetadataQuery *)self _recreateQuery];
    }
  }
}

- (NSArray)sortDescriptors
{
  v2 = self->_private[1];

  return v2;
}

- (void)setSortDescriptors:(NSArray *)sortDescriptors
{
  if (self->_private[1] != sortDescriptors)
  {
    [(NSMetadataQuery *)self _validateInvocationContext];
    [(NSMetadataQuery *)self willChangeValueForKey:@"sortDescriptors"];

    self->_private[1] = [(NSArray *)sortDescriptors copy];
    [(NSMetadataQuery *)self didChangeValueForKey:@"sortDescriptors"];
    if ((self->_flags & 3) == 1)
    {

      [(NSMetadataQuery *)self _recreateQuery];
    }
  }
}

- (NSArray)valueListAttributes
{
  v2 = self->_private[2];

  return v2;
}

- (void)setValueListAttributes:(NSArray *)valueListAttributes
{
  if (self->_private[2] != valueListAttributes)
  {
    [(NSMetadataQuery *)self willChangeValueForKey:@"valueListAttributes"];

    self->_private[2] = [(NSArray *)valueListAttributes copy];
    [(NSMetadataQuery *)self didChangeValueForKey:@"valueListAttributes"];
    if ((self->_flags & 3) == 1)
    {

      [(NSMetadataQuery *)self _recreateQuery];
    }
  }
}

- (NSArray)groupingAttributes
{
  v2 = self->_private[3];

  return v2;
}

- (void)setGroupingAttributes:(NSArray *)groupingAttributes
{
  if (self->_private[3] != groupingAttributes)
  {
    [(NSMetadataQuery *)self _validateInvocationContext];
    [(NSMetadataQuery *)self willChangeValueForKey:@"groupingAttributes"];

    self->_private[3] = [(NSArray *)groupingAttributes copy];
    [(NSMetadataQuery *)self didChangeValueForKey:@"groupingAttributes"];
    if ((self->_flags & 3) == 1)
    {

      [(NSMetadataQuery *)self _recreateQuery];
    }
  }
}

- (id)_sortingAttributes
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_private[1];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [array addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "key")}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_allAttributes
{
  valueListAttributes = [(NSMetadataQuery *)self valueListAttributes];
  groupingAttributes = [(NSMetadataQuery *)self groupingAttributes];
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (valueListAttributes)
  {
    [array addObjectsFromArray:valueListAttributes];
  }

  if (groupingAttributes)
  {
    [v6 addObjectsFromArray:groupingAttributes];
  }

  [v6 addObjectsFromArray:{-[NSMetadataQuery _sortingAttributes](self, "_sortingAttributes")}];
  return v6;
}

- (void)setNotificationBatchingInterval:(NSTimeInterval)notificationBatchingInterval
{
  if (self->_interval != notificationBatchingInterval)
  {
    [(NSMetadataQuery *)self _validateInvocationContext];
    [(NSMetadataQuery *)self willChangeValueForKey:@"notificationBatchingInterval"];
    self->_interval = notificationBatchingInterval;
    [(NSMetadataQuery *)self _setBatchingParams];

    [(NSMetadataQuery *)self didChangeValueForKey:@"notificationBatchingInterval"];
  }
}

- (NSArray)searchScopes
{
  v2 = self->_private[10];

  return v2;
}

- (void)setSearchScopes:(NSArray *)searchScopes
{
  if (self->_private[10] != searchScopes)
  {
    [(NSMetadataQuery *)self _validateInvocationContext];
    [(NSMetadataQuery *)self _validatePredicate:self->_private[0] withScopes:searchScopes];
    [(NSMetadataQuery *)self willChangeValueForKey:@"searchScopes"];

    self->_private[10] = [(NSArray *)searchScopes copy];
    [(NSMetadataQuery *)self didChangeValueForKey:@"searchScopes"];
    if (!self->_private[0])
    {
      [(NSMetadataQuery *)self setPredicate:[NSPredicate predicateWithValue:1]];
    }

    if ((self->_flags & 3) == 1)
    {

      [(NSMetadataQuery *)self _recreateQuery];
    }
  }
}

- (void)setOperationQueue:(NSOperationQueue *)operationQueue
{
  if ([(NSMetadataQuery *)self operationQueue]!= operationQueue)
  {
    [(NSMetadataQuery *)self willChangeValueForKey:@"operationQueue"];
    v5 = self->_private[5];
    if (v5)
    {
      [v5 setQueryQueue:operationQueue];
    }

    objc_setAssociatedObject(self, sel_operationQueue, operationQueue, 0x301);

    [(NSMetadataQuery *)self didChangeValueForKey:@"operationQueue"];
  }
}

- (void)setSearchItems:(NSArray *)searchItems
{
  if ([(NSMetadataQuery *)self searchItems]!= searchItems)
  {
    [(NSMetadataQuery *)self _validateInvocationContext];
    [(NSMetadataQuery *)self willChangeValueForKey:@"searchItems"];
    [(NSMetadataQuery *)self willChangeValueForKey:@"searchItemURLs"];
    objc_setAssociatedObject(self, sel_searchItems, searchItems, 0x303);
    [(NSMetadataQuery *)self didChangeValueForKey:@"searchItemURLs"];
    [(NSMetadataQuery *)self didChangeValueForKey:@"searchItems"];
    if ((self->_flags & 3) == 1)
    {

      [(NSMetadataQuery *)self _recreateQuery];
    }
  }
}

- (void)_setExternalDocumentsBundleIdentifier:(id)identifier
{
  [(NSMetadataQuery *)self _validateInvocationContext];
  objc_setAssociatedObject(self, sel__externalDocumentsBundleIdentifier, identifier, 0x301);
  if ((self->_flags & 3) == 1)
  {

    [(NSMetadataQuery *)self _recreateQuery];
  }
}

- (void)_setBatchingParams
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = self->_private[5];
  if (v3)
  {
    v4 = (self->_interval * 1000.0);
    v5 = xmmword_1813DBBE0;
    v6 = 50000;
    v7 = v4;
    v8 = 50000;
    v9 = v4;
    [v3 setBatchingParameters:&v5];
  }
}

- (void)_postNotificationName:(id)name userInfo:(id)info
{
  [(NSMetadataQuery *)self operationQueue];
  v7 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v7 postNotificationName:name object:self userInfo:info];
}

- (void)_noteNote1:(id)note1
{
  flags = self->_flags;
  if ((flags & 0x80) == 0)
  {
    [(NSMetadataQuery *)self willChangeValueForKey:@"results"];
    flags = self->_flags;
  }

  LODWORD(self->_flags) = flags | 0x80;
}

- (void)_noteNote2:(id)note2
{
  LODWORD(self->_flags) &= ~0x80u;
  [(NSMetadataQuery *)self didChangeValueForKey:@"results"];
  userInfo = [note2 userInfo];

  [(NSMetadataQuery *)self _postNotificationName:@"NSMetadataQueryGatheringProgressNotification" userInfo:userInfo];
}

- (void)_noteNote3:(id)note3
{
  LODWORD(self->_flags) &= ~0x80u;
  [(NSMetadataQuery *)self didChangeValueForKey:@"results"];
  userInfo = [note3 userInfo];

  [(NSMetadataQuery *)self _postNotificationName:@"NSMetadataQueryDidUpdateNotification" userInfo:userInfo];
}

- (void)_noteNote4:(id)note4
{
  selfCopy = self;
  flags = self->_flags;
  if ((flags & 0x80) != 0)
  {
    LODWORD(self->_flags) = flags & 0xFFFFFF7F;
    [(NSMetadataQuery *)self didChangeValueForKey:@"results"];
  }

  [(NSMetadataQuery *)self willChangeValueForKey:@"isGathering"];
  LODWORD(self->_flags) &= ~4u;
  [(NSMetadataQuery *)self didChangeValueForKey:@"isGathering"];
  [(NSMetadataQuery *)self _postNotificationName:@"NSMetadataQueryDidFinishGatheringNotification" userInfo:0];
  [(NSMetadataQuery *)self willChangeValueForKey:@"results"];
  LODWORD(self->_flags) |= 0x80u;
}

- (void)_resetQueryState
{
  flags = self->_flags;
  if ((flags & 2) == 0)
  {
    if ((flags & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(NSMetadataQuery *)self willChangeValueForKey:@"isStarted"];
    LODWORD(self->_flags) &= ~1u;
    [(NSMetadataQuery *)self didChangeValueForKey:@"isStarted"];
    if ((self->_flags & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  [(NSMetadataQuery *)self willChangeValueForKey:@"isStopped"];
  LODWORD(self->_flags) &= ~2u;
  [(NSMetadataQuery *)self didChangeValueForKey:@"isStopped"];
  flags = self->_flags;
  if (flags)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((flags & 4) == 0)
  {
    return;
  }

LABEL_7:
  [(NSMetadataQuery *)self willChangeValueForKey:@"isGathering"];
  LODWORD(self->_flags) &= ~4u;

  [(NSMetadataQuery *)self didChangeValueForKey:@"isGathering"];
}

- (void)_recreateQuery
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = self->_private[5];
  if (v3)
  {
    if ((self->_flags & 0x80) == 0)
    {
      [(NSMetadataQuery *)self willChangeValueForKey:@"results"];
      LODWORD(self->_flags) |= 0x80u;
      v3 = self->_private[5];
    }

    [v3 stop];
    objc_sync_enter(self);
    if (*(self->_reserved + 1))
    {
      [(NSMetadataQuery *)self _disableAutoUpdates];
      *(self->_reserved + 1) = 0;
      flags = self->_flags;
      v5 = flags >= 0x10000;
      v6 = flags - 0x10000;
      if (v5)
      {
        LODWORD(self->_flags) = v6;
      }
    }

    objc_sync_exit(self);
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"__kMDQueryWillChangeNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryProgressNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryDidUpdateNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryDidFinishNotification", self->_private[5]];

    self->_private[5] = 0;
    [(NSMetadataQuery *)self didChangeValueForKey:@"results"];
    LODWORD(self->_flags) &= ~0x80u;
  }

  if (!self->_private[0])
  {

    [(NSMetadataQuery *)self _resetQueryState];
    return;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithArray:{-[NSMetadataQuery _sortingAttributes](self, "_sortingAttributes")}];
  v8 = v7;
  if (self->_private[3])
  {
    [v7 addObjectsFromArray:?];
  }

  v22 = v8;
  searchItems = [(NSMetadataQuery *)self searchItems];
  if (searchItems)
  {
    v10 = searchItems;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = *v27;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _item = [objc_alloc(objc_lookUpClass("BRItem")) initWithURL:v15];
        }

        else if (_NSIsNSString())
        {
          _item = [objc_alloc(objc_lookUpClass("BRItem")) initWithURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v15)}];
        }

        else
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          _item = [v15 _item];
        }

        v17 = _item;
        if (_item)
        {
          [v11 addObject:_item];
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (!v12)
      {
LABEL_28:
        self->_private[5] = [objc_alloc(objc_lookUpClass("BRQuery")) initWithQuery:self values:self->_private[2] sortingAttributes:v22 items:v11];

        v18 = self->_private[5];
        if (v18)
        {
          goto LABEL_29;
        }

LABEL_48:
        [(NSMetadataQuery *)self _resetQueryState];
        return;
      }
    }
  }

  v18 = [objc_alloc(objc_lookUpClass("BRQuery")) initWithQuery:self values:self->_private[2] sortingAttributes:v8 items:0];
  self->_private[5] = v18;
  if (!v18)
  {
    goto LABEL_48;
  }

LABEL_29:
  v23[0] = xmmword_1EEEFBEF0;
  v23[1] = *&off_1EEEFBF00;
  v24 = off_1EEEFBF10;
  [v18 setCreateResultFunction:__NSMetadataCreateResult withContext:self callbacks:v23];
  [self->_private[5] setCreateValueFunction:__NSMetadataCreateValue withContext:self callbacks:v23];
  if ([self->_private[1] count])
  {
    [self->_private[5] setSortComparator:__NSMetadataSortCompare withContext:self];
  }

  if ([self->_private[10] count])
  {
    [self->_private[5] setSearchScope:self->_private[10] withOptions:0];
  }

  operationQueue = [(NSMetadataQuery *)self operationQueue];
  if (operationQueue)
  {
    [self->_private[5] setQueryQueue:operationQueue];
  }

  [(NSMetadataQuery *)self _setBatchingParams];
  if (LODWORD(self->_flags) >= 0x10000)
  {
    [self->_private[5] disableUpdates];
  }

  if ([self->_private[10] containsObject:@"NSMetadataQueryExternalDocumentsScope"])
  {
    v20 = self->_private[5];
    _externalDocumentsBundleIdentifier = [(NSMetadataQuery *)self _externalDocumentsBundleIdentifier];
    if (objc_opt_respondsToSelector())
    {
      [v20 performSelector:sel_setExternalDocumentsBundleIdentifier_ withObject:_externalDocumentsBundleIdentifier];
    }
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:sel__noteNote1_ object:@"__kMDQueryWillChangeNotification", self->_private[5]];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:sel__noteNote2_ object:@"kMDQueryProgressNotification", self->_private[5]];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:sel__noteNote3_ object:@"kMDQueryDidUpdateNotification", self->_private[5]];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:sel__noteNote4_ object:@"kMDQueryDidFinishNotification", self->_private[5]];

  self->_private[9] = 0;
  if ([self->_private[5] executeWithOptions:0])
  {
    if (!operationQueue)
    {
      self->_private[9] = [MEMORY[0x1E695DFD0] currentRunLoop];
    }

    [(NSMetadataQuery *)self willChangeValueForKey:@"isGathering"];
    LODWORD(self->_flags) |= 4u;
    [(NSMetadataQuery *)self didChangeValueForKey:@"isGathering"];
    [(NSMetadataQuery *)self _postNotificationName:@"NSMetadataQueryDidStartGatheringNotification" userInfo:0];
  }

  else
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"__kMDQueryWillChangeNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryProgressNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryDidUpdateNotification", self->_private[5]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kMDQueryDidFinishNotification", self->_private[5]];

    self->_private[5] = 0;
    [(NSMetadataQuery *)self _resetQueryState];
  }
}

- (BOOL)startQuery
{
  if (!self->_private[0])
  {
    return 0;
  }

  if ((self->_flags & 3) == 1)
  {
    return 0;
  }

  [(NSMetadataQuery *)self _recreateQuery];
  if (!self->_private[5])
  {
    return 0;
  }

  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    [(NSMetadataQuery *)self willChangeValueForKey:@"isStopped"];
    LODWORD(self->_flags) &= ~2u;
    [(NSMetadataQuery *)self didChangeValueForKey:@"isStopped"];
    flags = self->_flags;
  }

  if ((flags & 1) == 0)
  {
    [(NSMetadataQuery *)self willChangeValueForKey:@"isStarted"];
    LODWORD(self->_flags) |= 1u;
    [(NSMetadataQuery *)self didChangeValueForKey:@"isStarted"];
  }

  return 1;
}

- (void)_inOriginalContextInvokeBlock:(id)block
{
  if ([(NSMetadataQuery *)self operationQueue])
  {
    v5 = +[NSOperationQueue currentQueue];
    if (v5 != [(NSMetadataQuery *)self operationQueue])
    {
      operationQueue = [(NSMetadataQuery *)self operationQueue];

      [(NSOperationQueue *)operationQueue addOperationWithBlock:block];
      return;
    }

    goto LABEL_11;
  }

  if (!self->_private[9] || (v7 = [MEMORY[0x1E695DFD0] currentRunLoop], v8 = self->_private[9], v7 == v8))
  {
LABEL_11:
    v10 = *(block + 2);

    v10(block);
    return;
  }

  getCFRunLoop = [v8 getCFRunLoop];
  CFRunLoopPerformBlock(getCFRunLoop, *MEMORY[0x1E695E8E0], block);

  CFRunLoopWakeUp(getCFRunLoop);
}

- (void)stopQuery
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (self->_private[5])
  {
    if ((self->_flags & 2) == 0)
    {
      [(NSMetadataQuery *)self willChangeValueForKey:@"isStopped"];
      [self->_private[5] stop];
      LODWORD(self->_flags) |= 2u;
      [(NSMetadataQuery *)self didChangeValueForKey:@"isStopped"];
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __28__NSMetadataQuery_stopQuery__block_invoke;
      v3[3] = &unk_1E69F2C00;
      v3[4] = self;
      [(NSMetadataQuery *)self _inOriginalContextInvokeBlock:v3];
    }
  }
}

uint64_t __28__NSMetadataQuery_stopQuery__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if ((v3 & 4) != 0)
  {
    [v2 willChangeValueForKey:@"isGathering"];
    *(*(a1 + 32) + 8) &= ~4u;
    [*(a1 + 32) didChangeValueForKey:@"isGathering"];
    v2 = *(a1 + 32);
    v3 = v2[2];
  }

  if ((v3 & 0x80) != 0)
  {
    v2[2] = v3 & 0xFFFFFF7F;
    [*(a1 + 32) didChangeValueForKey:@"results"];
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:*(a1 + 32) object:@"__kMDQueryWillChangeNotification", *(*(a1 + 32) + 64)];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:*(a1 + 32) object:@"kMDQueryProgressNotification", *(*(a1 + 32) + 64)];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:*(a1 + 32) object:@"kMDQueryDidUpdateNotification", *(*(a1 + 32) + 64)];
  v4 = +[NSNotificationCenter defaultCenter];

  return [NSNotificationCenter removeObserver:v4 name:"removeObserver:name:object:" object:?];
}

- (void)disableUpdates
{
  v2 = WORD1(self->_flags) << 16;
  WORD1(self->_flags) = (v2 + 0x10000) >> 16;
  if (!v2)
  {
    v3 = self->_private[5];
    if (v3)
    {
      [v3 disableUpdates];
    }
  }
}

- (void)enableUpdates
{
  flags = self->_flags;
  if (flags >= 0x10000)
  {
    LODWORD(self->_flags) = ((self->_flags & 0xFFFF0000) - 0x10000) & 0xFFFF0000 | LODWORD(self->_flags);
    if ((flags & 0xFFFF0000) == 0x10000)
    {
      v3 = self->_private[5];
      if (v3)
      {
        [v3 enableUpdates];
      }
    }
  }
}

- (void)_disableAutoUpdates
{
  v3 = self->_private[4];
  if (v3)
  {
    [v3 invalidate];

    self->_private[4] = 0;
  }

  else
  {
    v4 = self->_private[5];
    if (v4)
    {
      [v4 setSendHasUpdateNotification:0];
      v5 = +[NSNotificationCenter defaultCenter];
      v6 = self->_private[5];

      [(NSNotificationCenter *)v5 removeObserver:self name:@"kMDQueryHasUpdateNotification" object:v6];
    }
  }
}

- (void)_enableAutoUpdates
{
  if (self->_private[5])
  {
    if (objc_opt_respondsToSelector())
    {
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:sel__noteNote5_ object:@"kMDQueryHasUpdateNotification", self->_private[5]];
      v3 = self->_private[5];

      [v3 setSendHasUpdateNotification:1];
    }

    else
    {
      self->_private[4] = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__update selector:0 userInfo:1 repeats:0.1];
    }
  }
}

- (void)_update
{
  if (LODWORD(self->_flags) >= 0x10000 && self->_private[5])
  {
    objc_sync_enter(self);
    v3 = *(self->_reserved + 1);
    objc_sync_exit(self);
    [self->_private[5] enableUpdates];
    [self->_private[5] processUpdates];
    [self->_private[5] disableUpdates];
  }
}

- (NSUInteger)resultCount
{
  result = self->_private[5];
  if (result)
  {
    return [result resultCount];
  }

  return result;
}

- (id)resultAtIndex:(NSUInteger)idx
{
  v6 = self->_private[5];
  if (!v6 || [v6 resultCount] <= idx)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) out of bounds (%ld)", _NSMethodExceptionProem(self, a2), idx, -[NSMetadataQuery resultCount](self, "resultCount")), 0}];
    objc_exception_throw(v9);
  }

  v7 = self->_private[5];

  return [v7 resultAtIndex:idx];
}

- (void)enumerateResultsUsingBlock:(void *)block
{
  if (!block)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: block cannot be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v4);
  }

  [(NSMetadataQuery *)self enumerateResultsWithOptions:0 usingBlock:block];
}

- (void)enumerateResultsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  if (!block)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: block cannot be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  [(NSMetadataQuery *)self disableUpdates];
  v7 = [_NSMetadataQueryResultArray alloc];
  if (v7)
  {
    v7->_query = self;
  }

  [(_NSMetadataQueryResultArray *)v7 enumerateObjectsWithOptions:opts usingBlock:block];

  [(NSMetadataQuery *)self enableUpdates];
}

- (void)_zapResultArrayIfIdenticalTo:(id)to
{
  if (*(self->_reserved + 1) == to)
  {
    [(NSMetadataQuery *)self _disableAutoUpdates];
    *(self->_reserved + 1) = 0;

    [(NSMetadataQuery *)self enableUpdates];
  }
}

- (NSArray)results
{
  if (self->_private[5])
  {
    objc_sync_enter(self);
    v3 = *(self->_reserved + 1);
    if (!v3)
    {
      [(NSMetadataQuery *)self disableUpdates];
      v4 = [_NSMetadataQueryResultArray alloc];
      if (v4)
      {
        v4->_query = self;
      }

      *(self->_reserved + 1) = v4;
      [(NSMetadataQuery *)self _enableAutoUpdates];
      v3 = *(self->_reserved + 1);
    }

    v5 = v3;
    objc_sync_exit(self);

    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E695DEC8];

    return [v7 array];
  }
}

- (NSUInteger)indexOfResult:(id)result
{
  v3 = self->_private[5];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [v3 indexOfResult:result];
  if (v4 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (NSDictionary)valueLists
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_private[5])
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->_private[2];
    v21 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v21)
    {
      v19 = *v30;
      do
      {
        v3 = 0;
        do
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v3;
          v4 = *(*(&v29 + 1) + 8 * v3);
          array2 = [MEMORY[0x1E695DF70] array];
          v6 = [objc_msgSend(self->_private[5] valuesOfAttribute:{v4), "copy"}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v25;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v25 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = -[NSMetadataQueryAttributeValueTuple _init:attribute:value:count:]([NSMetadataQueryAttributeValueTuple alloc], "_init:attribute:value:count:", self, v4, *(*(&v24 + 1) + 8 * i), [self->_private[5] countOfResultsForAttributeName:v4 value:*(*(&v24 + 1) + 8 * i)]);
                [array2 addObject:v11];
              }

              v8 = [v6 countByEnumeratingWithState:&v24 objects:v23 count:16];
            }

            while (v8);
          }

          if (v6)
          {
            CFRelease(v6);
          }

          v12 = [self->_private[5] countOfResultsForAttributeName:v4 value:0];
          if (v12 >= 1)
          {
            v13 = v12;
            v14 = [NSMetadataQueryAttributeValueTuple alloc];
            v15 = -[NSMetadataQueryAttributeValueTuple _init:attribute:value:count:](v14, "_init:attribute:value:count:", self, v4, [MEMORY[0x1E695DFB0] null], v13);
            [array2 addObject:v15];
          }

          [array addObject:array2];
          v3 = v22 + 1;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v21);
    }

    return [MEMORY[0x1E695DF20] dictionaryWithObjects:array forKeys:self->_private[2]];
  }

  else
  {
    v17 = MEMORY[0x1E695DF20];

    return [v17 dictionary];
  }
}

- (NSArray)groupedResults
{
  if (self->_private[5] && [self->_private[3] count])
  {
    resultCount = [(NSMetadataQuery *)self resultCount];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = [self->_private[3] objectAtIndex:0];
    if (resultCount >= 1)
    {
      v6 = v5;
      for (i = 0; i != resultCount; ++i)
      {
        null = [(NSMetadataQuery *)self valueOfAttribute:v6 forResultAtIndex:i];
        if (!null)
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v9 = [dictionary objectForKey:null];
        if (!v9)
        {
          v9 = [[NSMetadataQueryResultGroup alloc] _init:self attributes:self->_private[3] index:0 value:null];
          [dictionary setObject:v9 forKey:null];
        }

        [v9 _addResult:i];
      }
    }

    return [dictionary allValues];
  }

  else
  {
    v11 = MEMORY[0x1E695DEC8];

    return [v11 array];
  }
}

- (id)valueOfAttribute:(NSString *)attrName forResultAtIndex:(NSUInteger)idx
{
  if (attrName == @"NSMetadataQueryResultContentRelevanceAttribute")
  {
    v7 = @"kMDQueryResultContentRelevance";
  }

  else
  {
    v7 = attrName;
  }

  v8 = self->_private[5];
  if (!v8 || [v8 resultCount] <= idx)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) out of bounds (%ld)", _NSMethodExceptionProem(self, a2), idx, -[NSMetadataQuery resultCount](self, "resultCount")), 0}];
    objc_exception_throw(v12);
  }

  result = [self->_private[5] attributeValueForName:v7 forResultAtIndex:idx];
  v10 = result;
  if ((self->_flags & 0x40) != 0)
  {
    v11 = self->_private[8];

    return [v11 metadataQuery:self replacementValueForAttribute:v7 value:v10];
  }

  return result;
}

- (id)_pendingChangeNotificationsArrayForKey:(id)key create:(BOOL)create
{
  createCopy = create;
  v10 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"results"] && -[NSMetadataQuery operationQueue](self, "operationQueue"))
  {
    result = *(self->_reserved + 2);
    if (result)
    {
      v8 = 1;
    }

    else
    {
      v8 = !createCopy;
    }

    if (!v8)
    {
      *(self->_reserved + 2) = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &NSKVOPendingNotificationStackIdentifierCallbacks, MEMORY[0x1E695E9E8]);
      return *(self->_reserved + 2);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSMetadataQuery;
    return [(NSMetadataQuery *)&v9 _pendingChangeNotificationsArrayForKey:key create:createCopy];
  }

  return result;
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  v11 = *MEMORY[0x1E69E9840];
  if ([path isEqualToString:@"results"] && !-[NSMetadataQuery _canModifyQueryOrObserversInCurrentContext](self, "_canModifyQueryOrObserversInCurrentContext"))
  {
    if ([(NSMetadataQuery *)self operationQueue])
    {
      v7 = +[NSOperationQueue currentQueue];
      name = [(NSOperationQueue *)v7 name];
      if (![(NSString *)name length])
      {
        label = dispatch_queue_get_label(0);
        if (label)
        {
          name = [NSString stringWithUTF8String:label];
        }
      }

      if (![(NSString *)name length])
      {
        if (v7)
        {
          name = [(NSOperationQueue *)v7 description];
        }

        else
        {
          name = @"an unknown queue";
        }
      }

      NSLog(@"%@: A Key-Value Observer of NSMetadataQuery.results for this instance was removed, while the query was still running, on %@ instead of NSMetadataQuery.operationQueue, which is %@. To avoid race conditions, you should either ensure the query is stopped before removing observers, or remove them on the NSMetadataQuery.operationQueue", self, name, [(NSMetadataQuery *)self operationQueue]);
    }

    else
    {
      NSLog(@"%@: A Key-Value Observer of NSMetadataQuery.results for this instance was removed, while the query was still running, on NSRunLoop %p instead of the NSRunLoop it was started on, which is %p. To avoid race conditions, you shouuld either ensure the query is stopped before removing observers, or remove them on the same NSRunLoop that the query was started on.", self, [MEMORY[0x1E695DFD0] currentRunLoop], self->_private[9]);
    }
  }

  v10.receiver = self;
  v10.super_class = NSMetadataQuery;
  [(NSMetadataQuery *)&v10 removeObserver:observer forKeyPath:path];
}

+ (id)willBeginPossibleMoveOfItemAtURL:(id)l toURL:(id)rL
{
  _stitchingClass = [self _stitchingClass];

  return [_stitchingClass willBeginPossibleMoveOfItemAtURL:l toURL:rL];
}

+ (id)willBeginPossibleDeletionOfItemAtURL:(id)l
{
  _stitchingClass = [self _stitchingClass];

  return [_stitchingClass willBeginPossibleDeletionOfItemAtURL:l];
}

+ (id)willBeginPossibleCreationOfItemAtURL:(id)l
{
  _stitchingClass = [self _stitchingClass];

  return [_stitchingClass willBeginPossibleCreationOfItemAtURL:l];
}

+ (void)didEndPossibleFileOperation:(id)operation
{
  _stitchingClass = [self _stitchingClass];

  [_stitchingClass didEndPossibleFileOperation:operation];
}

@end