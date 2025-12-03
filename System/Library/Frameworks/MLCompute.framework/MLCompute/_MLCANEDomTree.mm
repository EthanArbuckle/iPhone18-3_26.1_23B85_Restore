@interface _MLCANEDomTree
+ (id)computeDominationForGraph:(id)graph;
+ (id)computeDominationForGraphImpl:(id)impl;
+ (void)computeDominationForLayer:(id)layer dominationTree:(id)tree;
- (BOOL)doesLayer:(id)layer dominates:(id)dominates;
- (BOOL)doesLayer:(id)layer dominatesSubgraph:(id)subgraph;
- (BOOL)doesSubgraph:(id)subgraph dominatesLayer:(id)layer;
- (BOOL)doesSubgraph:(id)subgraph dominatesSubgraph:(id)dominatesSubgraph;
- (id)getDominanceFrontierForSubgraph:(id)subgraph;
- (id)getPostDominanceFrontierForSubgraph:(id)subgraph;
- (id)initDomTree:(id)tree;
@end

@implementation _MLCANEDomTree

+ (id)computeDominationForGraph:(id)graph
{
  v4 = [_MLCANEDomTree computeDominationForGraphImpl:graph];
  v5 = [[self alloc] initDomTree:v4];

  return v5;
}

- (BOOL)doesLayer:(id)layer dominates:(id)dominates
{
  layerCopy = layer;
  if (layerCopy == dominates)
  {
    v11 = 1;
  }

  else
  {
    dominatesCopy = dominates;
    dominationTree = [(_MLCANEDomTree *)self dominationTree];
    v9 = [dominatesCopy key];

    v10 = [dominationTree objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 containsObject:layerCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)doesLayer:(id)layer dominatesSubgraph:(id)subgraph
{
  v20 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  subgraphCopy = subgraph;
  v8 = [subgraphCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(subgraphCopy);
        }

        if ([(_MLCANEDomTree *)self doesLayer:layerCopy dominates:*(*(&v15 + 1) + 8 * i), v15])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [subgraphCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)doesSubgraph:(id)subgraph dominatesLayer:(id)layer
{
  v21 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  layerCopy = layer;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = subgraphCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([(_MLCANEDomTree *)self doesLayer:*(*(&v16 + 1) + 8 * i) dominates:layerCopy, v16])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)doesSubgraph:(id)subgraph dominatesSubgraph:(id)dominatesSubgraph
{
  v46 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  dominatesSubgraphCopy = dominatesSubgraph;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = subgraphCopy;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = *v40;
    v26 = *v40;
    do
    {
      v11 = 0;
      v27 = v9;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v39 + 1) + 8 * v11);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        resultTensors = [v12 resultTensors];
        v29 = [resultTensors countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v29)
        {
          v14 = *v36;
          v30 = resultTensors;
          v28 = *v36;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(resultTensors);
              }

              v16 = *(*(&v35 + 1) + 8 * i);
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              childLayers = [v16 childLayers];
              v18 = [childLayers countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v32;
                while (2)
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v32 != v20)
                    {
                      objc_enumerationMutation(childLayers);
                    }

                    v22 = *(*(&v31 + 1) + 8 * j);
                    if (([v8 containsObject:v22] & 1) == 0 && -[_MLCANEDomTree doesLayer:dominatesSubgraph:](self, "doesLayer:dominatesSubgraph:", v22, dominatesSubgraphCopy))
                    {

                      v23 = 1;
                      goto LABEL_27;
                    }
                  }

                  v19 = [childLayers countByEnumeratingWithState:&v31 objects:v43 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }
              }

              resultTensors = v30;
              v14 = v28;
            }

            v10 = v26;
            v29 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v29);
        }

        ++v11;
      }

      while (v11 != v27);
      v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
      v23 = 0;
    }

    while (v9);
  }

  else
  {
    v23 = 0;
  }

LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)getDominanceFrontierForSubgraph:(id)subgraph
{
  v40 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  v4 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = subgraphCopy;
  v22 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v22)
  {
    v21 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v23 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = [v7 sourceTensors];
        v8 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              parentLayers = [v12 parentLayers];
              v14 = [parentLayers countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v26;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v26 != v16)
                    {
                      objc_enumerationMutation(parentLayers);
                    }

                    v18 = *(*(&v25 + 1) + 8 * j);
                    if (([v5 containsObject:v18] & 1) == 0)
                    {
                      [v4 addObject:v18];
                    }
                  }

                  v15 = [parentLayers countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v15);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }

        v6 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v22);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getPostDominanceFrontierForSubgraph:(id)subgraph
{
  v40 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  v4 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = subgraphCopy;
  v22 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v22)
  {
    v21 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v23 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = [v7 resultTensors];
        v8 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              childLayers = [v12 childLayers];
              v14 = [childLayers countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v26;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v26 != v16)
                    {
                      objc_enumerationMutation(childLayers);
                    }

                    v18 = *(*(&v25 + 1) + 8 * j);
                    if (([v5 containsObject:v18] & 1) == 0)
                    {
                      [v4 addObject:v18];
                    }
                  }

                  v15 = [childLayers countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v15);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }

        v6 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v22);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)computeDominationForLayer:(id)layer dominationTree:(id)tree
{
  v39 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  treeCopy = tree;
  v8 = [layerCopy key];
  v9 = [treeCopy objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    sourceTensors = [layerCopy sourceTensors];
    v26 = [sourceTensors countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v26)
    {
      v12 = *v34;
      v28 = sourceTensors;
      v25 = *v34;
      do
      {
        v13 = 0;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(sourceTensors);
          }

          v27 = v13;
          v14 = *(*(&v33 + 1) + 8 * v13);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          parentLayers = [v14 parentLayers];
          v16 = [parentLayers countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(parentLayers);
                }

                v20 = *(*(&v29 + 1) + 8 * i);
                [v10 addObject:v20];
                [self computeDominationForLayer:v20 dominationTree:treeCopy];
                v21 = [v20 key];
                v22 = [treeCopy objectForKeyedSubscript:v21];

                if (!v22)
                {

                  v23 = v28;
                  goto LABEL_19;
                }

                [v10 unionSet:v22];
              }

              v17 = [parentLayers countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v13 = v27 + 1;
          sourceTensors = v28;
          v12 = v25;
        }

        while (v27 + 1 != v26);
        v26 = [v28 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v26);
    }

    v23 = [layerCopy key];
    [treeCopy setObject:v10 forKeyedSubscript:v23];
LABEL_19:
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)computeDominationForGraphImpl:(id)impl
{
  v19 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = implCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isLastLayer])
        {
          [self computeDominationForLayer:v11 dominationTree:v5];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)initDomTree:(id)tree
{
  treeCopy = tree;
  v9.receiver = self;
  v9.super_class = _MLCANEDomTree;
  v6 = [(_MLCANEDomTree *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dominationTree, tree);
  }

  return v7;
}

@end