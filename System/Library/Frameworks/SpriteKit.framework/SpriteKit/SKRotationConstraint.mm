@interface SKRotationConstraint
+ (id)constraintWithZRotationRange:(id)range;
- (BOOL)isEqualToRotationConstraint:(id)constraint;
- (SKRotationConstraint)initWithCoder:(id)coder;
- (SKRotationConstraint)initWithZRotationRange:(id)range;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRotationConstraint

- (SKRotationConstraint)initWithZRotationRange:(id)range
{
  rangeCopy = range;
  v8.receiver = self;
  v8.super_class = SKRotationConstraint;
  v5 = [(SKConstraint *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKRotationConstraint *)v5 setZRotationRange:rangeCopy];
  }

  return v6;
}

- (SKRotationConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SKRotationConstraint;
  v5 = [(SKConstraint *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_zRotationRange"];
    [(SKRotationConstraint *)v5 setZRotationRange:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKRotationConstraint;
  [(SKConstraint *)&v6 encodeWithCoder:coderCopy];
  zRotationRange = [(SKRotationConstraint *)self zRotationRange];
  [coderCopy encodeObject:zRotationRange forKey:@"_zRotationRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKRotationConstraint;
  v4 = [(SKConstraint *)&v7 copyWithZone:zone];
  zRotationRange = [(SKRotationConstraint *)self zRotationRange];
  [v4 setZRotationRange:zRotationRange];

  return v4;
}

- (BOOL)isEqualToRotationConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (self == constraintCopy)
  {
    v7 = 1;
  }

  else
  {
    zRotationRange = [(SKRotationConstraint *)self zRotationRange];
    zRotationRange2 = [(SKRotationConstraint *)constraintCopy zRotationRange];
    v7 = [zRotationRange isEqualToRange:zRotationRange2];
  }

  return v7;
}

+ (id)constraintWithZRotationRange:(id)range
{
  rangeCopy = range;
  v4 = [objc_alloc(objc_opt_class()) initWithZRotationRange:rangeCopy];

  return v4;
}

@end