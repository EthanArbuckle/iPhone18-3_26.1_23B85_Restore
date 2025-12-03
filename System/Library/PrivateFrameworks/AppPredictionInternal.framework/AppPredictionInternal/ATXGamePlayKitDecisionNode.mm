@interface ATXGamePlayKitDecisionNode
- (ATXGamePlayKitDecisionNode)initWithNode:(shared_ptr<ATXGamePlayKitCDecisionNode>)node tree:(id)tree;
- (id).cxx_construct;
- (id)attribute;
- (id)createBranchWithPredicate:(id)predicate attribute:(id)attribute;
- (id)createBranchWithValue:(id)value attribute:(id)attribute;
- (id)createBranchWithWeight:(int64_t)weight attribute:(id)attribute;
- (id)createChildWithAttribute:(id)attribute randomSource:(id)source withBranch:(id)branch;
- (id)getNodeAtBranch:(id)branch;
- (void)dealloc;
- (void)setAttribute:(id)attribute;
@end

@implementation ATXGamePlayKitDecisionNode

- (ATXGamePlayKitDecisionNode)initWithNode:(shared_ptr<ATXGamePlayKitCDecisionNode>)node tree:(id)tree
{
  ptr = node.__ptr_;
  v6 = node.__cntrl_;
  v13.receiver = self;
  v13.super_class = ATXGamePlayKitDecisionNode;
  v7 = [(ATXGamePlayKitDecisionNode *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v9 = *ptr;
    v10 = *(ptr + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_node.__cntrl_;
    v8->_node.__ptr_ = v9;
    v8->_node.__cntrl_ = v10;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      v9 = v8->_node.__ptr_;
    }

    objc_storeWeak(v9 + 11, v8);
    objc_storeWeak(&v8->_tree, v6);
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ATXGamePlayKitDecisionNode;
  [(ATXGamePlayKitDecisionNode *)&v2 dealloc];
}

- (void)setAttribute:(id)attribute
{
  attributeCopy = attribute;
  ptr = self->_node.__ptr_;
  if (ptr)
  {
    v7 = attributeCopy;
    objc_storeStrong(ptr + 7, attribute);
    attributeCopy = v7;
  }
}

- (id)attribute
{
  ptr = self->_node.__ptr_;
  if (ptr)
  {
    v4 = *(ptr + 7);
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
  ptr = self->_node.__ptr_;
  if (!ptr)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ATXGamePlayKitDecisionTree: Cannot create new child with branch: %@ and attribute: %@ from nil node.", branchCopy, attributeCopy, sourceCopy, attributeCopy];
    v36 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v36);
  }

  if (*(ptr + 1) != *ptr)
  {
    [**ptr superclass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"ATXGamePlayKitDecisionTree: Cannot create child for node type: %@, with branch: %@", objc_msgSend(**self->_node.__ptr_, "superclass"), branchCopy];
      v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v37);
    }

    ptr = self->_node.__ptr_;
    v13 = *(ptr + 9);
    if (!sourceCopy && v13)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"ATXGamePlayKitDecisionTree: Cannot create child for random node type with branch: %@", branchCopy];
      v38 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v38);
    }

    if (sourceCopy && !v13)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"ATXGamePlayKitDecisionTree: Cannot create child for node type: %@ with random branch", objc_msgSend(**ptr, "superclass")];
      v39 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v39);
    }
  }

  if (sourceCopy)
  {
    if (*(ptr + 9))
    {
      v14 = [ATXGamePlayKitRandomDistribution alloc];
      highestValue = [*(self->_node.__ptr_ + 9) highestValue];
      integerValue = [branchCopy integerValue] + highestValue;
    }

    else
    {
      v14 = [ATXGamePlayKitRandomDistribution alloc];
      integerValue = [branchCopy integerValue];
    }

    v25 = [(ATXGamePlayKitRandomDistribution *)v14 initWithRandomSource:sourceCopy lowestValue:0 highestValue:integerValue];
    v26 = self->_node.__ptr_;
    v27 = *(v26 + 9);
    *(v26 + 9) = v25;

    _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionNodeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v18 = ptr;
  v17 = *ptr;
  if (*(v18 + 1) == v17)
  {
    goto LABEL_24;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    if ([branchCopy isEqual:v17[v19]])
    {
      v23 = *self->_node.__ptr_ + v19 * 8;
      v22 = *(v23 + 8);
      v24 = *(v23 + 16);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v21 = v24;
    }

    ++v20;
    v17 = *self->_node.__ptr_;
    v19 += 3;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(self->_node.__ptr_ + 1) - v17) >> 3) > v20);
  if (!v22)
  {
LABEL_24:
    _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionNodeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  objc_storeStrong(v22 + 7, attribute);
  v28 = self->_node.__ptr_;
  v29 = branchCopy;
  v43 = v22;
  v44 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = v43;
    v30 = v44;
  }

  else
  {
    v30 = 0;
    v31 = v22;
  }

  v42 = 0;
  v45[0] = v29;
  v45[1] = v31;
  v46 = v30;
  v43 = 0;
  v44 = 0;
  std::vector<std::pair<objc_object * {__strong},std::shared_ptr<ATXGamePlayKitCDecisionNode>>>::push_back[abi:ne200100](v28, v45);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v32 = [ATXGamePlayKitDecisionNode alloc];
  v40 = v22;
  v41 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  WeakRetained = objc_loadWeakRetained(&self->_tree);
  v34 = [(ATXGamePlayKitDecisionNode *)v32 initWithNode:&v40 tree:WeakRetained];

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v34;
}

- (id)createBranchWithValue:(id)value attribute:(id)attribute
{
  v4 = [(ATXGamePlayKitDecisionNode *)self createChildWithAttribute:attribute randomSource:0 withBranch:value];

  return v4;
}

- (id)createBranchWithPredicate:(id)predicate attribute:(id)attribute
{
  v4 = [(ATXGamePlayKitDecisionNode *)self createChildWithAttribute:attribute randomSource:0 withBranch:predicate];

  return v4;
}

- (id)createBranchWithWeight:(int64_t)weight attribute:(id)attribute
{
  attributeCopy = attribute;
  WeakRetained = objc_loadWeakRetained(&self->_tree);
  randomSource = [WeakRetained randomSource];

  if (!randomSource)
  {
    v9 = +[ATXGamePlayKitRandomSource sharedRandom];
    v10 = objc_loadWeakRetained(&self->_tree);
    [v10 setRandomSource:v9];
  }

  v11 = objc_loadWeakRetained(&self->_tree);
  randomSource2 = [v11 randomSource];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:weight];
  v14 = [(ATXGamePlayKitDecisionNode *)self createChildWithAttribute:attributeCopy randomSource:randomSource2 withBranch:v13];

  return v14;
}

- (id)getNodeAtBranch:(id)branch
{
  branchCopy = branch;
  ptr = self->_node.__ptr_;
  v7 = *ptr;
  v6 = *(ptr + 1);
  while (1)
  {
    if (v7 == v6)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if ([*v7 isEqual:branchCopy])
    {
      break;
    }

    v7 += 24;
  }

  WeakRetained = objc_loadWeakRetained((*(v7 + 8) + 88));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((*(v7 + 8) + 88));
  }

  else
  {
    v10 = [ATXGamePlayKitDecisionNode alloc];
    v11 = *(v7 + 16);
    v14 = *(v7 + 8);
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = objc_loadWeakRetained(&self->_tree);
    v8 = [(ATXGamePlayKitDecisionNode *)v10 initWithNode:&v14 tree:v12];

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

LABEL_12:

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end