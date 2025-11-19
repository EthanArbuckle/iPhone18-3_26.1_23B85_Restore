@interface SKDistanceConstraint
+ (id)constraintWithNode:(id)a3 distanceRange:(id)a4;
+ (id)constraintWithPoint:(CGPoint)a3 distanceRange:(id)a4;
+ (id)constraintWithPoint:(CGPoint)a3 inNode:(id)a4 distanceRange:(id)a5;
- (BOOL)isEqualToDistanceConstraint:(id)a3;
- (CGPoint)point;
- (SKDistanceConstraint)initWithCoder:(id)a3;
- (SKDistanceConstraint)initWithPoint:(CGPoint)a3 inNode:(id)a4 distanceRange:(id)a5;
- (SKNode)node;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKDistanceConstraint

- (SKDistanceConstraint)initWithPoint:(CGPoint)a3 inNode:(id)a4 distanceRange:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SKDistanceConstraint;
  v11 = [(SKConstraint *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SKDistanceConstraint *)v11 setNode:v9];
    [(SKDistanceConstraint *)v12 setDistanceRange:v10];
    [(SKDistanceConstraint *)v12 setPoint:x, y];
  }

  return v12;
}

- (SKDistanceConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKDistanceConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_node"];
    [(SKDistanceConstraint *)v5 setNode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_distanceRange"];
    [(SKDistanceConstraint *)v5 setDistanceRange:v7];

    [v4 decodeCGPointForKey:@"_point"];
    [(SKDistanceConstraint *)v5 setPoint:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKDistanceConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:v4];
  v5 = [(SKDistanceConstraint *)self node];
  [v4 encodeObject:v5 forKey:@"_node"];

  v6 = [(SKDistanceConstraint *)self distanceRange];
  [v4 encodeObject:v6 forKey:@"_distanceRange"];

  [(SKDistanceConstraint *)self point];
  [v4 encodeCGPoint:@"_point" forKey:?];
}

- (BOOL)isEqualToDistanceConstraint:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = [(SKDistanceConstraint *)self distanceRange];
    v6 = [(SKDistanceConstraint *)v4 distanceRange];
    v7 = [v5 isEqualToRange:v6];

    if (v7)
    {
      v8 = [(SKDistanceConstraint *)self node];
      if (v8)
      {
      }

      else
      {
        v10 = [(SKDistanceConstraint *)v4 node];

        if (!v10)
        {
          goto LABEL_8;
        }
      }

      v11 = [(SKDistanceConstraint *)self node];
      v12 = [(SKDistanceConstraint *)v4 node];
      v13 = [v11 isEqualToNode:v12];

      if (v13)
      {
LABEL_8:
        [(SKDistanceConstraint *)self point];
        v15 = v14;
        [(SKDistanceConstraint *)self point];
        v16 = v15;
        *&v17 = v17;
        if ((COERCE_UNSIGNED_INT(v16 - *&v17) & 0x60000000) == 0)
        {
          [(SKDistanceConstraint *)self point];
          v20 = v19;
          [(SKDistanceConstraint *)self point];
          v21 = v20;
          *&v22 = v22;
          v9 = (COERCE_UNSIGNED_INT(v21 - *&v22) & 0x60000000) == 0;
          goto LABEL_10;
        }
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SKDistanceConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:a3];
  v5 = [(SKDistanceConstraint *)self node];
  [v4 setNode:v5];

  v6 = [(SKDistanceConstraint *)self distanceRange];
  [v4 setDistanceRange:v6];

  [(SKDistanceConstraint *)self point];
  [v4 setPoint:?];
  return v4;
}

+ (id)constraintWithNode:(id)a3 distanceRange:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithPoint:v5 inNode:v6 distanceRange:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  return v7;
}

+ (id)constraintWithPoint:(CGPoint)a3 distanceRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithPoint:0 inNode:v6 distanceRange:{x, y}];

  return v7;
}

+ (id)constraintWithPoint:(CGPoint)a3 inNode:(id)a4 distanceRange:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithPoint:v8 inNode:v9 distanceRange:{x, y}];

  return v10;
}

- (SKNode)node
{
  WeakRetained = objc_loadWeakRetained(&self->_node);

  return WeakRetained;
}

- (CGPoint)point
{
  objc_copyStruct(v4, &self->_point, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end