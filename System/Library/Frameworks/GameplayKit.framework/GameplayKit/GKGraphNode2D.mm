@interface GKGraphNode2D
+ (GKGraphNode2D)nodeWithPoint:(vector_float2)point;
- (GKGraphNode2D)initWithCoder:(id)coder;
- (GKGraphNode2D)initWithPoint:(vector_float2)point;
- (float)costToNode:(id)node;
- (float)estimatedCostToNode:(id)node;
- (id)description;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKGraphNode2D

- (void)deleteCGraphNode
{
  v3.receiver = self;
  v3.super_class = GKGraphNode2D;
  [(GKGraphNode *)&v3 deleteCGraphNode];
  self->_cGraphNode2D = 0;
}

- (GKGraphNode2D)initWithPoint:(vector_float2)point
{
  v6.receiver = self;
  v6.super_class = GKGraphNode2D;
  result = [(GKGraphNode *)&v6 init];
  if (result)
  {
    v5 = result;
    [(GKGraphNode2D *)result setPosition:*&point];
    result = v5;
    *(v5->_cGraphNode2D + 8) = point;
  }

  return result;
}

+ (GKGraphNode2D)nodeWithPoint:(vector_float2)point
{
  v3 = [objc_alloc(objc_opt_class()) initWithPoint:*&point];

  return v3;
}

- (float)estimatedCostToNode:(id)node
{
  nodeCopy = node;
  v5 = (*(*self->_cGraphNode2D + 24))(self->_cGraphNode2D, [nodeCopy cGraphNode]);

  return v5;
}

- (float)costToNode:(id)node
{
  nodeCopy = node;
  v5 = (*(*self->_cGraphNode2D + 24))(self->_cGraphNode2D, [nodeCopy cGraphNode]);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(GKGraphNode2D *)self position];
  v5 = v4;
  [(GKGraphNode2D *)self position];
  return [v3 stringWithFormat:@"GKGraphNode2D: {%.2f, %.2f}", *&v5, v6];
}

- (GKGraphNode2D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GKGraphNode2D;
  v5 = [(GKGraphNode *)&v10 initWithCoder:coderCopy];
  [coderCopy decodeFloatForKey:@"positionX"];
  v9 = v6;
  [coderCopy decodeFloatForKey:@"positionY"];
  [(GKGraphNode2D *)v5 setPosition:COERCE_DOUBLE(__PAIR64__(v7, v9))];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = GKGraphNode2D;
  [(GKGraphNode *)&v6 encodeWithCoder:coderCopy];
  [(GKGraphNode2D *)self position];
  [coderCopy encodeFloat:@"positionX" forKey:?];
  [(GKGraphNode2D *)self position];
  LODWORD(v5) = HIDWORD(v5);
  [coderCopy encodeFloat:@"positionY" forKey:v5];
}

@end