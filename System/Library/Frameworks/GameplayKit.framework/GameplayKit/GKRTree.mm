@interface GKRTree
+ (GKRTree)treeWithMaxNumberOfChildren:(NSUInteger)maxNumberOfChildren;
- (GKRTree)initWithMaxNumberOfChildren:(NSUInteger)maxNumberOfChildren;
- (NSArray)elementsInBoundingRectMin:(vector_float2)rectMin rectMax:(vector_float2)rectMax;
- (void)dealloc;
- (void)removeElement:(id)element boundingRectMin:(vector_float2)boundingRectMin boundingRectMax:(vector_float2)boundingRectMax;
@end

@implementation GKRTree

- (void)dealloc
{
  cRTree = self->_cRTree;
  if (cRTree)
  {

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(cRTree + 3);
    MEMORY[0x23EE6C500](cRTree, 0x10A0C40EBF3C9F8);
  }

  v4.receiver = self;
  v4.super_class = GKRTree;
  [(GKRTree *)&v4 dealloc];
}

+ (GKRTree)treeWithMaxNumberOfChildren:(NSUInteger)maxNumberOfChildren
{
  v3 = [[self alloc] initWithMaxNumberOfChildren:maxNumberOfChildren];

  return v3;
}

- (GKRTree)initWithMaxNumberOfChildren:(NSUInteger)maxNumberOfChildren
{
  v4.receiver = self;
  v4.super_class = GKRTree;
  if ([(GKRTree *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)removeElement:(id)element boundingRectMin:(vector_float2)boundingRectMin boundingRectMax:(vector_float2)boundingRectMax
{
  v8 = element;
  cRTree = self->_cRTree;
  v10 = v8;
  if (cRTree[4] != cRTree[3])
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE12RemoveObjectEPS0_S1_S1_(cRTree, v10, *&boundingRectMin, *&boundingRectMax);
  }
}

- (NSArray)elementsInBoundingRectMin:(vector_float2)rectMin rectMax:(vector_float2)rectMax
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  queryReserve = [(GKRTree *)self queryReserve];
  if (queryReserve)
  {
    if (!(queryReserve >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v8 = 0;
  v9 = 0;
  cRTree = self->_cRTree;
  v11 = cRTree[2];
  if ((vcgt_f32(rectMin, v11).u32[0] & 1) == 0)
  {
    v12 = cRTree[1];
    if (vcge_f32(rectMax, v12).u32[0])
    {
      v13 = vcge_f32(vzip2_s32(rectMax, v11), vzip2_s32(v12, rectMin));
      if (v13.i8[4] & 1) != 0 && (v13.i8[0])
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE5QueryES1_S1_RNSt3__16vectorIU8__strongPS0_NS3_9allocatorIS6_EEEE(cRTree, &__p, rectMin, rectMax);
        v9 = __p;
        v8 = v22;
      }
    }
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:(v8 - v9) >> 3];
  v15 = __p;
  if (__p)
  {
    v16 = v14;
    v17 = v22;
    v18 = __p;
    if (v22 != __p)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 8;
      }

      while (v17 != v15);
      v18 = __p;
    }

    v22 = v15;
    operator delete(v18);
    v14 = v16;
  }

  return v14;
}

@end