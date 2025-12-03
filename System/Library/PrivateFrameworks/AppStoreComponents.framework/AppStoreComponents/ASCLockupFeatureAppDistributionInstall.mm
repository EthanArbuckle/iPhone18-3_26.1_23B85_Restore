@interface ASCLockupFeatureAppDistributionInstall
- (ASCLockupFeatureAppDistributionInstall)initWithCoder:(id)coder;
- (ASCLockupFeatureAppDistributionInstall)initWithDeveloperId:(id)id webDistributionDomains:(id)domains supportUrl:(id)url ageRatingValue:(int64_t)value contentRatingsBySystem:(id)system isDistributor:(BOOL)distributor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureAppDistributionInstall

- (ASCLockupFeatureAppDistributionInstall)initWithDeveloperId:(id)id webDistributionDomains:(id)domains supportUrl:(id)url ageRatingValue:(int64_t)value contentRatingsBySystem:(id)system isDistributor:(BOOL)distributor
{
  idCopy = id;
  domainsCopy = domains;
  urlCopy = url;
  systemCopy = system;
  v28.receiver = self;
  v28.super_class = ASCLockupFeatureAppDistributionInstall;
  v18 = [(ASCLockupFeatureAppDistributionInstall *)&v28 init];
  if (v18)
  {
    v19 = [idCopy copy];
    developerId = v18->_developerId;
    v18->_developerId = v19;

    v21 = [domainsCopy copy];
    webDistributionDomains = v18->_webDistributionDomains;
    v18->_webDistributionDomains = v21;

    v23 = [urlCopy copy];
    supportUrl = v18->_supportUrl;
    v18->_supportUrl = v23;

    v18->_ageRatingValue = value;
    v25 = [systemCopy copy];
    contentRatingsBySystem = v18->_contentRatingsBySystem;
    v18->_contentRatingsBySystem = v25;

    v18->_isDistributor = distributor;
  }

  return v18;
}

- (ASCLockupFeatureAppDistributionInstall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerId"];
  v4 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"webDistributionDomains"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportUrl"];
  v6 = [coderCopy decodeIntegerForKey:@"ageRatingValue"];
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 initWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"contentRatingsBySystem"];
  v14 = [coderCopy decodeBoolForKey:@"isDistributor"];

  v15 = [(ASCLockupFeatureAppDistributionInstall *)self initWithDeveloperId:v17 webDistributionDomains:v4 supportUrl:v5 ageRatingValue:v6 contentRatingsBySystem:v13 isDistributor:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  developerId = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
  [coderCopy encodeObject:developerId forKey:@"developerId"];

  webDistributionDomains = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
  [coderCopy encodeObject:webDistributionDomains forKey:@"webDistributionDomains"];

  supportUrl = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
  [coderCopy encodeObject:supportUrl forKey:@"supportUrl"];

  [coderCopy encodeInteger:-[ASCLockupFeatureAppDistributionInstall ageRatingValue](self forKey:{"ageRatingValue"), @"ageRatingValue"}];
  contentRatingsBySystem = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
  [coderCopy encodeObject:contentRatingsBySystem forKey:@"contentRatingsBySystem"];

  [coderCopy encodeBool:-[ASCLockupFeatureAppDistributionInstall isDistributor](self forKey:{"isDistributor"), @"isDistributor"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  developerId = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
  [(ASCHasher *)v3 combineObject:developerId];

  webDistributionDomains = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
  [(ASCHasher *)v3 combineObject:webDistributionDomains];

  supportUrl = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
  [(ASCHasher *)v3 combineObject:supportUrl];

  [(ASCHasher *)v3 combineInteger:[(ASCLockupFeatureAppDistributionInstall *)self ageRatingValue]];
  contentRatingsBySystem = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
  [(ASCHasher *)v3 combineObject:contentRatingsBySystem];

  [(ASCHasher *)v3 combineBool:[(ASCLockupFeatureAppDistributionInstall *)self isDistributor]];
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
LABEL_37:

      goto LABEL_38;
    }

    developerId = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
    developerId2 = [(ASCLockupFeatureAppDistributionInstall *)v8 developerId];
    v11 = developerId2;
    if (developerId && developerId2)
    {
      if ([developerId isEqual:developerId2])
      {
LABEL_12:
        webDistributionDomains = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
        webDistributionDomains2 = [(ASCLockupFeatureAppDistributionInstall *)v8 webDistributionDomains];
        v14 = webDistributionDomains2;
        if (webDistributionDomains && webDistributionDomains2)
        {
          if ([webDistributionDomains isEqual:webDistributionDomains2])
          {
LABEL_15:
            supportUrl = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
            supportUrl2 = [(ASCLockupFeatureAppDistributionInstall *)v8 supportUrl];
            v17 = supportUrl2;
            if (supportUrl && supportUrl2)
            {
              if (![supportUrl isEqual:supportUrl2])
              {
                goto LABEL_30;
              }
            }

            else if (supportUrl != supportUrl2)
            {
              goto LABEL_30;
            }

            ageRatingValue = [(ASCLockupFeatureAppDistributionInstall *)self ageRatingValue];
            if (ageRatingValue == [(ASCLockupFeatureAppDistributionInstall *)v8 ageRatingValue])
            {
              contentRatingsBySystem = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
              contentRatingsBySystem2 = [(ASCLockupFeatureAppDistributionInstall *)v8 contentRatingsBySystem];
              v21 = contentRatingsBySystem2;
              v28 = contentRatingsBySystem;
              if (contentRatingsBySystem && contentRatingsBySystem2)
              {
                v22 = contentRatingsBySystem2;
                v23 = [v28 isEqual:contentRatingsBySystem2];
                v21 = v22;
                if (v23)
                {
LABEL_29:
                  v24 = v21;
                  isDistributor = [(ASCLockupFeatureAppDistributionInstall *)self isDistributor];
                  isDistributor2 = [(ASCLockupFeatureAppDistributionInstall *)v8 isDistributor];
                  v21 = v24;
                  v7 = isDistributor ^ isDistributor2 ^ 1;
LABEL_33:

                  goto LABEL_34;
                }
              }

              else if (contentRatingsBySystem == contentRatingsBySystem2)
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

        else if (webDistributionDomains == webDistributionDomains2)
        {
          goto LABEL_15;
        }

        v7 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else if (developerId == developerId2)
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
  developerId = [(ASCLockupFeatureAppDistributionInstall *)self developerId];
  [(ASCDescriber *)v3 addObject:developerId withName:@"developerId"];

  webDistributionDomains = [(ASCLockupFeatureAppDistributionInstall *)self webDistributionDomains];
  [(ASCDescriber *)v3 addObject:webDistributionDomains withName:@"webDistributionDomains"];

  supportUrl = [(ASCLockupFeatureAppDistributionInstall *)self supportUrl];
  [(ASCDescriber *)v3 addObject:supportUrl withName:@"supportUrl"];

  [(ASCDescriber *)v3 addInteger:[(ASCLockupFeatureAppDistributionInstall *)self ageRatingValue] withName:@"ageRatingValue"];
  contentRatingsBySystem = [(ASCLockupFeatureAppDistributionInstall *)self contentRatingsBySystem];
  [(ASCDescriber *)v3 addObject:contentRatingsBySystem withName:@"contentRatingsBySystem"];

  [(ASCDescriber *)v3 addBool:[(ASCLockupFeatureAppDistributionInstall *)self isDistributor] withName:@"isDistributor"];
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end