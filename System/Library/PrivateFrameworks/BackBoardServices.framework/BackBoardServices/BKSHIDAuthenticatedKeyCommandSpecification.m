@interface BKSHIDAuthenticatedKeyCommandSpecification
+ (id)protobufSchema;
+ (id)specificationWithKeyCommand:(id)a3 context:(unint64_t)a4;
- (BKSHIDAuthenticatedKeyCommandSpecification)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDAuthenticatedKeyCommandSpecification

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendUInt64:self->_context withName:@"context" format:1];
  v5 = [v6 appendObject:self->_keyCommand withName:@"keyCommands"];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDAuthenticatedKeyCommandSpecification;
  return [(BKSHIDAuthenticatedKeyCommandSpecification *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  keyCommand = self->_keyCommand;
  v5 = a3;
  [v5 encodeObject:keyCommand forKey:@"keyCommand"];
  [v5 encodeInt64:self->_context forKey:@"context"];
}

- (BKSHIDAuthenticatedKeyCommandSpecification)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[BKSHIDAuthenticatedKeyCommandSpecification alloc] _init];

  if (v5)
  {
    v5->_context = [v4 decodeInt64ForKey:@"context"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyCommand"];
    keyCommand = v5->_keyCommand;
    v5->_keyCommand = v6;

    v8 = v5->_keyCommand;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A798];
      v20 = *MEMORY[0x1E696A588];
      v11 = v5->_keyCommand;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_keyCommand invalid class:%@", objc_opt_class()];
      v21[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v14 = [v9 errorWithDomain:v10 code:22 userInfo:v13];

      if (v14)
      {
        v15 = BKLogEventDelivery();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v14;
          _os_log_error_impl(&dword_186345000, v15, OS_LOG_TYPE_ERROR, "error decoding authenticated key command spec:%{public}@", buf, 0xCu);
        }

        [v4 failWithError:v14];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_context)
  {
    v5 = v4[2];
    keyCommand = self->_keyCommand;
    v7 = BSEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_init
{
  v24 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = BKSHIDAuthenticatedKeyCommandSpecification;
  v3 = [(BKSHIDAuthenticatedKeyCommandSpecification *)&v11 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no subclassing"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        v16 = 2048;
        v17 = v3;
        v18 = 2114;
        v19 = @"BKSHIDAuthenticatedKeyCommandSpecification.m";
        v20 = 1024;
        v21 = 28;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B70F8);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__BKSHIDAuthenticatedKeyCommandSpecification_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_13750 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_13750, block);
  }

  v2 = protobufSchema_schema_13751;

  return v2;
}

uint64_t __60__BKSHIDAuthenticatedKeyCommandSpecification_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E698E750] buildSchemaForClass:objc_opt_class() builder:&__block_literal_global_13753];
  v3 = protobufSchema_schema_13751;
  protobufSchema_schema_13751 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __60__BKSHIDAuthenticatedKeyCommandSpecification_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_context"];
  [v2 addRepeatingField:"_keyCommands" containsClass:objc_opt_class()];
}

+ (id)specificationWithKeyCommand:(id)a3 context:(unint64_t)a4
{
  v5 = a3;
  v6 = [[BKSHIDAuthenticatedKeyCommandSpecification alloc] _init];
  [v6 setContext:a4];
  [v6 setKeyCommand:v5];

  return v6;
}

@end