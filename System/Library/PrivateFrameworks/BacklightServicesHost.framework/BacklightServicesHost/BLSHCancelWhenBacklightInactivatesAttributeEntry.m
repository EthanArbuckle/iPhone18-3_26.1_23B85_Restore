@interface BLSHCancelWhenBacklightInactivatesAttributeEntry
- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
- (os_unfair_lock_s)activate;
- (void)cancelIfNeededForBacklightState:(uint64_t)a1;
- (void)deactivate;
- (void)invalidate;
@end

@implementation BLSHCancelWhenBacklightInactivatesAttributeEntry

- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v10.receiver = self;
  v10.super_class = BLSHCancelWhenBacklightInactivatesAttributeEntry;
  v5 = [(BLSValidWhenBacklightInactiveAttributeEntry *)&v10 initForAttribute:a3 fromAssertion:a4 forService:a5];
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

- (void)cancelIfNeededForBacklightState:(uint64_t)a1
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    v4 = *(a1 + 44);
    os_unfair_lock_unlock((a1 + 40));
    if (a2 != 2 && (v4 & 1) != 0)
    {
      v5 = [a1 service];
      v6 = [a1 assertion];
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277CF0828];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = @"canceled due to backlight inactive";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v10 = [v7 errorWithDomain:v8 code:12 userInfo:v9];
      [v5 cancelAssertion:v6 withError:v10];
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
  if (a1)
  {
    [*(a1 + 32) removeObserver:a1];
    os_unfair_lock_lock((a1 + 40));
    *(a1 + 44) = 0;

    os_unfair_lock_unlock((a1 + 40));
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