@interface ASCLockupFeatureExtendedAttributes
- (ASCLockupFeatureExtendedAttributes)initWithCoder:(id)a3;
- (ASCLockupFeatureExtendedAttributes)initWithPrivacyPolicyUrl:(id)a3 eula:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureExtendedAttributes

- (ASCLockupFeatureExtendedAttributes)initWithPrivacyPolicyUrl:(id)a3 eula:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureExtendedAttributes;
  v8 = [(ASCLockupFeatureExtendedAttributes *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    privacyPolicyUrl = v8->_privacyPolicyUrl;
    v8->_privacyPolicyUrl = v9;

    v11 = [v7 copy];
    eula = v8->_eula;
    v8->_eula = v11;
  }

  return v8;
}

- (ASCLockupFeatureExtendedAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyUrl"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eula"];

  v7 = [(ASCLockupFeatureExtendedAttributes *)self initWithPrivacyPolicyUrl:v5 eula:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
  [v4 encodeObject:v5 forKey:@"privacyPolicyUrl"];

  v6 = [(ASCLockupFeatureExtendedAttributes *)self eula];
  [v4 encodeObject:v6 forKey:@"eula"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupFeatureExtendedAttributes *)self eula];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
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

    if (!v8)
    {
      v7 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
    v10 = [(ASCLockupFeatureExtendedAttributes *)v8 privacyPolicyUrl];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
        goto LABEL_12;
      }
    }

    else if (v9 == v10)
    {
LABEL_12:
      v12 = [(ASCLockupFeatureExtendedAttributes *)self eula];
      v13 = [(ASCLockupFeatureExtendedAttributes *)v8 eula];
      v14 = v13;
      if (v12 && v13)
      {
        v7 = [v12 isEqual:v13];
      }

      else
      {
        v7 = v12 == v13;
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
  v4 = [(ASCLockupFeatureExtendedAttributes *)self privacyPolicyUrl];
  [(ASCDescriber *)v3 addObject:v4 withName:@"privacyPolicyUrl"];

  v5 = [(ASCLockupFeatureExtendedAttributes *)self eula];
  [(ASCDescriber *)v3 addObject:v5 withName:@"eula"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end