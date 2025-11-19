@interface VSTrie
- (VSTrie)init;
- (id)objectsMatchingPrefix:(id)a3;
- (void)insertString:(id)a3 withAssociatedObject:(id)a4;
@end

@implementation VSTrie

- (VSTrie)init
{
  v6.receiver = self;
  v6.super_class = VSTrie;
  v2 = [(VSTrie *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSTrieNode);
    root = v2->_root;
    v2->_root = v3;
  }

  return v2;
}

- (void)insertString:(id)a3 withAssociatedObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = [(VSTrie *)self root];
  v8 = [v6 length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__VSTrie_insertString_withAssociatedObject___block_invoke;
  v10[3] = &unk_278B73C20;
  v10[4] = &v11;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v10}];
  v9 = [v12[5] objects];
  [v9 addObject:v7];

  _Block_object_dispose(&v11, 8);
}

void __44__VSTrie_insertString_withAssociatedObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The substring parameter must not be nil."];
  }

  v9 = v3;
  v4 = [*(*(*(a1 + 32) + 8) + 40) next];
  v5 = [v4 objectForKey:v9];

  if (!v5)
  {
    v5 = objc_alloc_init(VSTrieNode);
    v6 = [*(*(*(a1 + 32) + 8) + 40) next];
    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The nextNode parameter must not be nil."];
    }

    [v6 setObject:v5 forKey:v9];
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (id)objectsMatchingPrefix:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = [(VSTrie *)self root];
  v5 = [v4 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__VSTrie_objectsMatchingPrefix___block_invoke;
  v9[3] = &unk_278B73C20;
  v9[4] = &v10;
  [v4 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v9}];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v11[5];
  if (v7)
  {
    VSTrieWalkNodes(v7, v6);
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __32__VSTrie_objectsMatchingPrefix___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7)
{
  v15 = a2;
  v9 = [*(*(*(a1 + 32) + 8) + 40) next];
  v10 = v15;
  v11 = v9;
  if (!v15)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The substring parameter must not be nil."];
    v10 = 0;
  }

  v12 = [v11 objectForKey:v10];
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  *a7 = *(*(*(a1 + 32) + 8) + 40) == 0;
}

@end