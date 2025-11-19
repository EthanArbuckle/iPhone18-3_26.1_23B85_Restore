@interface MPSNNMultiaryGradientState
- (MPSNNMultiaryGradientState)initWithSourceCount:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MPSNNMultiaryGradientState

- (MPSNNMultiaryGradientState)initWithSourceCount:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = MPSNNMultiaryGradientState;
  v4 = [(MPSState *)&v6 initWithResource:0];
  if (v4)
  {
    v4->_srcCount = a3;
    is_mul_ok(a3, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  srcInfo = self->_srcInfo;
  if (srcInfo)
  {
    MEMORY[0x23EE7D120](srcInfo, 0x1000C80565EDBD2);
  }

  free(self->_srcSizes);

  v4.receiver = self;
  v4.super_class = MPSNNMultiaryGradientState;
  [(MPSState *)&v4 dealloc];
}

@end