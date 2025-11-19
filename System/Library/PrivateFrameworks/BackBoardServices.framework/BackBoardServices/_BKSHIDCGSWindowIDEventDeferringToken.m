@interface _BKSHIDCGSWindowIDEventDeferringToken
+ (id)protobufSchema;
- (BOOL)isEqual:(id)a3;
- (_BKSHIDCGSWindowIDEventDeferringToken)initWithCoder:(id)a3;
- (id)_initWithCGSWindowID:(unsigned int)a3;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BKSHIDCGSWindowIDEventDeferringToken

- (void)appendDescriptionToFormatter:(id)a3
{
  v5 = a3;
  v4 = [v5 appendUInt64:-[_BKSHIDCGSWindowIDEventDeferringToken _identifierOfCGSWindow](self withName:{"_identifierOfCGSWindow"), 0}];
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
    v6 = v5 == objc_opt_class() && self->_CGSWindowID == v4->_CGSWindowID;
  }

  return v6;
}

- (_BKSHIDCGSWindowIDEventDeferringToken)initWithCoder:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _BKSHIDCGSWindowIDEventDeferringToken;
  v5 = [(BKSHIDEventDeferringToken *)&v19 _init];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v16 = [v4 decodeInt32ForKey:@"CGSWindowID"];
    if (v16)
    {
      v5[2] = v16;
      v15 = v5;
      goto LABEL_6;
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v22 = *MEMORY[0x1E696A588];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringToken: invalid connectionID : %i", 0];
    v23[0] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v23;
    v12 = &v22;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A588];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDeferringToken: subclasses are not allowed : %@", objc_opt_class()];
    v21 = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v21;
    v12 = &v20;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v14 = [v7 errorWithDomain:v8 code:4866 userInfo:v13];
  [v4 failWithError:v14];

  v15 = 0;
LABEL_6:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  CGSWindowID = self->_CGSWindowID;
  if (CGSWindowID)
  {
    [a3 encodeInt32:CGSWindowID forKey:@"CGSWindowID"];
  }
}

- (id)initForProtobufDecoding
{
  v24 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _BKSHIDCGSWindowIDEventDeferringToken;
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
      v21 = 393;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637D80CLL);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_initWithCGSWindowID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = _BKSHIDCGSWindowIDEventDeferringToken;
  result = [(BKSHIDEventDeferringToken *)&v5 _init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___BKSHIDCGSWindowIDEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_100 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_100, block);
  }

  v2 = protobufSchema_schema_99;

  return v2;
}

@end