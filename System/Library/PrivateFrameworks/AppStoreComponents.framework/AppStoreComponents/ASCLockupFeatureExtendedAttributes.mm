@interface ASCLockupFeatureExtendedAttributes
- (ASCLockupFeatureExtendedAttributes)initWithCoder:(id)coder;
- (ASCLockupFeatureExtendedAttributes)initWithPrivacyPolicyUrl:(id)url eula:(id)eula;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureExtendedAttributes

- (ASCLockupFeatureExtendedAttributes)initWithPrivacyPolicyUrl:(id)url eula:(id)eula
{
  urlCopy = url;
  eulaCopy = eula;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureExtendedAttributes;
  v8 = [(ASCLockupFeatureExtendedAttributes *)&v14 init];
  if (v8)
  {
    v9 = [urlCopy copy];
    privacyPolicyUrl = v8->_privacyPolicyUrl;
    v8->_privacyPolicyUrl = v9;

    v11 = [eulaCopy copy];
    eula = v8->_eula;
    v8->_eula = v11;
  }

  return v8;
}

- (ASCLockupFeatureExtendedAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyUrl"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eula"];

  v7 = [(ASCLockupFeatureExtendedAttributes *)self initWithPrivacyPolicyUrl:v5 eula:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  privacyPolicyUrl = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
  [coderCopy encodeObject:privacyPolicyUrl forKey:@"privacyPolicyUrl"];

  eula = [(ASCLockupFeatureExtendedAttributes *)self eula];
  [coderCopy encodeObject:eula forKey:@"eula"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  privacyPolicyUrl = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
  [(ASCHasher *)v3 combineObject:privacyPolicyUrl];

  eula = [(ASCLockupFeatureExtendedAttributes *)self eula];
  [(ASCHasher *)v3 combineObject:eula];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
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

    if (!v8)
    {
      v7 = 0;
LABEL_21:

      goto LABEL_22;
    }

    privacyPolicyUrl = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
    privacyPolicyUrl2 = [(ASCLockupFeatureExtendedAttributes *)v8 privacyPolicyUrl];
    v11 = privacyPolicyUrl2;
    if (privacyPolicyUrl && privacyPolicyUrl2)
    {
      if ([privacyPolicyUrl isEqual:privacyPolicyUrl2])
      {
        goto LABEL_12;
      }
    }

    else if (privacyPolicyUrl == privacyPolicyUrl2)
    {
LABEL_12:
      eula = [(ASCLockupFeatureExtendedAttributes *)self eula];
      eula2 = [(ASCLockupFeatureExtendedAttributes *)v8 eula];
      v14 = eula2;
      if (eula && eula2)
      {
        v7 = [eula isEqual:eula2];
      }

      else
      {
        v7 = eula == eula2;
      }

      goto LABEL_20;
    }

    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  privacyPolicyUrl = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
  [(ASCDescriber *)v3 addObject:privacyPolicyUrl withName:@"privacyPolicyUrl"];

  eula = [(ASCLockupFeatureExtendedAttributes *)self eula];
  [(ASCDescriber *)v3 addObject:eula withName:@"eula"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end