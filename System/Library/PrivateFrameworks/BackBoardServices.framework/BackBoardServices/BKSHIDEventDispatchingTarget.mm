@interface BKSHIDEventDispatchingTarget
+ (id)keyboardFocusTarget;
+ (id)keyboardFocusTargetWithDeferringToken:(id)token;
+ (id)systemTarget;
+ (id)systemTargetWithDeferringToken:(id)token;
+ (id)targetForDeferringEnvironment:(id)environment;
+ (id)targetForDeferringEnvironment:(id)environment deferringToken:(id)token;
+ (id)targetForDeferringEnvironment:(id)environment selectionPath:(id)path;
- (BKSHIDEventDispatchingTarget)init;
- (BKSHIDEventDispatchingTarget)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEnvironment:(id)environment token:(id)token selectionPath:(id)path pid:(int)pid;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDispatchingTarget

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash]^ (105491 * self->_pid);
  deferringToken = self->_deferringToken;
  if (deferringToken)
  {
    v3 ^= [(BKSHIDEventDeferringToken *)deferringToken hash];
  }

  selectionPathIdentifier = self->_selectionPathIdentifier;
  if (selectionPathIdentifier)
  {
    v3 ^= [(BKSHIDEventDeferringSelectionPathIdentifier *)selectionPathIdentifier hash];
  }

  return v3;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__BKSHIDEventDispatchingTarget_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

id __61__BKSHIDEventDispatchingTarget_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deferringEnvironment];
  v4 = [v2 appendObject:v3 withName:0 skipIfNil:1];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deferringToken];
  v7 = [v5 appendObject:v6 withName:@"token" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) selectionPathIdentifier];
  v10 = [v8 appendObject:v9 withName:@"selectionPath" skipIfNil:1];

  return [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"pid"), @"pid"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && self->_pid == equalCopy->_pid && (environment = self->_environment, v7 = equalCopy->_environment, BSEqualObjects()) && (deferringToken = self->_deferringToken, v9 = equalCopy->_deferringToken, BSEqualObjects()))
    {
      selectionPathIdentifier = self->_selectionPathIdentifier;
      v11 = equalCopy->_selectionPathIdentifier;
      v12 = BSEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BKSHIDEventDispatchingTarget)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDispatchingTarget: subclasses are not allowed : %@", objc_opt_class()];
    v21 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [v6 errorWithDomain:v7 code:4866 userInfo:v9];
    [coderCopy failWithError:v10];
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deferringToken"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionPath"];
  v11 = [coderCopy decodeInt32ForKey:@"pid"];
  if (!v8 || v11 < 1)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v22 = *MEMORY[0x1E696A588];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDispatchingTarget: invalid pid or environment : pid=%i environment=%@", v11, v8];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v13 errorWithDomain:v14 code:4866 userInfo:v16];
    [coderCopy failWithError:v17];

    goto LABEL_7;
  }

  v12 = [[BKSHIDEventDispatchingTarget alloc] _initWithEnvironment:v8 token:v9 selectionPath:v10 pid:v11];
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  environment = self->_environment;
  coderCopy = coder;
  [coderCopy encodeObject:environment forKey:@"environment"];
  [coderCopy encodeObject:self->_deferringToken forKey:@"deferringToken"];
  [coderCopy encodeObject:self->_selectionPathIdentifier forKey:@"selectionPath"];
  [coderCopy encodeInt32:self->_pid forKey:@"pid"];
}

- (id)_initWithEnvironment:(id)environment token:(id)token selectionPath:(id)path pid:(int)pid
{
  v37 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  tokenCopy = token;
  pathCopy = path;
  v14 = objc_opt_class();
  if (v14 != objc_opt_class())
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDispatchingTarget is not subclassable"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v26 = v21;
      v27 = 2114;
      v28 = v23;
      v29 = 2048;
      selfCopy = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDispatchingTarget.m";
      v33 = 1024;
      v34 = 33;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186367AD8);
  }

  v24.receiver = self;
  v24.super_class = BKSHIDEventDispatchingTarget;
  v15 = [(BKSHIDEventDispatchingTarget *)&v24 init];
  if (v15)
  {
    v16 = [environmentCopy copy];
    environment = v15->_environment;
    v15->_environment = v16;

    v15->_pid = pid;
    objc_storeStrong(&v15->_deferringToken, token);
    objc_storeStrong(&v15->_selectionPathIdentifier, path);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BKSHIDEventDispatchingTarget)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDispatchingTarget"];
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
    v16 = @"BKSHIDEventDispatchingTarget.m";
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

+ (id)targetForDeferringEnvironment:(id)environment selectionPath:(id)path
{
  pathCopy = path;
  environmentCopy = environment;
  v7 = [[BKSHIDEventDispatchingTarget alloc] _initWithEnvironment:environmentCopy token:0 selectionPath:pathCopy pid:getpid()];

  return v7;
}

+ (id)targetForDeferringEnvironment:(id)environment deferringToken:(id)token
{
  tokenCopy = token;
  environmentCopy = environment;
  v7 = [[BKSHIDEventDispatchingTarget alloc] _initWithEnvironment:environmentCopy token:tokenCopy selectionPath:0 pid:getpid()];

  return v7;
}

+ (id)targetForDeferringEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[BKSHIDEventDispatchingTarget alloc] _initWithEnvironment:environmentCopy token:0 selectionPath:0 pid:getpid()];

  return v4;
}

+ (id)keyboardFocusTargetWithDeferringToken:(id)token
{
  tokenCopy = token;
  v4 = [BKSHIDEventDispatchingTarget alloc];
  v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v6 = [(BKSHIDEventDispatchingTarget *)v4 _initWithEnvironment:v5 token:tokenCopy selectionPath:0 pid:getpid()];

  return v6;
}

+ (id)systemTargetWithDeferringToken:(id)token
{
  tokenCopy = token;
  v4 = [BKSHIDEventDispatchingTarget alloc];
  v5 = +[BKSHIDEventDeferringEnvironment systemEnvironment];
  v6 = [(BKSHIDEventDispatchingTarget *)v4 _initWithEnvironment:v5 token:tokenCopy selectionPath:0 pid:getpid()];

  return v6;
}

+ (id)keyboardFocusTarget
{
  if (keyboardFocusTarget_onceToken != -1)
  {
    dispatch_once(&keyboardFocusTarget_onceToken, &__block_literal_global_11);
  }

  v3 = keyboardFocusTarget___focusTarget;

  return v3;
}

void __51__BKSHIDEventDispatchingTarget_keyboardFocusTarget__block_invoke()
{
  v0 = [BKSHIDEventDispatchingTarget alloc];
  v3 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v1 = [(BKSHIDEventDispatchingTarget *)v0 _initWithEnvironment:v3 token:0 selectionPath:0 pid:getpid()];
  v2 = keyboardFocusTarget___focusTarget;
  keyboardFocusTarget___focusTarget = v1;
}

+ (id)systemTarget
{
  if (systemTarget_onceToken != -1)
  {
    dispatch_once(&systemTarget_onceToken, &__block_literal_global_2386);
  }

  v3 = systemTarget___systemTarget;

  return v3;
}

void __44__BKSHIDEventDispatchingTarget_systemTarget__block_invoke()
{
  v0 = [BKSHIDEventDispatchingTarget alloc];
  v3 = +[BKSHIDEventDeferringEnvironment systemEnvironment];
  v1 = [(BKSHIDEventDispatchingTarget *)v0 _initWithEnvironment:v3 token:0 selectionPath:0 pid:getpid()];
  v2 = systemTarget___systemTarget;
  systemTarget___systemTarget = v1;
}

@end