@interface GKOctree
- (BOOL)removeElement:(id)element withNode:(GKOctreeNode *)node;
- (GKOctree)initWithBoundingBox:(GKBox *)box minimumCellSize:(float)minCellSize;
- (GKOctreeNode)addElement:(id)element withBox:(GKBox *)box;
- (GKOctreeNode)addElement:(id)element withPoint:(vector_float3)point;
- (NSArray)elementsAtPoint:(vector_float3)point;
- (NSArray)elementsInBox:(GKBox *)box;
- (void)dealloc;
@end

@implementation GKOctree

- (GKOctree)initWithBoundingBox:(GKBox *)box minimumCellSize:(float)minCellSize
{
  v6.receiver = self;
  v6.super_class = GKOctree;
  if ([(GKOctree *)&v6 init:box])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  cOctree = self->_cOctree;
  if (cOctree)
  {
    (*(*cOctree + 8))(cOctree, a2);
  }

  v4.receiver = self;
  v4.super_class = GKOctree;
  [(GKOctree *)&v4 dealloc];
}

- (GKOctreeNode)addElement:(id)element withPoint:(vector_float3)point
{
  v5 = *(GKCOctreeNode<NSObject>::addPoint(*(self->_cOctree + 1), element, v4) + 200);

  return v5;
}

- (GKOctreeNode)addElement:(id)element withBox:(GKBox *)box
{
  v6 = *(GKCOctreeNode<NSObject>::addBox(*(self->_cOctree + 1), element, v4, vsubq_f32(v5, v4)) + 200);

  return v6;
}

- (NSArray)elementsAtPoint:(vector_float3)point
{
  v27 = v3;
  __p = 0;
  v29 = 0;
  v30 = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = *(self->_cOctree + 1);
  v7 = *(v6 + 96);
  if (COERCE_FLOAT(*(v6 + 48)) < v7 || COERCE_FLOAT(HIDWORD(*(v6 + 48))) < v7 || COERCE_FLOAT(*(v6 + 56)) < v7)
  {
LABEL_26:
    v18 = *(v6 + 176);
    v19 = *(v6 + 184);
    v20 = *(v6 + 176);
    if (v19 != v20)
    {
      std::vector<NSObject * {__strong}>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NSObject * const {__strong}*>,NSObject * const {__strong}*>(&__p, 0, v20, v19, v19 - v20);
      v21 = __p;
      if (__p != v29)
      {
        do
        {
          [v5 addObject:*v21++];
        }

        while (v21 != v29);
      }
    }
  }

  else
  {
    v10 = vext_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL), 4uLL);
    while (1)
    {
      v11 = *(v6 + 80);
      v12 = vcge_f32(v10, vext_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL), 4uLL));
      if (v12.i8[0])
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      if (*v27.i32 >= *v11.i32)
      {
        ++v13;
      }

      v14 = (v12.i8[4] & 1) != 0 ? 4 : 0;
      v6 = *(v6 + 8 * (v13 | v14) + 112);
      if (!v6)
      {
        break;
      }

      v15 = *(v6 + 96);
      if (COERCE_FLOAT(*(v6 + 48)) < v15 || COERCE_FLOAT(HIDWORD(*(v6 + 48))) < v15 || COERCE_FLOAT(*(v6 + 56)) < v15)
      {
        goto LABEL_26;
      }
    }
  }

  v22 = __p;
  if (__p)
  {
    v23 = v29;
    v24 = __p;
    if (v29 != __p)
    {
      do
      {
        v25 = *--v23;
      }

      while (v23 != v22);
      v24 = __p;
    }

    v29 = v22;
    operator delete(v24);
  }

  return v5;
}

- (NSArray)elementsInBox:(GKBox *)box
{
  v14 = v3;
  v15 = v4;
  v20 = v3;
  v21 = v4;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v6 = [MEMORY[0x277CBEB18] array];
  cOctree = self->_cOctree;
  v16 = vsubq_f32(v15, v14);
  GKCOctreeNode<NSObject>::queryBox(cOctree[1], &v20, &v16, &__p);
  v8 = __p;
  if (__p != v18)
  {
    do
    {
      [v6 addObject:*v8++];
    }

    while (v8 != v18);
  }

  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      do
      {
        v12 = *--v10;
      }

      while (v10 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }

  return v6;
}

- (BOOL)removeElement:(id)element withNode:(GKOctreeNode *)node
{
  v5 = element;
  v6 = node;
  v7 = [(GKOctreeNode *)v6 cOctreeNode];
  v8 = v5;
  v9 = v8;
  v11 = *(v7 + 176);
  v10 = *(v7 + 184);
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
      v10 = *(v7 + 184);
    }

    while (v10 != v11)
    {
      v15 = *--v10;
    }

    *(v7 + 184) = v11;
    v12 = 1;
  }

  return v12;
}

@end