@interface ASCLockupFeatureAppDistributionInstall
- (ASCLockupFeatureAppDistributionInstall)initWithCoder:(id)a3;
- (ASCLockupFeatureAppDistributionInstall)initWithDeveloperId:(id)a3 webDistributionDomains:(id)a4 supportUrl:(id)a5 ageRatingValue:(int64_t)a6 contentRatingsBySystem:(id)a7 isDistributor:(BOOL)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureAppDistributionInstall

- (ASCLockupFeatureAppDistributionInstall)initWithDeveloperId:(id)a3 webDistributionDomains:(id)a4 supportUrl:(id)a5 ageRatingValue:(int64_t)a6 contentRatingsBySystem:(id)a7 isDistributor:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = ASCLockupFeatureAppDistributionInstall;
  v18 = [(ASCLockupFeatureAppDistributionInstall *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    developerId = v18->_developerId;
    v18->_developerId = v19;

    v21 = [v15 copy];
    webDistributionDomains = v18->_webDistributionDomains;
    v18->_webDistributionDomains = v21;

    v23 = [v16 copy];
    supportUrl = v18->_supportUrl;
    v18->_supportUrl = v23;

    v18->_ageRatingValue = a6;
    v25 = [v17 copy];
    contentRatingsBySystem = v18->_contentRatingsBySystem;
    v18->_contentRatingsBySystem = v25;

    v18->_isDistributor = a8;
  }

  return v18;
}

- (ASCLockupFeatureAppDistributionInstall)initWithCoder:(id)a3
{
  v3 = a3;
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"developerId"];
  v4 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"webDistributionDomains"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"supportUrl"];
  v6 = [v3 decodeIntegerForKey:@"ageRatingValue"];
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 initWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"contentRatingsBySystem"];
  v14 = [v3 decodeBoolForKey:@"isDistributor"];

  v15 = [(ASCLockupFeatureAppDistributionInstall *)self initWithDeveloperId:v17 webDistributionDomains:v4 supportUrl:v5 ageRatingValue:v6 contentRatingsBySystem:v13 isDistributor:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
  [v8 encodeObject:v4 forKey:@"developerId"];

  v5 = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
  [v8 encodeObject:v5 forKey:@"webDistributionDomains"];

  v6 = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
  [v8 encodeObject:v6 forKey:@"supportUrl"];

  [v8 encodeInteger:-[ASCLockupFeatureAppDistributionInstall ageRatingValue](self forKey:{"ageRatingValue"), @"ageRatingValue"}];
  v7 = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
  [v8 encodeObject:v7 forKey:@"contentRatingsBySystem"];

  [v8 encodeBool:-[ASCLockupFeatureAppDistributionInstall isDistributor](self forKey:{"isDistributor"), @"isDistributor"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCLockupFeatureAppDistributionInstall *)self ageRatingValue]];
  v7 = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
  [(ASCHasher *)v3 combineObject:v7];

  [(ASCHasher *)v3 combineBool:[(ASCLockupFeatureAppDistributionInstall *)self isDistributor]];
  v8 = [(ASCHasher *)v3 finalizeHash];

  return v8;
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
LABEL_37:

      goto LABEL_38;
    }

    v9 = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
    v10 = [(ASCLockupFeatureAppDistributionInstall *)v8 developerId];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        v12 = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
        v13 = [(ASCLockupFeatureAppDistributionInstall *)v8 webDistributionDomains];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
LABEL_15:
            v15 = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
            v16 = [(ASCLockupFeatureAppDistributionInstall *)v8 supportUrl];
            v17 = v16;
            if (v15 && v16)
            {
              if (![v15 isEqual:v16])
              {
                goto LABEL_30;
              }
            }

            else if (v15 != v16)
            {
              goto LABEL_30;
            }

            v18 = [(ASCLockupFeatureAppDistributionInstall *)self ageRatingValue];
            if (v18 == [(ASCLockupFeatureAppDistributionInstall *)v8 ageRatingValue])
            {
              v19 = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
              v20 = [(ASCLockupFeatureAppDistributionInstall *)v8 contentRatingsBySystem];
              v21 = v20;
              v28 = v19;
              if (v19 && v20)
              {
                v22 = v20;
                v23 = [v28 isEqual:v20];
                v21 = v22;
                if (v23)
                {
LABEL_29:
                  v24 = v21;
                  v25 = [(ASCLockupFeatureAppDistributionInstall *)self isDistributor];
                  v26 = [(ASCLockupFeatureAppDistributionInstall *)v8 isDistributor];
                  v21 = v24;
                  v7 = v25 ^ v26 ^ 1;
LABEL_33:

                  goto LABEL_34;
                }
              }

              else if (v19 == v20)
              {
                goto LABEL_29;
              }

              v7 = 0;
              goto LABEL_33;
            }

LABEL_30:
            v7 = 0;
LABEL_34:

            goto LABEL_35;
          }
        }

        else if (v12 == v13)
        {
          goto LABEL_15;
        }

        v7 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else if (v9 == v10)
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v7 = 1;
LABEL_38:

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
  [(ASCDescriber *)v3 addObject:v4 withName:@"developerId"];

  v5 = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
  [(ASCDescriber *)v3 addObject:v5 withName:@"webDistributionDomains"];

  v6 = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
  [(ASCDescriber *)v3 addObject:v6 withName:@"supportUrl"];

  [(ASCDescriber *)v3 addInteger:[(ASCLockupFeatureAppDistributionInstall *)self ageRatingValue] withName:@"ageRatingValue"];
  v7 = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
  [(ASCDescriber *)v3 addObject:v7 withName:@"contentRatingsBySystem"];

  [(ASCDescriber *)v3 addBool:[(ASCLockupFeatureAppDistributionInstall *)self isDistributor] withName:@"isDistributor"];
  v8 = [(ASCDescriber *)v3 finalizeDescription];

  return v8;
}

@end