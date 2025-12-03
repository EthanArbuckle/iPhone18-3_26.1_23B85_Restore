@interface GKGraphNode3D
+ (GKGraphNode3D)nodeWithPoint:(vector_float3)point;
- (GKGraphNode3D)initWithCoder:(id)coder;
- (GKGraphNode3D)initWithPoint:(vector_float3)point;
- (float)costToNode:(id)node;
- (float)estimatedCostToNode:(id)node;
- (id)description;
- (vector_float3)position;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKGraphNode3D

- (vector_float3)position
{
  v2 = *(self->_cGraphNode3D + 4);
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)deleteCGraphNode
{
  v3.receiver = self;
  v3.super_class = GKGraphNode3D;
  [(GKGraphNode *)&v3 deleteCGraphNode];
  self->_cGraphNode3D = 0;
}

- (GKGraphNode3D)initWithPoint:(vector_float3)point
{
  v6 = v3;
  v7.receiver = self;
  v7.super_class = GKGraphNode3D;
  result = [(GKGraphNode *)&v7 init:point.i64[0]];
  if (result)
  {
    v5 = result;
    [(GKGraphNode3D *)result setPosition:*&v6];
    result = v5;
    *(v5->_cGraphNode3D + 4) = v6;
  }

  return result;
}

+ (GKGraphNode3D)nodeWithPoint:(vector_float3)point
{
  v4 = [objc_alloc(objc_opt_class()) initWithPoint:v3];

  return v4;
}

- (float)estimatedCostToNode:(id)node
{
  nodeCopy = node;
  v5 = (*(*self->_cGraphNode3D + 24))(self->_cGraphNode3D, [nodeCopy cGraphNode]);

  return v5;
}

- (float)costToNode:(id)node
{
  nodeCopy = node;
  v5 = (*(*self->_cGraphNode3D + 24))(self->_cGraphNode3D, [nodeCopy cGraphNode]);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(GKGraphNode3D *)self position];
  v5 = v4;
  [(GKGraphNode3D *)self position];
  return [v3 stringWithFormat:@"GKGraphNode2D: {%.2f, %.2f}", *&v5, v6];
}

- (GKGraphNode3D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GKGraphNode3D;
  v5 = [(GKGraphNode *)&v11 initWithCoder:coderCopy];
  [coderCopy decodeFloatForKey:@"positionX"];
  v10 = v6;
  [coderCopy decodeFloatForKey:@"positionY"];
  v9 = v7;
  [coderCopy decodeFloatForKey:@"positionZ"];
  [(GKGraphNode3D *)v5 setPosition:COERCE_DOUBLE(__PAIR64__(v9, v10))];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GKGraphNode3D;
  [(GKGraphNode *)&v8 encodeWithCoder:coderCopy];
  [(GKGraphNode3D *)self position];
  [coderCopy encodeFloat:@"positionX" forKey:?];
  [(GKGraphNode3D *)self position];
  LODWORD(v5) = HIDWORD(v5);
  [coderCopy encodeFloat:@"positionY" forKey:v5];
  [(GKGraphNode3D *)self position];
  LODWORD(v7) = v6;
  [coderCopy encodeFloat:@"positionZ" forKey:v7];
}

@end