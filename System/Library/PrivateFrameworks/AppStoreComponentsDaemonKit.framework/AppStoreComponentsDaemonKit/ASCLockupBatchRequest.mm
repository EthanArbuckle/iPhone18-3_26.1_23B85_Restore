@interface ASCLockupBatchRequest
+ (id)lockupBatchRequestsFromRequests:(id)a3;
- (ASCLockupBatchRequest)initWithCoder:(id)a3;
- (ASCLockupBatchRequest)initWithIDs:(id)a3 kind:(id)a4 context:(id)a5;
- (ASCLockupBatchRequest)lockupBatchRequestWithIDs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)requests;
- (id)_initWithIDs:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6 enableAppDistribution:(BOOL)a7 mediaQueryParams:(id)a8 platformOverride:(id)a9 countryCodeOverride:(id)a10;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupBatchRequest

+ (id)lockupBatchRequestsFromRequests:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v3 firstObject];
  v5 = [v4 clientID];

  v6 = [v3 firstObject];
  v52 = [v6 enableAppDistribution];

  v7 = [v3 firstObject];
  v50 = [v7 mediaQueryParams];

  v8 = [v3 firstObject];
  v9 = [v8 platformOverride];

  v10 = [v3 firstObject];
  v11 = [v10 countryCodeOverride];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v12 = v3;
  v53 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v53)
  {
    v51 = *v63;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(v12);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        if ([v12 count] >= 2)
        {
          v15 = [v14 mediaQueryParams];

          if (v15)
          {
            v47 = objc_alloc(MEMORY[0x277CBEAD8]);
            v48 = *MEMORY[0x277CBE660];
            v49 = @"Request specifying custom media query parameters cannot be included in batch request with more than one request";
LABEL_37:
            objc_exception_throw([v47 initWithName:v48 reason:v49 userInfo:0]);
          }
        }

        v16 = [v14 clientID];
        v17 = v16;
        if (v5 && v16)
        {
          v18 = [v16 isEqual:v5];

          if ((v18 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {

          if (v17 != v5)
          {
LABEL_31:
            v41 = MEMORY[0x277CCACA8];
            v42 = [v14 clientID];
            v43 = [v41 stringWithFormat:@"Requests with different clientID cannot be included in batch request: %@ != %@", v42, v5];

            goto LABEL_36;
          }
        }

        if (v52 != [v14 enableAppDistribution])
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requests with different AppDistribution options cannot be included in batch request: %d != %d", objc_msgSend(v14, "enableAppDistribution"), v52];
          goto LABEL_36;
        }

        v19 = [v14 platformOverride];
        v20 = v19;
        if (v9 && v19)
        {
          v21 = [v19 isEqual:v9];

          if ((v21 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (v20 != v9)
          {
LABEL_32:
            v44 = MEMORY[0x277CCACA8];
            v45 = [v14 platformOverride];
            [v44 stringWithFormat:@"Requests with different platformOverride options cannot be included in batch request: %@ != %@", v45, v9];
            goto LABEL_34;
          }
        }

        v22 = [v14 countryCodeOverride];
        v23 = v22;
        if (v11 && v22)
        {
          v24 = [v22 isEqual:v11];

          if ((v24 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {

          if (v23 != v11)
          {
LABEL_33:
            v46 = MEMORY[0x277CCACA8];
            v45 = [v14 countryCodeOverride];
            [v46 stringWithFormat:@"Requests with different countryCodeOverride options cannot be included in batch request: %@ != %@", v45, v11];
            v43 = LABEL_34:;

LABEL_36:
            v47 = objc_alloc(MEMORY[0x277CBEAD8]);
            v48 = *MEMORY[0x277CBE660];
            v49 = v43;
            goto LABEL_37;
          }
        }

        v25 = [ASCPair alloc];
        v26 = [v14 kind];
        v27 = [v14 context];
        v28 = [(ASCPair *)v25 initWithFirst:v26 second:v27];

        v29 = [v54 objectForKeyedSubscript:v28];
        if (!v29)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [v54 setObject:v29 forKeyedSubscript:v28];
        }

        v30 = [v14 id];
        [v29 addObject:v30];
      }

      v53 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v53);
  }

  v31 = v12;

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __57__ASCLockupBatchRequest_lockupBatchRequestsFromRequests___block_invoke;
  v55[3] = &unk_2784B1600;
  v61 = v52;
  v56 = v5;
  v57 = v50;
  v58 = v9;
  v59 = v11;
  v60 = v32;
  v33 = v32;
  v34 = v11;
  v35 = v9;
  v36 = v50;
  v37 = v5;
  [v54 enumerateKeysAndObjectsUsingBlock:v55];
  v38 = [v33 copy];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

void __57__ASCLockupBatchRequest_lockupBatchRequestsFromRequests___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [ASCLockupBatchRequest alloc];
  v8 = [v6 first];
  v9 = [v6 second];

  v10 = [(ASCLockupBatchRequest *)v7 _initWithIDs:v5 kind:v8 context:v9 clientID:*(a1 + 32) enableAppDistribution:*(a1 + 72) mediaQueryParams:*(a1 + 40) platformOverride:*(a1 + 48) countryCodeOverride:*(a1 + 56)];
  [*(a1 + 64) addObject:v10];
}

- (ASCLockupBatchRequest)initWithIDs:(id)a3 kind:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ASCLockupBatchRequest;
  v11 = [(ASCLockupBatchRequest *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    ids = v11->_ids;
    v11->_ids = v12;

    v14 = [v9 copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [v10 copy];
    context = v11->_context;
    v11->_context = v16;
  }

  return v11;
}

- (id)_initWithIDs:(id)a3 kind:(id)a4 context:(id)a5 clientID:(id)a6 enableAppDistribution:(BOOL)a7 mediaQueryParams:(id)a8 platformOverride:(id)a9 countryCodeOverride:(id)a10
{
  v23 = a6;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v18 = [(ASCLockupBatchRequest *)self initWithIDs:a3 kind:a4 context:a5];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientID, a6);
    v19->_enableAppDistribution = a7;
    objc_storeStrong(&v19->_mediaQueryParams, a8);
    objc_storeStrong(&v19->_platformOverride, a9);
    objc_storeStrong(&v19->_countryCodeOverride, a10);
  }

  return v19;
}

- (ASCLockupBatchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"ids"];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v10)
      {
        v11 = [(ASCLockupBatchRequest *)self initWithIDs:v8 kind:v9 context:v10];
        if (v11)
        {
          v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
          clientID = v11->_clientID;
          v11->_clientID = v12;

          v11->_enableAppDistribution = [v4 decodeBoolForKey:@"enableAppDistribution"];
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          v15 = objc_opt_class();
          v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
          v17 = [v4 decodeObjectOfClasses:v16 forKey:@"mediaQueryParams"];
          mediaQueryParams = v11->_mediaQueryParams;
          v11->_mediaQueryParams = v17;

          v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformOverride"];
          platformOverride = v11->_platformOverride;
          v11->_platformOverride = v19;

          v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCodeOverride"];
          countryCodeOverride = v11->_countryCodeOverride;
          v11->_countryCodeOverride = v21;
        }

        self = v11;
        v23 = self;
      }

      else
      {
        v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v40)
        {
          [(ASCLockupBatchRequest *)v40 initWithCoder:v41, v42, v43, v44, v45, v46, v47];
        }

        v23 = 0;
      }
    }

    else
    {
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v32)
      {
        [(ASCLockupBatchRequest *)v32 initWithCoder:v33, v34, v35, v36, v37, v38, v39];
      }

      v23 = 0;
    }
  }

  else
  {
    v24 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v24)
    {
      [(ASCLockupBatchRequest *)v24 initWithCoder:v25, v26, v27, v28, v29, v30, v31];
    }

    v23 = 0;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupBatchRequest *)self ids];
  [v4 encodeObject:v5 forKey:@"ids"];

  v6 = [(ASCLockupBatchRequest *)self kind];
  [v4 encodeObject:v6 forKey:@"kind"];

  v7 = [(ASCLockupBatchRequest *)self context];
  [v4 encodeObject:v7 forKey:@"context"];

  v8 = [(ASCLockupBatchRequest *)self clientID];
  [v4 encodeObject:v8 forKey:@"clientID"];

  [v4 encodeBool:-[ASCLockupBatchRequest enableAppDistribution](self forKey:{"enableAppDistribution"), @"enableAppDistribution"}];
  v9 = [(ASCLockupBatchRequest *)self mediaQueryParams];
  [v4 encodeObject:v9 forKey:@"mediaQueryParams"];

  v10 = [(ASCLockupBatchRequest *)self platformOverride];
  [v4 encodeObject:v10 forKey:@"platformOverride"];

  v11 = [(ASCLockupBatchRequest *)self countryCodeOverride];
  [v4 encodeObject:v11 forKey:@"countryCodeOverride"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupBatchRequest *)self ids];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupBatchRequest *)self kind];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCLockupBatchRequest *)self context];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCLockupBatchRequest *)self clientID];
  [(ASCHasher *)v3 combineObject:v7];

  [(ASCHasher *)v3 combineBool:[(ASCLockupBatchRequest *)self enableAppDistribution]];
  v8 = [(ASCLockupBatchRequest *)self mediaQueryParams];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCLockupBatchRequest *)self platformOverride];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCLockupBatchRequest *)self countryCodeOverride];
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

    v9 = [(ASCLockupBatchRequest *)self ids];
    v10 = [(ASCLockupBatchRequest *)v8 ids];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        v12 = [(ASCLockupBatchRequest *)self kind];
        v13 = [(ASCLockupBatchRequest *)v8 kind];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
LABEL_15:
            v15 = [(ASCLockupBatchRequest *)self context];
            v16 = [(ASCLockupBatchRequest *)v8 context];
            v17 = v16;
            if (v15 && v16)
            {
              if ([v15 isEqual:v16])
              {
LABEL_18:
                v45 = v17;
                v18 = [(ASCLockupBatchRequest *)self clientID];
                v19 = [(ASCLockupBatchRequest *)v8 clientID];
                v20 = v19;
                if (v18 && v19)
                {
                  if ([v18 isEqual:v19])
                  {
                    goto LABEL_21;
                  }
                }

                else if (v18 == v19)
                {
LABEL_21:
                  v42 = v20;
                  v43 = v18;
                  v21 = [(ASCLockupBatchRequest *)self enableAppDistribution];
                  if (v21 != [(ASCLockupBatchRequest *)v8 enableAppDistribution])
                  {
                    v7 = 0;
LABEL_49:
                    v20 = v42;
                    goto LABEL_50;
                  }

                  v22 = [(ASCLockupBatchRequest *)self mediaQueryParams];
                  v23 = [(ASCLockupBatchRequest *)v8 mediaQueryParams];
                  v24 = v23;
                  if (v22 && v23)
                  {
                    v25 = v23;
                    v26 = [v22 isEqual:v23];
                    v24 = v25;
                    v18 = v43;
                    if (v26)
                    {
LABEL_35:
                      v40 = v22;
                      v41 = v24;
                      v27 = [(ASCLockupBatchRequest *)self platformOverride];
                      v28 = [(ASCLockupBatchRequest *)v8 platformOverride];
                      v29 = v28;
                      v44 = v27;
                      if (v27 && v28)
                      {
                        v30 = v28;
                        v31 = [v44 isEqual:v28];
                        v29 = v30;
                        if (v31)
                        {
                          goto LABEL_38;
                        }
                      }

                      else if (v27 == v28)
                      {
LABEL_38:
                        v39 = v29;
                        v32 = [(ASCLockupBatchRequest *)self countryCodeOverride];
                        v33 = [(ASCLockupBatchRequest *)v8 countryCodeOverride];
                        v34 = v33;
                        v38 = v32;
                        if (v32 && v33)
                        {
                          v35 = v33;
                          v36 = [v32 isEqual:v33];
                          v34 = v35;
                          v7 = v36;
                        }

                        else
                        {
                          v7 = v32 == v33;
                        }

                        v22 = v40;

                        v29 = v39;
                        goto LABEL_47;
                      }

                      v7 = 0;
                      v22 = v40;
LABEL_47:

                      v24 = v41;
                      goto LABEL_48;
                    }
                  }

                  else if (v22 == v23)
                  {
                    goto LABEL_35;
                  }

                  v7 = 0;
LABEL_48:

                  goto LABEL_49;
                }

                v7 = 0;
LABEL_50:

                v17 = v45;
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
  v4 = [(ASCLockupBatchRequest *)self ids];
  [(ASCDescriber *)v3 addObject:v4 withName:@"ids"];

  v5 = [(ASCLockupBatchRequest *)self kind];
  [(ASCDescriber *)v3 addObject:v5 withName:@"kind"];

  v6 = [(ASCLockupBatchRequest *)self context];
  [(ASCDescriber *)v3 addObject:v6 withName:@"context"];

  v7 = [(ASCLockupBatchRequest *)self clientID];
  [(ASCDescriber *)v3 addObject:v7 withName:@"clientID"];

  [(ASCDescriber *)v3 addBool:[(ASCLockupBatchRequest *)self enableAppDistribution] withName:@"enableAppDistribution"];
  v8 = [(ASCLockupBatchRequest *)self mediaQueryParams];

  if (v8)
  {
    v9 = [(ASCLockupBatchRequest *)self mediaQueryParams];
    [(ASCDescriber *)v3 addObject:v9 withName:@"mediaQueryParams"];
  }

  v10 = [(ASCLockupBatchRequest *)self platformOverride];

  if (v10)
  {
    v11 = [(ASCLockupBatchRequest *)self platformOverride];
    [(ASCDescriber *)v3 addObject:v11 withName:@"platformOverride"];
  }

  v12 = [(ASCLockupBatchRequest *)self countryCodeOverride];

  if (v12)
  {
    v13 = [(ASCLockupBatchRequest *)self countryCodeOverride];
    [(ASCDescriber *)v3 addObject:v13 withName:@"countryCodeOverride"];
  }

  v14 = [(ASCDescriber *)v3 finalizeDescription];

  return v14;
}

- (NSArray)requests
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(ASCLockupBatchRequest *)self ids];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(ASCLockupBatchRequest *)self ids];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [ASCLockupRequest alloc];
        v12 = [(ASCLockupBatchRequest *)self kind];
        v13 = [(ASCLockupBatchRequest *)self context];
        v14 = [(ASCLockupBatchRequest *)self clientID];
        v15 = [(ASCLockupRequest *)v11 _initWithID:v10 kind:v12 context:v13 clientID:v14 enableAppDistribution:[(ASCLockupBatchRequest *)self enableAppDistribution]];

        v16 = [(ASCLockupBatchRequest *)self mediaQueryParams];

        if (v16)
        {
          v17 = [(ASCLockupBatchRequest *)self mediaQueryParams];
          v18 = [v15 lockupRequestWithMediaQueryParams:v17];

          v15 = v18;
        }

        v19 = [(ASCLockupBatchRequest *)self platformOverride];

        if (v19)
        {
          v20 = [(ASCLockupBatchRequest *)self platformOverride];
          v21 = [v15 _lockupRequestWithPlatformOverride:v20];

          v15 = v21;
        }

        v22 = [(ASCLockupBatchRequest *)self countryCodeOverride];

        if (v22)
        {
          v23 = [(ASCLockupBatchRequest *)self countryCodeOverride];
          v24 = [v15 _lockupRequestWithCountryCodeOverride:v23];

          v15 = v24;
        }

        [v5 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v25 = [v5 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (ASCLockupBatchRequest)lockupBatchRequestWithIDs:(id)a3
{
  v4 = a3;
  v5 = [ASCLockupBatchRequest alloc];
  v6 = [(ASCLockupBatchRequest *)self kind];
  v7 = [(ASCLockupBatchRequest *)self context];
  v8 = [(ASCLockupBatchRequest *)self clientID];
  v9 = [(ASCLockupBatchRequest *)self enableAppDistribution];
  v10 = [(ASCLockupBatchRequest *)self mediaQueryParams];
  v11 = [(ASCLockupBatchRequest *)self platformOverride];
  v12 = [(ASCLockupBatchRequest *)self countryCodeOverride];
  v13 = [(ASCLockupBatchRequest *)v5 _initWithIDs:v4 kind:v6 context:v7 clientID:v8 enableAppDistribution:v9 mediaQueryParams:v10 platformOverride:v11 countryCodeOverride:v12];

  return v13;
}

@end