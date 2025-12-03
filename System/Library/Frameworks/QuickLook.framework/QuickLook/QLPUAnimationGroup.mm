@interface QLPUAnimationGroup
+ (id)animationGroupWithAnimations:(id)animations;
+ (void)popAnimationGroup:(id)group;
+ (void)pushAnimationGroup:(id)group;
- (BOOL)isReadyToComplete;
- (QLPUAnimationGroup)superAnimationGroup;
- (double)elapsedTime;
- (id)description;
- (void)addSubAnimationGroup:(id)group;
- (void)complete;
- (void)completeIfNeeded;
- (void)dealloc;
- (void)finishImmediately;
- (void)setCompletionHandler:(id)handler;
- (void)setElapsedTime:(double)time;
- (void)setSuperAnimationGroup:(id)group;
@end

@implementation QLPUAnimationGroup

+ (id)animationGroupWithAnimations:(id)animations
{
  animationsCopy = animations;
  v4 = objc_alloc_init(QLPUAnimationGroup);
  [QLPUAnimationGroup pushAnimationGroup:v4];
  animationsCopy[2](animationsCopy);

  [QLPUAnimationGroup popAnimationGroup:v4];

  return v4;
}

+ (void)pushAnimationGroup:(id)group
{
  groupCopy = group;
  if (__rootAnimationGroup)
  {
    [__currentAnimationGroup addSubAnimationGroup:groupCopy];
  }

  else
  {
    objc_storeStrong(&__rootAnimationGroup, group);
  }

  v5 = __currentAnimationGroup;
  __currentAnimationGroup = groupCopy;
}

+ (void)popAnimationGroup:(id)group
{
  groupCopy = group;
  superAnimationGroup = [groupCopy superAnimationGroup];
  v5 = __currentAnimationGroup;
  __currentAnimationGroup = superAnimationGroup;

  v6 = __rootAnimationGroup;
  if (v6 == groupCopy)
  {
    __rootAnimationGroup = 0;
  }
}

- (void)dealloc
{
  v3 = [(NSMutableArray *)self->_subAnimationGroups copy];
  if ([v3 count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__QLPUAnimationGroup_dealloc__block_invoke;
    block[3] = &unk_278B57190;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v4.receiver = self;
  v4.super_class = QLPUAnimationGroup;
  [(QLPUAnimationGroup *)&v4 dealloc];
}

void __29__QLPUAnimationGroup_dealloc__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        [v6 setSuperAnimationGroup:{0, v8}];
        [v6 completeIfNeeded];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (double)elapsedTime
{
  subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];
  firstObject = [subAnimationGroups firstObject];

  if (firstObject)
  {
    [firstObject elapsedTime];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setElapsedTime:(double)time
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];
  v5 = [subAnimationGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subAnimationGroups);
        }

        [*(*(&v10 + 1) + 8 * v8++) setElapsedTime:time];
      }

      while (v6 != v8);
      v6 = [subAnimationGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addSubAnimationGroup:(id)group
{
  groupCopy = group;
  subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];

  if (!subAnimationGroups)
  {
    array = [MEMORY[0x277CBEB18] array];
    subAnimationGroups = self->_subAnimationGroups;
    self->_subAnimationGroups = array;
  }

  subAnimationGroups2 = [(QLPUAnimationGroup *)self subAnimationGroups];
  [subAnimationGroups2 addObject:groupCopy];

  [groupCopy setSuperAnimationGroup:self];
}

- (void)setSuperAnimationGroup:(id)group
{
  obj = group;
  WeakRetained = objc_loadWeakRetained(&self->_superAnimationGroup);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_superAnimationGroup, obj);

    v5 = obj;
    if (!obj)
    {
      [(QLPUAnimationGroup *)self completeIfNeeded];
      v5 = 0;
    }
  }
}

- (BOOL)isReadyToComplete
{
  v18 = *MEMORY[0x277D85DE8];
  isPaused = [(QLPUAnimationGroup *)self isPaused];
  if (isPaused)
  {
    v4 = 0;
  }

  else
  {
    v5 = isPaused;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];
    v7 = [subAnimationGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v4 = !v5;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subAnimationGroups);
          }

          if (![*(*(&v13 + 1) + 8 * i) isReadyToComplete])
          {
            v4 = 0;
            goto LABEL_14;
          }
        }

        v8 = [subAnimationGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 1;
    }

LABEL_14:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)completeIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  superAnimationGroup = [(QLPUAnimationGroup *)self superAnimationGroup];
  v4 = superAnimationGroup;
  if (superAnimationGroup)
  {
    [superAnimationGroup completeIfNeeded];
  }

  else if ([(QLPUAnimationGroup *)self isReadyToComplete])
  {
    [(QLPUAnimationGroup *)self complete];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];
    v6 = [subAnimationGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(subAnimationGroups);
          }

          [*(*(&v11 + 1) + 8 * i) complete];
        }

        v7 = [subAnimationGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__QLPUAnimationGroup_setCompletionHandler___block_invoke;
    v9[3] = &unk_278B58460;
    v9[4] = self;
    v10 = handlerCopy;
    v6 = [v9 copy];
    completionHandler = self->_completionHandler;
    self->_completionHandler = v6;

    v8 = v10;
  }

  else
  {
    v8 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)complete
{
  completionHandler = [(QLPUAnimationGroup *)self completionHandler];
  if (completionHandler)
  {
    v4 = completionHandler;
    [(QLPUAnimationGroup *)self setCompletionHandler:0];
    v4[2](v4);
    completionHandler = v4;
  }
}

- (void)finishImmediately
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];
  v3 = [subAnimationGroups countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(subAnimationGroups);
        }

        [*(*(&v8 + 1) + 8 * v6++) finishImmediately];
      }

      while (v4 != v6);
      v4 = [subAnimationGroups countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v27.receiver = self;
  v27.super_class = QLPUAnimationGroup;
  v4 = [(QLPUAnimationGroup *)&v27 description];
  v5 = [v3 stringWithFormat:@"%@ {\n", v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(QLPUAnimationGroup *)self subAnimationGroups];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) description];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v10 componentsSeparatedByString:@"\n"];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v5 appendFormat:@"  %@\n", *(*(&v19 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  [v5 appendString:@"}"];
  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (QLPUAnimationGroup)superAnimationGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_superAnimationGroup);

  return WeakRetained;
}

@end