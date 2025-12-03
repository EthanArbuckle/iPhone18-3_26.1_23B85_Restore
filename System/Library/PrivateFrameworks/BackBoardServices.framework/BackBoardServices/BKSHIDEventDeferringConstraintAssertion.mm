@interface BKSHIDEventDeferringConstraintAssertion
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringConstraintAssertion)init;
- (BKSHIDEventDeferringConstraintAssertion)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringConstraintAssertion

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringConstraintAssertion *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
      objc_storeStrong(of + 3, v3[3]);
      objc_storeStrong(of + 4, v3[4]);
      of[5] = v3[5];
    }
  }

  return of;
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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringConstraintAssertion cannot be subclassed"];
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
          v17 = @"BKSHIDEventDeferringConstraintAssertion.m";
          v18 = 1024;
          v19 = 49;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18637337CLL);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringConstraintAssertion;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = [streamCopy appendObject:self->_pathIdentifier withName:@"pathIdentifier"];
  v5 = [streamCopy appendObject:self->_selectionTarget withName:@"selectionTarget"];
  v6 = [streamCopy appendObject:self->_constraint withName:@"constraint"];
  v7 = [streamCopy appendObject:self->_basis withName:@"basis"];
  v8 = [streamCopy appendTimeInterval:@"timestamp" withName:0 decomposeUnits:self->_timestamp];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringConstraintAssertion alloc];

  return [(BKSHIDEventDeferringConstraintAssertion *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[1];
    pathIdentifier = self->_pathIdentifier;
    if (BSEqualObjects() && (v8 = v5[2], selectionTarget = self->_selectionTarget, BSEqualObjects()) && (v10 = v5[3], constraint = self->_constraint, BSEqualObjects()) && (v12 = v5[4], basis = self->_basis, BSEqualObjects()))
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
  [(BKSHIDEventDeferringConstraint *)self->_constraint hash];
  [(BKSHIDEventDeferringChangeBasis *)self->_basis hash];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v3 hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pathIdentifier = self->_pathIdentifier;
  v9 = coderCopy;
  if (pathIdentifier)
  {
    [coderCopy encodeObject:pathIdentifier forKey:@"pathIdentifier"];
    coderCopy = v9;
  }

  selectionTarget = self->_selectionTarget;
  if (selectionTarget)
  {
    [v9 encodeObject:selectionTarget forKey:@"selectionTarget"];
    coderCopy = v9;
  }

  constraint = self->_constraint;
  if (constraint)
  {
    [v9 encodeObject:constraint forKey:@"constraint"];
    coderCopy = v9;
  }

  basis = self->_basis;
  if (basis)
  {
    [v9 encodeObject:basis forKey:@"basis"];
    coderCopy = v9;
  }

  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
}

- (BKSHIDEventDeferringConstraintAssertion)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = BKSHIDEventDeferringConstraintAssertion;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringConstraintAssertion *)&v19 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v19.receiver, v19.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"pathIdentifier"];
  pathIdentifier = v4->_pathIdentifier;
  v4->_pathIdentifier = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionTarget"];
  selectionTarget = v4->_selectionTarget;
  v4->_selectionTarget = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"constraint"];
  constraint = v4->_constraint;
  v4->_constraint = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"basis"];
  basis = v4->_basis;
  v4->_basis = v14;

  [coderCopy decodeDoubleForKey:@"timestamp"];
  v17 = v16;

  v4->_timestamp = v17;
  return v4;
}

- (BKSHIDEventDeferringConstraintAssertion)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringConstraintAssertion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringConstraintAssertion init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringConstraintAssertion.m";
    v9 = 1024;
    v10 = 38;
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
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringConstraintAssertion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringConstraintAssertion new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringConstraintAssertion.m";
    v9 = 1024;
    v10 = 43;
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
  _init = [(BKSHIDEventDeferringConstraintAssertion *)[BKSMutableHIDEventDeferringConstraintAssertion alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end