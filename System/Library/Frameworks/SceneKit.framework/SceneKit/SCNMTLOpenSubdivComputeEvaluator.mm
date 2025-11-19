@interface SCNMTLOpenSubdivComputeEvaluator
- (uint64_t)computeEvaluator;
- (void)dealloc;
@end

@implementation SCNMTLOpenSubdivComputeEvaluator

- (void)dealloc
{
  computeEvaluator = self->_computeEvaluator;
  if (computeEvaluator)
  {
    OpenSubdiv::v3_1_1::Osd::MTLLegacyGregoryPatchTable::~MTLLegacyGregoryPatchTable(computeEvaluator);
    MEMORY[0x21CF07610]();
  }

  v4.receiver = self;
  v4.super_class = SCNMTLOpenSubdivComputeEvaluator;
  [(SCNMTLOpenSubdivComputeEvaluator *)&v4 dealloc];
}

- (uint64_t)computeEvaluator
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end