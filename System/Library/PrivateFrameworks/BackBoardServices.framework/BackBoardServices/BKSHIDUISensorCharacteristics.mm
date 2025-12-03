@interface BKSHIDUISensorCharacteristics
+ (BKSHIDUISensorCharacteristics)new;
- (BKSHIDUISensorCharacteristics)init;
- (BKSHIDUISensorCharacteristics)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopy;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDUISensorCharacteristics

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__BKSHIDUISensorCharacteristics_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:self block:v6];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(BKSMutableHIDUISensorCharacteristics);
  [(BKSMutableHIDUISensorCharacteristics *)v3 setHasDiscreteProximitySensor:self->_hasDiscreteProximitySensor];
  [(BKSMutableHIDUISensorCharacteristics *)v3 setSuggestedSystemApertureGracePeriodForScreenOff:self->_suggestedSystemApertureGracePeriodForScreenOff];
  return v3;
}

void __47__BKSHIDUISensorCharacteristics_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_hasDiscreteProximitySensor"];
  [v2 addField:"_suggestedSystemApertureGracePeriodForScreenOff"];
}

+ (BKSHIDUISensorCharacteristics)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDUISensorCharacteristics"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDUISensorCharacteristics.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[BKSHIDUISensorCharacteristics allocWithZone:?]];
  *(result + 16) = self->_hasDiscreteProximitySensor;
  *(result + 1) = self->_suggestedSystemApertureGracePeriodForScreenOff;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && *(v8 + 16) == self->_hasDiscreteProximitySensor && v8[1] == self->_suggestedSystemApertureGracePeriodForScreenOff;
  return v9;
}

- (unint64_t)hash
{
  self->_hasDiscreteProximitySensor;
  if (self->_suggestedSystemApertureGracePeriodForScreenOff)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v2 hash];
  }

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  hasDiscreteProximitySensor = self->_hasDiscreteProximitySensor;
  coderCopy = coder;
  [coderCopy encodeBool:hasDiscreteProximitySensor forKey:@"hasDiscreteProximitySensor"];
  [coderCopy encodeInteger:self->_suggestedSystemApertureGracePeriodForScreenOff forKey:@"suggestedSystemApertureGracePeriodForScreenOff"];
}

- (BKSHIDUISensorCharacteristics)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BKSHIDUISensorCharacteristics;
  coderCopy = coder;
  v4 = [(BKSHIDUISensorCharacteristics *)&v7 init];
  v4->_hasDiscreteProximitySensor = [coderCopy decodeBoolForKey:{@"hasDiscreteProximitySensor", v7.receiver, v7.super_class}];
  v5 = [coderCopy decodeIntegerForKey:@"suggestedSystemApertureGracePeriodForScreenOff"];

  v4->_suggestedSystemApertureGracePeriodForScreenOff = v5;
  return v4;
}

- (id)_init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDUISensorCharacteristics cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        selfCopy = self;
        v19 = 2114;
        v20 = @"BKSHIDUISensorCharacteristics.m";
        v21 = 1024;
        v22 = 40;
        v23 = 2114;
        v24 = v8;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B49E4);
    }
  }

  self->_suggestedSystemApertureGracePeriodForScreenOff = 0x7FFFFFFFFFFFFFFFLL;
  v12.receiver = self;
  v12.super_class = BKSHIDUISensorCharacteristics;
  result = [(BKSHIDUISensorCharacteristics *)&v12 init];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BKSHIDUISensorCharacteristics)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDUISensorCharacteristics"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDUISensorCharacteristics.m";
    v17 = 1024;
    v18 = 29;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end