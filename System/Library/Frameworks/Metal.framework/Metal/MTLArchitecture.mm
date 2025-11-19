@interface MTLArchitecture
- (MTLArchitecture)initWithCPUType:(int)a3 cpuSubtype:(int)a4;
- (MTLArchitecture)initWithCPUType:(int)a3 cpuSubtype:(int)a4 revision:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation MTLArchitecture

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLArchitecture;
  [(MTLArchitecture *)&v3 dealloc];
}

- (MTLArchitecture)initWithCPUType:(int)a3 cpuSubtype:(int)a4
{
  v9.receiver = self;
  v9.super_class = MTLArchitecture;
  v6 = [(MTLArchitecture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_cpuType = a3;
    v6->_cpuSubtype = a4;
    v6->_name = newArchitectureNameString(a3, a4);
  }

  return v7;
}

- (MTLArchitecture)initWithCPUType:(int)a3 cpuSubtype:(int)a4 revision:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLArchitecture;
  v8 = [(MTLArchitecture *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_cpuType = a3;
    v8->_cpuSubtype = a4;
    v8->_name = newArchitectureNameString(a3, a4);
    v9->_revision = [a5 copy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 1) = self->_name;
  *(result + 2) = self->_revision;
  *(result + 6) = self->_cpuType;
  *(result + 7) = self->_cpuSubtype;
  return result;
}

@end