@interface AKCASatoriReporter
- (AKCASatoriReporter)initWithRequestID:(id)d;
- (void)didCompleteVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration;
- (void)didCompleteWithSuccess:(BOOL)success authorizationAlreadyComplete:(BOOL)complete;
- (void)didPerformVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration;
@end

@implementation AKCASatoriReporter

- (AKCASatoriReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCASatoriReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonSatori"];
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

- (void)didCompleteWithSuccess:(BOOL)success authorizationAlreadyComplete:(BOOL)complete
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:complete];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{success, MEMORY[0x277D82BD8](v4).n128_f64[0]}];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
}

- (void)didPerformVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:success];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:duration, MEMORY[0x277D82BD8](v5).n128_f64[0]];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v6);
}

- (void)didCompleteVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:success];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:duration, MEMORY[0x277D82BD8](v5).n128_f64[0]];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v6);
}

@end