@interface SKOrientationConstraint
+ (id)constraintOrientingToNode:(id)node offset:(id)offset;
+ (id)constraintOrientingToPoint:(CGPoint)point inNode:(id)node offset:(id)offset;
+ (id)constraintOrientingToPoint:(CGPoint)point offset:(id)offset;
- (BOOL)isEqualToOrientationConstraint:(id)constraint;
- (CGPoint)point;
- (SKNode)node;
- (SKOrientationConstraint)initWithCoder:(id)coder;
- (SKOrientationConstraint)initWithNode:(id)node point:(CGPoint)point offset:(id)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKOrientationConstraint

- (SKOrientationConstraint)initWithNode:(id)node point:(CGPoint)point offset:(id)offset
{
  y = point.y;
  x = point.x;
  nodeCopy = node;
  offsetCopy = offset;
  v14.receiver = self;
  v14.super_class = SKOrientationConstraint;
  v11 = [(SKConstraint *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SKOrientationConstraint *)v11 setNode:nodeCopy];
    [(SKOrientationConstraint *)v12 setOffset:offsetCopy];
    [(SKOrientationConstraint *)v12 setPoint:x, y];
  }

  return v12;
}

- (SKOrientationConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKOrientationConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_node"];
    [(SKOrientationConstraint *)v5 setNode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_offset"];
    [(SKOrientationConstraint *)v5 setOffset:v7];

    [coderCopy decodeCGPointForKey:@"_point"];
    [(SKOrientationConstraint *)v5 setPoint:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKOrientationConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:coderCopy];
  node = [(SKOrientationConstraint *)self node];
  [coderCopy encodeObject:node forKey:@"_node"];

  offset = [(SKOrientationConstraint *)self offset];
  [coderCopy encodeObject:offset forKey:@"_offset"];

  [(SKOrientationConstraint *)self point];
  [coderCopy encodeCGPoint:@"_point" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKOrientationConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:zone];
  node = [(SKOrientationConstraint *)self node];
  [v4 setNode:node];

  offset = [(SKOrientationConstraint *)self offset];
  [v4 setOffset:offset];

  [(SKOrientationConstraint *)self point];
  [v4 setPoint:?];
  return v4;
}

- (BOOL)isEqualToOrientationConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (self != constraintCopy)
  {
    offset = [(SKOrientationConstraint *)self offset];
    offset2 = [(SKOrientationConstraint *)constraintCopy offset];
    v7 = [offset isEqualToRange:offset2];

    if (v7)
    {
      node = [(SKOrientationConstraint *)self node];
      if (node || ([(SKOrientationConstraint *)constraintCopy node], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        node2 = [(SKOrientationConstraint *)self node];
        if (node2)
        {
          node3 = [(SKOrientationConstraint *)constraintCopy node];

          if (node)
          {
          }

          if (!node3)
          {
            goto LABEL_18;
          }
        }

        else
        {

          if (node)
          {
          }
        }

        node4 = [(SKOrientationConstraint *)self node];
        if (!node4 || (-[SKOrientationConstraint node](constraintCopy, "node"), v14 = objc_claimAutoreleasedReturnValue(), v14, node4, !v14) || (-[SKOrientationConstraint node](self, "node"), v15 = objc_claimAutoreleasedReturnValue(), -[SKOrientationConstraint node](constraintCopy, "node"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 isEqualToNode:v16], v16, v15, (v17 & 1) != 0))
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

+ (id)constraintOrientingToPoint:(CGPoint)point inNode:(id)node offset:(id)offset
{
  y = point.y;
  x = point.x;
  nodeCopy = node;
  offsetCopy = offset;
  v10 = [objc_alloc(objc_opt_class()) initWithNode:nodeCopy point:offsetCopy offset:{x, y}];

  return v10;
}

+ (id)constraintOrientingToNode:(id)node offset:(id)offset
{
  nodeCopy = node;
  offsetCopy = offset;
  v7 = [objc_alloc(objc_opt_class()) initWithNode:nodeCopy point:offsetCopy offset:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  return v7;
}

+ (id)constraintOrientingToPoint:(CGPoint)point offset:(id)offset
{
  y = point.y;
  x = point.x;
  offsetCopy = offset;
  v7 = [objc_alloc(objc_opt_class()) initWithNode:0 point:offsetCopy offset:{x, y}];

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