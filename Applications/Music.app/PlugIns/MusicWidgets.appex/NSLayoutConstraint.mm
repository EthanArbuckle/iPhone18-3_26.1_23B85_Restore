@interface NSLayoutConstraint
- (id)withPriority:(float)a3;
@end

@implementation NSLayoutConstraint

- (id)withPriority:(float)a3
{
  v4 = self;
  *&v5 = a3;
  [(NSLayoutConstraint *)v4 setPriority:v5];

  return v4;
}

@end