@interface GKMeshGraph
+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max;
+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass;
- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max;
- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass;
- (GKMeshGraph)initWithCoder:(id)coder;
- (GKMeshGraphTriangulationMode)triangulationMode;
- (GKTriangle)triangleAtIndex:(SEL)index;
- (void)addObstacles:(NSArray *)obstacles;
- (void)connectNodeUsingObstacles:(id)node;
- (void)encodeWithCoder:(id)coder;
- (void)removeObstacles:(NSArray *)obstacles;
- (void)setTriangulationMode:(GKMeshGraphTriangulationMode)triangulationMode;
@end

@implementation GKMeshGraph

- (void)setTriangulationMode:(GKMeshGraphTriangulationMode)triangulationMode
{
  cMeshGraph = self->_cMeshGraph;
  cMeshGraph[657] = (triangulationMode & 2) != 0;
  cMeshGraph[656] = triangulationMode & 1;
  cMeshGraph[658] = (triangulationMode & 4) != 0;
}

- (GKMeshGraphTriangulationMode)triangulationMode
{
  cMeshGraph = self->_cMeshGraph;
  v3 = 2;
  if (!cMeshGraph[657])
  {
    v3 = 0;
  }

  v4 = v3 | cMeshGraph[656];
  if (cMeshGraph[658])
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass
{
  v10 = [self alloc];
  *&v11 = bufferRadius;
  v12 = [v10 initWithBufferRadius:nodeClass minCoordinate:v11 maxCoordinate:*&min nodeClass:*&max];

  return v12;
}

- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass
{
  v16.receiver = self;
  v16.super_class = GKMeshGraph;
  v10 = [(GKGraph *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_nodeClass = nodeClass;
    array = [MEMORY[0x277CBEB18] array];
    sourceObstacles = v11->_sourceObstacles;
    v11->_sourceObstacles = array;

    cMeshGraph = v11->_cMeshGraph;
    cMeshGraph[84].f32[0] = fmaxf(bufferRadius, 0.0);
    cMeshGraph[85] = min;
    *(v11->_cMeshGraph + 86) = max;
  }

  return v11;
}

+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max
{
  v9 = objc_opt_class();
  *&v10 = bufferRadius;

  return [self graphWithBufferRadius:v9 minCoordinate:v10 maxCoordinate:*&min nodeClass:*&max];
}

- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max
{
  v9 = objc_opt_class();
  *&v10 = bufferRadius;
  return [(GKMeshGraph *)self initWithBufferRadius:v9 minCoordinate:v10 maxCoordinate:*&min nodeClass:*&max];
}

- (void)addObstacles:(NSArray *)obstacles
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = obstacles;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_sourceObstacles containsObject:v8, v10]& 1) == 0)
        {
          [(NSMutableArray *)self->_sourceObstacles addObject:v8];
          GKCMeshGraph::AddObstacle(self->_cMeshGraph, [v8 cPolygonObstacle]);
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeObstacles:(NSArray *)obstacles
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = obstacles;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_sourceObstacles containsObject:v8, v10])
        {
          [(NSMutableArray *)self->_sourceObstacles removeObject:v8];
          GKCMeshGraph::RemoveObstacle(self->_cMeshGraph, [v8 cPolygonObstacle]);
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connectNodeUsingObstacles:(id)node
{
  v4 = node;
  GKCMeshGraph::ConnectNodeUsingObstacles(self->_cMeshGraph, [v4 cGraphNode2D]);
}

- (GKTriangle)triangleAtIndex:(SEL)index
{
  result = GKCMeshGraph::TriangleAtIndex(self->_cMeshGraph, index);
  v5 = vcvt_f32_f64(*result->points[0].i64[1]);
  v6 = vcvt_f32_f64(*result->points[1].i64[0]);
  v7 = vcvt_f32_f64(*result->points[1].i64[1]);
  return result;
}

- (GKMeshGraph)initWithCoder:(id)coder
{
  v61[11] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v59.receiver = self;
  v59.super_class = GKMeshGraph;
  v45 = coderCopy;
  v5 = [(GKGraph *)&v59 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v61[2] = objc_opt_class();
    v61[3] = objc_opt_class();
    v61[4] = objc_opt_class();
    v61[5] = objc_opt_class();
    v61[6] = objc_opt_class();
    v61[7] = objc_opt_class();
    v61[8] = objc_opt_class();
    v61[9] = objc_opt_class();
    v61[10] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:11];
    [v6 addObjectsFromArray:v7];

    allowedClasses = [coderCopy allowedClasses];
    [v6 unionSet:allowedClasses];

    obj = [coderCopy decodeObjectOfClasses:v6 forKey:@"_sourceObstacles"];
    v44 = [coderCopy decodeObjectOfClasses:v6 forKey:@"extrudedObstacles"];
    [coderCopy decodeFloatForKey:@"bufferRadius"];
    v10 = v9;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"class"];
    v5->_nodeClass = NSClassFromString(v11);

    *(v5->_cMeshGraph + 168) = fmaxf(v10, 0.0);
    objc_storeStrong(&v5->_sourceObstacles, obj);
    [coderCopy decodeFloatForKey:@"minX"];
    v50 = v12;
    [coderCopy decodeFloatForKey:@"minY"];
    *(v5->_cMeshGraph + 85) = __PAIR64__(v13, v50);
    [coderCopy decodeFloatForKey:@"maxX"];
    v51 = v14;
    [coderCopy decodeFloatForKey:@"maxY"];
    *(v5->_cMeshGraph + 86) = __PAIR64__(v15, v51);
    std::vector<GKPolygonObstacle * {__strong}>::reserve(v5->_cMeshGraph + 53, [v44 count]);
    cMeshGraph = v5->_cMeshGraph;
    v17 = [v44 count];
    if (v17 > (cMeshGraph[52] - cMeshGraph[50]) >> 3)
    {
      if (!(v17 >> 61))
      {
        v18 = cMeshGraph[51];
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v19 = v44;
    v20 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v20)
    {
      v21 = *v55;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v54 + 1) + 8 * i);
          v58 = v23;
          v24 = v5->_cMeshGraph;
          v25 = v24[54];
          if (v25 >= v24[55])
          {
            v26 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(v24 + 53, &v58);
          }

          else
          {
            *v25 = v23;
            v26 = (v25 + 1);
          }

          v24[54] = v26;
          v27 = v5->_cMeshGraph;
          cPolygonObstacle = [v58 cPolygonObstacle];
          std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](v27 + 400, &cPolygonObstacle);
        }

        v20 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v20);
    }

    v28 = [obj count];
    if (v28 >= 1)
    {
      v29 = 0;
      v46 = v28 & 0x7FFFFFFF;
      v47 = v6;
      do
      {
        v52 = [obj objectAtIndexedSubscript:v29];
        v49 = [v19 objectAtIndexedSubscript:v29];
        cPolygonObstacle2 = [v49 cPolygonObstacle];
        v31 = v5->_cMeshGraph;
        cPolygonObstacle3 = [v52 cPolygonObstacle];
        v33 = v31[57];
        if (!v33)
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v34 = v33;
            v35 = v33[4];
            if (cPolygonObstacle3 >= v35)
            {
              break;
            }

            v33 = *v34;
            if (!*v34)
            {
              goto LABEL_23;
            }
          }

          if (v35 >= cPolygonObstacle3)
          {
            break;
          }

          v33 = v34[1];
          if (!v33)
          {
            goto LABEL_23;
          }
        }

        v34[5] = cPolygonObstacle2;
        cPolygonObstacle4 = [v52 cPolygonObstacle];
        v37 = v5->_cMeshGraph;
        cPolygonObstacle5 = [v49 cPolygonObstacle];
        v39 = v37[60];
        if (!v39)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v40 = v39;
            v41 = v39[4];
            if (cPolygonObstacle5 >= v41)
            {
              break;
            }

            v39 = *v40;
            if (!*v40)
            {
              goto LABEL_30;
            }
          }

          if (v41 >= cPolygonObstacle5)
          {
            break;
          }

          v39 = v40[1];
          if (!v39)
          {
            goto LABEL_30;
          }
        }

        v40[5] = cPolygonObstacle4;

        v6 = v47;
        ++v29;
      }

      while (v29 != v46);
    }

    coderCopy = v45;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GKMeshGraph;
  [(GKGraph *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceObstacles forKey:@"_sourceObstacles"];
  v5 = *(self->_cMeshGraph + 54) - *(self->_cMeshGraph + 53);
  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:? count:?];
  [coderCopy encodeObject:v6 forKey:@"extrudedObstacles"];
  [(GKMeshGraph *)self bufferRadius];
  [coderCopy encodeFloat:@"bufferRadius" forKey:?];
  [coderCopy encodeFloat:@"minX" forKey:*(self->_cMeshGraph + 85)];
  LODWORD(v7) = *(self->_cMeshGraph + 171);
  [coderCopy encodeFloat:@"minY" forKey:v7];
  [coderCopy encodeFloat:@"maxX" forKey:*(self->_cMeshGraph + 86)];
  LODWORD(v8) = *(self->_cMeshGraph + 173);
  [coderCopy encodeFloat:@"maxY" forKey:v8];
  v9 = NSStringFromClass([(GKMeshGraph *)self nodeClass]);
  [coderCopy encodeObject:v9 forKey:@"class"];
}

@end