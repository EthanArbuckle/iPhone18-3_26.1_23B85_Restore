@interface AKCATiburonRequestReporter
- (AKCATiburonRequestReporter)initWithRequestContext:(id)context;
- (void)didCompleteWithAuthorization:(id)authorization error:(id)error;
@end

@implementation AKCATiburonRequestReporter

- (AKCATiburonRequestReporter)initWithRequestContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v33.receiver = v3;
  v33.super_class = AKCATiburonRequestReporter;
  v32 = [(AKCAReporter *)&v33 initWithEvent:@"com.apple.AuthKit.TiburonRequest"];
  selfCopy = v32;
  objc_storeStrong(&selfCopy, v32);
  if (v32)
  {
    requestIdentifier = [location[0] requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](uUIDString);
    *&v4 = MEMORY[0x277D82BD8](requestIdentifier).n128_u64[0];
    authorizationRequest = [location[0] authorizationRequest];
    v29 = MEMORY[0x277CBEC28];
    v30 = MEMORY[0x277CBEC38];
    if (authorizationRequest)
    {
      v5 = MEMORY[0x277CBEC38];
    }

    else
    {
      v5 = MEMORY[0x277CBEC28];
    }

    [(AKCAReporter *)selfCopy setObject:v5 forKeyedSubscript:@"includesAuthorizationRequest"];
    *&v6 = MEMORY[0x277D82BD8](authorizationRequest).n128_u64[0];
    passwordRequest = [location[0] passwordRequest];
    if (passwordRequest)
    {
      v7 = v30;
    }

    else
    {
      v7 = v29;
    }

    [(AKCAReporter *)selfCopy setObject:v7 forKeyedSubscript:@"includesPasswordRequest"];
    *&v8 = MEMORY[0x277D82BD8](passwordRequest).n128_u64[0];
    if ([location[0] _isRapportLogin])
    {
      [(AKCAReporter *)selfCopy setObject:0x283592B08 forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin] & 1) != 0 && (objc_msgSend(location[0], "_isWebLogin"))
    {
      [(AKCAReporter *)selfCopy setObject:0x283592AE8 forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isWebLogin])
    {
      [(AKCAReporter *)selfCopy setObject:0x283592B28 forKeyedSubscript:@"originClientType"];
    }

    else if ([location[0] _isFirstPartyLogin])
    {
      [(AKCAReporter *)selfCopy setObject:0x283592AC8 forKeyedSubscript:@"originClientType"];
    }

    else
    {
      [(AKCAReporter *)selfCopy setObject:0x283592AA8 forKeyedSubscript:@"originClientType"];
    }

    authorizationRequest2 = [location[0] authorizationRequest];
    *&v9 = MEMORY[0x277D82BD8](authorizationRequest2).n128_u64[0];
    if (authorizationRequest2)
    {
      authorizationRequest3 = [location[0] authorizationRequest];
      clientID = [authorizationRequest3 clientID];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      MEMORY[0x277D82BD8](clientID);
      *&v10 = MEMORY[0x277D82BD8](authorizationRequest3).n128_u64[0];
      _proxiedClientAppID = [location[0] _proxiedClientAppID];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      *&v11 = MEMORY[0x277D82BD8](_proxiedClientAppID).n128_u64[0];
      authorizationRequest4 = [location[0] authorizationRequest];
      teamID = [authorizationRequest4 teamID];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      MEMORY[0x277D82BD8](teamID);
      *&v12 = MEMORY[0x277D82BD8](authorizationRequest4).n128_u64[0];
      authorizationRequest5 = [location[0] authorizationRequest];
      existingStatus = [authorizationRequest5 existingStatus];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:{existingStatus != 1, MEMORY[0x277D82BD8](authorizationRequest5).n128_f64[0]}];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      *&v14 = MEMORY[0x277D82BD8](v23).n128_u64[0];
      v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(location[0], "_isEligibleForUpgradeFromPassword", v14)}];
      [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      MEMORY[0x277D82BD8](v24);
    }
  }

  v16 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (void)didCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v26 = 0;
  objc_storeStrong(&v26, error);
  authorizedRequest = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v4 = MEMORY[0x277D82BD8](authorizedRequest).n128_u64[0];
  v25 = isKindOfClass & 1;
  authorizedRequest2 = [location[0] authorizedRequest];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass() & 1;
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{isKindOfClass & 1, MEMORY[0x277D82BD8](authorizedRequest2).n128_f64[0]}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{v24, MEMORY[0x277D82BD8](v19).n128_f64[0]}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  domain = [v26 domain];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  *&v6 = MEMORY[0x277D82BD8](domain).n128_u64[0];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "code", v6)}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v22);
  v23 = AKErrorUnderlyingError();
  if (v23)
  {
    domain2 = [v23 domain];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code", MEMORY[0x277D82BD8](domain2).n128_f64[0])}];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v14);
  }

  if (v25 & 1) != 0 || (v24)
  {
    v12 = [(AKCAReporter *)selfCopy objectForKeyedSubscript:@"clientID"];
    *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v12)
    {
      [(AKCAReporter *)selfCopy setObject:0x283592C08 forKeyedSubscript:@"clientID", v7];
    }

    v11 = [(AKCAReporter *)selfCopy objectForKeyedSubscript:@"appID", v7];
    *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v11)
    {
      [(AKCAReporter *)selfCopy setObject:0x283592C08 forKeyedSubscript:@"appID", v8];
    }

    v10 = [(AKCAReporter *)selfCopy objectForKeyedSubscript:@"teamID", v8];
    *&v9 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v10)
    {
      [(AKCAReporter *)selfCopy setObject:0x283592C08 forKeyedSubscript:@"teamID", v9];
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

@end