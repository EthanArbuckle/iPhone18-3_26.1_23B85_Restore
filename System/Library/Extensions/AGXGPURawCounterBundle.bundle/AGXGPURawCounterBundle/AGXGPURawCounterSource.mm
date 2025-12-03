@interface AGXGPURawCounterSource
- (AGXGPURawCounterSource)initWithSourceGroup:(id)group impl:(Source *)impl;
- (BOOL)requestCounter:(id)counter;
- (BOOL)requestCounters:(id)counters firstErrorIndex:(unint64_t *)index;
- (BOOL)requestTriggers:(id)triggers firstErrorIndex:(unint64_t *)index;
- (void)dealloc;
- (void)resetRawDataPostProcessor;
- (void)setOptions:(id)options;
@end

@implementation AGXGPURawCounterSource

- (void)resetRawDataPostProcessor
{
  v14 = *MEMORY[0x29EDCA608];
  (*(self->_impl->var0 + 26))(self->_impl, 0);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  pollPostProcessBufferList = self->_pollPostProcessBufferList;
  v4 = [(NSMutableArray *)pollPostProcessBufferList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(pollPostProcessBufferList);
        }

        [*(*(&v9 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)pollPostProcessBufferList countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (BOOL)requestCounters:(id)counters firstErrorIndex:(unint64_t *)index
{
  (*(self->_impl->var0 + 7))(self->_impl, a2);

  self->_selectedCounterList = 0;
  if (![counters count])
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  while (-[AGXGPURawCounterSource requestCounter:](self, "requestCounter:", [counters objectAtIndexedSubscript:v7]))
  {
    v7 = ++v8;
    if ([counters count] <= v8)
    {
      goto LABEL_9;
    }
  }

  if (v8 == -1)
  {
LABEL_9:
    self->_selectedCounterList = [counters copy];
    return 1;
  }

  else
  {
    result = 0;
    if (index)
    {
      *index = v8;
    }
  }

  return result;
}

- (BOOL)requestCounter:(id)counter
{
  if ([objc_msgSend(counter "options")])
  {
    v5 = [objc_msgSend(objc_msgSend(counter "options")];
  }

  else
  {
    v5 = 32;
  }

  if ([objc_msgSend(counter "options")])
  {
    v6 = [objc_msgSend(objc_msgSend(counter "options")];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if ([objc_msgSend(counter "options")])
  {
    v7 = [objc_msgSend(objc_msgSend(counter "options")];
  }

  else
  {
    v7 = -1;
  }

  HIDWORD(v8) = v5 - 16;
  LODWORD(v8) = v5 - 16;
  if ((v8 >> 4) > 3 || v6 == -1 && v7 != -1 || v6 != -1 && v7 == -1)
  {
    return 0;
  }

  impl = self->_impl;
  v11 = v7;
  v12 = [objc_msgSend(counter "name")];
  v13 = *(impl->var0 + 8);

  return v13(impl, v12, v5, v6, v11);
}

- (BOOL)requestTriggers:(id)triggers firstErrorIndex:(unint64_t *)index
{
  self->_selectedTriggerList = 0;
  (*(self->_impl->var0 + 10))(self->_impl);
  if (![triggers count])
  {
    return 1;
  }

  if (![triggers count])
  {
    goto LABEL_17;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = [objc_msgSend(objc_msgSend(triggers objectAtIndexedSubscript:{v7), "name"), "isEqualToString:", @"TimerNClock"}];
    v10 = &sSourceTriggerNameToTypeMap;
    if ((v9 & 1) == 0)
    {
      v11 = [objc_msgSend(objc_msgSend(triggers objectAtIndexedSubscript:{v7), "name"), "isEqualToString:", @"TimerFixed"}];
      v10 = &off_29F3404B0;
      if ((v11 & 1) == 0)
      {
        v12 = [objc_msgSend(objc_msgSend(triggers objectAtIndexedSubscript:{v7), "name"), "isEqualToString:", @"KickBoundary"}];
        v10 = &off_29F3404C0;
        if ((v12 & 1) == 0)
        {
          v13 = [objc_msgSend(objc_msgSend(triggers objectAtIndexedSubscript:{v7), "name"), "isEqualToString:", @"CPMS"}];
          v10 = &off_29F3404D0;
          if ((v13 & 1) == 0)
          {
            v14 = [objc_msgSend(objc_msgSend(triggers objectAtIndexedSubscript:{v7), "name"), "isEqualToString:", @"KickTracing"}];
            v10 = &off_29F3404E0;
            if ((v14 & 1) == 0)
            {
              v15 = [objc_msgSend(objc_msgSend(triggers objectAtIndexedSubscript:{v7), "name"), "isEqualToString:", @"KickAndStateTracing"}];
              v10 = &off_29F3404F0;
              if (!v15)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (!(*(self->_impl->var0 + 11))(self->_impl, *(v10 + 2), [objc_msgSend(triggers objectAtIndexedSubscript:{v7), "options"}]))
    {
      break;
    }

    v7 = ++v8;
    if ([triggers count] <= v8)
    {
      goto LABEL_17;
    }
  }

  if (v8 == -1)
  {
LABEL_17:
    self->_selectedTriggerList = [triggers copy];
    return 1;
  }

  if (index)
  {
    *index = v8;
  }

  (*(self->_impl->var0 + 10))(self->_impl);
  return 0;
}

- (void)setOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = AGXGPURawCounterSource;
  [(_GPURawCounterSource *)&v4 setOptions:options];
  (*(self->_impl->var0 + 13))(self->_impl, *(&self->super.super.isa + *MEMORY[0x29EDC11E8]));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXGPURawCounterSource;
  [(_GPURawCounterSource *)&v3 dealloc];
}

- (AGXGPURawCounterSource)initWithSourceGroup:(id)group impl:(Source *)impl
{
  v7 = (*(impl->var0 + 3))(impl, a2);
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
  free(v7);
  v27.receiver = self;
  v27.super_class = AGXGPURawCounterSource;
  v9 = [(_GPURawCounterSource *)&v27 initWithSourceGroup:group name:v8];
  v10 = v9;
  if (v9)
  {
    v9->_impl = impl;
    v11 = objc_autoreleasePoolPush();
    v26 = 0;
    v12 = (*(v10->_impl->var0 + 4))(v10->_impl, &v26);
    if (v12)
    {
      v13 = v12;
      v25 = v11;
      v14 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v12];
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v26 + v15;
        v18 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*(v26 + v15)];
        v19 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*(v17 + 1)];
        -[NSArray setObject:atIndexedSubscript:](v14, "setObject:atIndexedSubscript:", [objc_alloc(MEMORY[0x29EDC11D0]) initWithName:v18 description:v19 valueType:*(v17 + 4) != 0], v16++);
        v15 += 24;
      }

      while (v13 != v16);
      v10->_counterList = v14;
      free(v26);
      v11 = v25;
    }

    v20 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if ((*(v10->_impl->var0 + 9))(v10->_impl))
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"TimerNClock"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 2) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"TimerFixed"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 4) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"KickBoundary"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 8) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"CPMS"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 0x10) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"KickTracing"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 0x20) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"KickAndStateTracing"]);
    }

    v10->_triggerList = v20;
    v21 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v22 = (*(v10->_impl->var0 + 14))(v10->_impl);
    v23 = v22;
    if (v22)
    {
      [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_ShaderProfiler"];
      if ((v23 & 2) == 0)
      {
LABEL_20:
        if ((v23 & 4) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_20;
    }

    [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_KickTimestamp"];
    if ((v23 & 4) == 0)
    {
LABEL_21:
      if ((v23 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_28:
    [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_SWResetOnRead"];
    if ((v23 & 8) == 0)
    {
LABEL_22:
      if ((v23 & 0x10) == 0)
      {
LABEL_24:
        *(&v10->super.super.isa + *MEMORY[0x29EDC11E0]) = v21;
        objc_autoreleasePoolPop(v11);
        return v10;
      }

LABEL_23:
      [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_CliqueAdvanceReason"];
      goto LABEL_24;
    }

LABEL_29:
    [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_APSOptions"];
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  return v10;
}

@end