@interface SKOrientationConstraint
+ (id)constraintOrientingToNode:(id)a3 offset:(id)a4;
+ (id)constraintOrientingToPoint:(CGPoint)a3 inNode:(id)a4 offset:(id)a5;
+ (id)constraintOrientingToPoint:(CGPoint)a3 offset:(id)a4;
- (BOOL)isEqualToOrientationConstraint:(id)a3;
- (CGPoint)point;
- (SKNode)node;
- (SKOrientationConstraint)initWithCoder:(id)a3;
- (SKOrientationConstraint)initWithNode:(id)a3 point:(CGPoint)a4 offset:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKOrientationConstraint

- (SKOrientationConstraint)initWithNode:(id)a3 point:(CGPoint)a4 offset:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SKOrientationConstraint;
  v11 = [(SKConstraint *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SKOrientationConstraint *)v11 setNode:v9];
    [(SKOrientationConstraint *)v12 setOffset:v10];
    [(SKOrientationConstraint *)v12 setPoint:x, y];
  }

  return v12;
}

- (SKOrientationConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKOrientationConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_node"];
    [(SKOrientationConstraint *)v5 setNode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_offset"];
    [(SKOrientationConstraint *)v5 setOffset:v7];

    [v4 decodeCGPointForKey:@"_point"];
    [(SKOrientationConstraint *)v5 setPoint:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKOrientationConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:v4];
  v5 = [(SKOrientationConstraint *)self node];
  [v4 encodeObject:v5 forKey:@"_node"];

  v6 = [(SKOrientationConstraint *)self offset];
  [v4 encodeObject:v6 forKey:@"_offset"];

  [(SKOrientationConstraint *)self point];
  [v4 encodeCGPoint:@"_point" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SKOrientationConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:a3];
  v5 = [(SKOrientationConstraint *)self node];
  [v4 setNode:v5];

  v6 = [(SKOrientationConstraint *)self offset];
  [v4 setOffset:v6];

  [(SKOrientationConstraint *)self point];
  [v4 setPoint:?];
  return v4;
}

- (BOOL)isEqualToOrientationConstraint:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = [(SKOrientationConstraint *)self offset];
    v6 = [(SKOrientationConstraint *)v4 offset];
    v7 = [v5 isEqualToRange:v6];

    if (v7)
    {
      v8 = [(SKOrientationConstraint *)self node];
      if (v8 || ([(SKOrientationConstraint *)v4 node], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v9 = [(SKOrientationConstraint *)self node];
        if (v9)
        {
          v10 = [(SKOrientationConstraint *)v4 node];

          if (v8)
          {
          }

          if (!v10)
          {
            goto LABEL_18;
          }
        }

        else
        {

          if (v8)
          {
          }
        }

        v13 = [(SKOrientationConstraint *)self node];
        if (!v13 || (-[SKOrientationConstraint node](v4, "node"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14) || (-[SKOrientationConstraint node](self, "node"), v15 = objc_claimAutoreleasedReturnValue(), -[SKOrientationConstraint node](v4, "node"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 isEqualToNode:v16], v16, v15, (v17 & 1) != 0))
        {
          [(SKOrientationConstraint *)self point];
          v19 = v18;
          [(SKOrientationConstraint *)self point];
          v20 = v19;
          *&v21 = v21;
          if ((COERCE_UNSIGNED_INT(v20 - *&v21) & 0x60000000) == 0)
          {
            [(SKOrientationConstraint *)self point];
            v24 = v23;
            [(SKOrientationConstraint *)self point];
            v25 = v24;
            *&v26 = v26;
            v11 = (COERCE_UNSIGNED_INT(v25 - *&v26) & 0x60000000) == 0;
            goto LABEL_19;
          }
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v11 = 1;
LABEL_19:

  return v11;
}

+ (id)constraintOrientingToPoint:(CGPoint)a3 inNode:(id)a4 offset:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithNode:v8 point:v9 offset:{x, y}];

  return v10;
}

+ (id)constraintOrientingToNode:(id)a3 offset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithNode:v5 point:v6 offset:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  return v7;
}

+ (id)constraintOrientingToPoint:(CGPoint)a3 offset:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithNode:0 point:v6 offset:{x, y}];

  return v7;
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