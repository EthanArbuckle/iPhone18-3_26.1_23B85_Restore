@interface GKNoiseModifier
- (GKNoiseModifier)init;
- (GKNoiseModifier)initWithInputModuleCount:(unint64_t)count;
- (double)valueAt:(GKNoiseModifier *)self;
- (id)cloneModule;
- (int)requiredInputModuleCount;
@end

@implementation GKNoiseModifier

- (GKNoiseModifier)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  v7 = [v4 stringWithFormat:@"Unexpected call on instance of class %@ to method %@", v5, v6];
  v8 = [v3 exceptionWithName:*MEMORY[0x277CBE658] reason:v7 userInfo:MEMORY[0x277CBEC10]];
  v9 = v8;

  objc_exception_throw(v8);
}

- (GKNoiseModifier)initWithInputModuleCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = GKNoiseModifier;
  v4 = [(GKNoiseModifier *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
    inputModules = v4->_inputModules;
    v4->_inputModules = v5;
  }

  return v4;
}

- (int)requiredInputModuleCount
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

- (double)valueAt:(GKNoiseModifier *)self
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