@interface AMSMetricsFigaroBagConfguration
+ (id)configurationPromiseWithBag:(id)bag;
- (AMSMetricsFigaroBagConfguration)initWithMetricsDictionary:(id)dictionary;
- (NSArray)overrides;
- (id)_generateModifiersIfNeeded;
- (id)modifierForEvent:(id)event;
- (void)prepareForFlush;
@end

@implementation AMSMetricsFigaroBagConfguration

- (NSArray)overrides
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__43;
  v11 = __Block_byref_object_dispose__43;
  v12 = 0;
  queue = [(AMSMetricsFigaroBagConfguration *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AMSMetricsFigaroBagConfguration_overrides__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_generateModifiersIfNeeded
{
  selfCopy = self;
  v30 = *MEMORY[0x1E69E9840];
  queue = [(AMSMetricsFigaroBagConfguration *)self queue];
  dispatch_assert_queue_V2(queue);

  overrides = selfCopy->_overrides;
  if (overrides)
  {
    v5 = overrides;
    goto LABEL_23;
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  metricsDictionary = [(AMSMetricsFigaroBagConfguration *)selfCopy metricsDictionary];
  v7 = [metricsDictionary objectForKeyedSubscript:@"overrides"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;

          if (!v15)
          {
            goto LABEL_20;
          }

          v16 = [v15 objectForKeyedSubscript:@"fieldFilters"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v16;
          }

          else
          {
            v14 = 0;
          }

          if ([v14 count])
          {
            v17 = [AMSMetricsFigaroEventModifier alloc];
            [(AMSMetricsFigaroBagConfguration *)selfCopy metricsDictionary];
            v19 = v18 = selfCopy;
            v20 = [(AMSMetricsFigaroEventModifier *)v17 initWithMetricsDictionary:v19 overrideDictionary:v15];

            selfCopy = v18;
            [(NSArray *)v24 addObject:v20];
          }
        }

        else
        {
          v15 = 0;
        }

LABEL_20:
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v21 = selfCopy->_overrides;
  selfCopy->_overrides = v24;
  v22 = v24;

  v5 = selfCopy->_overrides;
LABEL_23:

  return v5;
}

uint64_t __44__AMSMetricsFigaroBagConfguration_overrides__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _generateModifiersIfNeeded];

  return MEMORY[0x1EEE66BB8]();
}

- (void)prepareForFlush
{
  queue = [(AMSMetricsFigaroBagConfguration *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSMetricsFigaroBagConfguration_prepareForFlush__block_invoke;
  v7[3] = &unk_1E73B3680;
  v7[4] = self;
  v4 = v7;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_6;
  block[3] = &unk_1E73B36D0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(queue, block);
}

- (AMSMetricsFigaroBagConfguration)initWithMetricsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = AMSMetricsFigaroBagConfguration;
  v5 = [(AMSMetricsFigaroBagConfguration *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    metricsDictionary = v5->_metricsDictionary;
    v5->_metricsDictionary = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maxBatchSizeBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;

      if (v9)
      {
        unsignedIntegerValue = [v9 unsignedIntegerValue];
LABEL_7:
        v5->_maxBatchSize = unsignedIntegerValue;
        v11 = [[AMSMetricsFigaroEventModifier alloc] initWithMetricsDictionary:dictionaryCopy overrideDictionary:0];
        defaultModifier = v5->_defaultModifier;
        v5->_defaultModifier = v11;

        v13 = dispatch_queue_create("com.apple.AMSMetricsFigaroBagConfguration", 0);
        queue = v5->_queue;
        v5->_queue = v13;

        goto LABEL_8;
      }
    }

    else
    {

      v9 = 0;
    }

    unsignedIntegerValue = 0x100000;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

+ (id)configurationPromiseWithBag:(id)bag
{
  if (bag)
  {
    v3 = [bag dictionaryForKey:@"metrics"];
    valuePromise = [v3 valuePromise];
    v5 = [valuePromise continueWithBlock:&__block_literal_global_94];
  }

  else
  {
    v3 = AMSError(12, @"Unable to get configuration from bag", @"Bag is nil.", 0);
    v5 = [AMSPromise promiseWithError:v3];
  }

  return v5;
}

id __63__AMSMetricsFigaroBagConfguration_configurationPromiseWithBag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (v4)
  {
    v5 = [[AMSMetricsFigaroBagConfguration alloc] initWithMetricsDictionary:v4];
    [AMSPromise promiseWithResult:v5];
  }

  else
  {
    v5 = AMSError(7, @"Figaro Bag Failure", @"Failed to locate the figaro bag configuration", a3);
    [AMSPromise promiseWithError:v5];
  }
  v6 = ;

  return v6;
}

- (id)modifierForEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (eventCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    overrides = [(AMSMetricsFigaroBagConfguration *)self overrides];
    v6 = [overrides countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(overrides);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 fieldFiltersMatchEvent:eventCopy])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [overrides countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      defaultModifier = v10;

      if (defaultModifier)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }
  }

  defaultModifier = [(AMSMetricsFigaroBagConfguration *)self defaultModifier];
LABEL_13:

  return defaultModifier;
}

@end