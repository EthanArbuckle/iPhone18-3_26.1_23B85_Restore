@interface FPTestingOperation
- (BOOL)isEqual:(id)equal;
- (FPTestingOperation)initWithCoder:(id)coder;
- (FPTestingOperation)initWithOperationIdentifier:(id)identifier;
- (int64_t)type;
@end

@implementation FPTestingOperation

- (FPTestingOperation)initWithOperationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FPTestingOperation;
  v6 = [(FPTestingOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationIdentifier, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[1] isEqualToString:self->_operationIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FPTestingOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_operationIdentifier"];

  if (v5)
  {
    self = [(FPTestingOperation *)self initWithOperationIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)type
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should be implemented by subclasses"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPTestingOperation type]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPTestingOperations.m", 67, [v2 UTF8String]);
}

@end