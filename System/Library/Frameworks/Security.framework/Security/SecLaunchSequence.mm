@interface SecLaunchSequence
- (BOOL)firstLaunch;
- (SecLaunchSequence)initWithRocketName:(id)name;
- (id)eventsByTime;
- (id)eventsRelativeTime;
- (id)metricsReport;
- (void)addAttribute:(id)attribute value:(id)value;
- (void)addDependantLaunch:(id)launch child:(id)child;
- (void)addEvent:(id)event;
- (void)launch;
- (void)setFirstLaunch:(BOOL)launch;
@end

@implementation SecLaunchSequence

- (id)eventsByTime
{
  v30 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
  array = [MEMORY[0x1E695DF70] array];
  events = [(SecLaunchSequence *)obj events];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __33__SecLaunchSequence_eventsByTime__block_invoke;
  v26[3] = &unk_1E70D4BC0;
  v20 = v2;
  v27 = v20;
  v5 = array;
  v28 = v5;
  [events enumerateKeysAndObjectsUsingBlock:v26];

  [v5 sortUsingSelector:sel_compare_];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  attributes = [(SecLaunchSequence *)obj attributes];
  v7 = [attributes countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(attributes);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AEC0];
        attributes2 = [(SecLaunchSequence *)obj attributes];
        v13 = [attributes2 objectForKeyedSubscript:v10];
        v14 = [v13 description];
        v15 = [v11 stringWithFormat:@"attr: %@: %@", v10, v14, v20];
        [v5 addObject:v15];
      }

      v7 = [attributes countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = v28;
  v17 = v5;

  objc_sync_exit(obj);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __33__SecLaunchSequence_eventsByTime__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v6 date];
  v8 = [v5 stringFromDate:v7];
  v9 = [v6 name];
  v10 = [v6 counter];

  v11 = [v4 stringWithFormat:@"%@ - %@:%u", v8, v9, v10];

  [*(a1 + 40) addObject:v11];
}

- (id)eventsRelativeTime
{
  array = [MEMORY[0x1E695DF70] array];
  events = [(SecLaunchSequence *)self events];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__SecLaunchSequence_eventsRelativeTime__block_invoke;
  v17[3] = &unk_1E70D4C10;
  v18 = array;
  v5 = array;
  [events enumerateKeysAndObjectsUsingBlock:v17];

  [v5 sortUsingComparator:&__block_literal_global_1613];
  v6 = [v5 objectAtIndexedSubscript:0];
  date = [v6 date];

  array2 = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__SecLaunchSequence_eventsRelativeTime__block_invoke_3;
  v14[3] = &unk_1E70D4C58;
  v15 = date;
  v9 = array2;
  v16 = v9;
  v10 = date;
  [v5 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __39__SecLaunchSequence_eventsRelativeTime__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v9 name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = MEMORY[0x1E696AD98];
  v6 = [v9 date];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v7 = [v5 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"time"];

  if ([v9 counter])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "counter")}];
    [v3 setObject:v8 forKeyedSubscript:@"counter"];
  }

  [*(a1 + 40) addObject:v3];
}

uint64_t __39__SecLaunchSequence_eventsRelativeTime__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)launch
{
  obj = self;
  objc_sync_enter(obj);
  if (![(SecLaunchSequence *)obj launched])
  {
    [(SecLaunchSequence *)obj setLaunched:1];
  }

  objc_sync_exit(obj);
}

- (id)metricsReport
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(SecLaunchSequence *)self launched])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    dependantLaunches = [(SecLaunchSequence *)selfCopy dependantLaunches];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__SecLaunchSequence_metricsReport__block_invoke;
    v17[3] = &unk_1E70D4BE8;
    v17[4] = selfCopy;
    [dependantLaunches enumerateKeysAndObjectsUsingBlock:v17];

    v6 = [SecLaunchEvent alloc];
    if ([(SecLaunchSequence *)selfCopy firstLaunch])
    {
      v7 = @"first-launch";
    }

    else
    {
      v7 = @"re-launch";
    }

    v8 = [(SecLaunchEvent *)v6 initWithName:v7];
    events = [(SecLaunchSequence *)selfCopy events];
    name = [(SecLaunchEvent *)v8 name];
    [events setObject:v8 forKeyedSubscript:name];

    eventsRelativeTime = [(SecLaunchSequence *)selfCopy eventsRelativeTime];
    [dictionary setObject:eventsRelativeTime forKeyedSubscript:@"events"];

    attributes = [(SecLaunchSequence *)selfCopy attributes];
    v13 = [attributes count];

    if (v13)
    {
      attributes2 = [(SecLaunchSequence *)selfCopy attributes];
      [dictionary setObject:attributes2 forKeyedSubscript:@"attributes"];
    }

    objc_sync_exit(selfCopy);
    v15 = dictionary;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __34__SecLaunchSequence_metricsReport__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 launched])
  {
    v7 = [v6 events];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__SecLaunchSequence_metricsReport__block_invoke_2;
    v13[3] = &unk_1E70D4BC0;
    v8 = *(a1 + 32);
    v14 = v5;
    v15 = v8;
    v9 = v5;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];

    v10 = [v6 attributes];
    v11 = [*(a1 + 32) attributes];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"c:%@", v9];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

void __34__SecLaunchSequence_metricsReport__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = [a3 copy];
  v6 = MEMORY[0x1E696AEC0];
  v7 = *(a1 + 32);
  v8 = [v12 name];
  v9 = [v6 stringWithFormat:@"c:%@-%@", v7, v8];
  [v12 setName:v9];

  v10 = [*(a1 + 40) events];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"c:%@-%@", *(a1 + 32), v5];

  [v10 setObject:v12 forKeyedSubscript:v11];
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(SecLaunchSequence *)selfCopy launched])
    {
      events = [(SecLaunchSequence *)selfCopy events];
      v6 = [events count];

      if (v6 <= 0x64)
      {
        events2 = [(SecLaunchSequence *)selfCopy events];
        v8 = [events2 objectForKeyedSubscript:eventCopy];

        if (v8)
        {
          [(SecLaunchEvent *)v8 setCounter:[(SecLaunchEvent *)v8 counter]+ 1];
        }

        else
        {
          v8 = [[SecLaunchEvent alloc] initWithName:eventCopy];
        }

        events3 = [(SecLaunchSequence *)selfCopy events];
        [events3 setObject:v8 forKeyedSubscript:eventCopy];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)addAttribute:(id)attribute value:(id)value
{
  attributeCopy = attribute;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(SecLaunchSequence *)selfCopy launched])
    {
      attributes = [(SecLaunchSequence *)selfCopy attributes];

      if (!attributes)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [(SecLaunchSequence *)selfCopy setAttributes:dictionary];
      }

      attributes2 = [(SecLaunchSequence *)selfCopy attributes];
      [attributes2 setObject:valueCopy forKeyedSubscript:attributeCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)addDependantLaunch:(id)launch child:(id)child
{
  launchCopy = launch;
  childCopy = child;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(SecLaunchSequence *)selfCopy launched])
  {
    dependantLaunches = [(SecLaunchSequence *)selfCopy dependantLaunches];
    v9 = [dependantLaunches objectForKeyedSubscript:launchCopy];

    if (!v9)
    {
      dependantLaunches2 = [(SecLaunchSequence *)selfCopy dependantLaunches];
      [dependantLaunches2 setObject:childCopy forKeyedSubscript:launchCopy];

      launchOperation = [(SecLaunchSequence *)selfCopy launchOperation];
      launchOperation2 = [childCopy launchOperation];
      [launchOperation addDependency:launchOperation2];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setFirstLaunch:(BOOL)launch
{
  obj = self;
  objc_sync_enter(obj);
  if (![(SecLaunchSequence *)obj launched])
  {
    obj->_firstLaunch = launch;
  }

  objc_sync_exit(obj);
}

- (BOOL)firstLaunch
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  firstLaunch = selfCopy->_firstLaunch;
  objc_sync_exit(selfCopy);

  return firstLaunch;
}

- (SecLaunchSequence)initWithRocketName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SecLaunchSequence;
  v6 = [(SecLaunchSequence *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    events = v7->_events;
    v7->_events = dictionary;

    v10 = [[SecLaunchEvent alloc] initWithName:@"started"];
    [(NSMutableDictionary *)v7->_events setObject:v10 forKeyedSubscript:@"started"];

    v11 = objc_alloc_init(MEMORY[0x1E696AAE0]);
    launchOperation = v7->_launchOperation;
    v7->_launchOperation = v11;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dependantLaunches = v7->_dependantLaunches;
    v7->_dependantLaunches = dictionary2;
  }

  return v7;
}

@end