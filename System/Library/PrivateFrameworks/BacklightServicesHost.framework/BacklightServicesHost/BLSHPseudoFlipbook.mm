@interface BLSHPseudoFlipbook
- (BLSHPseudoFlipbook)init;
- (BLSHRenderedFlipbookFrame)frameOnGlass;
- (BLSHRenderedFlipbookFrame)lastRenderedFrame;
- (BOOL)cachesFramesOnExit;
- (BOOL)is1HzFlipbook;
- (BOOL)isPowerSavingEnabled;
- (NSArray)activeFrames;
- (id)cancelAllFramesWithError:(id *)a3;
- (uint64_t)lock_cullExpiredFrames;
- (unint64_t)memoryUsage;
- (void)collect;
- (void)init;
- (void)invalidate;
- (void)purge;
- (void)renderFrameForPresentation:(id)a3 dateSpecifier:(id)a4 onRenderBegin:(id)a5 onRenderComplete:(id)a6;
- (void)set1HzFlipbook:(BOOL)a3;
- (void)setCachesFramesOnExit:(BOOL)a3;
- (void)setPowerSavingEnabled:(BOOL)a3;
@end

@implementation BLSHPseudoFlipbook

- (BLSHPseudoFlipbook)init
{
  v8.receiver = self;
  v8.super_class = BLSHPseudoFlipbook;
  v2 = [(BLSHPseudoFlipbook *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB18] array];
    lock_activeFrames = v3->_lock_activeFrames;
    v3->_lock_activeFrames = v4;

    v3->_lock_nextframeID = 1;
    v6 = bls_flipbook_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHPseudoFlipbook *)v3 init];
    }
  }

  return v3;
}

- (BLSHRenderedFlipbookFrame)frameOnGlass
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = mach_continuous_time();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_lock_activeFrames;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 presentationTime] <= v3)
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BLSHRenderedFlipbookFrame)lastRenderedFrame
{
  v2 = [(BLSHPseudoFlipbook *)self activeFrames];
  v3 = [v2 lastObject];

  return v3;
}

- (NSArray)activeFrames
{
  os_unfair_lock_lock(&self->_lock);
  [(BLSHPseudoFlipbook *)self lock_cullExpiredFrames];
  v3 = [(NSMutableArray *)self->_lock_activeFrames copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)memoryUsage
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(BLSHPseudoFlipbook *)self activeFrames];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 += [v8 memoryUsage];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isPowerSavingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_powerSavingEnabled = self->_lock_powerSavingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return lock_powerSavingEnabled;
}

- (void)setPowerSavingEnabled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_powerSavingEnabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)is1HzFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbook = self->_lock_1HzFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_1HzFlipbook;
}

- (void)set1HzFlipbook:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_1HzFlipbook = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)cachesFramesOnExit
{
  os_unfair_lock_lock(&self->_lock);
  lock_cachesFramesOnExit = self->_lock_cachesFramesOnExit;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cachesFramesOnExit;
}

- (void)setCachesFramesOnExit:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cachesFramesOnExit = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)cancelAllFramesWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v6 = mach_continuous_time();
  lock_activeFrames = self->_lock_activeFrames;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__BLSHPseudoFlipbook_cancelAllFramesWithError___block_invoke;
  v11[3] = &__block_descriptor_40_e44_B32__0___BLSHRenderedFlipbookFrame__8Q16_B24l;
  v11[4] = v6;
  v8 = [(NSMutableArray *)lock_activeFrames indexOfObjectWithOptions:2 passingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_lock_activeFrames objectAtIndex:v8];
  }

  [(NSMutableArray *)self->_lock_activeFrames removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (!a3)
  {
    [BLSHPseudoFlipbook cancelAllFramesWithError:a2];
  }

  *a3 = 0;

  return v9;
}

- (void)collect
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[[self activeFrames] count] == 0", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)purge
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[[self activeFrames] count] == 0", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_lock_activeFrames removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (uint64_t)lock_cullExpiredFrames
{
  v13 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = mach_continuous_time();
    v3 = *(v1 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__BLSHPseudoFlipbook_lock_cullExpiredFrames__block_invoke;
    v8[3] = &__block_descriptor_40_e44_B32__0___BLSHRenderedFlipbookFrame__8Q16_B24l;
    v8[4] = v2;
    result = [v3 indexOfObjectWithOptions:2 passingTest:v8];
    if (result && result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = result;
      v6 = bls_flipbook_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v10 = v1;
        v11 = 2048;
        v12 = v5;
        _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p culling (%lu) frames", buf, 0x16u);
      }

      result = [*(v1 + 16) removeObjectsInRange:{0, v5}];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)renderFrameForPresentation:(id)a3 dateSpecifier:(id)a4 onRenderBegin:(id)a5 onRenderComplete:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(BLSHPseudoFlipbook *)self lock_cullExpiredFrames];
  v12 = [BLSHPseudoFlipbookFrame alloc];
  v13 = [v11 presentationDate];
  v14 = [v13 bls_machContinuousTime];
  ++self->_lock_nextframeID;
  v15 = [BLSHPseudoFlipbookFrame initWithPresentationTime:v12 frameId:"initWithPresentationTime:frameId:specifier:memoryUsage:" specifier:v14 memoryUsage:?];

  [(NSMutableArray *)self->_lock_activeFrames addObject:v15];
  os_unfair_lock_unlock(&self->_lock);
  v10[2](v10);

  v9[2](v9, v15, 0);
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p created %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllFramesWithError:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"error != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end