@interface AKCATiburonRequestReporter
- (AKCATiburonRequestReporter)initWithRequestContext:(id)a3;
- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4;
@end

@implementation AKCATiburonRequestReporter

- (AKCATiburonRequestReporter)initWithRequestContext:(id)a3
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v35;
  v35 = 0;
  v33.receiver = v3;
  v33.super_class = AKCATiburonRequestReporter;
  v32 = [(AKCAReporter *)&v33 initWithEvent:@"com.apple.AuthKit.TiburonRequest"];
  v35 = v32;
  objc_storeStrong(&v35, v32);
  if (v32)
  {
    v27 = [location[0] requestIdentifier];
    v26 = [v27 UUIDString];
    [AKCAReporter setObject:v35 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v26);
    *&v4 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    v28 = [location[0] authorizationRequest];
    v29 = MEMORY[0x277CBEC28];
    v30 = MEMORY[0x277CBEC38];
    if (v28)
    {
      v5 = MEMORY[0x277CBEC38];
    }

    else
    {
      v5 = MEMORY[0x277CBEC28];
    }

    [(AKCAReporter *)v35 setObject:v5 forKeyedSubscript:@"includesAuthorizationRequest"];
    *&v6 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    v31 = [location[0] passwordRequest];
    if (v31)
    {
      v7 = v30;
    }

    else
    {
      v7 = v29;
    }

    [(AKCAReporter *)v35 setObject:v7 forKeyedSubscript:@"includesPasswordRequest"];
    *&v8 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    if ([location[0] _isRapportLogin])
    {
      [(AKCAReporter *)v35 setObject:0x283592B08 forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin] & 1) != 0 && (objc_msgSend(location[0], "_isWebLogin"))
    {
      [(AKCAReporter *)v35 setObject:0x283592AE8 forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isWebLogin])
    {
      [(AKCAReporter *)v35 setObject:0x283592B28 forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin])
    {
      [(AKCAReporter *)v35 setObject:0x283592AC8 forKeyedSubscript:@"originClientType"];
    }

    else
    {
      [(AKCAReporter *)v35 setObject:0x283592AA8 forKeyedSubscript:@"originClientType"];
    }

    v25 = [location[0] authorizationRequest];
    *&v9 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    if (v25)
    {
      v18 = [location[0] authorizationRequest];
      v17 = [v18 clientID];
      [AKCAReporter setObject:v35 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      MEMORY[0x277D82BD8](v17);
      *&v10 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      v19 = [location[0] _proxiedClientAppID];
      [AKCAReporter setObject:v35 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      *&v11 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      v21 = [location[0] authorizationRequest];
      v20 = [v21 teamID];
      [AKCAReporter setObject:v35 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      MEMORY[0x277D82BD8](v20);
      *&v12 = MEMORY[0x277D82BD8](v21).n128_u64[0];
      v22 = [location[0] authorizationRequest];
      v13 = [v22 existingStatus];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:{v13 != 1, MEMORY[0x277D82BD8](v22).n128_f64[0]}];
      [AKCAReporter setObject:v35 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      *&v14 = MEMORY[0x277D82BD8](v23).n128_u64[0];
      v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(location[0], "_isEligibleForUpgradeFromPassword", v14)}];
      [AKCAReporter setObject:v35 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      MEMORY[0x277D82BD8](v24);
    }
  }

  v16 = MEMORY[0x277D82BE0](v35);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v35, 0);
  return v16;
}

- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v16 = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v25 = isKindOfClass & 1;
  v18 = [location[0] authorizedRequest];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass() & 1;
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{isKindOfClass & 1, MEMORY[0x277D82BD8](v18).n128_f64[0]}];
  [AKCAReporter setObject:v28 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{v24, MEMORY[0x277D82BD8](v19).n128_f64[0]}];
  [AKCAReporter setObject:v28 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [v26 domain];
  [AKCAReporter setObject:v28 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  *&v6 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "code", v6)}];
  [AKCAReporter setObject:v28 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v22);
  v23 = AKErrorUnderlyingError();
  if (v23)
  {
    v13 = [v23 domain];
    [AKCAReporter setObject:v28 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code", MEMORY[0x277D82BD8](v13).n128_f64[0])}];
    [AKCAReporter setObject:v28 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v14);
  }

  if (v25 & 1) != 0 || (v24)
  {
    v12 = [(AKCAReporter *)v28 objectForKeyedSubscript:@"clientID"];
    *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v12)
    {
      [(AKCAReporter *)v28 setObject:0x283592C08 forKeyedSubscript:@"clientID", v7];
    }

    v11 = [(AKCAReporter *)v28 objectForKeyedSubscript:@"appID", v7];
    *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v11)
    {
      [(AKCAReporter *)v28 setObject:0x283592C08 forKeyedSubscript:@"appID", v8];
    }

    v10 = [(AKCAReporter *)v28 objectForKeyedSubscript:@"teamID", v8];
    *&v9 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v10)
    {
      [(AKCAReporter *)v28 setObject:0x283592C08 forKeyedSubscript:@"teamID", v9];
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

@end