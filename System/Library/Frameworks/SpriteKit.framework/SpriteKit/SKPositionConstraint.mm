@interface SKPositionConstraint
+ (id)constraintWithXRange:(id)range;
+ (id)constraintWithXRange:(id)range YRange:(id)yRange;
+ (id)constraintWithYRange:(id)range;
- (BOOL)isEqualToPositionConstraint:(id)constraint;
- (SKPositionConstraint)initWithCoder:(id)coder;
- (SKPositionConstraint)initWithXRange:(id)range YRange:(id)yRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKPositionConstraint

- (SKPositionConstraint)initWithXRange:(id)range YRange:(id)yRange
{
  rangeCopy = range;
  yRangeCopy = yRange;
  v11.receiver = self;
  v11.super_class = SKPositionConstraint;
  v8 = [(SKConstraint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SKPositionConstraint *)v8 setXRange:rangeCopy];
    [(SKPositionConstraint *)v9 setYRange:yRangeCopy];
  }

  return v9;
}

- (SKPositionConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKPositionConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_xRange"];
    [(SKPositionConstraint *)v5 setXRange:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_yRange"];
    [(SKPositionConstraint *)v5 setYRange:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKPositionConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:coderCopy];
  xRange = [(SKPositionConstraint *)self xRange];
  [coderCopy encodeObject:xRange forKey:@"_xRange"];

  yRange = [(SKPositionConstraint *)self yRange];
  [coderCopy encodeObject:yRange forKey:@"_yRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKPositionConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:zone];
  xRange = [(SKPositionConstraint *)self xRange];
  [v4 setXRange:xRange];

  yRange = [(SKPositionConstraint *)self yRange];
  [v4 setYRange:yRange];

  return v4;
}

- (BOOL)isEqualToPositionConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (self == constraintCopy)
  {
    v10 = 1;
  }

  else
  {
    xRange = [(SKPositionConstraint *)self xRange];
    xRange2 = [(SKPositionConstraint *)constraintCopy xRange];
    v7 = [xRange isEqualToRange:xRange2];

    if (v7)
    {
      yRange = [(SKPositionConstraint *)self yRange];
      yRange2 = [(SKPositionConstraint *)constraintCopy yRange];
      v10 = [yRange isEqualToRange:yRange2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)constraintWithXRange:(id)range YRange:(id)yRange
{
  rangeCopy = range;
  yRangeCopy = yRange;
  v7 = [objc_alloc(objc_opt_class()) initWithXRange:rangeCopy YRange:yRangeCopy];

  return v7;
}

+ (id)constraintWithXRange:(id)range
{
  rangeCopy = range;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[SKRange rangeWithNoLimits];
  v6 = [v4 initWithXRange:rangeCopy YRange:v5];

  return v6;
}

+ (id)constraintWithYRange:(id)range
{
  rangeCopy = range;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[SKRange rangeWithNoLimits];
  v6 = [v4 initWithXRange:v5 YRange:rangeCopy];

  return v6;
}

@end