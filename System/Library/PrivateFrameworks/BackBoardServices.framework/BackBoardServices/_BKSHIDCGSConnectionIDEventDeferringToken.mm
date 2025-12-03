@interface _BKSHIDCGSConnectionIDEventDeferringToken
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (_BKSHIDCGSConnectionIDEventDeferringToken)initWithCoder:(id)coder;
- (id)_initWithCGSConnectionID:(unsigned int)d;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSHIDCGSConnectionIDEventDeferringToken

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:-[_BKSHIDCGSConnectionIDEventDeferringToken _identifierOfCGSConnection](self withName:"_identifierOfCGSConnection") format:{0, 1}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_CGSConnectionID == equalCopy->_CGSConnectionID;
  }

  return v6;
}

- (_BKSHIDCGSConnectionIDEventDeferringToken)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _BKSHIDCGSConnectionIDEventDeferringToken;
  _init = [(BKSHIDEventDeferringToken *)&v19 _init];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v16 = [coderCopy decodeInt32ForKey:@"CGSConnection"];
    if (v16)
    {
      _init[2] = v16;
      v15 = _init;
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
  [coderCopy failWithError:v14];

  v15 = 0;
LABEL_6:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  CGSConnectionID = self->_CGSConnectionID;
  if (CGSConnectionID)
  {
    [coder encodeInt32:CGSConnectionID forKey:@"CGSConnection"];
  }
}

- (id)initForProtobufDecoding
{
  v24 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _BKSHIDCGSConnectionIDEventDeferringToken;
  _init = [(BKSHIDEventDeferringToken *)&v11 _init];
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
      v17 = _init;
      v18 = 2114;
      v19 = @"BKSHIDEventDeferringToken.m";
      v20 = 1024;
      v21 = 286;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637E244);
  }

  v5 = *MEMORY[0x1E69E9840];
  return _init;
}

- (id)_initWithCGSConnectionID:(unsigned int)d
{
  v5.receiver = self;
  v5.super_class = _BKSHIDCGSConnectionIDEventDeferringToken;
  result = [(BKSHIDEventDeferringToken *)&v5 _init];
  if (result)
  {
    *(result + 2) = d;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___BKSHIDCGSConnectionIDEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_79 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_79, block);
  }

  v2 = protobufSchema_schema_78;

  return v2;
}

@end