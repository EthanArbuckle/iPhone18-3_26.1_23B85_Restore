@interface BLSHCountingAssertionAttributeEntry
+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (BOOL)reactivateIfPossible;
- (NSString)description;
- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6;
- (void)activate;
- (void)invalidate;
@end

@implementation BLSHCountingAssertionAttributeEntry

- (void)activate
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    [(BLSHLocalCountingAssertionAttributeHandler *)WeakRetained incrementCountWithEntry:a1];
  }
}

- (BLSAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_attributeHandler);
  [(BLSHLocalCountingAssertionAttributeHandler *)WeakRetained decrementCountWithEntry:?];
}

+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHCountingAssertionAttributeEntry activateForAttribute:v14 fromAssertion:a2 forService:a1 attributeHandler:?];
  }

  v15 = [[BLSHCountingAssertionAttributeEntry alloc] initForAttribute:v11 fromAssertion:v12 forService:v13 attributeHandler:v14];
  [(BLSHCountingAssertionAttributeEntry *)v15 activate];

  return v15;
}

- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BLSHCountingAssertionAttributeEntry;
  v14 = [(BLSHCountingAssertionAttributeEntry *)&v17 init];
  p_isa = &v14->super.isa;
  if (v14)
  {
    objc_storeWeak(&v14->_attribute, v10);
    objc_storeWeak(p_isa + 3, v11);
    objc_storeWeak(p_isa + 4, v12);
    objc_storeWeak(p_isa + 1, v13);
  }

  return p_isa;
}

- (NSString)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__BLSHCountingAssertionAttributeEntry_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

void __50__BLSHCountingAssertionAttributeEntry_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v4 = [v2 appendObject:WeakRetained withName:@"attribute"];

  v5 = *(a1 + 32);
  v6 = objc_loadWeakRetained((*(a1 + 40) + 24));
  v7 = NSStringFromBLSAssertingObject();
  v8 = [v5 appendObject:v7 withName:@"assertion"];

  v9 = *(a1 + 32);
  v11 = objc_loadWeakRetained((*(a1 + 40) + 32));
  v10 = [v9 appendObject:v11 withName:@"service"];
}

- (BLSAssertionServiceResponding)assertion
{
  WeakRetained = objc_loadWeakRetained(&self->_assertion);

  return WeakRetained;
}

- (BLSHAssertionAttributeHandlerService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)reactivateIfPossible
{
  WeakRetained = objc_loadWeakRetained(&self->_attributeHandler);
  [(BLSHLocalCountingAssertionAttributeHandler *)WeakRetained incrementCountWithEntry:?];

  return 1;
}

+ (void)activateForAttribute:(uint64_t)a3 fromAssertion:forService:attributeHandler:.cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"attributeHandler:%@ is not a kindof BLSHLocalCountingAssertionAttributeHandler", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"BLSHLocalCountingAssertionAttributeHandler.m";
    v17 = 1024;
    v18 = 136;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end