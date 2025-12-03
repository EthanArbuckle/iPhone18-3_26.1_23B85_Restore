@interface BKEventDeliveryChain
- (BOOL)isEqual:(id)equal;
- (id)resolutionPathForEventDescriptor:(uint64_t)descriptor;
- (uint64_t)deferringPath;
- (uint64_t)dispatchTarget;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation BKEventDeliveryChain

- (void)appendDescriptionToStream:(id)stream
{
  v16[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__BKEventDeliveryChain_appendDescriptionToStream___block_invoke;
  v13[3] = &unk_2784F7270;
  v5 = streamCopy;
  v14 = v5;
  selfCopy = self;
  [v5 appendProem:0 block:v13];
  dispatchTarget = self->_dispatchTarget;
  if (!dispatchTarget)
  {
    dispatchTarget = @"<nil>";
  }

  v7 = dispatchTarget;
  v12 = v7;
  if (self->_deferringPath)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&v12 count:1];
    [v8 addObjectsFromArray:self->_deferringPath];
  }

  else
  {
    v16[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  v9 = [v5 appendObject:v8 withName:0];

  if ([(NSSet *)self->_modalities count])
  {
    v10 = [v5 appendObject:self->_modalities withName:@"modalities"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (!v9)
    {
      goto LABEL_17;
    }

    identity = self->_identity;
    v11 = v9->_identity;
    if (!BSEqualObjects())
    {
      goto LABEL_17;
    }

    dispatchTarget = self->_dispatchTarget;
    v13 = v9->_dispatchTarget;
    if (!BSEqualObjects())
    {
      goto LABEL_17;
    }

    senderDescriptor = self->_senderDescriptor;
    v15 = v9->_senderDescriptor;
    if (!BSEqualObjects())
    {
      goto LABEL_17;
    }

    modalities = self->_modalities;
    v17 = v9->_modalities;
    if (!BSEqualObjects())
    {
      goto LABEL_17;
    }

    if (![(NSArray *)self->_deferringPath count]&& ![(NSArray *)v9->_deferringPath count]|| (deferringPath = self->_deferringPath, v19 = v9->_deferringPath, BSEqualObjects()))
    {
      v8 = 1;
    }

    else
    {
LABEL_17:
      v8 = 0;
    }
  }

  return v8;
}

- (id)resolutionPathForEventDescriptor:(uint64_t)descriptor
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (descriptor)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    display = [*(descriptor + 8) display];
    environment = [*(descriptor + 8) environment];
    v7 = MEMORY[0x277CF0638];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __57__BKEventDeliveryChain_resolutionPathForEventDescriptor___block_invoke;
    v38[3] = &unk_2784F6980;
    v38[4] = descriptor;
    v27 = environment;
    v39 = v27;
    v25 = display;
    v40 = v25;
    v8 = [v7 build:v38];
    v28 = v4;
    [v4 addObject:v8];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    descriptorCopy = descriptor;
    obj = *(descriptor + 40);
    v10 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          if (v14)
          {
            v14 = v14[2];
          }

          v15 = v14;
          v16 = v15;
          if (v3 && ([v15 eventDescriptorIsRestricted:v3] & 1) != 0)
          {

            goto LABEL_19;
          }

          predicate = [v16 predicate];
          display2 = [predicate display];

          if (!display2)
          {
            display2 = [MEMORY[0x277CF0698] nullDisplay];
          }

          target = [v16 target];
          v20 = target;
          if (target)
          {
            v21 = MEMORY[0x277CF0638];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __57__BKEventDeliveryChain_resolutionPathForEventDescriptor___block_invoke_2;
            v29[3] = &unk_2784F69A8;
            v30 = target;
            v31 = v27;
            v32 = display2;
            v33 = descriptorCopy;
            v22 = [v21 build:v29];
            [v28 addObject:v22];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    v28 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

void __57__BKEventDeliveryChain_resolutionPathForEventDescriptor___block_invoke(void *a1, void *a2)
{
  v3 = *(a1[4] + 24);
  v4 = a2;
  [v4 setPid:{objc_msgSend(v3, "pid")}];
  [v4 setEnvironment:a1[5]];
  [v4 setDisplay:a1[6]];
  [v4 setDispatchingTarget:*(a1[4] + 24)];
}

void __57__BKEventDeliveryChain_resolutionPathForEventDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setPid:{objc_msgSend(v3, "pid")}];
  v4 = [*(a1 + 32) token];
  [v5 setToken:v4];

  [v5 setEnvironment:*(a1 + 40)];
  [v5 setDisplay:*(a1 + 48)];
  [v5 setDispatchingTarget:*(*(a1 + 56) + 24)];
}

- (uint64_t)dispatchTarget
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)deferringPath
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

@end