@interface GKGridGraphNode
+ (GKGridGraphNode)nodeWithGridPosition:(vector_int2)gridPosition;
- (GKGridGraphNode)initWithCoder:(id)a3;
- (GKGridGraphNode)initWithGridPosition:(vector_int2)gridPosition;
- (float)costToNode:(id)a3;
- (float)estimatedCostToNode:(id)a3;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)a3;
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

- (float)estimatedCostToNode:(id)a3
{
  v4 = a3;
  v5 = (*(*self->_cGridGraphNode + 24))(self->_cGridGraphNode, [v4 cGraphNode]);

  return v5;
}

- (float)costToNode:(id)a3
{
  v4 = a3;
  v5 = (*(*self->_cGridGraphNode + 24))(self->_cGridGraphNode, [v4 cGraphNode]);

  return v5;
}

- (GKGridGraphNode)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKGridGraphNode;
  v5 = [(GKGraphNode *)&v8 initWithCoder:v4];
  v6 = [v4 decodeIntForKey:@"positionX"];
  *(v5->_cGridGraphNode + 8) = __PAIR64__([v4 decodeIntForKey:@"positionY"], v6);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GKGridGraphNode;
  [(GKGraphNode *)&v7 encodeWithCoder:v4];
  [(GKGridGraphNode *)self gridPosition];
  [v4 encodeInt:v5 forKey:@"positionX"];
  [(GKGridGraphNode *)self gridPosition];
  [v4 encodeInt:v6 forKey:@"positionY"];
}

@end