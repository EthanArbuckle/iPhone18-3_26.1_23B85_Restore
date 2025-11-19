@interface AKCATiburonRequestAttemptReporter
- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)a3;
- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4;
@end

@implementation AKCATiburonRequestAttemptReporter

- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonRequestAttemptReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAttempt"];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(AKCAReporter *)v9 setObject:location[0] forKeyedSubscript:@"requestID"];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v7 = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v7);
  v17 = isKindOfClass & 1;
  v9 = [location[0] authorizedRequest];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v9);
  v16 = v10 & 1;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:isKindOfClass & 1];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v12);
  v13 = [v18 domain];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v13);
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "code")}];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v14);
  v15 = AKErrorUnderlyingError();
  if (v15)
  {
    v4 = [v15 domain];
    [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v4);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
    [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end