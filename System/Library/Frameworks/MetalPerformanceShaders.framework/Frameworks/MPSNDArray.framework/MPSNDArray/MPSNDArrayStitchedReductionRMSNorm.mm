@interface MPSNDArrayStitchedReductionRMSNorm
- (MPSNDArrayStitchedReductionRMSNorm)initWithDevice:(id)device axis:(unint64_t)axis epsilon:(float)epsilon;
- (void)setEpsilon:(float)epsilon;
@end

@implementation MPSNDArrayStitchedReductionRMSNorm

- (MPSNDArrayStitchedReductionRMSNorm)initWithDevice:(id)device axis:(unint64_t)axis epsilon:(float)epsilon
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__MPSNDArrayStitchedReductionRMSNorm_initWithDevice_axis_epsilon___block_invoke_4;
  v7[3] = &__block_descriptor_36_e99_v40__0_v8__MPSKernelUserDAGNode______16__MPSKernelUserDAGNode______24__MPSKernelUserDAGNode______32l;
  epsilonCopy = epsilon;
  v6.receiver = self;
  v6.super_class = MPSNDArrayStitchedReductionRMSNorm;
  return [(MPSNDArrayStitchedReduction *)&v6 initWithDevice:device axis:axis descriptor:[[MPSNDArrayStitchedReductionDescriptor alloc] initWithStateSize:4 invariantValueFn:&__block_literal_global_52 mapFn:&__block_literal_global_54 reduceFn:&__block_literal_global_56 writeFn:v7]];
}

uint64_t __66__MPSNDArrayStitchedReductionRMSNorm_initWithDevice_axis_epsilon___block_invoke(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0.0, 268435488);
  MPSKernelUserDAG::constantOp(this, 0, 536870944);

  return MPSKernelUserDAG::assignStateFromValueCoord();
}

uint64_t __66__MPSNDArrayStitchedReductionRMSNorm_initWithDevice_axis_epsilon___block_invoke_2(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::toValueCoord();
  MPSKernelUserDAG::multiplication();

  return MPSKernelUserDAG::assignStateFromValueCoord();
}

uint64_t __66__MPSNDArrayStitchedReductionRMSNorm_initWithDevice_axis_epsilon___block_invoke_3(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::readStateFromReference();
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::addition();

  return MPSKernelUserDAG::assignStateFromValueCoord();
}

uint64_t __66__MPSNDArrayStitchedReductionRMSNorm_initWithDevice_axis_epsilon___block_invoke_4(uint64_t a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::toValueCoord();
  MPSKernelUserDAG::division();
  MPSKernelUserDAG::constantOp(this, *(a1 + 32), 268435488);
  MPSKernelUserDAG::addition();
  MPSKernelUserDAG::reverseSquareRoot();
  MPSKernelUserDAG::toValueCoord();
  v4 = MPSKernelUserDAG::multiplication();

  return MEMORY[0x282124178](this, v4, 268435488);
}

- (void)setEpsilon:(float)epsilon
{
  if (self->_epsilon != epsilon)
  {
    v7 = v3;
    v8 = v4;
    self->_epsilon = epsilon;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__MPSNDArrayStitchedReductionRMSNorm_setEpsilon___block_invoke;
    v5[3] = &__block_descriptor_36_e99_v40__0_v8__MPSKernelUserDAGNode______16__MPSKernelUserDAGNode______24__MPSKernelUserDAGNode______32l;
    epsilonCopy = epsilon;
    [(MPSNDArrayStitchedReduction *)self setWriteFn:v5];
  }
}

uint64_t __49__MPSNDArrayStitchedReductionRMSNorm_setEpsilon___block_invoke(uint64_t a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::toValueCoord();
  MPSKernelUserDAG::division();
  MPSKernelUserDAG::constantOp(this, *(a1 + 32), 268435488);
  MPSKernelUserDAG::addition();
  MPSKernelUserDAG::reverseSquareRoot();
  MPSKernelUserDAG::toValueCoord();
  v4 = MPSKernelUserDAG::multiplication();

  return MEMORY[0x282124178](this, v4, 268435488);
}

@end