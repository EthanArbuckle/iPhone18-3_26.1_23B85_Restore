@interface ASCLockupBatchRequest
+ (id)lockupBatchRequestsFromRequests:(id)requests;
- (ASCLockupBatchRequest)initWithCoder:(id)coder;
- (ASCLockupBatchRequest)initWithIDs:(id)ds kind:(id)kind context:(id)context;
- (ASCLockupBatchRequest)lockupBatchRequestWithIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (NSArray)requests;
- (id)_initWithIDs:(id)ds kind:(id)kind context:(id)context clientID:(id)d enableAppDistribution:(BOOL)distribution mediaQueryParams:(id)params platformOverride:(id)override countryCodeOverride:(id)self0;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupBatchRequest

+ (id)lockupBatchRequestsFromRequests:(id)requests
{
  v66 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
  firstObject = [requestsCopy firstObject];
  clientID = [firstObject clientID];

  firstObject2 = [requestsCopy firstObject];
  enableAppDistribution = [firstObject2 enableAppDistribution];

  firstObject3 = [requestsCopy firstObject];
  mediaQueryParams = [firstObject3 mediaQueryParams];

  firstObject4 = [requestsCopy firstObject];
  platformOverride = [firstObject4 platformOverride];

  firstObject5 = [requestsCopy firstObject];
  countryCodeOverride = [firstObject5 countryCodeOverride];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = requestsCopy;
  v52 = [v12 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v52)
  {
    v50 = *v62;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(v12);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        if ([v12 count] >= 2)
        {
          mediaQueryParams2 = [v14 mediaQueryParams];

          if (mediaQueryParams2)
          {
            v46 = objc_alloc(MEMORY[0x277CBEAD8]);
            v47 = *MEMORY[0x277CBE660];
            v48 = @"Request specifying custom media query parameters cannot be included in batch request with more than one request";
LABEL_37:
            objc_exception_throw([v46 initWithName:v47 reason:v48 userInfo:0]);
          }
        }

        clientID2 = [v14 clientID];
        v17 = clientID2;
        if (clientID && clientID2)
        {
          v18 = [clientID2 isEqual:clientID];

          if ((v18 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {

          if (v17 != clientID)
          {
LABEL_31:
            v40 = MEMORY[0x277CCACA8];
            clientID3 = [v14 clientID];
            v42 = [v40 stringWithFormat:@"Requests with different clientID cannot be included in batch request: %@ != %@", clientID3, clientID];

            goto LABEL_36;
          }
        }

        if (enableAppDistribution != [v14 enableAppDistribution])
        {
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requests with different AppDistribution options cannot be included in batch request: %d != %d", objc_msgSend(v14, "enableAppDistribution"), enableAppDistribution];
          goto LABEL_36;
        }

        platformOverride2 = [v14 platformOverride];
        v20 = platformOverride2;
        if (platformOverride && platformOverride2)
        {
          v21 = [platformOverride2 isEqual:platformOverride];

          if ((v21 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (v20 != platformOverride)
          {
LABEL_32:
            v43 = MEMORY[0x277CCACA8];
            platformOverride3 = [v14 platformOverride];
            [v43 stringWithFormat:@"Requests with different platformOverride options cannot be included in batch request: %@ != %@", platformOverride3, platformOverride];
            goto LABEL_34;
          }
        }

        countryCodeOverride2 = [v14 countryCodeOverride];
        v23 = countryCodeOverride2;
        if (countryCodeOverride && countryCodeOverride2)
        {
          v24 = [countryCodeOverride2 isEqual:countryCodeOverride];

          if ((v24 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {

          if (v23 != countryCodeOverride)
          {
LABEL_33:
            v45 = MEMORY[0x277CCACA8];
            platformOverride3 = [v14 countryCodeOverride];
            [v45 stringWithFormat:@"Requests with different countryCodeOverride options cannot be included in batch request: %@ != %@", platformOverride3, countryCodeOverride];
            v42 = LABEL_34:;

LABEL_36:
            v46 = objc_alloc(MEMORY[0x277CBEAD8]);
            v47 = *MEMORY[0x277CBE660];
            v48 = v42;
            goto LABEL_37;
          }
        }

        v25 = [ASCPair alloc];
        kind = [v14 kind];
        context = [v14 context];
        v28 = [(ASCPair *)v25 initWithFirst:kind second:context];

        v29 = [v53 objectForKeyedSubscript:v28];
        if (!v29)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [v53 setObject:v29 forKeyedSubscript:v28];
        }

        v30 = [v14 id];
        [v29 addObject:v30];
      }

      v52 = [v12 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v52);
  }

  v31 = v12;

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __57__ASCLockupBatchRequest_lockupBatchRequestsFromRequests___block_invoke;
  v54[3] = &unk_2781CBF60;
  v60 = enableAppDistribution;
  v55 = clientID;
  v56 = mediaQueryParams;
  v57 = platformOverride;
  v58 = countryCodeOverride;
  v59 = v32;
  v33 = v32;
  v34 = countryCodeOverride;
  v35 = platformOverride;
  v36 = mediaQueryParams;
  v37 = clientID;
  [v53 enumerateKeysAndObjectsUsingBlock:v54];
  v38 = [v33 copy];

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

- (ASCLockupBatchRequest)initWithIDs:(id)ds kind:(id)kind context:(id)context
{
  dsCopy = ds;
  kindCopy = kind;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ASCLockupBatchRequest;
  v11 = [(ASCLockupBatchRequest *)&v19 init];
  if (v11)
  {
    v12 = [dsCopy copy];
    ids = v11->_ids;
    v11->_ids = v12;

    v14 = [kindCopy copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [contextCopy copy];
    context = v11->_context;
    v11->_context = v16;
  }

  return v11;
}

- (id)_initWithIDs:(id)ds kind:(id)kind context:(id)context clientID:(id)d enableAppDistribution:(BOOL)distribution mediaQueryParams:(id)params platformOverride:(id)override countryCodeOverride:(id)self0
{
  dCopy = d;
  paramsCopy = params;
  overrideCopy = override;
  codeOverrideCopy = codeOverride;
  v18 = [(ASCLockupBatchRequest *)self initWithIDs:ds kind:kind context:context];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientID, d);
    v19->_enableAppDistribution = distribution;
    objc_storeStrong(&v19->_mediaQueryParams, params);
    objc_storeStrong(&v19->_platformOverride, override);
    objc_storeStrong(&v19->_countryCodeOverride, codeOverride);
  }

  return v19;
}

- (ASCLockupBatchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ids"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v10)
      {
        v11 = [(ASCLockupBatchRequest *)self initWithIDs:v8 kind:v9 context:v10];
        if (v11)
        {
          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
          clientID = v11->_clientID;
          v11->_clientID = v12;

          v11->_enableAppDistribution = [coderCopy decodeBoolForKey:@"enableAppDistribution"];
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          v15 = objc_opt_class();
          v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
          v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"mediaQueryParams"];
          mediaQueryParams = v11->_mediaQueryParams;
          v11->_mediaQueryParams = v17;

          v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformOverride"];
          platformOverride = v11->_platformOverride;
          v11->_platformOverride = v19;

          v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCodeOverride"];
          countryCodeOverride = v11->_countryCodeOverride;
          v11->_countryCodeOverride = v21;
        }

        self = v11;
        selfCopy = self;
      }

      else
      {
        v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v40)
        {
          [(ASCLockupBatchRequest *)v40 initWithCoder:v41, v42, v43, v44, v45, v46, v47];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v32)
      {
        [(ASCLockupBatchRequest *)v32 initWithCoder:v33, v34, v35, v36, v37, v38, v39];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v24 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v24)
    {
      [(ASCLockupBatchRequest *)v24 initWithCoder:v25, v26, v27, v28, v29, v30, v31];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCLockupBatchRequest *)self ids];
  [coderCopy encodeObject:v5 forKey:@"ids"];

  kind = [(ASCLockupBatchRequest *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  context = [(ASCLockupBatchRequest *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  clientID = [(ASCLockupBatchRequest *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];

  [coderCopy encodeBool:-[ASCLockupBatchRequest enableAppDistribution](self forKey:{"enableAppDistribution"), @"enableAppDistribution"}];
  mediaQueryParams = [(ASCLockupBatchRequest *)self mediaQueryParams];
  [coderCopy encodeObject:mediaQueryParams forKey:@"mediaQueryParams"];

  platformOverride = [(ASCLockupBatchRequest *)self platformOverride];
  [coderCopy encodeObject:platformOverride forKey:@"platformOverride"];

  countryCodeOverride = [(ASCLockupBatchRequest *)self countryCodeOverride];
  [coderCopy encodeObject:countryCodeOverride forKey:@"countryCodeOverride"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupBatchRequest *)self ids];
  [(ASCHasher *)v3 combineObject:v4];

  kind = [(ASCLockupBatchRequest *)self kind];
  [(ASCHasher *)v3 combineObject:kind];

  context = [(ASCLockupBatchRequest *)self context];
  [(ASCHasher *)v3 combineObject:context];

  clientID = [(ASCLockupBatchRequest *)self clientID];
  [(ASCHasher *)v3 combineObject:clientID];

  [(ASCHasher *)v3 combineBool:[(ASCLockupBatchRequest *)self enableAppDistribution]];
  mediaQueryParams = [(ASCLockupBatchRequest *)self mediaQueryParams];
  [(ASCHasher *)v3 combineObject:mediaQueryParams];

  platformOverride = [(ASCLockupBatchRequest *)self platformOverride];
  [(ASCHasher *)v3 combineObject:platformOverride];

  countryCodeOverride = [(ASCLockupBatchRequest *)self countryCodeOverride];
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

    v9 = [(ASCLockupBatchRequest *)self ids];
    v10 = [(ASCLockupBatchRequest *)v8 ids];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        kind = [(ASCLockupBatchRequest *)self kind];
        kind2 = [(ASCLockupBatchRequest *)v8 kind];
        v14 = kind2;
        if (kind && kind2)
        {
          if ([kind isEqual:kind2])
          {
LABEL_15:
            context = [(ASCLockupBatchRequest *)self context];
            context2 = [(ASCLockupBatchRequest *)v8 context];
            v17 = context2;
            if (context && context2)
            {
              if ([context isEqual:context2])
              {
LABEL_18:
                v45 = v17;
                clientID = [(ASCLockupBatchRequest *)self clientID];
                clientID2 = [(ASCLockupBatchRequest *)v8 clientID];
                v20 = clientID2;
                if (clientID && clientID2)
                {
                  if ([clientID isEqual:clientID2])
                  {
                    goto LABEL_21;
                  }
                }

                else if (clientID == clientID2)
                {
LABEL_21:
                  v42 = v20;
                  v43 = clientID;
                  enableAppDistribution = [(ASCLockupBatchRequest *)self enableAppDistribution];
                  if (enableAppDistribution != [(ASCLockupBatchRequest *)v8 enableAppDistribution])
                  {
                    v7 = 0;
LABEL_49:
                    v20 = v42;
                    goto LABEL_50;
                  }

                  mediaQueryParams = [(ASCLockupBatchRequest *)self mediaQueryParams];
                  mediaQueryParams2 = [(ASCLockupBatchRequest *)v8 mediaQueryParams];
                  v24 = mediaQueryParams2;
                  if (mediaQueryParams && mediaQueryParams2)
                  {
                    v25 = mediaQueryParams2;
                    v26 = [mediaQueryParams isEqual:mediaQueryParams2];
                    v24 = v25;
                    clientID = v43;
                    if (v26)
                    {
LABEL_35:
                      v40 = mediaQueryParams;
                      v41 = v24;
                      platformOverride = [(ASCLockupBatchRequest *)self platformOverride];
                      platformOverride2 = [(ASCLockupBatchRequest *)v8 platformOverride];
                      v29 = platformOverride2;
                      v44 = platformOverride;
                      if (platformOverride && platformOverride2)
                      {
                        v30 = platformOverride2;
                        v31 = [v44 isEqual:platformOverride2];
                        v29 = v30;
                        if (v31)
                        {
                          goto LABEL_38;
                        }
                      }

                      else if (platformOverride == platformOverride2)
                      {
LABEL_38:
                        v39 = v29;
                        countryCodeOverride = [(ASCLockupBatchRequest *)self countryCodeOverride];
                        countryCodeOverride2 = [(ASCLockupBatchRequest *)v8 countryCodeOverride];
                        v34 = countryCodeOverride2;
                        v38 = countryCodeOverride;
                        if (countryCodeOverride && countryCodeOverride2)
                        {
                          v35 = countryCodeOverride2;
                          v36 = [countryCodeOverride isEqual:countryCodeOverride2];
                          v34 = v35;
                          v7 = v36;
                        }

                        else
                        {
                          v7 = countryCodeOverride == countryCodeOverride2;
                        }

                        mediaQueryParams = v40;

                        v29 = v39;
                        goto LABEL_47;
                      }

                      v7 = 0;
                      mediaQueryParams = v40;
LABEL_47:

                      v24 = v41;
                      goto LABEL_48;
                    }
                  }

                  else if (mediaQueryParams == mediaQueryParams2)
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
  v4 = [(ASCLockupBatchRequest *)self ids];
  [(ASCDescriber *)v3 addObject:v4 withName:@"ids"];

  kind = [(ASCLockupBatchRequest *)self kind];
  [(ASCDescriber *)v3 addObject:kind withName:@"kind"];

  context = [(ASCLockupBatchRequest *)self context];
  [(ASCDescriber *)v3 addObject:context withName:@"context"];

  clientID = [(ASCLockupBatchRequest *)self clientID];
  [(ASCDescriber *)v3 addObject:clientID withName:@"clientID"];

  [(ASCDescriber *)v3 addBool:[(ASCLockupBatchRequest *)self enableAppDistribution] withName:@"enableAppDistribution"];
  mediaQueryParams = [(ASCLockupBatchRequest *)self mediaQueryParams];

  if (mediaQueryParams)
  {
    mediaQueryParams2 = [(ASCLockupBatchRequest *)self mediaQueryParams];
    [(ASCDescriber *)v3 addObject:mediaQueryParams2 withName:@"mediaQueryParams"];
  }

  platformOverride = [(ASCLockupBatchRequest *)self platformOverride];

  if (platformOverride)
  {
    platformOverride2 = [(ASCLockupBatchRequest *)self platformOverride];
    [(ASCDescriber *)v3 addObject:platformOverride2 withName:@"platformOverride"];
  }

  countryCodeOverride = [(ASCLockupBatchRequest *)self countryCodeOverride];

  if (countryCodeOverride)
  {
    countryCodeOverride2 = [(ASCLockupBatchRequest *)self countryCodeOverride];
    [(ASCDescriber *)v3 addObject:countryCodeOverride2 withName:@"countryCodeOverride"];
  }

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (NSArray)requests
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(ASCLockupBatchRequest *)self ids];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(ASCLockupBatchRequest *)self ids];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [ASCLockupRequest alloc];
        kind = [(ASCLockupBatchRequest *)self kind];
        context = [(ASCLockupBatchRequest *)self context];
        clientID = [(ASCLockupBatchRequest *)self clientID];
        v15 = [(ASCLockupRequest *)v11 _initWithID:v10 kind:kind context:context clientID:clientID enableAppDistribution:[(ASCLockupBatchRequest *)self enableAppDistribution]];

        mediaQueryParams = [(ASCLockupBatchRequest *)self mediaQueryParams];

        if (mediaQueryParams)
        {
          mediaQueryParams2 = [(ASCLockupBatchRequest *)self mediaQueryParams];
          v18 = [v15 lockupRequestWithMediaQueryParams:mediaQueryParams2];

          v15 = v18;
        }

        platformOverride = [(ASCLockupBatchRequest *)self platformOverride];

        if (platformOverride)
        {
          platformOverride2 = [(ASCLockupBatchRequest *)self platformOverride];
          v21 = [v15 _lockupRequestWithPlatformOverride:platformOverride2];

          v15 = v21;
        }

        countryCodeOverride = [(ASCLockupBatchRequest *)self countryCodeOverride];

        if (countryCodeOverride)
        {
          countryCodeOverride2 = [(ASCLockupBatchRequest *)self countryCodeOverride];
          v24 = [v15 _lockupRequestWithCountryCodeOverride:countryCodeOverride2];

          v15 = v24;
        }

        [v5 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = [v5 copy];

  return v25;
}

- (ASCLockupBatchRequest)lockupBatchRequestWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = [ASCLockupBatchRequest alloc];
  kind = [(ASCLockupBatchRequest *)self kind];
  context = [(ASCLockupBatchRequest *)self context];
  clientID = [(ASCLockupBatchRequest *)self clientID];
  enableAppDistribution = [(ASCLockupBatchRequest *)self enableAppDistribution];
  mediaQueryParams = [(ASCLockupBatchRequest *)self mediaQueryParams];
  platformOverride = [(ASCLockupBatchRequest *)self platformOverride];
  countryCodeOverride = [(ASCLockupBatchRequest *)self countryCodeOverride];
  v13 = [(ASCLockupBatchRequest *)v5 _initWithIDs:dsCopy kind:kind context:context clientID:clientID enableAppDistribution:enableAppDistribution mediaQueryParams:mediaQueryParams platformOverride:platformOverride countryCodeOverride:countryCodeOverride];

  return v13;
}

@end