@interface BKSHIDEventDeferringPredicate
- (BKSHIDEventDeferringPredicate)init;
- (BKSHIDEventDeferringPredicate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEnvironment:(id)environment display:(id)display token:(id)token;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringPredicate

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  v4 = [(BKSHIDEventDisplay *)self->_display hash];
  return v3 ^ v4 ^ [(BKSHIDEventDeferringToken *)self->_token hash]^ 0x1A737;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__BKSHIDEventDeferringPredicate_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

id __62__BKSHIDEventDeferringPredicate_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:0];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:0 skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:0 skipIfNil:1];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && (environment = self->_environment, v8 = equalCopy->_environment, BSEqualObjects()) && (display = self->_display, v10 = equalCopy->_display, BSEqualObjects()))
    {
      token = self->_token;
      v12 = equalCopy->_token;
      v13 = BSEqualObjects();
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BKSHIDEventDeferringPredicate)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A250];
      v23 = *MEMORY[0x1E696A588];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringPredicate: subclasses are not allowed : %@", objc_opt_class(), v23];
      v24 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
      [coderCopy failWithError:v11];

LABEL_7:
      selfCopy = 0;
      goto LABEL_8;
    }
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  if (!v12)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A250];
    v25 = *MEMORY[0x1E696A588];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringPredicate: unknown environment : %@", 0];
    v26[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v20 = [v16 errorWithDomain:v17 code:4866 userInfo:v19];
    [coderCopy failWithError:v20];

    v9 = 0;
    goto LABEL_7;
  }

  v9 = v12;
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  self = [(BKSHIDEventDeferringPredicate *)self _initWithEnvironment:v9 display:v13 token:v14];

  selfCopy = self;
LABEL_8:

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  environment = self->_environment;
  coderCopy = coder;
  [coderCopy encodeObject:environment forKey:@"environment"];
  [coderCopy encodeObject:self->_display forKey:@"display"];
  [coderCopy encodeObject:self->_token forKey:@"token"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringPredicate allocWithZone:zone];
  environment = self->_environment;
  display = self->_display;
  token = self->_token;

  return [(BKSHIDEventDeferringPredicate *)v4 _initWithEnvironment:environment display:display token:token];
}

- (id)_initWithEnvironment:(id)environment display:(id)display token:(id)token
{
  v78 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  displayCopy = display;
  tokenCopy = token;
  v12 = environmentCopy;
  if (!v12)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"environment", v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v67 = v31;
      v68 = 2114;
      v69 = v33;
      v70 = 2048;
      selfCopy5 = self;
      v72 = 2114;
      v73 = @"BKSHIDEventDeferringPredicate.m";
      v74 = 1024;
      v75 = 33;
      v76 = 2114;
      v77 = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863847E0);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = MEMORY[0x1E696AEC0];
    classForCoder = [v13 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v36 = NSStringFromClass(classForCoder);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v34 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"environment", v36, v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v67 = v40;
      v68 = 2114;
      v69 = v42;
      v70 = 2048;
      selfCopy5 = self;
      v72 = 2114;
      v73 = @"BKSHIDEventDeferringPredicate.m";
      v74 = 1024;
      v75 = 33;
      v76 = 2114;
      v77 = v39;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638491CLL);
  }

  v14 = displayCopy;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v14 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v45 = NSStringFromClass(classForCoder2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [v43 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v45, v47];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(a2);
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544642;
        v67 = v49;
        v68 = 2114;
        v69 = v51;
        v70 = 2048;
        selfCopy5 = self;
        v72 = 2114;
        v73 = @"BKSHIDEventDeferringPredicate.m";
        v74 = 1024;
        v75 = 34;
        v76 = 2114;
        v77 = v48;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v48 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186384A58);
    }
  }

  v15 = tokenCopy;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v52 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v15 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v54 = NSStringFromClass(classForCoder3);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = [v52 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"token", v54, v56];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v58 = NSStringFromSelector(a2);
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138544642;
        v67 = v58;
        v68 = 2114;
        v69 = v60;
        v70 = 2048;
        selfCopy5 = self;
        v72 = 2114;
        v73 = @"BKSHIDEventDeferringPredicate.m";
        v74 = 1024;
        v75 = 35;
        v76 = 2114;
        v77 = v57;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v57 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186384B94);
    }
  }

  v16 = objc_opt_class();
  if (v16 != objc_opt_class())
  {
    v17 = objc_opt_class();
    if (v17 != objc_opt_class())
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringPredicate cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = NSStringFromSelector(a2);
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        *buf = 138544642;
        v67 = v62;
        v68 = 2114;
        v69 = v64;
        v70 = 2048;
        selfCopy5 = self;
        v72 = 2114;
        v73 = @"BKSHIDEventDeferringPredicate.m";
        v74 = 1024;
        v75 = 36;
        v76 = 2114;
        v77 = v61;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v61 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186384C80);
    }
  }

  v65.receiver = self;
  v65.super_class = BKSHIDEventDeferringPredicate;
  v18 = [(BKSHIDEventDeferringPredicate *)&v65 init];
  if (v18)
  {
    v19 = [v13 copy];
    environment = v18->_environment;
    v18->_environment = v19;

    v21 = [v14 copy];
    display = v18->_display;
    v18->_display = v21;

    v23 = [v15 copy];
    token = v18->_token;
    v18->_token = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BKSHIDEventDeferringPredicate)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeferringPredicate"];
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
    v16 = @"BKSHIDEventDeferringPredicate.m";
    v17 = 1024;
    v18 = 28;
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