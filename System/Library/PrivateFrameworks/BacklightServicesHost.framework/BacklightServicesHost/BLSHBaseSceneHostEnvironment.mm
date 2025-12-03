@interface BLSHBaseSceneHostEnvironment
- (BLSBacklightSceneVisualState)visualState;
- (BLSHBaseSceneHostEnvironment)initWithIdentifier:(id)identifier;
- (BOOL)cacheFlipbookOnDisplayWake;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)is1HzFlipbook;
- (BOOL)isAlwaysOnEnabledForEnvironment;
- (BOOL)isHighLuminanceAlwaysOn;
- (BOOL)isLiveUpdating;
- (NSDate)presentationDate;
- (NSString)description;
- (void)addObserver:(id)observer;
- (void)invalidateContentForReason:(id)reason;
- (void)notifyObserversWithBlock:(id)block;
- (void)removeObserver:(id)observer;
- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion;
- (void)set1HzFlipbookForAssertion:(BOOL)assertion;
- (void)setAlwaysOnEnabledForEnvironment:(BOOL)environment;
- (void)setCacheFlipbookOnDisplayWake:(BOOL)wake;
- (void)setDateSpecifier:(id)specifier;
- (void)setHighLuminanceAlwaysOn:(BOOL)on;
- (void)setLiveUpdating:(BOOL)updating;
- (void)setPresentationDate:(id)date;
- (void)setUnrestrictedFramerateUpdates:(BOOL)updates;
- (void)setVisualState:(id)state presentationDate:(id)date;
- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated;
- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier;
- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0;
- (void)withLock:(id)lock;
@end

@implementation BLSHBaseSceneHostEnvironment

- (BLSHBaseSceneHostEnvironment)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = BLSHBaseSceneHostEnvironment;
  v5 = [(BLSHBaseSceneHostEnvironment *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [identifierCopy copy];
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

- (void)withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAlwaysOnEnabledForEnvironment
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledForEnvironment = self->_lock_alwaysOnEnabledForEnvironment;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabledForEnvironment;
}

- (void)setAlwaysOnEnabledForEnvironment:(BOOL)environment
{
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledForEnvironment = self->_lock_alwaysOnEnabledForEnvironment;
  self->_lock_alwaysOnEnabledForEnvironment = environmentCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_alwaysOnEnabledForEnvironment != environmentCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__BLSHBaseSceneHostEnvironment_setAlwaysOnEnabledForEnvironment___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = environmentCopy;
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

- (void)setLiveUpdating:(BOOL)updating
{
  updatingCopy = updating;
  os_unfair_lock_lock(&self->_lock);
  lock_liveUpdating = self->_lock_liveUpdating;
  self->_lock_liveUpdating = updatingCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_liveUpdating != updatingCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__BLSHBaseSceneHostEnvironment_setLiveUpdating___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = updatingCopy;
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

- (void)setUnrestrictedFramerateUpdates:(BOOL)updates
{
  updatesCopy = updates;
  os_unfair_lock_lock(&self->_lock);
  lock_unrestrictedFramerateUpdates = self->_lock_unrestrictedFramerateUpdates;
  self->_lock_unrestrictedFramerateUpdates = updatesCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_unrestrictedFramerateUpdates != updatesCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__BLSHBaseSceneHostEnvironment_setUnrestrictedFramerateUpdates___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = updatesCopy;
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

- (void)set1HzFlipbookForAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbook = self->_lock_1HzFlipbook;
  self->_lock_1HzFlipbook = assertionCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_1HzFlipbook != assertionCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__BLSHBaseSceneHostEnvironment_set1HzFlipbookForAssertion___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = assertionCopy;
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

- (void)setCacheFlipbookOnDisplayWake:(BOOL)wake
{
  wakeCopy = wake;
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFlipbookOnDisplayWake = self->_lock_cacheFlipbookOnDisplayWake;
  self->_lock_cacheFlipbookOnDisplayWake = wakeCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cacheFlipbookOnDisplayWake != wakeCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__BLSHBaseSceneHostEnvironment_setCacheFlipbookOnDisplayWake___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = wakeCopy;
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

- (void)setHighLuminanceAlwaysOn:(BOOL)on
{
  onCopy = on;
  os_unfair_lock_lock(&self->_lock);
  lock_highLuminanceAlwaysOn = self->_lock_highLuminanceAlwaysOn;
  self->_lock_highLuminanceAlwaysOn = onCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_highLuminanceAlwaysOn != onCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__BLSHBaseSceneHostEnvironment_setHighLuminanceAlwaysOn___block_invoke;
    v6[3] = &unk_27841EFC8;
    v6[4] = self;
    v7 = onCopy;
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

- (void)invalidateContentForReason:(id)reason
{
  reasonCopy = reason;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__BLSHBaseSceneHostEnvironment_invalidateContentForReason___block_invoke;
  v6[3] = &unk_27841EFF0;
  v6[4] = self;
  v7 = reasonCopy;
  v5 = reasonCopy;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
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

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v10++));
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

- (void)setVisualState:(id)state presentationDate:(id)date
{
  stateCopy = state;
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_visualState = self->_lock_visualState;
  self->_lock_visualState = stateCopy;
  v9 = stateCopy;

  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0
{
  animatedCopy = animated;
  rampCopy = ramp;
  completeCopy = complete;
  updatedCopy = updated;
  stateCopy = state;
  date = [specifier date];
  [(BLSHBaseSceneHostEnvironment *)self setVisualState:stateCopy presentationDate:date];

  updatedCopy[2](updatedCopy);
  if (rampCopy)
  {
    v19.n128_u64[0] = 0;
    if (animatedCopy)
    {
      v19.n128_f64[0] = 0.25;
    }

    rampCopy[2](rampCopy, v19);
  }

  if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }
}

- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CF0848];
  completionCopy = completion;
  intervalCopy = interval;
  v11 = [v8 alloc];
  startDate = [intervalCopy startDate];
  v13 = [v11 initWithDate:startDate fidelity:0];
  v16[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  (*(completion + 2))(completionCopy, intervalCopy, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setPresentationDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDateSpecifier:(id)specifier
{
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  v4 = specifierCopy;
  if (specifierCopy)
  {
    fidelity = [specifierCopy fidelity];
    v6 = fidelity == [(BLSBacklightSceneVisualState *)self->_lock_visualState updateFidelity];
    v4 = specifierCopy;
    if (!v6)
    {
      v7 = [(BLSBacklightSceneVisualState *)self->_lock_visualState newVisualStateWithUpdateFidelity:fidelity];
      lock_visualState = self->_lock_visualState;
      self->_lock_visualState = v7;

      v4 = specifierCopy;
    }
  }

  date = [v4 date];
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = date;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated
{
  updatedCopy = updated;
  [(BLSHBaseSceneHostEnvironment *)self setDateSpecifier:specifier];
  updatedCopy[2]();
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
  selfCopy = self;
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

- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier
{
  stateCopy = state;
  date = [specifier date];
  [(BLSHBaseSceneHostEnvironment *)self setVisualState:stateCopy presentationDate:date];
}

@end