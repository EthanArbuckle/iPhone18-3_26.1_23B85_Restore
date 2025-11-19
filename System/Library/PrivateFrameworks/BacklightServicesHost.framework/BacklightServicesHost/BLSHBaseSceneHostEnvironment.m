@interface BLSHBaseSceneHostEnvironment
- (BLSBacklightSceneVisualState)visualState;
- (BLSHBaseSceneHostEnvironment)initWithIdentifier:(id)a3;
- (BOOL)cacheFlipbookOnDisplayWake;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)is1HzFlipbook;
- (BOOL)isAlwaysOnEnabledForEnvironment;
- (BOOL)isHighLuminanceAlwaysOn;
- (BOOL)isLiveUpdating;
- (NSDate)presentationDate;
- (NSString)description;
- (void)addObserver:(id)a3;
- (void)invalidateContentForReason:(id)a3;
- (void)notifyObserversWithBlock:(id)a3;
- (void)removeObserver:(id)a3;
- (void)requestDateSpecifiersForDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6;
- (void)set1HzFlipbookForAssertion:(BOOL)a3;
- (void)setAlwaysOnEnabledForEnvironment:(BOOL)a3;
- (void)setCacheFlipbookOnDisplayWake:(BOOL)a3;
- (void)setDateSpecifier:(id)a3;
- (void)setHighLuminanceAlwaysOn:(BOOL)a3;
- (void)setLiveUpdating:(BOOL)a3;
- (void)setPresentationDate:(id)a3;
- (void)setUnrestrictedFramerateUpdates:(BOOL)a3;
- (void)setVisualState:(id)a3 presentationDate:(id)a4;
- (void)updateToDateSpecifier:(id)a3 sceneContentsUpdated:(id)a4;
- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4;
- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4 animated:(BOOL)a5 triggerEvent:(id)a6 touchTargetable:(BOOL)a7 sceneContentsUpdated:(id)a8 performBacklightRamp:(id)a9 animationComplete:(id)a10;
- (void)withLock:(id)a3;
@end

@implementation BLSHBaseSceneHostEnvironment

- (BLSHBaseSceneHostEnvironment)initWithIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BLSHBaseSceneHostEnvironment;
  v5 = [(BLSHBaseSceneHostEnvironment *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [objc_alloc(MEMORY[0x277CF08C8]) initWithActiveAppearance:1 updateFidelity:3 adjustedLuminance:2];
    lock_visualState = v6->_lock_visualState;
    v6->_lock_visualState = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    lock_observers = v6->_lock_observers;
    v6->_lock_observers = v11;
  }

  return v6;
}

- (void)withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAlwaysOnEnabledForEnvironment
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledForEnvironment = self->_lock_alwaysOnEnabledForEnvironment;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabledForEnvironment;
}

- (void)setAlwaysOnEnabledForEnvironment:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledForEnvironment = self->_lock_alwaysOnEnabledForEnvironment;
  self->_lock_alwaysOnEnabledForEnvironment = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_alwaysOnEnabledForEnvironment != v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__BLSHBaseSceneHostEnvironment_setAlwaysOnEnabledForEnvironment___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = v3;
    [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
  }
}

void __65__BLSHBaseSceneHostEnvironment_setAlwaysOnEnabledForEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetAlwaysOnEnabledForEnvironment:*(a1 + 40)];
  }
}

- (BOOL)isLiveUpdating
{
  os_unfair_lock_lock(&self->_lock);
  lock_liveUpdating = self->_lock_liveUpdating;
  os_unfair_lock_unlock(&self->_lock);
  return lock_liveUpdating;
}

- (void)setLiveUpdating:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_liveUpdating = self->_lock_liveUpdating;
  self->_lock_liveUpdating = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_liveUpdating != v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__BLSHBaseSceneHostEnvironment_setLiveUpdating___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = v3;
    [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
  }
}

void __48__BLSHBaseSceneHostEnvironment_setLiveUpdating___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetLiveUpdating:*(a1 + 40)];
  }
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  os_unfair_lock_lock(&self->_lock);
  lock_unrestrictedFramerateUpdates = self->_lock_unrestrictedFramerateUpdates;
  os_unfair_lock_unlock(&self->_lock);
  return lock_unrestrictedFramerateUpdates;
}

- (void)setUnrestrictedFramerateUpdates:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_unrestrictedFramerateUpdates = self->_lock_unrestrictedFramerateUpdates;
  self->_lock_unrestrictedFramerateUpdates = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_unrestrictedFramerateUpdates != v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__BLSHBaseSceneHostEnvironment_setUnrestrictedFramerateUpdates___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = v3;
    [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
  }
}

void __64__BLSHBaseSceneHostEnvironment_setUnrestrictedFramerateUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetUnrestrictedFramerateUpdates:*(a1 + 40)];
  }
}

- (BOOL)is1HzFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbook = self->_lock_1HzFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_1HzFlipbook;
}

- (void)set1HzFlipbookForAssertion:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbook = self->_lock_1HzFlipbook;
  self->_lock_1HzFlipbook = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_1HzFlipbook != v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__BLSHBaseSceneHostEnvironment_set1HzFlipbookForAssertion___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = v3;
    [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
  }
}

void __59__BLSHBaseSceneHostEnvironment_set1HzFlipbookForAssertion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSet1HzFlipbook:*(a1 + 40)];
  }
}

- (BOOL)cacheFlipbookOnDisplayWake
{
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFlipbookOnDisplayWake = self->_lock_cacheFlipbookOnDisplayWake;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cacheFlipbookOnDisplayWake;
}

- (void)setCacheFlipbookOnDisplayWake:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFlipbookOnDisplayWake = self->_lock_cacheFlipbookOnDisplayWake;
  self->_lock_cacheFlipbookOnDisplayWake = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cacheFlipbookOnDisplayWake != v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__BLSHBaseSceneHostEnvironment_setCacheFlipbookOnDisplayWake___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = v3;
    [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
  }
}

void __62__BLSHBaseSceneHostEnvironment_setCacheFlipbookOnDisplayWake___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetCacheFlipbookOnDisplayWake:*(a1 + 40)];
  }
}

- (BOOL)isHighLuminanceAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  lock_highLuminanceAlwaysOn = self->_lock_highLuminanceAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return lock_highLuminanceAlwaysOn;
}

- (void)setHighLuminanceAlwaysOn:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_highLuminanceAlwaysOn = self->_lock_highLuminanceAlwaysOn;
  self->_lock_highLuminanceAlwaysOn = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_highLuminanceAlwaysOn != v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__BLSHBaseSceneHostEnvironment_setHighLuminanceAlwaysOn___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = v3;
    [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
  }
}

void __57__BLSHBaseSceneHostEnvironment_setHighLuminanceAlwaysOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetHighLuminanceAlwaysOn:*(a1 + 40)];
  }
}

- (void)invalidateContentForReason:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__BLSHBaseSceneHostEnvironment_invalidateContentForReason___block_invoke;
  v6[3] = &unk_27841EFF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BLSHBaseSceneHostEnvironment *)self notifyObserversWithBlock:v6];
}

void __59__BLSHBaseSceneHostEnvironment_invalidateContentForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) invalidateContentForReason:*(a1 + 40)];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BLSBacklightSceneVisualState)visualState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVisualState:(id)a3 presentationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_visualState = self->_lock_visualState;
  self->_lock_visualState = v6;
  v9 = v6;

  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = v7;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4 animated:(BOOL)a5 triggerEvent:(id)a6 touchTargetable:(BOOL)a7 sceneContentsUpdated:(id)a8 performBacklightRamp:(id)a9 animationComplete:(id)a10
{
  v11 = a5;
  v20 = a9;
  v15 = a10;
  v16 = a8;
  v17 = a3;
  v18 = [a4 date];
  [(BLSHBaseSceneHostEnvironment *)self setVisualState:v17 presentationDate:v18];

  v16[2](v16);
  if (v20)
  {
    v19.n128_u64[0] = 0;
    if (v11)
    {
      v19.n128_f64[0] = 0.25;
    }

    v20[2](v20, v19);
  }

  if (v15)
  {
    v15[2](v15);
  }
}

- (void)requestDateSpecifiersForDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CF0848];
  v9 = a6;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [v10 startDate];
  v13 = [v11 initWithDate:v12 fidelity:0];
  v16[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  (*(a6 + 2))(v9, v10, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setPresentationDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDateSpecifier:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = v11;
  if (v11)
  {
    v5 = [v11 fidelity];
    v6 = v5 == [(BLSBacklightSceneVisualState *)self->_lock_visualState updateFidelity];
    v4 = v11;
    if (!v6)
    {
      v7 = [(BLSBacklightSceneVisualState *)self->_lock_visualState newVisualStateWithUpdateFidelity:v5];
      lock_visualState = self->_lock_visualState;
      self->_lock_visualState = v7;

      v4 = v11;
    }
  }

  v9 = [v4 date];
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToDateSpecifier:(id)a3 sceneContentsUpdated:(id)a4
{
  v6 = a4;
  [(BLSHBaseSceneHostEnvironment *)self setDateSpecifier:a3];
  v6[2]();
}

- (NSDate)presentationDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentationDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __43__BLSHBaseSceneHostEnvironment_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [v4 description];

  return v5;
}

id __43__BLSHBaseSceneHostEnvironment_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"[self identifier]"];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 32) bls_shortLoggingString];
  v7 = [v5 appendObject:v6 withName:@"visualState"];

  v8 = *(a1 + 32);
  v9 = [*(*(a1 + 40) + 40) bls_shortLoggingString];
  v10 = [v8 appendObject:v9 withName:@"presentationDate" skipIfNil:1];

  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 29) withName:@"alwaysOnEnabled" ifEqualTo:0];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 28) withName:@"liveUpdating" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) withName:@"unrestrictedFramerate" ifEqualTo:1];
}

- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4
{
  v6 = a3;
  v7 = [a4 date];
  [(BLSHBaseSceneHostEnvironment *)self setVisualState:v6 presentationDate:v7];
}

@end