@interface TKTokenPasswordAuthOperation
- (TKTokenPasswordAuthOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)importOperation:(id)operation;
@end

@implementation TKTokenPasswordAuthOperation

- (TKTokenPasswordAuthOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TKTokenPasswordAuthOperation;
  v5 = [(TKTokenAuthOperation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_password);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    password = v5->_password;
    v5->_password = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_localizedPasswordLabel);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    localizedPasswordLabel = v5->_localizedPasswordLabel;
    v5->_localizedPasswordLabel = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TKTokenPasswordAuthOperation;
  coderCopy = coder;
  [(TKTokenAuthOperation *)&v9 encodeWithCoder:coderCopy];
  password = self->_password;
  v6 = NSStringFromSelector(sel_password);
  [coderCopy encodeObject:password forKey:{v6, v9.receiver, v9.super_class}];

  localizedPasswordLabel = self->_localizedPasswordLabel;
  v8 = NSStringFromSelector(sel_localizedPasswordLabel);
  [coderCopy encodeObject:localizedPasswordLabel forKey:v8];
}

- (void)importOperation:(id)operation
{
  v9.receiver = self;
  v9.super_class = TKTokenPasswordAuthOperation;
  operationCopy = operation;
  [(TKTokenAuthOperation *)&v9 importOperation:operationCopy];
  localizedPasswordLabel = [operationCopy localizedPasswordLabel];
  localizedPasswordLabel = self->_localizedPasswordLabel;
  self->_localizedPasswordLabel = localizedPasswordLabel;

  password = [operationCopy password];

  password = self->_password;
  self->_password = password;
}

@end