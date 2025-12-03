@interface BKSHIDEventDeferringSelectionChangeRequest
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringSelectionChangeRequest)init;
- (BKSHIDEventDeferringSelectionChangeRequest)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringSelectionChangeRequest

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringSelectionChangeRequest *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
      objc_storeStrong(of + 3, v3[3]);
      of[4] = v3[4];
      *(of + 40) = *(v3 + 40);
    }
  }

  return of;
}

- (void)_init
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringSelectionChangeRequest cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v7 = NSStringFromSelector(sel__init);
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          *buf = 138544642;
          v12 = v7;
          v13 = 2114;
          v14 = v9;
          v15 = 2048;
          v16 = v1;
          v17 = 2114;
          v18 = @"BKSHIDEventDeferringSelectionChangeRequest.m";
          v19 = 1024;
          v20 = 49;
          v21 = 2114;
          v22 = v6;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v6 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186371F08);
      }
    }

    BSContinuousMachTimeNow();
    v1[4] = v4;
    v10.receiver = v1;
    v10.super_class = BKSHIDEventDeferringSelectionChangeRequest;
    result = objc_msgSendSuper2(&v10, sel_init);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = [streamCopy appendObject:self->_pathIdentifier withName:@"pathIdentifier"];
  v5 = [streamCopy appendObject:self->_selectionTarget withName:@"selectionTarget"];
  v6 = [streamCopy appendObject:self->_basis withName:@"basis"];
  v7 = [streamCopy appendTimeInterval:@"timestamp" withName:0 decomposeUnits:self->_timestamp];
  v8 = [streamCopy appendBool:self->_ignoreModalities withName:@"ignoreModalities"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringSelectionChangeRequest alloc];

  return [(BKSHIDEventDeferringSelectionChangeRequest *)&v4->super.super.isa _initWithCopyOf:?];
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
    v14 = BSEqualObjects() && (v8 = v5[2], selectionTarget = self->_selectionTarget, BSEqualObjects()) && (v10 = v5[3], basis = self->_basis, BSEqualObjects()) && (v12 = v5[4], timestamp = self->_timestamp, BSFloatEqualToFloat()) && *(v5 + 40) == self->_ignoreModalities;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  [(BKSHIDEventDeferringSelectionPathSymbol *)self->_pathIdentifier hash];
  [(BKSHIDEventDeferringSelectionTarget *)self->_selectionTarget hash];
  [(BKSHIDEventDeferringChangeBasis *)self->_basis hash];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v3 hash];

  self->_ignoreModalities;

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pathIdentifier = self->_pathIdentifier;
  v8 = coderCopy;
  if (pathIdentifier)
  {
    [coderCopy encodeObject:pathIdentifier forKey:@"pathIdentifier"];
    coderCopy = v8;
  }

  selectionTarget = self->_selectionTarget;
  if (selectionTarget)
  {
    [v8 encodeObject:selectionTarget forKey:@"selectionTarget"];
    coderCopy = v8;
  }

  basis = self->_basis;
  if (basis)
  {
    [v8 encodeObject:basis forKey:@"basis"];
    coderCopy = v8;
  }

  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v8 encodeBool:self->_ignoreModalities forKey:@"ignoreModalities"];
}

- (BKSHIDEventDeferringSelectionChangeRequest)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = BKSHIDEventDeferringSelectionChangeRequest;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringSelectionChangeRequest *)&v16 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v16.receiver, v16.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"pathIdentifier"];
  pathIdentifier = v4->_pathIdentifier;
  v4->_pathIdentifier = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionTarget"];
  selectionTarget = v4->_selectionTarget;
  v4->_selectionTarget = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"basis"];
  basis = v4->_basis;
  v4->_basis = v12;

  [coderCopy decodeDoubleForKey:@"timestamp"];
  v4->_timestamp = v14;
  LOBYTE(v7) = [coderCopy decodeBoolForKey:@"ignoreModalities"];

  v4->_ignoreModalities = v7;
  return v4;
}

- (BKSHIDEventDeferringSelectionChangeRequest)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringSelectionChangeRequest"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringSelectionChangeRequest init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionChangeRequest.m";
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
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringSelectionChangeRequest"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringSelectionChangeRequest new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionChangeRequest.m";
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
  _init = [(BKSHIDEventDeferringSelectionChangeRequest *)[BKSMutableHIDEventDeferringSelectionChangeRequest alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end