@interface AKCATiburonAuthorizationUIReporter
- (AKCATiburonAuthorizationUIReporter)initWithRequestID:(id)d;
- (void)didSelectAnonymousEmail:(BOOL)email didCancel:(BOOL)cancel;
@end

@implementation AKCATiburonAuthorizationUIReporter

- (AKCATiburonAuthorizationUIReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonAuthorizationUIReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)selfCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"modifiedName"];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)didSelectAnonymousEmail:(BOOL)email didCancel:(BOOL)cancel
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:email];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{cancel, MEMORY[0x277D82BD8](v4).n128_f64[0]}];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
}

@end