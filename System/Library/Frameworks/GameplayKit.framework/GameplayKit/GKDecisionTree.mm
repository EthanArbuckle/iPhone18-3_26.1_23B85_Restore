@interface GKDecisionTree
- (BOOL)exportToURL:(NSURL *)url error:(NSError *)error;
- (GKDecisionTree)init;
- (GKDecisionTree)initWithAttribute:(id)attribute;
- (GKDecisionTree)initWithCoder:(id)coder;
- (GKDecisionTree)initWithExamples:(id)examples actions:(id)actions attributes:(id)attributes maxDepth:(unint64_t)depth minSamplesSplit:(unint64_t)split;
- (GKDecisionTree)initWithURL:(NSURL *)url error:(NSError *)error;
- (id)description;
- (id)findAccuracyWithExamples:(id)examples actions:(id)actions attributes:(id)attributes;
- (id)findActionForAnswers:(NSDictionary *)answers;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKDecisionTree

- (GKDecisionTree)init
{
  v3.receiver = self;
  v3.super_class = GKDecisionTree;
  if ([(GKDecisionTree *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (GKDecisionTree)initWithAttribute:(id)attribute
{
  v5 = attribute;
  v6 = [(GKDecisionTree *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_decisionTree->var0 + 6, attribute);
    v8 = [[GKDecisionNode alloc] initWithNode:v7->_decisionTree->var0 tree:v7];
    [(GKDecisionTree *)v7 setRootNode:v8];

    v7->_isInduced = 0;
  }

  return v7;
}

- (GKDecisionTree)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([(GKDecisionTree *)self init])
  {
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  randomSource = [(GKDecisionTree *)self randomSource];
  [coderCopy encodeObject:randomSource forKey:@"rand"];

  v5 = GKCDecisionTree::encodeWithCoder(self->_decisionTree, 0, 0, 0, 0);
  [coderCopy encodeObject:v5 forKey:@"tree"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInduced];
  [coderCopy encodeObject:v6 forKey:@"induced"];
}

- (void)dealloc
{
  [(GKDecisionTree *)self setRootNode:0];
  decisionTree = self->_decisionTree;
  if (decisionTree)
  {
    if (decisionTree->var0)
    {
      GKCDecisionNode::~GKCDecisionNode(decisionTree->var0);
      MEMORY[0x23EE6C500]();
    }

    decisionTree->var0 = 0;
    decisionTree->var1 = 0;
    MEMORY[0x23EE6C500](decisionTree, 0x20C40A4A59CD2);
  }

  v4.receiver = self;
  v4.super_class = GKDecisionTree;
  [(GKDecisionTree *)&v4 dealloc];
}

- (GKDecisionTree)initWithExamples:(id)examples actions:(id)actions attributes:(id)attributes maxDepth:(unint64_t)depth minSamplesSplit:(unint64_t)split
{
  v45 = *MEMORY[0x277D85DE8];
  examplesCopy = examples;
  actionsCopy = actions;
  attributesCopy = attributes;
  v11 = [(GKDecisionTree *)self init];
  v12 = v11;
  if (v11)
  {
    decisionTree = v11->_decisionTree;
    if (decisionTree)
    {
      if (decisionTree->var0)
      {
        v14 = [examplesCopy count];
        if (v14 != [actionsCopy count])
        {
          NSLog(&cfstr_Gkdecisiontree_4.isa, [actionsCopy count], objc_msgSend(examplesCopy, "count"));
          operator new();
        }

        firstObject = [examplesCopy firstObject];
        v16 = [firstObject count];
        v17 = [(NSArray *)attributesCopy count];

        if (v16 != v17)
        {
          v32 = [(NSArray *)attributesCopy count];
          firstObject2 = [examplesCopy firstObject];
          NSLog(&cfstr_Gkdecisiontree_5.isa, v32, [firstObject2 count]);

          operator new();
        }

        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(examplesCopy, "count")}];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v19 = actionsCopy;
        v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v20)
        {
          LODWORD(v21) = 0;
          v22 = *v41;
          do
          {
            v23 = 0;
            v21 = v21;
            do
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v40 + 1) + 8 * v23);
              v25 = [examplesCopy objectAtIndexedSubscript:v21];
              v26 = [v25 arrayByAddingObject:v24];
              [(NSArray *)v18 addObject:v26];

              ++v21;
              ++v23;
            }

            while (v20 != v23);
            v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v20);
        }

        if (depth)
        {
          depthCopy = depth;
        }

        else
        {
          depthCopy = 1000000000;
        }

        GKCDecisionTree::cartTreeGrowth(v12->_decisionTree, v18, attributesCopy, v12->_decisionTree->var0, depthCopy, split);
        if (!split && depthCopy == 1000000000)
        {
          v28 = objc_alloc(MEMORY[0x277CBFF00]);
          v29 = GKCDecisionTree::encodeWithCoder(v12->_decisionTree, 0, 0, 0, 0);
          v30 = [v28 _initWithFlattenedTree:v29];
          mlkitDecisionTree = v12->mlkitDecisionTree;
          v12->mlkitDecisionTree = v30;

          v12->_isInduced = 1;
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v12;
}

- (GKDecisionTree)initWithURL:(NSURL *)url error:(NSError *)error
{
  v6 = url;
  v7 = error;
  v18 = v7;
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v6 options:2 error:&v18];
  v9 = v18;

  v17 = v9;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v17];
  v11 = v17;

  if (v11 || !v8)
  {
    v12 = objc_alloc_init(GKDecisionTree);

    v12->_isInduced = 1;
    v13 = objc_alloc_init(MEMORY[0x277CBFF00]);
    mlkitDecisionTree = v12->mlkitDecisionTree;
    v12->mlkitDecisionTree = v13;

    [(MLGKDecisionTree *)v12->mlkitDecisionTree _loadModelAssetWithModelAtPath:v6 withError:v11];
  }

  else
  {
    v12 = v10;
  }

  v15 = v12;

  return v15;
}

- (BOOL)exportToURL:(NSURL *)url error:(NSError *)error
{
  v6 = url;
  v7 = error;
  if (self->_isInduced)
  {
    v8 = [(MLGKDecisionTree *)self->mlkitDecisionTree _saveModelAssetWithModelToPath:v6 withError:v7];
  }

  else
  {
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v12 = v7;
    v8 = [v9 writeToURL:v6 options:1 error:&v12];
    v10 = v12;

    v7 = v10;
  }

  return v8;
}

- (id)findActionForAnswers:(NSDictionary *)answers
{
  v4 = answers;
  if (self->_isInduced)
  {
    [(MLGKDecisionTree *)self->mlkitDecisionTree _makeInferenceFromAnswers:v4 withError:0];
  }

  else
  {
    GKCDecisionTree::findActionForAnswers(self->_decisionTree, v4);
  }
  v5 = ;

  return v5;
}

- (id)findAccuracyWithExamples:(id)examples actions:(id)actions attributes:(id)attributes
{
  v44 = *MEMORY[0x277D85DE8];
  examplesCopy = examples;
  actionsCopy = actions;
  attributesCopy = attributes;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = examplesCopy;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v33 = 0;
    v9 = 0;
    v28 = *v39;
    do
    {
      v10 = 0;
      v31 = v8;
      do
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v32 = v9;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = attributesCopy;
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v14)
        {
          v15 = 0;
          v16 = *v35;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v34 + 1) + 8 * i);
              v19 = [v11 objectAtIndexedSubscript:v15];
              [v12 setObject:v19 forKey:v18];

              ++v15;
            }

            v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v14);
        }

        v20 = [(GKDecisionTree *)self findActionForAnswers:v12];
        v21 = [actionsCopy objectAtIndexedSubscript:v33];
        v22 = [v21 isEqual:v20];

        v9 = v32 + v22;
        ++v33;
        ++v10;
      }

      while (v10 != v31);
      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9 / objc_msgSend(obj, "count")}];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)description
{
  decisionTree = self->_decisionTree;
  if (decisionTree && decisionTree->var0)
  {
    v4 = GKCDecisionTree::printTree(decisionTree, decisionTree->var0, &stru_284B50D70.isa, &stru_284B50D50.isa);
  }

  else
  {
    v4 = &stru_284B50D90;
  }

  return v4;
}

@end