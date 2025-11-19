@interface OSLogStore
+ (OSLogStore)storeWithScope:(OSLogStoreScope)scope error:(NSError *)error;
+ (OSLogStore)storeWithURL:(NSURL *)url error:(NSError *)error;
- (OSLogEnumerator)entriesEnumeratorWithOptions:(OSLogEnumeratorOptions)options position:(OSLogPosition *)position predicate:(NSPredicate *)predicate error:(NSError *)error;
- (OSLogPosition)positionWithDate:(NSDate *)date;
- (OSLogPosition)positionWithTimeIntervalSinceEnd:(NSTimeInterval)seconds;
- (OSLogPosition)positionWithTimeIntervalSinceLatestBoot:(NSTimeInterval)seconds;
- (OSLogStore)init;
- (id)_constrainedEntriesEnumeratorWithOptions:(unint64_t)a3 position:(id)a4 predicate:(id)a5 error:(id *)a6;
- (id)initForFactory;
@end

@implementation OSLogStore

- (OSLogPosition)positionWithTimeIntervalSinceLatestBoot:(NSTimeInterval)seconds
{
  v3 = [[OSLogPosition alloc] initWithTimeIntervalSinceLatestBoot:seconds];

  return v3;
}

- (OSLogPosition)positionWithTimeIntervalSinceEnd:(NSTimeInterval)seconds
{
  v3 = [[OSLogPosition alloc] initWithEventSource:self->_source timeIntervalSinceEnd:seconds];

  return v3;
}

- (OSLogPosition)positionWithDate:(NSDate *)date
{
  v3 = date;
  v4 = [[OSLogPosition alloc] initWithDate:v3];

  return v4;
}

- (OSLogEnumerator)entriesEnumeratorWithOptions:(OSLogEnumeratorOptions)options position:(OSLogPosition *)position predicate:(NSPredicate *)predicate error:(NSError *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = position;
  v11 = predicate;
  if (self->_constraint)
  {
    v12 = [(OSLogStore *)self _constrainedEntriesEnumeratorWithOptions:options position:v10 predicate:v11 error:error];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D24440]) initWithSource:self->_source];
    v14 = v13;
    if (v11)
    {
      [v13 setFilterPredicate:v11];
    }

    v12 = [[OSLogSystemEnumerator alloc] initWithEventStream:v14 options:options position:v10];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_constrainedEntriesEnumeratorWithOptions:(unint64_t)a3 position:(id)a4 predicate:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = a4;
  v10 = [[OSLogCurrentProcessEnumerator alloc] initWithOptions:a3 predicate:v8 position:v9];

  return v10;
}

- (id)initForFactory
{
  v3.receiver = self;
  v3.super_class = OSLogStore;
  return [(OSLogStore *)&v3 init];
}

- (OSLogStore)init
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_23A002000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Invalid direct use of [OSLogStore init] (use factory instead)", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = OSLogStore;
  return [(OSLogStore *)&v4 init];
}

+ (OSLogStore)storeWithURL:(NSURL *)url error:(NSError *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = url;
  v6 = [[OSLogStore alloc] initForFactory];
  if (v6)
  {
    v7 = [MEMORY[0x277D24438] storeWithArchiveURL:v5];
    if (v7)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __33__OSLogStore_storeWithURL_error___block_invoke;
      v13[3] = &unk_278B462D0;
      v15 = error;
      v8 = v6;
      v14 = v8;
      [v7 prepareWithCompletionHandler:v13];
      if (v8[1])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v14;
    }

    else
    {
      if (!error)
      {
        v7 = 0;
        v9 = 0;
        goto LABEL_12;
      }

      v16 = *MEMORY[0x277CCA450];
      v17 = @"Cannot open logarchive";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D24460] code:-1 userInfo:v10];
      *error = v9 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  if (error)
  {
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Unable to alloc/init";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D24460] code:-1 userInfo:v7];
    *error = v9 = 0;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __33__OSLogStore_storeWithURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(a1 + 40))
    {
      v8 = v6;
      **(a1 + 40) = v7;
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
  }
}

+ (OSLogStore)storeWithScope:(OSLogStoreScope)scope error:(NSError *)error
{
  if (scope == OSLogStoreCurrentProcessIdentifier)
  {
    v6 = [[OSLogStore alloc] initForFactory];
    if (v6)
    {
      v6[4] = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end