@interface AGXResidencySet
- (AGXResidencySet)initWithDevice:(id)device descriptor:(id)descriptor;
@end

@implementation AGXResidencySet

- (AGXResidencySet)initWithDevice:(id)device descriptor:(id)descriptor
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  bzero(v9, 0x68uLL);
  v8.receiver = self;
  v8.super_class = AGXResidencySet;
  return [(IOGPUMetalResidencySet *)&v8 initWithDevice:device descriptor:descriptor args:v9 argsSize:104];
}

@end