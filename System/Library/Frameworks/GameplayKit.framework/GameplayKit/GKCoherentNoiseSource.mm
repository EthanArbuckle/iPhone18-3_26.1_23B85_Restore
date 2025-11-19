@interface GKCoherentNoiseSource
- (double)valueAt:(GKCoherentNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKCoherentNoiseSource

- (double)valueAt:(GKCoherentNoiseSource *)self
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  v7 = [v4 stringWithFormat:@"Derived class %@ must override %@", v5, v6];
  v8 = [v3 exceptionWithName:*MEMORY[0x277CBE658] reason:v7 userInfo:MEMORY[0x277CBEC10]];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)cloneModule
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  v7 = [v4 stringWithFormat:@"Derived class %@ must override %@", v5, v6];
  v8 = [v3 exceptionWithName:*MEMORY[0x277CBE658] reason:v7 userInfo:MEMORY[0x277CBEC10]];
  v9 = v8;

  objc_exception_throw(v8);
}

@end