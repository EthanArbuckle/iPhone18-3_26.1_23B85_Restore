@interface BKSSceneHostSettings
+ (BKSSceneHostSettings)new;
- (BKSSceneHostSettings)init;
- (BKSSceneHostSettings)initWithCoder:(id)coder;
- (BKSSceneHostSettings)initWithIdentifier:(id)identifier touchBehavior:(int64_t)behavior;
- (BOOL)isEqual:(id)equal;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSSceneHostSettings

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__BKSSceneHostSettings_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

void __53__BKSSceneHostSettings_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"identifier"];
  v2 = *(a1 + 32);
  v3 = NSStringFromBKSSceneHostTouchBehavior(*(*(a1 + 40) + 16));
  [v2 appendString:v3 withName:@"touchBehavior"];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"ident"];
  [coderCopy encodeInteger:self->_touchBehavior forKey:@"touchBehavior"];
}

- (BKSSceneHostSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
  v6 = [coderCopy decodeIntegerForKey:@"touchBehavior"];

  v7 = [(BKSSceneHostSettings *)self initWithIdentifier:v5 touchBehavior:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
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

    v9 = v7;

    v8 = v9 && (identifier = self->_identifier, v11 = v9->_identifier, BSEqualObjects()) && self->_touchBehavior == v9->_touchBehavior;
  }

  return v8;
}

- (BKSSceneHostSettings)initWithIdentifier:(id)identifier touchBehavior:(int64_t)behavior
{
  v51 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  if (!identifierCopy)
  {
    v16 = NSStringFromClass(v9);
    v17 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v40 = v18;
      v41 = 2114;
      v42 = v20;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BKSSceneHostSettings.m";
      v47 = 1024;
      v48 = 58;
      v49 = 2114;
      v50 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B77D0);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    classForCoder = [identifierCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v23 = NSStringFromClass(classForCoder);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v40 = v27;
      v41 = 2114;
      v42 = v29;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BKSSceneHostSettings.m";
      v47 = 1024;
      v48 = 58;
      v49 = 2114;
      v50 = v26;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B7908);
  }

  if ((behavior - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"behavior == BKSSceneHostTouchBehaviorInactive || behavior == BKSSceneHostTouchBehaviorForeground"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v40 = v31;
      v41 = 2114;
      v42 = v33;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BKSSceneHostSettings.m";
      v47 = 1024;
      v48 = 59;
      v49 = 2114;
      v50 = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B79FCLL);
  }

  v38.receiver = self;
  v38.super_class = BKSSceneHostSettings;
  v10 = [(BKSSceneHostSettings *)&v38 init];
  if (v10)
  {
    v11 = objc_opt_class();
    if (v11 != objc_opt_class())
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSSceneHostSettings cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138544642;
        v40 = v35;
        v41 = 2114;
        v42 = v37;
        v43 = 2048;
        selfCopy3 = v10;
        v45 = 2114;
        v46 = @"BKSSceneHostSettings.m";
        v47 = 1024;
        v48 = 63;
        v49 = 2114;
        v50 = v34;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v34 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B7AE4);
    }

    v12 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v10->_touchBehavior = behavior;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BKSSceneHostSettings)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not permitted"];
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
    v16 = @"BKSSceneHostSettings.m";
    v17 = 1024;
    v18 = 53;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSSceneHostSettings)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+new is not permitted"];
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
    v16 = @"BKSSceneHostSettings.m";
    v17 = 1024;
    v18 = 48;
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