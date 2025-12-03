@interface BLSHCancelWhenBacklightInactivatesAttributeEntry
- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service;
- (os_unfair_lock_s)activate;
- (void)cancelIfNeededForBacklightState:(uint64_t)state;
- (void)deactivate;
- (void)invalidate;
@end

@implementation BLSHCancelWhenBacklightInactivatesAttributeEntry

- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service
{
  v10.receiver = self;
  v10.super_class = BLSHCancelWhenBacklightInactivatesAttributeEntry;
  v5 = [(BLSValidWhenBacklightInactiveAttributeEntry *)&v10 initForAttribute:attribute fromAssertion:assertion forService:service];
  v6 = v5;
  if (v5)
  {
    v5[10] = 0;
    v8 = objc_alloc_init(MEMORY[0x277CF0880]);
    v9 = v6[4];
    v6[4] = v8;

    -[BLSHCancelWhenBacklightInactivatesAttributeEntry cancelIfNeededForBacklightState:](v6, [v8 backlightState]);
  }

  return v6;
}

- (void)cancelIfNeededForBacklightState:(uint64_t)state
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (state)
  {
    os_unfair_lock_lock((state + 40));
    v4 = *(state + 44);
    os_unfair_lock_unlock((state + 40));
    if (a2 != 2 && (v4 & 1) != 0)
    {
      service = [state service];
      assertion = [state assertion];
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277CF0828];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = @"canceled due to backlight inactive";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v10 = [v7 errorWithDomain:v8 code:12 userInfo:v9];
      [service cancelAssertion:assertion withError:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (os_unfair_lock_s)activate
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 10);
    LOBYTE(v1[11]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v1 + 10);
    v2 = *&v1[8]._os_unfair_lock_opaque;

    return [v2 addObserver:v1];
  }

  return result;
}

- (void)deactivate
{
  if (self)
  {
    [*(self + 32) removeObserver:self];
    os_unfair_lock_lock((self + 40));
    *(self + 44) = 0;

    os_unfair_lock_unlock((self + 40));
  }
}

- (void)invalidate
{
  if (self)
  {
    [(BLSHCancelWhenBacklightInactivatesAttributeEntry *)self deactivate];
  }
}

@end