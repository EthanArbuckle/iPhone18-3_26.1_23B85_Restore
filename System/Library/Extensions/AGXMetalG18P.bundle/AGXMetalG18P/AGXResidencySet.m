@interface AGXResidencySet
- (AGXResidencySet)initWithDevice:(id)a3 descriptor:(id)a4;
@end

@implementation AGXResidencySet

- (AGXResidencySet)initWithDevice:(id)a3 descriptor:(id)a4
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  bzero(v9, 0x68uLL);
  v8.receiver = self;
  v8.super_class = AGXResidencySet;
  return [(IOGPUMetalResidencySet *)&v8 initWithDevice:a3 descriptor:a4 args:v9 argsSize:104];
}

@end