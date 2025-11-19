@interface SKSizeConstraint
+ (id)constraintWithHeightRange:(id)a3;
+ (id)constraintWithWidthRange:(id)a3;
+ (id)constraintWithWidthRange:(id)a3 heightRange:(id)a4;
- (BOOL)isEqualToSizeConstraint:(id)a3;
- (SKSizeConstraint)initWithCoder:(id)a3;
- (SKSizeConstraint)initWithWidthRange:(id)a3 heightRange:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKSizeConstraint

- (SKSizeConstraint)initWithWidthRange:(id)a3 heightRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SKSizeConstraint;
  v8 = [(SKConstraint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SKSizeConstraint *)v8 setWidthRange:v6];
    [(SKSizeConstraint *)v9 setHeightRange:v7];
  }

  return v9;
}

- (SKSizeConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKSizeConstraint;
  v5 = [(SKConstraint *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_widthRange"];
    [(SKSizeConstraint *)v5 setWidthRange:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_heightRange"];
    [(SKSizeConstraint *)v5 setHeightRange:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKSizeConstraint;
  [(SKConstraint *)&v7 encodeWithCoder:v4];
  v5 = [(SKSizeConstraint *)self widthRange];
  [v4 encodeObject:v5 forKey:@"_widthRange"];

  v6 = [(SKSizeConstraint *)self heightRange];
  [v4 encodeObject:v6 forKey:@"_heightRange"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SKSizeConstraint;
  v4 = [(SKConstraint *)&v8 copyWithZone:a3];
  v5 = [(SKSizeConstraint *)self widthRange];
  [v4 setWidthRange:v5];

  v6 = [(SKSizeConstraint *)self heightRange];
  [v4 setHeightRange:v6];

  return v4;
}

- (BOOL)isEqualToSizeConstraint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(SKSizeConstraint *)self widthRange];
    v6 = [(SKSizeConstraint *)v4 widthRange];
    v7 = [v5 isEqualToRange:v6];

    if (v7)
    {
      v8 = [(SKSizeConstraint *)self heightRange];
      v9 = [(SKSizeConstraint *)v4 heightRange];
      v10 = [v8 isEqualToRange:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)constraintWithWidthRange:(id)a3 heightRange:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithWidthRange:v5 heightRange:v6];

  return v7;
}

+ (id)constraintWithWidthRange:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[SKRange rangeWithNoLimits];
  v6 = [v4 initWithWidthRange:v3 heightRange:v5];

  return v6;
}

+ (id)constraintWithHeightRange:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[SKRange rangeWithNoLimits];
  v6 = [v4 initWithWidthRange:v5 heightRange:v3];

  return v6;
}

@end