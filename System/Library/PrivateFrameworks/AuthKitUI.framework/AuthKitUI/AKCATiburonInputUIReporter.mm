@interface AKCATiburonInputUIReporter
- (AKCATiburonInputUIReporter)initWithRequestID:(id)d;
- (void)_clearMutuallyExclusiveProperties:(BOOL)properties;
- (void)didComplete:(BOOL)complete;
- (void)didModifyName:(BOOL)name;
- (void)didSelectAnonymousEmail:(BOOL)email;
- (void)didSelectAppleID:(BOOL)d;
- (void)didSelectPasswordCredential:(BOOL)credential;
- (void)didShowAppleID:(BOOL)d;
- (void)setPasswordCredentialCount:(unint64_t)count;
@end

@implementation AKCATiburonInputUIReporter

- (AKCATiburonInputUIReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonInputUIReporter;
  selfCopy = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)selfCopy setObject:&unk_2835AADE0 forKeyedSubscript:@"passwordCredentialCount"];
    v6 = MEMORY[0x277CBEC28];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    [(AKCAReporter *)selfCopy setObject:v6 forKeyedSubscript:@"useAnonymous"];
    [(AKCAReporter *)selfCopy setObject:v6 forKeyedSubscript:@"useAppleID"];
    [(AKCAReporter *)selfCopy setObject:v6 forKeyedSubscript:@"usePasswordCredential"];
    [(AKCAReporter *)selfCopy setObject:v6 forKeyedSubscript:@"modifiedName"];
    [(AKCAReporter *)selfCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"didCancel"];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setPasswordCredentialCount:(unint64_t)count
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didShowAppleID:(BOOL)d
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:d];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didSelectAnonymousEmail:(BOOL)email
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:email];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didSelectAppleID:(BOOL)d
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:d];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:d];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didSelectPasswordCredential:(BOOL)credential
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:credential];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:credential];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didModifyName:(BOOL)name
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:name];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)didComplete:(BOOL)complete
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:!complete];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_clearMutuallyExclusiveProperties:(BOOL)properties
{
  if (properties)
  {
    v3 = MEMORY[0x277CBEC28];
    [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    [(AKCAReporter *)self setObject:v3 forKeyedSubscript:@"usePasswordCredential"];
  }
}

@end