@interface AKCATiburonRequestAttemptReporter
- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)d;
- (void)didCompleteWithAuthorization:(id)authorization error:(id)error;
@end

@implementation AKCATiburonRequestAttemptReporter

- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonRequestAttemptReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAttempt"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)didCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v18 = 0;
  objc_storeStrong(&v18, error);
  authorizedRequest = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](authorizedRequest);
  v17 = isKindOfClass & 1;
  authorizedRequest2 = [location[0] authorizedRequest];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](authorizedRequest2);
  v16 = v10 & 1;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:isKindOfClass & 1];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v12);
  domain = [v18 domain];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](domain);
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "code")}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v14);
  v15 = AKErrorUnderlyingError();
  if (v15)
  {
    domain2 = [v15 domain];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](domain2);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end