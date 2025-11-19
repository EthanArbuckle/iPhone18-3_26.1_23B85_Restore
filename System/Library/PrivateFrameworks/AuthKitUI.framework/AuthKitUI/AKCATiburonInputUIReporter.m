@interface AKCATiburonInputUIReporter
- (AKCATiburonInputUIReporter)initWithRequestID:(id)a3;
- (void)_clearMutuallyExclusiveProperties:(BOOL)a3;
- (void)didComplete:(BOOL)a3;
- (void)didModifyName:(BOOL)a3;
- (void)didSelectAnonymousEmail:(BOOL)a3;
- (void)didSelectAppleID:(BOOL)a3;
- (void)didSelectPasswordCredential:(BOOL)a3;
- (void)didShowAppleID:(BOOL)a3;
- (void)setPasswordCredentialCount:(unint64_t)a3;
@end

@implementation AKCATiburonInputUIReporter

- (AKCATiburonInputUIReporter)initWithRequestID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonInputUIReporter;
  v9 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(AKCAReporter *)v9 setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)v9 setObject:&unk_2835AADE0 forKeyedSubscript:@"passwordCredentialCount"];
    v6 = MEMORY[0x277CBEC28];
    [AKCAReporter setObject:v9 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    [(AKCAReporter *)v9 setObject:v6 forKeyedSubscript:@"useAnonymous"];
    [(AKCAReporter *)v9 setObject:v6 forKeyedSubscript:@"useAppleID"];
    [(AKCAReporter *)v9 setObject:v6 forKeyedSubscript:@"usePasswordCredential"];
    [(AKCAReporter *)v9 setObject:v6 forKeyedSubscript:@"modifiedName"];
    [(AKCAReporter *)v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"didCancel"];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setPasswordCredentialCount:(unint64_t)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didShowAppleID:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didSelectAnonymousEmail:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didSelectAppleID:(BOOL)a3
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:a3];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didSelectPasswordCredential:(BOOL)a3
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:a3];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didModifyName:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didComplete:(BOOL)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:!a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_clearMutuallyExclusiveProperties:(BOOL)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEC28];
    [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    [(AKCAReporter *)self setObject:v3 forKeyedSubscript:@"usePasswordCredential"];
  }
}

@end