@interface BKSHIDEventDeferringModalityAssertion
+ (id)build:(id)a3;
+ (id)new;
- (BKSHIDEventDeferringModalityAssertion)init;
- (BKSHIDEventDeferringModalityAssertion)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)_initWithCopyOf:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringModalityAssertion

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSHIDEventDeferringModalityAssertion *)a1 _init];
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      objc_storeStrong(a1 + 2, v3[2]);
      objc_storeStrong(a1 + 3, v3[3]);
      objc_storeStrong(a1 + 4, v3[4]);
      a1[5] = v3[5];
    }
  }

  return a1;
}

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringModalityAssertion cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSHIDEventDeferringModalityAssertion.m";
          v18 = 1024;
          v19 = 46;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186370D68);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringModalityAssertion;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDescriptionToStream:(id)a3
{
  v9 = a3;
  v4 = [v9 appendObject:self->_pathIdentifier withName:@"pathIdentifier"];
  v5 = [v9 appendObject:self->_selectionTarget withName:@"selectionTarget"];
  v6 = [v9 appendObject:self->_modality withName:@"modality"];
  v7 = [v9 appendObject:self->_basis withName:@"basis"];
  v8 = [v9 appendTimeInterval:@"timestamp" withName:0 decomposeUnits:self->_timestamp];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDeferringModalityAssertion alloc];

  return [(BKSHIDEventDeferringModalityAssertion *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    pathIdentifier = self->_pathIdentifier;
    if (BSEqualObjects() && (v8 = v5[2], selectionTarget = self->_selectionTarget, BSEqualObjects()) && (v10 = v5[3], modality = self->_modality, BSEqualObjects()) && (v12 = v5[4], basis = self->_basis, BSEqualObjects()))
    {
      v14 = v5[5];
      timestamp = self->_timestamp;
      v16 = BSFloatEqualToFloat();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  [(BKSHIDEventDeferringSelectionPathSymbol *)self->_pathIdentifier hash];
  [(BKSHIDEventDeferringSelectionTarget *)self->_selectionTarget hash];
  [(BKSHIDEventDeferringModality *)self->_modality hash];
  [(BKSHIDEventDeferringChangeBasis *)self->_basis hash];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v3 hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  pathIdentifier = self->_pathIdentifier;
  v9 = v4;
  if (pathIdentifier)
  {
    [v4 encodeObject:pathIdentifier forKey:@"pathIdentifier"];
    v4 = v9;
  }

  selectionTarget = self->_selectionTarget;
  if (selectionTarget)
  {
    [v9 encodeObject:selectionTarget forKey:@"selectionTarget"];
    v4 = v9;
  }

  modality = self->_modality;
  if (modality)
  {
    [v9 encodeObject:modality forKey:@"modality"];
    v4 = v9;
  }

  basis = self->_basis;
  if (basis)
  {
    [v9 encodeObject:basis forKey:@"basis"];
    v4 = v9;
  }

  [v4 encodeDouble:@"timestamp" forKey:self->_timestamp];
}

- (BKSHIDEventDeferringModalityAssertion)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = BKSHIDEventDeferringModalityAssertion;
  v3 = a3;
  v4 = [(BKSHIDEventDeferringModalityAssertion *)&v19 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v19.receiver, v19.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"pathIdentifier"];
  pathIdentifier = v4->_pathIdentifier;
  v4->_pathIdentifier = v8;

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"selectionTarget"];
  selectionTarget = v4->_selectionTarget;
  v4->_selectionTarget = v10;

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"modality"];
  modality = v4->_modality;
  v4->_modality = v12;

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"basis"];
  basis = v4->_basis;
  v4->_basis = v14;

  [v3 decodeDoubleForKey:@"timestamp"];
  v17 = v16;

  v4->_timestamp = v17;
  return v4;
}

- (BKSHIDEventDeferringModalityAssertion)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringModalityAssertion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringModalityAssertion init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModalityAssertion.m";
    v9 = 1024;
    v10 = 35;
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
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringModalityAssertion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringModalityAssertion new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModalityAssertion.m";
    v9 = 1024;
    v10 = 40;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSHIDEventDeferringModalityAssertion *)[BKSMutableHIDEventDeferringModalityAssertion alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end