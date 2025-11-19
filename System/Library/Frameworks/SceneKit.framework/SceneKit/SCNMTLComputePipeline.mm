@interface SCNMTLComputePipeline
- (SCNMTLComputePipeline)init;
- (id)description;
- (void)dealloc;
- (void)setComputeFunction:(void *)a1;
- (void)setState:(void *)a1;
@end

@implementation SCNMTLComputePipeline

- (SCNMTLComputePipeline)init
{
  v3.receiver = self;
  v3.super_class = SCNMTLComputePipeline;
  return [(SCNMTLComputePipeline *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLComputePipeline;
  [(SCNMTLComputePipeline *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
}

- (void)setState:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 8);
  }
}

- (void)setComputeFunction:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 16);
  }
}

@end