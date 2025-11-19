@interface BKSHIDEventDeferringResolution
+ (id)build:(id)a3;
- (BKSHIDEventDeferringResolution)init;
- (BKSHIDEventDeferringResolution)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (id)_initWithCopyOf:(id *)a1;
- (id)_initWithDisplay:(void *)a1 environment:(void *)a2 versionedPID:(void *)a3 pid:(uint64_t)a4 token:(int)a5 dispatchingTarget:(void *)a6;
- (id)modifiedResolution:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithCopyOf:(id *)a1
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = BKSHIDEventDeferringResolution;
    a1 = objc_msgSendSuper2(&v20, sel_init);
    if (a1)
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
            v26 = a1;
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
      v7 = a1[1];
      a1[1] = v6;

      v8 = [v3[2] copy];
      v9 = a1[2];
      a1[2] = v8;

      a1[3] = v3[3];
      *(a1 + 8) = *(v3 + 8);
      v10 = [v3[5] copy];
      v11 = a1[5];
      a1[5] = v10;

      objc_storeStrong(a1 + 7, v3[7]);
      v12 = [v3[6] copy];
      v13 = a1[6];
      a1[6] = v12;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__BKSHIDEventDeferringResolution_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = v4;
  v8 = self;
  v5 = v4;
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
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && (display = self->_display, v8 = v4->_display, BSEqualObjects()) && (environment = self->_environment, v10 = v4->_environment, BSEqualObjects()) && self->_pid == v4->_pid && (token = self->_token, v12 = v4->_token, BSEqualObjects()) && self->_versionedPID == v4->_versionedPID)
    {
      dispatchingTarget = self->_dispatchingTarget;
      v14 = v4->_dispatchingTarget;
      v15 = BSEqualObjects();
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BKSHIDEventDeferringResolution)initWithCoder:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      [v4 failWithError:v11];
LABEL_9:

      v21 = 0;
      goto LABEL_10;
    }
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v12 = [v4 decodeInt64ForKey:@"versionedPID"];
  v13 = [v4 decodeInt32ForKey:@"pid"];
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
    [v4 failWithError:v20];

    goto LABEL_9;
  }

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  if (self)
  {
    v25 = [BKSHIDEventDeferringResolution _initWithDisplay:v9 environment:v10 versionedPID:v12 pid:v14 token:v24 dispatchingTarget:?];
  }

  else
  {
    v25 = 0;
  }

  self = v25;

  v21 = self;
LABEL_10:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)_initWithDisplay:(void *)a1 environment:(void *)a2 versionedPID:(void *)a3 pid:(uint64_t)a4 token:(int)a5 dispatchingTarget:(void *)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (!v11)
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
      v59 = a1;
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
      v59 = a1;
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

  if (!v12)
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
      v59 = a1;
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
      v59 = a1;
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

  if (a4 == -1)
  {
    if (a5 <= 0)
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
        v59 = a1;
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
    a5 = a4;
  }

  if (v13)
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
        v59 = a1;
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
        v59 = a1;
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

  v53.receiver = a1;
  v53.super_class = BKSHIDEventDeferringResolution;
  v16 = objc_msgSendSuper2(&v53, sel_init);
  if (v16)
  {
    v17 = [v11 copy];
    v18 = *(v16 + 1);
    *(v16 + 1) = v17;

    v19 = [v12 copy];
    v20 = *(v16 + 2);
    *(v16 + 2) = v19;

    *(v16 + 3) = a4;
    *(v16 + 8) = a5;
    v21 = [v13 copy];
    v22 = *(v16 + 5);
    *(v16 + 5) = v21;

    objc_storeStrong(v16 + 7, 0);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  display = self->_display;
  v5 = a3;
  [v5 encodeObject:display forKey:@"display"];
  [v5 encodeObject:self->_environment forKey:@"environment"];
  [v5 encodeInt32:self->_pid forKey:@"pid"];
  [v5 encodeInt64:self->_versionedPID forKey:@"versionedPID"];
  [v5 encodeObject:self->_token forKey:@"token"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDeferringResolution allocWithZone:a3];

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
    v14 = self;
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

- (id)modifiedResolution:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventDeferringResolution *)self mutableCopy];
  v4[2](v4, v5);

  return v5;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  return v4;
}

@end