@interface HKCFGNonTerminal
@end

@implementation HKCFGNonTerminal

uint64_t __55___HKCFGNonTerminal__tryNodesWithContext_solutionTest___block_invoke(uint64_t a1)
{
  v2 = +[_HKCFGNonTerminalNode nodeWithChildren:rule:rangeOfString:](_HKCFGNonTerminalNode, "nodeWithChildren:rule:rangeOfString:", *(a1 + 40), *(a1 + 48), *(a1 + 80), [*(a1 + 32) scanLocation] - *(a1 + 80));
  [*(a1 + 56) addObject:v2];
  *(*(*(a1 + 72) + 8) + 24) = (*(*(a1 + 64) + 16))();
  v3 = *(*(*(a1 + 72) + 8) + 24);

  return v3;
}

uint64_t __72___HKCFGNonTerminal__tryNodesForExpressions_nodes_context_solutionTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) _tryNodesForExpressions:*(a1 + 48) nodes:*(a1 + 32) context:*(a1 + 56) solutionTest:*(a1 + 64)];
  [*(a1 + 32) removeObject:v4];

  return *(*(*(a1 + 72) + 8) + 24);
}

uint64_t __43___HKCFGNonTerminal__parseTreeWithContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) scanner];
  v6 = [v5 isAtEnd];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v6;
}

@end