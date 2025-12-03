@interface ASDUpdateMetricsStore
- (ASDUpdateMetricsStore)init;
- (void)addPoll:(id)poll;
- (void)synchronize;
@end

@implementation ASDUpdateMetricsStore

- (ASDUpdateMetricsStore)init
{
  v41 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = ASDUpdateMetricsStore;
  v2 = [(ASDUpdateMetricsStore *)&v35 init];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
  lock = v2->_lock;
  v31 = v2;
  v2->_lock = v3;

  objc_opt_self();
  v5 = CFPreferencesCopyValue(@"UpdateMetrics", @"com.apple.appstored", @"mobile", *MEMORY[0x1E695E898]);
  v6 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v7)
  {
    v9 = 0;
    v32 = 0;
    v11 = 0.0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = 0;
  v32 = 0;
  v10 = *v37;
  v11 = 0.0;
  v12 = 0x1E7CDB000uLL;
  v13 = @"Manual";
  do
  {
    v14 = 0;
    v33 = v8;
    do
    {
      if (*v37 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v15 = [objc_alloc(*(v12 + 944)) initWithDictionary:*(*(&v36 + 1) + 8 * v14)];
      [v6 addObject:v15];
      reason = [v15 reason];
      if (([reason isEqualToString:v13] & 1) == 0)
      {
        v17 = v10;
        v18 = v6;
        v19 = v13;
        v20 = v12;
        reason2 = [v15 reason];
        v22 = [reason2 isEqualToString:@"Migration"];

        if (v22)
        {
          v12 = v20;
          v13 = v19;
          v6 = v18;
          v10 = v17;
          v8 = v33;
          goto LABEL_14;
        }

        if (v9)
        {
          ++v32;
          pollTime = [v15 pollTime];
          [pollTime timeIntervalSinceDate:v9];
          v11 = v11 + v24;
        }

        v12 = v20;
        [v15 pollTime];
        v9 = reason = v9;
        v13 = v19;
        v6 = v18;
        v10 = v17;
        v8 = v33;
      }

LABEL_14:
      ++v14;
    }

    while (v8 != v14);
    v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v8);
LABEL_18:

  v2 = v31;
  [(NSLock *)v31->_lock lock];
  if (v32 >= 1)
  {
    v31->_averagePollTime = v11 / v32;
  }

  if (v9)
  {
    v25 = [v9 copy];
    lastAutoPollDate = v31->_lastAutoPollDate;
    v31->_lastAutoPollDate = v25;
  }

  v27 = [v6 copy];
  metrics = v2->_metrics;
  v2->_metrics = v27;

  [(NSLock *)v2->_lock unlock];
LABEL_23:
  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)addPoll:(id)poll
{
  lock = self->_lock;
  pollCopy = poll;
  [(NSLock *)lock lock];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_metrics];
  [v8 addObject:pollCopy];

  if ([v8 count] >= 0x11)
  {
    [v8 removeObjectAtIndex:0];
  }

  v6 = [v8 copy];
  metrics = self->_metrics;
  self->_metrics = v6;

  [(NSLock *)self->_lock unlock];
  [(ASDUpdateMetricsStore *)self synchronize];
}

- (void)synchronize
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(NSLock *)self->_lock lock];
    v3 = [(NSArray *)self->_metrics copy];
    [(NSLock *)self->_lock unlock];
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionary = [*(*(&v14 + 1) + 8 * i) dictionary];
          [v4 addObject:dictionary];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  value = v11;
  objc_opt_self();
  CFPreferencesSetAppValue(@"UpdateMetrics", value, @"com.apple.appstored");

  CFPreferencesAppSynchronize(@"com.apple.appstored");
  v12 = *MEMORY[0x1E69E9840];
}

@end