@interface MPSNDArrayGradientState
- (MPSNDArrayGradientState)initWithSourceCount:(unint64_t)a3;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceGradientIndex:(unint64_t)a4;
- (void)dealloc;
@end

@implementation MPSNDArrayGradientState

- (MPSNDArrayGradientState)initWithSourceCount:(unint64_t)a3
{
  if (a3)
  {
    is_mul_ok(a3, 0x50uLL);
    operator new[]();
  }

  if (MTLReportFailureTypeEnabled())
  {
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    NSStringFromSelector(a2);
    MTLReportFailure();
  }

  return 0;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceGradientIndex:(unint64_t)a4
{
  v4 = [a3 objectAtIndexedSubscript:a4];

  return [v4 descriptor];
}

- (void)dealloc
{
  srcInfo = self->_srcInfo;
  if (srcInfo)
  {
    MEMORY[0x23EE7C8A0](srcInfo, 0x1000C807DEB3277);
  }

  v4.receiver = self;
  v4.super_class = MPSNDArrayGradientState;
  [(MPSState *)&v4 dealloc];
}

@end