@interface BKSMutableHIDEventDiscreteDispatchingPredicate
+ (id)defaultFocusPredicate;
+ (id)defaultSystemPredicate;
- (BKSMutableHIDEventDiscreteDispatchingPredicate)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDescriptors:(id)a3;
- (void)setDisplays:(id)a3;
- (void)setSenderDescriptors:(id)a3;
@end

@implementation BKSMutableHIDEventDiscreteDispatchingPredicate

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSHIDEventDiscreteDispatchingPredicate allocWithZone:a3];
  senderDescriptors = self->super._senderDescriptors;
  descriptors = self->super._descriptors;

  return [(BKSHIDEventDiscreteDispatchingPredicate *)v4 _initWithSourceDescriptors:senderDescriptors descriptors:descriptors];
}

- (void)setDescriptors:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = a3;
  if (!v28)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"descriptors", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v30 = v12;
      v31 = 2114;
      v32 = v14;
      v33 = 2048;
      v34 = self;
      v35 = 2114;
      v36 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v37 = 1024;
      v38 = 256;
      v39 = 2114;
      v40 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639C0D8);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [v28 classForCoder];
    if (!v16)
    {
      v16 = objc_opt_class();
    }

    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"descriptors", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v30 = v21;
      v31 = 2114;
      v32 = v23;
      v33 = 2048;
      v34 = self;
      v35 = 2114;
      v36 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v37 = 1024;
      v38 = 256;
      v39 = 2114;
      v40 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639C214);
  }

  if ([v28 bs_containsObjectPassingTest:&__block_literal_global_162])
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"descriptors contains non-BKSHIDEventDescriptor elements : %@", v28];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v30 = v25;
      v31 = 2114;
      v32 = v27;
      v33 = 2048;
      v34 = self;
      v35 = 2114;
      v36 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v37 = 1024;
      v38 = 260;
      v39 = 2114;
      v40 = v24;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639C308);
  }

  v5 = [v28 copy];
  descriptors = self->super._descriptors;
  self->super._descriptors = v5;

  v7 = *MEMORY[0x1E69E9840];
}

BOOL __65__BKSMutableHIDEventDiscreteDispatchingPredicate_setDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)setSenderDescriptors:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [v5 classForCoder];
      if (!v22)
      {
        v22 = objc_opt_class();
      }

      v23 = NSStringFromClass(v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v21 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"senderDescriptors", v23, v25];

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
        v42 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v43 = 1024;
        v44 = 239;
        v45 = 2114;
        v46 = v26;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639C720);
    }

    v6 = [MEMORY[0x1E695DFA8] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set contains non-BKSHIDEventSenderDescriptor elements : %@", v7];
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
              v42 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
              v43 = 1024;
              v44 = 243;
              v45 = 2114;
              v46 = v17;
              _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v17 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x18639C5E4);
          }

          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    senderDescriptors = self->super._senderDescriptors;
    self->super._senderDescriptors = v13;
  }

  else
  {
    v15 = self->super._senderDescriptors;
    self->super._senderDescriptors = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDisplays:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = a3;
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v20 classForCoder];
      if (!v8)
      {
        v8 = objc_opt_class();
      }

      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"displays", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v22 = v13;
        v23 = 2114;
        v24 = v15;
        v25 = 2048;
        v26 = self;
        v27 = 2114;
        v28 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v29 = 1024;
        v30 = 223;
        v31 = 2114;
        v32 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639C948);
    }

    if ([v20 bs_containsObjectPassingTest:&__block_literal_global_146])
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"displays contains non-BKSHIDEventDisplay elements : %@", v20];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        v25 = 2048;
        v26 = self;
        v27 = 2114;
        v28 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v29 = 1024;
        v30 = 227;
        v31 = 2114;
        v32 = v16;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639CA3CLL);
    }
  }

  v5 = [v20 bs_map:&__block_literal_global_153];
  [(BKSMutableHIDEventDiscreteDispatchingPredicate *)self setSenderDescriptors:v5];

  v6 = *MEMORY[0x1E69E9840];
}

id __62__BKSMutableHIDEventDiscreteDispatchingPredicate_setDisplays___block_invoke_150(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  [(BKSMutableHIDEventSenderDescriptor *)v3 setAssociatedDisplay:v2];

  v4 = [(BKSMutableHIDEventSenderDescriptor *)v3 copy];

  return v4;
}

BOOL __62__BKSMutableHIDEventDiscreteDispatchingPredicate_setDisplays___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BKSMutableHIDEventDiscreteDispatchingPredicate)init
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMutableHIDEventDiscreteDispatchingPredicate cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138544642;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v22 = 1024;
      v23 = 217;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639CCA0);
  }

  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [MEMORY[0x1E695DFD8] set];
  v7 = [(BKSHIDEventDiscreteDispatchingPredicate *)self _initWithSourceDescriptors:v5 descriptors:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)defaultFocusPredicate
{
  if (defaultFocusPredicate_onceToken != -1)
  {
    dispatch_once(&defaultFocusPredicate_onceToken, &__block_literal_global_171);
  }

  v2 = [defaultFocusPredicate___defaultFocusPredicate mutableCopy];

  return v2;
}

void __71__BKSMutableHIDEventDiscreteDispatchingPredicate_defaultFocusPredicate__block_invoke()
{
  v22 = [MEMORY[0x1E695DFA8] set];
  v0 = [BKSHIDEventDescriptor descriptorWithEventType:11];
  [v22 addObject:v0];

  v1 = [BKSHIDEventDescriptor descriptorWithEventType:6];
  [v22 addObject:v1];

  v2 = [BKSHIDEventDescriptor descriptorWithEventType:17];
  [v22 addObject:v2];

  v3 = [BKSHIDEventDescriptor descriptorWithEventType:35];
  [v22 addObject:v3];

  v4 = [BKSHIDEventDescriptor descriptorWithEventType:30];
  [v22 addObject:v4];

  v5 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:7 usage:0];
  [v22 addObject:v5];

  v6 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:548];
  [v22 addObject:v6];

  v7 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:516];
  [v22 addObject:v7];

  v8 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:521];
  [v22 addObject:v8];

  v9 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:178];
  [v22 addObject:v9];

  v10 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:184];
  [v22 addObject:v10];

  v11 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:430];
  [v22 addObject:v11];

  v12 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:669];
  [v22 addObject:v12];

  v13 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:255 usage:3];
  [v22 addObject:v13];

  v14 = [BKSHIDEventUsagePairDescriptor descriptorForHIDEventType:1 page:65280 usage:59];
  [v22 addObject:v14];

  v15 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:3];
  [v22 addObject:v15];

  v16 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:0];
  [v22 addObject:v16];

  v17 = [BKSHIDEventDescriptor descriptorWithEventType:39];
  [v22 addObject:v17];

  v18 = [BKSHIDEventDiscreteDispatchingPredicate alloc];
  v19 = [MEMORY[0x1E695DFD8] set];
  v20 = [(BKSHIDEventDiscreteDispatchingPredicate *)v18 _initWithSourceDescriptors:v19 descriptors:v22];
  v21 = defaultFocusPredicate___defaultFocusPredicate;
  defaultFocusPredicate___defaultFocusPredicate = v20;
}

+ (id)defaultSystemPredicate
{
  if (defaultSystemPredicate_onceToken != -1)
  {
    dispatch_once(&defaultSystemPredicate_onceToken, &__block_literal_global_167);
  }

  v2 = [defaultSystemPredicate___defaultSystemPredicate mutableCopy];

  return v2;
}

void __72__BKSMutableHIDEventDiscreteDispatchingPredicate_defaultSystemPredicate__block_invoke()
{
  v76 = [MEMORY[0x1E695DFA8] set];
  v0 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:11 usage:45];
  [v76 addObject:v0];

  v1 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:11 usage:46];
  [v76 addObject:v1];

  v2 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:11 usage:35];
  [v76 addObject:v2];

  v3 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:11 usage:33];
  [v76 addObject:v3];

  v4 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65287 usage:1];
  [v76 addObject:v4];

  v5 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65281 usage:33];
  [v76 addObject:v5];

  v6 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65281 usage:32];
  [v76 addObject:v6];

  v7 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65281 usage:16];
  [v76 addObject:v7];

  v8 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65281 usage:64];
  [v76 addObject:v8];

  v9 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65281 usage:65];
  [v76 addObject:v9];

  v10 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:133 usage:75];
  [v76 addObject:v10];

  v11 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:134];
  [v76 addObject:v11];

  v12 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:132];
  [v76 addObject:v12];

  v13 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:133];
  [v76 addObject:v13];

  v14 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:137];
  [v76 addObject:v14];

  v15 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:141];
  [v76 addObject:v15];

  v16 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:136];
  [v76 addObject:v16];

  v17 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:139];
  [v76 addObject:v17];

  v18 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:138];
  [v76 addObject:v18];

  v19 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:140];
  [v76 addObject:v19];

  v20 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:155];
  [v76 addObject:v20];

  v21 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:610];
  [v76 addObject:v21];

  v22 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:604];
  [v76 addObject:v22];

  v23 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:547];
  [v76 addObject:v23];

  v24 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:603];
  [v76 addObject:v24];

  v25 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:545];
  [v76 addObject:v25];

  v26 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:433];
  [v76 addObject:v26];

  v27 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:414];
  [v76 addObject:v27];

  v28 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:134];
  [v76 addObject:v28];

  v29 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:96];
  [v76 addObject:v29];

  v30 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:111];
  [v76 addObject:v30];

  v31 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:112];
  [v76 addObject:v31];

  v32 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:121];
  [v76 addObject:v32];

  v33 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:122];
  [v76 addObject:v33];

  v34 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:179];
  [v76 addObject:v34];

  v35 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:64];
  [v76 addObject:v35];

  v36 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:67];
  [v76 addObject:v36];

  v37 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:68];
  [v76 addObject:v37];

  v38 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:65];
  [v76 addObject:v38];

  v39 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:69];
  [v76 addObject:v39];

  v40 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:66];
  [v76 addObject:v40];

  v41 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:4];
  [v76 addObject:v41];

  v42 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:226];
  [v76 addObject:v42];

  v43 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:177];
  [v76 addObject:v43];

  v44 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:176];
  [v76 addObject:v44];

  v45 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:205];
  [v76 addObject:v45];

  v46 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:48];
  [v76 addObject:v46];

  v47 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:185];
  [v76 addObject:v47];

  v48 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:188];
  [v76 addObject:v48];

  v49 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:180];
  [v76 addObject:v49];

  v50 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:181];
  [v76 addObject:v50];

  v51 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:182];
  [v76 addObject:v51];

  v52 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:199];
  [v76 addObject:v52];

  v53 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:198];
  [v76 addObject:v53];

  v54 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:128];
  [v76 addObject:v54];

  v55 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:101];
  [v76 addObject:v55];

  v56 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:183];
  [v76 addObject:v56];

  v57 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:203];
  [v76 addObject:v57];

  v58 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:202];
  [v76 addObject:v58];

  v59 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:190];
  [v76 addObject:v59];

  v60 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:207];
  [v76 addObject:v60];

  v61 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:234];
  [v76 addObject:v61];

  v62 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:233];
  [v76 addObject:v62];

  v63 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65289 usage:1];
  [v76 addObject:v63];

  v64 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65289 usage:2];
  [v76 addObject:v64];

  v65 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65289 usage:3];
  [v76 addObject:v65];

  v66 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65289 usage:4];
  [v76 addObject:v66];

  v67 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:65289 usage:32];
  [v76 addObject:v67];

  v68 = [BKSHIDEventDescriptor descriptorWithEventType:32];
  [v76 addObject:v68];

  v69 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:2];
  [v76 addObject:v69];

  v70 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:1];
  [v76 addObject:v70];

  v71 = [BKSHIDEventDescriptor descriptorWithEventType:14];
  [v76 addObject:v71];

  v72 = [BKSHIDEventDiscreteDispatchingPredicate alloc];
  v73 = [MEMORY[0x1E695DFD8] set];
  v74 = [(BKSHIDEventDiscreteDispatchingPredicate *)v72 _initWithSourceDescriptors:v73 descriptors:v76];
  v75 = defaultSystemPredicate___defaultSystemPredicate;
  defaultSystemPredicate___defaultSystemPredicate = v74;
}

@end