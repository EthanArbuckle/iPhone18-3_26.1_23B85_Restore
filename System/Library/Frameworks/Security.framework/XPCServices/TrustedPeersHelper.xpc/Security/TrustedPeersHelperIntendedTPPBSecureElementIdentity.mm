@interface TrustedPeersHelperIntendedTPPBSecureElementIdentity
+ (id)intendedEmptyIdentity;
- (TrustedPeersHelperIntendedTPPBSecureElementIdentity)initWithCoder:(id)coder;
- (TrustedPeersHelperIntendedTPPBSecureElementIdentity)initWithSecureElementIdentity:(id)identity;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperIntendedTPPBSecureElementIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  secureElementIdentity = [(TrustedPeersHelperIntendedTPPBSecureElementIdentity *)self secureElementIdentity];
  [coderCopy encodeObject:secureElementIdentity forKey:@"identity"];
}

- (TrustedPeersHelperIntendedTPPBSecureElementIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TrustedPeersHelperIntendedTPPBSecureElementIdentity;
  v5 = [(TrustedPeersHelperIntendedTPPBSecureElementIdentity *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    secureElementIdentity = v5->_secureElementIdentity;
    v5->_secureElementIdentity = v6;
  }

  return v5;
}

- (id)description
{
  secureElementIdentity = [(TrustedPeersHelperIntendedTPPBSecureElementIdentity *)self secureElementIdentity];
  v3 = [NSString stringWithFormat:@"<TrustedPeersHelperIntendedTPPBSecureElementIdentity: %@>", secureElementIdentity];

  return v3;
}

- (TrustedPeersHelperIntendedTPPBSecureElementIdentity)initWithSecureElementIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = TrustedPeersHelperIntendedTPPBSecureElementIdentity;
  v6 = [(TrustedPeersHelperIntendedTPPBSecureElementIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secureElementIdentity, identity);
  }

  return v7;
}

+ (id)intendedEmptyIdentity
{
  v2 = [[TrustedPeersHelperIntendedTPPBSecureElementIdentity alloc] initWithSecureElementIdentity:0];

  return v2;
}

@end