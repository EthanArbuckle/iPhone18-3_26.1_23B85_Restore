@interface GKGridGraphNode
+ (GKGridGraphNode)nodeWithGridPosition:(vector_int2)gridPosition;
- (GKGridGraphNode)initWithCoder:(id)coder;
- (GKGridGraphNode)initWithGridPosition:(vector_int2)gridPosition;
- (float)costToNode:(id)node;
- (float)estimatedCostToNode:(id)node;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKGridGraphNode

- (void)deleteCGraphNode
{
  v3.receiver = self;
  v3.super_class = GKGridGraphNode;
  [(GKGraphNode *)&v3 deleteCGraphNode];
  self->_cGridGraphNode = 0;
}

+ (GKGridGraphNode)nodeWithGridPosition:(vector_int2)gridPosition
{
  v3 = [objc_alloc(objc_opt_class()) initWithGridPosition:*&gridPosition];

  return v3;
}

- (GKGridGraphNode)initWithGridPosition:(vector_int2)gridPosition
{
  v5.receiver = self;
  v5.super_class = GKGridGraphNode;
  result = [(GKGraphNode *)&v5 init];
  if (result)
  {
    *(result->_cGridGraphNode + 8) = gridPosition;
  }

  return result;
}

- (float)estimatedCostToNode:(id)node
{
  nodeCopy = node;
  v5 = (*(*self->_cGridGraphNode + 24))(self->_cGridGraphNode, [nodeCopy cGraphNode]);

  return v5;
}

- (float)costToNode:(id)node
{
  nodeCopy = node;
  v5 = (*(*self->_cGridGraphNode + 24))(self->_cGridGraphNode, [nodeCopy cGraphNode]);

  return v5;
}

- (GKGridGraphNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GKGridGraphNode;
  v5 = [(GKGraphNode *)&v8 initWithCoder:coderCopy];
  v6 = [coderCopy decodeIntForKey:@"positionX"];
  *(v5->_cGridGraphNode + 8) = __PAIR64__([coderCopy decodeIntForKey:@"positionY"], v6);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GKGridGraphNode;
  [(GKGraphNode *)&v7 encodeWithCoder:coderCopy];
  [(GKGridGraphNode *)self gridPosition];
  [coderCopy encodeInt:v5 forKey:@"positionX"];
  [(GKGridGraphNode *)self gridPosition];
  [coderCopy encodeInt:v6 forKey:@"positionY"];
}

@end