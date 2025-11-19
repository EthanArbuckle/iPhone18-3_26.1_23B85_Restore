@interface _HMDIDSAccountIdentifier
+ (id)namespace;
- (BOOL)isEqual:(id)a3;
- (_HMDIDSAccountIdentifier)initWithCoder:(id)a3;
- (_HMDIDSAccountIdentifier)initWithIdentifier:(id)a3;
- (_HMDIDSAccountIdentifier)initWithIdentifierString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDIDSAccountIdentifier

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _HMDIDSAccountIdentifier;
  v4 = a3;
  [(_HMDAccountIdentifier *)&v6 encodeWithCoder:v4];
  v5 = [(_HMDIDSAccountIdentifier *)self identifierString:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HM.string"];
}

- (_HMDIDSAccountIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HMDIDSAccountIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.string"];
    identifierString = v5->_identifierString;
    v5->_identifierString = v6;
  }

  return v5;
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
      v7 = [(_HMDIDSAccountIdentifier *)self identifierString];
      v8 = [(_HMDIDSAccountIdentifier *)v6 identifierString];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_HMDIDSAccountIdentifier)initWithIdentifierString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSUUID alloc];
    v6 = +[_HMDIDSAccountIdentifier namespace];
    v7 = [v4 dataUsingEncoding:4];
    v8 = [v5 initWithNamespace:v6 data:v7];

    v14.receiver = self;
    v14.super_class = _HMDIDSAccountIdentifier;
    v9 = [(_HMDAccountIdentifier *)&v14 initWithIdentifier:v8];
    if (v9)
    {
      v10 = [v4 copy];
      identifierString = v9->_identifierString;
      v9->_identifierString = v10;
    }

    self = v9;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_HMDIDSAccountIdentifier)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"%@ is unavailable", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)namespace
{
  if (qword_10003B170 != -1)
  {
    dispatch_once(&qword_10003B170, &stru_1000308D0);
  }

  v3 = qword_10003B168;

  return v3;
}

@end