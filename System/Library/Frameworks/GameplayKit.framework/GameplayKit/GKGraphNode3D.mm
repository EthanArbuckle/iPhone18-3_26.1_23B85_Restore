@interface GKGraphNode3D
+ (GKGraphNode3D)nodeWithPoint:(vector_float3)point;
- (GKGraphNode3D)initWithCoder:(id)a3;
- (GKGraphNode3D)initWithPoint:(vector_float3)point;
- (float)costToNode:(id)a3;
- (float)estimatedCostToNode:(id)a3;
- (id)description;
- (vector_float3)position;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)a3;
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

- (float)estimatedCostToNode:(id)a3
{
  v4 = a3;
  v5 = (*(*self->_cGraphNode3D + 24))(self->_cGraphNode3D, [v4 cGraphNode]);

  return v5;
}

- (float)costToNode:(id)a3
{
  v4 = a3;
  v5 = (*(*self->_cGraphNode3D + 24))(self->_cGraphNode3D, [v4 cGraphNode]);

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

- (GKGraphNode3D)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GKGraphNode3D;
  v5 = [(GKGraphNode *)&v11 initWithCoder:v4];
  [v4 decodeFloatForKey:@"positionX"];
  v10 = v6;
  [v4 decodeFloatForKey:@"positionY"];
  v9 = v7;
  [v4 decodeFloatForKey:@"positionZ"];
  [(GKGraphNode3D *)v5 setPosition:COERCE_DOUBLE(__PAIR64__(v9, v10))];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKGraphNode3D;
  [(GKGraphNode *)&v8 encodeWithCoder:v4];
  [(GKGraphNode3D *)self position];
  [v4 encodeFloat:@"positionX" forKey:?];
  [(GKGraphNode3D *)self position];
  LODWORD(v5) = HIDWORD(v5);
  [v4 encodeFloat:@"positionY" forKey:v5];
  [(GKGraphNode3D *)self position];
  LODWORD(v7) = v6;
  [v4 encodeFloat:@"positionZ" forKey:v7];
}

@end