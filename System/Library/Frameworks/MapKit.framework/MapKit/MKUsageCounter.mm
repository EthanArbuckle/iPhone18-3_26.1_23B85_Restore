@interface MKUsageCounter
+ (id)sharedCounter;
- (id)fieldNameForType:(unint64_t)type;
- (void)count:(unint64_t)count;
- (void)countUsageOfTypeIfNeeded:(unint64_t)needed;
- (void)createCountedEventsSetIfNeeded;
@end

@implementation MKUsageCounter

- (void)createCountedEventsSetIfNeeded
{
  if (!self->_countedEventsSet)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    countedEventsSet = self->_countedEventsSet;
    self->_countedEventsSet = v4;
  }
}

+ (id)sharedCounter
{
  if (sharedCounter_onceToken != -1)
  {
    dispatch_once(&sharedCounter_onceToken, &__block_literal_global_16917);
  }

  v3 = sharedCounter_sharedCounter;

  return v3;
}

void __31__MKUsageCounter_sharedCounter__block_invoke()
{
  v0 = objc_alloc_init(MKUsageCounter);
  v1 = sharedCounter_sharedCounter;
  sharedCounter_sharedCounter = v0;
}

- (void)countUsageOfTypeIfNeeded:(unint64_t)needed
{
  [(MKUsageCounter *)self createCountedEventsSetIfNeeded];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:needed];
  if (([(NSMutableSet *)self->_countedEventsSet containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_countedEventsSet addObject:v5];
    [(MKUsageCounter *)self count:needed];
  }
}

- (void)count:(unint64_t)count
{
  v4 = GEOApplicationIdentifierOrProcessName();
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __24__MKUsageCounter_count___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) fieldNameForType:*(a1 + 48)];
  [v2 setObject:v3 forKeyedSubscript:@"mktype"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"bundleID"];

  return v2;
}

- (id)fieldNameForType:(unint64_t)type
{
  if (type > 0x39)
  {
    return @"nil";
  }

  else
  {
    return off_1E76C8878[type];
  }
}

@end