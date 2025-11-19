@interface NSSet(AXSSDatabaseManager)
- (id)ax_makeObjectsRespondToSelector:()AXSSDatabaseManager;
@end

@implementation NSSet(AXSSDatabaseManager)

- (id)ax_makeObjectsRespondToSelector:()AXSSDatabaseManager
{
  v5 = [MEMORY[0x1E695DFA8] set];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __62__NSSet_AXSSDatabaseManager__ax_makeObjectsRespondToSelector___block_invoke;
  v12 = &unk_1E8135E18;
  v13 = v5;
  v14 = a3;
  v6 = v5;
  [a1 enumerateObjectsUsingBlock:&v9];
  v7 = [MEMORY[0x1E695DFD8] setWithSet:{v6, v9, v10, v11, v12}];

  return v7;
}

@end