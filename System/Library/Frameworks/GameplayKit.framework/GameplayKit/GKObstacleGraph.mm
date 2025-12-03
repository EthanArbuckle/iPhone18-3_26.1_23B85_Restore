@interface GKObstacleGraph
+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius;
+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass;
- (BOOL)isConnectionLockedFromNode:(id)startNode toNode:(id)endNode;
- (GKObstacleGraph)initWithCoder:(id)coder;
- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius;
- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass;
- (NSArray)nodesForObstacle:(GKPolygonObstacle *)obstacle;
- (void)addObstacles:(NSArray *)obstacles;
- (void)connectNodeUsingObstacles:(id)node;
- (void)connectNodeUsingObstacles:(id)node ignoringBufferRadiusOfObstacles:(NSArray *)obstaclesBufferRadiusToIgnore;
- (void)connectNodeUsingObstacles:(id)node ignoringObstacles:(NSArray *)obstaclesToIgnore;
- (void)encodeWithCoder:(id)coder;
- (void)lockConnectionFromNode:(id)startNode toNode:(id)endNode;
- (void)removeObstacles:(NSArray *)obstacles;
- (void)unlockConnectionFromNode:(id)startNode toNode:(id)endNode;
@end

@implementation GKObstacleGraph

+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius
{
  v5 = obstacles;
  v6 = [GKObstacleGraph alloc];
  *&v7 = bufferRadius;
  v8 = [(GKObstacleGraph *)v6 initWithObstacles:v5 bufferRadius:v7];

  return v8;
}

- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius
{
  v6 = obstacles;
  v7 = objc_opt_class();
  *&v8 = bufferRadius;
  v9 = [(GKObstacleGraph *)self initWithObstacles:v6 bufferRadius:v7 nodeClass:v8];

  return v9;
}

+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass
{
  v7 = obstacles;
  v8 = [GKObstacleGraph alloc];
  *&v9 = bufferRadius;
  v10 = [(GKObstacleGraph *)v8 initWithObstacles:v7 bufferRadius:nodeClass nodeClass:v9];

  return v10;
}

- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = obstacles;
  if (([(objc_class *)nodeClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"initWithObstacles: nodeClass does not descend from GKGraphNode2D"];
  }

  v23.receiver = self;
  v23.super_class = GKObstacleGraph;
  v9 = [(GKGraph *)&v23 init];
  v10 = v9;
  if (v9)
  {
    v9->_nodeClass = nodeClass;
    array = [MEMORY[0x277CBEB18] array];
    sourceObstacles = v10->_sourceObstacles;
    v10->_sourceObstacles = array;

    *(v10->_cObstacleGraph + 28) = fmaxf(bufferRadius, 0.0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v8;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          GKCObstacleGraph::addObstacle(v10->_cObstacleGraph, [*(*(&v19 + 1) + 8 * v16++) cPolygonObstacle], 1);
        }

        while (v14 != v16);
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)connectNodeUsingObstacles:(id)node
{
  v4 = node;
  GKCObstacleGraph::connectNodeUsingObstacles(self->_cObstacleGraph, [v4 cGraphNode2D]);
}

- (void)connectNodeUsingObstacles:(id)node ignoringObstacles:(NSArray *)obstaclesToIgnore
{
  v7 = node;
  v6 = obstaclesToIgnore;
  GKCObstacleGraph::connectNodeUsingObstaclesIgnoringObstacles(self->_cObstacleGraph, [v7 cGraphNode2D], v6);
}

- (void)connectNodeUsingObstacles:(id)node ignoringBufferRadiusOfObstacles:(NSArray *)obstaclesBufferRadiusToIgnore
{
  v7 = node;
  v6 = obstaclesBufferRadiusToIgnore;
  GKCObstacleGraph::connectNodeUsingObstaclesIgnoringBufferRadiusOfObstacles(self->_cObstacleGraph, [v7 cGraphNode2D], v6);
}

- (void)addObstacles:(NSArray *)obstacles
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = obstacles;
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

        GKCObstacleGraph::addObstacle(self->_cObstacleGraph, [*(*(&v9 + 1) + 8 * v7++) cPolygonObstacle]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeObstacles:(NSArray *)obstacles
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = obstacles;
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

        GKCObstacleGraph::removeObstacle(self->_cObstacleGraph, [*(*(&v9 + 1) + 8 * v7++) cPolygonObstacle]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)nodesForObstacle:(GKPolygonObstacle *)obstacle
{
  v4 = obstacle;
  v5 = GKCObstacleGraph::nodesForObstacle(self->_cObstacleGraph, [(GKPolygonObstacle *)v4 cPolygonObstacle]);

  return v5;
}

- (void)lockConnectionFromNode:(id)startNode toNode:(id)endNode
{
  v7 = startNode;
  v6 = endNode;
  GKCObstacleGraph::lockConnectionFromNode(self->_cObstacleGraph, [v7 cGraphNode2D], objc_msgSend(v6, "cGraphNode2D"));
}

- (void)unlockConnectionFromNode:(id)startNode toNode:(id)endNode
{
  v7 = startNode;
  v6 = endNode;
  GKCObstacleGraph::unlockConnectionFromNode(self->_cObstacleGraph, [v7 cGraphNode2D], objc_msgSend(v6, "cGraphNode2D"));
}

- (BOOL)isConnectionLockedFromNode:(id)startNode toNode:(id)endNode
{
  v6 = startNode;
  v7 = endNode;
  LOBYTE(self) = GKCObstacleGraph::isConnectedLockedFromNode(self->_cObstacleGraph, [v6 cGraphNode2D], objc_msgSend(v7, "cGraphNode2D"));

  return self;
}

- (GKObstacleGraph)initWithCoder:(id)coder
{
  v50[11] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = GKObstacleGraph;
  coderCopy = coder;
  v3 = [(GKGraph *)&v48 initWithCoder:?];
  if (v3)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v50[2] = objc_opt_class();
    v50[3] = objc_opt_class();
    v50[4] = objc_opt_class();
    v50[5] = objc_opt_class();
    v50[6] = objc_opt_class();
    v50[7] = objc_opt_class();
    v50[8] = objc_opt_class();
    v50[9] = objc_opt_class();
    v50[10] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:11];
    [v36 addObjectsFromArray:v4];

    allowedClasses = [coderCopy allowedClasses];
    [v36 unionSet:allowedClasses];

    obj = [coderCopy decodeObjectOfClasses:v36 forKey:@"_sourceObstacles"];
    v35 = [coderCopy decodeObjectOfClasses:v36 forKey:@"extrudedObstacles"];
    [coderCopy decodeFloatForKey:@"bufferRadius"];
    *(v3->_cObstacleGraph + 28) = v6;
    objc_storeStrong(&v3->_sourceObstacles, obj);
    std::vector<GKPolygonObstacle * {__strong}>::reserve(v3->_cObstacleGraph + 11, [v35 count]);
    cObstacleGraph = v3->_cObstacleGraph;
    v8 = [v35 count];
    if (v8 > (cObstacleGraph[10] - cObstacleGraph[8]) >> 3)
    {
      if (!(v8 >> 61))
      {
        v9 = cObstacleGraph[9];
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = v35;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v11)
    {
      v12 = *v44;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          v47 = v14;
          v15 = v3->_cObstacleGraph;
          v16 = v15[12];
          if (v16 >= v15[13])
          {
            v17 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(v15 + 11, &v47);
          }

          else
          {
            *v16 = v14;
            v17 = (v16 + 1);
          }

          v15[12] = v17;
          v18 = v3->_cObstacleGraph;
          cPolygonObstacle = [v47 cPolygonObstacle];
          std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](v18 + 64, &cPolygonObstacle);
        }

        v11 = [v10 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v11);
    }

    v19 = [obj count];
    if (v19 >= 1)
    {
      v20 = 0;
      v38 = v19 & 0x7FFFFFFF;
      do
      {
        v41 = [obj objectAtIndexedSubscript:v20];
        v40 = [v10 objectAtIndexedSubscript:v20];
        cPolygonObstacle2 = [v40 cPolygonObstacle];
        v22 = v3->_cObstacleGraph;
        cPolygonObstacle3 = [v41 cPolygonObstacle];
        v24 = v22[19];
        if (!v24)
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v25 = v24;
            v26 = v24[4];
            if (cPolygonObstacle3 >= v26)
            {
              break;
            }

            v24 = *v25;
            if (!*v25)
            {
              goto LABEL_23;
            }
          }

          if (v26 >= cPolygonObstacle3)
          {
            break;
          }

          v24 = v25[1];
          if (!v24)
          {
            goto LABEL_23;
          }
        }

        v25[5] = cPolygonObstacle2;
        cPolygonObstacle4 = [v41 cPolygonObstacle];
        v28 = v3->_cObstacleGraph;
        cPolygonObstacle5 = [v40 cPolygonObstacle];
        v30 = v28[22];
        if (!v30)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v31 = v30;
            v32 = v30[4];
            if (cPolygonObstacle5 >= v32)
            {
              break;
            }

            v30 = *v31;
            if (!*v31)
            {
              goto LABEL_30;
            }
          }

          if (v32 >= cPolygonObstacle5)
          {
            break;
          }

          v30 = v31[1];
          if (!v30)
          {
            goto LABEL_30;
          }
        }

        v31[5] = cPolygonObstacle4;

        ++v20;
      }

      while (v20 != v38);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GKObstacleGraph;
  [(GKGraph *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceObstacles forKey:@"_sourceObstacles"];
  v5 = *(self->_cObstacleGraph + 12) - *(self->_cObstacleGraph + 11);
  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:? count:?];
  [coderCopy encodeObject:v6 forKey:@"extrudedObstacles"];
  [(GKObstacleGraph *)self bufferRadius];
  [coderCopy encodeFloat:@"bufferRadius" forKey:?];
}

@end