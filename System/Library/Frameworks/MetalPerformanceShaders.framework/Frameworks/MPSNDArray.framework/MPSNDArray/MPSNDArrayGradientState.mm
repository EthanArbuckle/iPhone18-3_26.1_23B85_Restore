@interface MPSNDArrayGradientState
- (MPSNDArrayGradientState)initWithSourceCount:(unint64_t)count;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceGradientIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation MPSNDArrayGradientState

- (MPSNDArrayGradientState)initWithSourceCount:(unint64_t)count
{
  if (count)
  {
    is_mul_ok(count, 0x50uLL);
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

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceGradientIndex:(unint64_t)index
{
  v4 = [arrays objectAtIndexedSubscript:index];

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