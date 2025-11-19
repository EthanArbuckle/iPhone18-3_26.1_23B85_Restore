@interface BKSHIDEventDeferringTarget
+ (id)build:(id)a3;
+ (id)protobufSchema;
- (BKSHIDEventDeferringTarget)init;
- (BKSHIDEventDeferringTarget)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithPID:(int)a3 token:(id)a4;
- (id)initForProtobufDecoding;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringTarget

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__BKSHIDEventDeferringTarget_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

id __59__BKSHIDEventDeferringTarget_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) token];
  v4 = [v2 appendObject:v3 withName:@"token" skipIfNil:1];

  return [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"pid"), @"pid"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && self->_pid == v4->_pid)
    {
      token = self->_token;
      v8 = v4->_token;
      v9 = BSEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BKSHIDEventDeferringTarget)initWithCoder:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A250];
      v22 = *MEMORY[0x1E696A588];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringTarget: subclasses are not allowed : %@", objc_opt_class(), v22];
      v23 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
      [v4 failWithError:v11];

LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }
  }

  v12 = [v4 decodeInt32ForKey:@"pid"];
  if (v12 < 1)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A588];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringTarget: invalid pid : %i", v12];
    v25[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v15 errorWithDomain:v16 code:4866 userInfo:v18];
    [v4 failWithError:v19];

    goto LABEL_7;
  }

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  self = [(BKSHIDEventDeferringTarget *)self _initWithPID:v12 token:v13];

  v14 = self;
LABEL_8:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  pid = self->_pid;
  v5 = a3;
  [v5 encodeInt32:pid forKey:@"pid"];
  [v5 encodeObject:self->_token forKey:@"token"];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeferringTarget;
  return [(BKSHIDEventDeferringTarget *)&v3 init];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDeferringTarget allocWithZone:a3];
  pid = self->_pid;
  token = self->_token;

  return [(BKSHIDEventDeferringTarget *)v4 _initWithPID:pid token:token];
}

- (id)_initWithPID:(int)a3 token:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3 <= 0)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v36 = v18;
      v37 = 2114;
      v38 = v20;
      v39 = 2048;
      v40 = self;
      v41 = 2114;
      v42 = @"BKSHIDEventDeferringTarget.m";
      v43 = 1024;
      v44 = 37;
      v45 = 2114;
      v46 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635FB68);
  }

  v8 = v7;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [v8 classForCoder];
      if (!v22)
      {
        v22 = objc_opt_class();
      }

      v23 = NSStringFromClass(v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"token", v23, v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v36 = v27;
        v37 = 2114;
        v38 = v29;
        v39 = 2048;
        v40 = self;
        v41 = 2114;
        v42 = @"BKSHIDEventDeferringTarget.m";
        v43 = 1024;
        v44 = 38;
        v45 = 2114;
        v46 = v26;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635FCA4);
    }
  }

  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringTarget cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138544642;
        v36 = v31;
        v37 = 2114;
        v38 = v33;
        v39 = 2048;
        v40 = self;
        v41 = 2114;
        v42 = @"BKSHIDEventDeferringTarget.m";
        v43 = 1024;
        v44 = 39;
        v45 = 2114;
        v46 = v30;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v30 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635FD90);
    }
  }

  v34.receiver = self;
  v34.super_class = BKSHIDEventDeferringTarget;
  v11 = [(BKSHIDEventDeferringTarget *)&v34 init];
  v12 = v11;
  if (v11)
  {
    v11->_pid = a3;
    v13 = [v8 copy];
    token = v12->_token;
    v12->_token = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BKSHIDEventDeferringTarget)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeferringTarget"];
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
    v16 = @"BKSHIDEventDeferringTarget.m";
    v17 = 1024;
    v18 = 32;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BKSHIDEventDeferringTarget_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_1538 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_1538, block);
  }

  v2 = protobufSchema_schema_1539;

  return v2;
}

uint64_t __44__BKSHIDEventDeferringTarget_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_1539 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_1541];

  return MEMORY[0x1EEE66BB8]();
}

void __44__BKSHIDEventDeferringTarget_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_pid"];
  [v2 addField:"_token"];
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BKSMutableHIDEventDeferringTarget);
  v3[2](v3, v4);

  v5 = [(BKSMutableHIDEventDeferringTarget *)v4 copy];

  return v5;
}

@end