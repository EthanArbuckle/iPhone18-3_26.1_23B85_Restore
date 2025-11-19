@interface _HMDAccountIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)kind;
- (_HMDAccountIdentifier)init;
- (_HMDAccountIdentifier)initWithCoder:(id)a3;
- (_HMDAccountIdentifier)initWithIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDAccountIdentifier

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HMDAccountIdentifier *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];
}

- (_HMDAccountIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HMDAccountIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (NSString)kind
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(_HMDAccountIdentifier *)self identifier];
      v8 = [(_HMDAccountIdentifier *)v6 identifier];
      v9 = [v7 hmf_isEqualToUUID:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(_HMDAccountIdentifier *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (_HMDAccountIdentifier)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = _HMDAccountIdentifier;
    v5 = [(_HMDAccountIdentifier *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_HMDAccountIdentifier)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

@end