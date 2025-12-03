@interface ATXGamePlayKitDecisionTree
+ (void)configureKeyedArchiver:(id)archiver;
+ (void)configureKeyedUnarchiver:(id)unarchiver;
- (ATXGamePlayKitDecisionTree)init;
- (ATXGamePlayKitDecisionTree)initWithAttribute:(id)attribute;
- (ATXGamePlayKitDecisionTree)initWithCoder:(id)coder;
- (ATXGamePlayKitDecisionTree)initWithExamples:(id)examples actions:(id)actions attributes:(id)attributes maxDepth:(unint64_t)depth minSamplesSplit:(unint64_t)split ratioForLeafNodeDecision:(double)decision;
- (ATXGamePlayKitDecisionTree)initWithURL:(id)l error:(id)error;
- (BOOL)exportToURL:(id)l error:(id)error;
- (id).cxx_construct;
- (id)description;
- (id)findAccuracyWithExamples:(id)examples actions:(id)actions attributes:(id)attributes;
- (id)findActionForAnswers:(id)answers;
- (id)getFlattenedTree;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXGamePlayKitDecisionTree

- (ATXGamePlayKitDecisionTree)init
{
  v3.receiver = self;
  v3.super_class = ATXGamePlayKitDecisionTree;
  if ([(ATXGamePlayKitDecisionTree *)&v3 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

- (ATXGamePlayKitDecisionTree)initWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  v6 = [(ATXGamePlayKitDecisionTree *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((*v6->_decisionTree.__ptr_ + 56), attribute);
    v8 = [ATXGamePlayKitDecisionNode alloc];
    ptr = v7->_decisionTree.__ptr_;
    v11 = *ptr;
    v10 = *(ptr + 1);
    v14 = v11;
    v15 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = [(ATXGamePlayKitDecisionNode *)v8 initWithNode:&v14 tree:v7];
    [(ATXGamePlayKitDecisionTree *)v7 setRootNode:v12, v14];

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v7->_isInduced = 0;
  }

  return v7;
}

+ (void)configureKeyedArchiver:(id)archiver
{
  archiverCopy = archiver;
  [archiverCopy setClassName:@"GKDecisionTree" forClass:NSClassFromString(&cfstr_Atxgameplaykit_3.isa)];
  [archiverCopy setClassName:@"GKRandomSource" forClass:NSClassFromString(&cfstr_Atxgameplaykit_4.isa)];
  [archiverCopy setClassName:@"GKRandomDistribution" forClass:NSClassFromString(&cfstr_Atxgameplaykit_5.isa)];
  [archiverCopy setClassName:@"GKARC4RandomSource" forClass:NSClassFromString(&cfstr_Atxgameplaykit_6.isa)];
  [archiverCopy setClassName:@"GKSystemArc4RandomSource" forClass:NSClassFromString(&cfstr_Atxgameplaykit_7.isa)];
}

+ (void)configureKeyedUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  [unarchiverCopy setClass:NSClassFromString(&cfstr_Atxgameplaykit_3.isa) forClassName:@"GKDecisionTree"];
  [unarchiverCopy setClass:NSClassFromString(&cfstr_Atxgameplaykit_4.isa) forClassName:@"GKRandomSource"];
  [unarchiverCopy setClass:NSClassFromString(&cfstr_Atxgameplaykit_5.isa) forClassName:@"GKRandomDistribution"];
  [unarchiverCopy setClass:NSClassFromString(&cfstr_Atxgameplaykit_6.isa) forClassName:@"GKARC4RandomSource"];
  [unarchiverCopy setClass:NSClassFromString(&cfstr_Atxgameplaykit_7.isa) forClassName:@"GKSystemArc4RandomSource"];
}

- (ATXGamePlayKitDecisionTree)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([(ATXGamePlayKitDecisionTree *)self init])
  {
    _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  randomSource = [(ATXGamePlayKitDecisionTree *)self randomSource];
  [coderCopy encodeObject:randomSource forKey:@"rand"];

  ptr = self->_decisionTree.__ptr_;
  v9 = 0;
  v10 = 0;
  v7 = ATXGamePlayKitCDecisionTree::encodeWithCoder(ptr, &v9, 0, 0, 0);
  [coderCopy encodeObject:v7 forKey:@"tree"];

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInduced];
  [coderCopy encodeObject:v8 forKey:@"induced"];
}

- (void)dealloc
{
  [(ATXGamePlayKitDecisionTree *)self setRootNode:0];
  v3.receiver = self;
  v3.super_class = ATXGamePlayKitDecisionTree;
  [(ATXGamePlayKitDecisionTree *)&v3 dealloc];
}

- (ATXGamePlayKitDecisionTree)initWithExamples:(id)examples actions:(id)actions attributes:(id)attributes maxDepth:(unint64_t)depth minSamplesSplit:(unint64_t)split ratioForLeafNodeDecision:(double)decision
{
  v54 = *MEMORY[0x277D85DE8];
  examplesCopy = examples;
  actionsCopy = actions;
  attributesCopy = attributes;
  v13 = [(ATXGamePlayKitDecisionTree *)self init];
  v14 = v13;
  if (v13)
  {
    ptr = v13->_decisionTree.__ptr_;
    if (ptr)
    {
      if (*ptr)
      {
        v16 = [examplesCopy count];
        if (v16 != [actionsCopy count])
        {
          NSLog(&cfstr_Atxgameplaykit_9.isa, [actionsCopy count], objc_msgSend(examplesCopy, "count"));
          _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        firstObject = [examplesCopy firstObject];
        v18 = [firstObject count];
        v19 = [attributesCopy count];

        if (v18 != v19)
        {
          v37 = [attributesCopy count];
          firstObject2 = [examplesCopy firstObject];
          NSLog(&cfstr_Atxgameplaykit_10.isa, v37, [firstObject2 count]);

          _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(examplesCopy, "count")}];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v21 = actionsCopy;
        v22 = [v21 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v22)
        {
          LODWORD(v23) = 0;
          v24 = *v50;
          do
          {
            v25 = 0;
            v23 = v23;
            do
            {
              if (*v50 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v49 + 1) + 8 * v25);
              v27 = [examplesCopy objectAtIndexedSubscript:v23];
              v28 = [v27 arrayByAddingObject:v26];
              [v20 addObject:v28];

              ++v23;
              ++v25;
            }

            while (v22 != v25);
            v22 = [v21 countByEnumeratingWithState:&v49 objects:v53 count:16];
          }

          while (v22);
        }

        if (depth)
        {
          depthCopy = depth;
        }

        else
        {
          depthCopy = 1000000000;
        }

        v30 = v14->_decisionTree.__ptr_;
        v31 = *(v30 + 1);
        v47 = *v30;
        v48 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ATXGamePlayKitCDecisionTree::cartTreeGrowth(v30, v20, attributesCopy, &v47, depthCopy, split, decision);
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        if (!split && depthCopy == 1000000000)
        {
          v32 = objc_alloc(MEMORY[0x277CBFF08]);
          v33 = v14->_decisionTree.__ptr_;
          v45 = 0;
          v46 = 0;
          v34 = ATXGamePlayKitCDecisionTree::encodeWithCoder(v33, &v45, 0, 0, 0);
          v35 = [v32 _initWithFlattenedTree:v34];
          mlkitDecisionTree = v14->mlkitDecisionTree;
          v14->mlkitDecisionTree = v35;

          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }

          v14->_isInduced = 1;
        }
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v14;
}

- (ATXGamePlayKitDecisionTree)initWithURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  v19 = errorCopy;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy options:2 error:&v19];
  v10 = v19;

  v18 = v10;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v18];
  v12 = v18;

  if (v12 || !v9)
  {
    v13 = objc_alloc_init(ATXGamePlayKitDecisionTree);

    v13->_isInduced = 1;
    v14 = objc_alloc_init(MEMORY[0x277CBFF08]);
    mlkitDecisionTree = v13->mlkitDecisionTree;
    v13->mlkitDecisionTree = v14;

    [(MLGKDecisionTree *)v13->mlkitDecisionTree _loadModelAssetWithModelAtPath:lCopy withError:v12];
  }

  else
  {
    v13 = v11;
  }

  v16 = v13;

  objc_autoreleasePoolPop(v8);
  return v16;
}

- (BOOL)exportToURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  if (self->_isInduced)
  {
    v9 = [(MLGKDecisionTree *)self->mlkitDecisionTree _saveModelAssetWithModelToPath:lCopy withError:errorCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v13 = errorCopy;
    v9 = [v10 writeToURL:lCopy options:1 error:&v13];
    v11 = v13;

    errorCopy = v11;
  }

  objc_autoreleasePoolPop(v8);

  return v9;
}

- (id)getFlattenedTree
{
  ptr = self->_decisionTree.__ptr_;
  v5 = 0;
  v6 = 0;
  v3 = ATXGamePlayKitCDecisionTree::encodeWithCoder(ptr, &v5, 0, 0, 0);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

- (id)findActionForAnswers:(id)answers
{
  answersCopy = answers;
  if (self->_isInduced)
  {
    v5 = objc_opt_new();
    v6 = [(MLGKDecisionTree *)self->mlkitDecisionTree _makeInferenceFromAnswers:answersCopy withError:v5];
  }

  else
  {
    v6 = ATXGamePlayKitCDecisionTree::findActionForAnswers(self->_decisionTree.__ptr_, answersCopy);
  }

  return v6;
}

- (id)findAccuracyWithExamples:(id)examples actions:(id)actions attributes:(id)attributes
{
  v45 = *MEMORY[0x277D85DE8];
  examplesCopy = examples;
  actionsCopy = actions;
  attributesCopy = attributes;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = examplesCopy;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v34 = 0;
    v9 = 0;
    v29 = *v40;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v33 = v9;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = attributesCopy;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = 0;
          v16 = *v36;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              v19 = [v11 objectAtIndexedSubscript:v15];
              [v12 setObject:v19 forKey:v18];

              ++v15;
            }

            v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v14);
        }

        v20 = [(ATXGamePlayKitDecisionTree *)self findActionForAnswers:v12];
        v21 = [actionsCopy objectAtIndexedSubscript:v34];
        v22 = [v21 isEqual:v20];

        v9 = v33 + v22;
        ++v34;
        ++v10;
      }

      while (v10 != v32);
      v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
    v23 = v9;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:{v23 / (objc_msgSend(obj, "count") + 0.000001)}];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)description
{
  ptr = self->_decisionTree.__ptr_;
  if (ptr && *ptr)
  {
    v3 = *(ptr + 1);
    v6 = *ptr;
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = ATXGamePlayKitCDecisionTree::printTree(ptr, &v6, @"\t", @"-");
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v4 = &stru_2839A6058;
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end