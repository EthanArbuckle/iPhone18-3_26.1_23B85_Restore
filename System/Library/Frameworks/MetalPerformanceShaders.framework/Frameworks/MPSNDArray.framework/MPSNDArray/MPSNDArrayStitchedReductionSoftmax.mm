@interface MPSNDArrayStitchedReductionSoftmax
- (MPSNDArrayStitchedReductionSoftmax)initWithDevice:(id)device axis:(unint64_t)axis;
@end

@implementation MPSNDArrayStitchedReductionSoftmax

- (MPSNDArrayStitchedReductionSoftmax)initWithDevice:(id)device axis:(unint64_t)axis
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayStitchedReductionSoftmax;
  return [(MPSNDArrayStitchedReduction *)&v5 initWithDevice:device axis:axis descriptor:[[MPSNDArrayStitchedReductionDescriptor alloc] initWithStateSize:8 invariantValueFn:&__block_literal_global_1 mapFn:&__block_literal_global_38 reduceFn:&__block_literal_global_40 writeFn:&__block_literal_global_43]];
}

uint64_t __58__MPSNDArrayStitchedReductionSoftmax_initWithDevice_axis___block_invoke(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, -3.4028e38, 268435488);
  MPSKernelUserDAG::constantOp(this, 0.0, 268435488);
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::constantOp(this, 1, 536870944);
  MPSKernelUserDAG::assignStateFromValueCoord();

  return MPSKernelUserDAG::assignStateFromValueCoord();
}

uint64_t __58__MPSNDArrayStitchedReductionSoftmax_initWithDevice_axis___block_invoke_2(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::constantOp(this, 1, 536870944);
  MPSKernelUserDAG::constantOp(this, 1.0, 268435488);
  MPSKernelUserDAG::assignState();

  return MPSKernelUserDAG::assignStateFromValueCoord();
}

uint64_t __58__MPSNDArrayStitchedReductionSoftmax_initWithDevice_axis___block_invoke_3(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 1.0, 268435488);
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::constantOp(this, 1, 536870944);
  MPSKernelUserDAG::readStateFromReference();
  MPSKernelUserDAG::readStateFromReference();
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::greaterThan();
  MPSKernelUserDAG::select();
  MPSKernelUserDAG::select();
  MPSKernelUserDAG::subtraction();
  MPSKernelUserDAG::exp();
  MPSKernelUserDAG::select();
  MPSKernelUserDAG::select();
  MPSKernelUserDAG::multiplication();
  MPSKernelUserDAG::multiplication();
  MPSKernelUserDAG::addition();
  MPSKernelUserDAG::assignStateFromValueCoord();

  return MPSKernelUserDAG::assignStateFromValueCoord();
}

uint64_t __58__MPSNDArrayStitchedReductionSoftmax_initWithDevice_axis___block_invoke_4(int a1, MPSKernelUserDAG *this)
{
  MPSKernelUserDAG::constantOp(this, 0, 536870944);
  MPSKernelUserDAG::constantOp(this, 1, 536870944);
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::readState();
  MPSKernelUserDAG::toValueCoord();
  MPSKernelUserDAG::subtraction();
  MPSKernelUserDAG::exp();
  MPSKernelUserDAG::reciprocal();
  v3 = MPSKernelUserDAG::multiplication();

  return MEMORY[0x282124178](this, v3, 268435488);
}

@end