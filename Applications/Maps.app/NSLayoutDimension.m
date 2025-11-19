@interface NSLayoutDimension
- (id)constraintEqualToAnchor:(id)a3 multiplier:(double)a4 priority:(float)a5;
- (id)constraintEqualToConstant:(double)a3 priority:(float)a4;
- (id)constraintGreaterThanOrEqualToConstant:(double)a3 priority:(float)a4;
- (id)constraintLessThanOrEqualToConstant:(double)a3 priority:(float)a4;
@end

@implementation NSLayoutDimension

- (id)constraintEqualToAnchor:(id)a3 multiplier:(double)a4 priority:(float)a5
{
  v6 = [(NSLayoutDimension *)self constraintEqualToAnchor:a3 multiplier:a4];
  *&v7 = a5;
  [v6 setPriority:v7];

  return v6;
}

- (id)constraintLessThanOrEqualToConstant:(double)a3 priority:(float)a4
{
  v5 = [(NSLayoutDimension *)self constraintLessThanOrEqualToConstant:a3];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

- (id)constraintGreaterThanOrEqualToConstant:(double)a3 priority:(float)a4
{
  v5 = [(NSLayoutDimension *)self constraintGreaterThanOrEqualToConstant:a3];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

- (id)constraintEqualToConstant:(double)a3 priority:(float)a4
{
  v5 = [(NSLayoutDimension *)self constraintEqualToConstant:a3];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

@end