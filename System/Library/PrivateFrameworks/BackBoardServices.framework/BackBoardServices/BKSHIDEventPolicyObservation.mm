@interface BKSHIDEventPolicyObservation
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventPolicyObservation)init;
- (BKSHIDEventPolicyObservation)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventPolicyObservation

- (void)_init
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventPolicyObservation cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = NSStringFromSelector(sel__init);
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138544642;
          v13 = v8;
          v14 = 2114;
          v15 = v10;
          v16 = 2048;
          v17 = v1;
          v18 = 2114;
          v19 = @"BKSHIDEventPolicyObservation.m";
          v20 = 1024;
          v21 = 60;
          v22 = 2114;
          v23 = v7;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v7 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186349098);
      }
    }

    v4 = +[BKSHIDEventDeferringSelectionPathIdentifier primary];
    v5 = v1[4];
    v1[4] = v4;

    v11.receiver = v1;
    v11.super_class = BKSHIDEventPolicyObservation;
    result = objc_msgSendSuper2(&v11, sel_init);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)hash
{
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  [(BKSHIDEventDeferringSelectionPathIdentifier *)self->_selectionPath hash];
  [(BKSHIDEventDeferringToken *)self->_token hash];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_pid];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_policyStatus];
  [v4 hash];

  self->_finalStringToken;

  return BSHashPurifyNS();
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventPolicyObservation *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 2) = *(v3 + 2);
      objc_storeStrong(_init + 2, *(v3 + 2));
      objc_storeStrong(of + 3, *(v3 + 3));
      objc_storeStrong(of + 4, *(v3 + 4));
      objc_storeStrong(of + 5, *(v3 + 5));
      of[6] = *(v3 + 6);
      *(of + 56) = *(v3 + 56);
    }
  }

  return of;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = [streamCopy appendInteger:self->_pid withName:@"pid"];
  v5 = [streamCopy appendObject:self->_display withName:@"display"];
  v6 = [streamCopy appendObject:self->_environment withName:@"environment"];
  v7 = [streamCopy appendObject:self->_selectionPath withName:@"selectionPath"];
  v8 = [streamCopy appendObject:self->_token withName:@"token"];
  v9 = [streamCopy appendInteger:self->_policyStatus withName:@"policyStatus"];
  v10 = [streamCopy appendBool:self->_finalStringToken withName:@"finalStringToken"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventPolicyObservation alloc];

  return [(BKSHIDEventPolicyObservation *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5[2] != self->_pid)
    {
      goto LABEL_10;
    }

    v7 = *(v5 + 2);
    display = self->_display;
    if (!BSEqualObjects())
    {
      goto LABEL_10;
    }

    v9 = v6[3];
    environment = self->_environment;
    if (BSEqualObjects() && (v11 = v6[4], selectionPath = self->_selectionPath, BSEqualObjects()) && (v13 = v6[5], token = self->_token, BSEqualObjects()) && v6[6] == self->_policyStatus)
    {
      v15 = *(v6 + 56) == self->_finalStringToken;
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_pid forKey:@"pid"];
  display = self->_display;
  if (display)
  {
    [coderCopy encodeObject:display forKey:@"display"];
  }

  environment = self->_environment;
  if (environment)
  {
    [coderCopy encodeObject:environment forKey:@"environment"];
  }

  selectionPath = self->_selectionPath;
  v7 = coderCopy;
  if (selectionPath)
  {
    [coderCopy encodeObject:selectionPath forKey:@"selectionPath"];
    v7 = coderCopy;
  }

  token = self->_token;
  if (token)
  {
    [coderCopy encodeObject:token forKey:@"token"];
    v7 = coderCopy;
  }

  [v7 encodeInteger:self->_policyStatus forKey:@"policyStatus"];
  [coderCopy encodeBool:self->_finalStringToken forKey:@"finalStringToken"];
}

- (BKSHIDEventPolicyObservation)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = BKSHIDEventPolicyObservation;
  coderCopy = coder;
  v4 = [(BKSHIDEventPolicyObservation *)&v15 init];
  v4->_pid = [coderCopy decodeIntegerForKey:{@"pid", v15.receiver, v15.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  display = v4->_display;
  v4->_display = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  environment = v4->_environment;
  v4->_environment = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionPath"];
  selectionPath = v4->_selectionPath;
  v4->_selectionPath = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  token = v4->_token;
  v4->_token = v11;

  v4->_policyStatus = [coderCopy decodeIntegerForKey:@"policyStatus"];
  v13 = [coderCopy decodeBoolForKey:@"finalStringToken"];

  v4->_finalStringToken = v13;
  return v4;
}

- (BKSHIDEventPolicyObservation)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventPolicyObservation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventPolicyObservation init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventPolicyObservation.m";
    v9 = 1024;
    v10 = 49;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventPolicyObservation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventPolicyObservation new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventPolicyObservation.m";
    v9 = 1024;
    v10 = 54;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventPolicyObservation *)[BKSMutableHIDEventPolicyObservation alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end