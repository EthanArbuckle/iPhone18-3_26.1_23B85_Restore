@interface AKCASatoriReporter
- (AKCASatoriReporter)initWithRequestID:(id)a3;
- (void)didCompleteVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4;
- (void)didCompleteWithSuccess:(BOOL)a3 authorizationAlreadyComplete:(BOOL)a4;
- (void)didPerformVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4;
@end

@implementation AKCASatoriReporter

- (AKCASatoriReporter)initWithRequestID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKCASatoriReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonSatori"];
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

- (void)didCompleteWithSuccess:(BOOL)a3 authorizationAlreadyComplete:(BOOL)a4
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{a3, MEMORY[0x277D82BD8](v4).n128_f64[0]}];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
}

- (void)didPerformVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:a4, MEMORY[0x277D82BD8](v5).n128_f64[0]];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v6);
}

- (void)didCompleteVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:a4, MEMORY[0x277D82BD8](v5).n128_f64[0]];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v6);
}

@end