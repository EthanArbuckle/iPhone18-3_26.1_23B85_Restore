@interface EvaluatorHandleNetworkChange
@end

@implementation EvaluatorHandleNetworkChange

uint64_t __fnpe_EvaluatorHandleNetworkChange_block_invoke(void *a1)
{
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  *(*(a1[4] + 8) + 24) = result;
  *(*(a1[5] + 8) + 24) = *(a1[6] + 24);
  return result;
}

@end