@interface BLSHBacklightInactiveEnvironmentSession
+ (BLSHBacklightInactiveEnvironmentSession)sessionWithPresentation:(id)a3;
- (BLSHBacklightInactiveEnvironmentSession)initWithPresentation:(id)a3;
- (BLSHBacklightInactiveEnvironmentSessionUpdating)updater;
- (void)addEnvironmentsObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)hostEnvironment:(id)a3 clientDidUpdateAlwaysOnContentIs1hz:(BOOL)a4;
- (void)hostEnvironment:(id)a3 clientDidUpdateEnabled:(BOOL)a4;
- (void)hostEnvironment:(id)a3 clientDidUpdateSupportsAlwaysOn:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSet1HzFlipbook:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetAlwaysOnEnabledForEnvironment:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetCacheFlipbookOnDisplayWake:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetHighLuminanceAlwaysOn:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetLiveUpdating:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetUnrestrictedFramerateUpdates:(BOOL)a4;
- (void)hostEnvironment:(id)a3 invalidateContentForReason:(id)a4;
- (void)notifyEnvironmentObserversWithBlock:(uint64_t)a1;
- (void)notifyObserversWithBlock:(uint64_t)a1;
- (void)removeEnvironmentsObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)sessionDidEnd;
- (void)setPresentation:(id)a3;
- (void)setUpdater:(id)a3;
- (void)updaterDidBeginUpdateToBacklightState:(int64_t)a3;
- (void)updaterDidUpdateToPresentation:(id)a3;
@end

@implementation BLSHBacklightInactiveEnvironmentSession

+ (BLSHBacklightInactiveEnvironmentSession)sessionWithPresentation:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPresentation:v4];

  return v5;
}

- (BLSHBacklightInactiveEnvironmentSession)initWithPresentation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v25.receiver = self;
  v25.super_class = BLSHBacklightInactiveEnvironmentSession;
  v7 = [(BLSHBacklightInactiveEnvironmentSession *)&v25 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      [BLSHBacklightInactiveEnvironmentSession initWithPresentation:a2];
    }

    v7->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_presentation, a3);
    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    environmentObservers = v8->_environmentObservers;
    v8->_environmentObservers = v11;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [v6 presentationEntries];
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v21 + 1) + 8 * i) environment];
          [v18 addObserver:v8];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_ended"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHBacklightInactiveEnvironmentSession.m";
    v16 = 1024;
    v17 = 48;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHBacklightInactiveEnvironmentSessionUpdating)updater
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_updater;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setUpdater:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  updater = self->_updater;
  self->_updater = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPresentation:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [BLSHBacklightInactiveEnvironmentSession setPresentation:a2];
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  if ([v6 isEqual:self->_presentation])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    presentation = self->_presentation;
    v8 = v6;
    v9 = self->_presentation;
    self->_presentation = v8;
    v10 = presentation;

    os_unfair_lock_unlock(&self->_lock);
    v11 = [(BLSHBacklightInactiveEnvironmentSession *)self updater];
    [v11 inactiveEnvironmentSession:self updateToPresentation:v8];

    v12[4] = self;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__BLSHBacklightInactiveEnvironmentSession_setPresentation___block_invoke;
    v13[3] = &unk_27841F0B8;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__BLSHBacklightInactiveEnvironmentSession_setPresentation___block_invoke_2;
    v12[3] = &unk_27841F0B8;
    [(BLSHBacklightEnvironmentPresentation *)v8 differenceFromPresentation:v10 forEachRemoval:v13 forEachAddition:v12];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEnvironmentsObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_environmentObservers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeEnvironmentsObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_environmentObservers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updaterDidUpdateToPresentation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BLSHBacklightInactiveEnvironmentSession_updaterDidUpdateToPresentation___block_invoke;
  v6[3] = &unk_27841F0E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BLSHBacklightInactiveEnvironmentSession *)self notifyObserversWithBlock:v6];
}

void __81__BLSHBacklightInactiveEnvironmentSession_updaterDidBeginUpdateToBacklightState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inactiveEnvironmentSession:*(a1 + 32) didBeginUpdateToBacklightState:*(a1 + 40)];
  }
}

- (void)hostEnvironment:(id)a3 clientDidUpdateEnabled:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_clientDidUpdateEnabled___block_invoke;
  v8[3] = &unk_27841EFC8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(BLSHBacklightInactiveEnvironmentSession *)self notifyEnvironmentObserversWithBlock:v8];
}

void __82__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_clientDidUpdateEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) clientDidUpdateEnabled:*(a1 + 40)];
  }
}

void __91__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_clientDidUpdateSupportsAlwaysOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) clientDidUpdateSupportsAlwaysOn:*(a1 + 40)];
  }
}

void __95__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_clientDidUpdateAlwaysOnContentIs1hz___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) clientDidUpdateAlwaysOnContentIs1hz:*(a1 + 40)];
  }
}

void __86__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_invalidateContentForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) invalidateContentForReason:*(a1 + 40)];
  }
}

void __99__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_hostDidSetAlwaysOnEnabledForEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetAlwaysOnEnabledForEnvironment:*(a1 + 40)];
  }
}

void __82__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_hostDidSetLiveUpdating___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetLiveUpdating:*(a1 + 40)];
  }
}

void __98__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_hostDidSetUnrestrictedFramerateUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetUnrestrictedFramerateUpdates:*(a1 + 40)];
  }
}

void __81__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_hostDidSet1HzFlipbook___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSet1HzFlipbook:*(a1 + 40)];
  }
}

void __96__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_hostDidSetCacheFlipbookOnDisplayWake___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetCacheFlipbookOnDisplayWake:*(a1 + 40)];
  }
}

void __91__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_hostDidSetHighLuminanceAlwaysOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetHighLuminanceAlwaysOn:*(a1 + 40)];
  }
}

- (void)notifyObserversWithBlock:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v5 = [*(a1 + 8) allObjects];
    os_unfair_lock_unlock((a1 + 32));
    v6 = v5;
    OUTLINED_FUNCTION_7_0();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      OUTLINED_FUNCTION_5_2(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0, 0);
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v2)
          {
            objc_enumerationMutation(v6);
          }

          v25 = OUTLINED_FUNCTION_6_1(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29);
          v16 = v26(v25);
          ++v24;
        }

        while (v5 != v24);
        OUTLINED_FUNCTION_7_0();
        v16 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v5 = v16;
      }

      while (v16);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updaterDidBeginUpdateToBacklightState:(int64_t)a3
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v5[2] = __81__BLSHBacklightInactiveEnvironmentSession_updaterDidBeginUpdateToBacklightState___block_invoke;
  v5[3] = &unk_27841F108;
  v5[4] = v3;
  v5[5] = v4;
  [(BLSHBacklightInactiveEnvironmentSession *)v3 notifyObserversWithBlock:v5];
}

- (void)sessionDidEnd
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_ended = 1;
  v3 = [(BLSHBacklightEnvironmentPresentation *)self->_presentation presentationEntries];
  [(NSHashTable *)self->_environmentObservers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) environment];
        [v9 removeObserver:self];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__BLSHBacklightInactiveEnvironmentSession_sessionDidEnd__block_invoke;
  v11[3] = &unk_27841F130;
  v11[4] = self;
  [(BLSHBacklightInactiveEnvironmentSession *)self notifyObserversWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyEnvironmentObserversWithBlock:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v5 = [*(a1 + 16) allObjects];
    os_unfair_lock_unlock((a1 + 32));
    v6 = v5;
    OUTLINED_FUNCTION_7_0();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      OUTLINED_FUNCTION_5_2(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0, 0);
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v2)
          {
            objc_enumerationMutation(v6);
          }

          v25 = OUTLINED_FUNCTION_6_1(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29);
          v16 = v26(v25);
          ++v24;
        }

        while (v5 != v24);
        OUTLINED_FUNCTION_7_0();
        v16 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v5 = v16;
      }

      while (v16);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)hostEnvironment:(id)a3 clientDidUpdateSupportsAlwaysOn:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 clientDidUpdateAlwaysOnContentIs1hz:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 invalidateContentForReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v11[2] = __86__BLSHBacklightInactiveEnvironmentSession_hostEnvironment_invalidateContentForReason___block_invoke;
  v11[3] = &unk_27841EFF0;
  v12 = v6;
  v13 = v8;
  v9 = v8;
  v10 = v6;
  [(BLSHBacklightInactiveEnvironmentSession *)self notifyEnvironmentObserversWithBlock:v11];
}

- (void)hostEnvironment:(id)a3 hostDidSetAlwaysOnEnabledForEnvironment:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 hostDidSetLiveUpdating:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 hostDidSetUnrestrictedFramerateUpdates:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 hostDidSet1HzFlipbook:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 hostDidSetCacheFlipbookOnDisplayWake:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)hostEnvironment:(id)a3 hostDidSetHighLuminanceAlwaysOn:(BOOL)a4
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_1_6(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)initWithPresentation:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"presentation must not be nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"BLSHBacklightInactiveEnvironmentSession.m";
    v9 = 1024;
    v10 = 34;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setPresentation:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempted to set presentation to nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"BLSHBacklightInactiveEnvironmentSession.m";
    v9 = 1024;
    v10 = 65;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end