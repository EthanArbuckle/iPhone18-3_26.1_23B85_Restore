@interface GKPath
+ (GKPath)pathWithGraphNodes:(NSArray *)graphNodes radius:(float)radius;
- (GKPath)initWithFloat3Points:(vector_float3 *)points count:(size_t)count radius:(float)radius cyclical:(BOOL)cyclical;
- (GKPath)initWithGraphNodes:(NSArray *)graphNodes radius:(float)radius;
- (GKPath)initWithPoints:(vector_float2 *)points count:(size_t)count radius:(float)radius cyclical:(BOOL)cyclical;
- (id).cxx_construct;
- (vector_float2)float2AtIndex:(NSUInteger)index;
- (vector_float2)pointAtIndex:(NSUInteger)index;
- (vector_float3)float3AtIndex:(NSUInteger)index;
@end

@implementation GKPath

- (GKPath)initWithPoints:(vector_float2 *)points count:(size_t)count radius:(float)radius cyclical:(BOOL)cyclical
{
  v10.receiver = self;
  v10.super_class = GKPath;
  v7 = [(GKPath *)&v10 init];
  v8 = v7;
  if (count > 1)
  {
    if (v7)
    {
      if (count < 0x1555555555555556)
      {
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"GKPathLessThanTwoPointsException: GKPaths MUST be initialized with 2 or more points.  Single point paths are not allowed"];
  }

  return v8;
}

+ (GKPath)pathWithGraphNodes:(NSArray *)graphNodes radius:(float)radius
{
  v5 = graphNodes;
  v6 = [GKPath alloc];
  *&v7 = radius;
  v8 = [(GKPath *)v6 initWithGraphNodes:v5 radius:v7];

  return v8;
}

- (GKPath)initWithGraphNodes:(NSArray *)graphNodes radius:(float)radius
{
  v6 = graphNodes;
  if ([(NSArray *)v6 count]> 1)
  {
    v8 = [(NSArray *)v6 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      __p = 0;
      v26 = 0;
      v27 = 0;
      v9 = [(NSArray *)v6 count];
      if (v9)
      {
        std::vector<long>::__append(&__p, v9);
      }

      for (i = 0; [(NSArray *)v6 count]> i; ++i)
      {
        v11 = [(NSArray *)v6 objectAtIndexedSubscript:i];
        [v11 position];
        *(__p + i) = v12;
      }

      v17 = __p;
      v18 = [(NSArray *)v6 count];
      *&v19 = radius;
      v20 = [(GKPath *)self initWithPoints:v17 count:v18 radius:0 cyclical:v19];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"GKPath: only GKGraphNode2D and GKGraphNode3D are accepted by initWithGraphNodes:radius:"];
        selfCopy2 = 0;
LABEL_21:

        goto LABEL_22;
      }

      __p = 0;
      v26 = 0;
      v27 = 0;
      v13 = [(NSArray *)v6 count];
      if (v13)
      {
        std::vector<ClipperLib::IntPoint>::__append(&__p, v13);
      }

      for (j = 0; [(NSArray *)v6 count]> j; ++j)
      {
        v15 = [(NSArray *)v6 objectAtIndexedSubscript:j];
        [v15 position];
        *(__p + j) = v16;
      }

      v21 = __p;
      v22 = [(NSArray *)v6 count];
      *&v23 = radius;
      v20 = [(GKPath *)self initWithFloat3Points:v21 count:v22 radius:0 cyclical:v23];
    }

    self = v20;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    selfCopy2 = self;
    goto LABEL_21;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"GKPath: must be initialized with 2 or more graph nodes.  Single node paths are not allowed"];
  self = [(GKPath *)self init];
  selfCopy2 = self;
LABEL_22:

  return selfCopy2;
}

- (GKPath)initWithFloat3Points:(vector_float3 *)points count:(size_t)count radius:(float)radius cyclical:(BOOL)cyclical
{
  v10.receiver = self;
  v10.super_class = GKPath;
  v7 = [(GKPath *)&v10 init];
  v8 = v7;
  if (count > 1)
  {
    if (v7)
    {
      if (count < 0x1555555555555556)
      {
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"GKPathLessThanTwoPointsException: GKPaths MUST be initialized with 2 or more points.  Single point paths are not allowed"];
  }

  return v8;
}

- (vector_float2)pointAtIndex:(NSUInteger)index
{
  numPoints = [(GKPath *)self numPoints];
  result = 0;
  if (numPoints > index)
  {
    v7 = index;
    v9 = *([(GKPath *)self pathway][16] + v7 * 12);
    pathway = [(GKPath *)self pathway];
    result.i32[0] = v9;
    result.i32[1] = LODWORD(pathway->points[v7].z);
  }

  return result;
}

- (vector_float2)float2AtIndex:(NSUInteger)index
{
  numPoints = [(GKPath *)self numPoints];
  result = 0;
  if (numPoints > index)
  {
    v7 = index;
    v9 = *([(GKPath *)self pathway][16] + v7 * 12);
    pathway = [(GKPath *)self pathway];
    result.i32[0] = v9;
    result.i32[1] = LODWORD(pathway->points[v7].z);
  }

  return result;
}

- (vector_float3)float3AtIndex:(NSUInteger)index
{
  numPoints = [(GKPath *)self numPoints];
  if (numPoints > index)
  {
    v7 = 12 * index;
    v8 = *([(GKPath *)self pathway][16] + v7);
    v9 = *([(GKPath *)self pathway][16] + v7 + 4);
    numPoints = [(GKPath *)self pathway];
    z = numPoints->points[v7 / 0xC].z;
  }

  result.i64[1] = v6;
  result.i64[0] = numPoints;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = &unk_284B50608;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 0;
  return self;
}

@end