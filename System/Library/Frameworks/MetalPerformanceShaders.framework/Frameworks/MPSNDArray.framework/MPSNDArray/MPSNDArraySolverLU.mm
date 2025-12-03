@interface MPSNDArraySolverLU
- (MPSNDArraySolverLU)initWithDevice:(id)device sourceCount:(unint64_t)count;
- (void)dealloc;
@end

@implementation MPSNDArraySolverLU

- (MPSNDArraySolverLU)initWithDevice:(id)device sourceCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = MPSNDArraySolverLU;
  v5 = [(MPSNDArrayMultiaryKernel *)&v7 initWithDevice:device sourceCount:count];
  v5->_mslu = [objc_alloc(MEMORY[0x277CD75F0]) initWithDevice:device transpose:0 order:1 numberOfRightHandSides:1];
  v5->super._encode = EncodeSolverLU;
  v5->super.super._encodeData = v5;
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArraySolverLU;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end