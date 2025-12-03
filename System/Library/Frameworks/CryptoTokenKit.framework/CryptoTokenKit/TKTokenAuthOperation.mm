@interface TKTokenAuthOperation
- (TKTokenAuthOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)importOperation:(id)operation;
@end

@implementation TKTokenAuthOperation

- (TKTokenAuthOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TKTokenAuthOperation;
  v5 = [(TKTokenAuthOperation *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_authenticationError);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    authenticationError = v5->_authenticationError;
    v5->_authenticationError = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  authenticationError = self->_authenticationError;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_authenticationError);
  [coderCopy encodeObject:authenticationError forKey:v5];
}

- (void)importOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(TKTokenAuthOperation *)operationCopy importOperation:a2];
    }
  }

  authenticationError = [operationCopy authenticationError];
  authenticationError = self->_authenticationError;
  self->_authenticationError = authenticationError;
}

- (void)importOperation:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v9 handleFailureInMethod:a3 object:a2 file:@"TKTokenSession.m" lineNumber:99 description:{@"Attempt to import incompatible %@ into %@", v6, v8}];
}

@end