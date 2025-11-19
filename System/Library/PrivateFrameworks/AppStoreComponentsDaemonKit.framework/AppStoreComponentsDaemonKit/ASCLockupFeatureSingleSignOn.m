@interface ASCLockupFeatureSingleSignOn
- (ASCLockupFeatureSingleSignOn)initWithCoder:(id)a3;
- (ASCLockupFeatureSingleSignOn)initWithRequiresSSOEntitlement:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureSingleSignOn

- (ASCLockupFeatureSingleSignOn)initWithRequiresSSOEntitlement:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ASCLockupFeatureSingleSignOn;
  result = [(ASCLockupFeatureSingleSignOn *)&v5 init];
  if (result)
  {
    result->_requiresSSOEntitlement = a3;
  }

  return result;
}

- (ASCLockupFeatureSingleSignOn)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"requiresSSOEntitlement"];

  return [(ASCLockupFeatureSingleSignOn *)self initWithRequiresSSOEntitlement:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[ASCLockupFeatureSingleSignOn requiresSSOEntitlement](self forKey:{"requiresSSOEntitlement"), @"requiresSSOEntitlement"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineBool:[(ASCLockupFeatureSingleSignOn *)self requiresSSOEntitlement]];
  v4 = [(ASCHasher *)v3 finalizeHash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    v5 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (v8)
    {
      v9 = [(ASCLockupFeatureSingleSignOn *)self requiresSSOEntitlement];
      v7 = v9 ^ [(ASCLockupFeatureSingleSignOn *)v8 requiresSSOEntitlement]^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  [(ASCDescriber *)v3 addBool:[(ASCLockupFeatureSingleSignOn *)self requiresSSOEntitlement] withName:@"requiresSSOEntitlement"];
  v4 = [(ASCDescriber *)v3 finalizeDescription];

  return v4;
}

@end