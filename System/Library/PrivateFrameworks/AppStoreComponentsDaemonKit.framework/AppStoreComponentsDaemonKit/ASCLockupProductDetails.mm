@interface ASCLockupProductDetails
+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 offerFlags:(int64_t)a5 queryParameters:(id)a6;
+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5;
+ (id)gamesURLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5;
+ (id)queryParametersForLockup:(id)a3 withBaseQueryParams:(id)a4;
- (ASCLockupProductDetails)initWithLockup:(id)a3 storeSheetHostBundleID:(id)a4 storeSheetUsageContext:(id)a5 parameters:(id)a6;
- (ASCLockupProductDetailsObserver)observer;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)present:(id)a3;
@end

@implementation ASCLockupProductDetails

+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = [a1 URLForLockupID:v9 ofKind:v8 offerFlags:a5 queryParameters:0];

  return v10;
}

+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 offerFlags:(int64_t)a5 queryParameters:(id)a6
{
  v29[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  +[ASCEligibility assertCurrentProcessEligibility];
  v11 = [v8 stringValue];
  v12 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];
  v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v14 setScheme:@"itms-apps"];
  if (![v9 isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", v9);
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

  if (v10)
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__ASCLockupProductDetails_URLForLockupID_ofKind_offerFlags_queryParameters___block_invoke;
    v27[3] = &unk_2784B14C0;
    v28 = v19;
    v20 = v19;
    [v10 enumerateKeysAndObjectsUsingBlock:v27];
    [v14 setQueryItems:v20];
  }

  v21 = [v14 URL];
  if (!v21)
  {
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", v8, v9];
    v26 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v26 initWithName:*MEMORY[0x277CBE660] reason:v25 userInfo:0]);
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

+ (id)gamesURLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v8 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v8 setScheme:@"games"];
  [v8 setHost:@"games.apple.com"];
  if (![v7 isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", v7);
  }

  v9 = [v6 stringValue];
  v10 = [@"/game/id" stringByAppendingString:v9];
  [v8 setPath:v10];

  v11 = [v8 URL];
  if (!v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", v6, v7];
    v15 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v15 initWithName:*MEMORY[0x277CBE660] reason:v14 userInfo:0]);
  }

  v12 = v11;

  return v12;
}

+ (id)queryParametersForLockup:(id)a3 withBaseQueryParams:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v7;
  v9 = [v5 productVariantID];

  if (v9)
  {
    v10 = [v5 productVariantID];
    [v8 setObject:v10 forKeyedSubscript:@"ppid"];
  }

  v11 = [v5 offer];
  v12 = [v11 flags];

  if ((v12 & 0x200) != 0)
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

- (ASCLockupProductDetails)initWithLockup:(id)a3 storeSheetHostBundleID:(id)a4 storeSheetUsageContext:(id)a5 parameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  +[ASCEligibility assertCurrentProcessEligibility];
  v24.receiver = self;
  v24.super_class = ASCLockupProductDetails;
  v14 = [(ASCLockupProductDetails *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    lockup = v14->_lockup;
    v14->_lockup = v15;

    v17 = [v11 copy];
    storeSheetHostBundleID = v14->_storeSheetHostBundleID;
    v14->_storeSheetHostBundleID = v17;

    v19 = [v12 copy];
    storeSheetUsageContext = v14->_storeSheetUsageContext;
    v14->_storeSheetUsageContext = v19;

    v21 = [v13 copy];
    parameters = v14->_parameters;
    v14->_parameters = v21;
  }

  return v14;
}

- (void)present:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASCLockupProductDetails *)self lockup];
  v6 = [v5 id];
  v7 = +[ASCAdamID invalidAdamID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = [(ASCLockupProductDetails *)self lockup];
      v10 = [v9 id];
      *buf = 138543362;
      v33 = v10;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not presenting product details for lockup %{public}@ because ID is invalid.", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v11 = [(ASCLockupProductDetails *)self lockup];
    v12 = [ASCLockupProductDetails queryParametersForLockup:v11 withBaseQueryParams:0];

    v13 = [(ASCLockupProductDetails *)self parameters];

    if (v13)
    {
      v14 = [(ASCLockupProductDetails *)self parameters];
      v15 = [v14 mutableCopy];

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
      v16 = [(ASCLockupProductDetails *)self lockup];
      v17 = [v16 id];
      *buf = 138543362;
      v33 = v17;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting product details for lockup %{public}@", buf, 0xCu);
    }

    v18 = [(ASCLockupProductDetails *)self lockup];
    v19 = [v18 id];
    v20 = [(ASCLockupProductDetails *)self lockup];
    v21 = [v20 kind];
    v22 = [(ASCLockupProductDetails *)self lockup];
    v23 = [v22 offer];
    v24 = +[ASCLockupProductDetails URLForLockupID:ofKind:offerFlags:queryParameters:](ASCLockupProductDetails, "URLForLockupID:ofKind:offerFlags:queryParameters:", v19, v21, [v23 flags], v15);

    v25 = +[ASCWorkspace sharedWorkspace];
    v26 = [v25 openURL:v24];

    if (v4)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __35__ASCLockupProductDetails_present___block_invoke;
      v30[3] = &unk_2784B17A8;
      v31 = v4;
      [v26 addFinishBlock:v30];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v2 = [(ASCLockupProductDetails *)self lockup];
  v3 = [v2 hash];

  return v3 + 2;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = self;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v7 = [(ASCLockupProductDetails *)v4 lockup];
    v8 = [(ASCLockupProductDetails *)v6 lockup];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [v7 isEqual:v8];
    }

    else
    {
      v10 = v7 == v8;
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
  v4 = [(ASCLockupProductDetails *)self lockup];
  [(ASCDescriber *)v3 addObject:v4 withName:@"lockup"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

- (ASCLockupProductDetailsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end