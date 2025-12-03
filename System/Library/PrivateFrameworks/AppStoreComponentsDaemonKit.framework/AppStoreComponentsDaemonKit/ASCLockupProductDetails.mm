@interface ASCLockupProductDetails
+ (id)URLForLockupID:(id)d ofKind:(id)kind offerFlags:(int64_t)flags queryParameters:(id)parameters;
+ (id)URLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags;
+ (id)gamesURLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags;
+ (id)queryParametersForLockup:(id)lockup withBaseQueryParams:(id)params;
- (ASCLockupProductDetails)initWithLockup:(id)lockup storeSheetHostBundleID:(id)d storeSheetUsageContext:(id)context parameters:(id)parameters;
- (ASCLockupProductDetailsObserver)observer;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)present:(id)present;
@end

@implementation ASCLockupProductDetails

+ (id)URLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags
{
  kindCopy = kind;
  dCopy = d;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = [self URLForLockupID:dCopy ofKind:kindCopy offerFlags:flags queryParameters:0];

  return v10;
}

+ (id)URLForLockupID:(id)d ofKind:(id)kind offerFlags:(int64_t)flags queryParameters:(id)parameters
{
  v29[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  kindCopy = kind;
  parametersCopy = parameters;
  +[ASCEligibility assertCurrentProcessEligibility];
  stringValue = [dCopy stringValue];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [stringValue stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v14 setScheme:@"itms-apps"];
  if (![kindCopy isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", kindCopy);
  }

  [v14 setPercentEncodedHost:@"apps.apple.com"];
  v15 = MEMORY[0x277CCACA8];
  v29[0] = @"/";
  v29[1] = @"app";
  v16 = [@"id" stringByAppendingString:v13];
  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v18 = [v15 pathWithComponents:v17];
  [v14 setPercentEncodedPath:v18];

  if (parametersCopy)
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(parametersCopy, "count")}];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__ASCLockupProductDetails_URLForLockupID_ofKind_offerFlags_queryParameters___block_invoke;
    v27[3] = &unk_2784B14C0;
    v28 = v19;
    v20 = v19;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v27];
    [v14 setQueryItems:v20];
  }

  v21 = [v14 URL];
  if (!v21)
  {
    kindCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", dCopy, kindCopy];
    v26 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v26 initWithName:*MEMORY[0x277CBE660] reason:kindCopy userInfo:0]);
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __76__ASCLockupProductDetails_URLForLockupID_ofKind_offerFlags_queryParameters___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

+ (id)gamesURLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags
{
  dCopy = d;
  kindCopy = kind;
  +[ASCEligibility assertCurrentProcessEligibility];
  v8 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v8 setScheme:@"games"];
  [v8 setHost:@"games.apple.com"];
  if (![kindCopy isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", kindCopy);
  }

  stringValue = [dCopy stringValue];
  v10 = [@"/game/id" stringByAppendingString:stringValue];
  [v8 setPath:v10];

  v11 = [v8 URL];
  if (!v11)
  {
    kindCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", dCopy, kindCopy];
    v15 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v15 initWithName:*MEMORY[0x277CBE660] reason:kindCopy userInfo:0]);
  }

  v12 = v11;

  return v12;
}

+ (id)queryParametersForLockup:(id)lockup withBaseQueryParams:(id)params
{
  lockupCopy = lockup;
  paramsCopy = params;
  +[ASCEligibility assertCurrentProcessEligibility];
  if (paramsCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:paramsCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v7;
  productVariantID = [lockupCopy productVariantID];

  if (productVariantID)
  {
    productVariantID2 = [lockupCopy productVariantID];
    [v8 setObject:productVariantID2 forKeyedSubscript:@"ppid"];
  }

  offer = [lockupCopy offer];
  flags = [offer flags];

  if ((flags & 0x200) != 0)
  {
    [v8 setObject:@"1" forKeyedSubscript:@"isViewOnly"];
  }

  if ([v8 count])
  {
    v13 = [v8 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ASCLockupProductDetails)initWithLockup:(id)lockup storeSheetHostBundleID:(id)d storeSheetUsageContext:(id)context parameters:(id)parameters
{
  lockupCopy = lockup;
  dCopy = d;
  contextCopy = context;
  parametersCopy = parameters;
  +[ASCEligibility assertCurrentProcessEligibility];
  v24.receiver = self;
  v24.super_class = ASCLockupProductDetails;
  v14 = [(ASCLockupProductDetails *)&v24 init];
  if (v14)
  {
    v15 = [lockupCopy copy];
    lockup = v14->_lockup;
    v14->_lockup = v15;

    v17 = [dCopy copy];
    storeSheetHostBundleID = v14->_storeSheetHostBundleID;
    v14->_storeSheetHostBundleID = v17;

    v19 = [contextCopy copy];
    storeSheetUsageContext = v14->_storeSheetUsageContext;
    v14->_storeSheetUsageContext = v19;

    v21 = [parametersCopy copy];
    parameters = v14->_parameters;
    v14->_parameters = v21;
  }

  return v14;
}

- (void)present:(id)present
{
  v34 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  lockup = [(ASCLockupProductDetails *)self lockup];
  v6 = [lockup id];
  v7 = +[ASCAdamID invalidAdamID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      lockup2 = [(ASCLockupProductDetails *)self lockup];
      v10 = [lockup2 id];
      *buf = 138543362;
      v33 = v10;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not presenting product details for lockup %{public}@ because ID is invalid.", buf, 0xCu);
    }

    if (presentCopy)
    {
      presentCopy[2](presentCopy, 0);
    }
  }

  else
  {
    lockup3 = [(ASCLockupProductDetails *)self lockup];
    v12 = [ASCLockupProductDetails queryParametersForLockup:lockup3 withBaseQueryParams:0];

    parameters = [(ASCLockupProductDetails *)self parameters];

    if (parameters)
    {
      parameters2 = [(ASCLockupProductDetails *)self parameters];
      v15 = [parameters2 mutableCopy];

      if (v12)
      {
        [v15 addEntriesFromDictionary:v12];
      }
    }

    else
    {
      v15 = [v12 mutableCopy];
    }

    v28 = v12;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      lockup4 = [(ASCLockupProductDetails *)self lockup];
      v17 = [lockup4 id];
      *buf = 138543362;
      v33 = v17;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting product details for lockup %{public}@", buf, 0xCu);
    }

    lockup5 = [(ASCLockupProductDetails *)self lockup];
    v19 = [lockup5 id];
    lockup6 = [(ASCLockupProductDetails *)self lockup];
    kind = [lockup6 kind];
    lockup7 = [(ASCLockupProductDetails *)self lockup];
    offer = [lockup7 offer];
    v24 = +[ASCLockupProductDetails URLForLockupID:ofKind:offerFlags:queryParameters:](ASCLockupProductDetails, "URLForLockupID:ofKind:offerFlags:queryParameters:", v19, kind, [offer flags], v15);

    v25 = +[ASCWorkspace sharedWorkspace];
    v26 = [v25 openURL:v24];

    if (presentCopy)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __35__ASCLockupProductDetails_present___block_invoke;
      v30[3] = &unk_2784B17A8;
      v31 = presentCopy;
      [v26 addFinishBlock:v30];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  lockup = [(ASCLockupProductDetails *)self lockup];
  v3 = [lockup hash];

  return v3 + 2;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  selfCopy = self;
  if (selfCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    lockup = [(ASCLockupProductDetails *)selfCopy lockup];
    lockup2 = [(ASCLockupProductDetails *)v6 lockup];
    v9 = lockup2;
    if (lockup && lockup2)
    {
      v10 = [lockup isEqual:lockup2];
    }

    else
    {
      v10 = lockup == lockup2;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  lockup = [(ASCLockupProductDetails *)self lockup];
  [(ASCDescriber *)v3 addObject:lockup withName:@"lockup"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (ASCLockupProductDetailsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end