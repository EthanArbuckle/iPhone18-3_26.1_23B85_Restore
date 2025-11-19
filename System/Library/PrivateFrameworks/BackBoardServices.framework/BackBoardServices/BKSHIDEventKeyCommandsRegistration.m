@interface BKSHIDEventKeyCommandsRegistration
- (BKSHIDEventKeyCommandsRegistration)init;
- (BKSHIDEventKeyCommandsRegistration)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (id)_initWithEnvironment:(id)a3 token:(id)a4 keyCommands:(id)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventKeyCommandsRegistration

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [v4 appendObject:self->_environment withName:@"environment"];
  v6 = [v4 appendObject:self->_token withName:@"token" skipIfNil:1];
  if ([v4 hasSuccinctStyle])
  {
    v7 = [v4 appendInteger:-[NSSet count](self->_keyCommands withName:{"count"), @"keyCommands"}];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__BKSHIDEventKeyCommandsRegistration_appendDescriptionToStream___block_invoke;
    v8[3] = &unk_1E6F47000;
    v8[4] = self;
    v9 = v4;
    [v9 appendCustomFormatWithName:@"keyCommands" block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
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
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && (environment = self->_environment, v8 = v4->_environment, BSEqualObjects()) && (token = self->_token, v10 = v4->_token, BSEqualObjects()))
    {
      keyCommands = self->_keyCommands;
      v12 = v4->_keyCommands;
      v13 = BSEqualObjects();
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  v4 = [(BKSHIDEventDeferringToken *)self->_token hash];
  return v3 ^ v4 ^ [(NSSet *)self->_keyCommands hash]^ 0x1E5B1;
}

- (BKSHIDEventKeyCommandsRegistration)initWithCoder:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    if (v12)
    {
      v9 = v12;
      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v15 forKey:@"keyCommands"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v10 bs_containsObjectPassingTest:&__block_literal_global_7724])
        {
          v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
          self = [(BKSHIDEventKeyCommandsRegistration *)self _initWithEnvironment:v9 token:v31 keyCommands:v10];

          v28 = self;
          goto LABEL_12;
        }

        v16 = MEMORY[0x1E696ABC0];
        v17 = *MEMORY[0x1E696A250];
        v38 = *MEMORY[0x1E696A588];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsRegistration: keyCommands contains non-BKSHIDEventKeyCommand elements : %@", v10];
        v39[0] = v18;
        v19 = MEMORY[0x1E695DF20];
        v20 = v39;
        v21 = &v38;
      }

      else
      {
        v16 = MEMORY[0x1E696ABC0];
        v17 = *MEMORY[0x1E696A250];
        v36 = *MEMORY[0x1E696A588];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsRegistration: keyCommands not of class NSSet : %@", v10];
        v37 = v18;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v37;
        v21 = &v36;
      }

      v26 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      v27 = [v16 errorWithDomain:v17 code:4866 userInfo:v26];
      [v4 failWithError:v27];
    }

    else
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v34 = *MEMORY[0x1E696A588];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsRegistration: invalid environment : environment=%@", 0];
      v35 = v10;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v25 = [v22 errorWithDomain:v23 code:4866 userInfo:v24];
      [v4 failWithError:v25];

      v9 = 0;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v32 = *MEMORY[0x1E696A588];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsRegistration: subclasses are not allowed : %@", objc_opt_class()];
    v33 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
    [v4 failWithError:v11];
  }

  v28 = 0;
LABEL_12:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

BOOL __52__BKSHIDEventKeyCommandsRegistration_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)encodeWithCoder:(id)a3
{
  environment = self->_environment;
  v5 = a3;
  [v5 encodeObject:environment forKey:@"environment"];
  [v5 encodeObject:self->_token forKey:@"token"];
  [v5 encodeObject:self->_keyCommands forKey:@"keyCommands"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventKeyCommandsRegistration allocWithZone:a3];
  environment = self->_environment;
  token = self->_token;
  keyCommands = self->_keyCommands;

  return [(BKSHIDEventKeyCommandsRegistration *)v4 _initWithEnvironment:environment token:token keyCommands:keyCommands];
}

- (id)_initWithEnvironment:(id)a3 token:(id)a4 keyCommands:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_class();
  if (v12 != objc_opt_class())
  {
    v13 = objc_opt_class();
    if (v13 != objc_opt_class())
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventKeyCommandsRegistration cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v29 = v24;
        v30 = 2114;
        v31 = v26;
        v32 = 2048;
        v33 = self;
        v34 = 2114;
        v35 = @"BKSHIDEventKeyCommandsRegistration.m";
        v36 = 1024;
        v37 = 35;
        v38 = 2114;
        v39 = v23;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638F5ECLL);
    }
  }

  v27.receiver = self;
  v27.super_class = BKSHIDEventKeyCommandsRegistration;
  v14 = [(BKSHIDEventKeyCommandsRegistration *)&v27 init];
  if (v14)
  {
    v15 = [v9 copy];
    environment = v14->_environment;
    v14->_environment = v15;

    v17 = [v10 copy];
    token = v14->_token;
    v14->_token = v17;

    v19 = [v11 copy];
    keyCommands = v14->_keyCommands;
    v14->_keyCommands = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BKSHIDEventKeyCommandsRegistration)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventKeyCommandsRegistration"];
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
    v16 = @"BKSHIDEventKeyCommandsRegistration.m";
    v17 = 1024;
    v18 = 30;
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