@interface SKSizeConstraint
+ (id)constraintWithHeightRange:(id)range;
+ (id)constraintWithWidthRange:(id)range;
+ (id)constraintWithWidthRange:(id)range heightRange:(id)heightRange;
- (BOOL)isEqualToSizeConstraint:(id)constraint;
- (SKSizeConstraint)initWithCoder:(id)coder;
- (SKSizeConstraint)initWithWidthRange:(id)range heightRange:(id)heightRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKSizeConstraint

- (SKSizeConstraint)initWithWidthRange:(id)range heightRange:(id)heightRange
{
  rangeCopy = range;
  heightRangeCopy = heightRange;
  v11.receiver = self;
  v11.super_class = SKSizeConstraint;
  v8 = [(SKConstraint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SKSizeConstraint *)v8 setWidthRange:rangeCopy];
    [(SKSizeConstraint *)v9 setHeightRange:heightRangeCopy];
  }

  return v9;
}

- (SKSizeConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKSizeConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_widthRange"];
    [(SKSizeConstraint *)v5 setWidthRange:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_heightRange"];
    [(SKSizeConstraint *)v5 setHeightRange:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKSizeConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:coderCopy];
  widthRange = [(SKSizeConstraint *)self widthRange];
  [coderCopy encodeObject:widthRange forKey:@"_widthRange"];

  heightRange = [(SKSizeConstraint *)self heightRange];
  [coderCopy encodeObject:heightRange forKey:@"_heightRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKSizeConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:zone];
  widthRange = [(SKSizeConstraint *)self widthRange];
  [v4 setWidthRange:widthRange];

  heightRange = [(SKSizeConstraint *)self heightRange];
  [v4 setHeightRange:heightRange];

  return v4;
}

- (BOOL)isEqualToSizeConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (self == constraintCopy)
  {
    v10 = 1;
  }

  else
  {
    widthRange = [(SKSizeConstraint *)self widthRange];
    widthRange2 = [(SKSizeConstraint *)constraintCopy widthRange];
    v7 = [widthRange isEqualToRange:widthRange2];

    if (v7)
    {
      heightRange = [(SKSizeConstraint *)self heightRange];
      heightRange2 = [(SKSizeConstraint *)constraintCopy heightRange];
      v10 = [heightRange isEqualToRange:heightRange2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)constraintWithWidthRange:(id)range heightRange:(id)heightRange
{
  rangeCopy = range;
  heightRangeCopy = heightRange;
  v7 = [objc_alloc(objc_opt_class()) initWithWidthRange:rangeCopy heightRange:heightRangeCopy];

  return v7;
}

+ (id)constraintWithWidthRange:(id)range
{
  rangeCopy = range;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[SKRange rangeWithNoLimits];
  v6 = [v4 initWithWidthRange:rangeCopy heightRange:v5];

  return v6;
}

+ (id)constraintWithHeightRange:(id)range
{
  rangeCopy = range;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[SKRange rangeWithNoLimits];
  v6 = [v4 initWithWidthRange:v5 heightRange:rangeCopy];

  return v6;
}

@end