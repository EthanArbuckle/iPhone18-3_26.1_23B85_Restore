@interface GKDecisionNode
- (GKDecisionNode)createBranchWithPredicate:(NSPredicate *)predicate attribute:(id)attribute;
- (GKDecisionNode)createBranchWithValue:(NSNumber *)value attribute:(id)attribute;
- (GKDecisionNode)createBranchWithWeight:(NSInteger)weight attribute:(id)attribute;
- (GKDecisionNode)initWithNode:(void *)node tree:(id)tree;
- (id)attribute;
- (id)branches;
- (id)createChildWithAttribute:(id)attribute randomSource:(id)source withBranch:(id)branch;
- (id)getNodeAtBranch:(id)branch;
- (void)dealloc;
- (void)setAttribute:(id)attribute;
@end

@implementation GKDecisionNode

- (GKDecisionNode)initWithNode:(void *)node tree:(id)tree
{
  treeCopy = tree;
  v10.receiver = self;
  v10.super_class = GKDecisionNode;
  v7 = [(GKDecisionNode *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_node = node;
    objc_storeStrong(node + 10, v7);
    objc_storeWeak(&v8->_tree, treeCopy);
  }

  return v8;
}

- (void)dealloc
{
  self->_node = 0;
  objc_storeWeak(&self->_tree, 0);
  v3.receiver = self;
  v3.super_class = GKDecisionNode;
  [(GKDecisionNode *)&v3 dealloc];
}

- (id)branches
{
  node = self->_node;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = *node;
  v5 = node[1];
  while (v4 != v5)
  {
    if (*v4)
    {
      [v3 addObject:?];
    }

    v4 += 2;
  }

  return v3;
}

- (void)setAttribute:(id)attribute
{
  attributeCopy = attribute;
  node = self->_node;
  if (node)
  {
    v7 = attributeCopy;
    objc_storeStrong(node + 6, attribute);
    attributeCopy = v7;
  }
}

- (id)attribute
{
  node = self->_node;
  if (node)
  {
    v4 = node[6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createChildWithAttribute:(id)attribute randomSource:(id)source withBranch:(id)branch
{
  attributeCopy = attribute;
  sourceCopy = source;
  branchCopy = branch;
  node = self->_node;
  if (!node)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"GKDecisionTree: Cannot create new child with branch: %@ and attribute: %@ from nil node.", branchCopy, attributeCopy];
    v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v37);
  }

  if (node[1] != *node)
  {
    [**node superclass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"GKDecisionTree: Cannot create child for node type: %@, with branch: %@", objc_msgSend(**self->_node, "superclass"), branchCopy];
      v38 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v38);
    }

    node = self->_node;
    v13 = node[8];
    if (!sourceCopy && v13)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"GKDecisionTree: Cannot create child for random node type with branch: %@", branchCopy];
      v39 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v39);
    }

    if (sourceCopy && !v13)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"GKDecisionTree: Cannot create child for node type: %@ with random branch", objc_msgSend(**node, "superclass")];
      v40 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v40);
    }
  }

  if (sourceCopy)
  {
    if (node[8])
    {
      v14 = [GKRandomDistribution alloc];
      highestValue = [*(self->_node + 8) highestValue];
      integerValue = [branchCopy integerValue] + highestValue;
    }

    else
    {
      v14 = [GKRandomDistribution alloc];
      integerValue = [branchCopy integerValue];
    }

    v24 = [(GKRandomDistribution *)v14 initWithRandomSource:sourceCopy lowestValue:0 highestValue:integerValue];
    v25 = self->_node;
    v26 = v25[8];
    v25[8] = v24;

    operator new();
  }

  v18 = node;
  v17 = *node;
  if (v18[1] == v17)
  {
    goto LABEL_19;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    v22 = [branchCopy isEqual:v17[v19]];
    v23 = self->_node;
    v17 = *v23;
    if (v22)
    {
      v21 = v17[v19 + 1];
    }

    ++v20;
    v19 += 2;
  }

  while (v20 < (v23[1] - v17) >> 4);
  if (!v21)
  {
LABEL_19:
    operator new();
  }

  objc_storeStrong(v21 + 6, attribute);
  v27 = self->_node;
  v28 = branchCopy;
  *&v41 = v28;
  *(&v41 + 1) = v21;
  v29 = v27[1];
  if (v29 >= v27[2])
  {
    v32 = std::vector<std::pair<objc_object * {__strong},GKCDecisionNode *>>::__emplace_back_slow_path<std::pair<objc_object * {__strong},GKCDecisionNode *>>(v27, &v41);
    v31 = v41;
  }

  else
  {
    v30 = v28;
    v31 = 0;
    *&v41 = 0;
    v32 = v29 + 2;
    *v29 = v30;
    v29[1] = v21;
  }

  v27[1] = v32;

  v33 = [GKDecisionNode alloc];
  WeakRetained = objc_loadWeakRetained(&self->_tree);
  v35 = [(GKDecisionNode *)v33 initWithNode:v21 tree:WeakRetained];

  return v35;
}

- (GKDecisionNode)createBranchWithValue:(NSNumber *)value attribute:(id)attribute
{
  v4 = [(GKDecisionNode *)self createChildWithAttribute:attribute randomSource:0 withBranch:value];

  return v4;
}

- (GKDecisionNode)createBranchWithPredicate:(NSPredicate *)predicate attribute:(id)attribute
{
  v4 = [(GKDecisionNode *)self createChildWithAttribute:attribute randomSource:0 withBranch:predicate];

  return v4;
}

- (GKDecisionNode)createBranchWithWeight:(NSInteger)weight attribute:(id)attribute
{
  v6 = attribute;
  WeakRetained = objc_loadWeakRetained(&self->_tree);
  randomSource = [WeakRetained randomSource];

  if (!randomSource)
  {
    v9 = +[GKRandomSource sharedRandom];
    v10 = objc_loadWeakRetained(&self->_tree);
    [v10 setRandomSource:v9];
  }

  v11 = objc_loadWeakRetained(&self->_tree);
  randomSource2 = [v11 randomSource];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:weight];
  v14 = [(GKDecisionNode *)self createChildWithAttribute:v6 randomSource:randomSource2 withBranch:v13];

  return v14;
}

- (id)getNodeAtBranch:(id)branch
{
  branchCopy = branch;
  node = self->_node;
  v6 = *node;
  v7 = node[1];
  if (*node == v7)
  {
LABEL_4:
    v8 = 0;
  }

  else
  {
    while (![*v6 isEqual:branchCopy])
    {
      v6 += 16;
      if (v6 == v7)
      {
        goto LABEL_4;
      }
    }

    v9 = *(*(v6 + 8) + 80);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v10 = [GKDecisionNode alloc];
      v11 = *(v6 + 8);
      WeakRetained = objc_loadWeakRetained(&self->_tree);
      v8 = [(GKDecisionNode *)v10 initWithNode:v11 tree:WeakRetained];
    }
  }

  return v8;
}

@end