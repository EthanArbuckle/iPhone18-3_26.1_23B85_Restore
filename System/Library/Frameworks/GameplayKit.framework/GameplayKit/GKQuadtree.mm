@interface GKQuadtree
+ (GKQuadtree)quadtreeWithBoundingQuad:(GKQuad)quad minimumCellSize:(float)minCellSize;
- (BOOL)removeElement:(id)data withNode:(GKQuadtreeNode *)node;
- (GKQuadtree)initWithBoundingQuad:(GKQuad)quad minimumCellSize:(float)minCellSize;
- (GKQuadtreeNode)addElement:(id)element withPoint:(vector_float2)point;
- (NSArray)elementsAtPoint:(vector_float2)point;
- (NSArray)elementsInQuad:(GKQuad)quad;
- (void)dealloc;
@end

@implementation GKQuadtree

+ (GKQuadtree)quadtreeWithBoundingQuad:(GKQuad)quad minimumCellSize:(float)minCellSize
{
  v5 = *&quad.quadMax;
  v6 = *&quad.quadMin;
  v7 = [GKQuadtree alloc];
  *&v8 = minCellSize;
  v9 = [(GKQuadtree *)v7 initWithBoundingQuad:v6 minimumCellSize:v5, v8];

  return v9;
}

- (GKQuadtree)initWithBoundingQuad:(GKQuad)quad minimumCellSize:(float)minCellSize
{
  v5.receiver = self;
  v5.super_class = GKQuadtree;
  if ([(GKQuadtree *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  cQuadTree = self->_cQuadTree;
  if (cQuadTree)
  {
    (*(*cQuadTree + 8))(cQuadTree, a2);
  }

  v4.receiver = self;
  v4.super_class = GKQuadtree;
  [(GKQuadtree *)&v4 dealloc];
}

- (GKQuadtreeNode)addElement:(id)element withPoint:(vector_float2)point
{
  v4 = *(GKCQuadTreeNode<NSObject>::addPoint(*(self->_cQuadTree + 1), element, *&point) + 112);

  return v4;
}

- (NSArray)elementsAtPoint:(vector_float2)point
{
  __p = 0;
  v23 = 0;
  v24 = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = *(self->_cQuadTree + 1);
  while (1)
  {
    v7 = (v6 + 40);
    v8 = vld1_dup_f32(v7);
    v9 = vcgt_f32(vmul_f32(*(v6 + 24), 0x3F0000003F000000), v8);
    if ((v9.i32[0] & v9.i32[1] & 1) == 0)
    {
      break;
    }

    v10 = vcgt_f32(*(v6 + 32), point);
    if (v10.i8[4])
    {
      v11 = 80;
    }

    else
    {
      v11 = 64;
    }

    if (v10.i8[4])
    {
      v12 = 72;
    }

    else
    {
      v12 = 56;
    }

    if (v10.i8[0])
    {
      v11 = v12;
    }

    v6 = *(v6 + v11);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v13 = *(v6 + 88);
  v14 = *(v6 + 96);
  v15 = *(v6 + 88);
  if (v14 != v15)
  {
    std::vector<NSObject * {__strong}>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NSObject * const {__strong}*>,NSObject * const {__strong}*>(&__p, 0, v15, v14, v14 - v15);
    v16 = __p;
    if (__p != v23)
    {
      do
      {
        [v5 addObject:*v16++];
      }

      while (v16 != v23);
    }
  }

LABEL_16:
  v17 = __p;
  if (__p)
  {
    v18 = v23;
    v19 = __p;
    if (v23 != __p)
    {
      do
      {
        v20 = *--v18;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v23 = v17;
    operator delete(v19);
  }

  return v5;
}

- (NSArray)elementsInQuad:(GKQuad)quad
{
  quadMax = quad.quadMax;
  quadMin = quad.quadMin;
  v18[0] = quad.quadMin;
  v18[1] = quad.quadMax;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v6 = [MEMORY[0x277CBEB18] array];
  cQuadTree = self->_cQuadTree;
  v14 = vsub_f32(quadMax, quadMin);
  GKCQuadTreeNode<NSObject>::queryQuad(cQuadTree[1], v18, &v14, &__p);
  v8 = __p;
  if (__p != v16)
  {
    do
    {
      [v6 addObject:*v8++];
    }

    while (v8 != v16);
  }

  v9 = __p;
  if (__p)
  {
    v10 = v16;
    v11 = __p;
    if (v16 != __p)
    {
      do
      {
        v12 = *--v10;
      }

      while (v10 != v9);
      v11 = __p;
    }

    v16 = v9;
    operator delete(v11);
  }

  return v6;
}

- (BOOL)removeElement:(id)data withNode:(GKQuadtreeNode *)node
{
  v5 = data;
  v6 = node;
  v7 = [(GKQuadtreeNode *)v6 cQuadTreeNode];
  v8 = v5;
  v9 = v8;
  v11 = *(v7 + 88);
  v10 = *(v7 + 96);
  if (v11 == v10)
  {
LABEL_4:
    v12 = 0;
  }

  else
  {
    while (*v11 != v8)
    {
      if (++v11 == v10)
      {
        goto LABEL_4;
      }
    }

    v13 = v11 + 1;
    if (v11 + 1 != v10)
    {
      do
      {
        v11 = v13;
        v14 = *(v13 - 1);
        *(v13 - 1) = *v13;
        *v13 = 0;

        v13 = v11 + 1;
      }

      while (v11 + 1 != v10);
      v10 = *(v7 + 96);
    }

    while (v10 != v11)
    {
      v15 = *--v10;
    }

    *(v7 + 96) = v11;
    v12 = 1;
  }

  return v12;
}

@end