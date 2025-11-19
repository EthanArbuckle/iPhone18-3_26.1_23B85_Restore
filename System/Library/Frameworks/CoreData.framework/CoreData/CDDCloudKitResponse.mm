@interface CDDCloudKitResponse
- (CDDCloudKitResponse)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initWithMessage:(char)a3 success:(void *)a4 error:;
@end

@implementation CDDCloudKitResponse

- (void)initWithMessage:(char)a3 success:(void *)a4 error:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = CDDCloudKitResponse;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    v7[2] = a2;
    *(v7 + 8) = a3;
    v7[3] = a4;
  }

  return v7;
}

- (void)dealloc
{
  self->_error = 0;
  v3.receiver = self;
  v3.super_class = CDDCloudKitResponse;
  [(CDDCloudKitResponse *)&v3 dealloc];
}

- (CDDCloudKitResponse)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = [a3 decodeBoolForKey:@"success"];
  objc_opt_self();
  if (qword_1ED4BEA88 != -1)
  {
    dispatch_once(&qword_1ED4BEA88, &__block_literal_global_15);
  }

  v7 = [a3 decodeObjectOfClasses:_MergedGlobals_78 forKey:@"error"];

  return [(CDDCloudKitResponse *)self initWithMessage:v5 success:v6 error:v7];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_message forKey:@"message"];
  [a3 encodeBool:self->_success forKey:@"success"];
  error = self->_error;

  [a3 encodeObject:error forKey:@"error"];
}

uint64_t __44__CDDCloudKitResponse_supportedErrorClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  _MergedGlobals_78 = result;
  return result;
}

@end