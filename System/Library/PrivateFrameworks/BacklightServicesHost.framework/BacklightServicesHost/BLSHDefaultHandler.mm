@interface BLSHDefaultHandler
+ (id)handlerForKey:(id)key attributes:(id)attributes;
- (BLSHDefaultHandler)initWithKey:(id)key attributes:(id)attributes;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
- (void)updateForNewValue:(BOOL)value;
@end

@implementation BLSHDefaultHandler

+ (id)handlerForKey:(id)key attributes:(id)attributes
{
  attributesCopy = attributes;
  keyCopy = key;
  v8 = [[self alloc] initWithKey:keyCopy attributes:attributesCopy];

  return v8;
}

- (BLSHDefaultHandler)initWithKey:(id)key attributes:(id)attributes
{
  keyCopy = key;
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = BLSHDefaultHandler;
  v9 = [(BLSHDefaultHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_attributes, attributes);
  }

  return v10;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHDefaultsObserver.m";
    v9 = 1024;
    v10 = 130;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_key withName:@"key"];
  build = [v3 build];

  return build;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  v3 = self->_lock_assertion;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSAssertion *)v3 invalidate];
}

- (void)updateForNewValue:(BOOL)value
{
  valueCopy = value;
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (!invalidated)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_assertion = self->_lock_assertion;
    if (valueCopy)
    {
      if (lock_assertion)
      {
        v11 = 0;
      }

      else
      {
        v7 = objc_alloc(MEMORY[0x277CF0868]);
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ default set", self->_key];
        v9 = [v7 initWithExplanation:v8 attributes:self->_attributes];
        v10 = self->_lock_assertion;
        v11 = v9;
        self->_lock_assertion = v9;
      }

      os_unfair_lock_unlock(&self->_lock);
      [(BLSAssertion *)v11 acquireWithObserver:0];
    }

    else
    {
      self->_lock_assertion = 0;
      v11 = lock_assertion;

      os_unfair_lock_unlock(&self->_lock);
      [(BLSAssertion *)v11 invalidate];
    }
  }
}

@end