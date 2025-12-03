@interface SCNMTLComputePipeline
- (SCNMTLComputePipeline)init;
- (id)description;
- (void)dealloc;
- (void)setComputeFunction:(void *)function;
- (void)setState:(void *)state;
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

- (void)setState:(void *)state
{
  if (state)
  {
    objc_setProperty_nonatomic(state, newValue, newValue, 8);
  }
}

- (void)setComputeFunction:(void *)function
{
  if (function)
  {
    objc_setProperty_nonatomic(function, newValue, newValue, 16);
  }
}

@end