@interface GKGraph
+ (GKGraph)graphWithNodes:(NSArray *)nodes;
+ (id)graph;
- (GKGraph)init;
- (GKGraph)initWithCoder:(id)coder;
- (GKGraph)initWithNodes:(NSArray *)nodes;
- (NSArray)findPathFromNode:(GKGraphNode *)startNode toNode:(GKGraphNode *)endNode;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addNodes:(NSArray *)nodes;
- (void)connectNodeToLowestCostNode:(GKGraphNode *)node bidirectional:(BOOL)bidirectional;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeNodes:(NSArray *)nodes;
@end

@implementation GKGraph

+ (id)graph
{
  v2 = objc_alloc_init(GKGraph);

  return v2;
}

- (void)dealloc
{
  cGraph = self->_cGraph;
  if (cGraph)
  {
    (*(*cGraph + 8))(cGraph, a2);
  }

  v4.receiver = self;
  v4.super_class = GKGraph;
  [(GKGraph *)&v4 dealloc];
}

- (GKGraph)init
{
  v7.receiver = self;
  v7.super_class = GKGraph;
  v2 = [(GKGraph *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    nodes = v2->_nodes;
    v2->_nodes = array;

    makeCGraph = [(GKGraph *)v2 makeCGraph];
    v2->_cGraph = makeCGraph;
    objc_storeWeak((makeCGraph + 32), v2);
  }

  return v2;
}

+ (GKGraph)graphWithNodes:(NSArray *)nodes
{
  v3 = nodes;
  v4 = [[GKGraph alloc] initWithNodes:v3];

  return v4;
}

- (GKGraph)initWithNodes:(NSArray *)nodes
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = nodes;
  v5 = [(GKGraph *)self init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          GKCGraph::addNode(v5->_cGraph, [*(*(&v12 + 1) + 8 * v9++) cGraphNode]);
        }

        while (v7 != v9);
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)connectNodeToLowestCostNode:(GKGraphNode *)node bidirectional:(BOOL)bidirectional
{
  v4 = bidirectional;
  v6 = node;
  GKCGraph::connectNodeToLowestCostNode(self->_cGraph, [(GKGraphNode *)v6 cGraphNode], v4);
}

- (void)removeNodes:(NSArray *)nodes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = nodes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*self->_cGraph + 16))(self->_cGraph, [*(*(&v9 + 1) + 8 * v7++) cGraphNode]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addNodes:(NSArray *)nodes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = nodes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        GKCGraph::addNode(self->_cGraph, [*(*(&v9 + 1) + 8 * v7++) cGraphNode]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)findPathFromNode:(GKGraphNode *)startNode toNode:(GKGraphNode *)endNode
{
  v4 = [(GKGraphNode *)startNode findPathToNode:endNode];

  return v4;
}

- (GKGraph)initWithCoder:(id)coder
{
  v35[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(GKGraph *)self initWithNodes:MEMORY[0x277CBEBF8]];
  if (v5)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v35[3] = objc_opt_class();
    v35[4] = objc_opt_class();
    v35[5] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:6];
    [v27 addObjectsFromArray:v6];

    allowedClasses = [coderCopy allowedClasses];
    [v27 unionSet:allowedClasses];

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v33 = 0;
    v11 = [coderCopy decodeTopLevelObjectOfClasses:v10 forKey:@"_nodes" error:&v33];
    v12 = v33;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v11;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
      nodes = v5->_nodes;
      v5->_nodes = v13;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v26;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = *v30;
        do
        {
          v18 = 0;
          do
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v29 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(NSMutableArray *)v5->_nodes addObject:v19];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v16);
      }
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      v15 = v5->_nodes;
      v5->_nodes = array;
    }

    v28 = v12;
    v21 = [coderCopy decodeTopLevelObjectOfClasses:v27 forKey:@"_info" error:&v28];
    v22 = v28;

    info = v5->__info;
    v5->__info = v21;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_nodes forKey:@"_nodes"];
  [coderCopy encodeObject:self->__info forKey:@"_info"];
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKGraph *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

@end