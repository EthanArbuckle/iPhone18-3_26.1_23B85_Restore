@interface NSLayoutConstraint
- (id)withPriority:(float)priority;
@end

@implementation NSLayoutConstraint

- (id)withPriority:(float)priority
{
  selfCopy = self;
  *&v5 = priority;
  [(NSLayoutConstraint *)selfCopy setPriority:v5];

  return selfCopy;
}

@end