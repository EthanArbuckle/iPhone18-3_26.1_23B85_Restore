@interface _BSObjCValueBuilder
- (void)setCEncoding:(const char *)encoding;
- (void)setEncoding:(id)encoding;
- (void)setObjectType:(Class)type;
- (void)setType:(char)type;
- (void)setValueType:(id)type;
@end

@implementation _BSObjCValueBuilder

- (void)setEncoding:(id)encoding
{
  v26 = *MEMORY[0x1E69E9840];
  encodingCopy = encoding;
  v13 = encodingCopy;
  if (!encodingCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"encoding != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"BSObjCRuntime.m";
      v22 = 1024;
      v23 = 1751;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF41F84);
  }

  v6 = [encodingCopy copy];
  encoding = self->_encoding;
  self->_encoding = v6;
}

- (void)setCEncoding:(const char *)encoding
{
  v23 = *MEMORY[0x1E69E9840];
  if (!encoding)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"encoding != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BSObjCRuntime.m";
      v19 = 1024;
      v20 = 1756;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    qword_1EAD33B00 = [v5 UTF8String];
    __break(0);
    JUMPOUT(0x18FF42160);
  }

  v10 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:?];
  [(_BSObjCValueBuilder *)self setEncoding:v10];
}

- (void)setType:(char)type
{
  v23 = *MEMORY[0x1E69E9840];
  if (type == 63)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"type != BSObjCTypeUnknown"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BSObjCRuntime.m";
      v19 = 1024;
      v20 = 1761;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    qword_1EAD33B00 = [v5 UTF8String];
    __break(0);
    JUMPOUT(0x18FF42354);
  }

  type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", type];
  [(_BSObjCValueBuilder *)self setEncoding:type];
}

- (void)setObjectType:(Class)type
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  if (!type)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"clazz"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSObjCRuntime.m";
      v21 = 1024;
      v22 = 1766;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF42550);
  }

  v12 = NSStringFromClass([(objc_class *)type classForCoder]);
  v5 = [v4 stringWithFormat:@"@%@", v12];
  [(_BSObjCValueBuilder *)self setEncoding:v5];
}

- (void)setValueType:(id)type
{
  v25 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v12 = typeCopy;
  if (!typeCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"value"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSObjCRuntime.m";
      v21 = 1024;
      v22 = 1771;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF42750);
  }

  v6 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:{objc_msgSend(typeCopy, "objCType")}];
  [(_BSObjCValueBuilder *)self setEncoding:v6];
}

@end