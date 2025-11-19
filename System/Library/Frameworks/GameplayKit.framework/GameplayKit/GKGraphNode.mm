@interface GKGraphNode
+ (id)node;
- (GKGraphNode)init;
- (GKGraphNode)initWithCoder:(id)a3;
- (NSArray)findPathFromNode:(GKGraphNode *)startNode;
- (NSArray)findPathToNode:(GKGraphNode *)goalNode;
- (void)addConnection:(id)a3 bidirectional:(BOOL)a4;
- (void)addConnectionsToNodes:(NSArray *)nodes bidirectional:(BOOL)bidirectional;
- (void)dealloc;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)a3;
- (void)removeConnection:(id)a3;
- (void)removeConnectionsToNodes:(NSArray *)nodes bidirectional:(BOOL)bidirectional;
@end

@implementation GKGraphNode

- (void)deleteCGraphNode
{
  cGraphNode = self->_cGraphNode;
  if (cGraphNode)
  {
    (*(*cGraphNode + 8))(cGraphNode, a2);
  }

  self->_cGraphNode = 0;
}

+ (id)node
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (GKGraphNode)init
{
  v7.receiver = self;
  v7.super_class = GKGraphNode;
  v2 = [(GKGraphNode *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    connectedNodes = v2->_connectedNodes;
    v2->_connectedNodes = v3;

    v5 = [(GKGraphNode *)v2 makeCGraphNode];
    v2->_cGraphNode = v5;
    objc_storeWeak((v5 + 56), v2);
  }

  return v2;
}

- (void)dealloc
{
  [(GKGraphNode *)self deleteCGraphNode];
  v3.receiver = self;
  v3.super_class = GKGraphNode;
  [(GKGraphNode *)&v3 dealloc];
}

- (void)addConnection:(id)a3 bidirectional:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  GKCGraphNode::addConnectionToNode(self->_cGraphNode, [v6 cGraphNode], v4);
}

- (void)addConnectionsToNodes:(NSArray *)nodes bidirectional:(BOOL)bidirectional
{
  v4 = bidirectional;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = nodes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        GKCGraphNode::addConnectionToNode(self->_cGraphNode, [*(*(&v11 + 1) + 8 * v9++) cGraphNode], v4);
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeConnection:(id)a3
{
  v4 = a3;
  GKCGraphNode::removeConnectionToNode(self->_cGraphNode, [v4 cGraphNode], 0);
}

- (void)removeConnectionsToNodes:(NSArray *)nodes bidirectional:(BOOL)bidirectional
{
  v9 = nodes;
  v6 = [(NSArray *)v9 count];
  if (v6 >= 1)
  {
    v7 = (v6 & 0x7FFFFFFF) + 1;
    do
    {
      v8 = [(NSArray *)v9 objectAtIndexedSubscript:v7 - 2];
      GKCGraphNode::removeConnectionToNode(self->_cGraphNode, [v8 cGraphNode], bidirectional);

      --v7;
    }

    while (v7 > 1);
  }
}

- (NSArray)findPathToNode:(GKGraphNode *)goalNode
{
  v4 = goalNode;
  [(GKGraphNode *)self cGraphNode];
  [(GKGraphNode *)v4 cGraphNode];
  GKFindPath();
}

- (NSArray)findPathFromNode:(GKGraphNode *)startNode
{
  v3 = [(GKGraphNode *)startNode findPathFromNode:self];

  return v3;
}

- (GKGraphNode)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKGraphNode *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:11];
    [v6 addObjectsFromArray:{v7, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];

    v8 = [v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = [v4 decodeObjectOfClasses:v6 forKey:@"_connectedNodes"];
    [(GKGraphNode *)v5 addConnectionsToNodes:v9 bidirectional:0];
    v10 = [v4 decodeObjectOfClasses:v6 forKey:@"_obstacle"];
    v11 = [v4 decodeObjectOfClasses:v6 forKey:@"_extrudedObstacle"];
    if (v10)
    {
      *(v5->_cGraphNode + 4) = [v10 cPolygonObstacle];
    }

    if (v11)
    {
      *(v5->_cGraphNode + 5) = [v11 cPolygonObstacle];
    }

    *(v5->_cGraphNode + 12) = [v4 decodeIntForKey:@"_vertIndex"];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_connectedNodes forKey:@"_connectedNodes"];
  cGraphNode = self->_cGraphNode;
  v5 = cGraphNode[4];
  if (v5)
  {
    [v7 encodeObject:*(v5 + 64) forKey:@"_obstacle"];
    cGraphNode = self->_cGraphNode;
  }

  v6 = cGraphNode[5];
  if (v6)
  {
    [v7 encodeObject:*(v6 + 64) forKey:@"_extrudedObstacle"];
    cGraphNode = self->_cGraphNode;
  }

  [v7 encodeInt:*(cGraphNode + 12) forKey:@"_vertIndex"];
}

@end