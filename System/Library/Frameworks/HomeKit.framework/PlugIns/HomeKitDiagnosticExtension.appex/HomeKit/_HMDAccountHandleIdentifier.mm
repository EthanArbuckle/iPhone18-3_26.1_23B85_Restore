@interface _HMDAccountHandleIdentifier
- (BOOL)isEqual:(id)equal;
- (_HMDAccountHandleIdentifier)initWithAccountHandle:(id)handle;
- (_HMDAccountHandleIdentifier)initWithCoder:(id)coder;
- (_HMDAccountHandleIdentifier)initWithIdentifier:(id)identifier;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HMDAccountHandleIdentifier

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _HMDAccountHandleIdentifier;
  coderCopy = coder;
  [(_HMDAccountIdentifier *)&v6 encodeWithCoder:coderCopy];
  v5 = [(_HMDAccountHandleIdentifier *)self accountHandle:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.handle"];
}

- (_HMDAccountHandleIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HMDAccountHandleIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.handle"];
    accountHandle = v5->_accountHandle;
    v5->_accountHandle = v6;
  }

  return v5;
}

- (id)identifier
{
  accountHandle = [(_HMDAccountHandleIdentifier *)self accountHandle];
  identifier = [accountHandle identifier];

  return identifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      accountHandle = [(_HMDAccountHandleIdentifier *)self accountHandle];
      accountHandle2 = [(_HMDAccountHandleIdentifier *)v6 accountHandle];
      v9 = [accountHandle isEqual:accountHandle2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_HMDAccountHandleIdentifier)initWithAccountHandle:(id)handle
{
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy)
  {
    identifier = [handleCopy identifier];
    v12.receiver = self;
    v12.super_class = _HMDAccountHandleIdentifier;
    v7 = [(_HMDAccountIdentifier *)&v12 initWithIdentifier:identifier];

    if (v7)
    {
      v8 = [v5 copy];
      accountHandle = v7->_accountHandle;
      v7->_accountHandle = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_HMDAccountHandleIdentifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"%@ is unavailable", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end