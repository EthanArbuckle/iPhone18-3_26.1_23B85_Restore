@interface ASCLockupRequest
+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 appVersionId:(id)a6 distributorId:(id)a7;
+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6;
+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 minExternalVersionID:(id)a6 latestReleaseID:(id)a7 productVariantID:(id)a8;
+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 platformOverride:(id)a6;
- (ASCLockupRequest)initWithCoder:(id)a3;
- (ASCLockupRequest)initWithID:(id)a3 kind:(id)a4 context:(id)a5;
- (ASCLockupRequest)lockupRequestWithAppVersionId:(id)a3 distributorId:(id)a4;
- (ASCLockupRequest)lockupRequestWithMediaQueryParams:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 appVersionId:(id)a6 distributorId:(id)a7;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6 enableAppDistribution:(BOOL)a7;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6 productVariantID:(id)a7 enableAppDistribution:(BOOL)a8;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 enableAppDistribution:(BOOL)a6;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 minExternalVersionID:(id)a6 latestReleaseID:(id)a7 productVariantID:(id)a8;
- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 platformOverride:(id)a6;
- (id)_lockupRequestWithAppDistributionEnabled;
- (id)_lockupRequestWithClientID:(id)a3;
- (id)_lockupRequestWithCountryCodeOverride:(id)a3;
- (id)_lockupRequestWithPlatformOverride:(id)a3;
- (id)clone;
- (id)description;
- (id)lockupRequestByAddingMediaQueryParams:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupRequest

- (ASCLockupRequest)initWithID:(id)a3 kind:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[ASCEligibility assertCurrentProcessEligibility];
  v19.receiver = self;
  v19.super_class = ASCLockupRequest;
  v11 = [(ASCLockupRequest *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    id = v11->_id;
    v11->_id = v12;

    v14 = [v9 copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [v10 copy];
    context = v11->_context;
    v11->_context = v16;
  }

  return v11;
}

- (ASCLockupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v7)
      {
        v8 = [(ASCLockupRequest *)self initWithID:v5 kind:v6 context:v7];
        if (v8)
        {
          v9 = objc_alloc(MEMORY[0x277CBEB98]);
          v10 = objc_opt_class();
          v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
          v12 = [v4 decodeObjectOfClasses:v11 forKey:@"mediaQueryParams"];
          mediaQueryParams = v8->_mediaQueryParams;
          v8->_mediaQueryParams = v12;

          v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
          clientID = v8->_clientID;
          v8->_clientID = v14;

          v8->_enableAppDistribution = [v4 decodeBoolForKey:@"enableAppDistribution"];
          v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformOverride"];
          platformOverride = v8->_platformOverride;
          v8->_platformOverride = v16;

          v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCodeOverride"];
          countryCodeOverride = v8->_countryCodeOverride;
          v8->_countryCodeOverride = v18;
        }

        self = v8;
        v20 = self;
      }

      else
      {
        v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v37)
        {
          [(ASCLockupBatchRequest *)v37 initWithCoder:v38, v39, v40, v41, v42, v43, v44];
        }

        v20 = 0;
      }
    }

    else
    {
      v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v29)
      {
        [(ASCLockupBatchRequest *)v29 initWithCoder:v30, v31, v32, v33, v34, v35, v36];
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      [(ASCLockupRequest *)v21 initWithCoder:v22, v23, v24, v25, v26, v27, v28];
    }

    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupRequest *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCLockupRequest *)self kind];
  [v4 encodeObject:v6 forKey:@"kind"];

  v7 = [(ASCLockupRequest *)self context];
  [v4 encodeObject:v7 forKey:@"context"];

  v8 = [(ASCLockupRequest *)self mediaQueryParams];
  [v4 encodeObject:v8 forKey:@"mediaQueryParams"];

  v9 = [(ASCLockupRequest *)self clientID];
  [v4 encodeObject:v9 forKey:@"clientID"];

  [v4 encodeBool:-[ASCLockupRequest enableAppDistribution](self forKey:{"enableAppDistribution"), @"enableAppDistribution"}];
  v10 = [(ASCLockupRequest *)self platformOverride];
  [v4 encodeObject:v10 forKey:@"platformOverride"];

  v11 = [(ASCLockupRequest *)self countryCodeOverride];
  [v4 encodeObject:v11 forKey:@"countryCodeOverride"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupRequest *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupRequest *)self kind];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCLockupRequest *)self context];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCLockupRequest *)self mediaQueryParams];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCLockupRequest *)self clientID];
  [(ASCHasher *)v3 combineObject:v8];

  [(ASCHasher *)v3 combineBool:[(ASCLockupRequest *)self enableAppDistribution]];
  v9 = [(ASCLockupRequest *)self platformOverride];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCLockupRequest *)self countryCodeOverride];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCHasher *)v3 finalizeHash];
  return v11;
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
        v12 = [(ASCLockupRequest *)self kind];
        v13 = [(ASCLockupRequest *)v8 kind];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
LABEL_15:
            v15 = [(ASCLockupRequest *)self context];
            v16 = [(ASCLockupRequest *)v8 context];
            v17 = v16;
            if (v15 && v16)
            {
              if ([v15 isEqual:v16])
              {
LABEL_18:
                v18 = [(ASCLockupRequest *)self mediaQueryParams];
                v19 = [(ASCLockupRequest *)v8 mediaQueryParams];
                v20 = v19;
                if (v18 && v19)
                {
                  v21 = v18;
                  v49 = v15;
                  v22 = v17;
                  v23 = v18;
                  v24 = v20;
                  v25 = [v21 isEqual:v20];
                  v20 = v24;
                  v18 = v23;
                  v17 = v22;
                  v15 = v49;
                  if (v25)
                  {
LABEL_21:
                    v47 = v20;
                    v48 = v18;
                    v26 = [(ASCLockupRequest *)self clientID];
                    v27 = [(ASCLockupRequest *)v8 clientID];
                    v28 = v27;
                    v50 = v26;
                    if (v26 && v27)
                    {
                      v29 = v27;
                      v30 = [v50 isEqual:v27];
                      v28 = v29;
                      if (v30)
                      {
                        goto LABEL_24;
                      }
                    }

                    else if (v26 == v27)
                    {
LABEL_24:
                      v46 = v28;
                      v31 = [(ASCLockupRequest *)self enableAppDistribution];
                      if (v31 != [(ASCLockupRequest *)v8 enableAppDistribution])
                      {
                        v7 = 0;
LABEL_48:
                        v28 = v46;
                        goto LABEL_49;
                      }

                      v32 = [(ASCLockupRequest *)self platformOverride];
                      v33 = [(ASCLockupRequest *)v8 platformOverride];
                      v34 = v33;
                      v45 = v32;
                      if (v32 && v33)
                      {
                        v35 = v33;
                        v36 = [v45 isEqual:v33];
                        v34 = v35;
                        if (v36)
                        {
                          goto LABEL_40;
                        }
                      }

                      else if (v32 == v33)
                      {
LABEL_40:
                        v37 = [(ASCLockupRequest *)self countryCodeOverride];
                        v38 = [(ASCLockupRequest *)v8 countryCodeOverride];
                        v39 = v38;
                        if (v37 && v38)
                        {
                          v40 = v38;
                          v41 = [v37 isEqual:v38];
                          v39 = v40;
                          v42 = v37;
                          v7 = v41;
                        }

                        else
                        {
                          v42 = v37;
                          v7 = v37 == v38;
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
                    v18 = v48;
                    goto LABEL_50;
                  }
                }

                else if (v18 == v19)
                {
                  goto LABEL_21;
                }

                v7 = 0;
LABEL_50:

                goto LABEL_51;
              }
            }

            else if (v15 == v16)
            {
              goto LABEL_18;
            }

            v7 = 0;
LABEL_51:

            goto LABEL_52;
          }
        }

        else if (v12 == v13)
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

  v5 = [(ASCLockupRequest *)self kind];
  [(ASCDescriber *)v3 addObject:v5 withName:@"kind"];

  v6 = [(ASCLockupRequest *)self context];
  [(ASCDescriber *)v3 addObject:v6 withName:@"context"];

  v7 = [(ASCLockupRequest *)self mediaQueryParams];

  if (v7)
  {
    v8 = [(ASCLockupRequest *)self mediaQueryParams];
    [(ASCDescriber *)v3 addObject:v8 withName:@"mediaQueryParams"];
  }

  v9 = [(ASCLockupRequest *)self clientID];

  if (v9)
  {
    v10 = [(ASCLockupRequest *)self clientID];
    [(ASCDescriber *)v3 addObject:v10 withName:@"clientID"];
  }

  if ([(ASCLockupRequest *)self enableAppDistribution])
  {
    [(ASCDescriber *)v3 addBool:[(ASCLockupRequest *)self enableAppDistribution] withName:@"enableAppDistribution"];
  }

  v11 = [(ASCLockupRequest *)self platformOverride];

  if (v11)
  {
    v12 = [(ASCLockupRequest *)self platformOverride];
    [(ASCDescriber *)v3 addObject:v12 withName:@"platformOverride"];
  }

  v13 = [(ASCLockupRequest *)self countryCodeOverride];

  if (v13)
  {
    v14 = [(ASCLockupRequest *)self countryCodeOverride];
    [(ASCDescriber *)v3 addObject:v14 withName:@"countryCodeOverride"];
  }

  v15 = [(ASCDescriber *)v3 finalizeDescription];

  return v15;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(ASCLockupRequest *)self id];
  v5 = [(ASCLockupRequest *)self kind];
  v6 = [(ASCLockupRequest *)self context];
  v7 = [v3 initWithID:v4 kind:v5 context:v6];

  v8 = [(ASCLockupRequest *)self mediaQueryParams];
  v9 = *(v7 + 40);
  *(v7 + 40) = v8;

  v10 = [(ASCLockupRequest *)self clientID];
  v11 = *(v7 + 48);
  *(v7 + 48) = v10;

  *(v7 + 8) = [(ASCLockupRequest *)self enableAppDistribution];
  v12 = [(ASCLockupRequest *)self platformOverride];
  v13 = *(v7 + 56);
  *(v7 + 56) = v12;

  v14 = [(ASCLockupRequest *)self countryCodeOverride];
  v15 = *(v7 + 64);
  *(v7 + 64) = v14;

  return v7;
}

- (ASCLockupRequest)lockupRequestWithMediaQueryParams:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupRequest *)self clone];
  v6 = v5[5];
  v5[5] = v4;

  return v5;
}

- (id)lockupRequestByAddingMediaQueryParams:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupRequest *)self clone];
  v6 = v5[5];
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;
  [v7 addEntriesFromDictionary:v4];

  v9 = [v8 copy];
  v10 = v5[5];
  v5[5] = v9;

  return v5;
}

- (id)_lockupRequestWithClientID:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupRequest *)self clone];
  v6 = v5[6];
  v5[6] = v4;

  return v5;
}

- (id)_lockupRequestWithAppDistributionEnabled
{
  result = [(ASCLockupRequest *)self clone];
  *(result + 8) = 1;
  return result;
}

- (id)_lockupRequestWithPlatformOverride:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupRequest *)self clone];
  v6 = v5[7];
  v5[7] = v4;

  return v5;
}

- (id)_lockupRequestWithCountryCodeOverride:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupRequest *)self clone];
  v6 = v5[8];
  v5[8] = v4;

  return v5;
}

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 enableAppDistribution:(BOOL)a6
{
  v6 = a6;
  v7 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v8 = v7;
  v9 = v7;
  if (v6)
  {
    v9 = [(ASCLockupRequest *)v7 lockupRequestWithAppDistributionEnabled];
  }

  return v9;
}

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6 enableAppDistribution:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v14 = v13;
  v15 = v13;
  if (v7)
  {
    v15 = [(ASCLockupRequest *)v13 lockupRequestWithAppDistributionEnabled];
  }

  v16 = [v15 _lockupRequestWithClientID:v12];

  return v16;
}

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6 productVariantID:(id)a7 enableAppDistribution:(BOOL)a8
{
  v8 = a8;
  v25[1] = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v17 = v16;
  v18 = v16;
  if (v8)
  {
    v18 = [(ASCLockupRequest *)v16 lockupRequestWithAppDistributionEnabled];
  }

  if (v15)
  {
    v24 = @"ppid";
    v25[0] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v18 lockupRequestWithMediaQueryParams:v19];

    v18 = v20;
  }

  v21 = [v18 _lockupRequestWithClientID:v14];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 appVersionId:(id)a6 distributorId:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v15 = [(ASCLockupRequest *)v14 lockupRequestWithAppVersionId:v13 distributorId:v12];

  return v15;
}

+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 appVersionId:(id)a6 distributorId:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[ASCLockupRequest alloc] _initWithID:v15 kind:v14 context:v13 appVersionId:v12 distributorId:v11];

  return v16;
}

- (ASCLockupRequest)lockupRequestWithAppVersionId:(id)a3 distributorId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = v8;
  if (v7)
  {
    [v8 setObject:@"native" forKeyedSubscript:@"distributionChannel"];
    v10 = @"distributorId";
    v11 = v9;
    v12 = v7;
  }

  else
  {
    [v8 setObject:@"web" forKeyedSubscript:@"distributionChannel"];
    v12 = @"webDistributionDomains";
    v10 = @"extend";
    v11 = v9;
  }

  [v11 setObject:v12 forKeyedSubscript:v10];
  if (v6)
  {
    v13 = @"version";
    v14 = v9;
    v15 = v6;
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

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 minExternalVersionID:(id)a6 latestReleaseID:(id)a7 productVariantID:(id)a8
{
  v31[1] = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v18 = v17;
  if (v14)
  {
    v30 = @"minExternalVersionId";
    v31[0] = v14;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [(ASCLockupRequest *)v17 lockupRequestByAddingMediaQueryParams:v19];
  }

  if (v15)
  {
    v28 = @"latestReleaseId";
    v29 = v15;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = [v18 lockupRequestByAddingMediaQueryParams:v20];

    v18 = v21;
  }

  if (v16)
  {
    v26 = @"ppid";
    v27 = v16;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = [v18 lockupRequestByAddingMediaQueryParams:v22];

    v18 = v23;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 minExternalVersionID:(id)a6 latestReleaseID:(id)a7 productVariantID:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[ASCLockupRequest alloc] _initWithID:v18 kind:v17 context:v16 minExternalVersionID:v15 latestReleaseID:v14 productVariantID:v13];

  return v19;
}

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6
{
  v10 = a6;
  v11 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v12 = [(ASCLockupRequest *)v11 lockupRequestWithClientID:v10];

  return v12;
}

+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[ASCLockupRequest alloc] _initWithID:v12 kind:v11 context:v10 clientID:v9];

  return v13;
}

- (id)_initWithID:(id)a3 kind:(id)a4 context:(id)a5 platformOverride:(id)a6
{
  v10 = a6;
  v11 = [(ASCLockupRequest *)self initWithID:a3 kind:a4 context:a5];
  v12 = [(ASCLockupRequest *)v11 lockupRequestWithPlatformOverride:v10];

  return v12;
}

+ (id)_requestWithID:(id)a3 kind:(id)a4 context:(id)a5 platformOverride:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[ASCLockupRequest alloc] _initWithID:v12 kind:v11 context:v10 platformOverride:v9];

  return v13;
}

@end