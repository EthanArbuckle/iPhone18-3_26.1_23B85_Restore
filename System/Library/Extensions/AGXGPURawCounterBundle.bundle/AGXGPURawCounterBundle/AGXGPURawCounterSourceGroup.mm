@interface AGXGPURawCounterSourceGroup
- (id)subDivideCounterList:(id)list withOptions:(id)options;
- (void)dealloc;
- (void)setOptions:(id)options;
@end

@implementation AGXGPURawCounterSourceGroup

- (id)subDivideCounterList:(id)list withOptions:(id)options
{
  v52[2] = *MEMORY[0x29EDCA608];
  result = [list count];
  if (!result)
  {
    goto LABEL_59;
  }

  if ((*(self->_impl->var0 + 12))(self->_impl))
  {
    result = 0;
    goto LABEL_59;
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  array = [MEMORY[0x29EDB8DE8] array];
  context = objc_autoreleasePoolPush();
  v46 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:16];
  v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(list, "count")}];
  v52[0] = v8;
  v48 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(list, "count")}];
  v52[1] = v48;
  array2 = [MEMORY[0x29EDB8DE8] array];
  if ([list count])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = array2;
      if (([objc_msgSend(objc_msgSend(list objectAtIndexedSubscript:{v10), "name"), "hasPrefix:", @"GBL_USC_PROFILE_DATA_"}] & 1) == 0)
      {
        if ([objc_msgSend(objc_msgSend(list objectAtIndexedSubscript:{v10), "name"), "hasPrefix:", @"GRC_SHADER_PROFILER_DATA_"}])
        {
          v12 = array2;
        }

        else
        {
          v12 = v48;
        }
      }

      [v12 addObject:{objc_msgSend(list, "objectAtIndexedSubscript:", v10)}];
      v10 = v11++;
    }

    while ([list count] > v10);
  }

  v13 = v46;
  if ([v48 count])
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = [objc_msgSend(objc_msgSend(v48 objectAtIndexedSubscript:{v14), "name"), "hasPrefix:", @"GRC_"}];
      v17 = [v48 objectAtIndexedSubscript:v14];
      if (v16)
      {
        v18 = v46;
      }

      else
      {
        v18 = v8;
      }

      [v18 addObject:v17];
      v14 = v15++;
    }

    while ([v48 count] > v14);
  }

  v41 = [v8 count];
  v43 = array2;
  if (v41)
  {
    v19 = *MEMORY[0x29EDC1210];
    v47 = 0;
    v50 = [*(&self->super.super.isa + v19) count];
    v20 = 0x29EDB8000uLL;
    v21 = v48;
    v45 = array;
    while (1)
    {
      v51 = [*(v20 + 3560) arrayWithCapacity:{objc_msgSend(*(&self->super.super.isa + v19), "count", v41)}];
      (*(self->_impl->var0 + 11))(self->_impl);
      [v21 removeAllObjects];
      if ([*(&self->super.super.isa + v19) count])
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v25 = [objc_msgSend(*(&self->super.super.isa + v19) objectAtIndexedSubscript:{v22), "requestCounters:firstErrorIndex:", v13, 0}];
          v26 = *(v20 + 3560);
          if (v25)
          {
            array3 = [v26 arrayWithArray:v13];
          }

          else
          {
            array3 = [v26 array];
          }

          [v51 addObject:array3];
          v22 = v23++;
        }

        while ([*(&self->super.super.isa + v19) count] > v22);
      }

      v49 = v21;
      if (![v8 count])
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = [v8 objectAtIndexedSubscript:v27];
        v31 = v50 > 1;
        v32 = v50 > 1;
        if ([*(&self->super.super.isa + v19) count] > v32)
        {
          v32 = v50 > 1;
          v33 = v50 > 1;
          while (([objc_msgSend(*(&self->super.super.isa + v19) objectAtIndexedSubscript:{v32), "requestCounter:", v30}] & 1) == 0)
          {
            v32 = ++v33;
            v31 = v33;
            if ([*(&self->super.super.isa + v19) count] <= v33)
            {
              goto LABEL_35;
            }
          }

          v31 = v33;
        }

LABEL_35:
        v34 = [*(&self->super.super.isa + v19) count];
        if (v50 >= 2 && v34 == v32 && [objc_msgSend(*(&self->super.super.isa + v19) objectAtIndexedSubscript:{0), "requestCounter:", v30}])
        {
          v31 = 0;
        }

        if ([*(&self->super.super.isa + v19) count] <= v31)
        {
          [v49 addObject:v30];
        }

        else
        {
          [objc_msgSend(v51 objectAtIndexedSubscript:{v31), "addObject:", v30}];
          v29 |= 1 << v31;
        }

        v27 = ++v28;
      }

      while ([v8 count] > v28);
      v13 = v46;
      if (!v29)
      {
        break;
      }

      if ([*(&self->super.super.isa + v19) count])
      {
        v35 = 0;
        v36 = 1;
        do
        {
          if ((v29 & (1 << (v36 - 1))) == 0)
          {
            [objc_msgSend(v51 objectAtIndexedSubscript:{v35), "removeAllObjects"}];
          }

          v35 = v36++;
        }

        while ([*(&self->super.super.isa + v19) count] > v35);
      }

      array = v45;
      [v45 addObject:v51];
      v20 = 0x29EDB8000;
      if (![v49 count])
      {
        goto LABEL_55;
      }

      v8 = v52[++v47 & 1];
      v21 = v52[!(v47 & 1)];
    }

    [v43 addObjectsFromArray:v8];
    array = v45;
  }

  else
  {
    v37 = *MEMORY[0x29EDC1210];
    [array addObject:{objc_msgSend(MEMORY[0x29EDB8DE8], "arrayWithCapacity:", objc_msgSend(*(&self->super.super.isa + v37), "count"))}];
    if ([*(&self->super.super.isa + v37) count])
    {
      v38 = 1;
      do
      {
        [objc_msgSend(array objectAtIndexedSubscript:{0, v41), "addObject:", v46}];
      }

      while ([*(&self->super.super.isa + v37) count] > v38++);
    }

    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", 1, v41), @"passNum"}];
    [dictionary setObject:array forKeyedSubscript:@"passList"];
    if (![array2 count])
    {
      goto LABEL_55;
    }
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v43, "count")), @"invalidNum"}];
  [dictionary setObject:v43 forKeyedSubscript:@"invalidList"];
LABEL_55:
  objc_autoreleasePoolPop(context);
  if (v41)
  {
    (*(self->_impl->var0 + 11))(self->_impl);
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(array, "count")), @"passNum"}];
    [dictionary setObject:array forKeyedSubscript:@"passList"];
  }

  result = dictionary;
LABEL_59:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)setOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = AGXGPURawCounterSourceGroup;
  [(_GPURawCounterSourceGroup *)&v4 setOptions:options];
  (*(self->_impl->var0 + 4))(self->_impl, *(&self->super.super.isa + *MEMORY[0x29EDC1208]));
}

- (void)dealloc
{
  if (self->_impl)
  {
    AGXGPURawCounter::destroyInstance(self);
    self->_impl = 0;
  }

  sSourceGroupTriggerList = 0;
  v3.receiver = self;
  v3.super_class = AGXGPURawCounterSourceGroup;
  [(_GPURawCounterSourceGroup *)&v3 dealloc];
}

@end