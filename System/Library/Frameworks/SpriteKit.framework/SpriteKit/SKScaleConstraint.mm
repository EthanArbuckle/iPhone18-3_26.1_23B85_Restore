@interface SKScaleConstraint
+ (id)constraintWithScaleRange:(id)range;
+ (id)constraintWithXRange:(id)range;
+ (id)constraintWithXRange:(id)range YRange:(id)yRange;
+ (id)constraintWithYRange:(id)range;
- (BOOL)isEqualToScaleConstraint:(id)constraint;
- (SKScaleConstraint)initWithCoder:(id)coder;
- (SKScaleConstraint)initWithXRange:(id)range YRange:(id)yRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKScaleConstraint

- (SKScaleConstraint)initWithXRange:(id)range YRange:(id)yRange
{
  rangeCopy = range;
  yRangeCopy = yRange;
  v11.receiver = self;
  v11.super_class = SKScaleConstraint;
  v8 = [(SKConstraint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SKScaleConstraint *)v8 setXRange:rangeCopy];
    [(SKScaleConstraint *)v9 setYRange:yRangeCopy];
  }

  return v9;
}

- (SKScaleConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKScaleConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_xRange"];
    [(SKScaleConstraint *)v5 setXRange:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_yRange"];
    [(SKScaleConstraint *)v5 setYRange:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKScaleConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:coderCopy];
  xRange = [(SKScaleConstraint *)self xRange];
  [coderCopy encodeObject:xRange forKey:@"_xRange"];

  yRange = [(SKScaleConstraint *)self yRange];
  [coderCopy encodeObject:yRange forKey:@"_yRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKScaleConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:zone];
  xRange = [(SKScaleConstraint *)self xRange];
  [v4 setXRange:xRange];

  yRange = [(SKScaleConstraint *)self yRange];
  [v4 setYRange:yRange];

  return v4;
}

- (BOOL)isEqualToScaleConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (self == constraintCopy)
  {
    v10 = 1;
  }

  else
  {
    xRange = [(SKScaleConstraint *)self xRange];
    xRange2 = [(SKScaleConstraint *)constraintCopy xRange];
    v7 = [xRange isEqualToRange:xRange2];

    if (v7)
    {
      yRange = [(SKScaleConstraint *)self yRange];
      yRange2 = [(SKScaleConstraint *)constraintCopy yRange];
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

+ (id)constraintWithScaleRange:(id)range
{
  rangeCopy = range;
  v4 = [objc_alloc(objc_opt_class()) initWithXRange:rangeCopy YRange:rangeCopy];

  return v4;
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