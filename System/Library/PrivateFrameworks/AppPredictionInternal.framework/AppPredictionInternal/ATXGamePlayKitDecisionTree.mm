@interface ATXGamePlayKitDecisionTree
+ (void)configureKeyedArchiver:(id)a3;
+ (void)configureKeyedUnarchiver:(id)a3;
- (ATXGamePlayKitDecisionTree)init;
- (ATXGamePlayKitDecisionTree)initWithAttribute:(id)a3;
- (ATXGamePlayKitDecisionTree)initWithCoder:(id)a3;
- (ATXGamePlayKitDecisionTree)initWithExamples:(id)a3 actions:(id)a4 attributes:(id)a5 maxDepth:(unint64_t)a6 minSamplesSplit:(unint64_t)a7 ratioForLeafNodeDecision:(double)a8;
- (ATXGamePlayKitDecisionTree)initWithURL:(id)a3 error:(id)a4;
- (BOOL)exportToURL:(id)a3 error:(id)a4;
- (id).cxx_construct;
- (id)description;
- (id)findAccuracyWithExamples:(id)a3 actions:(id)a4 attributes:(id)a5;
- (id)findActionForAnswers:(id)a3;
- (id)getFlattenedTree;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (ATXGamePlayKitDecisionTree)initWithAttribute:(id)a3
{
  v5 = a3;
  v6 = [(ATXGamePlayKitDecisionTree *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((*v6->_decisionTree.__ptr_ + 56), a3);
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

+ (void)configureKeyedArchiver:(id)a3
{
  v3 = a3;
  [v3 setClassName:@"GKDecisionTree" forClass:NSClassFromString(&cfstr_Atxgameplaykit_3.isa)];
  [v3 setClassName:@"GKRandomSource" forClass:NSClassFromString(&cfstr_Atxgameplaykit_4.isa)];
  [v3 setClassName:@"GKRandomDistribution" forClass:NSClassFromString(&cfstr_Atxgameplaykit_5.isa)];
  [v3 setClassName:@"GKARC4RandomSource" forClass:NSClassFromString(&cfstr_Atxgameplaykit_6.isa)];
  [v3 setClassName:@"GKSystemArc4RandomSource" forClass:NSClassFromString(&cfstr_Atxgameplaykit_7.isa)];
}

+ (void)configureKeyedUnarchiver:(id)a3
{
  v3 = a3;
  [v3 setClass:NSClassFromString(&cfstr_Atxgameplaykit_3.isa) forClassName:@"GKDecisionTree"];
  [v3 setClass:NSClassFromString(&cfstr_Atxgameplaykit_4.isa) forClassName:@"GKRandomSource"];
  [v3 setClass:NSClassFromString(&cfstr_Atxgameplaykit_5.isa) forClassName:@"GKRandomDistribution"];
  [v3 setClass:NSClassFromString(&cfstr_Atxgameplaykit_6.isa) forClassName:@"GKARC4RandomSource"];
  [v3 setClass:NSClassFromString(&cfstr_Atxgameplaykit_7.isa) forClassName:@"GKSystemArc4RandomSource"];
}

- (ATXGamePlayKitDecisionTree)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ATXGamePlayKitDecisionTree *)self init])
  {
    _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXGamePlayKitDecisionTree *)self randomSource];
  [v4 encodeObject:v5 forKey:@"rand"];

  ptr = self->_decisionTree.__ptr_;
  v9 = 0;
  v10 = 0;
  v7 = ATXGamePlayKitCDecisionTree::encodeWithCoder(ptr, &v9, 0, 0, 0);
  [v4 encodeObject:v7 forKey:@"tree"];

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInduced];
  [v4 encodeObject:v8 forKey:@"induced"];
}

- (void)dealloc
{
  [(ATXGamePlayKitDecisionTree *)self setRootNode:0];
  v3.receiver = self;
  v3.super_class = ATXGamePlayKitDecisionTree;
  [(ATXGamePlayKitDecisionTree *)&v3 dealloc];
}

- (ATXGamePlayKitDecisionTree)initWithExamples:(id)a3 actions:(id)a4 attributes:(id)a5 maxDepth:(unint64_t)a6 minSamplesSplit:(unint64_t)a7 ratioForLeafNodeDecision:(double)a8
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v44 = a4;
  v43 = a5;
  v13 = [(ATXGamePlayKitDecisionTree *)self init];
  v14 = v13;
  if (v13)
  {
    ptr = v13->_decisionTree.__ptr_;
    if (ptr)
    {
      if (*ptr)
      {
        v16 = [v12 count];
        if (v16 != [v44 count])
        {
          NSLog(&cfstr_Atxgameplaykit_9.isa, [v44 count], objc_msgSend(v12, "count"));
          _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v17 = [v12 firstObject];
        v18 = [v17 count];
        v19 = [v43 count];

        if (v18 != v19)
        {
          v37 = [v43 count];
          v38 = [v12 firstObject];
          NSLog(&cfstr_Atxgameplaykit_10.isa, v37, [v38 count]);

          _ZNSt3__115allocate_sharedB8ne200100I27ATXGamePlayKitCDecisionTreeNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v21 = v44;
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
              v27 = [v12 objectAtIndexedSubscript:v23];
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

        if (a6)
        {
          v29 = a6;
        }

        else
        {
          v29 = 1000000000;
        }

        v30 = v14->_decisionTree.__ptr_;
        v31 = *(v30 + 1);
        v47 = *v30;
        v48 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ATXGamePlayKitCDecisionTree::cartTreeGrowth(v30, v20, v43, &v47, v29, a7, a8);
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        if (!a7 && v29 == 1000000000)
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

- (ATXGamePlayKitDecisionTree)initWithURL:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v19 = v7;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v6 options:2 error:&v19];
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

    [(MLGKDecisionTree *)v13->mlkitDecisionTree _loadModelAssetWithModelAtPath:v6 withError:v12];
  }

  else
  {
    v13 = v11;
  }

  v16 = v13;

  objc_autoreleasePoolPop(v8);
  return v16;
}

- (BOOL)exportToURL:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (self->_isInduced)
  {
    v9 = [(MLGKDecisionTree *)self->mlkitDecisionTree _saveModelAssetWithModelToPath:v6 withError:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v13 = v7;
    v9 = [v10 writeToURL:v6 options:1 error:&v13];
    v11 = v13;

    v7 = v11;
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

- (id)findActionForAnswers:(id)a3
{
  v4 = a3;
  if (self->_isInduced)
  {
    v5 = objc_opt_new();
    v6 = [(MLGKDecisionTree *)self->mlkitDecisionTree _makeInferenceFromAnswers:v4 withError:v5];
  }

  else
  {
    v6 = ATXGamePlayKitCDecisionTree::findActionForAnswers(self->_decisionTree.__ptr_, v4);
  }

  return v6;
}

- (id)findAccuracyWithExamples:(id)a3 actions:(id)a4 attributes:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = a4;
  v31 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v7;
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
        v13 = v31;
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
        v21 = [v30 objectAtIndexedSubscript:v34];
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