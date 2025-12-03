@interface SKDistanceConstraint
+ (id)constraintWithNode:(id)node distanceRange:(id)range;
+ (id)constraintWithPoint:(CGPoint)point distanceRange:(id)range;
+ (id)constraintWithPoint:(CGPoint)point inNode:(id)node distanceRange:(id)range;
- (BOOL)isEqualToDistanceConstraint:(id)constraint;
- (CGPoint)point;
- (SKDistanceConstraint)initWithCoder:(id)coder;
- (SKDistanceConstraint)initWithPoint:(CGPoint)point inNode:(id)node distanceRange:(id)range;
- (SKNode)node;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKDistanceConstraint

- (SKDistanceConstraint)initWithPoint:(CGPoint)point inNode:(id)node distanceRange:(id)range
{
  y = point.y;
  x = point.x;
  nodeCopy = node;
  rangeCopy = range;
  v14.receiver = self;
  v14.super_class = SKDistanceConstraint;
  v11 = [(SKConstraint *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SKDistanceConstraint *)v11 setNode:nodeCopy];
    [(SKDistanceConstraint *)v12 setDistanceRange:rangeCopy];
    [(SKDistanceConstraint *)v12 setPoint:x, y];
  }

  return v12;
}

- (SKDistanceConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKDistanceConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_node"];
    [(SKDistanceConstraint *)v5 setNode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_distanceRange"];
    [(SKDistanceConstraint *)v5 setDistanceRange:v7];

    [coderCopy decodeCGPointForKey:@"_point"];
    [(SKDistanceConstraint *)v5 setPoint:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKDistanceConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:coderCopy];
  node = [(SKDistanceConstraint *)self node];
  [coderCopy encodeObject:node forKey:@"_node"];

  distanceRange = [(SKDistanceConstraint *)self distanceRange];
  [coderCopy encodeObject:distanceRange forKey:@"_distanceRange"];

  [(SKDistanceConstraint *)self point];
  [coderCopy encodeCGPoint:@"_point" forKey:?];
}

- (BOOL)isEqualToDistanceConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (self != constraintCopy)
  {
    distanceRange = [(SKDistanceConstraint *)self distanceRange];
    distanceRange2 = [(SKDistanceConstraint *)constraintCopy distanceRange];
    v7 = [distanceRange isEqualToRange:distanceRange2];

    if (v7)
    {
      node = [(SKDistanceConstraint *)self node];
      if (node)
      {
      }

      else
      {
        node2 = [(SKDistanceConstraint *)constraintCopy node];

        if (!node2)
        {
          goto LABEL_8;
        }
      }

      node3 = [(SKDistanceConstraint *)self node];
      node4 = [(SKDistanceConstraint *)constraintCopy node];
      v13 = [node3 isEqualToNode:node4];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKDistanceConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:zone];
  node = [(SKDistanceConstraint *)self node];
  [v4 setNode:node];

  distanceRange = [(SKDistanceConstraint *)self distanceRange];
  [v4 setDistanceRange:distanceRange];

  [(SKDistanceConstraint *)self point];
  [v4 setPoint:?];
  return v4;
}

+ (id)constraintWithNode:(id)node distanceRange:(id)range
{
  nodeCopy = node;
  rangeCopy = range;
  v7 = [objc_alloc(objc_opt_class()) initWithPoint:nodeCopy inNode:rangeCopy distanceRange:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  return v7;
}

+ (id)constraintWithPoint:(CGPoint)point distanceRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  v7 = [objc_alloc(objc_opt_class()) initWithPoint:0 inNode:rangeCopy distanceRange:{x, y}];

  return v7;
}

+ (id)constraintWithPoint:(CGPoint)point inNode:(id)node distanceRange:(id)range
{
  y = point.y;
  x = point.x;
  nodeCopy = node;
  rangeCopy = range;
  v10 = [objc_alloc(objc_opt_class()) initWithPoint:nodeCopy inNode:rangeCopy distanceRange:{x, y}];

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