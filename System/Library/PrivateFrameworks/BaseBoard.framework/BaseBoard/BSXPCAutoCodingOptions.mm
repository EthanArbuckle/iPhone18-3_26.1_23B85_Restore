@interface BSXPCAutoCodingOptions
- (BSXPCAutoCodingOptions)init;
- (void)addSupportedCoding:(id)coding;
- (void)dealloc;
- (void)setSupportedCodings:(id)codings;
@end

@implementation BSXPCAutoCodingOptions

- (BSXPCAutoCodingOptions)init
{
  v4.receiver = self;
  v4.super_class = BSXPCAutoCodingOptions;
  v2 = [(BSXPCAutoCodingOptions *)&v4 init];
  if (v2)
  {
    if (qword_1ED44FF48 != -1)
    {
      dispatch_once(&qword_1ED44FF48, &__block_literal_global_137);
    }

    v2->_supportedCodings = [qword_1ED44FF40 copy];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BSXPCAutoCodingOptions;
  [(BSXPCAutoCodingOptions *)&v3 dealloc];
}

- (void)addSupportedCoding:(id)coding
{
  v21 = *MEMORY[0x1E69E9840];
  if (!coding)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"coding != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      *buf = 138544642;
      v10 = v7;
      v11 = 2114;
      v12 = NSStringFromClass(v8);
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BSXPCAutoCoding.m";
      v17 = 1024;
      v18 = 610;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF60570);
  }

  v4 = [(NSArray *)self->_supportedCodings arrayByAddingObject:?];

  [(BSXPCAutoCodingOptions *)self setSupportedCodings:v4];
}

- (void)setSupportedCodings:(id)codings
{
  v23 = *MEMORY[0x1E69E9840];
  if (!codings)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"supportedCodings != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      *buf = 138544642;
      v12 = v9;
      v13 = 2114;
      v14 = NSStringFromClass(v10);
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BSXPCAutoCoding.m";
      v19 = 1024;
      v20 = 615;
      v21 = 2114;
      v22 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF606F8);
  }

  bs_array = [codings bs_array];
  supportedCodings = self->_supportedCodings;
  if (supportedCodings != bs_array)
  {
    v6 = bs_array;

    if (!v6)
    {
      if (qword_1ED44FF48 != -1)
      {
        dispatch_once(&qword_1ED44FF48, &__block_literal_global_137);
      }

      v6 = qword_1ED44FF40;
    }

    self->_supportedCodings = [v6 copy];
  }
}

@end