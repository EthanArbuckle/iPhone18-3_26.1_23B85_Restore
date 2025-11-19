@interface GKNoiseSource
- (double)valueAt:(GKNoiseSource *)self;
- (id)cloneModule;
- (id)inputModuleAtIndex:(int)a3;
- (void)setInputModule:(id)a3 atIndex:(int)a4;
@end

@implementation GKNoiseSource

- (double)valueAt:(GKNoiseSource *)self
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

- (id)inputModuleAtIndex:(int)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v8 = [v5 stringWithFormat:@"Unexpected call on instance of class %@ to method %@", v6, v7];
  v9 = [v4 exceptionWithName:*MEMORY[0x277CBE658] reason:v8 userInfo:MEMORY[0x277CBEC10]];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)setInputModule:(id)a3 atIndex:(int)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  v10 = [v7 stringWithFormat:@"Unexpected call on instance of class %@ to method %@", v8, v9];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:MEMORY[0x277CBEC10]];
  v12 = v11;

  objc_exception_throw(v11);
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