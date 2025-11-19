@interface GKGraphNode2D
+ (GKGraphNode2D)nodeWithPoint:(vector_float2)point;
- (GKGraphNode2D)initWithCoder:(id)a3;
- (GKGraphNode2D)initWithPoint:(vector_float2)point;
- (float)costToNode:(id)a3;
- (float)estimatedCostToNode:(id)a3;
- (id)description;
- (void)deleteCGraphNode;
- (void)encodeWithCoder:(id)a3;
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

- (float)estimatedCostToNode:(id)a3
{
  v4 = a3;
  v5 = (*(*self->_cGraphNode2D + 24))(self->_cGraphNode2D, [v4 cGraphNode]);

  return v5;
}

- (float)costToNode:(id)a3
{
  v4 = a3;
  v5 = (*(*self->_cGraphNode2D + 24))(self->_cGraphNode2D, [v4 cGraphNode]);

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

- (GKGraphNode2D)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GKGraphNode2D;
  v5 = [(GKGraphNode *)&v10 initWithCoder:v4];
  [v4 decodeFloatForKey:@"positionX"];
  v9 = v6;
  [v4 decodeFloatForKey:@"positionY"];
  [(GKGraphNode2D *)v5 setPosition:COERCE_DOUBLE(__PAIR64__(v7, v9))];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = GKGraphNode2D;
  [(GKGraphNode *)&v6 encodeWithCoder:v4];
  [(GKGraphNode2D *)self position];
  [v4 encodeFloat:@"positionX" forKey:?];
  [(GKGraphNode2D *)self position];
  LODWORD(v5) = HIDWORD(v5);
  [v4 encodeFloat:@"positionY" forKey:v5];
}

@end