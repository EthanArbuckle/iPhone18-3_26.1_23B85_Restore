@interface VNMPClusteringTreeNodeWrapper
- (VNMPClusteringTreeNodeWrapper)initWithNode:(void *)a3 freeNodeOnDealloc:(BOOL)a4;
- (id)getLeafNodes;
- (id)left;
- (id)right;
- (void)dealloc;
@end

@implementation VNMPClusteringTreeNodeWrapper

- (void)dealloc
{
  node = self->_node;
  if (node && self->_freeNodeOnDealloc)
  {
    MPClusteringTreeNode::freeNodeAndItsSubtree(node);
    self->_node = 0;
  }

  v4.receiver = self;
  v4.super_class = VNMPClusteringTreeNodeWrapper;
  [(VNMPClusteringTreeNodeWrapper *)&v4 dealloc];
}

- (id)getLeafNodes
{
  MPClusteringTreeNode::getLeafNodes(&v8, self->_node);
  v2 = [MEMORY[0x1E695DF70] array];
  var0 = v8.var0;
  v4 = *&v8.var1;
  if (v8.var0 != *&v8.var1)
  {
    v5 = v8.var0;
    do
    {
      v6 = [[VNMPClusteringTreeNodeWrapper alloc] initWithNode:*v5 freeNodeOnDealloc:0];
      [v2 addObject:v6];

      ++v5;
    }

    while (v5 != v4);
  }

  if (var0)
  {
    operator delete(var0);
  }

  return v2;
}

- (id)right
{
  v2 = *(self->_node + 4);
  if (v2)
  {
    v3 = [[VNMPClusteringTreeNodeWrapper alloc] initWithNode:v2 freeNodeOnDealloc:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)left
{
  v2 = *(self->_node + 3);
  if (v2)
  {
    v3 = [[VNMPClusteringTreeNodeWrapper alloc] initWithNode:v2 freeNodeOnDealloc:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (VNMPClusteringTreeNodeWrapper)initWithNode:(void *)a3 freeNodeOnDealloc:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = VNMPClusteringTreeNodeWrapper;
  v6 = [(VNMPClusteringTreeNodeWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(VNMPClusteringTreeNodeWrapper *)v6 setNode:a3];
    [(VNMPClusteringTreeNodeWrapper *)v7 setFreeNodeOnDealloc:v4];
  }

  return v7;
}

@end