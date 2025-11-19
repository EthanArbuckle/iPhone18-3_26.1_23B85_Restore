@interface _BKSHIDStringIdentifierEventDeferringToken
+ (id)protobufSchema;
- (BOOL)isEqual:(id)a3;
- (_BKSHIDStringIdentifierEventDeferringToken)init;
- (_BKSHIDStringIdentifierEventDeferringToken)initWithCoder:(id)a3;
- (id)_initWithString:(id)a3;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BKSHIDStringIdentifierEventDeferringToken

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [(_BKSHIDStringIdentifierEventDeferringToken *)self _string];
  v5 = [v6 appendObject:v4 withName:0 skipIfNil:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(NSString *)self->_stringIdentifier isEqual:v4->_stringIdentifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (_BKSHIDStringIdentifierEventDeferringToken)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _BKSHIDStringIdentifierEventDeferringToken;
  v5 = [(BKSHIDEventDeferringToken *)&v22 _init];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringIdentifier"];
    if ([v13 length])
    {
      v14 = v5[1];
      v5[1] = v13;

      v12 = v5;
      goto LABEL_6;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v25 = *MEMORY[0x1E696A588];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringToken: empty string"];
    v26[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v21 = [v17 errorWithDomain:v18 code:4866 userInfo:v20];
    [v4 failWithError:v21];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v23 = *MEMORY[0x1E696A588];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringToken: subclasses are not allowed : %@", objc_opt_class()];
    v24 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
    [v4 failWithError:v11];
  }

  v12 = 0;
LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_stringIdentifier length])
  {
    [v4 encodeObject:self->_stringIdentifier forKey:@"stringIdentifier"];
  }
}

- (id)initForProtobufDecoding
{
  v24 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _BKSHIDStringIdentifierEventDeferringToken;
  v3 = [(BKSHIDEventDeferringToken *)&v11 _init];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot subclass BKSHIDEventDeferringToken"];
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
      v19 = @"BKSHIDEventDeferringToken.m";
      v20 = 1024;
      v21 = 179;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637E90CLL);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BKSHIDStringIdentifierEventDeferringToken;
  v5 = [(BKSHIDEventDeferringToken *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (_BKSHIDStringIdentifierEventDeferringToken)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on _BKSHIDStringIdentifierEventDeferringToken"];
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
    v16 = @"BKSHIDEventDeferringToken.m";
    v17 = 1024;
    v18 = 141;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___BKSHIDStringIdentifierEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_54 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_54, block);
  }

  v2 = protobufSchema_schema_53;

  return v2;
}

@end