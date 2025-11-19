@interface QLPUAnimationGroup
+ (id)animationGroupWithAnimations:(id)a3;
+ (void)popAnimationGroup:(id)a3;
+ (void)pushAnimationGroup:(id)a3;
- (BOOL)isReadyToComplete;
- (QLPUAnimationGroup)superAnimationGroup;
- (double)elapsedTime;
- (id)description;
- (void)addSubAnimationGroup:(id)a3;
- (void)complete;
- (void)completeIfNeeded;
- (void)dealloc;
- (void)finishImmediately;
- (void)setCompletionHandler:(id)a3;
- (void)setElapsedTime:(double)a3;
- (void)setSuperAnimationGroup:(id)a3;
@end

@implementation QLPUAnimationGroup

+ (id)animationGroupWithAnimations:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(QLPUAnimationGroup);
  [QLPUAnimationGroup pushAnimationGroup:v4];
  v3[2](v3);

  [QLPUAnimationGroup popAnimationGroup:v4];

  return v4;
}

+ (void)pushAnimationGroup:(id)a3
{
  v4 = a3;
  if (__rootAnimationGroup)
  {
    [__currentAnimationGroup addSubAnimationGroup:v4];
  }

  else
  {
    objc_storeStrong(&__rootAnimationGroup, a3);
  }

  v5 = __currentAnimationGroup;
  __currentAnimationGroup = v4;
}

+ (void)popAnimationGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 superAnimationGroup];
  v5 = __currentAnimationGroup;
  __currentAnimationGroup = v4;

  v6 = __rootAnimationGroup;
  if (v6 == v3)
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
  v2 = [(QLPUAnimationGroup *)self subAnimationGroups];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 elapsedTime];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setElapsedTime:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(QLPUAnimationGroup *)self subAnimationGroups];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setElapsedTime:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addSubAnimationGroup:(id)a3
{
  v8 = a3;
  v4 = [(QLPUAnimationGroup *)self subAnimationGroups];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    subAnimationGroups = self->_subAnimationGroups;
    self->_subAnimationGroups = v5;
  }

  v7 = [(QLPUAnimationGroup *)self subAnimationGroups];
  [v7 addObject:v8];

  [v8 setSuperAnimationGroup:self];
}

- (void)setSuperAnimationGroup:(id)a3
{
  obj = a3;
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
  v3 = [(QLPUAnimationGroup *)self isPaused];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(QLPUAnimationGroup *)self subAnimationGroups];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v13 + 1) + 8 * i) isReadyToComplete])
          {
            v4 = 0;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(QLPUAnimationGroup *)self superAnimationGroup];
  v4 = v3;
  if (v3)
  {
    [v3 completeIfNeeded];
  }

  else if ([(QLPUAnimationGroup *)self isReadyToComplete])
  {
    [(QLPUAnimationGroup *)self complete];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(QLPUAnimationGroup *)self subAnimationGroups];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * i) complete];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__QLPUAnimationGroup_setCompletionHandler___block_invoke;
    v9[3] = &unk_278B58460;
    v9[4] = self;
    v10 = v4;
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
  v3 = [(QLPUAnimationGroup *)self completionHandler];
  if (v3)
  {
    v4 = v3;
    [(QLPUAnimationGroup *)self setCompletionHandler:0];
    v4[2](v4);
    v3 = v4;
  }
}

- (void)finishImmediately
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(QLPUAnimationGroup *)self subAnimationGroups];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) finishImmediately];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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