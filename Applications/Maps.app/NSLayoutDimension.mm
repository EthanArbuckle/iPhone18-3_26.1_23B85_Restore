@interface NSLayoutDimension
- (id)constraintEqualToAnchor:(id)anchor multiplier:(double)multiplier priority:(float)priority;
- (id)constraintEqualToConstant:(double)constant priority:(float)priority;
- (id)constraintGreaterThanOrEqualToConstant:(double)constant priority:(float)priority;
- (id)constraintLessThanOrEqualToConstant:(double)constant priority:(float)priority;
@end

@implementation NSLayoutDimension

- (id)constraintEqualToAnchor:(id)anchor multiplier:(double)multiplier priority:(float)priority
{
  v6 = [(NSLayoutDimension *)self constraintEqualToAnchor:anchor multiplier:multiplier];
  *&v7 = priority;
  [v6 setPriority:v7];

  return v6;
}

- (id)constraintLessThanOrEqualToConstant:(double)constant priority:(float)priority
{
  v5 = [(NSLayoutDimension *)self constraintLessThanOrEqualToConstant:constant];
  *&v6 = priority;
  [v5 setPriority:v6];

  return v5;
}

- (id)constraintGreaterThanOrEqualToConstant:(double)constant priority:(float)priority
{
  v5 = [(NSLayoutDimension *)self constraintGreaterThanOrEqualToConstant:constant];
  *&v6 = priority;
  [v5 setPriority:v6];

  return v5;
}

- (id)constraintEqualToConstant:(double)constant priority:(float)priority
{
  v5 = [(NSLayoutDimension *)self constraintEqualToConstant:constant];
  *&v6 = priority;
  [v5 setPriority:v6];

  return v5;
}

@end