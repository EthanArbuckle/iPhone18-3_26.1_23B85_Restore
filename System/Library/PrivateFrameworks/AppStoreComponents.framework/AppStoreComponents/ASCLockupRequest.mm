@interface ASCLockupRequest
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context appVersionId:(id)id distributorId:(id)distributorId;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD enableAppDistribution:(BOOL)distribution;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD productVariantID:(id)variantID enableAppDistribution:(BOOL)distribution;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context enableAppDistribution:(BOOL)distribution;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context includeUnlistedApps:(BOOL)apps;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context minExternalVersionID:(id)iD latestReleaseID:(id)releaseID productVariantID:(id)variantID;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context platformOverride:(id)override;
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context productVariantID:(id)iD;
- (ASCLockupRequest)initWithCoder:(id)coder;
- (ASCLockupRequest)initWithID:(id)d kind:(id)kind context:(id)context;
- (ASCLockupRequest)lockupRequestWithAppVersionId:(id)id distributorId:(id)distributorId;
- (ASCLockupRequest)lockupRequestWithMediaQueryParams:(id)params;
- (BOOL)isEqual:(id)equal;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context appVersionId:(id)id distributorId:(id)distributorId;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD enableAppDistribution:(BOOL)distribution;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD productVariantID:(id)variantID enableAppDistribution:(BOOL)distribution;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context enableAppDistribution:(BOOL)distribution;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context includeUnlistedApps:(BOOL)apps;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context minExternalVersionID:(id)iD latestReleaseID:(id)releaseID productVariantID:(id)variantID;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context platformOverride:(id)override;
- (id)_lockupRequestWithAppDistributionEnabled;
- (id)_lockupRequestWithClientID:(id)d;
- (id)_lockupRequestWithCountryCodeOverride:(id)override;
- (id)_lockupRequestWithPlatformOverride:(id)override;
- (id)clone;
- (id)description;
- (id)lockupRequestByAddingMediaQueryParams:(id)params;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupRequest

- (id)_lockupRequestWithAppDistributionEnabled
{
  result = [(ASCLockupRequest *)self clone];
  *(result + 8) = 1;
  return result;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(ASCLockupRequest *)self id];
  kind = [(ASCLockupRequest *)self kind];
  context = [(ASCLockupRequest *)self context];
  v7 = [v3 initWithID:v4 kind:kind context:context];

  mediaQueryParams = [(ASCLockupRequest *)self mediaQueryParams];
  v9 = *(v7 + 40);
  *(v7 + 40) = mediaQueryParams;

  clientID = [(ASCLockupRequest *)self clientID];
  v11 = *(v7 + 48);
  *(v7 + 48) = clientID;

  *(v7 + 8) = [(ASCLockupRequest *)self enableAppDistribution];
  platformOverride = [(ASCLockupRequest *)self platformOverride];
  v13 = *(v7 + 56);
  *(v7 + 56) = platformOverride;

  countryCodeOverride = [(ASCLockupRequest *)self countryCodeOverride];
  v15 = *(v7 + 64);
  *(v7 + 64) = countryCodeOverride;

  return v7;
}

- (ASCLockupRequest)initWithID:(id)d kind:(id)kind context:(id)context
{
  dCopy = d;
  kindCopy = kind;
  contextCopy = context;
  +[ASCEligibility assertCurrentProcessEligibility];
  v19.receiver = self;
  v19.super_class = ASCLockupRequest;
  v11 = [(ASCLockupRequest *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    id = v11->_id;
    v11->_id = v12;

    v14 = [kindCopy copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [contextCopy copy];
    context = v11->_context;
    v11->_context = v16;
  }

  return v11;
}

- (ASCLockupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v7)
      {
        v8 = [(ASCLockupRequest *)self initWithID:v5 kind:v6 context:v7];
        if (v8)
        {
          v9 = objc_alloc(MEMORY[0x277CBEB98]);
          v10 = objc_opt_class();
          v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
          v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"mediaQueryParams"];
          mediaQueryParams = v8->_mediaQueryParams;
          v8->_mediaQueryParams = v12;

          v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
          clientID = v8->_clientID;
          v8->_clientID = v14;

          v8->_enableAppDistribution = [coderCopy decodeBoolForKey:@"enableAppDistribution"];
          v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformOverride"];
          platformOverride = v8->_platformOverride;
          v8->_platformOverride = v16;

          v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCodeOverride"];
          countryCodeOverride = v8->_countryCodeOverride;
          v8->_countryCodeOverride = v18;
        }

        self = v8;
        selfCopy = self;
      }

      else
      {
        v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v37)
        {
          [(ASCLockupBatchRequest *)v37 initWithCoder:v38, v39, v40, v41, v42, v43, v44];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v29)
      {
        [(ASCLockupBatchRequest *)v29 initWithCoder:v30, v31, v32, v33, v34, v35, v36];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      [(ASCLockupRequest *)v21 initWithCoder:v22, v23, v24, v25, v26, v27, v28];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCLockupRequest *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  kind = [(ASCLockupRequest *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  context = [(ASCLockupRequest *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  mediaQueryParams = [(ASCLockupRequest *)self mediaQueryParams];
  [coderCopy encodeObject:mediaQueryParams forKey:@"mediaQueryParams"];

  clientID = [(ASCLockupRequest *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];

  [coderCopy encodeBool:-[ASCLockupRequest enableAppDistribution](self forKey:{"enableAppDistribution"), @"enableAppDistribution"}];
  platformOverride = [(ASCLockupRequest *)self platformOverride];
  [coderCopy encodeObject:platformOverride forKey:@"platformOverride"];

  countryCodeOverride = [(ASCLockupRequest *)self countryCodeOverride];
  [coderCopy encodeObject:countryCodeOverride forKey:@"countryCodeOverride"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupRequest *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  kind = [(ASCLockupRequest *)self kind];
  [(ASCHasher *)v3 combineObject:kind];

  context = [(ASCLockupRequest *)self context];
  [(ASCHasher *)v3 combineObject:context];

  mediaQueryParams = [(ASCLockupRequest *)self mediaQueryParams];
  [(ASCHasher *)v3 combineObject:mediaQueryParams];

  clientID = [(ASCLockupRequest *)self clientID];
  [(ASCHasher *)v3 combineObject:clientID];

  [(ASCHasher *)v3 combineBool:[(ASCLockupRequest *)self enableAppDistribution]];
  platformOverride = [(ASCLockupRequest *)self platformOverride];
  [(ASCHasher *)v3 combineObject:platformOverride];

  countryCodeOverride = [(ASCLockupRequest *)self countryCodeOverride];
  [(ASCHasher *)v3 combineObject:countryCodeOverride];

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
LABEL_54:

      goto LABEL_55;
    }

    v9 = [(ASCLockupRequest *)self id];
    v10 = [(ASCLockupRequest *)v8 id];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        kind = [(ASCLockupRequest *)self kind];
        kind2 = [(ASCLockupRequest *)v8 kind];
        v14 = kind2;
        if (kind && kind2)
        {
          if ([kind isEqual:kind2])
          {
LABEL_15:
            context = [(ASCLockupRequest *)self context];
            context2 = [(ASCLockupRequest *)v8 context];
            v17 = context2;
            if (context && context2)
            {
              if ([context isEqual:context2])
              {
LABEL_18:
                mediaQueryParams = [(ASCLockupRequest *)self mediaQueryParams];
                mediaQueryParams2 = [(ASCLockupRequest *)v8 mediaQueryParams];
                v20 = mediaQueryParams2;
                if (mediaQueryParams && mediaQueryParams2)
                {
                  v21 = mediaQueryParams;
                  v49 = context;
                  v22 = v17;
                  v23 = mediaQueryParams;
                  v24 = v20;
                  v25 = [v21 isEqual:v20];
                  v20 = v24;
                  mediaQueryParams = v23;
                  v17 = v22;
                  context = v49;
                  if (v25)
                  {
LABEL_21:
                    v47 = v20;
                    v48 = mediaQueryParams;
                    clientID = [(ASCLockupRequest *)self clientID];
                    clientID2 = [(ASCLockupRequest *)v8 clientID];
                    v28 = clientID2;
                    v50 = clientID;
                    if (clientID && clientID2)
                    {
                      v29 = clientID2;
                      v30 = [v50 isEqual:clientID2];
                      v28 = v29;
                      if (v30)
                      {
                        goto LABEL_24;
                      }
                    }

                    else if (clientID == clientID2)
                    {
LABEL_24:
                      v46 = v28;
                      enableAppDistribution = [(ASCLockupRequest *)self enableAppDistribution];
                      if (enableAppDistribution != [(ASCLockupRequest *)v8 enableAppDistribution])
                      {
                        v7 = 0;
LABEL_48:
                        v28 = v46;
                        goto LABEL_49;
                      }

                      platformOverride = [(ASCLockupRequest *)self platformOverride];
                      platformOverride2 = [(ASCLockupRequest *)v8 platformOverride];
                      v34 = platformOverride2;
                      v45 = platformOverride;
                      if (platformOverride && platformOverride2)
                      {
                        v35 = platformOverride2;
                        v36 = [v45 isEqual:platformOverride2];
                        v34 = v35;
                        if (v36)
                        {
                          goto LABEL_40;
                        }
                      }

                      else if (platformOverride == platformOverride2)
                      {
LABEL_40:
                        countryCodeOverride = [(ASCLockupRequest *)self countryCodeOverride];
                        countryCodeOverride2 = [(ASCLockupRequest *)v8 countryCodeOverride];
                        v39 = countryCodeOverride2;
                        if (countryCodeOverride && countryCodeOverride2)
                        {
                          v40 = countryCodeOverride2;
                          v41 = [countryCodeOverride isEqual:countryCodeOverride2];
                          v39 = v40;
                          v42 = countryCodeOverride;
                          v7 = v41;
                        }

                        else
                        {
                          v42 = countryCodeOverride;
                          v7 = countryCodeOverride == countryCodeOverride2;
                        }

                        v34 = v44;
                        goto LABEL_47;
                      }

                      v7 = 0;
LABEL_47:

                      goto LABEL_48;
                    }

                    v7 = 0;
LABEL_49:

                    v20 = v47;
                    mediaQueryParams = v48;
                    goto LABEL_50;
                  }
                }

                else if (mediaQueryParams == mediaQueryParams2)
                {
                  goto LABEL_21;
                }

                v7 = 0;
LABEL_50:

                goto LABEL_51;
              }
            }

            else if (context == context2)
            {
              goto LABEL_18;
            }

            v7 = 0;
LABEL_51:

            goto LABEL_52;
          }
        }

        else if (kind == kind2)
        {
          goto LABEL_15;
        }

        v7 = 0;
LABEL_52:

        goto LABEL_53;
      }
    }

    else if (v9 == v10)
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v7 = 1;
LABEL_55:

  return v7;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupRequest *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  kind = [(ASCLockupRequest *)self kind];
  [(ASCDescriber *)v3 addObject:kind withName:@"kind"];

  context = [(ASCLockupRequest *)self context];
  [(ASCDescriber *)v3 addObject:context withName:@"context"];

  mediaQueryParams = [(ASCLockupRequest *)self mediaQueryParams];

  if (mediaQueryParams)
  {
    mediaQueryParams2 = [(ASCLockupRequest *)self mediaQueryParams];
    [(ASCDescriber *)v3 addObject:mediaQueryParams2 withName:@"mediaQueryParams"];
  }

  clientID = [(ASCLockupRequest *)self clientID];

  if (clientID)
  {
    clientID2 = [(ASCLockupRequest *)self clientID];
    [(ASCDescriber *)v3 addObject:clientID2 withName:@"clientID"];
  }

  if ([(ASCLockupRequest *)self enableAppDistribution])
  {
    [(ASCDescriber *)v3 addBool:[(ASCLockupRequest *)self enableAppDistribution] withName:@"enableAppDistribution"];
  }

  platformOverride = [(ASCLockupRequest *)self platformOverride];

  if (platformOverride)
  {
    platformOverride2 = [(ASCLockupRequest *)self platformOverride];
    [(ASCDescriber *)v3 addObject:platformOverride2 withName:@"platformOverride"];
  }

  countryCodeOverride = [(ASCLockupRequest *)self countryCodeOverride];

  if (countryCodeOverride)
  {
    countryCodeOverride2 = [(ASCLockupRequest *)self countryCodeOverride];
    [(ASCDescriber *)v3 addObject:countryCodeOverride2 withName:@"countryCodeOverride"];
  }

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (ASCLockupRequest)lockupRequestWithMediaQueryParams:(id)params
{
  paramsCopy = params;
  clone = [(ASCLockupRequest *)self clone];
  v6 = clone[5];
  clone[5] = paramsCopy;

  return clone;
}

- (id)lockupRequestByAddingMediaQueryParams:(id)params
{
  paramsCopy = params;
  clone = [(ASCLockupRequest *)self clone];
  v6 = clone[5];
  if (v6)
  {
    dictionary = [v6 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;
  [dictionary addEntriesFromDictionary:paramsCopy];

  v9 = [v8 copy];
  v10 = clone[5];
  clone[5] = v9;

  return clone;
}

- (id)_lockupRequestWithClientID:(id)d
{
  dCopy = d;
  clone = [(ASCLockupRequest *)self clone];
  v6 = clone[6];
  clone[6] = dCopy;

  return clone;
}

- (id)_lockupRequestWithPlatformOverride:(id)override
{
  overrideCopy = override;
  clone = [(ASCLockupRequest *)self clone];
  v6 = clone[7];
  clone[7] = overrideCopy;

  return clone;
}

- (id)_lockupRequestWithCountryCodeOverride:(id)override
{
  overrideCopy = override;
  clone = [(ASCLockupRequest *)self clone];
  v6 = clone[8];
  clone[8] = overrideCopy;

  return clone;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context enableAppDistribution:(BOOL)distribution
{
  distributionCopy = distribution;
  v7 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v8 = v7;
  lockupRequestWithAppDistributionEnabled = v7;
  if (distributionCopy)
  {
    lockupRequestWithAppDistributionEnabled = [(ASCLockupRequest *)v7 lockupRequestWithAppDistributionEnabled];
  }

  return lockupRequestWithAppDistributionEnabled;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD enableAppDistribution:(BOOL)distribution
{
  distributionCopy = distribution;
  iDCopy = iD;
  v13 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v14 = v13;
  lockupRequestWithAppDistributionEnabled = v13;
  if (distributionCopy)
  {
    lockupRequestWithAppDistributionEnabled = [(ASCLockupRequest *)v13 lockupRequestWithAppDistributionEnabled];
  }

  v16 = [lockupRequestWithAppDistributionEnabled _lockupRequestWithClientID:iDCopy];

  return v16;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD productVariantID:(id)variantID enableAppDistribution:(BOOL)distribution
{
  distributionCopy = distribution;
  v24[1] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  variantIDCopy = variantID;
  v16 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v17 = v16;
  lockupRequestWithAppDistributionEnabled = v16;
  if (distributionCopy)
  {
    lockupRequestWithAppDistributionEnabled = [(ASCLockupRequest *)v16 lockupRequestWithAppDistributionEnabled];
  }

  if (variantIDCopy)
  {
    v23 = @"ppid";
    v24[0] = variantIDCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [lockupRequestWithAppDistributionEnabled lockupRequestWithMediaQueryParams:v19];

    lockupRequestWithAppDistributionEnabled = v20;
  }

  v21 = [lockupRequestWithAppDistributionEnabled _lockupRequestWithClientID:iDCopy];

  return v21;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context enableAppDistribution:(BOOL)distribution
{
  distributionCopy = distribution;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v12 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy enableAppDistribution:distributionCopy];

  return v12;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD enableAppDistribution:(BOOL)distribution
{
  distributionCopy = distribution;
  iDCopy = iD;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v15 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy clientID:iDCopy enableAppDistribution:distributionCopy];

  return v15;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD productVariantID:(id)variantID enableAppDistribution:(BOOL)distribution
{
  distributionCopy = distribution;
  variantIDCopy = variantID;
  iDCopy = iD;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v18 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy clientID:iDCopy productVariantID:variantIDCopy enableAppDistribution:distributionCopy];

  return v18;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context appVersionId:(id)id distributorId:(id)distributorId
{
  distributorIdCopy = distributorId;
  idCopy = id;
  v14 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v15 = [(ASCLockupRequest *)v14 lockupRequestWithAppVersionId:idCopy distributorId:distributorIdCopy];

  return v15;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context appVersionId:(id)id distributorId:(id)distributorId
{
  distributorIdCopy = distributorId;
  idCopy = id;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v16 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy appVersionId:idCopy distributorId:distributorIdCopy];

  return v16;
}

- (ASCLockupRequest)lockupRequestWithAppVersionId:(id)id distributorId:(id)distributorId
{
  idCopy = id;
  distributorIdCopy = distributorId;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = v8;
  if (distributorIdCopy)
  {
    [v8 setObject:@"native" forKeyedSubscript:@"distributionChannel"];
    v10 = @"distributorId";
    v11 = v9;
    v12 = distributorIdCopy;
  }

  else
  {
    [v8 setObject:@"web" forKeyedSubscript:@"distributionChannel"];
    v12 = @"webDistributionDomains";
    v10 = @"extend";
    v11 = v9;
  }

  [v11 setObject:v12 forKeyedSubscript:v10];
  if (idCopy)
  {
    v13 = @"version";
    v14 = v9;
    v15 = idCopy;
  }

  else
  {
    v15 = @"additionalVersions";
    v13 = @"with";
    v14 = v9;
  }

  [v14 setObject:v15 forKeyedSubscript:v13];
  v16 = [(ASCLockupRequest *)self lockupRequestByAddingMediaQueryParams:v9];

  return v16;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context minExternalVersionID:(id)iD latestReleaseID:(id)releaseID productVariantID:(id)variantID
{
  v30[1] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  releaseIDCopy = releaseID;
  variantIDCopy = variantID;
  v17 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v18 = v17;
  if (iDCopy)
  {
    v29 = @"minExternalVersionId";
    v30[0] = iDCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v18 = [(ASCLockupRequest *)v17 lockupRequestByAddingMediaQueryParams:v19];
  }

  if (releaseIDCopy)
  {
    v27 = @"latestReleaseId";
    v28 = releaseIDCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v21 = [v18 lockupRequestByAddingMediaQueryParams:v20];

    v18 = v21;
  }

  if (variantIDCopy)
  {
    v25 = @"ppid";
    v26 = variantIDCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = [v18 lockupRequestByAddingMediaQueryParams:v22];

    v18 = v23;
  }

  return v18;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context minExternalVersionID:(id)iD latestReleaseID:(id)releaseID productVariantID:(id)variantID
{
  variantIDCopy = variantID;
  releaseIDCopy = releaseID;
  iDCopy = iD;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v19 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy minExternalVersionID:iDCopy latestReleaseID:releaseIDCopy productVariantID:variantIDCopy];

  return v19;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context productVariantID:(id)iD
{
  v18[1] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  +[ASCEligibility assertCurrentProcessEligibility];
  v13 = [[ASCLockupRequest alloc] initWithID:dCopy kind:kindCopy context:contextCopy];

  if (iDCopy)
  {
    v17 = @"ppid";
    v18[0] = iDCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [(ASCLockupRequest *)v13 lockupRequestWithMediaQueryParams:v14];

    v13 = v15;
  }

  return v13;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD
{
  iDCopy = iD;
  v11 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v12 = [(ASCLockupRequest *)v11 lockupRequestWithClientID:iDCopy];

  return v12;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context clientID:(id)iD
{
  iDCopy = iD;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v13 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy clientID:iDCopy];

  return v13;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context platformOverride:(id)override
{
  overrideCopy = override;
  v11 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v12 = [(ASCLockupRequest *)v11 lockupRequestWithPlatformOverride:overrideCopy];

  return v12;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context platformOverride:(id)override
{
  overrideCopy = override;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v13 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy platformOverride:overrideCopy];

  return v13;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context includeUnlistedApps:(BOOL)apps
{
  appsCopy = apps;
  v7 = [(ASCLockupRequest *)self initWithID:d kind:kind context:context];
  v8 = v7;
  if (appsCopy)
  {
    lockupRequestWithUnlistedAppsIncluded = [(ASCLockupRequest *)v7 lockupRequestWithUnlistedAppsIncluded];
  }

  else
  {
    lockupRequestWithUnlistedAppsIncluded = v7;
  }

  v10 = lockupRequestWithUnlistedAppsIncluded;

  return v10;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context includeUnlistedApps:(BOOL)apps
{
  appsCopy = apps;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v12 = [[ASCLockupRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy includeUnlistedApps:appsCopy];

  return v12;
}

@end