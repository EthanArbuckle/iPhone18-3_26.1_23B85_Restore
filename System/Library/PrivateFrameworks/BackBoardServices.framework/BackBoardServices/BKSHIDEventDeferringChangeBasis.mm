@interface BKSHIDEventDeferringChangeBasis
+ (BKSHIDEventDeferringChangeBasis)new;
+ (id)constraintBasis;
+ (id)ruleOriginatorBasis;
- (BKSHIDEventDeferringChangeBasis)init;
- (BKSHIDEventDeferringChangeBasis)initWithCoder:(id)a3;
- (BKSHIDEventDeferringChangeBasis)initWithEventProvenance:(id)a3;
- (id)_initWithIdentifier:(void *)a3 provenance:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringChangeBasis

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_eventProvenance forKey:@"provenance"];
}

- (BKSHIDEventDeferringChangeBasis)initWithCoder:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot subclass BKSHIDEventDeferringChangeBasis"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v33 = v26;
      v34 = 2114;
      v35 = v28;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BKSHIDEventDeferringChangeBasis.m";
      v40 = 1024;
      v41 = 85;
      v42 = 2114;
      v43 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186381998);
  }

  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v7 isEqualToString:@"hostOverride"])
  {
    v8 = +[BKSHIDEventDeferringChangeBasis ruleOriginatorBasis];
  }

  else
  {
    if (![v7 isEqualToString:@"event"])
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A250];
      v30 = *MEMORY[0x1E696A588];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unrecognized serializable basis identifier : %@", v7];
      v31 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v22 = [v18 errorWithDomain:v19 code:4866 userInfo:v21];
      [v5 failWithError:v22];

      v17 = 0;
      goto LABEL_10;
    }

    v29.receiver = self;
    v29.super_class = BKSHIDEventDeferringChangeBasis;
    v9 = [(BKSHIDEventDeferringChangeBasis *)&v29 init];
    if (v9)
    {
      v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      v12 = MEMORY[0x1E695DFD8];
      v13 = objc_opt_class();
      v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
      v15 = [v5 decodeObjectOfClasses:v14 forKey:@"provenance"];
      eventProvenance = v9->_eventProvenance;
      v9->_eventProvenance = v15;
    }

    v8 = v9;
    self = v8;
  }

  v17 = v8;
LABEL_10:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BKSHIDEventDeferringChangeBasis)initWithEventProvenance:(id)a3
{
  v3 = self;
  if (a3)
  {
    v4 = [(BKSHIDEventDeferringChangeBasis *)&self->super.isa _initWithIdentifier:a3 provenance:?];
    v3 = v4;
  }

  else
  {
    v4 = +[BKSHIDEventDeferringChangeBasis ruleOriginatorBasis];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithIdentifier:(void *)a3 provenance:
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = v6;
    v9 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v10 = objc_opt_class();
    if (!v8)
    {
      v15 = NSStringFromClass(v10);
      v16 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v15];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel__initWithIdentifier_provenance_);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v35 = v17;
        v36 = 2114;
        v37 = v19;
        v38 = 2048;
        v39 = a1;
        v40 = 2114;
        v41 = @"BKSHIDEventDeferringChangeBasis.m";
        v42 = 1024;
        v43 = 58;
        v44 = 2114;
        v45 = v16;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186381C34);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [v8 classForCoder];
      if (!v21)
      {
        v21 = objc_opt_class();
      }

      v22 = NSStringFromClass(v21);
      objc_opt_class();
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v20 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v22, v24];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__initWithIdentifier_provenance_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v35 = v26;
        v36 = 2114;
        v37 = v28;
        v38 = 2048;
        v39 = a1;
        v40 = 2114;
        v41 = @"BKSHIDEventDeferringChangeBasis.m";
        v42 = 1024;
        v43 = 58;
        v44 = 2114;
        v45 = v25;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186381D70);
    }

    v11 = objc_opt_class();
    if (v11 != objc_opt_class())
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot subclass BKSHIDEventDeferringChangeBasis"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(sel__initWithIdentifier_provenance_);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v35 = v30;
        v36 = 2114;
        v37 = v32;
        v38 = 2048;
        v39 = a1;
        v40 = 2114;
        v41 = @"BKSHIDEventDeferringChangeBasis.m";
        v42 = 1024;
        v43 = 61;
        v44 = 2114;
        v45 = v29;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186381E58);
    }

    v33.receiver = a1;
    v33.super_class = BKSHIDEventDeferringChangeBasis;
    v12 = objc_msgSendSuper2(&v33, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

- (BKSHIDEventDeferringChangeBasis)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -init"];
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
    v16 = @"BKSHIDEventDeferringChangeBasis.m";
    v17 = 1024;
    v18 = 49;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSHIDEventDeferringChangeBasis)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot +new"];
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
    v14 = a1;
    v15 = 2114;
    v16 = @"BKSHIDEventDeferringChangeBasis.m";
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

+ (id)constraintBasis
{
  if (constraintBasis_onceToken != -1)
  {
    dispatch_once(&constraintBasis_onceToken, &__block_literal_global_12);
  }

  v3 = constraintBasis_basis;

  return v3;
}

uint64_t __50__BKSHIDEventDeferringChangeBasis_constraintBasis__block_invoke()
{
  constraintBasis_basis = [[BKSHIDEventDeferringChangeBasis alloc] _initWithIdentifier:0 provenance:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)ruleOriginatorBasis
{
  if (ruleOriginatorBasis_onceToken != -1)
  {
    dispatch_once(&ruleOriginatorBasis_onceToken, &__block_literal_global_5530);
  }

  v3 = ruleOriginatorBasis_basis;

  return v3;
}

uint64_t __54__BKSHIDEventDeferringChangeBasis_ruleOriginatorBasis__block_invoke()
{
  ruleOriginatorBasis_basis = [[BKSHIDEventDeferringChangeBasis alloc] _initWithIdentifier:0 provenance:?];

  return MEMORY[0x1EEE66BB8]();
}

@end