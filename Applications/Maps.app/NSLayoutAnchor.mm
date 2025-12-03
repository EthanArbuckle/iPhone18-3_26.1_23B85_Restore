@interface NSLayoutAnchor
- (id)constraintEqualToAnchor:(id)anchor constant:(double)constant priority:(float)priority;
- (id)constraintGreaterThanOrEqualToAnchor:(id)anchor constant:(double)constant priority:(float)priority;
- (id)constraintLessThanOrEqualToAnchor:(id)anchor constant:(double)constant priority:(float)priority;
@end

@implementation NSLayoutAnchor

- (id)constraintLessThanOrEqualToAnchor:(id)anchor constant:(double)constant priority:(float)priority
{
  v6 = [(NSLayoutAnchor *)self constraintLessThanOrEqualToAnchor:anchor constant:constant];
  *&v7 = priority;
  [v6 setPriority:v7];

  return v6;
}

- (id)constraintGreaterThanOrEqualToAnchor:(id)anchor constant:(double)constant priority:(float)priority
{
  v6 = [(NSLayoutAnchor *)self constraintGreaterThanOrEqualToAnchor:anchor constant:constant];
  *&v7 = priority;
  [v6 setPriority:v7];

  return v6;
}

- (id)constraintEqualToAnchor:(id)anchor constant:(double)constant priority:(float)priority
{
  v6 = [(NSLayoutAnchor *)self constraintEqualToAnchor:anchor constant:constant];
  *&v7 = priority;
  [v6 setPriority:v7];

  return v6;
}

@end