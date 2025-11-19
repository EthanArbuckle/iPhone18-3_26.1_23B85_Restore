@interface LTDisambiguationLinkConfiguration
@end

@implementation LTDisambiguationLinkConfiguration

uint64_t __47___LTDisambiguationLinkConfiguration_edgeTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

BOOL __95___LTDisambiguationLinkConfiguration__unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type] == 1 && objc_msgSend(v3, "targetPhraseIndex") == *(a1 + 32);

  return v4;
}

@end