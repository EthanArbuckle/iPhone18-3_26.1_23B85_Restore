@interface ASCLockupFeatureSingleSignOn
- (ASCLockupFeatureSingleSignOn)initWithCoder:(id)coder;
- (ASCLockupFeatureSingleSignOn)initWithRequiresSSOEntitlement:(BOOL)entitlement;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureSingleSignOn

- (ASCLockupFeatureSingleSignOn)initWithRequiresSSOEntitlement:(BOOL)entitlement
{
  v5.receiver = self;
  v5.super_class = ASCLockupFeatureSingleSignOn;
  result = [(ASCLockupFeatureSingleSignOn *)&v5 init];
  if (result)
  {
    result->_requiresSSOEntitlement = entitlement;
  }

  return result;
}

- (ASCLockupFeatureSingleSignOn)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"requiresSSOEntitlement"];

  return [(ASCLockupFeatureSingleSignOn *)self initWithRequiresSSOEntitlement:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ASCLockupFeatureSingleSignOn requiresSSOEntitlement](self forKey:{"requiresSSOEntitlement"), @"requiresSSOEntitlement"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineBool:[(ASCLockupFeatureSingleSignOn *)self requiresSSOEntitlement]];
  finalizeHash = [(ASCHasher *)v3 finalizeHash];

  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
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
      requiresSSOEntitlement = [(ASCLockupFeatureSingleSignOn *)self requiresSSOEntitlement];
      v7 = requiresSSOEntitlement ^ [(ASCLockupFeatureSingleSignOn *)v8 requiresSSOEntitlement]^ 1;
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
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end