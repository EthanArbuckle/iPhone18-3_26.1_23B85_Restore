@interface SKConstraint
+ (SKConstraint)distance:(SKRange *)range toNode:(SKNode *)node;
+ (SKConstraint)distance:(SKRange *)range toPoint:(CGPoint)point;
+ (SKConstraint)distance:(SKRange *)range toPoint:(CGPoint)point inNode:(SKNode *)node;
+ (SKConstraint)orientToNode:(SKNode *)node offset:(SKRange *)radians;
+ (SKConstraint)orientToPoint:(CGPoint)point inNode:(SKNode *)node offset:(SKRange *)radians;
+ (SKConstraint)orientToPoint:(CGPoint)point offset:(SKRange *)radians;
+ (SKConstraint)positionX:(SKRange *)range;
+ (SKConstraint)positionX:(SKRange *)xRange Y:(SKRange *)yRange;
+ (SKConstraint)positionY:(SKRange *)range;
+ (SKConstraint)zRotation:(SKRange *)zRange;
+ (id)height:(id)height;
+ (id)scale:(id)scale;
+ (id)scaleX:(id)x;
+ (id)scaleX:(id)x scaleY:(id)y;
+ (id)scaleY:(id)y;
+ (id)width:(id)width;
+ (id)width:(id)width height:(id)height;
- (BOOL)isEqualToConstraint:(id)constraint;
- (SKConstraint)init;
- (SKConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKConstraint

- (SKConstraint)init
{
  v5.receiver = self;
  v5.super_class = SKConstraint;
  v2 = [(SKConstraint *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKConstraint *)v2 setEnabled:1];
    [(SKConstraint *)v3 setReferenceNode:0];
  }

  return v3;
}

- (SKConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SKConstraint;
  v5 = [(SKConstraint *)&v8 init];
  if (v5)
  {
    -[SKConstraint setEnabled:](v5, "setEnabled:", [coderCopy decodeBoolForKey:@"_enabled"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_referenceNode"];
    [(SKConstraint *)v5 setReferenceNode:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SKConstraint enabled](self forKey:{"enabled"), @"_enabled"}];
  referenceNode = [(SKConstraint *)self referenceNode];
  [coderCopy encodeObject:referenceNode forKey:@"_referenceNode"];
}

- (BOOL)isEqualToConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (constraintCopy == self)
  {
    goto LABEL_21;
  }

  enabled = [(SKConstraint *)self enabled];
  if (enabled == [(SKConstraint *)constraintCopy enabled])
  {
    referenceNode = [(SKConstraint *)self referenceNode];
    if (referenceNode)
    {
    }

    else
    {
      referenceNode2 = [(SKConstraint *)constraintCopy referenceNode];

      if (!referenceNode2)
      {
LABEL_7:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKConstraint *)self isEqualToSizeConstraint:constraintCopy];
LABEL_20:
          v12 = v11;
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKConstraint *)self isEqualToScaleConstraint:constraintCopy];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKConstraint *)self isEqualToPositionConstraint:constraintCopy];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKConstraint *)self isEqualToRotationConstraint:constraintCopy];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKConstraint *)self isEqualToOrientationConstraint:constraintCopy];
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(SKConstraint *)self isEqualToDistanceConstraint:constraintCopy];
          goto LABEL_20;
        }

LABEL_21:
        v12 = 1;
        goto LABEL_22;
      }
    }

    referenceNode3 = [(SKConstraint *)self referenceNode];
    referenceNode4 = [(SKConstraint *)constraintCopy referenceNode];
    v10 = [referenceNode3 isEqualToNode:referenceNode4];

    if (v10)
    {
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

+ (SKConstraint)positionX:(SKRange *)range
{
  v3 = [SKPositionConstraint constraintWithXRange:range];

  return v3;
}

+ (SKConstraint)positionY:(SKRange *)range
{
  v3 = [SKPositionConstraint constraintWithYRange:range];

  return v3;
}

+ (SKConstraint)positionX:(SKRange *)xRange Y:(SKRange *)yRange
{
  v4 = [SKPositionConstraint constraintWithXRange:xRange YRange:yRange];

  return v4;
}

+ (SKConstraint)distance:(SKRange *)range toNode:(SKNode *)node
{
  v4 = [SKDistanceConstraint constraintWithNode:node distanceRange:range];

  return v4;
}

+ (SKConstraint)distance:(SKRange *)range toPoint:(CGPoint)point
{
  v4 = [SKDistanceConstraint constraintWithPoint:range distanceRange:point.x, point.y];

  return v4;
}

+ (SKConstraint)distance:(SKRange *)range toPoint:(CGPoint)point inNode:(SKNode *)node
{
  v5 = [SKDistanceConstraint constraintWithPoint:node inNode:range distanceRange:point.x, point.y];

  return v5;
}

+ (SKConstraint)zRotation:(SKRange *)zRange
{
  v3 = [SKRotationConstraint constraintWithZRotationRange:zRange];

  return v3;
}

+ (SKConstraint)orientToPoint:(CGPoint)point inNode:(SKNode *)node offset:(SKRange *)radians
{
  v5 = [SKOrientationConstraint constraintOrientingToPoint:node inNode:radians offset:point.x, point.y];

  return v5;
}

+ (SKConstraint)orientToNode:(SKNode *)node offset:(SKRange *)radians
{
  v4 = [SKOrientationConstraint constraintOrientingToNode:node offset:radians];

  return v4;
}

+ (SKConstraint)orientToPoint:(CGPoint)point offset:(SKRange *)radians
{
  v4 = [SKOrientationConstraint constraintOrientingToPoint:radians offset:point.x, point.y];

  return v4;
}

+ (id)width:(id)width
{
  v3 = [SKSizeConstraint constraintWithWidthRange:width];

  return v3;
}

+ (id)height:(id)height
{
  v3 = [SKSizeConstraint constraintWithHeightRange:height];

  return v3;
}

+ (id)width:(id)width height:(id)height
{
  v4 = [SKSizeConstraint constraintWithWidthRange:width heightRange:height];

  return v4;
}

+ (id)scale:(id)scale
{
  v3 = [SKScaleConstraint constraintWithScaleRange:scale];

  return v3;
}

+ (id)scaleX:(id)x
{
  v3 = [SKScaleConstraint constraintWithXRange:x];

  return v3;
}

+ (id)scaleY:(id)y
{
  v3 = [SKScaleConstraint constraintWithYRange:y];

  return v3;
}

+ (id)scaleX:(id)x scaleY:(id)y
{
  v4 = [SKScaleConstraint constraintWithXRange:x YRange:y];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  enabled = [(SKConstraint *)self enabled];
  v4 = @"NO";
  if (enabled)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"<SKConstraint> enabled: %@", v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setEnabled:{-[SKConstraint enabled](self, "enabled")}];
  referenceNode = [(SKConstraint *)self referenceNode];
  [v4 setReferenceNode:referenceNode];

  return v4;
}

@end