@interface BKSHIDEventDeferringResolution
+ (id)build:(id)build;
- (BKSHIDEventDeferringResolution)init;
- (BKSHIDEventDeferringResolution)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (id)_initWithCopyOf:(id *)of;
- (id)_initWithDisplay:(void *)display environment:(void *)environment versionedPID:(void *)d pid:(uint64_t)pid token:(int)token dispatchingTarget:(void *)target;
- (id)modifiedResolution:(id)resolution;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringResolution

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDisplay *)self->_display hash];
  v4 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  pid = self->_pid;
  v6 = v3 ^ v4 ^ pid ^ [(BKSHIDEventDeferringToken *)self->_token hash]^ 0x19397;
  dispatchingTarget = self->_dispatchingTarget;
  if (dispatchingTarget)
  {
    v6 ^= [(BKSHIDEventDispatchingTarget *)dispatchingTarget hash];
  }

  return v6;
}

- (id)_initWithCopyOf:(id *)of
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (of)
  {
    v20.receiver = of;
    v20.super_class = BKSHIDEventDeferringResolution;
    of = objc_msgSendSuper2(&v20, sel_init);
    if (of)
    {
      v4 = objc_opt_class();
      if (v4 != objc_opt_class())
      {
        v5 = objc_opt_class();
        if (v5 != objc_opt_class())
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringResolution cannot be subclassed"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(sel__initWithCopyOf_);
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            *buf = 138544642;
            v22 = v17;
            v23 = 2114;
            v24 = v19;
            v25 = 2048;
            ofCopy = of;
            v27 = 2114;
            v28 = @"BKSHIDEventDeferringResolution.m";
            v29 = 1024;
            v30 = 57;
            v31 = 2114;
            v32 = v16;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v16 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x186386A6CLL);
        }
      }

      v6 = [v3[1] copy];
      v7 = of[1];
      of[1] = v6;

      v8 = [v3[2] copy];
      v9 = of[2];
      of[2] = v8;

      of[3] = v3[3];
      *(of + 8) = *(v3 + 8);
      v10 = [v3[5] copy];
      v11 = of[5];
      of[5] = v10;

      objc_storeStrong(of + 7, v3[7]);
      v12 = [v3[6] copy];
      v13 = of[6];
      of[6] = v12;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return of;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__BKSHIDEventDeferringResolution_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:0 block:v6];
}

id __60__BKSHIDEventDeferringResolution_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:0];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = [v4 _isNullDisplay];
    v3 = *(a1 + 40);
    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) appendObject:*(v3 + 8) withName:@"display"];
      v3 = *(a1 + 40);
    }
  }

  if ([*(v3 + 48) length])
  {
    [*(a1 + 32) appendString:*(*(a1 + 40) + 48) withName:0];
  }

  else
  {
    v7 = *(a1 + 40);
    if ((*(v7 + 24) + 1) >= 2)
    {
      v9 = [*(a1 + 32) appendVersionedPID:? withName:?];
    }

    else
    {
      v8 = [*(a1 + 32) appendInteger:*(v7 + 32) withName:@"pid"];
    }
  }

  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"token" skipIfNil:1];
  result = [*(a1 + 32) hasDebugStyle];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"dispatchingTarget" skipIfNil:1];
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && (display = self->_display, v8 = equalCopy->_display, BSEqualObjects()) && (environment = self->_environment, v10 = equalCopy->_environment, BSEqualObjects()) && self->_pid == equalCopy->_pid && (token = self->_token, v12 = equalCopy->_token, BSEqualObjects()) && self->_versionedPID == equalCopy->_versionedPID)
    {
      dispatchingTarget = self->_dispatchingTarget;
      v14 = equalCopy->_dispatchingTarget;
      v15 = BSEqualObjects();
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BKSHIDEventDeferringResolution)initWithCoder:(id)coder
{
  v29[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A250];
      v26 = *MEMORY[0x1E696A588];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringResolution: subclasses are not allowed : %@", objc_opt_class()];
      v27 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
      [coderCopy failWithError:v11];
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v12 = [coderCopy decodeInt64ForKey:@"versionedPID"];
  v13 = [coderCopy decodeInt32ForKey:@"pid"];
  v14 = v13;
  if (!v9 || !v10 || v13 <= 0 && v12 == -1)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A250];
    v28 = *MEMORY[0x1E696A588];
    v17 = MEMORY[0x1E696AEC0];
    v11 = NSStringFromBSVersionedPID();
    v18 = [v17 stringWithFormat:@"Failed to decode BKSHIDEventDeferringResolution: invalid display, environment or process : display=%@ environment=%@ vpid=%@ pid=%i", v9, v10, v11, v14];
    v29[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v20 = [v15 errorWithDomain:v16 code:4866 userInfo:v19];
    [coderCopy failWithError:v20];

    goto LABEL_9;
  }

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  if (self)
  {
    v25 = [BKSHIDEventDeferringResolution _initWithDisplay:v9 environment:v10 versionedPID:v12 pid:v14 token:v24 dispatchingTarget:?];
  }

  else
  {
    v25 = 0;
  }

  self = v25;

  selfCopy = self;
LABEL_10:

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)_initWithDisplay:(void *)display environment:(void *)environment versionedPID:(void *)d pid:(uint64_t)pid token:(int)token dispatchingTarget:(void *)target
{
  v66 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  dCopy = d;
  targetCopy = target;
  if (!environmentCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"display != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v55 = v26;
      v56 = 2114;
      v57 = v28;
      v58 = 2048;
      displayCopy7 = display;
      v60 = 2114;
      v61 = @"BKSHIDEventDeferringResolution.m";
      v62 = 1024;
      v63 = 74;
      v64 = 2114;
      v65 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387390);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[display isKindOfClass:[BKSHIDEventDisplay class]]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v55 = v30;
      v56 = 2114;
      v57 = v32;
      v58 = 2048;
      displayCopy7 = display;
      v60 = 2114;
      v61 = @"BKSHIDEventDeferringResolution.m";
      v62 = 1024;
      v63 = 75;
      v64 = 2114;
      v65 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387488);
  }

  if (!dCopy)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"environment != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      v55 = v34;
      v56 = 2114;
      v57 = v36;
      v58 = 2048;
      displayCopy7 = display;
      v60 = 2114;
      v61 = @"BKSHIDEventDeferringResolution.m";
      v62 = 1024;
      v63 = 76;
      v64 = 2114;
      v65 = v33;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387580);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[environment isKindOfClass:[BKSHIDEventDeferringEnvironment class]]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v55 = v38;
      v56 = 2114;
      v57 = v40;
      v58 = 2048;
      displayCopy7 = display;
      v60 = 2114;
      v61 = @"BKSHIDEventDeferringResolution.m";
      v62 = 1024;
      v63 = 77;
      v64 = 2114;
      v65 = v37;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387678);
  }

  if (pid == -1)
  {
    if (token <= 0)
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        *buf = 138544642;
        v55 = v50;
        v56 = 2114;
        v57 = v52;
        v58 = 2048;
        displayCopy7 = display;
        v60 = 2114;
        v61 = @"BKSHIDEventDeferringResolution.m";
        v62 = 1024;
        v63 = 82;
        v64 = 2114;
        v65 = v49;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v49 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387948);
    }
  }

  else
  {
    token = pid;
  }

  if (targetCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[token isKindOfClass:[BKSHIDEventDeferringToken class]]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138544642;
        v55 = v42;
        v56 = 2114;
        v57 = v44;
        v58 = 2048;
        displayCopy7 = display;
        v60 = 2114;
        v61 = @"BKSHIDEventDeferringResolution.m";
        v62 = 1024;
        v63 = 86;
        v64 = 2114;
        v65 = v41;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v41 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387770);
    }
  }

  v14 = objc_opt_class();
  if (v14 != objc_opt_class())
  {
    v15 = objc_opt_class();
    if (v15 != objc_opt_class())
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringResolution cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138544642;
        v55 = v46;
        v56 = 2114;
        v57 = v48;
        v58 = 2048;
        displayCopy7 = display;
        v60 = 2114;
        v61 = @"BKSHIDEventDeferringResolution.m";
        v62 = 1024;
        v63 = 93;
        v64 = 2114;
        v65 = v45;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v45 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638785CLL);
    }
  }

  v53.receiver = display;
  v53.super_class = BKSHIDEventDeferringResolution;
  v16 = objc_msgSendSuper2(&v53, sel_init);
  if (v16)
  {
    v17 = [environmentCopy copy];
    v18 = *(v16 + 1);
    *(v16 + 1) = v17;

    v19 = [dCopy copy];
    v20 = *(v16 + 2);
    *(v16 + 2) = v19;

    *(v16 + 3) = pid;
    *(v16 + 8) = token;
    v21 = [targetCopy copy];
    v22 = *(v16 + 5);
    *(v16 + 5) = v21;

    objc_storeStrong(v16 + 7, 0);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  display = self->_display;
  coderCopy = coder;
  [coderCopy encodeObject:display forKey:@"display"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  [coderCopy encodeInt32:self->_pid forKey:@"pid"];
  [coderCopy encodeInt64:self->_versionedPID forKey:@"versionedPID"];
  [coderCopy encodeObject:self->_token forKey:@"token"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringResolution allocWithZone:zone];

  return [(BKSHIDEventDeferringResolution *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BKSHIDEventDeferringResolution)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeferringResolution"];
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
    v16 = @"BKSHIDEventDeferringResolution.m";
    v17 = 1024;
    v18 = 51;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)modifiedResolution:(id)resolution
{
  resolutionCopy = resolution;
  v5 = [(BKSHIDEventDeferringResolution *)self mutableCopy];
  resolutionCopy[2](resolutionCopy, v5);

  return v5;
}

+ (id)build:(id)build
{
  buildCopy = build;
  v4 = objc_opt_new();
  buildCopy[2](buildCopy, v4);

  return v4;
}

@end